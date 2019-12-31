> 本文内容由[MASM](https://zh.wikipedia.org/wiki/MASM)转换而来。


**MASM** 是 **Microsoft Macro Assembler** 的縮寫，它是[微軟為](https://zh.wikipedia.org/wiki/微軟 "wikilink") [x86](https://zh.wikipedia.org/wiki/x86 "wikilink") [微處理器家族](https://zh.wikipedia.org/wiki/微處理器 "wikilink")，所寫的一套[巨集組譯器](https://zh.wikipedia.org/wiki/巨集組譯器 "wikilink")。它最初是用來發展在 [MS-DOS](../Page/MS-DOS.md "wikilink") 上面執行的軟體，同時，它也是該系統最流行的組譯器。

它支援的[巨集](../Page/巨集.md "wikilink")很靈巧，既廣泛又多樣性，結構化程式的慣用語法，包含高階架構式的迴圈、程序呼叫，以及輪替 (alternation)（因此，MASM 算是[高階組譯器的一個範本](https://zh.wikipedia.org/wiki/高階組譯器 "wikilink")）。MASM原本是由微軟公司維護的，但從6.12版後不再單獨銷售，而是隨附在微軟軟體開發套件與C語言編譯器下，近期版本的MASM也包含在微軟開發工具Visual Studio中。

## 競爭

在 1990 年代初期，不管如何，有一些可供選擇的[組譯器](https://zh.wikipedia.org/wiki/組譯器 "wikilink")，像是 [Borland TASM](https://zh.wikipedia.org/wiki/Borland_TASM "wikilink")、共享版的 [A86](https://zh.wikipedia.org/wiki/A86 "wikilink")，以及（在 90 年代末期）[NASM](https://zh.wikipedia.org/wiki/NASM "wikilink")，都開始取得 MASM 的一些市場份量。但是在 1990 年代終，有兩種因素，使得 MASM 保住大部分的市場份量：

於是，微軟停止把 MASM 作為商業產品一樣的出售，並開始當成免費散佈的 [DDK](https://zh.wikipedia.org/wiki/DDK "wikilink")（[驅動器發展套件](https://zh.wikipedia.org/wiki/驅動器 "wikilink")）之一部分；其次，[MASM32 開發包](https://zh.wikipedia.org/wiki/MASM32_開發包 "wikilink")、[Iczelion's Win32 教材的出現](https://zh.wikipedia.org/wiki/Iczelion's_Win32_教材 "wikilink")，讓[視窗應用程式的設計](https://zh.wikipedia.org/wiki/視窗應用程式 "wikilink")，更方便使用 MASM.

後來在 2000 年，[MASM 6.15](https://zh.wikipedia.org/wiki/MASM_6.15 "wikilink") 的發行，一樣是 [Visual C++ Processor Pack](https://zh.wikipedia.org/wiki/Visual_C++_Processor_Pack "wikilink") 的一部份，費用全免。結果，在 [Visual C++ 6.0](https://zh.wikipedia.org/wiki/Visual_C++_6.0 "wikilink") 後來的所有版本，所包含的 MASM 之版本，都相等該 [Visual C++](https://zh.wikipedia.org/wiki/Visual_C++ "wikilink") 的版本。後來在 [Visual C++ 2005](https://zh.wikipedia.org/wiki/Visual_C++_2005 "wikilink")，64 位元版的 MASM 出現了（檔名為 `ml64.exe`）。加上有龐大數量已安裝 MASM 的用戶群基礎，這些因素，使得MASM仍能繼續生存而不被淘汰。

## 支援 MASM 的專案

有許多正在進行的軟件開發專案，都有支援到 MASM，其中包括 [IDE](https://zh.wikipedia.org/wiki/整合開發環境 "wikilink")（如 [WinAsm Studio](https://zh.wikipedia.org/wiki/WinAsm_Studio "wikilink")，[RadASM](https://zh.wikipedia.org/wiki/RadASM "wikilink")）、[除錯器](https://zh.wikipedia.org/wiki/除錯器 "wikilink")（像是 [OllyDbg](https://zh.wikipedia.org/wiki/OllyDbg "wikilink")），以及 [反組譯器](https://zh.wikipedia.org/wiki/反組譯器 "wikilink")（如 IDAPro, [Interactive Disassembler](https://zh.wikipedia.org/wiki/Interactive_Disassembler "wikilink")）

為了 MASM 使用者的方便，有 [MASM32的專案把](https://zh.wikipedia.org/wiki/MASM32 "wikilink") [程序员](../Page/程序员.md "wikilink")所寫的[程式庫](https://zh.wikipedia.org/wiki/程式庫 "wikilink") (library)、程式範例 (sample code) 以及 說明文件 集合在一起。也有很多[網上論壇在支援](https://zh.wikipedia.org/wiki/網上論壇 "wikilink") MASM 。

這些也都是沿習著著名的產品，如 [Visual Basic](../Page/Visual_Basic.md "wikilink")、Visual C++、[EasyCode](https://zh.wikipedia.org/wiki/EasyCode "wikilink") 的 [IDE](../Page/集成开发环境.md "wikilink") 一樣，為 MASM 提供 [視覺化](https://zh.wikipedia.org/wiki/視覺化 "wikilink") (visual) 的能力。雖然這個產品上了年紀，但它仍然是最受各方支援的[組譯器](https://zh.wikipedia.org/wiki/組譯器 "wikilink")。

## MASM 的版本

  - 商業軟體時期的 MASM 主要版本：

<!-- end list -->

  -   - 4.x 1980 年代末期最流行的版本，很多組合語言入門書都以它為範本。
      - 5.x 開始強化組譯器簡易指令（點指令），以簡化程式架構。稍晚的組合語言入門書亦大量運用此一版本。
      - 6.x 版本為了支援 Windows，有幾個重大特色：
          - 支援 flat 與 386 以上 CPU保護模式。
          - 整合 PWB（Programmer's WorkBench） 開發環境。這軟體在同時期的 Quick BASIC 也找得到。
          - 支援 [DOS Extender](https://zh.wikipedia.org/wiki/DOS_Extender "wikilink")，內建 DOS/16M。
          - 開始支援 [OS/2](https://zh.wikipedia.org/wiki/OS/2 "wikilink") 與 [WinAPI](https://zh.wikipedia.org/wiki/WinAPI "wikilink")。
          - 簡易指令加入流程控制敘述，如 .IF、.While、.Exit......等。
          - 強化對外部函式庫的支援命令，如 proto 與 invoke 等指令，其中最核心的是將 proc 指令包裝成符合高階語言風格（支援 C 與 Pascal 風格）的形式，且 invoke 指令重新包裝 call 與 push/pop 指令，可以更直觀、高階地運用函式。這對呼叫高階語言寫成的函式、特別是繁複的 WinAPI 非常重要。
          - masm 與 link 整合為 ML。
          - [NMake](https://zh.wikipedia.org/wiki/NMake "wikilink") 的 makefile 描述結構也產生了巨大的變化。

單獨銷售的最終版本 MASM 是 6.11。自從微軟停止 MASM 單獨銷售之後，至今他們也更新了幾次的 MASM。因為在微軟的作業系統等產品內，還是有大量以[組合語言撰寫的](https://zh.wikipedia.org/wiki/組合語言 "wikilink")[程式碼](https://zh.wikipedia.org/wiki/程式碼 "wikilink")。

  - 6.15 版是放在 [Visual C++ 6.0 Processor Pack](https://zh.wikipedia.org/wiki/Visual_C++_6.0_Processor_Pack "wikilink") 中。
  - 7.0 版是放在 [Visual C++ .NET 2002](https://zh.wikipedia.org/wiki/Visual_C++_.NET_2002 "wikilink")。
  - 7.1 版是放在 [Visual C++ .NET 2003](https://zh.wikipedia.org/wiki/Visual_C++_.NET_2003 "wikilink")。
  - 8.0 版是放在 [Visual C++ .NET 2005](https://zh.wikipedia.org/wiki/Visual_C++_.NET_2005 "wikilink")，它也可以[組譯](https://zh.wikipedia.org/wiki/組譯 "wikilink") [x64](https://zh.wikipedia.org/wiki/x64 "wikilink") 的[程式碼](https://zh.wikipedia.org/wiki/程式碼 "wikilink")。

在這些新版 [Visual C++](https://zh.wikipedia.org/wiki/Visual_C++ "wikilink") 的 bin 目錄中，皆有 ml.exe。[Visual C++ .NET 2005](https://zh.wikipedia.org/wiki/Visual_C++_.NET_2005 "wikilink") 的相同目錄，還有一個 ml64.exe，它可以[組譯](https://zh.wikipedia.org/wiki/組譯 "wikilink") [x64](https://zh.wikipedia.org/wiki/x64 "wikilink") 的[程式碼](https://zh.wikipedia.org/wiki/程式碼 "wikilink")。相關的說明，都包含在這些新版 [Visual C++](https://zh.wikipedia.org/wiki/Visual_C++ "wikilink") 的說明文件裡。

有些新版的 MASM，也會放在微軟的 [SDK](https://zh.wikipedia.org/wiki/SDK "wikilink") 和 [DDK](https://zh.wikipedia.org/wiki/DDK "wikilink") 中。 在VisualStudio2010中可用如下方式运行MASM（ML.exe）：

`   [SetupDir]\VC>ML [SourceFile]`

## 支援

雖然有傳言說，微軟不再支援發展組譯器，事實上，微軟是繼續支援發展這個產品。大致來說，支援僅限於添加新的[指令集](https://zh.wikipedia.org/wiki/指令集 "wikilink")，如出現較新的[處理器](https://zh.wikipedia.org/wiki/處理器 "wikilink")，以及加強支援 64 位元；往後將不會見到此[組譯器被徹底的改頭換面](https://zh.wikipedia.org/wiki/組譯器 "wikilink")。

## 外部連結

  - [MASM32 Homepage](http://www.masm32.com)
  - [Free MASM Source Code](https://web.archive.org/web/20090513083157/http://sourcerip.com/)
  - [PC Benchmarks For 64](https://archive.is/20130502143022/http://freespace.virgin.net/roy.longbottom/win64.htm)
  - [開始進行 64 位 Windows 系統編程之前需要瞭解的所有信息](http://www.microsoft.com/china/MSDN/library/Windev/64bit/issuesx64.mspx?mfr=true)

[Category:微軟開發工具](https://zh.wikipedia.org/wiki/Category:微軟開發工具 "wikilink") [Category:DOS軟體](https://zh.wikipedia.org/wiki/Category:DOS軟體 "wikilink") [Category:Windows软件](https://zh.wikipedia.org/wiki/Category:Windows软件 "wikilink") [Category:汇编语言](https://zh.wikipedia.org/wiki/Category:汇编语言 "wikilink")