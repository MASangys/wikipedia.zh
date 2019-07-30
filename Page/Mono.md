**Mono**是一个由[Xamarin公司](https://zh.wikipedia.org/wiki/Xamarin "wikilink")（先前是[Novell](../Page/Novell.md "wikilink")，最早為[Ximian](https://zh.wikipedia.org/wiki/Ximian "wikilink")）所主持的自由開放源碼專案。該專案的目標是创建一系列符合[ECMA标准](../Page/Ecma国际.md "wikilink")（[Ecma-334](http://www.ecma-international.org/publications/standards/Ecma-334.htm)和[Ecma-335](http://www.ecma-international.org/publications/standards/Ecma-335.htm)）的[.NET工具](https://zh.wikipedia.org/wiki/.NET "wikilink")，包括[C\#编译器和](https://zh.wikipedia.org/wiki/C_Sharp "wikilink")[通用语言架构](../Page/通用语言架构.md "wikilink")。与微软的[.NET Framework](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")（[共通語言執行平臺](https://zh.wikipedia.org/wiki/Common_Language_Runtime "wikilink")）不同，Mono项目不仅可以运行于[Windows系统上](https://zh.wikipedia.org/wiki/Windows "wikilink")，还可以运行于[Linux](../Page/Linux.md "wikilink")，[FreeBSD](../Page/FreeBSD.md "wikilink")，[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")，[OS X和](https://zh.wikipedia.org/wiki/OS_X "wikilink")[Solaris](../Page/Solaris.md "wikilink")，甚至一些遊戲平台，例如：Playstation 3，Wii或XBox 360。Mono的標誌是一個猴子格式的臉。

Mono现由Novell持有[双重许可](https://zh.wikipedia.org/wiki/多許可 "wikilink")，这和[Qt](../Page/Qt.md "wikilink")和[Mozilla Application Suite的情况相似](../Page/Mozilla_Application_Suite.md "wikilink")。Mono的C\#编译器及其相关工具发布于[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")（GPL）之下，其运行时库发布于[GNU宽通用公共许可证](../Page/GNU宽通用公共许可证.md "wikilink")（LGPL）之下，其类库发布于[MIT許可證](../Page/MIT許可證.md "wikilink")之下。这些均是[开源协议因此Mono是一个](https://zh.wikipedia.org/wiki/开源协议 "wikilink")[开源软件](../Page/开源软件.md "wikilink")。

[微软](../Page/微软.md "wikilink")开发了一个称为[通用语言架构](../Page/通用语言架构.md "wikilink")（Shared Source Common Language Infrastructure，Shared Source CLI；即今[ECMA](https://zh.wikipedia.org/wiki/ECMA "wikilink")—[通用语言架构](../Page/通用语言架构.md "wikilink")）的可用于[FreeBSD](../Page/FreeBSD.md "wikilink")，Windows和Mac OS X的.NET实现版本。微软的[共享源代码](../Page/共享源代码.md "wikilink")协议并不是开源软件协议，且可能对于社区来说也是不足够的（它明文禁止了对软件的商业用途）。另外，[GNU](../Page/GNU.md "wikilink")也有一个.NET实现版本项目，该项目与Mono项目有着很多相同的目标。

Mono虚拟机包含一个[即時編譯](../Page/即時編譯.md "wikilink")引擎，该引擎可用于如下处理器：[x86](https://zh.wikipedia.org/wiki/x86 "wikilink")，[SPARC](../Page/SPARC.md "wikilink")，[PowerPC](../Page/PowerPC.md "wikilink")，[ARM](https://zh.wikipedia.org/wiki/ARM_architecture "wikilink")，[S390](https://zh.wikipedia.org/wiki/S390 "wikilink")（32位模式和64位模式），[x86-64](https://zh.wikipedia.org/wiki/AMD64 "wikilink")，[IA-64和](https://zh.wikipedia.org/wiki/IA-64 "wikilink")64位模式的SPARC。该虚拟机可以将代码编译为本机代码。

## 历史

當[Microsoft在](https://zh.wikipedia.org/wiki/Microsoft "wikilink")2000年6月第一次公佈.NET Framework時，它被描述為一個以網際網路標準為基底的新的平台。並且在12月發表了基本的共通語言架構開放標準的形式（ECMA-335），提供了無相依性實作的可能。Ximian的 [米格爾·德伊卡薩](../Page/米格爾·德伊卡薩.md "wikilink")在.NET的文档于2000年10月发布时就马上对.NET产生了兴趣。在查看字节码解释器后，他发现对于元数据（metadata）没有相应的说明文档。2001年2月，德伊卡薩在.NET邮件列表中索要到了那段缺失了的关于元数据文件格式的信息，并开始了采用C\#编写一个C\#编译器的工作，作为对C\#的实践。2001年4月ECMA公布了那段缺失的文件格式，而在[GUADEC](https://zh.wikipedia.org/wiki/GUADEC "wikilink")（2001年4月6日－4月8日）德伊卡薩展示了他的编译器的一些特性（那个时候他的编译可以解释自身）。

Ximian内部对如何创建能有效提升生产效率的工具进行了大量的讨论，他们的目标是通过这些创建出来的工具让使用者可以在更短时间内创建出更多的应用程序从而缩短开发周期和降低开发成本。经过可行性研究后，他们清楚地见到创建这样的一项技术是可行的，于是Ximian从其它的项目抽调人员并创建了Mono的开发小组。由于缺少人力来创建整个.NET替代产品，他们在2001年7月19日的[歐萊禮](../Page/歐萊禮.md "wikilink")大会创建了Mono的开源项目。

差不多三年后，Mono于2004年7月30日发布了1.0版本。Mono逐步從一開始的重點為Linux桌面應用程式開發者平台，到支援寛廣範圍的架構和作業系統，包含了[嵌入式系統](https://zh.wikipedia.org/wiki/嵌入式系統 "wikilink")。

在2011年4月，Attachmate收購Novell後，針對Novell發布了上百位人力的解僱。在3月16號德伊卡薩在他的blog發佈在被Novell解僱後，他找到一家公司將透過Xamarin繼續支援Mono。原本的Mono團隊也被移到新的公司。[Xamarin計畫維持在Mono的工作](https://zh.wikipedia.org/wiki/Xamarin "wikilink")。由於在這時間點Novell仍然擁有MonoTouch和專為Android的Mono，所以計畫針對iOS和Android上重寫商業化的.NETstacks。

在這發表之後，這個專案的未來被質疑。因為，專屬 Android的MonoTouch and Mono變成跟現存Attachmate所屬的商業化商品有直接競爭，也考量了Xamarin團隊為了相同的作品而不使用之前在[Novell](../Page/Novell.md "wikilink")開發的技術，證實是有困難的。無論如何，在2011年七月Novell、Attachmate的子公司及Xamarin發表了對Xamarin for Mono, MonoTouch and Mono for Android的永久性許可證，正式地帶起這個案子的管理方式。

<table>
<caption>發行歷史（Release History）</caption>
<thead>
<tr class="header">
<th><p>發行日（Date）</p></th>
<th><p>版本（Version）[1]</p></th>
<th><p>備註（Notes）</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>2004-06-30</p></td>
<td><p>1.0[2]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/C_Sharp_(programming_language)" title="wikilink">C#</a> 1.0 support</p></td>
</tr>
<tr class="even">
<td><p>2004-09-21</p></td>
<td><p>1.1[3]</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2006-11-09</p></td>
<td><p>1.2[4]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/C_Sharp_2.0" title="wikilink">C# 2.0</a> support</p></td>
</tr>
<tr class="even">
<td><p>2008-10-06</p></td>
<td><p>2.0[5]</p></td>
<td><p>Mono's APIs are now in par with .NET 2.0. Introduces the <a href="https://zh.wikipedia.org/wiki/C_Sharp_3.0" title="wikilink">C# 3.0</a> and Visual Basic 8 compilers. New Mono-specific APIs: MonoCecil, MonoCairo and MonoPosix. Gtk# 2.12 is released. The Gendarme verification tool and Mono Linker are introduced.</p></td>
</tr>
<tr class="odd">
<td><p>2009-01-13</p></td>
<td><p>2.2[6]</p></td>
<td><p>Mono switches its JIT engine to a new internal representation [7]that gives it a performance boost and introduces <a href="https://zh.wikipedia.org/wiki/SIMD" title="wikilink">SIMD</a> support in the MonoSimd [8]MonoSimd namespace.<br />
Mono introduces <a href="http://tirania.org/blog/archive/2008/Nov-05.html">Full Ahead of Time</a> compilation that allows developers to create full static applications and debuts the C# Compiler as a Service [9]and the C# Interactive Shell [10]（C# REPL）</p></td>
</tr>
<tr class="even">
<td><p>2009-03-30</p></td>
<td><p>2.4[11]</p></td>
<td><p>This release mostly polishes all the features that shipped in 2.2 and became the foundation for the Long-Term support of Mono in SUSE Linux.</p></td>
</tr>
<tr class="odd">
<td><p>2009-12-15</p></td>
<td><p>2.6[12]</p></td>
<td><p>The Mono runtime is now able to use LLVM as a code generation backend and this release introduces Mono co-routines, the Mono Soft Debugger and the CoreCLR security system required for Moonlight and other Web-based plugins.<br />
On the class library System.IO.Packaging, WCF client, WCF server, LINQ to SQL debut. The Interactive shell supports auto-completion and the LINQ to SQL supports multiple database backends. The xbuild build system is introduced.</p></td>
</tr>
<tr class="even">
<td><p>2010-09-22</p></td>
<td><p>2.8[13]</p></td>
<td><p>Defaults to .NET 4.0 profile, <a href="https://zh.wikipedia.org/wiki/C_Sharp_4.0" title="wikilink">C# 4.0</a> support, new generational garbage collector, includes , WCF Routing, <a href="../Page/契约式设计.md" title="wikilink">CodeContracts</a>, ASP.NET 4.0, drops the 1.0 profile support; the LLVM engine tuned to support 99.9% of all generated code, runtime selectable llvm and gc; incorporates <a href="https://zh.wikipedia.org/wiki/Dynamic_Language_Runtime" title="wikilink">Dynamic Language Runtime</a>, , <a href="../Page/ASP.NET_MVC_Framework.md" title="wikilink">ASP.NET MVC2</a>, OData Client open source code from Microsoft;. Will become release 3.0</p></td>
</tr>
<tr class="odd">
<td><p>2011-02-15</p></td>
<td><p>2.10[14]</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2012-10-18</p></td>
<td><p>3.0[15]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/C_Sharp_5.0" title="wikilink">C# 5.0</a> support, async support, Async Base Class Library Upgrade and MVC4 - Partial, no async features support.</p></td>
</tr>
<tr class="odd">
<td><p>2013-07-24</p></td>
<td><p>3.2[16]</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2014-05-31</p></td>
<td><p>3.4[17]</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2014-05-31</p></td>
<td><p>3.6[18]</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2014-09-04</p></td>
<td><p>3.8[19]</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2014-10-04</p></td>
<td><p>3.10[20]</p></td>
<td></td>
</tr>
</tbody>
</table>

## 目前的狀況與藍圖　

Mono目的的版本為3.10.0（2014年10月）。這個版本提供了.NET Framework的核心API、[Visual Basic .NET的支援](../Page/Visual_Basic_.NET.md "wikilink")、[C\#版本](../Page/C♯.md "wikilink")2.0,3.0，及4.0、[LINQ](https://zh.wikipedia.org/wiki/LINQ "wikilink") to Objects、[XML](../Page/XML.md "wikilink")及[SQL](../Page/SQL.md "wikilink")等。在[C\#編譯器的目前操作的預設模式是C](../Page/C♯.md "wikilink")\# 4.0。[Windows Forms](../Page/Windows_Forms.md "wikilink") 2.0也有被支援，但沒有積極地被開發，因此，它在Mono的支援不完整。Mono的目標是達成在.NET 4.0的完整功能支援，除了[Windows Presentation Foundation](../Page/Windows_Presentation_Foundation.md "wikilink")（WPF）和[Limited Windows Communication Foundation](https://zh.wikipedia.org/wiki/Limited_Windows_Communication_Foundation "wikilink")（WCF）。 在實驗性質mono的開發.NET Framework的一些遺失部份稱做[Olive](https://zh.wikipedia.org/wiki/Olive "wikilink") Mono專案也建立了[Visual Basic .NET編譯器與一個runtime的](../Page/Visual_Basic_.NET.md "wikilink")[VB.NET的應用程式](https://zh.wikipedia.org/wiki/VB.NET "wikilink")。它目前一直由[Rolf Bjarne Kvinge進行開發](https://zh.wikipedia.org/wiki/Rolf_Bjarne_Kvinge "wikilink")。

### Moonlight

[Moonlight是一個](https://zh.wikipedia.org/wiki/Moonlight "wikilink")[Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink") [Silverlight的開源實作](https://zh.wikipedia.org/wiki/Silverlight "wikilink")，自從Mono 1.9起即包含了這實作。在2009年1月20日釋出的Moonlight 1.0支援Silverlight 1.0 APIs。而Moonlight 2.0支援Silverlight 2.0。Moonlight 3.0則在2010年2月被發表，包含了Silverlight 3.0的支援。Moonlight最終在2012年3月29日被放棄。依據米格爾所言，兩個因素扼殺了這個專案的命運：[Microsoft增加了](https://zh.wikipedia.org/wiki/Microsoft "wikilink")“人为限制”...這造成了桌面程式無用武之地..."，並且在Web上的技術沒有獲得足夠的配合。

## Mono組成元件

Mono組成元件包含了以下三類：

1.  核心元件
2.  Mono/Linux/GNOME開發堆疊
3.  微軟相容堆疊

*核心元件*包含了C\# 編譯器，[Common Language Infrastructure虛擬機器](https://zh.wikipedia.org/wiki/Common_Language_Infrastructure "wikilink")，以及核心類別程式庫。這些元件都是基於[Ecma-334 and Ecma-335標準](https://zh.wikipedia.org/wiki/Ecma_International#Standards "wikilink"),\[21\]而使得Mono能夠提供與標準相容、免費、並且是開放原始碼的CLI [虛擬機器](../Page/虛擬機器.md "wikilink")。微軟曾經聲明這些標準都是基於[Community Promise license的社群保護承諾之下](https://zh.wikipedia.org/wiki/Microsoft_Open_Specification_Promise "wikilink")。\[22\]

*Mono/Linux/GNOME開發堆疊*則是提供了工具以用於開發應用軟體。這些工具使用了既有的[GNOME](../Page/GNOME.md "wikilink")以及[自由並且開放原始碼程式庫](https://zh.wikipedia.org/wiki/free_and_open_source_software "wikilink")，它們包含了針對[graphical user interface](https://zh.wikipedia.org/wiki/graphical_user_interface "wikilink")（GUI）開發的[Gtk\#](https://zh.wikipedia.org/wiki/Gtk_Sharp "wikilink")、可套用[Gecko rendering engine的Mozilla程式庫](https://zh.wikipedia.org/wiki/Gecko_\(layout_engine\) "wikilink")、Unix整合程式庫（Mono.Posix）、安全性推疊、以及XML schema語言[RelaxNG](https://zh.wikipedia.org/wiki/RelaxNG "wikilink")。Gtk\# 讓Mono應用程式融入Gnome桌面環境而成為原生程式。資料庫程式庫則提供了與物件關連式資料庫連結的能力，這些資料庫包含了 [db4o](https://zh.wikipedia.org/wiki/db4o "wikilink"), [Firebird](https://zh.wikipedia.org/wiki/Firebird_\(database_server\) "wikilink"), [Microsoft SQL Server](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")（MSSQL）, [MySQL](../Page/MySQL.md "wikilink"), [Open Database Connectivity](https://zh.wikipedia.org/wiki/Open_Database_Connectivity "wikilink")（ODBC）, [Oracle](https://zh.wikipedia.org/wiki/Oracle_database "wikilink"), [PostgreSQL](../Page/PostgreSQL.md "wikilink"), [SQLite](../Page/SQLite.md "wikilink")等等。在網站上可看見Mono專案一直都在持續更新維護資料庫程式庫。\[23\]

*微軟相容堆疊*則是提供了一種方式來使得Windows .NET應用程式可以被移植到GNU/Linux上。這個堆疊包含了[ADO.NET](../Page/ADO.NET.md "wikilink"), [ASP.NET](../Page/ASP.NET.md "wikilink")，以及[Windows Forms等等](../Page/Windows_Forms.md "wikilink")。不過，由於這些元件並沒有被上述所說[Ecma標準所涵蓋](https://zh.wikipedia.org/wiki/Ecma_International "wikilink")，因此部份元件有所謂[專利恐懼與疑慮的問題](https://zh.wikipedia.org/wiki/#Mono_and_Microsoft's_patents "wikilink")。

## 架构

[Mono_architecture.svg](https://zh.wikipedia.org/wiki/File:Mono_architecture.svg "fig:Mono_architecture.svg")

### 程式執行引擎

Mono程式的執行包含一個程式碼運作引擎，它會將ECMA CIL的byte code轉譯為原生碼（Native Code），它支援了以下處理器：[ARM](https://zh.wikipedia.org/wiki/ARM_architecture "wikilink"), [MIPS](https://zh.wikipedia.org/wiki/MIPS_architecture "wikilink")（只有32位元模式）, [SPARC](../Page/SPARC.md "wikilink"), [PowerPC](../Page/PowerPC.md "wikilink"), [S390](https://zh.wikipedia.org/wiki/S390 "wikilink")（64位元模式）, [x86](https://zh.wikipedia.org/wiki/x86 "wikilink"), [x86-64以及](https://zh.wikipedia.org/wiki/x86-64 "wikilink")[IA-64](https://zh.wikipedia.org/wiki/IA-64 "wikilink") 64位元模式。

程式的轉譯有三種模式：

  - Just-in-time (JIT)編譯：在程式執行當中將ECMA CIL的byte code轉譯為原生碼。
  - Ahead-of-Time (AOT)編譯：ECMA CIL的byte code（通常在.exe檔或.dll檔中）會轉譯出原生碼並儲存在作業系統中、以及CPU架構設定檔（例如在Linux上，如果是foo.exe，就會產生foo.exe.so檔）。通常，此種模式可產生出絕大部份前種模式所產生的原生碼，部份的例外是[trampolines或是控管監督相關的碼](https://zh.wikipedia.org/wiki/Trampoline_\(computers\) "wikilink")（仍舊需要JIT來執行），由此可知AOT影像檔並非可以完全獨立執行的。

<!-- end list -->

  - 完全靜態編譯：這個模式只支援少數平台，它基於AOT編譯模式上，更進一步產生所有的trampoline、[wrappers以及](https://zh.wikipedia.org/wiki/Wrapper_function "wikilink")[proxies](https://zh.wikipedia.org/wiki/Proxy_pattern "wikilink")，這幾樣東西是用於靜態連結出靜態檔案時所需。完全靜態編譯模式可以讓程式的執行期完全不需要用到JIT，這個做法適用於[Apple iOS作業系統](https://zh.wikipedia.org/wiki/IOS_\(Apple\) "wikilink")、Sony [PlayStation 3以及微軟的](../Page/PlayStation_3.md "wikilink")[XBox 360等作業系統](https://zh.wikipedia.org/wiki/XBox_360 "wikilink")。

從2.6版起，Mono開始支援使用[LLVM](../Page/LLVM.md "wikilink")來產生執行碼，而非原本自帶的方式。這對於高效能計算方面非常有用，因為在這種場合下，程式的執行效能比啟動速度來得重要。

從2.7 Preview版開始，使用者不再需要在程式編譯前的Configuration時就必須選定執行碼產生引擎，執行碼的產生可以在程式啟動時以`--llvm`或`--nollvm`的參數來指定即可，預設是以自帶的引擎為主，因為它的產生速度比較快。

### 垃圾回收

當2.8版推出時，Mono runtime提供了兩套[垃圾回收器](https://zh.wikipedia.org/wiki/garbage_collector_\(computer_science\) "wikilink")：generational collector\[24\]以及Boehm conservative collector。在Mono 3.1.1版之前，預設的垃圾回收器（*[Boehm-Demers-Weiser Conservative Garbage Collector](../Page/貝姆垃圾收集器.md "wikilink")*），\[25\]\[26\]跟商業環境如[Java Virtual Machine或](https://zh.wikipedia.org/wiki/Java_Virtual_Machine "wikilink").NET framework的垃圾回收器相比，一直有很大的限制，在某些狀況的應用軟體上會發生[内存泄漏](../Page/内存泄漏.md "wikilink")的現象，這使得Mono無法用於需要長時間執行的伺服器應用。

，一個稱之為*Simple Generational GC*（SGen-GC）的新一代垃圾回收器開始用於Mono中，在3.1.1版之後就直接變成是預設的垃圾回收器。對於Mono 2.8到3.1.0，使用者可以以傳入參數`--gc=sgen`來讓Mono runtime啟動時使用SGen垃圾回收器。\[27\]這個新的垃圾回收器相較於傳統基於保守型掃描方式的回收器，有很多優點，它使用了[generational garbage collection](https://zh.wikipedia.org/wiki/garbage_collection_\(computer_science\)#Generational_GC_\(ephemeral_GC\) "wikilink")，從物件一開始被配置、到各個週期，所有活著的物件都會被轉移到較早代的記憶體池，這個想法是來自於因為許多物件都只是短暫使用的，因此可以被快速回收再利用，只有少數物件是長期性的存活在應用程式的整個生命期中。另外，為了改善效率，這個回收器對每個執行緒配置了個別的記憶體池，讓執行緒不需要跟別的執行緒打交道就可以自行配置記憶體區塊。對於前述所說，物件的轉移到較早代記憶體池的做法則是，在轉移之後，將所有目前指向該物件的指標都更新為新的位址。由於這樣的做法在大型物件時比較浪費記憶體，因此SGen為大型物件使用了獨自的記憶體池（Large Object Section），並且對這些物件使用mark-and-sweep演算法。

目前SGen是以比較保守的方式來對待堆疊與暫存器，並且，那些可被參考到的物件是由它們的root來負責pin的動作。未來版本的Mono將會以精確方式來掃描託管的堆疊，藉此減少那些被pin的物件。

### 類別庫

**類別庫**为应用程序开发提供一套广泛而有效的工具类。这些工具类可以用于任何.NET语言。類別庫被按命名空间进行了结构化，并被放置于称为程序集的共享库中。在我们谈到.NET Framework时，我们多数是指这个类库。

#### 命名空间和程序集

**命名空间**是一种用于将逻辑上相似的类按层次结构分组的机制。这种机制防止了命名冲突。在这种结构化采用被点号"."分隔的单词来实现。通常最顶层的命名空间是System，例如System.IO和System.Net（完整的命名空间列表可以在[Mono文档](http://www.go-mono.com/docs/)中找到）。当然还有别的顶层命名空间，例如Accessibility和Windows就是这样的例子。新建的命名空间还可以以开发组织的名字开头。

**程序集**是这些类库的物理载体。它们跟Win32共享库一样都是dll文件，尽管不完全一样。一些程序集的例子有：mscorlib.dll，System.dll，System.Data.dll和Accessibility.dll。命名空间经常被分拆到几个程序集中，而一个程序集可以由几个文件组成。

### 公共语言基础和公共语言规范

**公共语言基础**（Common Language Infrastructure，CLI）是一套标准（ECMA335），公共语言运行时（Common Language Runtime）即CLR是CLI标准的实现，Mono是实现者之一。该运行时用于执行已编译的.NET应用程序。公共语言基础已被ECMA定义为标准ECMA-335。要运行一个.NET应用程序，你必须使用相应的参数调用运行时。

在ECMA-335的第六章详细说明了**公共语言规范**（Common Language Specification，CLS）并定义了提供给公共语言基础的接口，例如对于枚举类型的隐含表示类型的协定。Mono的编译器负责生成符合公共语言规范的映射代码，即公共中间语言（Common Intermediate Language，CIL）。Mono的运行时将运行这类代码。ECMA标准先前还定义了一个符合公共语言规范的程序库作为应用框架。

### 托管与非托管代码

在原生的.NET/Mono应用程序中，所有代码都是[托管的](https://zh.wikipedia.org/wiki/托管 "wikilink")，也就是说，是受管于CLI式的内存管理和线程安全管理的。其它的.NET或Mono应用程序可以通过使用System.InterOpServices库创建C\#绑定来调用已存的非托管代码。很多移植到Mono的类库使用了CLI的这个特性，例如Gtk\#。

### 相关项目

现有大量与Mono相关的用于扩展Mono的项目，这些项目允许开发者在他们的开发环境中使用Mono。这些项目包括：

  - [Cocoa\#](http://www.cocoasharp.org/)，对原生Mac OS X工具包的一系列包装（[Cocoa](https://zh.wikipedia.org/wiki/Cocoa_\(API\) "wikilink")）。
  - Gecko\#，一个对在Mozilla中使用的嵌入式布局引擎的绑定（[Gecko](https://zh.wikipedia.org/wiki/Gecko_\(layout_engine\) "wikilink")）。
  - [Gtk\#](https://zh.wikipedia.org/wiki/Gtk_Sharp "wikilink")，对使用[C的](https://zh.wikipedia.org/wiki/C语言 "wikilink")[GTK+库的C](https://zh.wikipedia.org/wiki/GTK+ "wikilink")\#的外包。
  - [Tao](https://zh.wikipedia.org/wiki/Tao_\(software\) "wikilink")，一个图形及游戏库的绑定。

## 授權

Mono是透過Xamarin的雙重授權，相似於其他產品，如[Qt](../Page/Qt.md "wikilink")和Mozilla application Suite。Mono's C\#編譯器與工具是依照GNU Leasser General Public License（LGPLv2 only）來釋出（開始於Mono 2.0，Mono C\#的編譯器源碼在MIT X11 License仍然是有效的），屬於GNU Leasser General Public License（LGPLv2 only）的runtime函式庫及屬於MIT X11 License的類別函式庫。

有完全免費的軟體與開源授權，因此Mono是免費的開源軟體。

C\#編譯器的授權改變是從[GPL到](https://zh.wikipedia.org/wiki/GPL "wikilink")[MIT X11授權](https://zh.wikipedia.org/wiki/MIT_X11 "wikilink")，允許編譯器的程式碼在少許的GPL限制例子中被重複使用，如例：

  - 作為服務的Mono編譯器

` * Mono互動介面的Shell`
` * Mono可崁入的的C#編譯器`

  - Mono的C\# 4.0的動態綁定的實作
  - MonoDevelop的內建parser和[AST圖](https://zh.wikipedia.org/wiki/AST "wikilink")

## Mono与微软的专利

人们对于微软能否采用专利摧毁Mono项目进行了大量的争论。其实，专利问题不在于已被提交到[ECMA组织的核心技术或Unix](https://zh.wikipedia.org/wiki/ECMA "wikilink")/Gnome的专有部分，而在于由微软基于.NET Framework创建的技术，例如[ASP.NET](../Page/ASP.NET.md "wikilink")，[ADO.NET](../Page/ADO.NET.md "wikilink")和[Windows Forms](../Page/Windows_Forms.md "wikilink")。这些技术在Mono中至今还没有被完全地实现，事实上，在开发Mono应用程序时也不需要用到，然而，在开发基于Windows平台的程序时却是不可缺少的。Mono团队将目标定为将这些技术纳入到项目中，并制订了一个三步驟策略来处理它们：

1.  采用其它实现方式来实现从而绕过专利问题
2.  把包含专利的代码清除出项目
3.  找出“现有技术（[prior art](https://zh.wikipedia.org/wiki/prior_art "wikilink")）”从而将专利变为非专利

显然，第一个选项并不总是可行的。对于一些问题，例如那些与协同工作和交互相关的，可能就只有一种解决方案。由于这个相同的原因，尽管第二个选项总是可行的，它却可能导致一个开发出来的产品并不能作为.NET的替代品。第三个选项则是昂贵的，甚至不可能的，这需要一定程度的运气。

## 使用Mono开发的软件

[F-Spot_screenshot.png](https://zh.wikipedia.org/wiki/File:F-Spot_screenshot.png "fig:F-Spot_screenshot.png") [Muine.png](https://zh.wikipedia.org/wiki/File:Muine.png "fig:Muine.png") 以下是使用Mono [API和](https://zh.wikipedia.org/wiki/应用程序编程接口 "wikilink")[C\#编写的部分程序](https://zh.wikipedia.org/wiki/C＃ "wikilink")：

  - [Banshee](../Page/Banshee.md "wikilink")是一个用于[GNOME](../Page/GNOME.md "wikilink")的音乐管理和播放软件。
  - [Beagle是一个](https://zh.wikipedia.org/wiki/Beagle_\(软件\) "wikilink")[桌面搜索软件](https://zh.wikipedia.org/wiki/桌面搜索 "wikilink")。
  - [Blam\!是一个](https://zh.wikipedia.org/wiki/Blam! "wikilink")[RSS](../Page/RSS.md "wikilink") [新闻聚集器](https://zh.wikipedia.org/wiki/新闻聚集器 "wikilink")，特别适合于阅读如[Planet Gnome](http://planet.gnome.org/)这样的[行星](http://planetplanet.org/)资讯。
  - [Bless](http://home.gna.org/bless/)是一个[十六进制编辑器](../Page/十六进制编辑器.md "wikilink")。
  - [CDCollect](http://cdcollect.sourceforge.net/index.php)是一个[CD](../Page/CD.md "wikilink") [编目应用程序](https://zh.wikipedia.org/wiki/编目 "wikilink")。
  - [Diva是一个用于GNOME的视频编辑器](https://zh.wikipedia.org/wiki/Diva_\(software\) "wikilink")。
  - [F-Spot](../Page/F-Spot.md "wikilink")是有个由[Novell](../Page/Novell.md "wikilink")开发的图片便捷管理程序。
  - [Fidder](https://www.telerik.com/fiddler)是一个强大的[Web](https://zh.wikipedia.org/wiki/Web "wikilink") [抓包工具](https://zh.wikipedia.org/wiki/抓包 "wikilink")，与[Charles齐名](https://zh.wikipedia.org/wiki/Charles "wikilink")。
  - [Galaxium](http://galaxium.sourceforge.net/index.html)是一个[MSN](../Page/MSN.md "wikilink") [即时通讯软件客户端](https://zh.wikipedia.org/wiki/即时通讯软件 "wikilink")。
  - [GLyrics](https://web.archive.org/web/20050404141520/http://zapdos.codemonkey.cl/glyrics/)是一个[歌词搜索器](https://zh.wikipedia.org/wiki/歌词 "wikilink")。
  - [Gpremacy](http://gpremacy.nongnu.org/)是以Mono/Gtk\# 實作的[圖版遊戲](../Page/圖版遊戲.md "wikilink")Supremacy
  - [iFolder 3](https://zh.wikipedia.org/wiki/iFolder "wikilink")（by Novell）让你使用点对点协议（[peer-to-peer](https://zh.wikipedia.org/wiki/peer-to-peer "wikilink")）或Novell的群集服务器产品与其它计算机和用户共享文件。
  - [imeem](http://www.imeem.com/)一個社交網路軟體。Mac版本的用戶端和伺服器使用Mono運行，而Windows版本的用戶端仰賴於Microsoft.Net
  - [KeePass](../Page/KeePass.md "wikilink")是一款開源的密碼管理器。
  - [MindFire](https://web.archive.org/web/20060428223812/http://www.icebreaker.net/mindfire/)是一个用于辅助速读（[speed reading](https://zh.wikipedia.org/wiki/Rapid_Serial_Visual_Presentation "wikilink")）的跨平台电子书阅读器
  - [MonoDevelop](../Page/MonoDevelop.md "wikilink")是一个用于创建Mono应用程序的[集成开发环境](../Page/集成开发环境.md "wikilink")。该软件原先是[SharpDevelop](../Page/SharpDevelop.md "wikilink")向[Gtk\#的一个移植](https://zh.wikipedia.org/wiki/Gtk_Sharp "wikilink")，而现今该软件已独立开发。该软件在Windows上有测试版的可用版本。
  - [Pinta](../Page/Pinta.md "wikilink")是一个简单的[位图形编辑软件](https://zh.wikipedia.org/wiki/位图形编辑软件 "wikilink")。

## 分支版本

2011年4月，[Novell](../Page/Novell.md "wikilink")公司被公司所併購，而原先在Novell公司裡的Mono開發者被大量資遣。2011年5月，原先Mono的開發者另外成立一家[Xamarin的公司](https://zh.wikipedia.org/wiki/Xamarin "wikilink")，仿Mono發行他們的Xamarin跨平台.NET套件，在Windows下能與整合到[Microsoft Visual Studio的IDE之中](../Page/Microsoft_Visual_Studio.md "wikilink")。2011年7月，公司旗下的[Novell](../Page/Novell.md "wikilink")公司批准了Mono相關專案到Xamarin的授權。

## 备注

1.  For more information about the licensing, see [Mono FAQ: Licensing](http://www.mono-project.com/FAQ:_Licensing#Licensing)

## 参考文献

  - *This article incorporates text from Mono's [homepage](http://www.mono-project.com/)，which is in the [GNU Free Documentation License](https://zh.wikipedia.org/wiki/GNU_Free_Documentation_License "wikilink").*

  -
<!-- end list -->

  -
## 外部链接

  - [GotMono?,](http://www.gotmono.com) Mono community homepage
  - [Mono Forum](https://web.archive.org/web/20060624051316/http://www.nabble.com/Mono-f1367.html)
  - [Mono Live](http://mono-live.org/)，LiveCD website
  - [Running .NET on Linux or Windows](https://web.archive.org/web/20041125084433/http://bdn.borland.com/article/0,1410,32056,00.html)
  - [Ximian Forum](https://web.archive.org/web/20060411193721/http://www.nabble.com/Ximian-f1406.html)
  - [Slashdot: Fedora Core 5 includes Mono](http://linux.slashdot.org/article.pl?sid=06/01/10/139255&tid=131&tid=106)
  - [Novell, Inc.](http://www.novell.com/)

<!-- end list -->

  - 国际站点

<!-- end list -->

  - [Mono France](https://web.archive.org/web/20060106132306/http://pascalfresnay.free.fr/monoweb/wiki/)，A French Mono WebSite
  - [MonoBrasil](https://web.archive.org/web/20070704093741/http://monobrasil.softwarelivre.org/)，A Brazilian Mono WebSite
  - [MonoColombia](https://web.archive.org/web/20051125203753/http://www.monocolombia.com/wiki/doku.php)，A Colombian Mono WebSite
  - [MonoGermany](http://www.mono-project.de)，A German Mono WebSite
  - [MonoHispano](http://www.monohispano.es)，A Spanish Mono community
  - [Japanese Mono](https://web.archive.org/web/20060616184831/http://monkey.workarea.jp/trans/mono/) Mono web site translation to Japanese.
  - [MonoPoland](https://web.archive.org/web/20060420001938/http://www.go-mono.pl/)，Polish Mono Web site.
  - [Mono Netherlands](https://web.archive.org/web/20060409231042/http://www.go-mono.nl/)，Dutch Mono site.

{{-}}

[Category:计算平台](https://zh.wikipedia.org/wiki/Category:计算平台 "wikilink") [Category:程序设计工具](https://zh.wikipedia.org/wiki/Category:程序设计工具 "wikilink") [Category:.NET](https://zh.wikipedia.org/wiki/Category:.NET "wikilink") [Category:Novell軟件](https://zh.wikipedia.org/wiki/Category:Novell軟件 "wikilink")

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