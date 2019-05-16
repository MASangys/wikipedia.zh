{{ infobox programming language | name = Ada | logo = | paradigm =
[多范式](../Page/编程范型.md "wikilink") | year = 1980年 | designer = -{}-

  - MIL-STD-1815/Ada 83: [Jean
    Ichbiah](https://zh.wikipedia.org/wiki/Jean_Ichbiah "wikilink")

  - Ada 95: Tucker Taft

  - Ada 2005: Tucker Taft

| developer = | latest_release_version = Ada 2005 |
latest_release_date =  | latest_preview_version = Ada 2012\[1\] |
latest_preview_date =  | turing-complete = Yes | typing =
[静态](https://zh.wikipedia.org/wiki/静态类型 "wikilink")、[强](https://zh.wikipedia.org/wiki/強型別 "wikilink")、[安全](../Page/型別安全.md "wikilink")、[标明](https://zh.wikipedia.org/wiki/标明类型系統 "wikilink")
| implementations = AdaCore
[GNAT](https://zh.wikipedia.org/wiki/GNAT "wikilink"),
[Green Hills
Software](https://zh.wikipedia.org/wiki/Green_Hills_Software "wikilink")
Optimising Ada 95 compiler,
[DDC-I](https://zh.wikipedia.org/wiki/DDC-I "wikilink") Score |
influenced_by = [ALGOL 68](../Page/ALGOL.md "wikilink"),
[Pascal](../Page/Pascal_\(程式語言\).md "wikilink"),
[C++](../Page/C++.md "wikilink")（Ada 95）,
[Smalltalk](../Page/Smalltalk.md "wikilink")（Ada 95）,
[Java](../Page/Java.md "wikilink")（Ada 2005） | influenced =
[C++](../Page/C++.md "wikilink"),
[Eiffel](../Page/Eiffel.md "wikilink"),
[PL/SQL](https://zh.wikipedia.org/wiki/PL/SQL "wikilink"),
[VHDL](../Page/VHDL.md "wikilink"), [Ruby](../Page/Ruby.md "wikilink"),
[Java](../Page/Java.md "wikilink") | operating_system =
[跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink") | license = |
website = <http://www.adaic.org/> | dialects =
[SPARK](https://zh.wikipedia.org/wiki/SPARK "wikilink")、 | wikibooks =
Ada Programming }}

**Ada**，是一种[程序设计语言](https://zh.wikipedia.org/wiki/程序设计语言 "wikilink")。它源于[美国军方的一个计划](../Page/美国.md "wikilink")，旨在整合美军系统中运行着上百种不同的程序设计语言编写的程序，並提高[除錯能力與效率](https://zh.wikipedia.org/wiki/除錯 "wikilink")，由[Pascal及其他語言擴展而成](../Page/Pascal_\(程式語言\).md "wikilink")，比較接近[自然語言和數學表達式](https://zh.wikipedia.org/wiki/自然語言 "wikilink")，並用「Ada」命名以紀念[-{zh-cn:埃达·洛夫莱斯;zh-tw:愛達·勒芙蕾絲;zh-hk:愛達·勒芙蕾絲;zh-sg:埃达·洛夫莱斯;}-](../Page/愛達·勒芙蕾絲.md "wikilink")（）。

## 重要特征

Ada语言最早是针对[嵌入式和](https://zh.wikipedia.org/wiki/嵌入式 "wikilink")[实时系统设计的](https://zh.wikipedia.org/wiki/实时系统 "wikilink")，并且在现今依然在这些方面广泛使用。Ada95版，是由INTERMETRICS公司的塔克·塔夫特于1992到1995年间设计的，当时主要是希望改进对于系统、数字、财务软件编程的支持。

Ada语言的重要特征就是其嵌入式风格，[模块化设计](https://zh.wikipedia.org/wiki/模块化设计 "wikilink")，编译检查，[平行处理](https://zh.wikipedia.org/wiki/平行处理 "wikilink")，[异常处理及](../Page/异常处理.md "wikilink")[泛型编程](https://zh.wikipedia.org/wiki/泛型编程 "wikilink")。Ada在1995年加入了对[面向对象设计的支持](../Page/面向对象设计.md "wikilink")，包括动态分配等。

Ada的编译检查主要是针对没有分配的内存读写的保护，[堆栈溢出错误](https://zh.wikipedia.org/wiki/堆栈溢出 "wikilink")，单个错误空闲，队列读写错误以及其他可以避免的小问题。这些检查可以在为增加效率的情况下被取消，但是在编译的时候他们却能带来很高的效率。同样它也包括对程序的严正的设置。因为这些原因，它被广泛应用于一些非常重要的系统中，例如[航空电子学](https://zh.wikipedia.org/wiki/航空电子学 "wikilink")，[武器及航天飞行器的操作系统中](../Page/武器.md "wikilink")。

同样它支持很多的编译时间检查，这些检查被用来避免一些错误的发生。这种错误往往是在其他语言中运行之前难以被察觉到的，需要在[源码中加入特殊的检查设置才能被发现](https://zh.wikipedia.org/wiki/源码 "wikilink")。

Ada的动态内存管理非常安全和高规格，它类似于[JAVA语言却不同于](https://zh.wikipedia.org/wiki/JAVA "wikilink")[C语言的](https://zh.wikipedia.org/wiki/C语言 "wikilink")。这种特殊功能并不需要特殊的运行设置。尽管这种语言的语意结构允许对于不能读写的目标进行自动的碎片搜集，但是大多数运行都不支持它。Ada却支持有限形式基于区域的存储管理。无效的读写常在运行时候被检查出来（除非这种检测被人为关闭）并且有时候在编译时候就被发现。

Ada语言的定义同国际标准化组织（ISO）的标准有很大不同，因为他是一个自由内容形式的。这种做法的后果是被广大程序员只能从它的标准化文档（普遍认为是Ada的参考使用手册（ARM））寻找细节性的技术问题，但是普遍情况是一本标准教科书却可以在其他不同语言上使用。

Ada语言由严格的巴斯特范式定义，但是不适合一般人阅读。它是第一种同时拥有IEC/ISO/美国军用标准认证的语言，其编译器经过严格的审查，以确保同样的代码在任一编译器上产生同样的可执行效果，并且保证并行性在代码级可以在无操作系统下同样运行。

## 历史

在1970年代，[美国国防部](../Page/美国国防部.md "wikilink")（DoD）所属的嵌入式计算机系统项目中使用的编程语言数量逐日增多，其中的很多语言十分陈旧或者依赖于硬件，而且没有一个支持安全的模块化编程，对此DoD感到十分担心。基于这个原因，在1975年成立了高级语言工作组（HOLWG），它的使命是就是寻找或者创造某种适合国防部需要的编程语言，以便减少现有编程语言数量。该小组最终的工作成果就是Ada语言。由此，类似项目中使用的高级编程语言的数量大大减少了，1983年的450种编程语言，到1996年只剩下37种。

工作组开发出了语言要求文档—文档。许多现存的语言都被仔细地检查，但是1977年这个团队却声称没有任何现存语言符合他们的条件。

## Ada语言的“Hello, World\!”示例程序

一个Ada语言编写的[Hello,
World\!程序](https://zh.wikipedia.org/wiki/Hello_world "wikilink")：

``` ada
with Ada.Text_IO;

procedure Hello is
begin
    Ada.Text_IO.Put_Line("Hello, world!");
end Hello;
```

在`Ada.Text_IO.Put_Line`处有一些捷径，不需要很多的文字输入，但是对于这里的理解来讲并没有多大意义。细节性的问题請参考[Ada
Programming/Basic](https://zh.wikipedia.org/wiki/Wikibooks:Ada_Programming/Basic "wikilink")。

## 关于阿丽亚娜5型运载火箭的失败

一个普遍的关于[欧洲空间局](../Page/欧洲空间局.md "wikilink")[阿丽亚娜5型运载火箭失败的说法是因为Ada语言在编译过程的检查失败导致的](https://zh.wikipedia.org/wiki/阿丽亚娜5型运载火箭 "wikilink")。将大的浮点数转换成整数是一种常见的程序错误来源。1996年6月4日，对于阿丽亚娜5型运载火箭的初次航行来说，这样一个错误产生了灾难性的后果。发射后仅仅37秒，火箭偏离它的飞行路径，解体并爆炸了。火箭上载有价值5亿美元的通信卫星。6亿美元付之一炬。后来的调查显示，控制惯性导航系统的计算机向控制引擎喷嘴的计算机发送了一个无效数据。失事调查报告指出，火箭爆炸是因为：

它没有发送飞行控制信息，而是送出了一个诊断位模式，表明在将一个64位浮点数转换成16位有符号整数时，产生了溢出。溢出值测量的是火箭的水平速率，这比早先的阿丽亚娜4型运载火箭所能达到的高出了5倍。在设计阿丽亚娜4型运载火箭的软件时，他们小心地分析了数字值，并且确定水平速率绝不会超出一个16位的数。不幸的是，他们在阿丽亚娜5型运载火箭的系统中简单地重新使用了这一部分，而没有检查它所基于的假设。Ada代码如下：

``` ada
begin
sensor_get(vertical_veloc_sensor);
sensor_get(horizontal_veloc_sensor);
vertical_veloc_bias := integer(vertical_veloc_sensor);
horizontal_veloc_bias := integer(horizontal_veloc_sensor);
...
exception
when numeric_error => calculate_vertical_veloc();
when others => use_irs1();
end;
```

## 参见

## 参考书目

### 国际标准

  - ：Information technology — Programming languages — Ada

  - ：Information technology — Programming languages — Ada Semantic
    Interface
    Specification（[ASIS](https://zh.wikipedia.org/wiki/wiktionary:ASIS "wikilink")）

  - ：Information technology — Programming languages — Ada: Conformity
    assessment of a language
    processor（[ACATS](https://zh.wikipedia.org/wiki/wiktionary:ACATS "wikilink")）

  - [IEEE Standard
    1003.5b-1996](https://zh.wikipedia.org/wiki/POSIX "wikilink")，the
    [POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink") Ada binding

  - [Ada Language Mapping
    Specification](https://web.archive.org/web/20041209184612/http://www.omg.org/technology/documents/formal/ada_language_mapping.htm)，the
    [CORBA](../Page/CORBA.md "wikilink")
    [IDL](../Page/接口描述语言.md "wikilink") to Ada mapping

### 书目

  - [Jan
    Skansholm](https://zh.wikipedia.org/wiki/Jan_Skansholm "wikilink")：*Ada
    95 From the Beginning*, Addison-Wesley, ISBN 0-201-40376-5

  - ：*Programming in Ada plus Language Reference Manual*,
    Addison-Wesley, ISBN 0-201-56539-0

  - ：*Programming in Ada 95*, Addison-Wesley, ISBN 0-201-34293-6

  - ：*High Integrity Ada: The SPARK Approach*, Addison-Wesley, ISBN
    0-201-17517-7

  - ：*High Integrity Software: The SPARK Approach to Safety and
    Security*, Addison-Wesley, ISBN 0-321-13616-0

  - ：*Ada Programmer's Handbook*, Benjamin-Cummings Publishing Company,
    ISBN 0-8053-2529-8

  - ：*Ada for Software Engineers*, John Wiley & Sons, ISBN 0-471-97912-0

  - ：*Ada as a Second Language*, McGraw-Hill Science/Engineering/Math,
    ISBN 0-07-011607-5

  - ，：*Real-Time Systems and Programming Languages. Ada 95, Real-Time
    Java and Real-Time POSIX.*, Addison-Wesley, ISBN 0-201-72988-1

  - ，：*Concurrency in Ada*, Cambridge University Press, ISBN
    0-521-62911-X

  - ：*Object-Oriented Reuse, Concurrency and Distribution: An Ada-Based
    Approach*, Addison-Wesley, ISBN 0-201-56527-7

  - [Grady Booch](https://zh.wikipedia.org/wiki/葛來迪·布區 "wikilink")，[Doug
    Bryan](https://zh.wikipedia.org/wiki/Doug_Bryan "wikilink")：*Software
    Engineering with Ada*, Addison-Wesley, ISBN 0-8053-0608-0

  - ，[Neil W.
    Webre](https://zh.wikipedia.org/wiki/Neil_W._Webre "wikilink")：*Data
    Structures with Abstract Data Types and Ada*, Brooks Cole, ISBN
    0-534-14448-9

  - [Pascal
    Ledru](https://zh.wikipedia.org/wiki/Pascal_Ledru "wikilink")：*Distributed
    Programming in Ada with Protected Objects*, Dissertation.com, ISBN
    1-58112-034-6

  - [Fintan
    Culwin](https://zh.wikipedia.org/wiki/Fintan_Culwin "wikilink")：*Ada,
    a Developmental Approach*, Prentice Hall, ISBN 0-13-264680-3

  - ，[Fintan
    Culwin](https://zh.wikipedia.org/wiki/Fintan_Culwin "wikilink")：*Ada
    95 the Craft of Object Oriented Programming*, Prentice Hall, ISBN
    0-13-230350-7

  - ：*Ada 95*, Springer-Verlag, ISBN 0-387-94801-5

  - [David R.
    Musser](https://zh.wikipedia.org/wiki/David_R._Musser "wikilink")，：*The
    Ada Generic Library: Linear List Processing Packages*,
    Springer-Verlag, ISBN 0-387-97133-5

  - [Michael B.
    Feldman](https://zh.wikipedia.org/wiki/Michael_B._Feldman "wikilink")：*Software
    Construction and Data Structures with Ada 95*, Addison-Wesley, ISBN
    0-201-88795-9

  - ：*Ada95 for C and C++ Programmers*, Addison-Wesley, ISBN
    0-201-40363-3

  - [Michael B.
    Feldman](https://zh.wikipedia.org/wiki/Michael_B._Feldman "wikilink")，：*Ada
    95*, Addison-Wesley, ISBN 0-201-36123-X

  - [Nell
    Dale](https://zh.wikipedia.org/wiki/Nell_Dale "wikilink")，[Chip
    Weems](https://zh.wikipedia.org/wiki/Chip_Weems "wikilink")，：*Programming
    and Problem Solving with Ada 95*, Jones & Bartlett Publishers, ISBN
    0-7637-0293-5

  - [Nell
    Dale](https://zh.wikipedia.org/wiki/Nell_Dale "wikilink")，[Susan
    Lilly](https://zh.wikipedia.org/wiki/Susan_Lilly "wikilink")，：*Ada
    Plus Data Structures: An Object-Based Approach*, Jones & Bartlett
    Publishers, ISBN 0-669-41676-2

  - [Bruce C.
    Krell](https://zh.wikipedia.org/wiki/Bruce_C._Krell "wikilink")：*Developing
    With Ada: Life-Cycle Methods*, Bantam Dell Pub Group, ISBN
    0-553-09102-6

  - [Judy
    Bishop](https://zh.wikipedia.org/wiki/Judy_Bishop "wikilink")：*Distributed
    Ada: Developments and Experiences*, Cambridge University Press, ISBN
    0-521-39251-9

  - [Bo
    Sanden](https://zh.wikipedia.org/wiki/Bo_Sanden "wikilink")：*Software
    Systems Construction With Examples in Ada*, Prentice Hall, ISBN
    0-13-030834-X

  - [Bruce
    Hillam](https://zh.wikipedia.org/wiki/Bruce_Hillam "wikilink")：*Introduction
    to Abstract Data Types Using Ada*, Prentice Hall, ISBN 0-13-045949-6

  - ：*Introduction to Software Design and Development With Ada*, Brooks
    Cole, ISBN 0-314-02829-3

  - [Ian C.
    Pyle](https://zh.wikipedia.org/wiki/Ian_C._Pyle "wikilink")：*Developing
    Safety Systems: A Guide Using Ada*, Prentice Hall, ISBN
    0-13-204298-3

  - [Louis
    Baker](https://zh.wikipedia.org/wiki/Louis_Baker "wikilink")：*Artificial
    Intelligence With Ada*, McGraw-Hill, ISBN 0-07-003350-1

  - ，：*HRT-HOOD: A Structured Design Method for Hard Real-Time Ada
    Systems*, North-Holland, ISBN 0-444-82164-3

  - [Walter Savitch, Charles
    Peterson](https://zh.wikipedia.org/wiki/Walter_Savitch,_Charles_Peterson "wikilink")：*Ada:
    An Introduction to the Art and Science of Programming*,
    Benjamin-Cummings Publishing Company, ISBN 0-8053-7070-6

  - [Mark Allen
    Weiss](https://zh.wikipedia.org/wiki/Mark_Allen_Weiss "wikilink")：*Data
    Structures and Algorithm Analysis in Ada*, Benjamin-Cummings
    Publishing Company, ISBN 0-8053-9055-3

## Ada的百科

### 总体信息

  - [Ada@Krischik](http://ada.krischik.com)

### 辅助工具书

  - [Ada Programming](http://en.wikibooks.org/wiki/Ada_Programming)
  - [Programación en
    Ada](http://es.wikibooks.org/wiki/Programación_en_Ada)
  - [Programmation Ada](http://fr.wikibooks.org/wiki/Programmation_Ada)

### 工程

  - [AdaCL](http://adacl.sourceforge.net/index.php)
  - [wikibook-ada](http://wikibook-ada.sourceforge.net)
  - [ASIS](http://gnat-asis.sourceforge.net)
  - [GLADE](http://gnat-glade.sourceforge.net)
  - [Florist](http://gnat-florist.sourceforge.net)

## 参考文献

## 外部链接

  - [Ada
    World](https://web.archive.org/web/20050828151449/http://adaworld.com/)
  - [AdaPower](http://adapower.com/)
  - [The Web Site for Ada](http://www.adahome.com/)
  - [ACM SIGAda](http://www.sigada.org/)
  - [Ada-Europe Organization](http://www.ada-europe.org/)
  - [Ada Information Clearinghouse](http://www.adaic.com/)
  - [ISO Home of Ada Standards](http://www.open-std.org/jtc1/sc22/wg9/)
  - [Ada 95 Books Available
    Online](http://www.computer-books.us/ada95.php)
  - [Ada Rapporteur Group (evolution of
    standard)](http://www.ada-auth.org/)
  - [Ada Answers - Building better software with
    Ada](http://www.ada-answers.com/)
  - [Ada Academic
    Initiative](https://web.archive.org/web/20051026114218/http://www.adacore.com/academic.php)
  - ["Libre" Ada Software](http://libre.adacore.com/)
  - [GNU Ada Homepage](http://www.gnuada.org/)
  - [GNAVI Ada Visual RAD](http://www.gnavi.org/)
  - [Citations from CiteSeer](http://citeseer.org/cs?q=%22Ada%22)
  - [GNAT](http://www.gnat.com/)
  - [AdaGIDE, the Ada GNAT Integrated Development Environment for
    Windows](https://web.archive.org/web/20051123020015/http://www.usafa.af.mil/df/dfcs/bios/mcc_html/adagide.cfm)
  - [Forum](news:comp.lang.ada)
  - [Ada
    Tutorial](https://web.archive.org/web/20041019114231/http://oopweb.com/Ada/Documents/Lovelace/Volume.html)
  - [Projects Using
    Ada](http://www.seas.gwu.edu/~mfeldman/ada-project-summary.html)
  - [A\#: Ada on .NET](http://www.martincarlisle.com/a_sharp.html)
  - [Conference announcements for the international Ada
    community](http://www.cs.kuleuven.ac.be/~dirk/ada-belgium/events/)

{{-}}

[Category:系統程式語言](https://zh.wikipedia.org/wiki/Category:系統程式語言 "wikilink")
[Category:IEC標準](https://zh.wikipedia.org/wiki/Category:IEC標準 "wikilink")

1.  [Ada 2012 Language Reference
    Manual](http://www.ada-auth.org/standards/ada12.html) (Draft)