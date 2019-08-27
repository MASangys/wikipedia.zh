**GNU编译器套裝**（，縮寫為**GCC**），指一套[编程語言](https://zh.wikipedia.org/wiki/编程語言 "wikilink")[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")，以[GPL及](https://zh.wikipedia.org/wiki/GPL "wikilink")[LGPL許可證所發行的](https://zh.wikipedia.org/wiki/LGPL "wikilink")[自由軟體](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")，也是[GNU計劃的关键部分](https://zh.wikipedia.org/wiki/GNU計畫 "wikilink")，也是[GNU工具链的主要組成部份之一](https://zh.wikipedia.org/wiki/GNU工具链 "wikilink")。GCC（特别是其中的C语言编译器）也常被认为是跨平台编译器的事实标准。1985年由[理查德·马修·斯托曼開始發展](https://zh.wikipedia.org/wiki/理查德·马修·斯托曼 "wikilink")，現在由[自由軟體基金會負責維護工作](https://zh.wikipedia.org/wiki/自由軟體基金會 "wikilink")。

原名為**GNU C語言編譯器**（），因為它原本只能處理[C語言](https://zh.wikipedia.org/wiki/C語言 "wikilink")。GCC在发布后很快地得到擴展，變得可處理[C++](../Page/C++.md "wikilink")。之後也變得可處理[Fortran](../Page/Fortran.md "wikilink")、[Pascal](../Page/Pascal_\(程式語言\).md "wikilink")、[Objective-C](../Page/Objective-C.md "wikilink")、[Java](../Page/Java.md "wikilink")、[Ada](../Page/Ada.md "wikilink")，[Go](../Page/Go.md "wikilink")與其他語言。

許多操作系统，包括許多[类Unix系統](https://zh.wikipedia.org/wiki/类Unix "wikilink")，如[Linux](../Page/Linux.md "wikilink")及BSD家族都採用GCC作為标准编译器。

GCC原本用C開發，後來因為[LLVM](../Page/LLVM.md "wikilink")、[Clang](../Page/Clang.md "wikilink")的崛起，它更快地將開發語言轉換為C++。許多C的愛好者在對C++一知半解的情況下主觀認定C++的性能一定會輸給C，但是Ian Lance Taylor給出了不同的意見，並表明C++不但性能不輸給C，而且能設計出更好，更容易維護的程式\[1\]\[2\]。

## 概觀

GCC是由[理查德·马修·斯托曼在](https://zh.wikipedia.org/wiki/理查德·马修·斯托曼 "wikilink")1985年開始的。他首先擴增一個舊有的編譯器，使它能編譯C，這個編譯器一開始是以Pastel語言所寫的。Pastel是一個不可移植的[Pascal語言特殊版](../Page/Pascal_\(程式語言\).md "wikilink")，這個編譯器也只能編譯Pastel語言。為了讓[自由軟體有一個編譯器](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")，後來此編譯器由斯托曼和[Len Tower在](https://zh.wikipedia.org/wiki/Leonard_H._Tower_Jr. "wikilink")1987年\[3\]以C語言重寫\[4\]並成為GNU專案的編譯器。GCC的建立者由[自由軟體基金會直接管理](https://zh.wikipedia.org/wiki/自由軟體基金會 "wikilink")\[5\]。

在1997年，一群不滿GCC緩慢且封閉的創作環境者，組織了一個名為[EGCS](https://zh.wikipedia.org/wiki/EGCS "wikilink")（Experimental/Enhanced GNU Compiler System）的專案，此專案彙整了數項實驗性的分支進入某個GCC專案的分支中。EGCS比起GCC的建構環境更有活力，且EGCS最終也在1999年四月成為GCC的官方版本。

GCC目前由世界各地不同的數個程式設計師小組維護。它是移植到最多[中央處理器架構以及最多](https://zh.wikipedia.org/wiki/CPU "wikilink")[操作系统](../Page/操作系统.md "wikilink")的編譯器。

由於GCC已成為GNU系統的官方編譯器（包括[GNU/Linux家族](../Page/Linux.md "wikilink")），在LLVM、Clang崛起之前，它也是編譯與建立其他作業系統的主要編譯器，包括[BSD](../Page/BSD.md "wikilink")家族、[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、[NeXTSTEP](../Page/NeXTSTEP.md "wikilink")與[BeOS](../Page/BeOS.md "wikilink")等。

GCC通常是跨平台軟體的編譯器首選。有別於一般侷限於特定系統與執行環境的編譯器，GCC在所有平台上都使用同一個前端處理程式，產生一樣的中介碼，因此此中介碼在各個其他平台上使用GCC編譯，有很大的機會可得到正確無誤的輸出程式。

## 目前支持的语言

以2011年10月26日釋出的4.6.2版為準，本編譯器版本可處理下列語言：

  - [Ada](../Page/Ada.md "wikilink")（[GNAT](https://zh.wikipedia.org/wiki/GNAT "wikilink")）
  - [C](https://zh.wikipedia.org/wiki/C语言 "wikilink")（GCC，带 GNU 拓展）
  - [C++](../Page/C++.md "wikilink")（[G++](https://zh.wikipedia.org/wiki/G++ "wikilink")，带 GNU 拓展）
  - [Fortran](../Page/Fortran.md "wikilink")（[Fortran 77](https://zh.wikipedia.org/wiki/Fortran#FORTRAN_77 "wikilink"): [G77](https://zh.wikipedia.org/wiki/G77 "wikilink")，[Fortran 90](https://zh.wikipedia.org/wiki/Fortran#Fortran_90 "wikilink"): [GFORTRAN](https://zh.wikipedia.org/wiki/GFORTRAN "wikilink")）

<!-- end list -->

  - [Java](../Page/Java.md "wikilink")（编译器：[GCJ](../Page/GCJ.md "wikilink")；解释器：）
  - [Objective-C](../Page/Objective-C.md "wikilink")（[GOBJC](https://zh.wikipedia.org/wiki/GOBJC "wikilink")）
  - [Objective-C++](https://zh.wikipedia.org/wiki/Objective-C#Objective-C++ "wikilink")
  - [Go](../Page/Go.md "wikilink")

先前版本納入的前端由於缺乏維護而被廢棄。

Fortran前端在4.0版之前是G77，此前端僅支援Fortran 77。在本版本中，G77被廢棄而採用更新的[GFortran](https://zh.wikipedia.org/wiki/GFortran "wikilink")，因為此前端支援[Fortran 95](https://zh.wikipedia.org/wiki/Fortran#Fortran_95 "wikilink")。

下列前端依然存在：

  - [Modula-2](../Page/Modula-2.md "wikilink")
  - [Modula-3](../Page/Modula-3.md "wikilink")
  - [Pascal](../Page/Pascal_\(程式語言\).md "wikilink")
  - [PL/I](https://zh.wikipedia.org/wiki/PL/I "wikilink")

<!-- end list -->

  - [D語言](../Page/D語言.md "wikilink")
  - [Mercury](https://zh.wikipedia.org/wiki/Mercury "wikilink")
  - [VHDL](../Page/VHDL.md "wikilink")

### 内嵌OpenMP支持

[OpenMP](../Page/OpenMP.md "wikilink")是一种跨语言的[对称多处理机多](https://zh.wikipedia.org/wiki/对称多处理机 "wikilink")[线程](../Page/线程.md "wikilink")[并行程序的编程工具](https://zh.wikipedia.org/wiki/平行計算 "wikilink")，也非常适合当今越来越流行的单CPU多核硬件环境，因此从gcc4.2开始，OpenMP成为其内嵌支持的并行编程规范，可以直接编译内嵌OpenMP语句的C/C++/Fortran95的源代码。gcc4.2之前如果想在C/C++/Fortran中嵌入OpenMP语句的话，需要额外安装库和预处理器才能识别和正确处理这些语句。现在 GCC GOMP 计划实现了这些支持\[6\]：

  - gcc 4.2.0开始支持OpenMP v2.5
  - gcc 4.4.0开始支持OpenMP v3.0
  - gcc 4.9.1开始支持OpenMP v4.0

## 支援的處理器架構

GCC目前支援下列處理器架構（以4.1版為準）：

  - [Alpha](../Page/DEC_Alpha.md "wikilink")
  - [ARM](https://zh.wikipedia.org/wiki/ARM_architecture "wikilink")
  - [Atmel AVR](../Page/Atmel_AVR.md "wikilink")
  - [Blackfin](https://zh.wikipedia.org/wiki/Blackfin "wikilink")
  - [H8/300](https://zh.wikipedia.org/wiki/Hitachi_H8 "wikilink")
  - [IA-32](https://zh.wikipedia.org/wiki/IA-32 "wikilink")（[x86](https://zh.wikipedia.org/wiki/x86 "wikilink")）與[x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink")
  - [IA-64例如](https://zh.wikipedia.org/wiki/IA-64 "wikilink")：[Itanium](https://zh.wikipedia.org/wiki/Itanium "wikilink")

<!-- end list -->

  - [MorphoSys家族](https://zh.wikipedia.org/wiki/MorphoSys "wikilink")
  - [Motorola 68000](https://zh.wikipedia.org/wiki/Motorola_68000 "wikilink")
  - [Motorola 88000](https://zh.wikipedia.org/wiki/Motorola_88000 "wikilink")
  - [MIPS與](../Page/MIPS架構.md "wikilink")[龍芯](https://zh.wikipedia.org/wiki/龍芯 "wikilink")
  - [PA-RISC](https://zh.wikipedia.org/wiki/PA-RISC "wikilink")
  - [PDP-11](../Page/PDP-11.md "wikilink")
  - [PowerPC](../Page/PowerPC.md "wikilink")

<!-- end list -->

  - [System/370](https://zh.wikipedia.org/wiki/System/370 "wikilink")，[System/390](https://zh.wikipedia.org/wiki/zSeries "wikilink")
  - [SuperH](../Page/SuperH.md "wikilink")
  - [HC12](https://zh.wikipedia.org/wiki/HC12 "wikilink")
  - [SPARC](../Page/SPARC.md "wikilink")
  - [VAX](../Page/VAX.md "wikilink")
  - [Renesas](https://zh.wikipedia.org/wiki/Renesas "wikilink") [R8C](https://zh.wikipedia.org/wiki/R8C "wikilink")／[M16C](https://zh.wikipedia.org/wiki/M16C "wikilink")／[M32C家族](https://zh.wikipedia.org/wiki/M32C "wikilink")

較不知名的處理器架構也在官方釋出版本中支援：

  - [A29K](https://zh.wikipedia.org/wiki/AMD_Am29000 "wikilink")
  - [ARC](https://zh.wikipedia.org/wiki/Advanced_Risc_Computing "wikilink")
  - [C4x](https://zh.wikipedia.org/wiki/C4x "wikilink")
  - [CRIS](https://zh.wikipedia.org/wiki/CRIS "wikilink")
  - [D30V](https://zh.wikipedia.org/wiki/D30V "wikilink")
  - [DSP16xx](https://zh.wikipedia.org/wiki/DSP16xx "wikilink")
  - [FR-30](https://zh.wikipedia.org/wiki/FR-30 "wikilink")
  - [FR-V](https://zh.wikipedia.org/wiki/FR-V "wikilink")

<!-- end list -->

  - [Intel i960](https://zh.wikipedia.org/wiki/Intel_i960 "wikilink")
  - [IP2000](https://zh.wikipedia.org/wiki/IP2000 "wikilink")
  - [M32R](https://zh.wikipedia.org/wiki/M32R "wikilink")
  - [68HC11](https://zh.wikipedia.org/wiki/Freescale_68HC11 "wikilink")
  - [MCORE](https://zh.wikipedia.org/wiki/MCORE "wikilink")
  - [MMIX](https://zh.wikipedia.org/wiki/MMIX "wikilink")

<!-- end list -->

  - [MN10200](https://zh.wikipedia.org/wiki/MN10200 "wikilink")
  - [MN10300](https://zh.wikipedia.org/wiki/MN10300 "wikilink")
  - [NS32K](https://zh.wikipedia.org/wiki/NS320xx "wikilink")
  - [ROMP](../Page/ROMP.md "wikilink")
  - [Stormy16](https://zh.wikipedia.org/wiki/Stormy16 "wikilink")
  - [V850](https://zh.wikipedia.org/wiki/V850 "wikilink")
  - [Xtensa](https://zh.wikipedia.org/wiki/Xtensa "wikilink")

由FSF個別維護的GCC處理器架構：

  - [D10V](https://zh.wikipedia.org/wiki/D10V "wikilink")
  - [MicroBlaze](https://zh.wikipedia.org/wiki/MicroBlaze "wikilink")

<!-- end list -->

  - [PDP-10](https://zh.wikipedia.org/wiki/PDP-10 "wikilink")
  - [MSP430](https://zh.wikipedia.org/wiki/TI_MSP430 "wikilink")

<!-- end list -->

  - [Z8000](https://zh.wikipedia.org/wiki/Zilog_Z8000 "wikilink")
  - [NEC](https://zh.wikipedia.org/wiki/NEC "wikilink") SX-9 [並行向量處理機](https://zh.wikipedia.org/wiki/並行向量處理機 "wikilink")\[7\]

當GCC需要移植到一個新平台上，通常使用此平台固有的語言來撰寫其**初始階段**。

## 結構

GCC的外部介面長得像一個標準的[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")[編譯器](../Page/編譯器.md "wikilink")。使用者在命令列下鍵入`gcc`之程式名，以及一些命令參數，以便決定每個輸入檔案使用的個別語言[編譯器](../Page/編譯器.md "wikilink")，並為輸出程式碼使用適合此硬體平台的[組合語言編譯器](https://zh.wikipedia.org/wiki/組合語言 "wikilink")，並且選擇性地執行[連結器以製造可執行的程式](https://zh.wikipedia.org/wiki/連結器 "wikilink")。

每個語言[編譯器](../Page/編譯器.md "wikilink")都是獨立程式，此程式可處理輸入的原始碼，並輸出組合語言碼。全部的語言[編譯器](../Page/編譯器.md "wikilink")都擁有共通的中介架構：一個前端[解析符合此語言的原始碼](https://zh.wikipedia.org/wiki/構文解析 "wikilink")，並產生一[抽象語法樹](https://zh.wikipedia.org/wiki/抽象語法樹 "wikilink")，以及一翻譯此語法樹成為GCC的[暫存器轉換語言的後端](https://zh.wikipedia.org/wiki/暫存器轉換語言 "wikilink")。[編譯器最佳化與](https://zh.wikipedia.org/wiki/編譯器最佳化 "wikilink")[靜態程式碼解析技術](https://zh.wikipedia.org/wiki/靜態程式碼解析 "wikilink")（例如FORTIFY_SOURCE[1](http://fedoraproject.org/wiki/Security/Features)，一個試圖發現[緩衝區溢位的](https://zh.wikipedia.org/wiki/緩衝區溢位 "wikilink")[編譯器](../Page/編譯器.md "wikilink")）在此階段應用於程式碼上。最後，適用於此硬體架構的組合語言程式碼以與發明的演算法產出。

幾乎全部的GCC都由C/C++寫成，除了[Ada](../Page/Ada.md "wikilink")前端大部分以[Ada](../Page/Ada.md "wikilink")寫成。

### 前端介面

前端的功能在於產生一個可讓後端處理之語法樹。此語法解析器是手寫之遞迴語法解析器。

直到最近，程式的語法樹結構尚無法與欲產出的處理器架構脫鉤。而語法樹的規則有時在不同的語言前端也不一樣，有些前端會提供它們特別的語法樹規則。

在2005年，兩種與語言脫鉤的新型態語法樹納入GCC中。它們稱為[GENERIC與](https://zh.wikipedia.org/wiki/GENERIC "wikilink")[GIMPLE](https://zh.wikipedia.org/wiki/GIMPLE "wikilink")。語法解析變成產生與語言相關的暫時語法樹，再將它們轉成GENERIC。之後再使用「gimplifier」技術降低GENERIC的複雜結構，成為一較簡單的[靜態唯一形式](https://zh.wikipedia.org/wiki/靜態唯一形式 "wikilink")（Static Single Assignment form，SSA）基礎的GIMPLE形式。此形式是一個與語言和處理器架構脫鉤的全域最佳化通用語言，適用於大多數的現代程式語言。

### 中介介面

一般[編譯器](../Page/編譯器.md "wikilink")作者會將語法樹的最佳化放在前端，但其實此步驟並不看語言的種類而有不同，且不需要用到語法解析器。因此GCC作者們將此步驟歸入通稱為**中介階段**的部分裡。此類的最佳化包括[消解死碼](https://zh.wikipedia.org/wiki/消解死碼 "wikilink")、[消解重複運算與](https://zh.wikipedia.org/wiki/消解重複運算 "wikilink")[全域數值重編碼等](https://zh.wikipedia.org/wiki/全域數值重編碼 "wikilink")。許多最佳化技巧也正在實作中。

### 後端介面

GCC後端的行為因不同的[前處理器巨集和特定架構的功能而不同](https://zh.wikipedia.org/wiki/前處理器巨集 "wikilink")，例如不同的[字元尺寸](https://zh.wikipedia.org/wiki/字元尺寸 "wikilink")、[呼叫方式與大小](https://zh.wikipedia.org/wiki/呼叫方式 "wikilink")[尾序等](https://zh.wikipedia.org/wiki/尾序 "wikilink")。後端介面的前半部利用這些訊息決定其RTL的生成形式，因此雖然GCC的RTL理論上不受處理器影響，但在此階段其抽象指令已被轉換成目標架構的格式。

GCC的最佳化技巧依其釋出版本而有很大不同，但都包含了標準的最佳化演算法，例如[迴圈最佳化](https://zh.wikipedia.org/wiki/迴圈最佳化 "wikilink")、[執行緒跳躍](https://zh.wikipedia.org/wiki/執行緒跳躍 "wikilink")、[共通程式子句消減](https://zh.wikipedia.org/wiki/共通程式子句消減 "wikilink")、[指令排程等等](https://zh.wikipedia.org/wiki/指令排程 "wikilink")。而RTL的最佳化由於可用的情形較少，且缺乏較高階的資訊，因此比較起近來增加的GIMPLE語法樹形式[2](https://web.archive.org/web/20070106234009/http://people.redhat.com/dnovillo/pub/tree-ssa/doc/html/)，便顯得比較不重要。

後端經由一**重讀取**步驟後，利用描述目標處理器的[指令集時所取得的資訊](https://zh.wikipedia.org/wiki/指令集 "wikilink")，將抽象暫存器替換成處理器的真實暫存器。此階段非常複雜，因為它必須關照所有GCC可移植平台的處理器指令集的規格與技術細節。

後端的最後步驟相當公式化，僅僅將前一階段得到的組合語言碼藉由簡單的副函式轉換其暫存器與記憶體位置成相對應的機械碼。

## 替GCC程式除錯

為GCC除錯的首選工具當然是[GNU除錯器](https://zh.wikipedia.org/wiki/GNU除錯器 "wikilink")。其他特殊用途的除錯工具是[Valgrind](../Page/Valgrind.md "wikilink")，用以發現内存洩漏（Memory leak）。而[GNU測量器](https://zh.wikipedia.org/wiki/GNU測量器 "wikilink")（gprof）可以得知程式中某些函式花費多少時間，以及其呼叫頻率；此功能需要使用者在編譯時選定**測量**（profiling）選項。

## GCC内嵌汇编

内嵌汇编也称行内汇编，是把汇编语言代码块插在C语言语句之间。详情参见[GCC-Inline-Assembly-HOWTO.html](http://www.ibiblio.org/gferg/ldp/GCC-Inline-Assembly-HOWTO.html)

## 参考文献

### 引用

### 来源

  - [Richard M. Stallman](https://zh.wikipedia.org/wiki/Richard_Stallman "wikilink")：*[Using and Porting the GNU Compiler Collection](http://gcc.gnu.org/onlinedocs/gcc-2.95.3/gcc.html)*, [Free Software Foundation](https://zh.wikipedia.org/wiki/Free_Software_Foundation "wikilink")，ISBN 0-595-10035-X
  - Richard M. Stallman: *[Using Gcc: The Gnu Compiler Collection Reference](http://gcc.gnu.org/onlinedocs/gcc-3.3.1/gcc/)*, Free Software Foundation, ISBN 1-882114-39-6
  - [Brian J. Gough](https://zh.wikipedia.org/wiki/Brian_J._Gough "wikilink")：*[An Introduction to GCC](http://www.network-theory.co.uk/gcc/intro/)*, Network Theory Ltd., ISBN 0-9541617-9-3

## 更多閱讀

  - Arthur Griffith, *GCC: The Complete Reference*. McGrawHill/Osborne. ISBN 0-07-222405-3.

  -
  -
## 外部链接

  - [GCC官方网站](http://gcc.gnu.org)

  -
  - [GCC Forum](https://web.archive.org/web/20051024122753/http://www.nabble.com/gcc-f1154.html) - 由[Nabble](http://www.nabble.com)維持，整理所有gcc通訊討論串，並整合入一個可搜尋介面中。

## 参见

  - GCC目前包含了[贝姆垃圾收集器](https://zh.wikipedia.org/wiki/贝姆垃圾收集器 "wikilink")，一個為C/C++所設計的[垃圾回收器](../Page/垃圾回收_\(計算機科學\).md "wikilink")。
  - [distcc](https://zh.wikipedia.org/wiki/distcc "wikilink") - 為分散式編譯所設計的軟體，以GCC為協同軟體。
  - [ccache](https://zh.wikipedia.org/wiki/ccache "wikilink") - 用于缓存编译的中间结果，加快重新编译的速度。
  - [LLVM](../Page/LLVM.md "wikilink") - 低層虛擬機器編譯器架構，其中的 clang (Obj-)C(++) 编译器实现了大部分 GNU C 拓展。
  - [MinGW](../Page/MinGW.md "wikilink") - 將GNU開發工具移植到Win32平臺下的計畫
  - [Cygwin](../Page/Cygwin.md "wikilink") - 在 Windows 上執行 Unix 程式的模擬軟體。
  - [GCC Summit](https://zh.wikipedia.org/wiki/GCC_Summit "wikilink")
  - [OpenWatcom](https://zh.wikipedia.org/wiki/Watcom "wikilink") - 另一個開放原碼的C++/Fortran編譯器。
  - [Code Sourcery](https://zh.wikipedia.org/wiki/Code_Sourcery "wikilink") - 一個GCC顧問公司。
  - [ggcc](https://zh.wikipedia.org/wiki/ggcc "wikilink") - 全球化GCC專案。

{{-}}

[Category:编译器软件](https://zh.wikipedia.org/wiki/Category:编译器软件 "wikilink") [Category:GNU計劃軟體](https://zh.wikipedia.org/wiki/Category:GNU計劃軟體 "wikilink") [Category:C編譯器](https://zh.wikipedia.org/wiki/Category:C編譯器 "wikilink")

1.  [GCC's move to C++](https://lwn.net/Articles/542457/)
2.  [Taylor的演讲簡報](http://airs.com/ian/cxx-slides.pdf)
3.  Tower, Leonard (1987) "[GNU C編譯器beta測試版釋出](http://groups.google.com/group/comp.lang.misc/msg/32eda22392c20f98)" *comp.lang.misc* USENET新聞群組；參閱http://gcc.gnu.org/releases.html\#timeline
4.
5.  Stallman, Richard M. (2001) "[GCC貢獻者名單](http://gcc.gnu.org/onlinedocs/gcc-2.95.3/gcc_23.html#SEC260)"於[*使用及移植GCC 2.95版*](http://gcc.gnu.org/onlinedocs/gcc-2.95.3/gcc.html#SEC_Top)（Cambridge, Mass.: Free Software Foundation）
6.  [GOMP计划](http://gcc.gnu.org/projects/gomp/)
7.  [sx-gcc - port gcc to nec sx vector cpu - Google Project Hosting](http://code.google.com/p/sx-gcc/)