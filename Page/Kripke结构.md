  -
    *本文介绍了在模型检测中使用的Kripke结构。对于更一般介绍，请参见[克里普克语义](../Page/关系语义.md "wikilink")*。

**克里普克结构（或称Kripke结构）**是[迁移系统的一个变种](https://zh.wikipedia.org/wiki/Transition_system "wikilink")，最初由[索尔·克里普克](../Page/索尔·阿伦·克里普克.md "wikilink")\[1\]提出，用于在[模型检测](https://zh.wikipedia.org/wiki/Model_checking "wikilink")\[2\]中表示一个系统的行为。Kripke结构本身是一个[图](../Page/图_\(数学\).md "wikilink")，其结点表示系统可达的状态，其边表示状态的迁移。
有一个标号函数将结点与结点所具有的性质的集合映射起来。[时序逻辑传统上是由Kripke结构进行解释的](https://zh.wikipedia.org/wiki/时间逻辑 "wikilink")。

## 形式化定义

<span>设 </span>''AP
*为 <span>*原子[命题](../Page/命题逻辑.md "wikilink") *</span>的集合，比如：包含变量、常量和谓词符号的布尔表达式。
Clarke et
al.\[3\] 将一个定义在 *AP *上的Kripke结构定义为一个[四元组](../Page/多元组.md "wikilink") *M''
=(*S*, *I*, *R*, *L*)，其中：

  - <span>一个有限状态集合 </span>*S*.
  - 一个初始状态集合 *I* ⊆ *S*.
  - 一个迁移关系 *R* ⊆ *S* × *S* ，其中 *R*
    是一个左部满射的[多值函数](../Page/多值函数.md "wikilink")，即∀*s*
    ∈ *S* ∃*s*' ∈ *S* 使得 (*s*,*s*') ∈ *R*.
  - 一个标号函数（或称“解释函数”） *L*: *S* →2<sup>*AP*</sup>.

由于*R*
是一个[多值函数](../Page/多值函数.md "wikilink")，因此通过克里普克结构，总是能够构建一个无穷路径。[死锁状态可以建模为仅存在一条指向自身的的出边](../Page/死锁.md "wikilink")。标号函数 *L*
定义为：对于每个状态 *s* ∈ *S*，*L*(*s*) 表示所有在 *s* 中有效的原子命题构成的集合。

Kripke结构 *M* 中的一条 *路径 *是指一个状态序列 ρ =
*s*<sub>*1*, </sub>*s*<sub>*2*, </sub>*s*<sub>*3*, </sub>...，其中，对于每个 i
\> 0，存在关系 *R*(*s*<sub>*i*, </sub>*s<sub>i+1</sub>*) 。路径 ρ 上的 *单词*
是指一个原子命题集合的序列 *w*=*L*(s<sub>1</sub>),*L*(s<sub>2</sub>),*L*(s<sub>3</sub>),...，也就是定义在字母表2<sup>*AP*</sup>上的一个
[ω单词](https://zh.wikipedia.org/wiki/Ω语言 "wikilink") 。

由这一定义，仅包含一个初始状态 *i *∈ *I*
的一个Kripke结构可以通过一个单例输入字母表被一个[摩尔型有限状态机识别](../Page/摩尔型有限状态机.md "wikilink")，同时其输出函数为Kripke结构的标号函数。\[4\]

## 例子

设原子命题集合 *AP* ={p, q}。 p和q可以模任意可以由Kripke结构建模的系统中的布尔命题。

右图表示了一个Kripke结构 ''M *=(*S, I, R, L'')，其中：

  - *S* = {s<sub>1</sub>, s<sub>2</sub>, s<sub>3</sub>}
  - *I* = {s<sub>1</sub>}
  - *R* = {(s<sub>1</sub>, s<sub>2</sub>),
    (s<sub>2</sub>,s<sub>1</sub>), (s<sub>2</sub>,s<sub>3</sub>),
    (s<sub>3</sub>、s<sub>3</sub>)}
  - *L* = {(s<sub>1</sub>, {p、q}), (s<sub>2</sub>, {q}), (s<sub>3</sub>,
    {p})}

*M* 可能产生一条路径 ρ = s1,s2,s1,s2,s3,s3,s3,... 以及一个单词 w =
{p,q},{q},{p,q},{q},{p},{p},{p},...，其中 w 是执行路径 ρ 对应的单词。 *M* 可以产生属于语言
({p, q}{q})\*({p})<sup>ω</sup>∪({p, q}{q})<sup>ω</sup> 的执行路径。

## 与其他表示方式的关系

尽管这一术语被普遍使用于模型检测社区，一些模型检测的教科书上并没有（或者实际上并没有）以这种扩展的方式定义Kripke结构，而只是简单使用了“（带标号的）[迁移系统](https://zh.wikipedia.org/wiki/Transition_system "wikilink")”的概念，同时添加了一个包含原子命题
*AP* 集合的动作的集合 *Act* 。于是，迁移关系因此被定义为 *S* × *Act* × *S* 集合的子集，标号函数 *L* （*L*
如上文定义）即对应于动作集合 *Act*。在这种定义方法中，通过抽取动作标签而得到的二元关系被称为**状态图**。\[5\]

Clarke et al.
重新定义了Kripke结构为一个转换集合（而不仅仅是一个转换）。当定义了模型μ-演算的语义时，转换集合等价于上文中的标号迁移。

## 参见

  - [时间逻辑](https://zh.wikipedia.org/wiki/时间逻辑 "wikilink")
  - [模型检测](https://zh.wikipedia.org/wiki/Model_checking "wikilink")
  - [克里普克语义](../Page/关系语义.md "wikilink")
  - [线性时序逻辑](https://zh.wikipedia.org/wiki/Linear_temporal_logic "wikilink")
  - [计算树逻辑](https://zh.wikipedia.org/wiki/Computation_tree_logic "wikilink")

## 参考文献

[Category:模型檢查](https://zh.wikipedia.org/wiki/Category:模型檢查 "wikilink")
[Category:時間邏輯](https://zh.wikipedia.org/wiki/Category:時間邏輯 "wikilink")

1.  Kripke, Saul, 1963, “Semantical Considerations on Modal Logic,” Acta
    Philosophica Fennica, 16: 83-94
2.  Clarke, Edmund M. (2008): The Birth of Model Checking. in: Grumberg,
    Orna and Veith, Helmut eds.: 25 Years of Model Checking, Vol. 5000:
    Lecture Notes in Computer Science.
3.  Clarke, Grumberg and Peled: "Model Checking", page 14.
4.
5.