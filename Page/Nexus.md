**Nexus文件**是一种[生物信息学](../Page/生物信息学.md "wikilink")中常用的[文件格式](https://zh.wikipedia.org/wiki/文件格式 "wikilink")。很多[软件](../Page/软件.md "wikilink")使用或者识别这种格式，例如[PAUP\*和MacClade](https://zh.wikipedia.org/wiki/PAUP* "wikilink")。

## 语法

注解：使用“\[\]”。位于“\[”和“\]”之间的文字将被软件忽略，作为注解用。

文件采用“块”的方式来组织信息。每一个块的语法结构为：

`BEGIN 块的名称；`
`END;`

## 基本块结构

### DATA

例如：
`begin data;`
`dimensions ntax=5 nchar=600;`
`format interleave datatype=DNA missing=N gap=-;`
`end;`

ntax表示[分类单位的数量](https://zh.wikipedia.org/wiki/分类单位 "wikilink")，nchar表示数据的长度，上面这个例子里的含义是DNA有600个[碱基长度](https://zh.wikipedia.org/wiki/碱基 "wikilink")。数据类型，datatype是[DNA](https://zh.wikipedia.org/wiki/DNA "wikilink")。另外可以定义缺失信息和缺口用什么字符表示。

### PAUP或软件自定义块

有些软件可以识别特定的块，供自己特殊使用。例如PAUP block可以用来控制[PAUP\*](https://zh.wikipedia.org/wiki/PAUP* "wikilink")。[MrBayes也可以有自己的块](https://zh.wikipedia.org/wiki/MrBayes "wikilink")。常用这些软件自定义块来进行[批处理](../Page/批处理.md "wikilink")。

### 树

Nexus文件里面可以包含[种系发生树信息](https://zh.wikipedia.org/wiki/种系发生树 "wikilink")。例如：
`tree PAUP_1 = [&U]（((1:0,2:0.001674,3:0.001670):0.001658,4:0.003371):0.012438,(((5:0.003348,6:0.005043):0.001668,7:0.005031):0.003351,8:0):0.009545,9:0.564416);`
`End;`
阅读NEXUS格式的系统进化树文件，可以使用[TreeView软件](https://zh.wikipedia.org/wiki/TreeView "wikilink")。也可以使用TreeGraph\[1\]软件将其转换成[SVG格式](https://zh.wikipedia.org/wiki/SVG "wikilink")。

## 外部链接

  - [描述NEXUS文件格式的论文（英文）](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11975335&dopt=Citation)

## 注释

<references />

[Category:生物学](https://zh.wikipedia.org/wiki/Category:生物学 "wikilink") [Category:生物信息學](https://zh.wikipedia.org/wiki/Category:生物信息學 "wikilink")

1.