**BLAS**（Basic Linear Algebra
Subprograms，基础线性代数程序集）是一个[应用程序接口](../Page/应用程序接口.md "wikilink")（API）标准，用以规范发布基础线性代数操作的数值库（如矢量或矩阵乘法）。该程序集最初发布于1979年，并用于建立更大的数值程序包（如[LAPACK](../Page/LAPACK.md "wikilink")）。在高性能计算领域，BLAS被广泛使用。例如，[LINPACK的运算成绩则很大程度上取决于BLAS中子程序](../Page/LINPACK.md "wikilink")[DGEMM的表现](../Page/DGEMM.md "wikilink")。

为提高性能，各軟硬件厂商则针对其產品对BLAS接口实现进行高度最佳化。

## BLAS級別

BLAS按照功能被分为三个级别：\[1\]

  - Level 1：矢量-矢量运算

\[\boldsymbol{y} \leftarrow \alpha \boldsymbol{x} + \boldsymbol{y} \!\]

  - Level 2：矩阵-矢量运算

\[\boldsymbol{y} \leftarrow \alpha A \boldsymbol{x} + \beta \boldsymbol{y} \!\]

  - Level 3：矩阵-矩阵运算

\[C \leftarrow \alpha A B + \beta C \!\]

## 原理

BLAS實現都一般對[記憶體階層最佳化](../Page/記憶體階層.md "wikilink")（Memory Hierarchy
Optimization），使數據在[快取重用](../Page/快取.md "wikilink")、甚或減少[轉譯後備緩衝區失誤](../Page/轉譯後備緩衝區.md "wikilink")（TLB
miss）而提高運算效能。\[2\] \[3\]

## 實現

  - Netlib BLAS:官方参考实现，程序语言为[Fortran
    77](../Page/Fortran.md "wikilink")。\[4\]
  - ACML（AMD Core Math
    Library）：廠商[AMD的BLAS實現](../Page/AMD.md "wikilink")。\[5\]
  - ATLAS：[BSD许可证](../Page/BSD许可证.md "wikilink")[開源的BLAS實現](../Page/開源軟體.md "wikilink")。\[6\]
  - CUDA SDK: [NVIDIA](../Page/NVIDIA.md "wikilink")
    [CUDA](../Page/CUDA.md "wikilink") SDK包含了BLAS功能，通过C编程实现在GeForce
    8系列或更新一代显卡上运行。
  - GotoBLAS: 开发的BSD许可证開源的BLAS實現，但已停止了活跃开发，后继者为OpenBLAS。\[7\]
  - OpenBLAS:
    继任GotoBLAS的开源BLAS的实现，主要由[中国科学院软件研究所并行软件与计算科学实验室进行开发](../Page/中国科学院软件研究所.md "wikilink")。\[8\]
  - ESSL:
    [IBM的科学工程数值库ESSL](../Page/IBM.md "wikilink")，支持[AIX和](../Page/AIX.md "wikilink")[Linux系统下的](../Page/Linux.md "wikilink")[PowerPC架构](../Page/PowerPC.md "wikilink")。\[9\]
  - Intel MKL:
    [Intel核心数学库](../Page/Intel.md "wikilink")，支持[Pentium](../Page/Pentium.md "wikilink")，[Intel
    Core与](../Page/Intel_Core.md "wikilink")[ItaniumCPU系列](../Page/Itanium.md "wikilink")。实现平台包括[Linux](../Page/Linux.md "wikilink"),
    [Windows及](../Page/Microsoft_Windows.md "wikilink")[OS
    X](../Page/OS_X.md "wikilink")。\[10\]
  - GSL: [GNU科学数值库](../Page/GNU.md "wikilink")（GNU Scientific
    Library）包含了[GNU下的多平台C语言实现](../Page/GNU.md "wikilink")。
  - RenderScript IntrinsicBLAS:
    基于[Renderscript的](../Page/Renderscript.md "wikilink")[Android移动终端高性能BLAS实现](../Page/Android.md "wikilink").
    \[11\]

## 參考文獻

<references />

[Category:應用程序接口](https://zh.wikipedia.org/wiki/Category:應用程序接口 "wikilink")

1.
2.  [BLAS庫在多核處理器上的性能測試與分析](http://www.jos.org.cn/ch/reader/download_pdf.aspx?file_no=10023&year_id=2010&quarter_id=zk&falg=1)
3.  [Anatomy of High-Performance Matrix
    Multiplication](http://www.cse.uconn.edu/~huang/spring10_5304/pool/reference/HPMM.pdf)

4.  [BLAS (Basic Linear Algebra
    Subprograms)](http://www.netlib.org/blas/)
5.  [AMD Core Math
    Library](http://developer.amd.com/libraries/acml/pages/default.aspx)

6.  [Automatically Tuned Linear Algebra Software
    (ATLAS)](http://math-atlas.sourceforge.net/)
7.  [GOTOBLAS2](http://www.tacc.utexas.edu/research-development/tacc-software/gotoblas2)
8.  [OpenBLAS](http://www.openblas.net)
9.  [Engineering and Scientific Subroutine Library
    (ESSL)](http://publib.boulder.ibm.com/infocenter/clresctr/vxrx/index.jsp?topic=/com.ibm.cluster.essl.doc/esslbooks.html)
10. [Math Kernel Library from
    Intel](http://software.intel.com/en-us/articles/intel-mkl/)
11. [ScriptIntrinsicBLAS | Android
    Developers](http://developer.android.com/reference/android/renderscript/ScriptIntrinsicBLAS.html)