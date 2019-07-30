**SAXPY**（**Scalar Alpha X Plus Y**）是一个在 [Basic Linear Algebra Subprograms（BLAS）数据包中的](../Page/BLAS.md "wikilink")[函数](../Page/函数.md "wikilink")，并且是一个[并行向量处理机 processor）中常用的计算](../Page/并行向量处理机.md "wikilink")（vector[操作指令](https://zh.wikipedia.org/wiki/指令 "wikilink")。SAXPY是[标量乘法](../Page/标量乘法.md "wikilink")和[矢量加法的组合](https://zh.wikipedia.org/wiki/矢量加法 "wikilink")：

\[\mathbf{y} = \alpha \mathbf{x} + \mathbf{y}, \,\]

其中\(\alpha\)是[标量](../Page/标量.md "wikilink")，\(\mathbf{x}\)和\(\mathbf{y}\)是[矢量](https://zh.wikipedia.org/wiki/矢量 "wikilink")。对於大多数函数，[BLAS](../Page/BLAS.md "wikilink")数据包中都存在四种的SAXPY的变体，分别是**SAXPY**、**DAXPY**、**CAXPY**和**ZAXPY**，这些变体的区别仅在於标量\(\alpha\)的[数据类型不同](https://zh.wikipedia.org/wiki/数据类型 "wikilink")。例程的说明在外部链接中可以找到。

## 不同数据类型

### SAXPY

**SAXPY**不仅是标量乘法加矢量加法运算的组合的通称，而且是特定的变体，其中标量\(\alpha\)和矢量\(\mathbf{x}\)、\(\mathbf{y}\)是[单精度的](https://zh.wikipedia.org/wiki/单精度 "wikilink")。

### DAXPY

**DAXPY**以[双精度的](https://zh.wikipedia.org/wiki/双精度 "wikilink")\(\alpha\)、\(\mathbf{x}\)和\(\mathbf{y}\)表示SAXPY。

### CAXPY

**CAXPY**以[複數](https://zh.wikipedia.org/wiki/複數_\(數學\) "wikilink")\(\alpha\)、\(\mathbf{x}\)和\(\mathbf{y}\)表示SAXPY。

### ZAXPY

**ZAXPY**以[双精度](https://zh.wikipedia.org/wiki/双精度 "wikilink")[複數](https://zh.wikipedia.org/wiki/複數_\(數學\) "wikilink")\(\alpha\)、\(\mathbf{x}\)和\(\mathbf{y}\)表示SAXPY。

## 泛型实现

SAXPY最简单的泛型实现如下：

`for (int i = m; i < n; i++) {`
`   y[i] = a * x[i] + y[i];`
`}`

## 外部链接

  - <http://docs.sun.com/source/817-6700/>
  - <http://www.netlib.org/blas/>

[分类:数值线性代数](https://zh.wikipedia.org/wiki/分类:数值线性代数 "wikilink")