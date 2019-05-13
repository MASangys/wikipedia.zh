在[生物信息学中](../Page/生物信息学.md "wikilink")，**FASTA格式**是一种用于记录[核酸序列或](../Page/核酸序列.md "wikilink")[肽序列的文本](../Page/肽序列.md "wikilink")[格式](../Page/檔案格式.md "wikilink")，其中的核酸或[氨基酸均以单个字母编码呈现](../Page/氨基酸.md "wikilink")。该格式同时还允许在序列之前定义名称和编写注释。这一格式最初由软件包定义，但现今已是[生物信息学领域的一项标准](../Page/生物信息学.md "wikilink")。

FASTA简明的格式降低了序列操纵和分析的难度，令序列可被文本处理工具和诸如[Python](../Page/Python.md "wikilink")、[Ruby和](../Page/Ruby.md "wikilink")[Perl等](../Page/Perl.md "wikilink")[脚本语言处理](../Page/脚本语言.md "wikilink")。

## 格式

FASTA格式中的一条完整序列，包含开头的单行描述行和多行序列数据。描述行行首前置半角大于号（“\>”）以和数据行区分。“\>”后紧接的内容为该序列的标识符，该行剩余部分则为序列的描述（标识符与描述均非必须）。“\>”和标识符之间不应有空格，且建议将单行内容限制在80字符以内。序列的结束以下一条序列的“\>”出现为标识。如下为FASTA格式一条序列的示例：

``` console
>gi|31563518|ref|NP_852610.1| microtubule-associated proteins 1A/1B light chain 3A isoform b [Homo sapiens]
MKMRFFSSPCGKAAVDPADRCKEVQQIRDQHPSKIPVIIERYKGEKQLPVLDKTKFLVPDHVNMSELVKI
IRRRLQLNPTQAFFLLVNQHSMVSVSTPIADIYEQEKDEDGFLYMVYASQETFGFIRENE
```

上例中，“gi|31563518|ref|NP_852610.1|”是序列的名称。

## 历史

原版FASTA/Pearson格式定义出现在[FASTA程序包的文档中](../Page/FASTA.md "wikilink")。可随FASTA的任一免费版本下载（见fasta20.doc、fastaVN.doc或fastaVN.me，其中VN代表版本号）。

FASTA格式中的一条序列由多行文本组成，每一行的字符数均不能超过120字符，通常不推荐超过80字符。这一限制可能与软件为单行显示预分配固定大小内存有关：当时大部分的用户都使用DEC
VT（或其兼容）终端，而这一终端单行支持显示的字符数上限在80到132个之间。大部分人会将他们的终端配置为字号较大的80字符模式，因此在FASTA中每行只包含80字符或更少（通常为70字符）成为了推荐的做法。此外，标准打印页的一行宽度也在70到80字符之间（取决于字体）。

FASTA文件的首行以一个“\>”（大于号）或“;”（分号，较不常见）起始，后者是一条注释。然而，后续以分号起始的各行却会被软件忽略。由于软件只会识别第一条注释，早期会在首行注释中编写序列摘要（以唯一的图书馆登录号起始）；但随时间推移，现在的常见做法是只使用“\>”（包括首行），不再使用任何“;”注释（因软件会忽略后者）。

在首行（用于唯一描述序列）之后，是以单字母标准编码表达的实际序列数据。有效编码以外的任何字符（包括空格、制表符、星号等）都会被忽略。在结尾以“\*”（星号）以示序列结束亦是早期的一种常见做法（与PIR格式序列类似）；同样因为如上原因，描述和序列之间往往还会留有空行。

如下为一些序列文件的样例：

``` console
;LCBO - Prolactin precursor - Bovine
; a sample sequence in FASTA format
MDSKGSSQKGSRLLLLLVVSNLLLCQGVVSTPVCPNGPGNCQVSLRDLFDRAVMVSHYIHDLSS
EMFNEFDKRYAQGKGFITMALNSCHTSSLPTPEDKEQAQQTHHEVLMSLILGLLRSWNDPLYHL
VTEVRGMKGAPDAILSRAIEIEEENKRLLEGMEMIFGQVIPGAKETEPYPVWSGLPSLQTKDED
ARYSAFYNLLHCLRRDSSKIDTYLKLLNCRIIYNNNC*

>MCHU - Calmodulin - Human, rabbit, bovine, rat, and chicken
ADQLTEEQIAEFKEAFSLFDKDGDGTITTKELGTVMRSLGQNPTEAELQDMINEVDADGNGTID
FPEFLTMMARKMKDTDSEEEIREAFRVFDKDGNGYISAAELRHVMTNLGEKLTDEEVDEMIREA
DIDGDGQVNYEEFVQMMTAK*

>gi|5524211|gb|AAD44166.1| cytochrome b [Elephas maximus maximus]
LCLYTHIGRNIYYGSYLYSETWNTGIMLLLITMATAFMGYVLPWGQMSFWGATVITNLFSAIPYIGTNLV
EWIWGGFSVDKATLNRFFAFHFILPFTMVALAGVHLTFLHETGSNNPLGLTSDSDKIPFHPYYTIKDFLG
LLILILLLLLLALLSPDMLGDPDNHMPADPLNTPLHIKPEWYFLFAYAILRSVPNKLGGVLALFLSIVIL
GLMPFLHTSKHRSMMLRPLSQALFWTLTMDLLTLTWIGSQPVEYPYTIIGQMASILYFSIILAFLPIAGX
IENY
```

多序列FASTA文件可由单序列FASTA文件字符串连接而成。这并不与FASTA文件要求首行可以“;”或“\>”起始的格式相冲突，因为只要后续所有序列都以“\>”起始便可被软件视为不同序列（并推而广之要求序列定义行必须使用“\>”）。所以，如上的示例在连接后即为合法的多序列文件。

## 描述行

描述行（定义行）或标题行以“\>”开始，紧随着序列的名称和/或唯一标识符，除此还可包含其他信息。在过时的做法中，标题行有时可以有一条以上的标题，并以^A（Control-A）控制符分隔。

在原版的Pearson FASTA格式中，以分号起始的注释可在标题行之后出现。但一些遵守[NCBI
FASTA规范](http://www.ncbi.nlm.nih.gov/blast/fasta.shtml)的数据库和生物信息软件不会识别这些注释。如下为多序列FASTA文件的示例：

``` console
>SEQUENCE_1
MTEITAAMVKELRESTGAGMMDCKNALSETNGDFDKAVQLLREKGLGKAAKKADRLAAEG
LVSVKVSDDFTIAAMRPSYLSYEDLDMTFVENEYKALVAELEKENEERRRLKDPNKPEHK
IPQFASRKQLSDAILKEAEEKIKEELKAQGKPEKIWDNIIPGKMNSFIADNSQLDSKLTL
MGQFYVMDDKKTVEQVIAEKEKEFGGKIKIVEFICFEVGEGLEKKTEDFAAEVAAQL
>SEQUENCE_2
SATVSEINSETDFVAKNDQFIALTKDTTAHIQSNSLQSVEELHSSTINGVKFEEYLKSQI
ATIGENLVVRRFATLKAGANGVVNGYIHTNGRVGVVIAAACDSAEVASKSRDLLRQICMH
```

### 序列表达

在标题行和注释之后，是由一行或多行构成的序列数据，其中每行的长度应短于80字符。序列可以是或[核酸序列](../Page/核酸.md "wikilink")，其中可以包含空白占位或比对用字符（见[序列比对](../Page/序列比對.md "wikilink")）。序列应以标准的IUB/IUPAC[氨基酸和](../Page/氨基酸.md "wikilink")[核酸编码表达](../Page/核酸.md "wikilink")，除以下例外：允许小写字母，并会被转作大写字母；一个半角连字符可表示一个空白字符；且在氨基酸序列中，U和\*是合法字符（见下文）。标准中不允许数字，但部分数据库使用数字来表示序列的位置。

支持的核酸编码如下：\[1\]\[2\]

<table>
<thead>
<tr class="header">
<th><p>核酸编码</p></th>
<th><p>含义</p></th>
<th><p>辅助记忆</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>A</p></td>
<td><p>A</p></td>
<td><p><a href="../Page/腺嘌呤.md" title="wikilink">腺嘌呤</a>（）</p></td>
</tr>
<tr class="even">
<td><p>C</p></td>
<td><p>C</p></td>
<td><p><a href="../Page/胞嘧啶.md" title="wikilink">胞嘧啶</a>（）</p></td>
</tr>
<tr class="odd">
<td><p>G</p></td>
<td><p>G</p></td>
<td><p><a href="../Page/鸟嘌呤.md" title="wikilink">鸟嘌呤</a>（）</p></td>
</tr>
<tr class="even">
<td><p>T</p></td>
<td><p>T</p></td>
<td><p><a href="../Page/胸腺嘧啶.md" title="wikilink">胸腺嘧啶</a>（）</p></td>
</tr>
<tr class="odd">
<td><p>U</p></td>
<td><p>U</p></td>
<td><p><a href="../Page/尿嘧啶.md" title="wikilink">尿嘧啶</a>（）</p></td>
</tr>
<tr class="even">
<td><p>R</p></td>
<td><p>A、G</p></td>
<td><p><a href="../Page/嘌呤.md" title="wikilink">嘌呤</a>（）</p></td>
</tr>
<tr class="odd">
<td><p>Y</p></td>
<td><p>C、T、U</p></td>
<td><p><a href="../Page/嘧啶.md" title="wikilink">嘧啶</a>（）</p></td>
</tr>
<tr class="even">
<td><p>K</p></td>
<td><p>G、T、U</p></td>
<td><p><a href="../Page/酮.md" title="wikilink">酮基</a>（）</p></td>
</tr>
<tr class="odd">
<td><p>M</p></td>
<td><p>A、C</p></td>
<td><p><a href="../Page/氨基.md" title="wikilink">氨基</a>（）</p></td>
</tr>
<tr class="even">
<td><p>S</p></td>
<td><p>C、G</p></td>
<td><p>强（）结合力</p></td>
</tr>
<tr class="odd">
<td><p>W</p></td>
<td><p>A、T、U</p></td>
<td><p>弱（）结合力</p></td>
</tr>
<tr class="even">
<td><p>B</p></td>
<td><p>非A（如C、G、T、U）</p></td>
<td><p>后为</p></td>
</tr>
<tr class="odd">
<td><p>D</p></td>
<td><p>非C（如A、G、T、U）</p></td>
<td><p>后为</p></td>
</tr>
<tr class="even">
<td><p>H</p></td>
<td><p>非G（如A、C、T、U）</p></td>
<td><p>后为</p></td>
</tr>
<tr class="odd">
<td><p>V</p></td>
<td><p>非T非U（如A、C、G）</p></td>
<td><p>后为</p></td>
</tr>
<tr class="even">
<td><p>N</p></td>
<td><p>A C G T U</p></td>
<td><p>任意核酸（）</p></td>
</tr>
<tr class="odd">
<td><p>-</p></td>
<td><p>不定长度空白占位符</p></td>
<td></td>
</tr>
</tbody>
</table>

支持的蛋白质序列编码（25条氨基酸和3条特殊编码）如下：

| 氨基酸编码 | 含义                                                                            |
| ----- | ----------------------------------------------------------------------------- |
| A     | [丙氨酸](../Page/丙氨酸.md "wikilink")（）                                            |
| B     | [天冬氨酸](../Page/天冬氨酸.md "wikilink")（，D）或[天冬酰胺](../Page/天冬酰胺.md "wikilink")（，N） |
| C     | [半胱氨酸](../Page/半胱氨酸.md "wikilink")（）                                          |
| D     | [天冬氨酸](../Page/天冬氨酸.md "wikilink")（）                                          |
| E     | [谷氨酸](../Page/穀氨酸.md "wikilink")（）                                            |
| F     | [苯丙氨酸](../Page/苯丙氨酸.md "wikilink")（）                                          |
| G     | [甘氨酸](../Page/甘氨酸.md "wikilink")（）                                            |
| H     | [组氨酸](../Page/組氨酸.md "wikilink")（）                                            |
| I     | [异亮氨酸](../Page/異亮氨酸.md "wikilink")（）                                          |
| J     | [亮氨酸](../Page/亮氨酸.md "wikilink")（，L）或[异亮氨酸](../Page/異亮氨酸.md "wikilink")（，I）   |
| K     | [赖氨酸](../Page/離胺酸.md "wikilink")（）                                            |
| L     | [亮氨酸](../Page/亮氨酸.md "wikilink")（）                                            |
| M     | [甲硫氨酸](../Page/甲硫氨酸.md "wikilink")（）                                          |
| N     | [天冬酰胺](../Page/天冬酰胺.md "wikilink")（）                                          |
| O     | [吡咯赖氨酸](../Page/吡咯赖氨酸.md "wikilink")（）                                        |
| P     | [脯氨酸](../Page/脯氨酸.md "wikilink")（）                                            |
| Q     | [谷氨酰胺](../Page/穀氨醯胺.md "wikilink")（）                                          |
| R     | [精氨酸](../Page/精氨酸.md "wikilink")（）                                            |
| S     | [丝氨酸](../Page/絲氨酸.md "wikilink")（）                                            |
| T     | [苏氨酸](../Page/蘇氨酸.md "wikilink")（）                                            |
| U     | [硒半胱氨酸](../Page/硒半胱氨酸.md "wikilink")（）                                        |
| V     | [缬氨酸](../Page/缬氨酸.md "wikilink")（）                                            |
| W     | [色氨酸](../Page/色氨酸.md "wikilink")（）                                            |
| Y     | [酪氨酸](../Page/酪氨酸.md "wikilink")（）                                            |
| Z     | [谷氨酸](../Page/穀氨酸.md "wikilink")（，E）或[谷氨酰胺](../Page/穀氨醯胺.md "wikilink")（，Q）   |
| X     | 任意                                                                            |
| \*    | 翻译终止                                                                          |
| \-    | 不定长度空白占位符                                                                     |

## 序列标识符

[NCBI标准定义了标题行中序列唯一标识符](../Page/美国国家生物技术信息中心.md "wikilink")（SeqID）的格式。在的[手册页中有写到](../Page/手册页.md "wikilink")：“formatdb可以自动地解析SeqID并创建索引，但在FASTA定义行中的数据库标识符必须遵守FASTA定义行格式的惯例。”

下表为NCBI FASTA定义行的格式（另见["The NCBI Handbook", Chapter 16, The BLAST
Sequence Analysis Tool](http://www.ncbi.nlm.nih.gov/books/NBK21097/)）。

| 数据库                          | 格式                                          |
| ---------------------------- | ------------------------------------------- |
| GenBank                      | `gb\|`*`accession`*`\|`*`locus`*            |
| EMBL Data Library            | `emb\|`*`accession`*`\|`*`locus`*           |
| DDBJ, DNA Database of Japan  | `dbj\|`*`accession`*`\|`*`locus`*           |
| NBRF PIR                     | <code>pir                                   |
| Protein Research Foundation  | <code>prf                                   |
| SWISS-PROT                   | `sp\|`*`accession`*`\|`*`entry``   ``name`* |
| Brookhaven Protein Data Bank | `pdb\|`*`entry`*`\|`*`chain`*               |
| Patents                      | `pat\|country\|number`                      |
| GenInfo Backbone Id          | `bbs\|number`                               |
| General database identifier  | `gnl\|database\|identifier`                 |
| NCBI Reference Sequence      | `ref\|accession\|locus`                     |
| Local Sequence identifier    | `lcl\|identifier`                           |

上表中的管道符（“|”）并不是[巴科斯范式中的分隔符](../Page/巴科斯范式.md "wikilink")，而是格式本身的一部分。多个标识符可以连接，同样使用管道符分隔。

### 压缩

FASTA文件的压缩需要特制的压缩工具来处理文件里所包含的两部分信息：标识符与序列。为获取更好的压缩率，压缩工具会将之分为两条独立的压缩流处理。例如使用上下文模型和数学编码进行无损压缩的MFCompress算法\[3\]。

### 扩展名

包含FASTA格式序列的文本文件并无标准的[扩展名](../Page/文件扩展名.md "wikilink")。下表列出了各种扩展名及其含义。

| 扩展名          | 含义           | 备注                                                  |
| ------------ | ------------ | --------------------------------------------------- |
| fasta (.fas) | 普通FASTA      | 任意普通的FASTA文件。此类扩展名还有fa、seq、fsa。                     |
| fna          | 核酸FASTA      | 普遍用于表示核酸序列的FASTA文件。                                 |
| ffn          | 核酸编码区FASTA   | 包含基因组编码区的FASTA文件。                                   |
| faa          | 氨基酸FASTA     | 包含表示氨基酸序列的FASTA文件。含有多种蛋白质序列的FASTA文件还可使用更具体的mpfa扩展名。 |
| frn          | 非编码RNA FASTA | 包含以DNA字母编码表示的基因组非编码RNA区（如tRNA、rRNA）的FASTA文件。        |

## 参见

  - [FASTA搜索](../Page/FASTA.md "wikilink")

  - [FASTQ格式](../Page/FASTQ格式.md "wikilink")

  -
  - [分子生物学文件格式列表](../Page/文件格式列表.md "wikilink")

## 参考文献

<references />

## 外部链接

  - [What is FASTA
    Format?](http://zhanglab.ccmb.med.umich.edu/FASTA/) 什么是FASTA格式.
  - [HUPO-PSI Standard FASTA
    Format](https://web.archive.org/web/20170712112029/http://www.psidev.info/node/363) HUPO-PSI发表的另一种FASTA格式.
  - [Sequence ID (seqID) Fields in the FASTA Deflines of Sequences from
    NCBI](ftp://ftp.ncbi.nlm.nih.gov/blast/executables/LATEST/) FASTA定义行的格式.

[Category:生物信息學](https://zh.wikipedia.org/wiki/Category:生物信息學 "wikilink")

1.
2.
3.