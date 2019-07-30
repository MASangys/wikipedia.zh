[DAGATA-Detektor_Monte_Carlo_Simulation_with_Geant4.png](https://zh.wikipedia.org/wiki/File:DAGATA-Detektor_Monte_Carlo_Simulation_with_Geant4.png "fig:DAGATA-Detektor_Monte_Carlo_Simulation_with_Geant4.png")

**Geant4**(GEometry ANd Tracking，几何和跟踪)是由[CERN](https://zh.wikipedia.org/wiki/CERN "wikilink")([欧洲核子研究组织](https://zh.wikipedia.org/wiki/欧洲核子研究组织 "wikilink"))基于[C++](../Page/C++.md "wikilink")[面向对象技术开发的](https://zh.wikipedia.org/wiki/面向对象 "wikilink")[蒙特卡罗应用软件包](https://zh.wikipedia.org/wiki/蒙特卡罗 "wikilink")，用于模拟粒子在物质中输运的物理过程。相对于[MCNP](https://zh.wikipedia.org/wiki/MCNP "wikilink")、[EGS等商业软件来说](https://zh.wikipedia.org/wiki/EGS "wikilink"),它的主要优点是[源代码](../Page/源代码.md "wikilink")完全开放,用户可以根据实际需要更改、扩充Geant4程序\[1\]。

## 历史

CERN和KEK（日本高能加速器研究中心）在1993年曾经研究如何在Geant3中使用现代化的计算机技术，后来CERN的探测器研究委员会组织了来自[欧洲](../Page/欧洲.md "wikilink")、[俄罗斯](../Page/俄罗斯.md "wikilink")、[加拿大](../Page/加拿大.md "wikilink")、[日本](../Page/日本.md "wikilink")和[美国](../Page/美国.md "wikilink")的几十个实验室、高校和研究机构的超过100名科学家和工程师进行合作，基于C++语言，利用面向对象的程序设计技术对已有的模拟程序进行了重新构造。这项工程被称为RD44，初步研究在1998年12月完成，随后在1999年2月Geant4建立了起来，并且在不断的发展和完善过程中得到了用户的支持和维护\[2\]。目前Geant4已经广泛应用于[核物理](https://zh.wikipedia.org/wiki/核物理 "wikilink")、[核技术](../Page/核技术.md "wikilink")、空间物理、医学研究等领域。

## 特点

Geant4分为许多模块，分别负责处理几何跟踪，探测器响应，运行管理，可视化和用户界面。对许多物理模拟来说，这意味可以在实现细节上花费较少时间，使得研究者可以立刻着手从事模拟工作中重要的方面。 以下是这些模块所实现功能的总结：

  - *几何*是对实验的物理布局的定义，包括探测器，吸收体的形状、大小、材料等；
  - *跟踪*通过追踪粒子穿过介质时发生的物理过程（碰撞、反应、吸收等），确定粒子的路径和状态；
  - *探测器响应*记录到达探测器的粒子的信息，预测真实探测器将会做出何种反应；
  - *运行管理*记录每一次运行（由一系列事件组成）中的信息，在多次运行之间可以对运行参数进行设置；
  - Geant4提供包括[OpenGL](../Page/OpenGL.md "wikilink")在内的一系列*可视化接口*，以及基于[Tcsh](../Page/Tcsh.md "wikilink")的*交互界面*。

## 应用

由于具有良好的通用性和扩展能力，Geant4在涉及微观粒子与物质相互作用的诸多领域获得了广泛应用。

  - 空间应用，用于模拟[太空环境中](https://zh.wikipedia.org/wiki/太空 "wikilink")[宇宙射线对](https://zh.wikipedia.org/wiki/宇宙射线 "wikilink")[飞行器](../Page/飞行器.md "wikilink")设备的损害；
  - 微电子学，研究电离作用对微电子器件的影响；
  - 辐射医学，模拟放射线对生物体组织的各种效应。

## 參考資料

## 外部链接

  - [Geant4官方页面](http://geant4.web.cern.ch/)
  - [斯坦福直线加速器geant4页面](http://www-public.slac.stanford.edu/geant4/)
  - [Geant4中国用户群](http://geant4cn.livejournal.com/)

## 参见

  - [蒙特卡洛方法](https://zh.wikipedia.org/wiki/蒙特卡洛方法 "wikilink")

[Category:粒子物理学](https://zh.wikipedia.org/wiki/Category:粒子物理学 "wikilink") [Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")

1.  仇小鹏等，基于VC++.Net开发Geant4数值模拟程序，《计算机仿真》 2007年06期
2.  [Geant4安装和入门](http://wenku.baidu.com/view/9432f91a10a6f524ccbf85de.html)