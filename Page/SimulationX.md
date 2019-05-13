[Screenshot_SimulationX_4-0_Bowden_Cable_Laptop_Center.png](https://zh.wikipedia.org/wiki/File:Screenshot_SimulationX_4-0_Bowden_Cable_Laptop_Center.png "fig:Screenshot_SimulationX_4-0_Bowden_Cable_Laptop_Center.png")

**SimulationX** \[1\] 是德国德累斯顿ESI ITI GmbH \[2\]
公司开发和商业发售的用于物理系统仿真的多学科领域CAE仿真软件。由于simulationX软件可以模拟不同学科领域的元件之间的相互作用，包括同一平台上它们之间的相互作用和反馈，因此工业和教育领域内的科研人员和工程开发人员可以使用该工具用于复杂一体化系统的设计，分析和虚拟测试。

ITI公司于2000年开始开发ITI-SIM的后继产品SimulationX，以满足系统仿真方面日益增加的需求。SimulationX的一个主要功能和其传统应用领域是稳态动力传动分析，基于在这方面的优良表现，SimulationX获得了2006年AEI
Tech \[3\] 授予的“动力传动仿真领域最优秀产品”的荣誉称号。\[\[2013年9月ITI公司发行了最新版本SimulationX
3.6.\[4\]

## 公司简介

[SimulationX_3-9_Electric_Vehicle_Laptop_center.png](https://zh.wikipedia.org/wiki/File:SimulationX_3-9_Electric_Vehicle_Laptop_center.png "fig:SimulationX_3-9_Electric_Vehicle_Laptop_center.png")
SimulationX由德国ITI公司开发。ITI致力于虚拟系统工程，其核心业务内容包括标准软件工具的开发以及工程咨询、工程开发和项目服务。ITI总部位于德国德累斯顿。通过子公司和分销商的网络式管理，ITI公司已经具备了覆盖全球的业务能力。

## 应用领域和学科库

软件支持Windows操作系统，并且由各个物理领域范围内的预定义元件类型和现成的模型库组成。这些元件库基于物理领域和应用范围进行分类。总共包括超过11个应用领域的500多个现成模型元件可用于搭建模型。其拖拽功能简化和加速了建模过程。液压、气动、和电子驱动以及控制都可以集成到任何多体系统的普通模型。前处理、求解和后处理过程都可以在同一个仿真环境内完成。在计算过程中，可以实时观察和分析任何系统的性能，并且可以在线调整参数。在全球仿真领域,
SimulationX以其友好的图形用户界面而著称，可以使复杂模型得以直观和精确的搭建。

SimulationX元件库包括:

  - *信号库*：通用信号模块、信号源、线性信号模块、非线性信号模块、时间离散信号模块、特殊信号模块、开关信号
  - '' [机械元件库](../Page/力学.md "wikilink")''：1维机械
    (转动、平动)、多体系统、STL格式的CAD模型导入
  - *动力传动系统库*：电机和发动机、耦合器和离合器、传动元件、行星排机构
  - *[电气工程和](../Page/電機工程學.md "wikilink")[电子元件库](../Page/电子学.md "wikilink")*：电子元件（模拟）、电磁、电动机、步进电机
  - *流体动力和[热动力学库](../Page/热力学.md "wikilink")*：液压（压力源、油箱、容积、差动油缸、节流孔、阀体、柱塞缸、定量和变量泵），气动（单纯气体和混合气体），热流（液体和气体的单相体、包含冷却剂的两相体、制冷剂、NIST、水、湿空气、气体混合物）
  - *特殊元件库*：水下工程库、水下液压、水下电力、离岸操作\[5\]

## Modelica

SimulationX支持Modelica建模语言，用于仿真单独创建的、实际模型（子模型）\[6\]。Modelica标准库的模型或完全由Modelica语言定义的模型都可以在SimulationX平台上运行。

## 接口

SimulationX为不同用途和不同应用的外部程序提供开放、兼容的CAx接口，例如，CAE,
[CAD](../Page/计算机辅助设计.md "wikilink") (PTC Pro/Engineer,
[Autodesk Inventor](../Page/Autodesk.md "wikilink")),
[CAM](../Page/计算机辅助制造.md "wikilink"), 电脑辅助优化（例如，Isight,
modeFRONTIER,
OptiY），[FEA/FEM](../Page/有限元分析.md "wikilink")、[CFD](../Page/计算流体力学.md "wikilink")。在联合仿真方面，为SimulatonX与CAE工具（MSC.Adams,
SIMPACK,
[MATLAB](../Page/MATLAB.md "wikilink")/[Simulink](../Page/Simulink.md "wikilink"),
Fluent,
Cadmould等）的连接提供了一个通用接口，对于特殊情况提供了预定义的启动程序。软件间的交互耦合实现了CAE工具和仿真软件的数据交换。SimulationX还提供了整体结构和系统分析工具（平衡点计算、自然频率、振动模态、输入输出分析）以及仿真模型与数据库的链接功能。其[COM接口允许SimulationX和其他窗体应用程序之间的通讯](../Page/组件对象模型.md "wikilink")，用于用户定义的批量处理、内嵌仿真、参数学习或者优化设计。\[7\]

代码输出特性支持C[源代码生成](../Page/源代码.md "wikilink")，主要用于模型无缝的集成、硬件在环仿真（HiL）和快速控制原型、功能虚拟样机等应用\[8\]。在现代系统设计工程的所有阶段中，工程设计人员和科研人员会使用各种无缝集成工具。SimulationX与实时测试和仿真平台的连接、如[LabVIEW](../Page/LabVIEW.md "wikilink"),
NI VeriStand, dSPACE, and SCALE-RT等大大增强了设计周期内的生产能力，并缩短了新产品的上市时间\[9\]

## 工业使用情况

SimulationX被制造业主要的OEMs和供应商广泛采用，例如汽车、航空、能源、重型机械、海洋船舶工业、采矿、石油和天然气、精密仪器和铁路等领域。其用户包括[Audi](../Page/奥迪.md "wikilink")、[BMW](../Page/BMW.md "wikilink")、[Daimler](../Page/戴姆勒.md "wikilink")、[Volkswagen](../Page/大众汽车.md "wikilink"),
Continental, Schaeffler, [Siemens](../Page/西门子公司.md "wikilink"), Demag,
Husky,
[Nikon](../Page/尼康.md "wikilink")、[Mitsubishi和](../Page/三菱集团.md "wikilink")[Liebherr](../Page/利勃海尔.md "wikilink").\[10\]

## 学术使用情况

SimulationX在全球范围内广泛用于教学和科研工作。

## 参考

## 外部链接

  - [ESI ITI GmbH](http://cn.itisim.com), the homepage of the ESI ITI
    GmbH (developing SimulationX).
  - [Textbook Machine Dynamics,
    German](http://www.springer.com/engineering/book/978-3-540-87693-9),
    Dresig, Hans, Holzweißig, Franz 9., neu bearb. Aufl., 2009, XII, 533
    S. 235 Abb. With CD-ROM., Softcover, ISBN 978-3-540-87693-9
  - [Modelica Association](http://www.modelica.org), the homepage of the
    non-profit Modelica Association (developing Modelica).

[Category:计算机辅助工程](https://zh.wikipedia.org/wiki/Category:计算机辅助工程 "wikilink")
[Category:模拟软件](https://zh.wikipedia.org/wiki/Category:模拟软件 "wikilink")
[Category:模拟程序语言](https://zh.wikipedia.org/wiki/Category:模拟程序语言 "wikilink")

1.  [Product
    Website](http://cn.itisim.com/simulationx/system-simulation)
2.  [Homepage of ITI](http://cn.itisim.com/)
3.  [Homepage of the society of automotive
    engineers](http://www.sae.org/)
4.  [Homepage of ITI
    History](http://cn.itisim.com/company/about/history/)
5.  [SimulationX Global Subsea
    Center](http://www.offshore-technology.com/contractors/project/agito/)
6.  [Modelica
    Newsletter 01/2013](https://www.modelica.org/publications/newsletters/2013-2)
7.  [1](http://www.itisim.com/simulationx/integration-solutions/interfaces/)
8.  [Homepage of Functional DMU Fraunhofer
    Gesellschaft](http://www.igd.fhg.de/igd-a2/fdmu/index.php)
9.  [National Instruments Developer
    Zone](http://sine.ni.com/nilex/DisplayLinkAction.do?id=316NILEX)
10. [ITI Customers](http://cn.itisim.com/company/references/customers)