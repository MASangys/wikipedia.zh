**Pascal**是一个有影响的[面向对象和](https://zh.wikipedia.org/wiki/命令式编程 "wikilink")[面向过程](https://zh.wikipedia.org/wiki/过程化编程 "wikilink")[编程语言](../Page/编程语言.md "wikilink")，由[尼克劳斯·维尔特在](../Page/尼克劳斯·维尔特.md "wikilink")1968年9月设计，在1970年发行，作为一个小型的和高效的语言，意图鼓励使用[结构化编程和](../Page/结构化编程.md "wikilink")[数据结构进行良好的编程实践](../Page/数据结构.md "wikilink")。

称作[Object
Pascal的一个衍生是为](../Page/Object_Pascal.md "wikilink")[面向对象编程设计的](https://zh.wikipedia.org/wiki/面向对象编程 "wikilink")。

## 历史

Pascal基于[ALGOL编程语言](../Page/ALGOL.md "wikilink")，为纪念[法国数学家和哲学家](https://zh.wikipedia.org/wiki/法国 "wikilink")[布莱兹·帕斯卡而命名](../Page/布莱兹·帕斯卡.md "wikilink")。维尔特后来开发了类似Pascal的[Modula-2和](../Page/Modula-2.md "wikilink")[Oberon](https://zh.wikipedia.org/wiki/Oberon_\(programming_language\) "wikilink")。在开发Pascal之前，维尔特开发了语言[Euler](https://zh.wikipedia.org/wiki/Euler_\(programming_language\) "wikilink")，然后开发了[Algol-W](https://zh.wikipedia.org/wiki/ALGOL_W "wikilink")。

最初，Pascal在很大程度上但不是完全地为了教授学生结构化编程。很多代学生已使用Pascal作为本科课程的入门语言。Pascal的变种也逐渐地用于从研究项目到[PC游戏和](https://zh.wikipedia.org/wiki/PC游戏 "wikilink")[嵌入式系统的所有领域](../Page/嵌入式系统.md "wikilink")。更新的Pascal编译器存在于广泛使用它的领域。

[GCC](../Page/GCC.md "wikilink")，Gnu
C编译器，最初是用Pascal的一种方言Pastel编写的（見[GCC\#概觀](https://zh.wikipedia.org/wiki/GCC#概觀 "wikilink")）。Pascal是[Apple
Lisa和早期Mac开发使用的高级语言](../Page/Apple_Lisa.md "wikilink")；最初[Macintosh操作系统的部分是从Pascal源代码手工翻译成](https://zh.wikipedia.org/wiki/Apple_Macintosh "wikilink")[Motorola
68000](https://zh.wikipedia.org/wiki/Motorola_68000 "wikilink")[汇编语言的](../Page/汇编语言.md "wikilink")。流行的[排版系统](../Page/排版.md "wikilink")[TeX是由](../Page/TeX.md "wikilink")[高德纳使用基于](../Page/高德纳.md "wikilink")[DEC](../Page/迪吉多.md "wikilink")
[PDP-10](https://zh.wikipedia.org/wiki/PDP-10 "wikilink")
Pascal的最初[文学编程系统](../Page/文学编程.md "wikilink")[WEB编写的](https://zh.wikipedia.org/wiki/WEB "wikilink")，而像[Total
Commander的应用是使用Delphi](../Page/Total_Commander.md "wikilink")（即[Object
Pascal](../Page/Object_Pascal.md "wikilink")）编写的。

Object Pascal仍然广泛用于开发像[Skype这样的Windows应用](../Page/Skype.md "wikilink")。
\[1\]

## 简要描述

维尔特的意图是，基于[结构化编程](../Page/结构化编程.md "wikilink")，创建一个高效（无论是编译速度还是生成代码）的运行速度。Pascal植根于[Algol
60语言](../Page/ALGOL.md "wikilink")，但是也引进了一些概念和机制，使程序员（在Algol的标量和数组之上）能定义他们自己的复杂（结构化）数据类型，也使建立诸如*lists*、*trees*和*graphs*这样的动态和递归数据结构更容易。这些重要的特性包括*记录*、*枚举*、*子范围*、使用关联*指针*去*动态*分配变量和*集合*。为了使这些有可能和有意义，Pascal在所有对象上有一个强类型，意味着如果不使用*显式*转换，一种数据类型不能转换或解释成另外一种。类似的机制是今天许多编程语言的标准。影响Pascal开发的其它语言是[COBOL](../Page/COBOL.md "wikilink")、[Simula
67和维尔特自己的](https://zh.wikipedia.org/wiki/Simula_67 "wikilink")[Algol-W](https://zh.wikipedia.org/wiki/ALGOL_W "wikilink")。

Pascal，像今天的许多编程语言一样（但是不像C家族的绝大多数语言），允许任意层次的嵌套过程定义，也允许过程和函数内部的绝大多数种类的定义和声明。这使得一个非常简单和一致的语法，能让一个完整的**program**与一个单独的**procedure**或**function**语法上近似相同（当然除了关键字本身外）。

## 实现

第一个Pascal[编译器是在](https://zh.wikipedia.org/wiki/编译器 "wikilink")[Zurich为](https://zh.wikipedia.org/wiki/Zurich "wikilink")[CDC
6000系列](https://zh.wikipedia.org/wiki/CDC_6000系列 "wikilink")[大型计算机家族设计的](../Page/大型计算机.md "wikilink")。维尔特报道，在1969年第一次使用[Fortran实现的尝试没有成功](../Page/Fortran.md "wikilink")，由于Fortran不足以表达复杂的数据结构。第二次尝试以Pascal语言本身来制定，并在1970年代中期实施。由于许多Pascal编译器已类似地[自托管](https://zh.wikipedia.org/wiki/self-hosting "wikilink")，即编译器本身是以Pascal编写的，因此在新特性加入语言或编译器[移植到一个新环境时编译器通常能重编译其本身](https://zh.wikipedia.org/wiki/porting "wikilink")。用C编写的[GNU
Pascal编译器是一个显著的例外](https://zh.wikipedia.org/wiki/GNU_Pascal "wikilink")。

1972年，Welsh和Quinn在[贝尔法斯特女王大学](../Page/贝尔法斯特女王大学.md "wikilink")，第一次将CDC
Pascal编译器成功地移植到另外一个主机。目标主机是[ICL](https://zh.wikipedia.org/wiki/International_Computers_Limited "wikilink")[1900系列](https://zh.wikipedia.org/wiki/ICT_1900 "wikilink")。这个编译器反过来说是[ICS](https://zh.wikipedia.org/wiki/Information_Computer_Systems "wikilink")
[Multum微计算机Pascal编译器的父母](https://zh.wikipedia.org/wiki/Multum "wikilink")。以一个使用Pascal作为系统编程语言的视角，[Glasgow
University计算机科学系的Findlay](https://zh.wikipedia.org/wiki/Glasgow_University "wikilink")，Cupples，Cavouras和Davis开发了Multum接口。完成于1973年夏季的Multum
Pascal被认为是第一个16位实现。

一个全新的编译器由QUB的Welsh et al.在1977年完成。它提供了一个由Glasgow
University的Findlay和Watt实现的源语言诊断特性（结合分析，跟踪和类型识别格式化事后转储）。该实现在1980年由[南安普敦大学和Glasgow](../Page/南安普敦大学.md "wikilink")
University的一个小组移植到[ICL](https://zh.wikipedia.org/wiki/International_Computers_Limited "wikilink")
[2900系列](https://zh.wikipedia.org/wiki/ICL_2900 "wikilink")。[标准Pascal模式实现也基于该编译器](https://zh.wikipedia.org/wiki/Standard_Pascal_Model_Implementation "wikilink")，[曼彻斯特大学的Welsh和Hay在](../Page/曼彻斯特大学.md "wikilink")1984年已将其改编，以严格检查与[BSI
6192](https://zh.wikipedia.org/wiki/BSI_6192 "wikilink")/[ISO
7185标准的一致性](https://zh.wikipedia.org/wiki/ISO_7185 "wikilink")，以及为可移植抽象机生成代码。

在北美洲为[PDP-11编写的第一个Pascal](../Page/PDP-11.md "wikilink")[编译器在](https://zh.wikipedia.org/wiki/编译器 "wikilink")[Donald
B.
Gillies的](https://zh.wikipedia.org/wiki/Donald_B._Gillies#Later_Career "wikilink")[伊利诺伊大学厄巴纳-香槟分校构造](../Page/伊利诺伊大学厄巴纳-香槟分校.md "wikilink")，并生成了本地机器代码。Pascal在整个1970年代和1980年代大受欢迎。

为了迅速地传播该语言，一个编译器“移植工具包”在Zurich产生，包括一个为“虚拟”堆栈机（即引导本身合理有效解释的代码）生成代码的编译器，一个解释这些代码的解释器——*Pascal-P*系统。虽然SC（堆栈计算机）代码的主要意图是在至少一个系统上编译成真实的机器代码，著名的[UCSD实现使用它创建了](https://zh.wikipedia.org/wiki/UCSD "wikilink")[解释性](https://zh.wikipedia.org/wiki/解释性 "wikilink")[UCSD
p-System](https://zh.wikipedia.org/wiki/UCSD_p-System "wikilink")。P-系统编译器被称作P1-P4，P1是来自于Zurich的第一个版本，P4是最后一个。

P4编译器/解释器仍然可以在兼容最初Pascal的系统上运行和编译。然而，它本身只是Pascal语言的一个子集。接受全部Pascal语言和包含ISO
7185兼容性的一个P4版本创建了，称作P5编译器，它在源形式上可用。

一个为[IBM
System/370](https://zh.wikipedia.org/wiki/IBM_System/370 "wikilink")[大型计算机产生本地二机制代码的P](../Page/大型计算机.md "wikilink")4编译器版本由[澳大利亚原子能委员会发布](https://zh.wikipedia.org/wiki/Australian_Atomic_Energy_Commission "wikilink")；缩写该委员会的名称后，它被称作“AAEC
Pascal编译器”。从1975年6月起，一个包含编译器源代码和二机制代码，以及[PDP-10主机运行时库文件的P](https://zh.wikipedia.org/wiki/PDP-10 "wikilink")4版本可以从[这里](ftp://pdp-10.trailing-edge.com/pub/pdp10freewarev2/lib20/0003/)下载。

在1980年代早期，也是为IBM [System
370开发的](https://zh.wikipedia.org/wiki/System_370 "wikilink")[Watcom](https://zh.wikipedia.org/wiki/Watcom "wikilink")
Pascal开发了。

[IP
Pascal是一个使用Micropolis](https://zh.wikipedia.org/wiki/IP_Pascal "wikilink")
DOS的Pascal编程语言的实现，但是被迅速地移植到运行于[Z80上的](../Page/Zilog_Z80.md "wikilink")[CP/M](https://zh.wikipedia.org/wiki/CP/M "wikilink")。在1994年它被移植动80386类型机器上，今天作为Windows/XP和Linux实现存在。在2008年，该系统达到一个新层次，该结果语言称作“Pascaline”（Pascal的计算器之后）。它包括对象，命名空间控制，动态数组和许多其它扩展，以及与C有相同功能和类型保护的通用特性。它仅是也兼容最初Pascal实现（作为ISO
7185的标准）的这样一个实现。

在1980年代早期，[UCSD](https://zh.wikipedia.org/wiki/UCSD "wikilink")
Pascal移植到[Apple II和](../Page/Apple_II.md "wikilink")[Apple
III计算机](../Page/Apple_III.md "wikilink")，以提供一个随着机器而来的[BASIC解释器的结构化替代品](../Page/BASIC.md "wikilink")。

Apple Computer在1982年为Lisa Workshop创建了自己的Lisa Pascal，在1985年将该编译器移植到Apple
Macintosh和[MPW](https://zh.wikipedia.org/wiki/Macintosh_Programmer's_Workshop "wikilink")。在1985年，经咨询维尔特，Larry
Tesler定义了Object Pascal，这些扩展合并进Lisa Pascal和Mac Pascal编译器。

在1980年代，[Anders
Hejlsberg为](https://zh.wikipedia.org/wiki/Anders_Hejlsberg "wikilink")[Nascom-2编写了Blue](https://zh.wikipedia.org/wiki/Nascom "wikilink")
Label Pascal编译器。为[IBM
PC编写的该编译器的重实现在](../Page/IBM_PC.md "wikilink")[Borland收购之前以Compas](../Page/Borland.md "wikilink")
Pascal和PolyPascal的名称销售。重命名为*[Turbo
Pascal](../Page/Turbo_Pascal.md "wikilink")*后，它变得广受欢迎，一方面由于一个积极的定价策略，一方面由于是第一个全屏[集成开发环境之一](../Page/集成开发环境.md "wikilink")，以及快速的周转时间（只需要数秒编译，链接和运行）。另外，它用[汇编语言编写](../Page/汇编语言.md "wikilink")，并整体高度优化，使它比许多竞争对手[更小和更快](https://zh.wikipedia.org/wiki/Memory_footprint "wikilink")。1986年Anders将Turbo
Pascal移植到Macintosh，并将Apple的Object Pascal扩展合并进Turbo Pascal。这些扩展然后加回到Turbo
Pascal
v5.5的PC版本中。与此同时[Microsoft也实现了Object](https://zh.wikipedia.org/wiki/Microsoft "wikilink")
Pascal编译器。\[2\]\[3\] Turbo Pascal 5.5给在1980年代后期开始主要关注于IBM
PC的Pascal社区带来巨大影响力。许多研究[BASIC结构化替代品的PC爱好者使用该产品](../Page/BASIC.md "wikilink")。它也开始被专业开发人员接受。几乎同时，为了让Pascal程序员直接使用[Microsoft
Windows的基于C的](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[API](https://zh.wikipedia.org/wiki/API "wikilink")，许多概念从[C语言引入](https://zh.wikipedia.org/wiki/C语言 "wikilink")。这些扩展包括空终止[字符串](../Page/字符串.md "wikilink")，[指针算术运算](https://zh.wikipedia.org/wiki/指针算术运算 "wikilink")，[函数指针](../Page/函数指针.md "wikilink")，address-of运算符和非安全[类型转换](../Page/类型转换.md "wikilink")。

然而，Borland后来决定需要更多精细的面向对象特性，并在[Delphi里使用](https://zh.wikipedia.org/wiki/Borland_Delphi "wikilink")[Apple提议的](https://zh.wikipedia.org/wiki/Apple_Computer "wikilink")*[Object
Pascal](../Page/Object_Pascal.md "wikilink")*草图标准作为基础重新开始。（该Apple草图仍然不是一个正式的标准。）Delphi编程语言的第一版相应地命名为Object
Pascal。与老的[OOP扩展相比较](https://zh.wikipedia.org/wiki/OOP "wikilink")，主要的增加是基于参考对象模型，虚拟构建器和析构器，以及属性。几个其它编译器也实现了该方言。

[Turbo
Pascal](../Page/Turbo_Pascal.md "wikilink")，和其它有单元或模块概念的衍生物是[模块化语言](https://zh.wikipedia.org/wiki/模块_\(程序设计\) "wikilink")。然而，它不提供一个嵌套模块概念或合格的导入和导出指定符号。

[Super
Pascal是一个增加了非数字标签](https://zh.wikipedia.org/wiki/Super_Pascal "wikilink")，作为类型名称的返回语句和表达式的变异。

[Zurich](https://zh.wikipedia.org/wiki/Zurich "wikilink")、[Karlsruhe和](https://zh.wikipedia.org/wiki/Karlsruhe "wikilink")[Wuppertal大学已开发了一个](https://zh.wikipedia.org/wiki/Wuppertal "wikilink")*E**X**tension
for **S**cientific **C**omputing*（Pascal XSC），为有控制精度的数字计算编程提供了一个自由的解决方案。

## 语言结构

最初形式的Pascal是一个纯粹的[过程化语言](https://zh.wikipedia.org/wiki/过程化语言 "wikilink")，包括有诸如**if**，**then**，**else**，**while**，**for**等等保留字的[类Algol控制结构的传统数组](https://zh.wikipedia.org/wiki/类Algol "wikilink")。然而，Pascal也有许多最初[Algol60不包括的数据结构工具和其它抽象概念](https://zh.wikipedia.org/wiki/Algol60 "wikilink")，像[类型定义](https://zh.wikipedia.org/wiki/type_system "wikilink")、[记录](https://zh.wikipedia.org/wiki/Record_\(computer_science\) "wikilink")、[指针](https://zh.wikipedia.org/wiki/指针_\(信息学\) "wikilink")、[枚举和](https://zh.wikipedia.org/wiki/enumerated_type "wikilink")[集合](https://zh.wikipedia.org/wiki/set_\(computer_science\) "wikilink")。这些结构部分从[Simula67](https://zh.wikipedia.org/wiki/Simula67 "wikilink")、[Algol68](../Page/ALGOL_68.md "wikilink")、[尼克劳斯·维尔特自己的](../Page/尼克劳斯·维尔特.md "wikilink")[Algol-W和](https://zh.wikipedia.org/wiki/ALGOL_W "wikilink")[C.
A. R.
Hoare的建议继承或获得灵感](https://zh.wikipedia.org/wiki/C._A._R._Hoare "wikilink")。

### Hello world

Pascal程序开始于外部文件描述符作为参数的**program**[关键字](https://zh.wikipedia.org/wiki/keyword_\(computer_programming\) "wikilink")；然后跟着**begin**和**end**关键字封装的主要[块](https://zh.wikipedia.org/wiki/block_\(programming\) "wikilink")。[分号分割语句](https://zh.wikipedia.org/wiki/分号 "wikilink")，[句點终结整个程序](https://zh.wikipedia.org/wiki/句點 "wikilink")（或*单元*）。Pascal源代码[不區分大小寫](../Page/大小写敏感性.md "wikilink")。

这里是一个非常简单的[“Hello
world”程序示例的源代码](https://zh.wikipedia.org/wiki/Hello_world "wikilink")：
（注：在实际编程中，通常可以省略第一行的output甚至program行）

``` pascal
Program HelloWorld(output);
begin
  writeln('Hello, world!')
 {程序块的最后一条语句后不需要";" -
   如果添加一个";"会在程序中增加一个“空语句”}
end.
```

### 数据类型

Pascal和几种其它流行编程语言的类型以定义变量能存储的值的范围的方式定义一个变量，也定义了一个允许在该类变量上执行的操作符集。预定义类型是：

| 数据类型                                                                             | 变量能存储的值的类型                               | 包括的种类                                                                             |
| -------------------------------------------------------------------------------- | ---------------------------------------- | --------------------------------------------------------------------------------- |
| [integer](https://zh.wikipedia.org/wiki/integer_\(computer_science\) "wikilink") | [整数](../Page/整数_\(计算机科学\).md "wikilink") | 包括shortint,byte;integer,word;longint,longword;int64,qword。其中int64和qword类型不能做循环变量。 |
| [real](https://zh.wikipedia.org/wiki/floating_point "wikilink")                  | [浮点数](../Page/浮点数.md "wikilink")         | 包括real;comp;single;double;extended。其中comp类型的实质是整数型。                               |
| [boolean](https://zh.wikipedia.org/wiki/boolean_type "wikilink")                 | TRUE或FALSE                               | 只有boolean一种。                                                                      |
| [char](https://zh.wikipedia.org/wiki/character_\(computing\) "wikilink")         | 来自有序字符集的一个单独字符                           | 只有char一种。                                                                         |

每种类型（除了boolean）允许的值的范围是定义实现的。为一些数据转换提供了函数。为了将`real`转换成`integer`，下面的[捨入函数可用](https://zh.wikipedia.org/wiki/rounding "wikilink")：使用[四捨五入取整的](https://zh.wikipedia.org/wiki/四捨五入 "wikilink")`round`和`roundto`（非标准）；分别向上和向下捨入的`ceil`和`floor`；向零舍入的`trunc`。注意在`str`和`floattostr`函数（非标准）中转换成十进制的输出，和`write`命令不使用银行家捨入。

程序员可以使用Pascal类型声明工具以预定义类型，自由地定义其它常用数据类型（例如，byte，string等等。)。 例如：

``` pascal
type
  byte = 0..255;
  signedbyte = -128..127;
  string = packed array [1..255] of char;
```

（注：实际上，常用的数据类型如byte，string等在很多实现中已经定义过）

### 标量类型

Pascal的标量类型是[real](https://zh.wikipedia.org/wiki/floating_point "wikilink")、[integer](https://zh.wikipedia.org/wiki/integer_\(computer_science\) "wikilink")、[character](https://zh.wikipedia.org/wiki/character_\(computing\) "wikilink")、[boolean和引进Pascal的新类型](https://zh.wikipedia.org/wiki/boolean_type "wikilink")[枚举](https://zh.wikipedia.org/wiki/enumerated_type "wikilink")：

``` pascal
var
  r: Real;
  i: Integer;
  c: Char;
  b: Boolean;
  e: (apple, pear, banana, orange, lemon);
```

### 子范围类型

可以构造任意有序类型（除了real的简单类型）的子范围：

``` pascal
var
  x: 1..10;
  y: 'a'..'z';
  z: pear..orange;
```

### 集合类型

与该时代的其它编程语言相反，Pascal支持集合类型：

``` pascal
var
  set1: set of 1..10;
  set2: set of 'a'..'z';
  set3: set of pear..orange;
```

集合是现代数学的基础概念，可能在很多算法中使用。这样一个特性是非常有用的，可能比不支持集合的语言的同等结构更快。例如，对于许多Pascal编译器：

``` pascal
if i in [5..10] then
...
```

比下面代码执行更快：

``` pascal
if (i>4) and (i<11) then
...
```

从性能和可读性来说，非连续值的集合可能特别有用：

``` pascal
if i in [0..3, 7, 9, 12..15] then
...
```

对于像这些涉及小域上集合的例子，性能的提高通常是编译器将集合变量看作位掩码实现的。集合操作符然后可以作为按位机器码运算有效实现。

然而，对于值范围显著大于本地字长的例子，集合表达式比使用关系运算符的同等表达式可能导致更糟的性能和更多的内存使用。

### 类型声明

使用类型声明，可以从其它类型定义新类型：

``` pascal
type
  x = Integer;
  y = x;
...
```

更进一步，复杂的类型可以从简单的类型构建：

``` pascal
type
  a = Array [1..10] of Integer;
  b = record
        x: Integer;
        y: Char
      end;
  c = File of a;
```

### File类型

正如上面的例子所示，Pascal的[文件是组件序列](https://zh.wikipedia.org/wiki/电脑档案 "wikilink")。每个文件有一个用*f^*表示的缓冲变量。过程*get*（读）和*put*（写）移动到缓冲变量的下一个元素。引进了读，使得*read(f,
x)*与*x:=f^; get(f);*相同。引进了写，使得*write(f, x)*与*f^ := x;
put(f);*相同。打印的文字作为字符文件预定义了。当缓冲变量能用于检查下一个字符可用（读一个整数前检查一个数字）时，这个概念导致了早期实现的交互程序的严重问题，但是后来用“lazy
I/O”概念解决了。

在Jensen & Wirth的Pascal裡，字符串用封装的字符数组表示；因此有固定长度和通常是空间填充。有些方言有一个自定义字符串类型。

### 指针类型

Pascal支持[指针的使用](https://zh.wikipedia.org/wiki/指针_\(信息学\) "wikilink")：

``` pascal
type
  a = ^b;
  b = record
        a: Integer;
        b: Char;
        c: a
      end;
var
  pointertob: a;
```

这里变量*pointertob*是数据类型记录*b*的一个指针。指针在声明之前可用。这是[前向声明](../Page/前向声明.md "wikilink")，一个使用之前必须声明的规则的例外。创建一个新记录，将值*10*和字符*A*分配给记录的域*a*和*b*，将指针*c*初始化为[nil](https://zh.wikipedia.org/wiki/Null_\(编程\) "wikilink")，命令是这样的：

``` pascal
new(pointertob);
```

``` pascal
pointertob^.a := 10;
pointertob^.b := 'A';
pointertob^.c := nil;
...
```

也可以如下面这样使用**with**语句来做：

``` pascal
new(pointertob);

with pointertob^ do
begin
  a := 10;
  b := 'A';
  c := nil
end;
...
```

在**with**语句范围内，a和b指记录指针**pointertob**的子域，而不是记录b或指针类型a。

通过在记录里包含一个指针类型域（c，参见[nil和](https://zh.wikipedia.org/wiki/nil "wikilink")[null](https://zh.wikipedia.org/wiki/Null_\(编程\) "wikilink")），可以创建[链表](../Page/链表.md "wikilink")、[栈和](https://zh.wikipedia.org/wiki/栈 "wikilink")[队列](../Page/队列.md "wikilink")。

与许多以指针为特性的语言不同，Pascal只允许指针引用匿名的动态创建的变量，不允许引用标准的静态或本地变量。另外，指针是类型绑定的，即字符指针与整数指针是类型不兼容的。该净效果是Pascal指针是“安全的”，远离其它指针实现固有的类型安全问题。

### 控制结构

Pascal是[结构化编程语言](../Page/结构化编程.md "wikilink")，意味着控制流被结构化成标准语句，理想地没有“[go
to](../Page/Goto.md "wikilink")”命令。

``` pascal
while a <> b do writeln('Waiting');

if a > b then writeln('Condition met')
else writeln('Condition not met');

for i := 1 to 10 do writeln('Iteration: ', i:1);

repeat
  a := a + 1
until a = 10;

case i of
  0: write('zero');
  1: write('one');
  2: write('two')
end;
```

### 过程和函数

Pascal将程序结构化成过程和函数。

``` pascal
program mine(output);

var i : integer;

procedure print(var j: integer);

  function next(k: integer): integer;
  begin
    next := k + 1
  end;

begin
  writeln('The total is: ', j);
  j := next(j)
end;

begin
  i := 1;
  while i <= 10 do print(i)
end.
```

过程和函数可以嵌套任意深度，“program”构造是逻辑上最外层的块。

每个过程或函数可以有自己的正确顺序的goto标签、常量、类型、变量和其它过程和函数声明。
此顺序要求最初的本意是允许高效的单通编译。然而，在一些方言里声明节严格的顺序要求是不必要的。

### 分号作为语句分割符

Pascal从[ALGOL语言里吸纳了许多语言语法特性](../Page/ALGOL.md "wikilink")，包括使用分号作为语句分割符。这与其它诸如[PL/I](https://zh.wikipedia.org/wiki/PL/I "wikilink")、[C等的语言是不同的](https://zh.wikipedia.org/wiki/C语言 "wikilink")。它们使用分号作为语句终止符。正如上述例子演示的，记录类型声明、块或*case*语句的**`end`**关键字之前，repeat语句的**`until`**关键字之前，*if*语句的**`else`**关键字之前，不需要分号。

在Pascal的早期版本裡，不允许存在额外的分号。然而，1973年的*修订报告*，后来成为ISO
7185:1983里的额外的类[ALGOL空语句现在允许这些情况的绝大多数可选地使用分号](../Page/ALGOL.md "wikilink")。例外是仍然不允许分号立即出现在*if*语句的*`else`*关键字之前。

在一些情况下，真正需要空语句：

``` pascal
(* skip blanks *)
while GetChar() = ' ' do ;
```

然而，滥用可能会产生问题。虽然下面语句是语法正确的，但是结果不大可能是想要的：

``` pascal

if alarm then;
begin;
  SendMayday;
  EjectPilot;
end;
```

## 资源

### 编译器和解释器

几个Pascal编译器和解释器可供一般公众使用：

  - [Delphi是Embarcadero](../Page/Delphi.md "wikilink")（前身为Borland/CodeGear）的旗舰RAD（[快速应用开发](https://zh.wikipedia.org/wiki/Rapid_Application_Development "wikilink")）产品。它使用继承自Pascal的Object
    Pascal语言（Borland称作“[Delphi编程语言](https://zh.wikipedia.org/wiki/Delphi_programming_language "wikilink")”）为Windows平台创建应用。从Delphi
    8到Delphi
    2007就存在的.NET支持已终止，被一个不完全向后兼容的语言（Prism，更名为Oxygene，参见下面）所替代。最新版本（Delphi
    XE5）支持
    [iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")、[Android](../Page/Android.md "wikilink")、[Mac
    OS X和](https://zh.wikipedia.org/wiki/OS_X "wikilink")[Microsoft
    Windows平台的开发](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。
  - [Free
    Pascal是一个Pascal编写的多平台编译器](../Page/Free_Pascal.md "wikilink")（它是[自举的](https://zh.wikipedia.org/wiki/Self-hosting "wikilink")）。它旨在提供一个方便而强大的编译器，既能编译遗留应用又是开发新应用的手段。它在[GNU
    GPL下发布](https://zh.wikipedia.org/wiki/GNU_GPL "wikilink")，而包和运行时库遵守一个修改的[GNU
    LGPL](https://zh.wikipedia.org/wiki/GNU_Lesser_General_Public_License "wikilink")。除了Turbo
    Pascal、Delphi和Mac
    Pascal的兼容模式，它也有自己的过程和面向对象语法模式，以支持诸如操作符重载的扩展特性。它支持许多平台和操作系统。
  - [Lazarus是一个RAD](../Page/Lazarus.md "wikilink")（[快速应用开发](https://zh.wikipedia.org/wiki/Rapid_Application_Development "wikilink")）的类Delphi的可视跨平台IDE。基于[Free
    Pascal](../Page/Free_Pascal.md "wikilink")，Lazarus可用于包括[Linux](../Page/Linux.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[Mac
    OS X和](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[Microsoft
    Windows的无数平台](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。
  - [Dev-Pascal是一个以](https://zh.wikipedia.org/wiki/Dev-Pascal "wikilink")[Borland
    Delphi设计的](https://zh.wikipedia.org/wiki/Borland_Delphi "wikilink")，支持Free
    Pascal和GNU Pascal作为后台的Pascal
    [IDE](https://zh.wikipedia.org/wiki/Integrated_development_environment "wikilink")。与它的C++兄弟相反，多年来还没见到它的重要发布。
  - [Oxygene](https://zh.wikipedia.org/wiki/Oxygene_\(programming_language\) "wikilink")（前身是*Chrome*）是一个[.NET和](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")[Mono平台上的下一代Object](https://zh.wikipedia.org/wiki/Mono_\(software\) "wikilink")
    Pascal编译器。它由[RemObjects
    Software](http://www.remobjects.com/)创建和销售，最近由Codegear/Embarcadero作为[Prism开发和出售](https://zh.wikipedia.org/wiki/Delphi_Prism "wikilink")。它试图将Pascal的精神带到.NET，但不是很兼容其它Pascals。
  - [Kylix是](../Page/Kylix.md "wikilink")[Delphi的一个后代](../Page/Delphi.md "wikilink")，支持[Linux操作系统](../Page/Linux.md "wikilink")，有一个改善的对象库。其编译器和IDE现已用于非商业用途。Borland不再支持该产品。
  - [GNU
    Pascal编译器](https://zh.wikipedia.org/wiki/GNU_Pascal "wikilink")（GPC）是[GNU编译器集](https://zh.wikipedia.org/wiki/GNU_Compiler_Collection "wikilink")（GCC）的Pascal编译器。编译器本身是用C编写的，运行时库绝大多数用Pascal编写。在[GNU通用公共许可下自由发布](https://zh.wikipedia.org/wiki/GNU_General_Public_License "wikilink")，它运行在许多平台和操作系统上。它支持ANSI/ISO标准语言和部分Borland/Turbo
    Pascal语言支持。比较痛苦的疏漏之一是缺乏100% TP兼容的字符串类型。可能除了Mac Pascal，对Borland
    Delphi和其他语言版本的支持是非常有限的，不过对它们的支持在快速增长。
  - [Virtual
    Pascal是作为一个兼容Borland](https://zh.wikipedia.org/wiki/Virtual_Pascal "wikilink")
    Pascal语法的本地OS/2编译器由Vitaly
    Miryanov在1995年创建的。然后，由fPrint进行商业开发，增加了Win32支持；在2000年成为了自由软件。今天它可以为Win32、OS/2和Linux编译，主要兼容于Borland
    Pascal和Delphi。该编译器的开发在2005年4月4日终止了。
  - [P4编译器](http://homepages.cwi.nl/~steven/pascal/)，许多后来的包括[UCSD
    p-System的用Pascal实现的Pascal编译器的基础](https://zh.wikipedia.org/wiki/UCSD_p-System "wikilink")。它实现了完全Pascal的一个子集。
  - [P5编译器](http://www.standardpascal.com/p5.html)，是一个P4的ISO
    7185（完全Pascal）适应。
  - [Turbo
    Pascal是](../Page/Turbo_Pascal.md "wikilink")1980年代和1990年代早期，PC的主要Pascal编译器，由于强大的扩展和极短的编译时间而流行。Turbo
    Pascal是紧凑编写的，可以完全从内存编译、运行和调试，而不需要访问磁盘。那时慢速软盘驱动器对程序员来说是常见的，进一步放大了Turbo
    Pascal的速度优势。目前，Turbo Pascal的老版本（直到5.5）可从Borland的站点免费下载。
  - [Turbo51是一个](https://zh.wikipedia.org/wiki/Turbo51 "wikilink")[8051家族微控制器上的自由Pascal编译器](https://zh.wikipedia.org/wiki/Intel_8051 "wikilink")。（使用[Turbo
    Pascal](../Page/Turbo_Pascal.md "wikilink") 7语法）
  - [IP
    Pascal](http://www.moorecad.com/ippas/)实现了语言“Pascaline”（后来命名为Pascal计算器），是一个兼容ISO
    7185原始Pascal的高度扩展Pascal。它具有命名空间控制模块，包括并发任务模块、信号、对象、在运行时分配的任意维数组、重载、覆盖和许多其它扩展。IP
    Pascal有一个对Pascal语言自定义定制的内置可移植库。例如，1970年代原始Pascal的一个标准文本输出应用可以重编译以运行在一个窗口裡，甚至可以添加图形结构。
  - [Pascal-XT](https://web.archive.org/web/20101027073206/http://ts.fujitsu.com/products/bs2000/software/compiler/pascalxt.html)由[Siemens为他们的](https://zh.wikipedia.org/wiki/Siemens "wikilink")[主机操作系统](https://zh.wikipedia.org/wiki/mainframe_computer "wikilink")[BS2000和](https://zh.wikipedia.org/wiki/BS2000 "wikilink")[SINIX创建的](../Page/SINIX.md "wikilink")。
  - [PocketStudio是一个Pascal子集编译器和](https://zh.wikipedia.org/wiki/PocketStudio "wikilink")[RAD工具](https://zh.wikipedia.org/wiki/Rapid_application_development "wikilink")，针对[Palm
    OS和MC](../Page/Palm_OS.md "wikilink")68xxx处理器，有一些自己的扩展以辅助与Palm OS
    API接口。它仿制Delphi和Lazarus，有一个可视表单设计器，一个对象查看器和一个源代码编辑器。
  - [MIDletPascal](https://zh.wikipedia.org/wiki/MIDletPascal "wikilink")——一个生成小而快的专门设计来为手机创建软件的Java字节码的Pascal编译器和IDE。
  - [Vector
    Pascal](http://www.dcs.gla.ac.uk/~wpc/reports/compilers/compilerindex/Doc2.html)是一个针对诸如MMX和AMD
    3d
    Now的[SIMD指令集的语言](https://zh.wikipedia.org/wiki/SIMD "wikilink")，支持所有Intel和AMD处理器，以及Sony
    Playstation 2 Emotion Engine。
  - [Morfik
    Pascal](https://web.archive.org/web/20070325203514/http://www.morfik.com/)允许Web应用的开发全部（服务器和浏览器端）用Object
    Pascal编写。
  - [web
    Pascal是一个在线IDE和Pascal编译器](https://zh.wikipedia.org/wiki/web_Pascal "wikilink")。
  - [WDSibyl](https://web.archive.org/web/20081226232017/http://wdsibyl.teamos2hamburg.de/index.html)——win32和OS/2的可视开发环境和Pascal编译器。
  - [PP编译器](http://www.ppcompiler.org)，直接运行在手持计算机上的Palm OS的编译器。
  - [CDC 6000
    Pascal编译器](http://www.standardpascal.org/CDC6000pascal.html)第一个（CDC
    6000）Pascal编译器的源代码。
  - [Pascal-S](http://www.websters-online-dictionary.org/Pa/Pascal-S.html)
    - "Pascal-S: A Subset and Its Implementation", N. Wirth in Pascal -
    The Language and Its Implementation, by D.W. Barron, Wiley 1979.

一个非常广泛的清单可以在[Pascaland](http://pascaland.org)上找到。该站点在法国，但是它基本上是一个编译器的URL清单；对不讲法语者没有障碍。站点[Pascal
Central](http://pascal-central.com)，Mac中心的一个有文章档案的丰富集合的Pascal信息和宣传站点，加上许多编译器和教程的链接。

## 标准

1983年，该语言标准化为国际标准IEC/[ISO
7185](https://zh.wikipedia.org/wiki/ISO_7185 "wikilink")，以及一些当地国家的具体标准，包括美国ANSI/IEEE770X3.97-1983和ISO
7185:1983。这2个标准的区别仅在于ISO标准包含一个conformant数组的“级别1”扩展，而ANSI不允许对原始（维尔特版本）语言扩展。1989年，对ISO
7185进行了修正（ISO 7185:1990），纠正了原始文档中找到的各种错误和模糊。

1990年，一个扩展的Pascal标准作为ISO/IEC 10206创建。1993年，ANSI组织用ISO
7185:1990标准代替了ANSI标准，有效地终结了作为一个不同标准的状态。

ISO
7185被说成是对《用户手册和报告（Jensen和维尔特）》详述的维尔特的1974年语言的澄清，但是引人注意的是增加了作为标准级别1的“Conformant
Array Parameters”，级别0是没有Conformant Array的数组。该增加是在[C. A. R.
Hoare的请求下](https://zh.wikipedia.org/wiki/C._A._R._Hoare "wikilink")，得到了维尔特赞同。该变动的原因是Hoare想创建[数学算法库（NAG）的一个Pascal版本](https://zh.wikipedia.org/wiki/NAG_Numerical_Libraries "wikilink")，该库最初用FORTRAN编写，发现如果没有允许变长数组参数的扩展就无法实现该库。出于同样的考虑，ISO
7185包含了指定过程和函数参数的参数类型的工具。

注意维尔特自己将1974年的语言当作“标准”，以将其与[CDC
6000编译器的机器特定特征相区别](https://zh.wikipedia.org/wiki/CDC_6000 "wikilink")。该语言记录在“Pascal用户手册和报告”的第二部分[报告”](https://archive.is/20130428031118/http://www.standardpascal.com/The_Programming_Language_Pascal_1973.pdf%E2%80%9CPascal)。

在Pascal起源的大型机（主机和微计算机）上，这些标准普遍遵循。在IBM-PC上，这些标准不被遵循。在IBM-PC上，Borland标准Turbo
Pascal和Delphi有最大量的用户。因此，了解一个特别的实现符合原始Pascal语言还是Borland方言非常重要。

该语言的IBM-PC版本开始区别于UCSD
Pascal，以对该语言的几个扩展以及几个遗漏和变化为特性的解释型实现。许多UCSD语言特性今天仍然存在，包含于Borland的方言。

### Divisions

Pascal的维尔特的Zurich版本在[ETH之外以](https://zh.wikipedia.org/wiki/ETH_Zurich "wikilink")2个基本形式发布，CDC
6000编译器源和一个称作Pascal-P系统的移植工具。Pascal-P编译器遗漏了完全语言的几个特性。例如，作为参数使用的过程和函数，无区别变体记录，包装，处理，过程间的goto方法和完全编译器的其它特性被忽略。

Kenneth Bowles教授的[UCSD
Pascal是基于Pascal](https://zh.wikipedia.org/wiki/UCSD_Pascal "wikilink")-P2套件的，因此有几个共同的Pascal-P语言限制。UCSD
Pascal后来作为Apple Pascal被接纳了，并持续有几个版本。虽然UCSD
Pascal实际上扩展了Pascal-P2套件的Pascal子集，通过添加回标准Pascal结构，它仍然不是一个完整的Pascal标准安装。

Borland的[Turbo Pascal由](../Page/Turbo_Pascal.md "wikilink")[Anders
Hejlsberg用汇编语言独立于UCSD或Zurich编译器编写](https://zh.wikipedia.org/wiki/Anders_Hejlsberg "wikilink")。然而，它与UCSD编译器一样接纳了许多相同子集和扩展。这可能是因为UCSD系统是适于在当时可用的资源限制的微处理器上开发应用的最常见Pascal系统。

### 相关标准清单

  - [ISO](https://zh.wikipedia.org/wiki/ISO "wikilink") 8651-2:1988
    *信息处理系统——计算机图像——图像核心系统（GKS）语言邦定——第二部分：Pascal*

## 评论

Pascal在计算社区产生了广泛的响应，包括批评和赞美。

### 批评

尽管非常流行（尤其在八十到九十年代），依据维尔特的对这种语言的定义来构建Pascal，使它不适合非教学的使用，这遭到了广泛的批评。
推广了[C语言的](https://zh.wikipedia.org/wiki/C语言 "wikilink")[布莱恩·柯林汉](https://zh.wikipedia.org/wiki/布莱恩·柯林汉 "wikilink")（Brian
Kernighan）早在1981年就在他的论文*Why Pascal Is Not My Favorite Programming
Language*对Pascal提出了严厉的抨击。\[4\]

#### 回应

## 參看

  - [ALGOL](../Page/ALGOL.md "wikilink")

  - [Ada](../Page/Ada.md "wikilink")

  - [Delphi](../Page/Delphi.md "wikilink")

  -
  -
  - [Modula-2](../Page/Modula-2.md "wikilink")

  - [Oberon](https://zh.wikipedia.org/wiki/Oberon "wikilink")

  - [Object Pascal](../Page/Object_Pascal.md "wikilink")

  -
  -
  -
  - [C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")

  -
## 延伸閱讀

  - Niklaus Wirth: *The Programming Language Pascal.* 35-63, Acta
    Informatica, Volume 1, 1971.
  - C A R Hoare: *Notes on data structuring.* In O-J Dahl, E W Dijkstra
    and C A R Hoare, editors, Structured Programming, pages 83–174.
    Academic Press, 1972.
  - C. A. R. Hoare, Niklaus Wirth: *An Axiomatic Definition of the
    Programming Language Pascal.* 335-355, Acta Informatica, Volume 2,
    1973.
  - [Kathleen
    Jensen](https://zh.wikipedia.org/wiki/Kathleen_Jensen "wikilink")
    and Niklaus Wirth: *PASCAL - User Manual and Report.*
    Springer-Verlag, 1974, 1985, 1991, ISBN 0-387-97649-3 and ISBN
    3-540-97649-3[1](https://web.archive.org/web/20050314152247/http://www.cs.inf.ethz.ch/~wirth/books/Pascal/)
  - Niklaus Wirth: *Algorithms + Data Structures = Programs.*
    Prentice-Hall, 1975, ISBN
    0-13-022418-9[2](https://web.archive.org/web/20091001201534/http://www.cs.inf.ethz.ch/~wirth/books/AlgorithmE0/)
  - Niklaus Wirth: *An assessment of the programming language PASCAL*
    23-30 ACM SIGPLAN Notices Volume 10, Issue 6, June 1975.
  - N. Wirth, and A. I. Wasserman, ed: *Programming Language Design.*
    IEEE Computer Society Press, 1980
  - D. W. Barron (Ed.): *Pascal - The Language and its Implementation.*
    John Wiley 1981, ISBN 0-471-27835-1
  - Peter Grogono: *Programming in Pascal*, Revised Edition,
    Addison-Wesley, 1980
  - Richard S. Forsyth: *Pascal in Work and Play*, Chapman and Hall,
    1982
  - N. Wirth, M. Broy, ed, and E. Denert, ed: [*Pascal and its
    Successors*](http://www.swissdelphicenter.ch/en/niklauswirth.php) in
    *Software Pioneers: Contributions to Software Engineering.*
    Springer-Verlag, 2002, ISBN 3-540-43081-4
  - N. Wirth: [*Recollections about the Development of
    Pascal.*](http://portal.acm.org/citation.cfm?id=155378) ACM SIGPLAN
    Notices, Volume 28, No 3, March 1993.

## 參考資料

## 外部連結

  - [Pascal Language
    Tutorial](http://www.oocities.com/hotdogcom/ptutor/paslist.html)
  - [The Pascal Programming
    Language](http://pascal-central.com/ppl/index.html)
  - [Standard Pascal](http://www.standardpascal.org) – Resources and
    history of original, standard Pascal
  - [Pascal programming. Theory, examples and
    exercises.](http://www.jurijveresciaka.com/en/index.php?option=com_content&view=article&id=140)

[Category:Pascal](https://zh.wikipedia.org/wiki/Category:Pascal "wikilink")
[Category:学术用编程语言](https://zh.wikipedia.org/wiki/Category:学术用编程语言 "wikilink")
[Category:教育用编程语言](https://zh.wikipedia.org/wiki/Category:教育用编程语言 "wikilink")
[Category:ISO标准化编程语言](https://zh.wikipedia.org/wiki/Category:ISO标准化编程语言 "wikilink")

1.  [CodeGear Delphi\#Products developed with
    Delphi](https://zh.wikipedia.org/wiki/CodeGear_Delphi#Products_developed_with_Delphi "wikilink")
2.  Jon Udell, Crash of the Object-Oriented Pascals, BYTE, July, 1989.
3.  M.I.Trofimov, The End of Pascal?, BYTE, March, 1990, p.36.
4.  Brian W. Kernighan (191). Why Pascal is Not My Favorite Programming
    Language