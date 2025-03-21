import React, { useState } from 'react';
import {
  DesktopOutlined,
  FileOutlined,
  PieChartOutlined,
  SlidersOutlined
} from '@ant-design/icons';
import { Breadcrumb, Layout, Menu, theme ,Button} from 'antd';
import IntroContent from './IntroContent.js';
import TeacherPage from './TeacherPage.js';
import UserInfo from './UserInfo.js';
import ClassQues from './ClassQues.js';
import WorkQues from './WorkQues.js';
import ClassCase from './ClassCase.js';
import WorkCase from './WorkCase.js';
const { Header, Content, Footer, Sider } = Layout;


function getItem(label, key, icon, children) {
  return {
    key,
    icon,
    children,
    label,
  };
}



const studentItems = [
  getItem('内容介绍', '1', <DesktopOutlined />),
  getItem('用户画像', '2', <SlidersOutlined />),
  getItem('在线疑问', 'sub1', <FileOutlined />, [
    getItem('课堂疑问', '3'),
    getItem('作业疑问', '4'),
  ]),

  getItem('成长记录', 'sub2', <PieChartOutlined /> ,[
    getItem('课堂情况', '5'), 
    getItem('作业情况', '6'),
  ]),
];


function App() {
  const [content,setContent] = useState(<IntroContent />)
  const [collapsed, setCollapsed] = useState(false);
  const [userRole, setUserRole] = useState('student');
  const {
    token: { colorBgContainer, borderRadiusLG },
  } = theme.useToken();

  function clickNavigation(e){
    console.log(e.key)
    if(e.key==1){
      setContent(<IntroContent />)
    }
    if(e.key==2){
      setContent(<UserInfo />)
    }
    if(e.key==3){
      setContent(<ClassQues/>)
    }
    if(e.key==4){
      setContent(<WorkQues/>)
    }
    if(e.key==5){
      setContent(<ClassCase/>)
    }
    if(e.key==6){
      setContent(<WorkCase />)
    }
  }


  function toggleRole() {
    if (userRole === 'student') {
      setUserRole('teacher');
      setContent(<TeacherPage setContent={setContent} />);
    } else {
      setUserRole('student');
      setContent(<IntroContent />);
    }
  }



  return (
    <Layout
      style={{
        minHeight: '100vh',
      }}
    >
      {userRole === 'student' && (
      <Sider collapsible collapsed={collapsed} onCollapse={(value) => setCollapsed(value)}>
      <div className="demo-logo-vertical">·</div>
      <div className="demo-logo-vertical"> · </div>
      <div className="demo-logo-vertical">  ·</div>
      <div className="demo-logo-vertical">  ·</div>
      <div className="demo-logo-vertical">  ·</div>
      <Menu onClick={clickNavigation} defaultOpenKeys={['sub1']} theme="dark" defaultSelectedKeys={['1']} mode="inline" items={studentItems} />
    </Sider>
      )}


      <Layout>
        {/* <Header
          style={{
            padding: 0,
            background: colorBgContainer,
          }}/> */}
        <Header style={{ position: 'relative', display: 'flex', alignItems: 'center', background: colorBgContainer }}>
          <div className="demo-name" style={{ position: 'absolute', top: '50%', left: '50%', transform: 'translate(-50%, -50%)', fontSize: 22, fontWeight: '900', color: '#001529' }}>
            {userRole === 'student' ? '基于大模型Agent的智能Python学习平台' : '教师管理页面'}
          </div>
          <Button style={{ position: 'absolute', right: 20 }} onClick={toggleRole}>
            {userRole === 'student' ? '切换到教师' : '切换到学生'}
          </Button>
        </Header>
        <Content
          style={{
            margin: '0 16px',
          }}
        >
          <Breadcrumb
            style={{
              margin: '16px 0',
            }}
          >
            {/* <Breadcrumb.Item>User</Breadcrumb.Item>
            <Breadcrumb.Item>Bill</Breadcrumb.Item> */}
          </Breadcrumb>
          <div
            style={{
              padding: 24,
              minHeight: 360,
              background: colorBgContainer,
              borderRadius: borderRadiusLG,
            }}
          >
            {content}
          </div>
        </Content>
        <Footer
          style={{
            textAlign: 'center',
          }}
        >
          Designed by KeSha Ou
        </Footer>
      </Layout>
    </Layout>
  );
}

export default App;
