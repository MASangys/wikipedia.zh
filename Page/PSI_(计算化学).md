> 本文内容由[PSI \(计算化学\)](https://zh.wikipedia.org/wiki/PSI \(计算化学\))转换而来。


**PSI**是一套[从头算](https://zh.wikipedia.org/wiki/从头计算法 "wikilink")[量子化学](../Page/量子化学.md "wikilink")计算工具。最初由美国[乔治亚大学的Henry](https://zh.wikipedia.org/wiki/乔治亚大学 "wikilink") F. Schaefer, III课题组开发。目前由[乔治亚大学](https://zh.wikipedia.org/wiki/乔治亚大学 "wikilink")、[艾默里大学](https://zh.wikipedia.org/wiki/艾默里大学 "wikilink")、[乔治亚理工学院](https://zh.wikipedia.org/wiki/乔治亚理工学院 "wikilink")、[弗吉尼亚理工学院](https://zh.wikipedia.org/wiki/弗吉尼亚理工学院 "wikilink")、[佛罗里达州立大学](../Page/佛罗里达州立大学.md "wikilink")等多个课题组参与开发与维护。\[1\]该软件的目标是使用从头计算法精确计算小分子到中等大小分子的体系。

至2016年，软件的最新版本为**PSI4**。为[开源软件](../Page/开源软件.md "wikilink")，使用[C++](../Page/C++.md "wikilink")编写，以[GNU GPL v2发布](https://zh.wikipedia.org/wiki/GNU通用公共许可协议 "wikilink")。\[2\]

## 特性

PSI支持以下量子化学计算方法：

  - [Hatree-Fock方法](../Page/哈特里－福克方程.md "wikilink")
  - [耦合簇方法](../Page/耦合簇方法.md "wikilink")
  - [完全活性空间自洽场方法](https://zh.wikipedia.org/wiki/多组态自洽场方法#完全活性空间自洽场方法 "wikilink")
  - [多参考组态相互作用方法](../Page/多参考组态相互作用方法.md "wikilink")

一些方法可用于计算电子激发态，例如[单组态相互作用方法](../Page/组态相互作用方法.md "wikilink") (Configuration interaction Singles, CIS)，随机相位近似(Random Phase Approximation, RPA), 耦合簇运动方程(Equation-of-motion Coupled Cluster, EOM-CCSD)等。

### PSI4的新特性

#### Python语法

与之前的版本不同，PSI4使用[Python](../Page/Python.md "wikilink")作为计算脚本。脚本中可运行任意的Python语句，也可调用其它库（例如[BLAS](../Page/BLAS.md "wikilink")）进行在线数据分析。 以下是一个简单的PSI4输入脚本：

``` Python
molecule h2o {
0 1
O
H 1 R
H 1 R 2 A
}
set basis = cc-pvdz
Rvals = [ 0.9, 1.0, 1.1 ]
Avals = range(100, 104, 1)
table = Table(rows=["R", "A"], cols=["E(SCF)"])
for h2o.R in Rvals:
    for h2o.A in Avals:
        escf = energy('scf')
        table[R][A] = escf
print str(table)
```

使用[自洽场方法](https://zh.wikipedia.org/wiki/自洽场方法 "wikilink")，cc-pVDZ基组计算水分子的能量并列表输出。

#### 并行与集群计算

促使PSI4开发的原因之一是并行计算的流行。为了将量子化学计算应用于多处理器计算环境，程序的改变程序的设计结构。PSI4带有Lib Parallel库提供了并行计算的接口，支持[MPI和](https://zh.wikipedia.org/wiki/MPI "wikilink")（多分辨率自适应数值科学仿真环境）。

## 参考资料

## 外部链接

  - [PSI4 主页](http://www.psicode.org)

[Category:化学软件](https://zh.wikipedia.org/wiki/Category:化学软件 "wikilink") [Category:计算化学](https://zh.wikipedia.org/wiki/Category:计算化学 "wikilink")

1.
2.  [PSI4项目的GitHub页面](https://github.com/psi4/psi4public/)