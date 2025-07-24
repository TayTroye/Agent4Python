import json
import os

import numpy as np


def sem_ids_to_tokens(item2sem_ids):

	offset = np.cumsum([0] + [256,256,256,256])[:-1]
	sem_ids2item = {}
	for item in item2sem_ids:
		tokens = list(item2sem_ids[item])
		for digit in range(4):
			# "+ 1" as 0 is reserved for padding
			tokens[digit] += offset[digit] + 1
			tokens[digit] = int(tokens[digit])
		item2sem_ids[item] = tuple(tokens)
		sem_ids2item[tuple(tokens)] = item
	return item2sem_ids, sem_ids2item



pairs = [10000, 9999]


dataset = "Musical_Instruments"
token_prefix = "sentence-t5-base_256,256,256,256_PCA128"


data_root = "/mnt/nanjingcephfs/project_wx-rec-alg-bdc-exp/bwzheng/GenRec-all/data/mtgrec/"

data_dir = os.path.join(data_root, dataset)






tokenizer_name_1 = f'{token_prefix}_{pairs[0]}.sem_ids'
sem_ids_path_1 = os.path.join(data_dir,tokenizer_name_1)
item2sem_ids_1 = json.load(open(sem_ids_path_1, 'r'))
item2tokens_1, _ = sem_ids_to_tokens(item2sem_ids_1)

tokenizer_name_2 = f'{token_prefix}_{pairs[1]}.sem_ids'
sem_ids_path_2 = os.path.join(data_dir,tokenizer_name_2)
item2sem_ids_2 = json.load(open(sem_ids_path_2, 'r'))
item2tokens_2, _ = sem_ids_to_tokens(item2sem_ids_2)


# #计算两者有区别的比例
# dif_num=0
# total=0
# for item in item2sem_ids_1:
# 	total+=len(item2sem_ids_1[item])
# 	for x,y in zip(item2sem_ids_1[item], item2sem_ids_2[item]):
# 		if x!=y:
# 			dif_num+=1
#
# print(f"all===  total: {total}, dif_num: {dif_num}, dif_ratio: {dif_num/total}")


#计算两者有区别的比例
dif_num=0
total=0
for item in item2sem_ids_1:
	total += 1
	if item2sem_ids_1[item][0] != item2sem_ids_2[item][0]:
		dif_num += 1

print(f"all[0]===  total: {total}, dif_num: {dif_num}, dif_ratio: {dif_num/total}")


# #计算两者有区别的比例
# dif_num=0
# total=0
# for item in item2sem_ids_1:
# 	total += 1
# 	if item2sem_ids_1[item][1] != item2sem_ids_2[item][1]:
# 		dif_num += 1
#
# print(f"all[1]===  total: {total}, dif_num: {dif_num}, dif_ratio: {dif_num/total}")
#
#
# #计算两者有区别的比例
# dif_num=0
# total=0
# for item in item2sem_ids_1:
# 	total += 1
# 	if item2sem_ids_1[item][2] != item2sem_ids_2[item][2]:
# 		dif_num += 1
#
# print(f"all[2]===  total: {total}, dif_num: {dif_num}, dif_ratio: {dif_num/total}")


#计算两者有区别的比例
dif_num=0
total=0
for item in item2sem_ids_1:
	total+=1
	if item2sem_ids_1[item]!=item2sem_ids_2[item]:
		dif_num+=1

print(f"item===  total: {total}, dif_num: {dif_num}, dif_ratio: {dif_num/total}")









# #计算两者有区别的比例
# dif_num=0
# total=0
# for item in item2tokens_1:
# 	total+=1
# 	if item2tokens_1[item]!=item2tokens_2[item]:
# 		dif_num+=1
#
# print(f"item_pad===  total: {total}, dif_num: {dif_num}, dif_ratio: {dif_num/total}")

dataset = "Industrial_and_Scientific"
token_prefix = "rqvae3x256_deep_128_ema/sentence-t5-base_256,256,256,256"

data_root = "/mnt/nanjingcephfs/project_wx-rec-alg-bdc-exp/bwzheng/GenRec-all/data/mtgrec/"

data_dir = os.path.join(data_root, dataset)



tokenizer_name_1 = f'{token_prefix}_{pairs[0]}.sem_ids'
sem_ids_path_1 = os.path.join(data_dir,tokenizer_name_1)
item2sem_ids_1 = json.load(open(sem_ids_path_1, 'r'))
item2tokens_1, _ = sem_ids_to_tokens(item2sem_ids_1)

tokenizer_name_2 = f'{token_prefix}_{pairs[1]}.sem_ids'
sem_ids_path_2 = os.path.join(data_dir,tokenizer_name_2)
item2sem_ids_2 = json.load(open(sem_ids_path_2, 'r'))
item2tokens_2, _ = sem_ids_to_tokens(item2sem_ids_2)


#计算两者有区别的比例
dif_num=0
total=0
for item in item2sem_ids_1:
	total += 1
	if item2sem_ids_1[item][0] != item2sem_ids_2[item][0]:
		dif_num += 1

print(f"all[0]===  total: {total}, dif_num: {dif_num}, dif_ratio: {dif_num/total}")



#计算两者有区别的比例
dif_num=0
total=0
for item in item2sem_ids_1:
	total+=1
	if item2sem_ids_1[item]!=item2sem_ids_2[item]:
		dif_num+=1

print(f"item===  total: {total}, dif_num: {dif_num}, dif_ratio: {dif_num/total}")










dataset = "Video_Games"
token_prefix = "rqvae3x256_deep_128_ema/sentence-t5-base_256,256,256,256"



data_root = "/mnt/nanjingcephfs/project_wx-rec-alg-bdc-exp/bwzheng/GenRec-all/data/mtgrec/"

data_dir = os.path.join(data_root, dataset)



tokenizer_name_1 = f'{token_prefix}_{pairs[0]}.sem_ids'
sem_ids_path_1 = os.path.join(data_dir,tokenizer_name_1)
item2sem_ids_1 = json.load(open(sem_ids_path_1, 'r'))
item2tokens_1, _ = sem_ids_to_tokens(item2sem_ids_1)

tokenizer_name_2 = f'{token_prefix}_{pairs[1]}.sem_ids'
sem_ids_path_2 = os.path.join(data_dir,tokenizer_name_2)
item2sem_ids_2 = json.load(open(sem_ids_path_2, 'r'))
item2tokens_2, _ = sem_ids_to_tokens(item2sem_ids_2)


#计算两者有区别的比例
dif_num=0
total=0
for item in item2sem_ids_1:
	total += 1
	if item2sem_ids_1[item][0] != item2sem_ids_2[item][0]:
		dif_num += 1

print(f"all[0]===  total: {total}, dif_num: {dif_num}, dif_ratio: {dif_num/total}")



#计算两者有区别的比例
dif_num=0
total=0
for item in item2sem_ids_1:
	total+=1
	if item2sem_ids_1[item]!=item2sem_ids_2[item]:
		dif_num+=1

print(f"item===  total: {total}, dif_num: {dif_num}, dif_ratio: {dif_num/total}")
