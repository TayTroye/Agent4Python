import React from 'react';
import { List, Card } from 'antd';

const students = [
  { id: 1, name: '张三' },
  { id: 2, name: '李四' },
  { id: 3, name: '王五' },
];

function TeacherPage({ setContent }) {
  function viewHomework(student) {
    setContent(<div>这是 {student.name} 的作业情况</div>);
  }

  return (
    <Card title="学生列表">
      <List
        dataSource={students}
        renderItem={(student) => (
          <List.Item>
            <a onClick={() => viewHomework(student)}>{student.name} 的作业情况</a>
          </List.Item>
        )}
      />
    </Card>
  );
}

export default TeacherPage;
