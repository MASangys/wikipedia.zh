**PSI**是一套[从头算](../Page/从头计算法.md "wikilink")[量子化学计算工具](../Page/量子化学.md "wikilink")。最初由美国[乔治亚大学的Henry](../Page/乔治亚大学.md "wikilink")
F. Schaefer,
III课题组开发。目前由[乔治亚大学](../Page/乔治亚大学.md "wikilink")、[艾默里大学](../Page/艾默里大学.md "wikilink")、[乔治亚理工学院](../Page/乔治亚理工学院.md "wikilink")、[弗吉尼亚理工学院](../Page/弗吉尼亚理工学院.md "wikilink")、[佛罗里达州立大学等多个课题组参与开发与维护](../Page/佛罗里达州立大学.md "wikilink")。\[1\]该软件的目标是使用从头计算法精确计算小分子到中等大小分子的体系。

至2016年，软件的最新版本为**PSI4**。为[开源软件](../Page/开源软件.md "wikilink")，使用[C++编写](../Page/C++.md "wikilink")，以[GNU
GPL v2发布](../Page/GNU通用公共许可协议.md "wikilink")。\[2\]

## 特性

PSI支持以下量子化学计算方法：

  - [Hatree-Fock方法](../Page/哈特里－福克方程.md "wikilink")
  - [耦合簇方法](../Page/耦合簇方法.md "wikilink")
  - [完全活性空间自洽场方法](../Page/多组态自洽场方法#完全活性空间自洽场方法.md "wikilink")
  - [多参考组态相互作用方法](../Page/多参考组态相互作用方法.md "wikilink")

一些方法可用于计算电子激发态，例如[单组态相互作用方法](../Page/组态相互作用方法.md "wikilink")
(Configuration interaction Singles, CIS)，随机相位近似(Random Phase
Approximation, RPA), 耦合簇运动方程(Equation-of-motion Coupled Cluster,
EOM-CCSD)等。

### PSI4的新特性

#### Python语法

与之前的版本不同，PSI4使用[Python作为计算脚本](../Page/Python.md "wikilink")。脚本中可运行任意的Python语句，也可调用其它库（例如[BLAS](../Page/BLAS.md "wikilink")）进行在线数据分析。
以下是一个简单的PSI4输入脚本：

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

使用[自洽场方法](../Page/自洽场方法.md "wikilink")，cc-pVDZ基组计算水分子的能量并列表输出。

#### 并行与集群计算

促使PSI4开发的原因之一是并行计算的流行。为了将量子化学计算应用于多处理器计算环境，程序的改变程序的设计结构。PSI4带有Lib
Parallel库提供了并行计算的接口，支持[MPI和](../Page/MPI.md "wikilink")（多分辨率自适应数值科学仿真环境）。

## 参考资料

## 外部链接

  - [PSI4 主页](http://www.psicode.org)

[Category:化学软件](https://zh.wikipedia.org/wiki/Category:化学软件 "wikilink")
[Category:计算化学](https://zh.wikipedia.org/wiki/Category:计算化学 "wikilink")

1.
2.  [PSI4项目的GitHub页面](https://github.com/psi4/psi4public/)