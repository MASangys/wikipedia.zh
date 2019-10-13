**Perl**是[高階](https://zh.wikipedia.org/wiki/高级语言 "wikilink")、[通用](../Page/通用编程语言.md "wikilink")、[直譯式](https://zh.wikipedia.org/wiki/直譯語言 "wikilink")、[動態的](../Page/动态语言.md "wikilink")[程式语言家族](https://zh.wikipedia.org/wiki/程式语言 "wikilink")。最初设计者[拉里·沃尔](../Page/拉里·沃尔.md "wikilink")為了讓在[UNIX](../Page/UNIX.md "wikilink")上進行報表處理的工作變得更方便，決定開發一個通用的[腳本語言](https://zh.wikipedia.org/wiki/腳本語言 "wikilink")，而在1987年12月18日發表。目前，Perl语言家族包含两个分支Perl 5以及[Perl 6](../Page/Perl_6.md "wikilink")（开发中）。雖然Perl不是正式的首字母縮略詞\[1\]，但仍有各種各樣的[逆向首字母缩略词](../Page/逆向首字母缩略词.md "wikilink")，包括“實用的提取和報告語言”。\[2\]

Perl借用了[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[sed](https://zh.wikipedia.org/wiki/sed "wikilink")、[awk](../Page/AWK.md "wikilink")、[shell脚本以及很多其他程式語言的特性](../Page/Unix_shell.md "wikilink")。其中最重要的特性是Perl内部集成了[正则表达式](../Page/正则表达式.md "wikilink")的功能，以及巨大的第三方代码库[CPAN](https://zh.wikipedia.org/wiki/CPAN "wikilink")。

2000年开始，[拉里·沃尔](../Page/拉里·沃尔.md "wikilink")著手開發[Perl 6來作為Perl的後繼](../Page/Perl_6.md "wikilink")，Perl 6語言的語法有很多轉變，也被視為Perl家族中的另一個語言。\[3\]

Perl语言的应用范围很广，除CGI以外，Perl被用于图形编程、系统管理、网络编程、金融、生物以及其他领域。由于其灵活性，Perl被称为[脚本语言](../Page/脚本语言.md "wikilink")中的[瑞士军刀](https://zh.wikipedia.org/wiki/瑞士军刀 "wikilink")。\[4\]

## 历史

### 早期版本

[拉里·沃尔](../Page/拉里·沃尔.md "wikilink")在1987年开始写作Perl，那时他正在[Unisys当](https://zh.wikipedia.org/wiki/Unisys "wikilink")[程序员](../Page/程序员.md "wikilink")\[5\]，并且在1987年12月18日把1.0版本发布到了comp.sources.misc[新闻组](../Page/新闻组.md "wikilink")\[6\]。这个语言在接下来的几年内很快地发展起来。

Perl 2，于1988年发布，特色是有一个更好的[正则表达式](../Page/正则表达式.md "wikilink")引擎，Perl 3，于1989年发布，添加了对[二进制数据流的支持](https://zh.wikipedia.org/wiki/二进制数据 "wikilink")。

从前，Perl唯一的文档是一个逐渐变长的[手册页](../Page/手册页.md "wikilink")。在1991年，《[Programming Perl](https://zh.wikipedia.org/wiki/Programming_Perl "wikilink")》（被许多Perl程序员因封面称为“骆驼书”），出版了，而且变成了一个**真正的**Perl语言的参考资料。同时，Perl版本号变成了4，不是因为这个语言的重大改变，而是因为这本书的特殊意义。

### 早期的Perl 5

Perl 4的一系列维护的版本，最后一版是1993年的Perl 4.036。那时，沃尔废弃了Perl 4，开始开发Perl 5。Perl 5的最初始设计持续到了1994年。《*perl5-porters*》[邮件列表于](https://zh.wikipedia.org/wiki/邮件列表 "wikilink")1994年5月为了共同移植Perl 5而建立。这将主要的论坛留给了Perl 5的开发，维护，和移植\[7\]。

Perl 5.000于1994年10月17日发布\[8\]。这是一个几乎完全重写了的[解释器](https://zh.wikipedia.org/wiki/解释器 "wikilink")，而且它给这个语言添加了很多新的特性，包括对象，引用，[局部变量](https://zh.wikipedia.org/wiki/局部变量 "wikilink")，和[模块](https://zh.wikipedia.org/wiki/模块_\(程序设计\) "wikilink")。很重要地，模块提供了一个不用修改直译器就可以扩展语言的方法。这使得核心的直译器非常稳定，即使它允许一般的Perl程序员添加新的语言特性。从此，Perl 5的开发就活跃起来了。

Perl 5.001于1995年3月13日发布。Perl 5.002于1996年2月29日发布，带有参数类型的特性。这允许模块的作者写出像Perl内部命令那样智能的子程序。Perl 5.003于1996年6月25日作为一个安全更新的版本发布。

Perl 5历史中最重要的事件之一是支持了[模块](https://zh.wikipedia.org/wiki/模組_\(程式設計\) "wikilink")。在1995年10月26日，[CPAN](https://zh.wikipedia.org/wiki/CPAN "wikilink")，一个发布Perl模块的网站，建立了；截至2015年11月，它已经有超过12457个作者写的157794多个模块了\[9\]。

Perl 5.004于1997年5月15日发布，添加了UNIVERSAL包，这给了Perl一个所有的类的基础和要求使用模块的特定版本的能力。另一个重要的开发是包括了[CGI.pm模块](https://zh.wikipedia.org/wiki/CGI.pm "wikilink")\[10\]，有助于Perl发展为一个CGI脚本语言\[11\]。

Perl现在也支持在[Microsoft Windows和其它一些](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[操作系统](../Page/操作系统.md "wikilink")下运作\[12\]。

Perl 5.005于1998年7月22日发布。这个版本包括了一个更好的[正则引擎](../Page/正则表达式.md "wikilink")，一个编译系统（通过`B::*`模块），`qr//`正则引用操作符，一个基础模块的选集，并且又支持了一些其它的操作系统，包括[BeOS](../Page/BeOS.md "wikilink")\[13\]。

### 2000年至今

<table>
<thead>
<tr class="header">
<th><p>主要版本</p></th>
<th><p>最后更新</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>[14]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[15]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[16]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[17]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[18]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[19]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[20]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[21]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[22]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[23]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[24]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[25]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[26]</p></td>
</tr>
<tr class="even">
<td><p><small></small></p></td>
<td></td>
</tr>
</tbody>
</table>

Perl 5.6于2000年3月22日发布。大的修改包括64位支持，[Unicode字串支持](https://zh.wikipedia.org/wiki/Unicode "wikilink")，大文件支持（即：超过2[GiB的文件](https://zh.wikipedia.org/wiki/GiB "wikilink")）以及“our”关键字\[27\]\[28\]。在开发Perl 5.6的时候，开发组决定把版本名称作成类似其它开源项目的；在5.005_63版之后，下一个版本变成了5.5.640，计划是开发版本用奇数，稳定版本用偶数。

2000年时，拉里·沃尔询问社区对Perl新版本的建议。这个进程的结果在361 RFC（评论请求）文件里（这个文件可以指导Perl 6的开发）。2001年\[29\]，工作开始于设计[Perl 6](../Page/Perl_6.md "wikilink")，一系列的文件概述了新一代Perl里的改变和设计。它们是作为一期RFC被展示的，而不是一个正式文档。这时，Perl 6的存在还只是一门语言的概述。

Perl 5.8最初于2002年7月18日发布，从此，每年才有一次更新。Perl 5.8的最后一版是5.8.9，发布于2008年12月14日。Perl 5.8改进了Unicode支持，添加了一个新的IO处理机制和新的多线程处理，提高了数字精度，添加了一些新模块\[30\]。

2004年，工作开始于提要——原来的建议文件，但后来变成了Perl 6语言的详述。[2005年2月](../Page/2005年2月.md "wikilink")，[唐凤](https://zh.wikipedia.org/wiki/唐凤 "wikilink")，开始开发[Pugs](https://zh.wikipedia.org/wiki/Pugs "wikilink")，一个用[Haskell](../Page/Haskell.md "wikilink")写的Perl 6直译器\[31\]。这是最初的一个Perl 6实现。这个努力停止于2006年\[32\]。

2007年12月18日，Perl 1.0的20周年纪念日，Perl 5.10.0发布了。Perl 5.10.0包括了显著的新特性，这拉近了Perl 5和[6之间的距离](../Page/Perl_6.md "wikilink")。这些特性包括一个（叫做“given/when”），正则表达式的更新和智能匹配操作符“\~\~”\[33\]\[34\]。同时，另一个Perl 6的实现，[Rakudo Perl的开发开始了](https://zh.wikipedia.org/wiki/Rakudo_Perl "wikilink")，一起使用[Parrot虚拟机](../Page/Parrot虚拟机.md "wikilink")开发。从[2009年11月](../Page/2009年11月.md "wikilink")开始，Rakudo Perl已经是每月一更新，现在已经是Perl 6的最完整的一个实现了。

Perl 5开发过程中的一次大修改在Perl 5.11；开发社区使用了每月更新的形式，这样就可以提前预知3个月以内的发布日期。

2010年4月12日，Perl 5.12.0发布了。显著的提升包括新的`package NAME VERSION`语法，Yada Yada操作符（有意地用占位符标记没有实现的代码），默认`use strict;`（在`use 5.012;`时）完整的[Y2038编译](https://zh.wikipedia.org/wiki/Y2038 "wikilink")，正则转化重载，[DTrace支持](https://zh.wikipedia.org/wiki/DTrace "wikilink")，和[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")5.2\[35\]。Perl 5.12.3于2011年1月21日发布；它包括了新版的模块和一些文档的改变\[36\]。版本5.12.4于2011年6月20日发布。

Perl 5.14发布于2011年5月14日。这个分支的最后一版，5.14.2，发布于2011年9月26日。

Perl 5.16发布于2012年5月20日。显著的新特性包括可以指定一个perl的版本来模拟，这允许用户更新perl的版本，但可以运行可能会不兼容的老脚本\[37\]。Perl 5.16也更新了核心部分来支持[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink") 6.1\[38\]。

### 名称

Perl原名叫“Pearl”。拉里·沃尔想给这个语言起一个有正面意思的短的名字；他考虑了（并且否定了）字典里每一个3—4个字母的词。他也考虑用他的妻子Gloria的名字命名。沃尔在Perl官方发布之前发现了现有的[PEARL](../Page/PEARL.md "wikilink")语言，并且改变了这个名字\[39\]。

当指代这个语言的时候，名字通常是大写的（**Perl**），就像专有名词一样。当指代这个直译器本身的时候，这个名字通常是小写的（**perl**），因为大部分类Unix文件系统都是区分大小写的。在《》的第一版发布之前，用**perl**指代这个语言也很普遍；排版时将这个语言的名字在书中写成大写的以便理解。后来，这个大小写的区别就成为正规的了\[40\]。

全大写的“PERL”是有争议的，而文档中说明“PERL”是不对的\[41\]，一些核心的社区成员将其视为外行的标志\[42\]。这个名字偶尔会被视为“Practical Extraction and Report Language”的缩写，就像文档\[43\]顶端和一些纸质书本说的那样\[44\]。一些全称被建议作为正式名称，包括沃尔自己的幽默的“Pathologically Eclectic Rubbish Lister”\[45\]。的确，沃尔要求这个名字启示许多不同的扩展\[46\]。

### 骆驼标志

[Perl-camel-small.png](https://zh.wikipedia.org/wiki/File:Perl-camel-small.png "fig:Perl-camel-small.png")

《*Programming Perl*》，由[奥莱理媒体发布](https://zh.wikipedia.org/wiki/奥莱理 "wikilink")，特色是封面有一张[骆驼](../Page/骆驼.md "wikilink")的图片，因而被称作“骆驼书”\[47\]。这张骆驼的图片已经成为了Perl非官方的标志和一个[黑客](../Page/黑客.md "wikilink")的标志，这出现在T恤衫和其它衣服上。

歐萊禮擁有此圖像之商標，並且宣稱，唯有在捍衛「符號之完整性」時，才會行使其法律上的權力\[48\]。歐萊禮允許此商標在非商業目的之前提下被使用，並同時供了Programming Republic of Perl的圖像以及Powered by Perl的按鈕圖。\[49\]Perl的另一個識別符號是[羊驼](../Page/羊驼.md "wikilink")。因为《[Intermediate Perl](https://zh.wikipedia.org/wiki/Intermediate_Perl "wikilink")》一书的封面是一只羊驼\[50\]。

#### 洋葱标志

[Onion_64x64.png](https://zh.wikipedia.org/wiki/File:Onion_64x64.png "fig:Onion_64x64.png")

Perl基金会拥有一个可选的标志，一个洋葱，允许它的子站点，[Perl Mongers](https://zh.wikipedia.org/wiki/Perl_Mongers "wikilink")，[PerlMonks](../Page/PerlMonks.md "wikilink")，Perl.org和其它网站使用\[51\]。

## Perl简介

### Perl语言的中心思想

Perl语言的中心思想可以集成为一句话「**[TMTOWTDI](https://zh.wikipedia.org/wiki/TMTOWTDI "wikilink")**」：  Perl的作者拉里·沃尔建议可以把这个缩写词念成「Tim Toady」。这句话后来被扩充成:

另一个Perl程序员常常想起的Perl俗语是：

### 优点

为了实现这样的目标，并且又因为Larry Wall本人也是一个语言学家，他设计Perl语言时使用了很多语言学的思维。相比[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[Pascal这样的](../Page/Pascal_\(程式語言\).md "wikilink")“高级”语言而言，Perl语言直接提供泛型變數、动态数组、Hash表等更加便捷的编程元素。Perl具有[动态语言](../Page/动态语言.md "wikilink")的强大灵活的特性，并且还从C/C++、Basic、Pascal等语言中分别借鉴了语法规则，从而提供了许多冗餘语法。使得程序员可以忽略计算机内部資料存储、类型、处理方法、运算规则、甚至内存越界等等的细节，而将思考中心放在所需要的程序逻辑上。就这一点而言，很多Perl程序员认为目前-{只}-有Perl、[Python](../Page/Python.md "wikilink")等[泛型](../Page/泛型.md "wikilink")语言才能称为“高级”语言，而[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[Pascal甚至](../Page/Pascal_\(程式語言\).md "wikilink")[C++](../Page/C++.md "wikilink")这些-{只}-能称为“中高级”语言而已。可以说，在统一變數类型和掩盖运算细节方面，Perl做得比[Python](../Page/Python.md "wikilink")更为出色。

由于从其他语言大量借鉴了语法，使得从其他[编程语言](../Page/编程语言.md "wikilink")转到Perl语言的程序员可以迅速上手写程序并完成任务，这使得Perl语言是一门容易用的语言。

### 缺点

也正是因为Perl的灵活性和“过度”的冗余语法，也因此获得了仅写（write-only）的“美誉”，因为Perl-{zh-hans:程序;zh-tw:程式;}-可以写得很随意（例如，-{zh-hans:变量;zh-tw:變數;}-不经-{zh-hans:声明;zh-tw:宣告;}-就可以直接使用），但是可能少写一些字母就会得到意想不到的结果（而不报错），许多Perl-{zh-hans:程序;zh-tw:程式;}-的-{zh-hans:代码;zh-tw:程式碼;}-令人难以阅读，实现相同功能的程序代码长度可以相差十倍百倍，这就令-{zh-hans:程序;zh-tw:程式;}-的维护者（甚至是编写者）难以维护。

同样的，因为Perl这样随意的特点，可能会导致一些Perl程序员遗忘语法，以至于不得不经常查看Perl手册。对此，《Learning Perl》一书里建议经常使用Perl编程。

建议的解决方法是在程序裡使用`use strict;`以及`use warnings;`，并统一代码风格，使用库，而不是自己使用「[硬编码](https://zh.wikipedia.org/wiki/硬编码 "wikilink")」。Perl同样可以将代码书写得像[Python](../Page/Python.md "wikilink")或[Ruby](../Page/Ruby.md "wikilink")等语言一样优雅。

## Perl的语法

### Perl的Hello World程式

下面是一个在標準輸出設備上輸出[Hello World的簡單程式](https://zh.wikipedia.org/wiki/Hello_World程序 "wikilink")，這種程式通常作為開始學習程式語言的第一個範例：

``` perl
#!/usr/bin/env perl
print "Hello, world!\n";
```

如果有perl 5.10以上的版本，也可以这样：

``` perl
#!/usr/bin/env perl
use 5.010;
say "Hello, world!";
```

这个程序将输出一行字符串：“Hello, world\!”，以及一个换行。

### 变量

Perl是一种[无类型语言](../Page/類型系統.md "wikilink")（untyped），换句话说，在语言层面上，Perl和大多数编程语言不同，不把[变量分成](https://zh.wikipedia.org/wiki/变量 "wikilink")[整数](../Page/整数.md "wikilink")、[字符](../Page/字符.md "wikilink")、[浮点数](../Page/浮点数.md "wikilink")等等，而-{只}-有一种能接受各种类型数据的“无类型”变量。Perl的变量以$字符开头。例如`$a=5;``$b="Hello"`;`$c=3.2;$d='\n这里并不换行'`都是合法的Perl语句。

Perl中各种变量的运算也很自由，数和含有数的字符串是等效的，可以把数字字符串参与数学计算，也可以反之，让数字参与字符串的构成和操作。

除单个变量（Perl称为标量「**Scalar**」）之外，Perl还有两种集合类型，分别是数组（**Array**，用@字符开头）和关联数组（**Associative array**，或者称为**Hash**，用%开头。类似[C++11](../Page/C++11.md "wikilink")的[STL](https://zh.wikipedia.org/wiki/標準模板庫 "wikilink") 无序表「**unordered_map**」和[Python](../Page/Python.md "wikilink")的字典「**Dictionary**」）。数组可以内含任意可变数目的变量，并以其存储顺序作为索引以完成常数时间的定位；而Hash表，则可以在变量之间建立一一映射，就像字典一样，把不同的变量按照他们的逻辑关系组织起来，并以作为“键”的变量进行索引，完成常数时间的定位。

另外，Perl还有一种特殊的类型，引用（reference），类似于指针，当作标量处理，可以指向标量（含引用）、数组、Hash等任何类型。如：

``` perl
$foo = \$bar; print $$foo;
$foo = \@bar; print @$foo;
$foo = \%bar; print %$foo;
$foo = \&bar; print $foo->(); print &$foo;
```

引用的好处在于，将它传递给函数之后，函数可以修改它指向的变量。而如果传递普通变量，修改的值只在函数内有效。

``` perl
sub foo
{
    my $var = shift;
    $$var = '1';
}
my $foo = '2';
my $var = \$foo;
print $$var;
foo ($var);
print $foo;
```

输出“21”，即foo()内改变了$foo。

### 判断语句

因为Perl大量的创造冗余的语法，并且从其他语言中大量的借鉴语法，使得Perl的语法极其丰富和灵活。Perl共有下列几种判断语句：

  - `if`区块

<!-- end list -->

``` perl
if ($hour > 22) {
    print "should sleep...\n";
}
```

  - `if`语句

<!-- end list -->

``` perl
print "hello" if $guest >= 1;
```

  - `unless`区块

<!-- end list -->

``` perl
unless ($credit > 100) {
    print "You can not graduate!\n";
}
```

  - `unless`语句

<!-- end list -->

``` perl
print "eat\n" unless $food == 0;
```

  - `given/when`(语句及区块)

<!-- end list -->

``` perl
use 5.010;
given ($foo)
{
    say 'a' when 'a';
    when (/b/) { say 'b'; } #when可以写成语句或区块
    default { say 'not match'; } #只可以写成区块。
}
```

由于[逻辑](../Page/逻辑.md "wikilink")運算元的作用，还可以写出不用[关键字](https://zh.wikipedia.org/wiki/关键字 "wikilink")`if`或`unless`的判断语句，如常用的打开文件语句：

``` perl
open DATA, '<', $filename or die "Can't open $filename: $!\n";
```

### 循环语句

Perl中的循环语句也是非常的丰富。主要有：

Perl自己的for或者foreach循环(两个完全一样)：

``` perl
@group = 1 .. 10;
for (@group) {
    print "$_\n";
}
print "$_\n" for @group;
foreach (@group) {
    print "$_\n";
}
```

从C语言借鉴来的for循环(又可写作foreach，两个完全一样)：

``` perl
for ($i = 0; $i < 10; $i++) {
    print "$group[$i]\n";
}
```

while循环：

``` perl
$i=0;
while ($i < 10) {
    print "$group[$i]\n";
    $i++;
}
```

do...while循环：

``` perl
$i = 0;
do {
    print "$group[$i]\n";
    $i++;
} while ($i < 10);
```

until循环：

``` perl
$i = 0;
until ($i == 10) {
    print "$group[$i]\n";
    $i++;
}
```

从PASCAL语言借鉴来的do...until循环：

``` perl
$i = 0;
do {
    print "$group[$i]\n";
    $i++;
} until ($i == 10);
```

甚至还有利用动态语言特性，用map函数也可以做循环：

``` perl
map { print "$_\n" } @group;
```

其实还有其他的循环方式。总而言之，就是[TMTOWTDI](https://zh.wikipedia.org/wiki/There's_more_than_one_way_to_do_it "wikilink")。

## Perl的应用

Perl主要应用在[Unix平台和网页中](https://zh.wikipedia.org/wiki/Unix "wikilink")（[PHP](../Page/PHP.md "wikilink")，[CGI](../Page/通用网关接口.md "wikilink")）。Perl拥有海量的[模块支持](https://zh.wikipedia.org/wiki/模块_\(程序设计\) "wikilink")，在解决问题时非常方便。[CPAN有很多Perl模块](https://zh.wikipedia.org/wiki/CPAN "wikilink")。

### 以Perl编写的软件

  - [Bugzilla](../Page/Bugzilla.md "wikilink")

  - [Movable Type](../Page/Movable_Type.md "wikilink")

  -
  - [Frozen Bubble](../Page/Frozen_Bubble.md "wikilink")

### Perl Data Language

Perl Data Language（简称PDL）是Perl的一个外接[模块](https://zh.wikipedia.org/wiki/模块_\(程序设计\) "wikilink")，也是对Perl功能的一个重要拓展。它使得Perl语言可以直接对2至多维的[矩阵](../Page/矩阵.md "wikilink")直接操作，进行快速的矩阵运算，完成基础的Perl所不能完成的运算，大大拓展了Perl的适用范围。所以PDL本身也是很多其他模块的基础。

而且PDL提供了与很多其他软件包的接口，例如**[FFTW](https://zh.wikipedia.org/wiki/FFTW "wikilink")**（一个[快速傅立叶变换的软件包](https://zh.wikipedia.org/wiki/快速傅立叶变换 "wikilink")），又或者是[Mesa](../Page/Mesa_3D.md "wikilink")（[Linux](../Page/Linux.md "wikilink")上的[OpenGL](../Page/OpenGL.md "wikilink")三维图形渲染包），这些包原来往往仅提供C/C++语言接口。这一功能使PDL成为拓展Perl功能的一个中间层。

## Perl的社区文化

### Perl诗经

和C語言一樣，在Perl界，難以讀懂的程式碼大賽是個有名的活動。近似難以讀懂的程式碼，但方向不同，Perl Poetry是可以被perl編譯的詩。新的詩經通常會在[Perl Monks](http://www.perlmonks.org/index.pl?node=Perl%20Poetry)網站發表。\[52\]

### JAPH

[Just another Perl hacker](../Page/JAPH.md "wikilink")（另一个Perl黑客）是一个和[国际C语言混乱代码大赛](../Page/国际C语言混乱代码大赛.md "wikilink")有着相同精神的社区文化。Perl[程序员](../Page/程序员.md "wikilink")通过写[JAPH](../Page/JAPH.md "wikilink")代码，来分享自己的编程技术。\[53\]

## 競爭對手

因為許多Perl程序的代碼難以閱讀，加上它的[面向对象功能被視為不是真正的面向对象](../Page/面向对象程序设计.md "wikilink")(只是模組的模擬)，於是很多人拿Perl和其他動態語言來比較。

最常見的比較對象是[Python](../Page/Python.md "wikilink")，有人寫了篇文章叫[What's wrong with Perl](http://www.garshol.priv.no/download/text/perl.html)，指出Perl的缺點，鼓勵別人學Python。著名[黑客](../Page/黑客.md "wikilink")[埃里克·斯蒂芬·雷蒙寫](https://zh.wikipedia.org/wiki/埃里克·斯蒂芬·雷蒙 "wikilink")[Why Python?](http://www.linuxjournal.com/article.php?sid=3882)，該文中一個重要的比較對象就是Perl。[A Byte Of Python](http://www.swaroopch.com/notes/python/)里的[Why Not Perl?](http://www.ibiblio.org/swaroopch/byteofpython/read/why-not-perl.html) 也把Python和Perl比较。

[Ruby](../Page/Ruby.md "wikilink")的作者（[松本行弘](../Page/松本行弘.md "wikilink")，Matz）甚至直認他想Ruby作為Perl的後繼者。\[54\]

## Perl 6

[Camelia.svg](https://zh.wikipedia.org/wiki/File:Camelia.svg "fig:Camelia.svg")

[Perl 6正在开发中](../Page/Perl_6.md "wikilink")，它将会与现在的Perl 5版本有很大不同。在Perl的官网介绍中，Perl 6不是Perl 5的下一个版本，而是与Perl 5平行的另一种[编程语言](../Page/编程语言.md "wikilink")。\[55\] 其中最主要的改變是，Perl 6會是完全物件導向的，有專用於宣告類別的語法：

``` perl
class Foo is Universal { # inherit form Universal
    has $member_variable

    method member_function {
        print "some string";
    }
}
```

而且可以給變量定義類型，當類型不匹配時，就會報錯\[56\]。

另外，Perl 6提供了不同的正則語法，新的語法稱作「規則」，并且允許使用者在正則中加入空格等以便閱讀，也可以命名一個正則方便調用\[57\]。

Perl 6中的控制流程和循環的判斷條件的括號是可選的，如:

``` perl
if $percent > 100  {
    say "weird mathematics";
}
for 1..3 {
    # using $_ as loop variable
    say 2 * $_;
}
for 1..3 -> $x {
    # with explicit loop variable
    say 2 * $x;
}
while $stuff.is_wrong {
    $stuff.try_to_make_right;
}
```

但是如果加入括號，不能緊跟在關鍵字後邊，而要空一格，因為像foo()這樣的形式，會調用函數，而不管它是不是關鍵字\[58\]：

``` perl
if ($hour > 22) { #正確
    say 'should sleep...';
}
if($hour > 22) { #錯誤
    say 'should sleep...';
}
```

## 参考文献

## 參見

  - [CPAN](https://zh.wikipedia.org/wiki/CPAN "wikilink")
  - [Perl 6](../Page/Perl_6.md "wikilink")
  - [Parrot虚拟机](../Page/Parrot虚拟机.md "wikilink")

## 外部链接

  - [Perl.com](http://www.perl.com)（O'REILLY）
  - [Perl.org](http://www.perl.org)
  - [Perl 6的開發網頁](http://dev.perl.org/perl6/)
  - [CPAN - Comprehensive Perl Archive Network](http://www.cpan.org)：Perl程式的集中地
  - [CPAN检索](http://search.cpan.org)
  - [dmoz on Perl](https://web.archive.org/web/20040815062127/http://dmoz.org/Computers/Programming/Languages/Perl/)
  - [Perl Mongers](http://www.pm.org)：全球各地的使用者組織
  - [Perl Monks](http://www.perlmonks.org)：一个很活跃的Perl社区
  - [ActiveState](http://activestate.com/)：[Microsoft Windows上的Perl](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")
  - [Strawberry Perl](http://strawberryperl.com/)：由Perl社群所提供之[Microsoft Windows版Perl](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")
  - [Perl6::Perl5::Differences](https://web.archive.org/web/20070707003455/http://perlcabal.org/syn/Differences.html)

### 中文資源、社群

  - [Perl@Taiwan](https://web.archive.org/web/20110210165809/http://perl.org.tw/)
  - [Perl TW Planet](https://web.archive.org/web/20110824135548/http://planet.perl.tw/)
  - [Perl學習手札](https://web.archive.org/web/20130520084210/http://perl.hcchien.org/toc.html)
  - [香港Perl推廣组](http://sites.google.com/site/pmhk2nd/)
  - [中国Perl协会](http://www.PerlChina.org)
  - [中国Perl协会的wiki](https://archive.is/20130503092526/http://wiki.perlchina.org/)

### 英文資源、社群

  - [GB18030源码过滤软件](http://search.cpan.org/dist/Char-GB18030/)
  - [GBK源码过滤软件](http://search.cpan.org/dist/Char-GBK/)
  - [Big5Plus源碼過濾軟件](http://search.cpan.org/dist/Char-Big5Plus/)
  - [EUC-TW源碼過濾軟件](http://search.cpan.org/dist/Char-EUCTW/)
  - [Big5-HKSCS源碼過濾軟件](http://search.cpan.org/dist/Char-Big5HKSCS/)

[Category:Perl](https://zh.wikipedia.org/wiki/Category:Perl "wikilink") [Category:LAMP](https://zh.wikipedia.org/wiki/Category:LAMP "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.

9.

10.

11.

12.

13.

14.

15.
16.
17.
18.
19.
20.
21.
22.
23.
24.
25.
26.
27.

28.

29.

30.

31.

32.

33.

34.

35.

36.

37.

38.
39.

40.

41.
42.

43.
44. Steve McConnell (2004) *Code Complete,* 2nd ed., Microsoft Press, p. 65.

45.

46.

47.

48.

49. [Index of /images/perl](http://www.oreillynet.com/images/perl/)

50.

51.

52.

53.

54. 「我認為Ruby這個名字作為Perl之後的一門語言的名字真是再恰當不過了。」--摘錄自[O'Reilly訪問Matz。](http://blog.csdn.net/eiffelqiu/archive/2004/02/04/19869.aspx)

55.

56.

57.

58.