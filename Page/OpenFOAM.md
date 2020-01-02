> 本文内容由[OpenFOAM](https://zh.wikipedia.org/wiki/OpenFOAM)转换而来。


**OpenFOAM**（英文 Open Source Field Operation and Manipulation 的缩写，意为开源的场运算和处理软件）是对[连续介质力学](../Page/连续介质力学.md "wikilink")问题进行[数值计算的](https://zh.wikipedia.org/wiki/数值计算 "wikilink")[C++](../Page/C++.md "wikilink")[自由软件](../Page/自由软件.md "wikilink")工具包，其代码遵守[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")。它可进行数据预处理、后处理和自定义求解器，常用于[计算流体力学](../Page/计算流体力学.md "wikilink")(CFD)领域。该软件由OpenFOAM基金会维护\[1\]（商标**OpenFOAM**的拥有者[硅谷图形公司](../Page/硅谷图形公司.md "wikilink")(SGI)赞助）。

## 历史

OpenFOAM的早期开发始于1980年代末期的[伦敦帝国学院](../Page/伦敦帝国学院.md "wikilink")，其目标是为了编写一个相对于当时事实上的标准，[FORTRAN](https://zh.wikipedia.org/wiki/FORTRAN "wikilink")，更为强大和灵活的通用模拟计算平台。并且因此选择了拥有高度[模块化和](https://zh.wikipedia.org/wiki/模組_\(程式設計\) "wikilink")[面向对象特性的](https://zh.wikipedia.org/wiki/面向对象 "wikilink")[C++](../Page/C++.md "wikilink")作为其编程语言。在2004年OpenFOAM以开源方式发布之前，英国Nabla有限公司曾销售过FOAM，OpenFOAM的前身。\[2\]2011年8月15日，[OpenCFD宣布它被](https://zh.wikipedia.org/wiki/OpenCFD "wikilink")[硅谷图形公司](../Page/硅谷图形公司.md "wikilink")(SGI)收购。\[3\]

OpenFOAM是最早的用C++写成的重要科学计算软件包之一。现已成为使用多面体网格的最主要的通用[计算流体力学](../Page/计算流体力学.md "wikilink")(CFD)软件.

## 特色

### 语法

OpenFOAM一个非常有特色的地方是它描述[张量和](https://zh.wikipedia.org/wiki/张量 "wikilink")[偏微分方程](../Page/偏微分方程.md "wikilink")的语法与被求解的方程本身非常相似，事实上便捷地在程序中表达传统的数学记号正是其语法设计的目标。例如方程\[4\]

  -
    \(\frac{\partial \rho \mathbf{U}}{\partial t} + \nabla \cdot\phi\mathbf{U} - \nabla \cdot\mu\nabla\mathbf{U} = - \nabla p\)

对应的OpenFOAM代码是

``` cpp
solve
(
     fvm::ddt(rho,U)
   + fvm::div(phi,U)
   - fvm::laplacian(mu,U)
     ==
   - fvc::grad(p)
);
```

得益于[面向对象的程序设计和](../Page/面向对象程序设计.md "wikilink")[运算符重载](../Page/运算符重载.md "wikilink")，使用者可以相对容易地建立自己的求解器。然而，大量[模板元编程的运用以及相应开发文档的缺乏](https://zh.wikipedia.org/wiki/模板超编程 "wikilink")，使得越是深入库底层的定制化越是困难和充满挑战。

### 可扩展性

由于使用了[工厂方法](../Page/工厂方法.md "wikilink")和[基类作为](../Page/类_\(计算机科学\).md "wikilink")[接口](../Page/介面_\(程式設計\).md "wikilink")，OpenFOAM具有很好的可扩展性。使用者在建立定制化的物体或对象（例如[边界条件或湍流模型](https://zh.wikipedia.org/wiki/边界条件 "wikilink")）时，无需修改或是重新编译OpenFOAM软件包，便可在已有的求解器上工作。OpenFOAM称之为*运行时决策(run-time selection)*\[5\]

## OpenFOAM的架构

OpenFOAM核心功能的实现是由大量的基础库完成的，其中包括：

  - 张量和场操作
  - 人类可读的偏微分方程离散化语法
  - [线性系统求解](https://zh.wikipedia.org/wiki/线性系统 "wikilink")\[6\]
  - 常微分方程求解\[7\]
  - 高级操作的自动并行化
  - 动态网格\[8\]
  - 通用物理模型
      - 流变模型(Rheological models)\[9\]
      - 热力学模型及相关的数据库\[10\]
      - 湍流模型\[11\]
      - 化学反应和动理学模型\[12\]
      - 拉格朗日粒子追踪模型\[13\]
      - 热辐射传输模型
      - 单参照系和多参照系方法

利用便捷直观的高级语法和基础库提供的功能完成开发*应用*。通常应用可以归为两类：

  - 求解器：执行连续介质问题的求解计算
  - 实用程序：用于准备网格、设置模拟样例、处理结果等

每个应用有其专注的功能：如应用*blockMesh*用于从用户提供的输入文件生成网格，而另一个应用*icoFoam*，则用来求解[不可压](../Page/不可壓縮流.md "wikilink")[层流的](https://zh.wikipedia.org/wiki/层流 "wikilink")[Navier-Stokes方程](https://zh.wikipedia.org/wiki/Navier-Stokes方程 "wikilink")。

最后，一些第三方软件包被用来提供并行化能力（即[OpenMPI](https://zh.wikipedia.org/wiki/OpenMPI "wikilink")）和进行图像后处理（[ParaView](https://zh.wikipedia.org/wiki/ParaView "wikilink")）。

## 功能

OpenFOAM的功能含有\[14\]： [Screenshot_OpenFOAM_smallPoolFire2D_ParaView_3.12.0.png](https://zh.wikipedia.org/wiki/File:Screenshot_OpenFOAM_smallPoolFire2D_ParaView_3.12.0.png "fig:Screenshot_OpenFOAM_smallPoolFire2D_ParaView_3.12.0.png")在空气中燃烧的模拟。甲烷从底端喷出，同时被点燃。图形界面是[ParaView](https://zh.wikipedia.org/wiki/ParaView "wikilink")。图中底色表示温度，箭头表示气流速度，箭头的颜色表示局部的氧气含量。\]\]

  - 基本的[计算流体力学](../Page/计算流体力学.md "wikilink")求解器
  - 不可压流的[雷诺平均纳维－斯托克斯方程法(RANS)和](../Page/计算流体力学.md "wikilink")[大涡流模拟法(LES)求解](../Page/计算流体力学.md "wikilink")\[15\]
  - 可压流的RANS和LES求解\[16\]
  - 浮力流动求解器\[17\]
  - [直接数值模拟(DNS)](../Page/计算流体力学.md "wikilink") 和 LES
  - 多相流体求解器\[18\]
  - 粒子跟踪求解器
  - 燃烧问题求解器\[19\]
  - 耦合热传输求解器\[20\]
  - [分子动力学](../Page/分子动力学.md "wikilink")求解器\[21\]
  - \[22\]
  - [电磁学](../Page/电磁学.md "wikilink")求解器\[23\]
  - [刚体动力学模拟器](https://zh.wikipedia.org/wiki/刚体动力学 "wikilink")\[24\]

除以上列举的标准求解器之外，由于OpenFOAM的语法，建立自定义的求解器也是容易的。

OpenFOAM实用程序被细分为：

  - 网格实用程序
      - 网格生成: 它们通过输入文件或几何描述文件（如）来自动生成计算用的网格(hex-dominant, snappyHexMesh)
      - 网格格式转化：转化其他工具生成的网格到OpenFOAM格式
      - 网格处理：执行一些网格操作，如局部优化，区域定义等
  - 并行处理工具：提供计算任务的分解、合并和重分发功能来实现并行计算
  - 预处理工具：准备模拟样例
  - 后处理工具：处理模拟结果，包含到OpenFOAM和[ParaView的插件](https://zh.wikipedia.org/wiki/ParaView "wikilink")
  - 表面处理工具
  - 热物理工具

## 许可证

OpenFOAM是自由软件和开源软件，在[GNU通用公共许可证版本3下发布](https://zh.wikipedia.org/wiki/GNU通用公共许可证#GPLv3 "wikilink")。\[25\]

## 优劣

### 优点

  - 用户友好的偏微分方程描述语法
  - 有非结构化多面体网格的处理能力
  - 自动并行化OpenFOAM高级语言写成的应用
  - 现成的涵盖宽领域的应用和模型
  - 有由开发者提供的商业支持和培训
  - 无许可证花费

### 缺点

  - 缺少集成的[图形化用户界面(GUI)](https://zh.wikipedia.org/wiki/图形化用户界面 "wikilink")（但有独立私有软件可选）
  - 开发文档缺乏足够的细节，学习曲线平缓
  - 文档缺乏维护，入门困难

## 分支和改编

### 自由软件

  - **blueCFD** 是改编自**OpenFlow**的运行在 [Windows](https://zh.wikipedia.org/wiki/Windows "wikilink") 上的OpenFOAM[交叉编译版本](https://zh.wikipedia.org/wiki/交叉编译 "wikilink")。该软件包同时也含有一些有用的额外函数和工具。blueCAPE出品。\[26\]
  - **FreeFOAM**\[27\]为了把OpenFOAM从它对系统的依赖中解脱出来，使其安装更为便携和用户友好而建立的分支。其开发紧跟最新的OpenFOAM发布版，不附带额外的功能，使用[CMake](../Page/CMake.md "wikilink")作为编译系统。
  - **OpenFlow** 是一个OpenFOAM的[Windows平台](https://zh.wikipedia.org/wiki/Windows "wikilink")[交叉编译的源码补丁](https://zh.wikipedia.org/wiki/交叉编译 "wikilink")。blueCFD中OpenFOAM的部分既是由它而来。Symscape出品\[28\]
  - **OpenFOAM-extend**\[29\]由Wikki有限公司维护\[30\]。该分支有*社区贡献*的大量内容，并且当中的绝大部分贡献可以装入到OpenFOAM的官方版本中，而只产生最低限度的影响。\[31\]它的开发与官方版OpenFOAM是并列进行的，对最新版OpenFOAM的合并可能要等到一至两年后。

### 付费软件

  - **Caedium** 是**[Symscape](https://zh.wikipedia.org/wiki/Symscape "wikilink")**出品的通用数值模拟环境。其RANS Flow的附加功能\[32\]提供了用于OpenFOAM的模型建立、解操作和后处理的图形用户界面。
  - **CastNet** DHCAE Tools出品的私有建模和模拟环境。\[33\]其中包含一个OpenFOAM的图形界面前端。FOAM.
  - **ICON FOAMpro CFD** 由**ICON Process & Consulting Ltd**进行维护。\[34\]与[大众汽车](https://zh.wikipedia.org/wiki/大众汽车 "wikilink")\[35\]和[福特汽车](../Page/福特汽车.md "wikilink")\[36\]合作，主要围绕着汽车应用而开发。该分支既包含*社区贡献*的内容也包含*ICON专有*的开发。

## 替代软件

### 开源软件和自由软件

  - Stanford University Unstructured (SU<sup>2</sup>)\[37\]
  - [Code Saturne](https://zh.wikipedia.org/wiki/Code_Saturne "wikilink") (GPL)
  - FreeCFD\[38\]
  - [Gerris Flow Solver](../Page/Gerris.md "wikilink")\[39\]
  - OpenFVM\[40\]
  - CLAWPACK\[41\]

### 私有软件

  - [ANSYS](https://zh.wikipedia.org/wiki/ANSYS "wikilink") CFX
  - [ANSYS](https://zh.wikipedia.org/wiki/ANSYS "wikilink") Fluent
  - [Pumplinx](https://zh.wikipedia.org/wiki/Pumplinx "wikilink")
  - [STAR-CCM+](https://zh.wikipedia.org/wiki/CD-adapco#STAR-CCM.2B "wikilink")
  - [KIVA (software)](https://zh.wikipedia.org/wiki/KIVA_\(software\) "wikilink")
  - [RELAP5-3D](https://zh.wikipedia.org/wiki/RELAP5-3D "wikilink")
  - [PowerFlow](https://zh.wikipedia.org/wiki/PowerFlow "wikilink")
  - [FOAMpro](https://zh.wikipedia.org/wiki/FOAMpro "wikilink")

## 参考文献

<references/>

## 外部链接

### 官方资源

  - [Official OpenFOAM web site](http://www.openfoam.com)
  - [OpenFOAM official documentation](http://www.openfoam.com/docs/)
  - [OpenFOAM bug-reporting system](http://www.openfoam.com/mantisbt/main_page.php)

### 社区资源

  - [OpenFOAM Forum at CFD Online](http://www.cfd-online.com/Forums/openfoam/)
  - [OpenFOAM wiki](http://openfoamwiki.net/index.php/Main_Page)
  - [FOAM CFD web site](https://web.archive.org/web/20120718033629/http://foamcfd.org/), by one of the original developers of the code, who is not associated with OpenCFD.
  - [A Blog about OpenFOAM in Chinese](http://blog.sina.com.cn/openfoamresearch/)
  - [OpenFOAM中文爱好者之家网站](http://www.openfoam.cn/)
  - [入门课程](https://web.archive.org/web/20130530144043/http://www.wolfdynamics.com/training/training-with-openfoam%C2%AE.html)

[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink") [Category:计算流体力学](https://zh.wikipedia.org/wiki/Category:计算流体力学 "wikilink")

1.  [The OpenFOAM Foundation homepage](http://www.openfoam.org/)
2.  [OpenFOAM Release History](http://www.openfoam.org/download/history.php)
3.
4.  [Creating solvers in OpenFOAM](http://www.openfoam.com/features/creating-solvers.php)
5.  [OpenFOAM's *run-time selection mechanism* explained](http://openfoamwiki.net/index.php/OpenFOAM_guide/runTimeSelection_mechanism)
6.  [Linear system solvers in OpenFOAM](http://www.openfoam.com/features/linear-solvers.php)
7.  [Ordinary differential equation solvers in OpenFOAM](http://www.openfoam.com/features/ODE-solvers.php)
8.  [Dynamic mesh in OpenFOAM](http://www.openfoam.com/features/mesh-motion.php)
9.  [Rheological models in OpenFOAM](http://www.openfoam.com/features/transport.php)
10. [Thermophysical models in OpenFOAM](http://www.openfoam.com/features/thermophysical.php)
11. [Turbulence models in OpenFOAM](http://www.openfoam.com/features/turbulence.php)
12. [Chemical reactions and kinetics models in OpenFOAM](http://www.openfoam.com/features/reaction-kinetics.php)
13. [Lagrangian particle tracking in OpenFOAM](http://www.openfoam.com/features/lagrangian.php)
14. [OpenFOAM features](http://www.openfoam.com/features/)
15. [OpenFOAM incompressible flow solvers](http://www.openfoam.com/features/standard-solvers.php#incompressibleFlowSolvers)
16. [OpenFOAM Compressible flow solvers](http://www.openfoam.com/features/standard-solvers.php#compressibleFlowSolvers)
17. [OpenFOAM buoyancy-driven flow solvers](http://www.openfoam.com/features/standard-solvers.php#heatTransferSolvers)
18. [Multiphase flow solvers](http://www.openfoam.com/features/standard-solvers.php#multiphaseFlowSolvers)
19. [OpenFOAM solvers for combustion](http://www.openfoam.com/features/standard-solvers.php#combustionSolvers)
20. [OpenFOAM solvers for conjugate heat transfer](http://www.openfoam.com/features/standard-solvers.php#heatTransferSolvers)
21. [OpenFOAM molecular dynamics solvers](http://www.openfoam.com/features/standard-solvers.php#MDSolvers)
22. [OpenFOAM Direct Simulation Monte Carlo solvers](http://www.openfoam.com/features/standard-solvers.php#DSMCSolvers)
23. [OpenFOAM Electromagnetics solvers](http://www.openfoam.com/features/standard-solvers.php#electromagneticsSolvers)
24. [OpenFOAM solid dynamics solvers](http://www.openfoam.com/features/standard-solvers.php#stressAnalysisSolvers)
25. <http://www.openfoam.org/licence.php> OpenFOAM Licensing Page
26. [blueCAPE's homepage](http://joomla.bluecape.com.pt/)
27. [FreeFOAM Home Page](http://freefoam.sourceforge.net/)
28. [OpenFlow source code patch](http://www.symscape.com/openfoam-2-0-x-on-windows-64-mpi)
29. [OpenFOAM-extend Project Home Page](http://www.extend-project.de/)
30. [Wikki Ltd](http://www.wikki.co.uk/).
31. [Solvers](http://openfoamwiki.net/index.php/Main_ContribSolvers), [Utilities](http://openfoamwiki.net/index.php/Main_ContribUtilities), and [Other contributions](http://openfoamwiki.net/index.php/Main_ContribOther)
32. [Caedium RANS Flow add-on](http://www.symscape.com/product/rans)
33. [DHCAE Tools homepage](http://www.dhcae-tools.com/)
34. [ICON FOAMpro Process](http://www.iconcfd.com/services/foampro)
35. [ICON VWG SAE paper](http://papers.sae.org/2009-01-0333)
36. [ICON FORD SAE paper](http://papers.sae.org/2011-01-0163)
37. [SU<sup>2</sup> homepage](http://su2.stanford.edu/)
38. [FreeCFD homepage](http://www.freecfd.com/)
39. [Gerris homepage](http://gfs.sf.net/)
40. [OpenFVM homepage](http://sourceforge.net/projects/openfvm/)
41. \[depts.washington.edu/clawpack\]