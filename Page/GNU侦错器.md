**GNU侦錯器**（，缩写：），是[GNU軟體系統中的標準](../Page/GNU.md "wikilink")[侦錯器](../Page/调试工具.md "wikilink")，此外GDB也是個具有移攜性的侦錯器，經過移攜需求的調修與重新編譯，如今許多的[類UNIX作業系統上都可以使用GDB](../Page/類UNIX.md "wikilink")，而現有GDB所能支援除錯的程式語言有[C](../Page/C語言.md "wikilink")、[C++](../Page/C++.md "wikilink")、[Pascal以及](../Page/Pascal_\(程式語言\).md "wikilink")[FORTRAN](../Page/Fortran.md "wikilink")。

## 歷史

GNU
Debugger最初是在1988年由[理查德·马修·斯托曼](../Page/理查德·马修·斯托曼.md "wikilink")（Richard
Stallman）所撰寫，之後以[GNU通用公共許可證](../Page/GNU通用公共許可證.md "wikilink")（GNU
General Public License, GNU GPL）的授權方式將軟體釋出，因此GNU
Debugger是一套自由軟體。釋出後的1990年－1993年間則由任職於[Cygnus
Solutions公司的](../Page/Cygnus_Solutions.md "wikilink")[約翰·吉爾摩](../Page/約翰·吉爾摩.md "wikilink")（）負責後續的軟體維護工作。

## 技術細節

### 特點

GDB具備各種侦錯功效，能針對[電腦程式的執行進行追蹤與警告](../Page/计算机程序.md "wikilink")，使用GDB的除錯人員可以監督及修改程式的內部[變數值](../Page/變數.md "wikilink")，甚至監督與修改獨立於主程式運作外，以獨立個體型態呼用（呼叫使用）的[函式](../Page/子程序.md "wikilink")。

GDB能為多種不同處理器架構上執行的軟體進行侦錯，這些處理器架構包括：DEC/COMPAQ/HP的[Alpha](../Page/DEC_Alpha.md "wikilink")、ARM的[ARM](../Page/ARM_architecture.md "wikilink")、Hitachi的[H8/300](../Page/Hitachi_H8.md "wikilink")、IBM的[System/370](../Page/System/370.md "wikilink")、[System
390](../Page/System_390.md "wikilink")、Intel的[X86及](../Page/X86.md "wikilink")[X86-64](../Page/X86-64.md "wikilink")、[IA-64](../Page/Itanium.md "wikilink")
"Itanium"、[Motorola
68000](../Page/Motorola_68000.md "wikilink")、MIPS的[MIPS](../Page/MIPS_architecture.md "wikilink")、HP的[PA-RISC](../Page/PA-RISC.md "wikilink")、[AIM联盟的](../Page/AIM联盟.md "wikilink")[PowerPC](../Page/PowerPC.md "wikilink")、Hitachi/Renesas/ST的[SuperH](../Page/SuperH.md "wikilink")、Sun的[SPARC](../Page/SPARC.md "wikilink")、DEC/COMPAQ/HP的[VAX](../Page/VAX.md "wikilink")。

此外一些比較少人知的處理器也一樣受GDB支援，包括：AMD的[A29K](../Page/A29K.md "wikilink")、ARC的[ARC](../Page/Advanced_RISC_Computing.md "wikilink")、Atmel的[AVR](../Page/AVR.md "wikilink")、Axis
Communications的[ETRAX
CRIS](../Page/ETRAX_CRIS.md "wikilink")、[D10V](../Page/D10V.md "wikilink")、[D30V](../Page/D30V.md "wikilink")、Fujitsu的[FR-30](../Page/FR-30.md "wikilink")、[FR-V](../Page/FR-V.md "wikilink")、Intel的[i960](../Page/Intel_i960.md "wikilink")、Renesas的[M32R](../Page/M32R.md "wikilink")、Motorola的[68HC11](../Page/Motorola_68HC11.md "wikilink")、Motorola的[88000](../Page/Motorola_88000.md "wikilink")、Freescale的[MCORE](../Page/MCORE.md "wikilink")、[MN10200](../Page/MN10200.md "wikilink")、[MN10300](../Page/MN10300.md "wikilink")、[NS32K](../Page/320xx_microprocessor.md "wikilink")、[Stormy16](../Page/Stormy16.md "wikilink")、[V850](../Page/V850.md "wikilink")、以及Zilog的[Z8000](../Page/Zilog_Z8000.md "wikilink")，此外更後續版本的GDB只會增加更多的處理器支援而不會短少。

GDB的內部已具備了依據各種支援不同處理器的指令集所編譯成的[模擬推演程式](../Page/模擬推演程式.md "wikilink")（），就連大眾少知少用的M32R、V850等架構的處理器也都具備。

### 遠端侦錯

[cc25-GDB-Remote-Debugging.png](https://zh.wikipedia.org/wiki/File:cc25-GDB-Remote-Debugging.png "fig:cc25-GDB-Remote-Debugging.png")
GDB具有一種「遠端，Remote」模式，此種模式多半是在為嵌入式系統進行侦錯時使用，遠端操作指的是：GDB在一部機器內執行，而要進行侦錯的程式是在另一部機器上執行，接著欲侦錯的機器上會再加裝一個名為「Stub」的小程式，該程式能夠與另一端的GDB程式溝通，溝通的路徑可以是兩部機器間的，也可以是支援TCP/IP協定傳輸的各種網路，在TCP/IP網路及協定上再加搭傳輸GDB專有的除錯操作用通訊協定，如此便能進行遠端侦錯。

不僅GDB有遠端模式，KGDB也同樣具有遠端模式，KGDB主要是為執行中的[Linux核心進行侦錯](../Page/Linux核心.md "wikilink")，而GDB則是主要是用在原代碼的層次。運用KGDB，負責核心程式的程式設計師可以將核心以近似於應用程式的除錯方式來侦錯，包括為核心程式碼設置[中斷點](../Page/断点.md "wikilink")（breakpoint）、讓核心程式以步階方式逐行執行以及觀看變數值等。

在某些架構的處理器中，會以硬體方式提供一些侦錯功用的寄存器，以及可以設定觀察點（Watchpoint），觀察點的功用是：當程式設計師指定的記憶體位址被執行到或訪問到時，觀察點即會去觸發、觸動一個中斷點。對此KGDB可以安裝在一部傳統機器上，並透過遠端模式使用另一部受侦錯機器上的硬體侦錯功效，同樣的兩部機器可用各種方式進行溝通，如[串接式接線](../Page/串接式接線.md "wikilink")、[乙太網路等](../Page/以太网.md "wikilink")，尤其在[FreeBSD作業系統上還允許使用](../Page/FreeBSD.md "wikilink")[FireWire接線](../Page/IEEE_1394.md "wikilink")，並用[直接內存訪問](../Page/直接記憶體存取.md "wikilink")（Direct
Memory Access，DMA）的功效來協助遠端侦錯。

### 現有限制

[Stack-browsing-with-regs-and-locals.png](https://zh.wikipedia.org/wiki/File:Stack-browsing-with-regs-and-locals.png "fig:Stack-browsing-with-regs-and-locals.png")
GDB運用上最明顯的限制是在「使用者介面」的部分，預設只有[命令列介面](../Page/CLI.md "wikilink")（CLI）可用，而不具備較能親合上手、直覺操作的[圖形化使用者介面](../Page/GUI.md "wikilink")（GUI），不過此一弱處也已經有幾個前端程式為其補強，例如[DDD](../Page/Data_Display_Debugger.md "wikilink")、[GDBtk](../Page/GDBtk.md "wikilink")／[Insight](http://sources.redhat.com/insight/)以及[Emacs中的](../Page/Emacs.md "wikilink")「GUD
模式」等，有了這些補強後，GDB在功效使用的便利性上就能夠與「[整合發展環境中的侦錯功效使用](../Page/集成开发环境.md "wikilink")」相接近。

另外，有些侦錯工具（軟體）也被設計成能與GDB搭配使用，例如[記憶體洩漏](../Page/記憶體洩漏.md "wikilink")（[memory
leak](../Page/内存泄漏.md "wikilink")）的偵測程式。

## 命令列使用的範例

`gdb prog.out      debug prog.out`
`(gdb) run         run`

## 過程範例

以下是用GDB進行除錯的一段過程示範，欲進行侦錯的程式已在區內：

    GNU gdb Red Hat Linux (6.3.0.0-1.21rh)
    Copyright 2004 Free Software Foundation, Inc.
    GDB is free software, covered by the GNU General Public License, and you are
    welcome to change it and/or distribute copies of it under certain conditions.
    Type "show copying" to see the conditions.
    There is absolutely no warranty for GDB.  Type "show warranty" for details.
    This GDB was configured as "i386-redhat-linux-gnu"...Using host libthread_db
    library "/lib/libthread_db.so.1".

    (gdb) run
    Starting program: /home/sam/programming/crash
    Reading symbols from shared object read from target memory...done.
    Loaded system supplied DSO at 0xc11000
    This program will demonstrate gdb

    Program received signal SIGSEGV, Segmentation fault.
    0x08048428 in function_2 (x=24) at crash.c:22
    22         return *y;
    (gdb) edit
    (gdb) shell gcc crash.c -o crash -gstabs+
    (gdb) run
    The program being debugged has been started already.
    Start it from the beginning? (y or n) y
    warning: cannot close "shared object read from target memory": File in wrong format
    `/home/sam/programming/crash' has changed; re-reading symbols.
    Starting program: /home/sam/programming/crash
    Reading symbols from shared object read from target memory...done.
    Loaded system supplied DSO at 0xa3e000
    This program will demonstrate gdb
    24
    Program exited normally.
    (gdb) quit

這個程式已處在執行階段，之後找出這個程式中會導致執行錯誤的段落，然後將對應處的原代碼用編輯器進行錯誤修訂，更正完成後用[GNU
編譯器](../Page/GCC.md "wikilink")（GCC）重新編譯並再次執行。

## 參考

  - 書籍：*Debugging with GDB*（在此暫譯成：用GDB進行除錯）
      - 出版：2002年，[自由软件基金会](../Page/自由软件基金会.md "wikilink")（Free Software
        Foundation，FSF）
      - ISBN 1-882114-88-4
      - 作者：[Richard M.
        Stallman](../Page/Richard_Stallman.md "wikilink")、[Roland
        Pesch](../Page/Roland_Pesch.md "wikilink")、[Stan
        Shebs及其他所有參與成員](../Page/Stan_Shebs.md "wikilink")

## 外部連結

  - [GDB的官方網站](http://www.gnu.org/software/gdb/)
  - [GDB文件："Debugging with
    GDB，用GDB進行除錯"](http://sources.redhat.com/gdb/current/onlinedocs/gdb.html)（線上HTML格式，折算成PDF格式則超過400頁）
  - [深入GDB](https://web.archive.org/web/20080616054054/http://sources.redhat.com/gdb/current/onlinedocs/gdbint.html)

  - [使用GDB進行C及C++程式語言的除錯](https://web.archive.org/web/20071017044810/http://users.actcom.co.il/~choo/lupg/tutorials/debugging/debugging-with-gdb.html)

  - [用來替Linux核心進行除錯的GDB後端程式：KGDB](https://web.archive.org/web/20130517035414/http://kgdb.linsyssoft.com/)

  - [Peter Jay Salzman所撰：如何更專精、善用GDB](http://www.dirac.org/linux/gdb)
  - [GDB內部結構](http://www.aosabook.org/en/gdb.html) (The Architecture of
    Open Source Applications, Volume II - ISBN 9781105571817)

[Category:除錯器](https://zh.wikipedia.org/wiki/Category:除錯器 "wikilink")
[Category:GNU計劃軟體](https://zh.wikipedia.org/wiki/Category:GNU計劃軟體 "wikilink")