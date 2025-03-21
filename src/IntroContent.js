import { FloatButton } from 'antd';


  function TechRoute() {
    return (
        <div style={{textAlign:'center'}}>
            <img 
              src="https://image.yumar.cn/i/2025/03/21/lj6pcx.png" 
              alt="技术路线图" 
             style={{width:500,border:"3px dashed black",padding:"1%"}}
             />
            <p style={{fontSize: 20,display: 'block',margin:'auto'}}>图x 技术路线图</p>
        </div>
    );
  }

  export default function IntroContent() {
    return (
      <section>
        <h1>主要内容</h1>


            <p style={{fontSize:16}}>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;随着人工智能技术的快速发展,大模型为智慧教育发展提供了新的技术路径。当前我国教育发展面临资源分配不均、个性化教学需求难以满足等挑战。为解决上述问题，本课题聚焦大语言模型在教育场景中的应用研究,旨在构建基于大模型智能体的教学支持系统,探索"AI+教育"的创新模式。</p>
            <p style={{fontSize:16}}>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;课题以"精准感知、动态支持、个性化推荐"为核心理念，将通过三大技术路线展开研究：基于知识追踪的学生成长画像技术，实现对学习过程的动态监测与分析；基于大语言模型的智能助教技术，提供全天候的个性化学习支持；自动教学资源生成与推送技术，确保教学资源的精准投放。三大技术路线将在数据层、智能处理层、应用层之间协同工作，构建智能化、动态化、交互式的教育支持系统。</p>
            <p style={{fontSize:16}}>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本课题首次将大语言模型应用于智慧教育全流程支持，并提出基于多维数据的学生画像构建新方法，计划实现教学资源的智能生成与精准推送新模式。预期建成一个集学生画像、智能答疑、资源推送等功能为一体的智慧教育平台，为推动教育公平、提升教学质量提供新型解决方案。研究成果不仅将为我国教育信息化、智能化建设提供技术支持，还将推动教育研究从理论到实践应用的突破，对提升教育科技自主创新能力具有重要意义。
            </p>
            <div style={{textAlign:'center', fontSize:16}}>
            <TechRoute />
            <p>

            </p>
        </div>
      </section>
    );
  }
  