> 本文内容由[Grøstl](https://zh.wikipedia.org/wiki/Grøstl)转换而来。


**Grøstl** 是一款参与[NIST散列函数竞赛的](https://zh.wikipedia.org/wiki/NIST散列函数竞赛 "wikilink")[加密散列函数](https://zh.wikipedia.org/wiki/密碼雜湊函數 "wikilink")。Grøstl入选比赛最后五强。 它与[AES一样使用相同的](https://zh.wikipedia.org/wiki/AES "wikilink")[S盒](../Page/S盒.md "wikilink")结构。创造者声称在[酷睿2](../Page/酷睿2.md "wikilink")处理器中其速度达到每字节21.4个周期。

根据提交的文件显示，Grøstl之名从德语而来。该名称原指一道奥地利菜，而该菜式的英语名称则称为哈希（中文称之为[乞食牛肉](https://zh.wikipedia.org/wiki/乞食牛肉 "wikilink")）。

像其他MD5/SHA家庭的散列函数，Grøstl将输入资料分成资料块，再重复计算 *h<sub>i</sub>* = *f*(*h*<sub>i-1</sub>, *m<sub>i</sub>*). 然而，Grøstl在每次计算后都保留至少相等于最终哈希值两倍大小的数值（512位或1024位），直至计算完成再将尾端数值[截尾](https://zh.wikipedia.org/wiki/截尾 "wikilink")。压缩函数*f* 被定义为：

  -
    *f*(*h*, *m*)= *P*(*h* ⊕ *m*)⊕ *Q*(*m*)⊕ *h*

*P* 和 *Q*之置换函数都基于[Rijndael](../Page/高级加密标准.md "wikilink")(AES)研发而成，但该函数分别处理8×8或8×16的字节[组](../Page/数组.md "wikilink")，而非4×4字节组。每次压缩皆牵涉四个操作。

最后数值经由以下函数算出哈希值：Ω(*h*)= *h* ⊕ *P*(*h*)，然后截断至所需之长度。

## Grøstl函数例子

空字串的Grøstl值：

`Grøstl-224("")`
`0x f2e180fb5947be964cd584e22e496242c6a329c577fc4ce8c36d34c3`
`Grøstl-256("")`
`0x 1a52d11d550039be16107f9c58db9ebcc417f16f736adb2502567119f0083467`
`Grøstl-384("")`
`0x ac353c1095ace21439251007862d6c62f829ddbe6de4f78e68d310a9205a736d8b11d99bffe448f57a1cfa2934f044a5`
`Grøstl-512("")`
`0x 6d3ad29d279110eef3adbd66de2a0345a77baede1557f5d099fce0c03d6dc2ba8e6d4a6633dfbd66053c20faa87d1a11f39a7fbe4a6c2f009801370308fc4ad8`

即使字串发生小小的改变，[雪崩效应](../Page/雪崩效应.md "wikilink")会使哈希值大大改变。 例如：

`Grøstl-256("`[`The``   ``quick``   ``brown``   ``fox``   ``jumps``   ``over``   ``the``   ``lazy``   ``dog`](../Page/The_quick_brown_fox_jumps_over_the_lazy_dog.md "wikilink")`")`
`0x 8c7ad62eb26a21297bc39c2d7293b4bd4d3399fa8afab29e970471739e28b301`
`Grøstl-256("`[`The``   ``quick``   ``brown``   ``fox``   ``jumps``   ``over``   ``the``   ``lazy``   ``dog`](../Page/The_quick_brown_fox_jumps_over_the_lazy_dog.md "wikilink")`.")`
`0x f48290b1bcacee406a0429b993adb8fb3d065f4b09cbcdb464a631d4a0080aaf`

## 外部链接

  - [Grøstl网站](http://www.groestl.info/)

[Category:密码散列函数](https://zh.wikipedia.org/wiki/Category:密码散列函数 "wikilink")