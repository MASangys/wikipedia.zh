**Windows Embedded Compact**（曾被稱為Microsoft Windows CE），為[微軟研發的](https://zh.wikipedia.org/wiki/微軟 "wikilink")[嵌入式作業系統](https://zh.wikipedia.org/wiki/嵌入式作業系統 "wikilink")，可以應用在各種[嵌入式系統](https://zh.wikipedia.org/wiki/嵌入式系統 "wikilink")，或是硬體規格較低的電腦系統（例如很少的記憶體，較慢的[中央處理器等](https://zh.wikipedia.org/wiki/中央處理器 "wikilink")）。微軟並未定義CE縮寫由來，一般解釋則有Compact Edition、Customer Embedded、Consumer Electronics等等。在2008年4月15日舉行的嵌入式系统大会上，微軟宣布將Windows CE更名為Windows Embedded Compact，與[Windows Embedded Enterprise](https://zh.wikipedia.org/wiki/Windows_Embedded_Enterprise "wikilink")、[Windows Embedded Standard和](https://zh.wikipedia.org/wiki/Windows_Embedded_Standard "wikilink")[Windows Embedded POSReady組成](https://zh.wikipedia.org/wiki/Windows_Embedded_POSReady "wikilink")[Windows Embedded系列產品](https://zh.wikipedia.org/wiki/Windows_Embedded "wikilink")。\[1\]

## 概覽

[Tektronix_Y400_NetTek_Analyzer_20150519_104452.jpg](https://zh.wikipedia.org/wiki/File:Tektronix_Y400_NetTek_Analyzer_20150519_104452.jpg "fig:Tektronix_Y400_NetTek_Analyzer_20150519_104452.jpg") Windows CE 1.0最早於1996年推出，是单色的[Windows 95简化版本](../Page/Windows_95.md "wikilink")。

1997年Fall Comdex大會上公佈的Windows CE 2.0仍是基於Win95的作業系統，效率遠高於1.0版。

Windows CE 3.0是微软的Windows Compact Edition，已擺脫舊有的Windows 95简化格式，是一套全新的作業系統，支持5種CPU：[x86](https://zh.wikipedia.org/wiki/x86 "wikilink")、[PowerPC](../Page/PowerPC.md "wikilink")、[ARM](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")、[MIPS](../Page/MIPS架構.md "wikilink")、[SH3/4](https://zh.wikipedia.org/wiki/SH3/4 "wikilink")。並且改名为Windows for Pocket PC，简称Pocket PC。

2002年1月微軟又推出Windows CE.Net，即Windows CE 4.0。

2004年5月份推出Windows CE 5.0，开放有250萬行原始碼。

2006年11月，微软推出Windows Embedded CE 6.0。

2010年10月，微软推出 Windows Phone 7，Windows Embedded Compact 7。

Windows CE可以使用在各式各樣的系統上，最有名的是[Pocket PC以及微軟的](../Page/Pocket_PC.md "wikilink")[SmartPhone](https://zh.wikipedia.org/wiki/SmartPhone "wikilink")。其他較不為人知的裝置包括微軟的[车载电脑](https://zh.wikipedia.org/wiki/车载电脑 "wikilink")、[机顶盒](https://zh.wikipedia.org/wiki/机顶盒 "wikilink")、生產線上的控制設備、公共場所的[資訊站](https://zh.wikipedia.org/wiki/資訊站 "wikilink")（[Kiosk](https://zh.wikipedia.org/wiki/Kiosk "wikilink")）、[電子辭典及](https://zh.wikipedia.org/wiki/電子辭典 "wikilink")[导航仪等等](https://zh.wikipedia.org/wiki/导航仪 "wikilink")，有些裝置甚至沒有任何人機介面。

Windows CE並非從桌上型電腦的Windows（NT，98，XP……）修改縮小而來，而是使用一套完全重新設計的核心，所以它可以在功能非常有限的硬體上執行。雖然核心不同，但是它卻提供了高度的Win32 API軟體開發介面的相容性，功能有内存管理、文件操作、多线程、网络功能等。因此，開發桌上型電腦軟體的人可以很容易編寫甚或直接移植軟體到Windows CE上。

一個與其他微軟作業系統的差異是Windows CE提供原始碼，首先已經提供了原始碼給部分廠商，讓廠商能夠依照他們自己的硬體架構修改原始碼， 例如在Windows CE的開發IDE軟體Platform Builder中就提供了許多開放原碼的常用軟體元件，但是一些與硬體架構的軟體元件仍然以二進制檔案形式來提供。

## 版本

[Windows_CE_Timeline.png](https://zh.wikipedia.org/wiki/File:Windows_CE_Timeline.png "fig:Windows_CE_Timeline.png")

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>改動</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>1.0</p></td>
<td><p>發佈於1996年11月[MSCE1]。 [2]代號Pegasus。[3]</p>
<ul>
<li>使用該OS的設備被命名為「handheld PC」〈HPC〉。[4]</li>
</ul></td>
</tr>
<tr class="even">
<td><p>2.0</p></td>
<td><p>發佈於1997年9月[MSCE2]。[5]代號Mercury/Gryphon/Apollo/Alder/Alder EP/Birch/Birch SP2/Jupiter/Wyvern/Goldeneye。[6]</p>
<ul>
<li>以Palm-sized PC/Pocket PC為名的設備出現。[7]</li>
<li>即時排程演算法。</li>
<li>支援系統架構：ARM，MIPS，PowerPC，StrongARM，SuperH及x86。</li>
<li><a href="../Page/色彩深度.md" title="wikilink">32-bit彩色螢幕</a>。</li>
<li>SSL 2.0及SSL 3.0。</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>3.0</p></td>
<td><p>發佈於2000年六月[MSCE3]。[8]代號Cedar。[9]</p>
<ul>
<li>針對核心進行重寫使CE的即時性推進至微秒層級。[10]</li>
<li>Pocket PC 2000，Pocket PC 2002及Smartphone 2002的基礎。[11]</li>
<li>優先級數從8增加至256。[12]</li>
<li>系統物件數從65 536增加至4億1900多萬。[13]</li>
<li>使用特殊的APIs對系統進行存取，對登錄檔的寫操作也被限制在部分區域。[14]</li>
</ul></td>
</tr>
<tr class="even">
<td><p>4.x</p></td>
<td><p>發佈於2002年1月。[MSCE4]。[15]代號Talisker/Jameson/McKendric。[16]</p>
<ul>
<li>更改部份驅動結構并增加新功能。[17]</li>
<li>以"Pocket PC 2003"為基礎。[18]</li>
<li>提供藍牙支持。[19][20]</li>
<li>支持TLS（SSL 3.1），IPsec L2TP VPN、Kerberos。[21]</li>
</ul></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Windows_CE_5.0.md" title="wikilink">5.0</a></p></td>
<td><p>發佈于2004年8月。[22]新增了許多功能。[23]代號"Macallan".[24]</p>
<ul>
<li>自動向生產商發送錯誤報告。[25]</li>
<li>移動式<a href="https://zh.wikipedia.org/wiki/Microsoft_Direct3D" title="wikilink">Direct3D</a>，一個基於COM的Windows XP DirectX多媒體API版本。[26]</li>
<li>2D圖形DirectDraw和攝像頭與影片的DirectShow數字化支持。[27]</li>
<li>支持Remote Desktop Protocol（RDP）。[28]</li>
</ul></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Windows_CE_6.0" title="wikilink">6.x</a></p></td>
<td><p>發佈於2006年9月。代號"Yamazaki".[29]</p>
<ul>
<li>進程地址空間從32 MB增加至1 GB</li>
<li>進程數目從32增加至768[30]</li>
<li>可以使用用戶模式和內核模式的設備驅動。</li>
<li>Device.exe, filesys.exe, GWES.exe被轉移至內核模式中。</li>
<li>SetKMode and set process permissions not possible.</li>
<li>增強系統調用的性能。[31]</li>
</ul></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Windows_CE_7.0" title="wikilink">7.x</a></p></td>
<td><p>7.0 發佈於2010年10月。7.5 發佈於2011年9月 詳見<a href="https://zh.wikipedia.org/wiki/Windows_Phone_7" title="wikilink">Windows Phone 7</a></p>
<ul>
<li><a href="https://zh.wikipedia.org/wiki/多核心" title="wikilink">雙核心處理器支援</a>（<a href="https://zh.wikipedia.org/wiki/對稱多處理" title="wikilink">SMP</a>、<a href="https://zh.wikipedia.org/wiki/ARM架構" title="wikilink">ARMv6</a>）</li>
<li>WIFI定位系統</li>
<li><a href="../Page/藍牙.md" title="wikilink">藍牙</a>3.0 + HS</li>
<li>Cellcore</li>
<li>DLNA（<a href="https://zh.wikipedia.org/wiki/數位生活網路聯盟" title="wikilink">數位生活網路聯盟</a>）</li>
<li><a href="https://zh.wikipedia.org/wiki/數位版權管理" title="wikilink">數位版權管理</a></li>
<li><a href="https://zh.wikipedia.org/wiki/媒體傳輸協議" title="wikilink">媒體傳輸協議</a></li>
<li>IE8 Rendering Rich Media Plug-Ins</li>
<li><a href="https://zh.wikipedia.org/wiki/NDIS" title="wikilink">NDIS</a> 6.1支援</li>
<li>UX C++ <a href="../Page/XAML.md" title="wikilink">XAML</a> API如使如Windows Presentation Foundation和Silverlight的用戶界面</li>
<li>更佳<a href="../Page/觸控式螢幕.md" title="wikilink">觸摸和</a><a href="https://zh.wikipedia.org/wiki/手勢識別" title="wikilink">手勢輸入</a></li>
</ul></td>
</tr>
</tbody>
</table>

CE v3.0是Pocket PC 2002的基礎. CE v3.0的下代為CE.net. \[32\] "PocketPC \[是\]核心Windows CE OS上的一整層程式... Pocket PC以Windows CE為基礎，但分發的方式不太一樣.". Pocket PC的使用證書禁止修改WinCE的程式.\[33\]

## 功能

停产前最新的**Windows CE**為[Windows CE 7.0](https://zh.wikipedia.org/wiki/Windows_CE_7.0 "wikilink")，這個版本在核心部分支援： [缩略图](https://zh.wikipedia.org/wiki/File:Windows_mobile.jpg "fig:缩略图")

  - 雙核心處理器支援（SMP、ARMv6）
  - WIFI定位系统
  - 藍牙3.0 + HS
  - [Cellcore](https://zh.wikipedia.org/wiki/Cellcore "wikilink")
  - [DLNA](https://zh.wikipedia.org/wiki/DLNA "wikilink")（數位生活網路聯盟）
  - [數位版權管理](https://zh.wikipedia.org/wiki/數位版權管理 "wikilink")（DRM）
  - [媒體傳輸協議](https://zh.wikipedia.org/wiki/媒體傳輸協議 "wikilink")（MTP）
  - IE8 Rendering Rich Media Plug-Ins
  - NDIS 6.1支援
  - UX C++ XAML API如使如Windows Presentation Foundation和Silverlight的用戶界面
  - 更佳觸摸和手勢輸入

在開發環境上，微軟也提供相容於[.NET Framework的開發元件](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")：[.NET Compact Framework](../Page/.NET_Compact_Framework.md "wikilink")，讓正在學習[.NET或已擁有](https://zh.wikipedia.org/wiki/.NET "wikilink")[.NET程式開發技術的開發人員能迅速而順利的在搭載](https://zh.wikipedia.org/wiki/.NET "wikilink")**Windows CE .NET**系統的裝置上開發[應用程式](https://zh.wikipedia.org/wiki/應用程式 "wikilink")。

用于掌上电脑[Pocket PC以及](../Page/Pocket_PC.md "wikilink")[智能手机](../Page/智能手机.md "wikilink")[Smart Phone上的Windows](https://zh.wikipedia.org/wiki/SmartPhone "wikilink") CE系统称为[Windows Mobile](../Page/Windows_Mobile.md "wikilink")，目前成熟的最新版本为[Windows 10 Mobile](../Page/Windows_10.md "wikilink")。

在2009年10月6日，[Windows Mobile亦正式改名為](../Page/Windows_Mobile.md "wikilink")[Windows Phone](../Page/Windows_Phone.md "wikilink").

## 開發工具

Windows CE可支援[MFC](https://zh.wikipedia.org/wiki/MFC "wikilink")，[ATL](https://zh.wikipedia.org/wiki/Active_Template_Library "wikilink")，[STL](https://zh.wikipedia.org/wiki/STL "wikilink")，[COM](https://zh.wikipedia.org/wiki/COM "wikilink")，[ActiveX](../Page/ActiveX.md "wikilink")，以及[.NET Compact Framework](../Page/.NET_Compact_Framework.md "wikilink")。開發工作可以分為：

  - [Platform Builder](https://zh.wikipedia.org/wiki/Platform_Builder "wikilink"):這個工具是一個編譯平台（BSP + 作業系統核心）、驅動程式以及應用程式，是一個可以做單部執行的開發環境，也可以用來傳送SDK到目標平台再搭配另外一個下面的工具來使用。

<!-- end list -->

  - [Free Pascal](../Page/Free_Pascal.md "wikilink") and [Lazarus](../Page/Lazarus.md "wikilink"):版本2.2.0以后的Free Pascal都有Windows CE支持（包括ARM和x86）。随后，Windows CE头文件也被翻译，供Lazarus（一个基于Free Pascal的快速应用开发（RAD）软件包）使用。用户可以使用Lazarus IDE来设计Windows CE应用程序，并通过交叉编译器（cross-compiler）生成用于Windows CE的可执行文件。

<!-- end list -->

  - [Embedded Visual C++](https://zh.wikipedia.org/wiki/Embedded_Visual_C++ "wikilink")（eVC）這是一個用於開發基於Windows CE作業系統嵌入式應用程式的工具，這個工具可以使用由[Platform Builder輸出的SDK](https://zh.wikipedia.org/wiki/Platform_Builder "wikilink")。

<!-- end list -->

  - [Visual C++](https://zh.wikipedia.org/wiki/Visual_C++ "wikilink") 2005/2008/2010其中Platform Builder 6.0 for Windows Embedded CE被改寫成Visual Studio 2005的一個插件。

## 限制

  - Windows CE為UNICODE作業系統，但char不必改為TCHAR，WCHAR，因為Windows CE也支援非Unicode編程。
  - Windows CE不支援重叠I/O。
  - WinCE的許多APIs功能都受限，如CreateThread函数在许多参数在Windows CE下都不支持，第1、2、5的參數值必須设为NULL或0。

<!-- end list -->

``` c++
  HThread = CreateThread（NULL, 0, Thread, nParameter, 0, &dwThreadID);
```

## 參見

  - [微軟操作系统列表](https://zh.wikipedia.org/wiki/微軟操作系统列表 "wikilink")

## 參考文獻

{{-}}

[Category:Windows_CE](https://zh.wikipedia.org/wiki/Category:Windows_CE "wikilink") [Category:实时操作系统](https://zh.wikipedia.org/wiki/Category:实时操作系统 "wikilink")

1.  [Microsoft Charts Its Road Map for Windows Embedded Business](http://www.microsoft.com/presspass/press/2008/apr08/04-15RoadMapEmbeddedPR.mspx)

2.   090517 2000grad.com

3.   090517 blogs.msdn.com

4.
5.
6.
7.
8.
9.
10. [Talk:Microsoft Windows CE\#Is Windows CE a trimmed down version of desktop Windows ???](https://zh.wikipedia.org/wiki/Talk:Microsoft_Windows_CE#Is_Windows_CE_a_trimmed_down_version_of_desktop_Windows_??? "wikilink") 090517

11.
12.
13.
14.
15.
16.
17.
18.
19.
20.  090517 pencomputing.com

21.
22.
23.
24.
25.  090517 theregister.co.uk

26.
27.
28.  090517 seditaville.com

29.
30.  090517 embedded.net.nz

31.  090517 windowsfordevices.com

32.
33.  090517 theregister.co.uk