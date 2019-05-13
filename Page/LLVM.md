是一個[自由軟體專案](../Page/自由軟體.md "wikilink")，它是一種[編譯器基礎设施](../Page/編譯器.md "wikilink")，以[C++寫成](../Page/C++.md "wikilink")，包含一系列模块化的编译器组件和工具链，用来开发编译器[前端和](../Page/前端.md "wikilink")[后端](../Page/后端.md "wikilink")。它是為了任意一種[程式語言而寫成的程式](../Page/程式語言.md "wikilink")，利用[虛擬技術創造出](../Page/虛擬技術.md "wikilink")[編譯時期](../Page/編譯器.md "wikilink")、[鏈結時期](../Page/链接器.md "wikilink")、[執行時期以及](../Page/執行時期.md "wikilink")“閒置時期”的最佳化。它最早以[C](../Page/C语言.md "wikilink")/[C++為實作對象](../Page/C++.md "wikilink")，而目前它已支援包括[ActionScript](../Page/ActionScript.md "wikilink")、[Ada](../Page/Ada.md "wikilink")、[D語言](../Page/D語言.md "wikilink")、[Fortran](../Page/Fortran.md "wikilink")、[GLSL](../Page/GLSL.md "wikilink")、[Haskell](../Page/Haskell.md "wikilink")、[Java字节码](../Page/Java.md "wikilink")、[Objective-C](../Page/Objective-C.md "wikilink")、[Swift](../Page/Swift語言.md "wikilink")、[Python](../Page/Python.md "wikilink")、[Ruby](../Page/Ruby.md "wikilink")、[Rust](../Page/Rust.md "wikilink")、[Scala](../Page/Scala.md "wikilink")\[1\]以及[C\#](../Page/C♯.md "wikilink")\[2\]等语言。

LLVM專案的發展起源於2000年[伊利诺伊大学厄巴纳-香槟分校](../Page/伊利诺伊大学厄巴纳-香槟分校.md "wikilink")[維克拉姆·艾夫](../Page/維克拉姆·艾夫.md "wikilink")（Vikram
Adve）與[克里斯·拉特納](../Page/克里斯·拉特納.md "wikilink")（Chris
Lattner）的研究，他們想要為所有靜態及[動態語言創造出動態的編譯技術](../Page/動態語言.md "wikilink")。LLVM是以[BSD授權來發展的](../Page/BSD授權.md "wikilink")[开源軟體](../Page/开源.md "wikilink")。2005年，[蘋果電腦雇用了克里斯](../Page/蘋果電腦.md "wikilink")·拉特納及他的團隊為蘋果電腦開發應用程式系統\[3\]，LLVM為現今[Mac
OS
X及](../Page/Mac_OS_X.md "wikilink")[iOS開發工具的一部分](../Page/iOS.md "wikilink")。

LLVM的命名最早源自於**底層虛擬機器**（）的[首字母縮寫](../Page/首字母縮寫.md "wikilink")\[4\]，由於這個專案的範圍並不侷限於建立一個虛擬機器，這個縮寫導致了廣泛的疑惑。LLVM開始成長之後，成為眾多編譯工具及低階工具技術的統稱，使得這個名字變得更不貼切，開發者因而決定放棄這個縮寫的意涵\[5\]，現今LLVM已單純成為一個品牌，適用於LLVM下的所有專案，包含LLVM中介碼（LLVM
IR）、LLVM除錯工具、LLVM C++標準函式庫等。

因LLVM對產業的貢獻，[计算机协会於](../Page/计算机协会.md "wikilink")2012年将[ACM软件系统奖授與維克拉姆](../Page/ACM软件系统奖.md "wikilink")·艾夫、克里斯·拉特納及Evan
Cheng\[6\]。

## 描述

LLVM提供了完整編譯系統的[中間層](../Page/中間層.md "wikilink")，它會將[中間語言](../Page/中間語言.md "wikilink")（，IR）從編譯器取出與最佳化，最佳化後的IR接著被轉換及鏈結到目標平台的[汇编语言](../Page/汇编语言.md "wikilink")。LLVM可以接受來自[GCC](../Page/GNU_Compiler_Collection.md "wikilink")[工具鏈所編譯的IR](../Page/工具鏈.md "wikilink")，包含它底下現存的編譯器。

LLVM也可以在編譯時期、鏈結時期，甚至是執行時期產生[可重新定位的程式碼](../Page/可重新定位的程式碼.md "wikilink")（Relocatable
Code）。

LLVM支援與語言無關的[指令集架構及](../Page/指令集架構.md "wikilink")[類型系統](../Page/類型系統.md "wikilink")\[7\]。每個在[静态单赋值形式](../Page/静态单赋值形式.md "wikilink")（SSA）的指令集代表著，每個[變數](../Page/变量_\(程序设计\).md "wikilink")（被稱為具有型別的暫存器）僅被賦值一次，這簡化了變數間相依性的分析。LLVM允許程式碼被靜態的編譯，包含在傳統的GCC系統底下，或是類似[JAVA等後期編譯才將IF編譯成機器碼所使用的](../Page/JAVA.md "wikilink")[即時編譯](../Page/即時編譯.md "wikilink")（JIT）技術。它的型別系統包含基本型別（[整數或是](../Page/整数_\(计算机科学\).md "wikilink")[浮点数](../Page/浮点数.md "wikilink")）及五個[複合型別](../Page/複合型別.md "wikilink")（[指標](../Page/指针_\(信息学\).md "wikilink")、[数组](../Page/数组.md "wikilink")、向量、結構及[函數](../Page/子程序.md "wikilink")），在LLVM具體語言的型別建制可以以結合基本型別來表示，舉例來說，C++所使用的class可以被表示為結構、函式及[函数指针的陣列所組成](../Page/函数指针.md "wikilink")。

LLVM
JIT編譯器可以最佳化在執行時期時程式所不需要的靜態分支，這在一些[部份求值](../Page/部份求值.md "wikilink")（Partial
Evaluation）的案例中相當有效，即當程式有許多選項，而在特定環境下其中多數可被判斷為是不需要。這個特色被使用在[Mac OS X
Leopard](../Page/Mac_OS_X_Leopard.md "wikilink")（v10.5）底下[OpenGL的管線](../Page/OpenGL.md "wikilink")，當硬體不支援某個功能時依然可以被成功地運作\[8\]。OpenGL堆栈下的繪圖程式被編譯為IR，接著在機器上執行時被編譯，當系統擁有高階[GPU時](../Page/GPU.md "wikilink")，這段程式會進行極少的修改並將傳遞指令給GPU，當系統擁有低階的GPU時，LLVM將會編譯更多的程序，使這段GPU無法執行的指令在本地端的[中央处理器執行](../Page/中央处理器.md "wikilink")。LLVM增進了使用[Intel
GMA晶片等低端機器的效能](../Page/Intel_GMA.md "wikilink")。一個類似的系統發展於Gallium3D
LLVMpipe，它已被合併到[GNOME](../Page/GNOME.md "wikilink")，使其可運行在沒有GPU的環境\[9\]。

根據2011年的一项測試，GCC在執行時期的性能平均比LLVM高10%\[10\]\[11\]。而2013年測試显示，LLVM可以編譯出接近[GCC相同效能的執行碼](../Page/GCC.md "wikilink")\[12\]。

## 編譯器

LLVM已经成为多个编译器和代码生成相关子项目的母项目。

### 前端

LLVM最初被用來取代現有於GCC堆栈的程式碼產生器\[13\]，許多GCC的前端已經可以與其運行，LLVM目前支援[Ada](../Page/Ada.md "wikilink")、[C语言](../Page/C语言.md "wikilink")、[C++](../Page/C++.md "wikilink")、[D語言](../Page/D語言.md "wikilink")、[Fortran](../Page/Fortran.md "wikilink")、[Haskell](../Page/Haskell.md "wikilink")、[Julia
(编程语言)](../Page/Julia_\(编程语言\).md "wikilink")、[Objective-C](../Page/Objective-C.md "wikilink")、[Rust及](../Page/Rust.md "wikilink")[Swift
(程式语言)的編譯](../Page/Swift_\(程式语言\).md "wikilink")，它使用許多的編譯器，有些來自4.0.1及4.2的[GCC](../Page/GCC.md "wikilink")。

LLVM引發一些人來為許多語言開發新的編譯器，其中一個最引發注意的就是[Clang](../Page/Clang.md "wikilink")，它是一個新的編譯器，同時支援C、Objective-C以及C++。主要來自蘋果電腦的支持，Clang的目的用以取代GCC系統底下的C/Objective-C編譯器，在當代的系統，他較為容易與[集成开发环境](../Page/集成开发环境.md "wikilink")（IDE）整合，而且對於[线程有更好的支援](../Page/线程.md "wikilink")。Clang从3.8版本开始已经支持[OpenMP](../Page/OpenMP.md "wikilink")\[14\]。GCC底下Objective-C的開發已經停滯，而蘋果電腦已經將其支援移至其他的維護分支。

Utrecht
[Haskell編譯器可以產生LLVM使用的程式碼](../Page/Haskell.md "wikilink")，但它還在初期的開發階段，並且在許多案例，展示他比起C程式碼產生器擁有更好的效率\[15\]
[Glasgow Haskell
Compiler](../Page/Glasgow_Haskell_Compiler.md "wikilink")（GHC）擁有一個可以運作的LLVM後端，程式執行效能對比起原先的編譯器可以達到30%的加速，它僅比一個由GHC所實現，並擁有多項最佳化技術的編譯器還慢\[16\]

還有其他的元件在不同的開發階段，包含（但不限於）[Java
bytecode](../Page/Java_bytecode.md "wikilink")\[17\]、[通用中间语言](../Page/通用中间语言.md "wikilink")（CIL）、[MacRuby](../Page/MacRuby.md "wikilink")（實現Ruby
1.9）、[Standard ML及新的](../Page/Standard_ML.md "wikilink")[graph
coloring暫存器配置](../Page/graph_coloring.md "wikilink").

### 中间端

LLVM的核心是中间端表达式（，IR），一种类似汇编的底层语言。IR是一种[强类型的](../Page/强类型.md "wikilink")[精简指令集](../Page/精简指令集.md "wikilink")（，RISC），并对目标指令集进行了抽象。例如，目标指令集的函数调用惯例被抽象为*call*和*ret*指令加上明确的参数。另外，IR采用无限个数的暂存器，使用如%0，%1等形式表达。LLVM支持三种表达形式：人类可读的汇编，在C++中对象形式和序列化后的bitcode形式。

例如，一个简单的[Hello
World程序可以表达为如下的汇编形式](../Page/Hello_World.md "wikilink")。对IR语言的完整描述请参考LLVM官方文档\[18\]：

``` llvm
@.str = internal constant [14 x i8] c"hello, world\0A\00"

declare i32 @printf(i8*, ...)

define i32 @main(i32 %argc, i8** %argv) nounwind {
entry:
    %tmp1 = getelementptr [14 x i8], [14 x i8]* @.str, i32 0, i32 0
    %tmp2 = call i32 (i8*, ...) @printf( i8* %tmp1 ) nounwind
    ret i32 0
}
```

### 后端

至3.4版本的LLVM已经支持多种后端指令集，比如[ARM](../Page/ARM.md "wikilink")、[Qualcomm
Hexagon](../Page/Qualcomm_Hexagon.md "wikilink")、[MIPS](../Page/MIPS.md "wikilink")、[Nvidia并行指令集](../Page/Nvidia并行指令集.md "wikilink")（PTX；在LLVM文档中被称为NVPTX），[PowerPC](../Page/PowerPC.md "wikilink")、[AMD
TeraScale](../Page/AMD_TeraScale.md "wikilink")\[19\]、[AMD Graphics Core
Next](../Page/AMD_Graphics_Core_Next.md "wikilink")（GCN）、[SPARC](../Page/SPARC.md "wikilink")、[z/Architecture](../Page/z/Architecture.md "wikilink")（在LLVM文档中被称为SystemZ）、[x86](../Page/x86.md "wikilink")、[x86-64和](../Page/x86-64.md "wikilink")[XCore](../Page/XCore.md "wikilink")。有部分平台功能并没有完全实现。但x86、x86-64、z/Architecture、ARM和[PowerPC的基本所有功能都有实现](../Page/PowerPC.md "wikilink")。\[20\]
[RISC-V也在版本](../Page/RISC-V.md "wikilink")7中实现。

LLVM机器码（MC）子项目是LLVM将机器指令从文字形式转换至机器码的形式。在之前LLVM依靠系统或是平台专门的工具链将汇编翻译为机器码。LLVM机器码的集成汇编器已经支持绝大多数LLVM的目标平台，如x86、x86-64、ARM和[ARM64](../Page/ARM64.md "wikilink")。对另一些平台，如几种[MIPS平台](../Page/MIPS.md "wikilink")，汇编器支持已经加入但仍在beta阶段。

### 链接器

lld链接器子项目旨在为LLVM开发一个内置的，平台独立的链接器\[21\]，去除对所有第三方链接器的依赖。在2017年5月，lld已经支持[ELF](../Page/ELF.md "wikilink")、[PE/COFF](../Page/PE/COFF.md "wikilink")、
和[Mach-O](../Page/Mach-O.md "wikilink")。在lld支持不完全的情况下，用户可以使用其他项目，如[GNU
ld链接器](../Page/GNU_ld.md "wikilink")。
lld支持链接时优化。当LLVM链接时优化被启用时，LLVM可以输出bitcode而不是本机代码，而本机代码生成由链接器优化处理。

### C++标准库

LLVM项目包含一个C++标准库的实现，具有[MIT许可证和](../Page/MIT许可证.md "wikilink")[UIUC许可证的双许可协议](../Page/UIUC许可证.md "wikilink")。\[22\]

## 另見

  - [Clang C/C++編譯器](../Page/clang.md "wikilink")
  - [GNU Compiler Collection](../Page/GCC.md "wikilink")（GCC）
  - [OpenGL](../Page/OpenGL.md "wikilink")

## 參考文獻

## 外部連結

  - [LLVM計劃官方網站](http://llvm.org/)
  - [LLVM Project Blog](http://blog.llvm.org/)
  - [LLVM: A Compilation Framework for Lifelong Program Analysis &
    Transformation](http://llvm.org/pubs/2004-01-30-CGO-LLVM.pdf)—a
    published paper by [Chris
    Lattner](../Page/Chris_Lattner.md "wikilink") and Vikram Adve.
  - [LLVM Language Reference
    Manual](http://llvm.org/docs/LangRef.html)—describes the LLVM
    intermediate representation.
  - [LLVM 2.0
    Presentation](http://video.google.com/videoplay?docid=6189170937161128523)—Google
    Tech Talk Presentation on LLVM 2.0
  - [Discussion of
    LLVM](http://arstechnica.com/apple/reviews/2009/08/mac-os-x-10-6.ars/9)
    by [John Siracusa](../Page/John_Siracusa.md "wikilink") at [Ars
    Technica](../Page/Ars_Technica.md "wikilink")
  - [LLVM內部結構](http://www.aosabook.org/en/llvm.html)（The Architecture of
    Open Source Applications, Volume II - ISBN 9781105571817）
  - [LLVMLinux專案](http://llvm.linuxfoundation.org/index.php/Main_Page)

[Category:编译器软件](https://zh.wikipedia.org/wiki/Category:编译器软件 "wikilink")
[Category:程序设计工具](https://zh.wikipedia.org/wiki/Category:程序设计工具 "wikilink")
[Category:虛擬化軟體](https://zh.wikipedia.org/wiki/Category:虛擬化軟體 "wikilink")
[Category:C語言家族](https://zh.wikipedia.org/wiki/Category:C語言家族 "wikilink")

1.
2.
3.  Adam Treat, ''[mkspecs and patches for LLVM compile of
    Qt4](http://lists.trolltech.com/qt4-preview-feedback/2005-02/msg00691.html)

4.
5.
6.
7.
8.
9.  Michael Larabel, ["GNOME Shell Works Without GPU Driver
    Support"](http://www.phoronix.com/scan.php?page=news_item&px=MTAxMjI),
    *phoronix*, 6 November 2011
10.
11.
12.
13.
14.
15.
16.
17.  VMKit 目前的开发已经停滞，并且只支持和 LLVM 3.3 协同编译。对更高版本的 LLVM，需要对源码做一些修改。VMKit
    在编译时需要 LLVM 源码中的`lib, include`。
18. .
19.
20. [Target-specific Implementation Notes: Target Feature
    Matrix](http://llvm.org/docs/CodeGenerator.html#target-feature-matrix)
    // The LLVM Target-Independent Code Generator, LLVM site.
21.
22.