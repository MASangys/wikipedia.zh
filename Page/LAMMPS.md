**LAMMPS** （"Large-scale Atomic/Molecular Massively Parallel Simulator"，大尺度原子/分子并行模拟工具）是由[桑迪亚国家实验室](../Page/桑迪亚国家实验室.md "wikilink")开发的一套[分子动力学](../Page/分子动力学.md "wikilink")模拟的开源程序包。\[1\] LAMMPS使用[MPI实现多机器并行计算](../Page/訊息傳遞介面.md "wikilink")，在新的版本中，支持基于[CUDA](../Page/CUDA.md "wikilink")和[OpenCL](../Page/OpenCL.md "wikilink")的GPU计算。其以[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")发布，因而开源自由。\[2\]

LAMMPS最初为一美国政府与私人机构合作项目，由[美国能源部与另外三所私有企业实验室合作开发](https://zh.wikipedia.org/wiki/美国能源部 "wikilink")。\[3\]目前由桑迪亚国家实验室负责维护和发布。\[4\]LAMMPS当前使用C++编写，早期版本使用[Fortran](../Page/Fortran.md "wikilink")77以及Fortran90。

## 特性

LAMMPS提供了元素周期表中原子对应的经验势函数，可进行与实际体系对应的分子动力学模拟，例如计算金属铝的晶格常数，\[5\]或水的密度，得到与实验吻合的结果。另一方面也提供了多种模型势函数，可用于进行粗粒化模拟，例如模拟基于粒子-弹簧模型的高分子链的性质。\[6\] LAMMPS作为实用程序包，采取了很多成熟的优化算法。例如在短程相互作用的计算中运用[韦尔莱表](../Page/韦尔莱表.md "wikilink")和[元胞列表](../Page/元胞列表.md "wikilink")优化临近粒子的扫描。

用户可在下至个人电脑，上至计算机集群上运行LAMMPS。在并行环境下，LAMMPS使用空间分解技术，将整个模拟体系分解成若干个更小的体系传递给不同处理器执行，边界的处理则使用“幽灵原子”保证整体的连续。LAMMPS对粒子密度均匀的立方体盒子体系的效率最高。

## 使用方法

LAMMPS并不提供图形化界面呈现模拟的结果以及相关工具进行建模，需要用户自己使用指定格式的脚本实现。程序运行中逐行读取并执行脚本内容。LAMMPS脚本主要由四个部分组成：初始化、定义原子、设置参数、进行模拟。

LAMMPS还可编译为共享库，提供接口供程序调用，通过其它编程语言实现复杂的功能。从2015年3月的版本开始，LAMMPS也可编译为[Python](../Page/Python.md "wikilink")模块，使用Python脚本进行分子模拟工作。\[7\]

## 参见

  - [并行计算](../Page/并行计算.md "wikilink")

## 参考资料

## 外部链接

  - [LAMMPS主页](http://lammps.sandia.gov/)
  - [项目的sourceforge页面](http://sourceforge.net/projects/lammps/)
  - [一些LAMMPS示例脚本](https://icme.hpc.msstate.edu/mediawiki/index.php/LAMMPS_tutorials)

[Category:分子模擬軟體](https://zh.wikipedia.org/wiki/Category:分子模擬軟體 "wikilink") [Category:自由科學軟件](https://zh.wikipedia.org/wiki/Category:自由科學軟件 "wikilink")

1.
2.
3.
4.
5.
6.
7.