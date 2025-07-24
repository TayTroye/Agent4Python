import os
from logging import getLogger

import numpy as np
from tqdm import tqdm
import json
from collections import defaultdict
import torch
import torch.nn.functional as F
from torch.utils.data import Dataset
from utils import *

class SeqRecDataset(Dataset):

	def __init__(self, config, split="train", sample_ratio=1.0):

		self.config = config
		self.logger = getLogger()
		self.split = split
		self.accelerator = self.config['accelerator']
		self.data_dir = self.config['data_dir']
		self.sample_ratio = sample_ratio

		seq_file = os.path.join(self.data_dir, 'all_item_seqs.json')
		id_mapping_file = os.path.join(self.data_dir, 'id_mapping.json')


		with open(seq_file, 'r') as f:
			self.all_item_seqs = json.load(f)
		with open(id_mapping_file, 'r') as f:
			self.id_mapping = json.load(f)

		self.all_inters = self.split_seqs(self.all_item_seqs)
		# if self.split == 'test':
		# 	print(len(self.all_inters))

		# if self.split == 'test':
		# 	item_group = self.get_item_group(self.all_item_seqs, min_count=100, max_count=100000)
		# 	self.all_inters = self.get_item_group_inters(self.all_inters, item_group)



	def split_seqs(self, all_item_seqs):

		inters = []
		for user, items in all_item_seqs.items():
			if self.split == 'train':
				if len(items) < 4:
					continue
				items = items[:-2]
				for i in range(len(items) - 1):
					inters.append({"user": user, "item_seq": items[:i+2]})
			elif self.split == 'valid':
				if len(items) < 3:
					continue
				inters.append({"user": user, "item_seq": items[:-1]})
			elif self.split == 'test':
				if len(items) < 2:
					continue
				inters.append({"user": user, "item_seq": items})
			else:
				raise ValueError(f"Invalid split: {self.split}")


		if  self.sample_ratio < 1 and self.sample_ratio > 0:
			np.random.shuffle(inters)
			inters = inters[:int(len(inters) * self.sample_ratio)]

		return inters

	def get_item_group(self, all_item_seqs, min_count=5, max_count=10):

		item_inter_count = defaultdict(int)
		for user, items in all_item_seqs.items():
			if len(items) < 3:
				continue
			for item in items[:-2]:
				item_inter_count[item] += 1

		self.log(f"Number of items: {len(item_inter_count)}")
		self.log(f"Max count: {max(item_inter_count.values())}")
		self.log(f"Min count: {min(item_inter_count.values())}")

		item_group = []
		for item, count in item_inter_count.items():
			if count >= min_count and count < max_count:
				item_group.append(item)

		self.log(f"Number of items in group {min_count} - {max_count}: {len(item_group)}")

		return item_group

	def get_item_group_inters(self, inters, item_group):

		item_group_inters = []
		for inter in inters:
			if inter['item_seq'][-1] in item_group:
				item_group_inters.append(inter)

		self.log(f"Number of interactions in group: {len(item_group_inters)}")

		return item_group_inters



	@property
	def n_users(self):
		"""
		Returns the number of users in the dataset.

		Returns:
			int: The number of users in the dataset.
		"""
		return len(self.user2id)

	@property
	def n_items(self):
		"""
		Returns the total number of items in the dataset.

		Returns:
			int: The number of items in the dataset.
		"""
		return len(self.item2id)

	@property
	def n_interactions(self):
		"""
		Returns the total number of interactions in the dataset.

		Returns:
			int: The total number of interactions.
		"""
		n_inters = 0
		for user in self.all_item_seqs:
			n_inters += len(self.all_item_seqs[user])
		return n_inters

	@property
	def avg_item_seq_len(self):
		"""
		Returns the average length of item sequences in the dataset.

		Returns:
			float: The average length of item sequences.
		"""
		return self.n_interactions / self.n_users

	@property
	def user2id(self):
		"""
		Returns the user-to-id mapping.

		Returns:
			dict: The user-to-id mapping.
		"""
		return self.id_mapping['user2id']

	@property
	def item2id(self):
		"""
		Returns the item-to-id mapping.

		Returns:
			dict: The item-to-id mapping.
		"""
		return self.id_mapping['item2id']

	def __getitem__(self, idx):


		return self.all_inters[idx]

	def __len__(self):

		return len(self.all_inters)

	def log(self, message, level='info'):

		return log(message, self.accelerator, self.logger, level=level)