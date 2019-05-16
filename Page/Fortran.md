**福傳**（），源自於「公式翻译」（）的縮寫，是一種[程式語言](https://zh.wikipedia.org/wiki/程式語言 "wikilink")。1957年由[IBM開發出](../Page/IBM.md "wikilink")，是世界上第一个被正式采用並流传至今的[高级编程語言](https://zh.wikipedia.org/wiki/高階語言 "wikilink")。

## 历史

[IBM_704_mainframe.gif](https://zh.wikipedia.org/wiki/File:IBM_704_mainframe.gif "fig:IBM_704_mainframe.gif")（Lawrence
Livermore National Laboratory，LLNL）操作的古老[IBM
704](https://zh.wikipedia.org/wiki/IBM_704 "wikilink")[大型主機](https://zh.wikipedia.org/wiki/大型主機 "wikilink")。\]\]
[Punch-card--fortran.jpg](https://zh.wikipedia.org/wiki/File:Punch-card--fortran.jpg "fig:Punch-card--fortran.jpg")

Fortran语言是為了滿足[数值计算的需求而發展出來的](https://zh.wikipedia.org/wiki/数值计算 "wikilink")。1953年12月，IBM公司工程師[約翰·巴科斯](../Page/約翰·巴科斯.md "wikilink")（J.
Backus）因深深體會編寫程序很困難，而寫了一份備忘錄給董事長（Cuthbert
Hurd），建議為IBM704系統設計全新的電腦語言以提升開發效率。當時IBM公司的顾问[冯·诺伊曼强烈反对](https://zh.wikipedia.org/wiki/冯·诺伊曼 "wikilink")，因為他認為不切實際而且根本不必要。但赫德批准了這項計劃。1957年，[IBM公司开发出第一套FORTRAN语言](https://zh.wikipedia.org/wiki/IBM公司 "wikilink")，在IBM704電腦上運作。歷史上第一支FORTRAN程式在[馬里蘭州的西屋貝地斯核電廠試驗](https://zh.wikipedia.org/wiki/馬里蘭州 "wikilink")。1957年4月20日星期五的下午，一位IBM軟體工程師決定在電廠內編譯第一支FORTRAN程式，當程式碼輸入後，經過編譯，印表機列出一行訊息：“原始程式錯誤……右側括號後面沒有逗號”，這讓現場人員都感到訝異，修正這個錯誤後，印表機輸出了正確結果。而[西屋電氣公司因此意外地成為FORTRAN的第一個商業用戶](https://zh.wikipedia.org/wiki/西屋電氣公司 "wikilink")。1958年推出FORTRAN
Ⅱ，幾年後又推出FORTRAN Ⅲ，1962年推出FORTRAN Ⅳ後，開始廣泛被使用。

1966年，[美国标准化协会制定了Fortran](https://zh.wikipedia.org/wiki/美国国家标准学会 "wikilink")（x3.9-1966，也就是Fortran
66）和Fortran（x3.10-1966）标准。这时Fortran语言还不是结构化的程序设计语言。

1976年，[美国标准化协会重新对Fortran](https://zh.wikipedia.org/wiki/美国国家标准学会 "wikilink")（x3.9-1966）进行了评估，公布了新的Fortran标准，也就是Fortran
77。Fortran
77是具有结构化特性的编程语言。Fortran77在短时间内取得了巨大的成功，广泛地应用于科学和工程计算，几乎统治了[数值计算领域](https://zh.wikipedia.org/wiki/数值计算 "wikilink")。

1980年，Fortran 77被ISO接纳为国际标准。

1991年发布的Fortran
90大幅改进了旧版Fortran的型式，加入了面向对象的观念与提供指针，并同时加强[数组的功能](https://zh.wikipedia.org/wiki/陣列 "wikilink")。

Fortran後來又陸續推出Fortran 95、Fortran 2003、Fortran 2008等更新版本。

### FORTRAN

最早的FORTRAN版本應用於IBM 704系統上，包含了32种语句，包括：

  - `DIMENSION`和`EQUIVALENCE`语句
  - 赋值语句
  - 三态*算术*`IF`语句。
  - 以`IF`這個陳述式檢查例外情況（`ACCUMULATOR OVERFLOW`, `QUOTIENT OVERFLOW`和`DIVIDE
    CHECK`）；`IF`语句以处理[判断开关和判断指示灯](https://zh.wikipedia.org/wiki/front_panel "wikilink")
  - `GOTO`，计算的`GOTO`，`ASSIGN`，和赋值`GOTO`
  - `DO`循环
  - 格式化的輸入與輸出（Formatted I/O）: `FORMAT`, `READ`, `READ INPUT TAPE`,
    `WRITE`, `WRITE OUTPUT TAPE`, `PRINT`和`PUNCH`
  - 非格式化的輸入與輸出（Unformatted I/O）: `READ TAPE`, `READ DRUM`, `WRITE
    TAPE`和`WRITE DRUM`
  - 其他的輸入與輸出：`END FILE`, `REWIND`，和`BACKSPACE`
  - `PAUSE`, `STOP`，和`CONTINUE`
  - `FREQUENCY`语句（为编译器提供[优化帮助](https://zh.wikipedia.org/wiki/optimization_\(computer_science\) "wikilink")）

### FORTRAN II

1958年IBM又推出*FORTRAN II*.支援使用者撰寫副程式（subroutines）以及函數（functions）。有六個新陳述如下：

  - `SUBROUTINE`, `FUNCTION`，和`END`
  - `CALL`和`RETURN`
  - `COMMON`

接下來的幾年內，FORTRAN II繼續又支援`DOUBLE PRECISION`和`COMPLEX`等資料型態（data types）。

### FORTRAN III

IBM繼續開發*FORTRAN
III*至1958年時已可以內建[組合語言碼並新增其它功能](https://zh.wikipedia.org/wiki/組合語言 "wikilink")；然而這個版本卻從未推出。有如704
FORTRAN和FORTRAN II、FORTRAN
III等的開發過程包含了過多的機器相依性（machine-dependent），造成程式碼不易移植到其他機器上的問題。早期提供FORTRAN版本的廠商經常為此所苦

[FortranCodingForm.agr.jpg](https://zh.wikipedia.org/wiki/File:FortranCodingForm.agr.jpg "fig:FortranCodingForm.agr.jpg")

### FORTRAN IV

自1961年開始，由於客戶的強烈要求，IBM開始發展*FORTRAN IV*，目的在於移除一些FORTRAN
II中過於依賴機器本身的程式碼（例如：`READ INPUT
TAPE`）同時新增一些新的功能，如`LOGICAL`資料型別。[布尔类型](https://zh.wikipedia.org/wiki/布林運算式 "wikilink")（TRUE或者FALSE）與*逻辑IF语句*則取代了*算术IF语句*。FORTRAN
IV於1962年推出，最早應用於[IBM
7030](https://zh.wikipedia.org/wiki/IBM_7030 "wikilink")（"Stretch"）計算機之上，以及其接續的[IBM
7090和](https://zh.wikipedia.org/wiki/IBM_7090 "wikilink")[IBM
7094版本](https://zh.wikipedia.org/wiki/IBM_7094 "wikilink")。

### FORTRAN 66

早期的FORTRAN語言發展史上最重要的一件大事也許是**美國標準協會**（*American Standards
Association*，即今日的[ANSI](https://zh.wikipedia.org/wiki/ANSI "wikilink")）的委員們開始為FORTRAN制定標準規格，名為"American
Standard Fortran." 1966年委員會推出兩套FORTRAN標準版本，分別定義成*FORTRAN*（基於FORTRAN
IV，用來應付*de facto*標準）和*Basic FORTRAN*（基於FORTRAN
II，並且移除其平台依賴性）。FORTRAN第一套標準後來被稱為*FORTRAN
66*（大家仍習慣稱之為FORTRAN IV）。FORTRAN 66有效的成功第一套工業標準版的FORTRAN。其功能如下：

  - 主程序，`SUBROUTINE`，`FUNCTION`和`BLOCK DATA`程序单元
  - `INTEGER`, `REAL`, `DOUBLE PRECISION`, `COMPLEX`和`LOGICAL`数据类型
  - `COMMON`, `DIMENSION`和`EQUIVALENCE`语句
  - `DATA`语句用以指定初始值
  - 内部和`EXTERNAL`（*例如*库）函数
  - 赋值语句
  - `GOTO`，赋值`GOTO`和计算`GOTO`语句
  - 逻辑`IF`和算术（三态）`IF`语句
  - `DO`循环
  - `READ`, `WRITE`, `BACKSPACE`, `REWIND`和`ENDFILE`语句以处理顺序读写
  - `FORMAT`语句
  - `CALL`, `RETURN`, `PAUSE`和`STOP`语句
  - `DATA`和`FORMAT`语句中的[霍尔瑞斯常数](https://zh.wikipedia.org/wiki/霍尔瑞斯常数 "wikilink")，作为子程序的实际参数
  - 最长六个字母的标识符
  - 注释行

### FORTRAN 77

在FORTRAN 66標準推出之後，各家編譯器廠商不斷推出更具擴充性的標準FORTRAN（"Standard
Fortran"），這使得ANSI於1969年開始著手於1966標準版本的修正工作。最後定稿於1977年，1978年四月正式推出FORTRAN。新的標準規格也就是著名的*FORTRAN
77*，這個版本是基於FORTRAN 66之上新增許多功能，彌補過去的缺點：

  - `CHARACTER`数据类型，极大地扩展了的字符输入和输出以及对基于字符的数据进行处理的工具
  - `IMPLICIT`语句
  - `IF`语句块，以及可选的`ELSE`和`ELSE
    IF`从句，提供改进了的对[结构化编程的语言支持](../Page/结构化编程.md "wikilink")。
  - `OPEN`，`CLOSE`和`INQUIRE`语句以改进I/O能力
  - 直接访问文件I/O
  - `PARAMETER`语句以指定常数
  - `SAVE`语句以保存本地变量
  - 内部函数的通用名称

1978年推出了一個重要的版本FORTRAN 77是為MIL-STD-1753
Release版。這個規格由美國國防部制定，這個標準化的FORTRAN
77編譯器並未引入ANSI FORTRAN 77標準。一些新功能最終合併到Fortran 90標準版。

  - `DO WHILE`和`END DO`语句
  - `INCLUDE`语句
  - `IMPLICIT NONE`变量，用于`IMPLICIT`语句
  - [位处理内部函数](https://zh.wikipedia.org/wiki/位处理 "wikilink")，基于类似的包含在[工业实时Fortran（ANSI/ISA
    S61.1（1976））中的函数](https://zh.wikipedia.org/wiki/Industrial_Real-Time_Fortran "wikilink")

1991年推出[IEEE](https://zh.wikipedia.org/wiki/IEEE "wikilink") 1003.9
[POSIX標準版](https://zh.wikipedia.org/wiki/POSIX "wikilink")，為Fortran-77的程式人員提供了POSIX
system上的呼叫。有超過一百種功能呼叫被定義在文件上。允許存取POSIX-相容的行程控制（process
control）、信號取得（signal handling）、檔案系統控制（file system
control）、裝置控制（device control）、程序指定（procedure
pointing），以及資料流的輸入與輸出（stream I/O）。

由於成功的修正了FORTRAN
77發展流程，使得原本過於緩慢重複的程式設計可以順利的應付計算機領域迅速的變化。同时，作为将近15年的“标准FORTRAN”，FORTRAN
77成為歷史上最重要的一套電腦語言。

### Fortran 90

FORTRAN 77的被严重推迟的后续版本，非正式名称是*Fortran
90*，最终于1992年作为ANSI标准发表。这一大版本添加了许多新特性以反映自1978年标准以来发展的在编程方面显著的变化：

  - [自由格式源代码输入](https://zh.wikipedia.org/wiki/free-form_language "wikilink")，以及小写的Fortran关键字
  - [模块](https://zh.wikipedia.org/wiki/module_\(programming\) "wikilink")，将有关联的[过程和数据组合在一起](https://zh.wikipedia.org/wiki/subprogram "wikilink")，使它们可以被其它程序单元调用，包括允许限制一些模块的特定部分访问。
  - [`RECURSIVE`过程](https://zh.wikipedia.org/wiki/recursion "wikilink")
  - 极大地改善了参数传递机制，允许在编译时检查[接口](https://zh.wikipedia.org/wiki/type_signature "wikilink")
  - 通用过程的用户自定义接口
  - [運算子多載](https://zh.wikipedia.org/wiki/運算子多載 "wikilink")
  - 衍生／[抽象数据类型](https://zh.wikipedia.org/wiki/abstract_data_type "wikilink")
  - 新的数据类型定义语法，以指定数据类型和变量的其它属性
  - 可以在表达式和赋值语句中按整体操作数组（或数组节），由此极大地简化了数学和工程计算。这些特性包括整体、部分和通配的数组赋值（比如用`WHERE`语句作选择性赋值），数组常数和表达式，用户定义的数组函数和数组构造。
  - [动态内存分配通过](../Page/动态内存分配.md "wikilink")`ALLOCATABLE`属性和`ALLOCATE`和`DEALLOCATE`语句
  - [`POINTER`属性](https://zh.wikipedia.org/wiki/指针 "wikilink")，指针赋值和`NULLIFY`语句以便于创建和操作动态[数据结构](../Page/数据结构.md "wikilink")
  - `CASE`结构以用于多路选择
  - `EXIT`和`CYCLE`语句以用于在按顺序地"跳出"正常的`DO`循环重复
  - 最长31个字符的标识符
  - 行内注释
  - 用户可控制的可定义的数字精度
  - 新的和增强的内部过程

### Fortran 95

*Fortran 95*僅是一個小改版，大部份修正了Fortran 90 standard一些較為顯著的問題。雖然如此，Fortran
95仍有不少的擴充，尤其是在[High Performance
Fortran的規格](https://zh.wikipedia.org/wiki/High_Performance_Fortran "wikilink")：

  - `FOR ALL`和嵌套的`WHERE`结构以帮助向量化
  - 用户定义的`PURE`和`ELEMENTAL`过程

Fortran
95的一个重要补充是[ISO技术报告](https://zh.wikipedia.org/wiki/国际标准化组织 "wikilink")*[TR-15581：增强的数据类型工具](ftp://ftp.nag.co.uk/sc22wg5/N1351-N1400/N1379.pdf)*，非正式名称是*可分配的TR*。这一标准定义了`ALLOCATABLE`数组的增强的应用，先于与完全的Fortran
2003兼容的Fortran编译器，以供使用。这些使用包括在过程伪参数列表中以及将函数返回值使用`ALLOCATABLE`数组作为派生的类型组件。（`ALLOCATABLE`数组比基于`POINTER`的数组更受欢迎，因为`ALLOCATABLE`数组是由Fortran
95保证的，当它们退出范围时会被自动释放掉，避免了[内存溢出的可能性](https://zh.wikipedia.org/wiki/内存溢出 "wikilink")。另外，[别名也不再是优化数组引用时的一个问题](https://zh.wikipedia.org/wiki/aliasing_\(computing\) "wikilink")，可以使编译器生成比用指针时更快的代码。）

Fortran
95的第二个补充是[ISO技术报告](https://zh.wikipedia.org/wiki/国际标准化组织 "wikilink")*[TR-15580：浮点异常处理](ftp://ftp.nag.co.uk/sc22wg5/N1351-N1400/N1378.pdf)*，非正式名称是*IEEE
TR*。这一标准定义了对[IEEE浮点算术和](../Page/IEEE_754.md "wikilink")[浮点](https://zh.wikipedia.org/wiki/浮点 "wikilink")[异常处理的支持](../Page/异常处理.md "wikilink")。

### Fortran 2003

*Fortran
2003*有著更大幅度的改版。[ISO](https://zh.wikipedia.org/wiki/国际标准化组织 "wikilink")
[Fortran Working Group
(WG5)](http://www.nag.co.uk/sc22wg5/)的官方网站有关于Fortran
2003新特性的详细总结，并有或者[`压缩`PostScript文件](ftp://ftp.nag.co.uk/sc22wg5/N1601-N1650/N1648.ps.gz)可供直接下载。

据该文所述，本版本的主要改进包括：

  - 增强了衍生类型：带参数的衍生类型，改善了控制的可操作性，改善了结构化的创建和释放。
  - 支持[面向对象编程](https://zh.wikipedia.org/wiki/面向对象编程 "wikilink")：[扩展类型和继承](https://zh.wikipedia.org/wiki/继承_\(计算机科学\) "wikilink")，[多态](https://zh.wikipedia.org/wiki/多态 "wikilink")，动态类型分配，以及类型绑定过程。
  - 改善了数据操作：可分配的组件（编入IEEE TR
    15581），延期的类型参数，[`VOLATILE`属性](https://zh.wikipedia.org/wiki/易变变量 "wikilink")，在数组构造和分配语句中显式定义类型，增强的指针，扩展的初始化表达式，增强的内部过程。
  - 增强的输入／输出：[异步传输](https://zh.wikipedia.org/wiki/asynchrony "wikilink")，流访问，用户指定衍生类型的传输操作，用户在格式转换时指定舍入控制，为连接前单元指定常数，`FLUSH`语句，关键字的规范，访问错误信息。
  - [过程指针](../Page/函数指针.md "wikilink")。
  - 支持[IEEE浮点算法和](../Page/IEEE_754.md "wikilink")[浮点](https://zh.wikipedia.org/wiki/浮点 "wikilink")[异常处理](../Page/异常处理.md "wikilink")（编入IEEE
    TR 15580）。
  - 与[C语言的交互性](https://zh.wikipedia.org/wiki/C语言 "wikilink")
  - 支持国际化：访问[ISO
    10646](https://zh.wikipedia.org/wiki/ISO_10646 "wikilink")4字节字符和在格式化的数字输入／输出中选择数字或者逗号。
  - 与宿主操作系统增强的集成：访问[命令行参数](https://zh.wikipedia.org/wiki/命令行 "wikilink")，[环境变量和处理器错误信息](../Page/环境变量.md "wikilink")。

### Fortran 2008

Fortran 2003之後的下一個版本是Fortran 2008.一如Fortran 95,這只是一個小改版，略微更正了Fortran
2003的一些問題，並且合併了TR-19767的語言功能。

如同February 2007，新的功能包括了

  - [Co-array
    Fortran](https://zh.wikipedia.org/wiki/Co-array_Fortran "wikilink")
    –并行處理模式
  - [BIT資料型態](../Page/位元.md "wikilink")

2007年8月，資料型態BIT被刪除了。2008年2月，Coarrays的計畫已缩小，僅有Parallel I/O，而研發團隊也被裁員了。

## FORTRAN的特性

  - Fortran语言的最大特性是接近[数学公式的自然描述](https://zh.wikipedia.org/wiki/数学公式 "wikilink")，在计算机里具有很高的执行效率。
  - 易学，语法严谨。
  - 可以直接对[矩阵和](../Page/矩阵.md "wikilink")[复数进行运算](https://zh.wikipedia.org/wiki/复数 "wikilink")，這點[Matlab有繼承](../Page/MATLAB.md "wikilink")。
  - 自诞生以来广泛地应用于数值计算领域，积累了大量高效而可靠的[源程序](https://zh.wikipedia.org/wiki/源程序 "wikilink")。
  - 很多专用的大型数值运算计算机针对Fortran做了优化。
  - 广泛地应用于[并行计算和](../Page/并行计算.md "wikilink")[高性能計算领域](https://zh.wikipedia.org/wiki/高性能计算 "wikilink")。
  - Fortran 90，Fortran 95，Fortran 2003的相继推出使Fortran语言具备了现代高级编程语言的一些特性。
  - 其矩陣元素在記憶空間儲存順序是採用[列優先](https://zh.wikipedia.org/wiki/列優先 "wikilink")（Column
    major），[Matlab也承襲這點](../Page/MATLAB.md "wikilink")，目前最多使用的[C語言則採用](https://zh.wikipedia.org/wiki/C語言 "wikilink")[行優先](https://zh.wikipedia.org/wiki/行優先 "wikilink")（Row
    major）。

## FORTRAN的Hello World程式

下面是一个在标准输出设备上输出[Hello
World的简单程序](https://zh.wikipedia.org/wiki/Hello_World程序 "wikilink")，这种程序通常作为开始学习编程语言时的第一个程序：

以Fortran 90/95自由格式的寫法為例

``` fortran
! 驚嘆號之後是註解
program main ! 這行可以省略，但是寫大程式的時候會發生混亂
    write (*,*) "hello, world!" ! 第一個* 表示輸出縮排使用內定值，第二個* 表示不指定輸出格式
    write (unit = *, fmt = * ) "hello, world!" ! 做和上一行一樣的事
    stop ! 這行代表程式結束，可以省略
end program main ! end之後的program main也可以省略，但寫上是比較嚴謹
```

## FORTRAN编译器

  - Windows操作系统下：
      - **Visual Fortran**系列
          - **Fortran Power Station** 4.0（FPS
            4.0），[微软公司开发的Fortran编译器](https://zh.wikipedia.org/wiki/微软公司 "wikilink")。1997年3月转让给[DEC公司](https://zh.wikipedia.org/wiki/DEC公司 "wikilink")。
          - **Digital Visual Fortran**（DVF），Fortran Power
            Station的DEC公司版本，版本号为5.0.x \~
            6.0.x。1998年1月，DEC公司被[康柏公司收购](https://zh.wikipedia.org/wiki/康柏公司 "wikilink")，Digital
            Visual Fortran更名为Compaq Visual Fortran。
          - **Compaq Visual Fortran**（CVF），上述DVF的进一步发展，版本号6.5.x \~
            6.6.B。2002年5月康柏公司已并入[惠普公司](https://zh.wikipedia.org/wiki/惠普公司 "wikilink")，但仍然称为Compaq
            Visual Fortran，版本号升级到6.6.C。
          - **Intel
            Fortran**，[英特尔公司开发的Fortran编译器](https://zh.wikipedia.org/wiki/英特尔公司 "wikilink")。事实上，惠普购买了Compaq的Fortran编译器技术之后不久，便留下了用于[Linux](../Page/Linux.md "wikilink")／[UNIX系统的相关技术](../Page/UNIX.md "wikilink")，而将[Windows平台上的Fortran编译器相关权利全部转售给Intel](https://zh.wikipedia.org/wiki/Windows "wikilink")。因此从CVF
            6.6.C之后，Windows平台下的Visual
            Fortran编译器就改由Intel生产和销售了，（需要[微软Visual](../Page/微软.md "wikilink")
            Studio外壳的支持才能实现Visual
            IDE功能，Intel只提供命令行界面的编译器内核）。在Intel手上的版本編號從7.0開始至現在。
      - **Lahey Fortran**
      - **Absoft Fortran**
      - **OpenWatcom**
      - **Silverfrost FTN95**，个人用户可免费使用的Fortran
        95编译器套件。支持编译为Win32或.NET可执行程序，内置名为Plato的IDE，也可通过插件支持[Visual
        Studio](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink")，调试器使用SDBG。

<!-- end list -->

  - Linux操作系统下：
      - **PGI Fortran**
      - **g77**，GNU的Fortran 77编译器，集成在[GCC中](../Page/GCC.md "wikilink")。
      - **gfortran**，GNU的最新的Fortran编译器，集成在GCC 4.x及以上版本中，目前支持全部Fortran
        95、大部分Fortran 2003和Fortran 2008的功能，以替代G77。
      - **Intel Fortran**
      - **Absoft Fortran**
      - **g95**，跟GFORTRAN同为开放源代码的Fortran 95编译器。
      - **[Sun Studio](../Page/Sun_Studio.md "wikilink")**
      - **[Open64](../Page/Open64.md "wikilink")**編譯器

## FORTRAN的套件

几个著名的Fortran Package：

  - IMSL--国际数学和统计链接库
  - MKL--Intel数学核心库
  - NAG--NAG数学库
  - BLAS--Basic Linear Algebra Subroutines
  - LAPACK--Linear Algebra PACKage

## 注解

<references group="註"/>

## 外部链接

  - [gfortran](http://gcc.gnu.org/fortran)
  - [gfortWiki](http://gfortran.org/)
  - [科学计算的语言——FORTRAN95](http://krsna.lamost.org/popular/fortran/fortran.htm)
  - [FORTRAN等计算机高级编程语言的发展历程](http://www.jeriffcheng.com/the-evolution-of-computer-programming-languages.html)
  - [一个可以查找fortran包的网址（英文）](http://gams.nist.gov/Problem.html)

## 參見

  - [High Performance
    Fortran](https://zh.wikipedia.org/wiki/High_Performance_Fortran "wikilink")
    -[高性能計算專用的Fortran程式語言](https://zh.wikipedia.org/wiki/高效能運算 "wikilink")

{{-}}

[Category:Fortran](https://zh.wikipedia.org/wiki/Category:Fortran "wikilink")
[Category:陣列編程語言](https://zh.wikipedia.org/wiki/Category:陣列編程語言 "wikilink")
[Category:过程式编程语言](https://zh.wikipedia.org/wiki/Category:过程式编程语言 "wikilink")
[Category:数值式编程语言](https://zh.wikipedia.org/wiki/Category:数值式编程语言 "wikilink")
[Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink")
[Category:Fortran编程语言家族](https://zh.wikipedia.org/wiki/Category:Fortran编程语言家族 "wikilink")
[Category:计算机标准](https://zh.wikipedia.org/wiki/Category:计算机标准 "wikilink")
[Category:Unix编程工具](https://zh.wikipedia.org/wiki/Category:Unix编程工具 "wikilink")
[Category:静态类型编程语言](https://zh.wikipedia.org/wiki/Category:静态类型编程语言 "wikilink")
[Category:美国发明](https://zh.wikipedia.org/wiki/Category:美国发明 "wikilink")
[Category:ISO标准化编程语言](https://zh.wikipedia.org/wiki/Category:ISO标准化编程语言 "wikilink")