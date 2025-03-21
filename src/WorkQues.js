import React, { useState } from 'react';
import { UploadOutlined } from '@ant-design/icons';
import { Button, message, Upload, Input } from 'antd';

const { TextArea } = Input;

const LoadWork = ({ setUploadedFiles }) => {
  const props = {
    name: 'file',
    action: 'https://660d2bd96ddfa2943b33731c.mockapi.io/api/upload',
    headers: {
      authorization: 'authorization-text',
    },
    onChange(info) {
      if (info.file.status !== 'uploading') {
        console.log(info.file, info.fileList);
      }
      if (info.file.status === 'done') {
        message.success(`${info.file.name} file uploaded successfully`);
        setUploadedFiles(info.fileList);  // 更新上传的文件列表
      } else if (info.file.status === 'error') {
        message.error(`${info.file.name} file upload failed.`);
      }
    },
  };

  return (
    <Upload {...props}>
      <Button icon={<UploadOutlined />}>Click to Upload</Button>
    </Upload>
  );
};

const FeedBack = ({ feedback }) => {
  return (
    <TextArea
      value={feedback}
      placeholder="大模型反馈"
      autoSize={{
        minRows: 3,
        maxRows: 100,
      }}
      readOnly
    />
  );
};

function WorkAdd({ setFeedback }) {
  const [uploadedFiles, setUploadedFiles] = useState([]);

  const handleConfirm = async () => {
    if (uploadedFiles.length === 0) {
      message.warning('请先上传文件！');
      return;
    }

    try {
      const response = await fetch('https://your-api-endpoint.com/feedback', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ files: uploadedFiles.map(file => file.name) }),
      });

      if (!response.ok) throw new Error('获取反馈失败');

      const data = await response.json();
      setFeedback(data.feedback || '暂无反馈');
      message.success('反馈已更新');
    } catch (error) {
      console.error(error);
      message.error('获取反馈失败，请重试');
    }
  };

  return (
    <div>
      <h1>请提交你的作业</h1>
      <LoadWork setUploadedFiles={setUploadedFiles} />
      <p> 在提交完成后点击按钮确认上传</p>
      <Button type="primary" onClick={handleConfirm}>确认</Button>
    </div>
  );
}

export default function WorkQues() {
  const [feedback, setFeedback] = useState('');

  return (
    <section>
      <div>
        <WorkAdd setFeedback={setFeedback} />
        <h1>作业反馈情况</h1>
        <FeedBack feedback={feedback} />
        <p>PS：此结果由大模型直接生成，仅作为参考</p>
      </div>
    </section>
  );
}
