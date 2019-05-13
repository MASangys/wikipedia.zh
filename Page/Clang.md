**Clang**（類似英文單字*[clang](../Page/wikt:clang.md "wikilink")*\[1\]）
是一個[C](../Page/C語言.md "wikilink")、[C++](../Page/C++.md "wikilink")、[Objective-C和](../Page/Objective-C.md "wikilink")[Objective-C++程式語言的](../Page/Objective-C++.md "wikilink")[編譯器前端](../Page/編譯器.md "wikilink")。它採用了[LLVM作為其後端](../Page/LLVM.md "wikilink")，而且由LLVM2.6開始，一起釋出新版本。它的目標是提供一個[GNU編譯器套裝](../Page/GCC.md "wikilink")（GCC）的替代品，支援了GNU編譯器大多數的編譯設定以及非官方語言的擴充功能。作者是[克里斯·拉特納](../Page/克里斯·拉特納.md "wikilink")（Chris
Lattner），在[蘋果公司的贊助支持下進行開發](../Page/蘋果公司.md "wikilink")，而原始碼授權是使用類BSD的[伊利诺伊大学厄巴纳-香槟分校開源碼許可](../Page/伊利诺伊大学厄巴纳-香槟分校.md "wikilink")。

Clang專案包括Clang前端和Clang靜態分析器等。\[2\]

## 概述

這個軟體專案在2005年由[蘋果電腦發起](../Page/蘋果電腦.md "wikilink")，是[LLVM编译器工具集的前端](../Page/LLVM.md "wikilink")（front-end），目的是输出代码对应的抽象语法树（Abstract
Syntax Tree, AST），並將程式碼編譯成LLVM
Bitcode。接著在後端（back-end）使用LLVM編譯成平台相关的[機器語言](../Page/機器語言.md "wikilink")
。Clang支持C、C++、Objective C。

在Clang語言中，使用Stmt来代表statement。Clang程式碼的单元（unit）皆為语句（statement），语法树的节点（node）类型就是Stmt。另外Clang的表达式（Expression）也是語句的一種，Clang使用Expr來代表Expression，Expr本身繼承自Stmt。节点之下有子节点列表（sub-node-list）。

Clang本身性能優異，其生成的AST所耗用掉的内存僅僅是GCC的20%左右。[FreeBSD](../Page/FreeBSD.md "wikilink")[操作系统自](../Page/操作系统.md "wikilink")2014年1月發行的10.0版本开始将Clang/LLVM作为默认编译器\[3\]。

## 效能

測試證明Clang编译Objective-C代码时速度为GCC的3倍\[4\]，還能針對使用者發生的編譯錯誤准确地给出建议\[5\]。

## 版本歷史

這個表格只記錄了Clang歷史中特別的階段與版本

<table>
<thead>
<tr class="header">
<th><p>日期</p></th>
<th><p>要點</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>Clang前端以開放原始碼授權釋出</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>Clang/LLVM能夠編譯出可運作的<a href="../Page/FreeBSD.md" title="wikilink">FreeBSD核心</a>。<ref>{{cite web</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Clang/LLVM能夠編譯出可運作的<a href="../Page/DragonFly_BSD.md" title="wikilink">DragonFly BSD核心</a>。<ref>{{cite web</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>Clang 1.0首度與LLVM 2.6一起釋出。</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>產生的C和Objective-C程式碼達到產品品質（但C++和Objective-C++仍未完成）Clang C++能夠編譯GCC 4.2的<a href="../Page/libstdc++.md" title="wikilink">libstdc++並為某些特定的程式產生可運作的程式碼</a>，並可以編譯自身。<ref>{{cite web</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>Clang能夠。<ref>{{cite web</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>經過修改後的能夠用Clang編譯，,並在<a href="../Page/IA-32.md" title="wikilink">IA-32上通過所有空間與使用者回歸測試</a>。<ref>{{cite web</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>最新版的Clang成功建制<a href="../Page/Boost_C++_Libraries.md" title="wikilink">Boost C++ Libraries</a>，並且幾乎通過了所有測驗<ref>{{cite web</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Clang/LLVM被整合在<a href="../Page/FreeBSD.md" title="wikilink">FreeBSD之中</a>（但預設編譯器仍是GCC）<ref>{{cite web</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>Clang/LLVM能夠編譯可運作的<a href="../Page/Linux核心.md" title="wikilink">Linux核心</a>。[6]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>初步實現所有<a href="../Page/C++0x.md" title="wikilink">C++0x草案標準</a>，其中少部分草案中的新特性也出現在開發版的Clang中。<ref>{{cite mailing list</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>Clang能夠編譯出可運作的<a href="../Page/HotSpot.md" title="wikilink">HotSpot</a> <a href="../Page/Java虛擬機器.md" title="wikilink">Java虛擬機器</a></p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Clang 3.0能夠重建超過91%<a href="../Page/Debian.md" title="wikilink">Debian成品</a>。<ref>{{cite web</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>Clang成為<a href="../Page/MINIX_3.md" title="wikilink">MINIX 3中預設的編譯器</a>。<ref>{{cite web</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p><a href="../Page/FreeBSD.md" title="wikilink">FreeBSD宣布Clang</a>/LLVM將成為預設編譯器，取代沿用多年的GCC。<ref>{{cite mailing list</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>Clang成為<a href="../Page/FreeBSD.md" title="wikilink">FreeBSD預設編譯器</a>。<ref>{{cite mailing list</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Clang/LLVM能夠編譯出<a href="../Page/Nexus_7.md" title="wikilink">Nexus 7修改版可運作的</a><a href="../Page/Android.md" title="wikilink">Android</a> <a href="../Page/Linux核心.md" title="wikilink">Linux核心</a>。<ref>{{cite web</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>Clang完成所有<a href="../Page/C++11.md" title="wikilink">C++11特性</a>。<ref>{{cite web</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Clang完成所有<a href="../Page/C++14.md" title="wikilink">C++14特性</a>。<ref>{{cite web</p></td>
</tr>
</tbody>
</table>

## 參考文獻

## 外部連結

  -
  - [LLVMdev: New LLVM C front-end:
    "clang"](https://web.archive.org/web/20070817044507/http://lists.cs.uiuc.edu/pipermail/llvmdev/2007-July/009817.html),
    announcement（11 July 2007）

  - [Presentation: Ted Kremenek - Finding Bugs with the Clang Static
    Analyzer](https://web.archive.org/web/20100613070529/http://llvm.org/devmtg/2008-08/Kremenek_StaticAnalyzer_Hi.m4v),
    [Slides](http://llvm.org/devmtg/2008-08/Kremenek_StaticAnalyzer.pdf)

  - [Presentation: Steve Naroff - Clang
    Internals](https://web.archive.org/web/20100613063447/http://llvm.org/devmtg/2008-08/Naroff_Clang_Hi.m4v),
    [Slides](http://llvm.org/devmtg/2008-08/Naroff_Clang.pdf)

  - [2009 DevMtg Clang
    presentation](http://llvm.org/devmtg/2009-10/StateOfClang.pdf)

[Category:C編譯器](https://zh.wikipedia.org/wiki/Category:C編譯器 "wikilink")
[Category:C++編譯器](https://zh.wikipedia.org/wiki/Category:C++編譯器 "wikilink")
[Category:静态代码分析工具](https://zh.wikipedia.org/wiki/Category:静态代码分析工具 "wikilink")

1.
2.
3.  [FreeBSD 10.0-RELEASE
    Announcement](https://www.freebsd.org/releases/10.0R/announce.html)
4.  <http://llvm.org/pubs/2007-07-25-LLVM-2.0-and-Beyond.pdf>
5.  <http://blog.llvm.org/2010/04/amazing-feats-of-clang-error-recovery.html>
6.