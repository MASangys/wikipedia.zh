**EnergyPlus**，由[美国能源部资助下](https://zh.wikipedia.org/wiki/美国能源部 "wikilink")[开发](https://zh.wikipedia.org/wiki/开发 "wikilink")，是以[BLAST和](https://zh.wikipedia.org/wiki/BLAST "wikilink")[DOE-2为基础的大型能耗](https://zh.wikipedia.org/wiki/DOE-2 "wikilink")[分析](https://zh.wikipedia.org/wiki/分析 "wikilink")[计算](https://zh.wikipedia.org/wiki/计算 "wikilink")[软件](../Page/软件.md "wikilink")。该软件据动态负荷[理论](https://zh.wikipedia.org/wiki/理论 "wikilink")，采用反应系数法，对[建筑物](../Page/建筑物.md "wikilink")及相关的供热、[通风和](https://zh.wikipedia.org/wiki/通风 "wikilink")[空调设备能耗](https://zh.wikipedia.org/wiki/空调设备 "wikilink")，进行[模拟计算](https://zh.wikipedia.org/wiki/模拟 "wikilink")\[1\]。

EnergyPlus比较适合于研究多[区域](https://zh.wikipedia.org/wiki/区域 "wikilink")[气流](https://zh.wikipedia.org/wiki/气流 "wikilink")、[太阳能](https://zh.wikipedia.org/wiki/太阳能 "wikilink")[应用方案以及](https://zh.wikipedia.org/wiki/应用 "wikilink")[建筑物](../Page/建筑物.md "wikilink")热力性能；输出是简单的[ASCII](../Page/ASCII.md "wikilink")[文件](https://zh.wikipedia.org/wiki/文件 "wikilink")，可供[电子数据表进一步的分析](https://zh.wikipedia.org/wiki/电子数据表 "wikilink")。\[2\]当前版本是EnergyPlus
[8.8.0](https://energyplus.net/)，可在[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[Macintosh和](https://zh.wikipedia.org/wiki/Macintosh "wikilink")[Linux](../Page/Linux.md "wikilink")操作系统上运行\[3\],
是[美国能源部目前官方正式的建筑物仿真程序](https://zh.wikipedia.org/wiki/美国能源部 "wikilink")。\[4\]

EnergyPlus也可用于[模拟](https://zh.wikipedia.org/wiki/模拟 "wikilink")[建筑物](../Page/建筑物.md "wikilink")中[照明用电和水的使用](https://zh.wikipedia.org/wiki/照明 "wikilink")，并包括了许多革新的仿真能力：时间步长短于1小时，[模块系统](https://zh.wikipedia.org/wiki/模块 "wikilink")，多区域空气流，热舒适，自然[通风和](https://zh.wikipedia.org/wiki/通风 "wikilink")[光伏系统](https://zh.wikipedia.org/wiki/光伏 "wikilink")。\[5\]

## EnergyPlus的主要特征\[6\]

  - [建筑物](../Page/建筑物.md "wikilink")响应以及主次要系统紧密[耦合的集成](https://zh.wikipedia.org/wiki/耦合 "wikilink")[同步方案](https://zh.wikipedia.org/wiki/同步 "wikilink")
  - 对于热区域与[环境间的交互作用用户可定义时间步长低于](https://zh.wikipedia.org/wiki/环境 "wikilink")1小时
  - 基于[ASCII](../Page/ASCII.md "wikilink")码气候文件，输入和输出文件包含以1小时或低于1小时为单位的时间步长
  - 对建筑物热负荷采用热平衡技术同步计算时间步长内的建筑物内外壁面的辐射和对应换热效果
  - 以三维的[有限差分地地面模型分析地面传热](https://zh.wikipedia.org/wiki/有限差分 "wikilink")
  - 以[热量传递与](https://zh.wikipedia.org/wiki/热量 "wikilink")[质量](../Page/质量.md "wikilink")传递模型相结合计算[水份的](https://zh.wikipedia.org/wiki/水份 "wikilink")[吸收和释放](https://zh.wikipedia.org/wiki/吸收 "wikilink")，通过与传热导函数的层层结合或通过水份渗透深度模型
  - 基于人的活动，内部[干球](https://zh.wikipedia.org/wiki/干球 "wikilink")[温度](../Page/温度.md "wikilink")和[湿度](../Page/湿度.md "wikilink")等的热合适模型
  - 采用[各向异性](https://zh.wikipedia.org/wiki/各向异性 "wikilink")[天空](../Page/天空.md "wikilink")模型计算倾斜[表面的](https://zh.wikipedia.org/wiki/表面 "wikilink")[太阳](../Page/太阳.md "wikilink")热扩散
  - 先进的[窗户负荷计算](https://zh.wikipedia.org/wiki/窗户 "wikilink")，包括对于百叶窗和电变色窗采用一层层热平衡法正确分配通过窗口吸收的太阳能
  - 采光控制计算，包括室内[照度计算](https://zh.wikipedia.org/wiki/照度 "wikilink")，[眩光仿真与控制](https://zh.wikipedia.org/wiki/眩光 "wikilink")，[照明](https://zh.wikipedia.org/wiki/照明 "wikilink")[控制](https://zh.wikipedia.org/wiki/控制 "wikilink")，以及减少人工照明对于加热和[冷却的影响](https://zh.wikipedia.org/wiki/冷却 "wikilink")
  - 基于循环配置的HVAC系统（[对流和](https://zh.wikipedia.org/wiki/对流 "wikilink")[辐射](../Page/辐射.md "wikilink")）
    ，允许用户在无需重新编译程序源代码方便地模拟典型系统和微小修改系统
  - 进行空气污染计算，以预测建筑物内外[CO2](https://zh.wikipedia.org/wiki/CO2 "wikilink")，SOx，NOx，[CO](https://zh.wikipedia.org/wiki/CO "wikilink")，PM和[碳氢化合物](https://zh.wikipedia.org/wiki/碳氢化合物 "wikilink")[浓度](https://zh.wikipedia.org/wiki/浓度 "wikilink")
  - 可连接到其他流行的仿真软件环境，比如WINDOW5,WINDOW6 and DElight，允许对建筑物组件作详细分析

## EnergyPlus不是什么\[7\]

  - 不是[用户界面](../Page/用户界面.md "wikilink")，是需要使用第三方用户界面的仿真引擎
  - 不是[生命周期成本分析工具](https://zh.wikipedia.org/wiki/生命周期 "wikilink")，其产生的结果可导入生命周期成本分析程序
  - 不是[建筑师](../Page/建筑师.md "wikilink")和[设计](https://zh.wikipedia.org/wiki/设计 "wikilink")[工程师](../Page/工程师.md "wikilink")的代替品，不检查输入[参数是否在有效范围](https://zh.wikipedia.org/wiki/参数 "wikilink")，不尝试解释结果

## 模块化\[8\]

  - EnergyPlus的良好组织的模块概念使增加特征和连接其他程序变得容易。[FORTRAN](https://zh.wikipedia.org/wiki/FORTRAN "wikilink")90被用于开发EnergyPlus，是基于该语言的以下特点：
  - 由于这是在许多平台有良好[编译工具的现代模块化语言](https://zh.wikipedia.org/wiki/编译 "wikilink")
  - 允许类似于[C语言的](https://zh.wikipedia.org/wiki/C语言 "wikilink")[数据结构](../Page/数据结构.md "wikilink")和混合语言模块
  - 提供开始[面向对象的结构](https://zh.wikipedia.org/wiki/面向对象 "wikilink")
  - [变量名可容许长达](https://zh.wikipedia.org/wiki/变量 "wikilink")32个[字符](../Page/字符.md "wikilink")

## 参考文献

[Category:建筑设计](https://zh.wikipedia.org/wiki/Category:建筑设计 "wikilink")
[Category:建筑能耗模拟软件](https://zh.wikipedia.org/wiki/Category:建筑能耗模拟软件 "wikilink")

1.

2.
3.

4.

5.
6.
7.
8.