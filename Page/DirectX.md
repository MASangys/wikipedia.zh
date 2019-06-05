**DirectX**（，[縮寫](../Page/縮寫.md "wikilink")：）是由[微软公司建立的一系列專為多媒體以及遊戲開發的](../Page/微软.md "wikilink")[應用程式介面](https://zh.wikipedia.org/wiki/應用程式介面 "wikilink")。旗下包含[Direct3D](../Page/Direct3D.md "wikilink")、[Direct2D](../Page/Direct2D.md "wikilink")、[DirectCompute等等多個不同用途的子部份](../Page/DirectCompute.md "wikilink")，因為這一系列[API皆以Direct字樣開頭](https://zh.wikipedia.org/wiki/API "wikilink")，所以DirectX（只要把X字母替換為任何一個特定API的名字）就成為這一巨大的API系列的統稱。目前最新版本為DirectX
12，隨附於Windows 10作業系統之上。

DirectX被广泛用于Microsoft Windows、Microsoft
Xbox电子游戏开发，并且-{只}-能支持这些平台。除了遊戲開發之外，DirectX亦被用於開發許多虛擬三維圖形相關軟體。[Direct3D是DirectX中最廣為應用的子模塊](../Page/Direct3D.md "wikilink")，所以有時候這兩個名詞可以互相代稱。

DirectX主要基於[C++编程语言实现](../Page/C++.md "wikilink")，遵循[COM架構](https://zh.wikipedia.org/wiki/COM "wikilink")。

## 元件

DirectX組成的元件有：

  - [Direct3D](../Page/Direct3D.md "wikilink")：主要用於繪製[3D图形](../Page/三维计算机图形.md "wikilink")。
  - [Direct2D](../Page/Direct2D.md "wikilink")：主要提供2D動畫的硬體加速，為[DirectDraw的替代者](https://zh.wikipedia.org/wiki/DirectDraw "wikilink")。
  - [DirectWrite](../Page/DirectWrite.md "wikilink")：主要字體顯示API，提供使用GPU令字體顯示更為平滑，類似[ClearType](../Page/ClearType.md "wikilink")（只支援於[Windows
    Vista](../Page/Windows_Vista.md "wikilink")/[7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")/[8](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")/[8.1以上](../Page/Windows_8.1.md "wikilink")）。
  - [DirectInput](https://zh.wikipedia.org/wiki/DirectInput "wikilink")：用于结合键盘、鼠标、摇杆，或其它的游戏控制器。
  - [XInput](https://zh.wikipedia.org/wiki/XInput "wikilink")：主要用於[Xbox360的控制器](https://zh.wikipedia.org/wiki/Xbox360 "wikilink")。
  - [XAudio2](https://zh.wikipedia.org/wiki/XAudio2 "wikilink")：主要用於低延遲遊戲音頻播放。
  - [DirectCompute](../Page/DirectCompute.md "wikilink")：[GPU](https://zh.wikipedia.org/wiki/GPU "wikilink")[通用计算API](https://zh.wikipedia.org/wiki/通用计算 "wikilink")。
  - [DirectXMath](https://zh.wikipedia.org/wiki/DirectXMath "wikilink")：針對遊戲優化的高速數學運算API，特別支持單精度浮點運算及矩陣運算，使用SSE2指令集。
  - [DirectSetup](https://zh.wikipedia.org/wiki/DirectSetup "wikilink")：用於DirectX元件的安裝，以及檢查DirectX的版本。
  - [DirectX
    Media](https://zh.wikipedia.org/wiki/DirectX_Media "wikilink")：包含DirectAnimation可用於2D的網頁動畫，[DirectShow可支援多媒體錄音以及資料](../Page/DirectShow.md "wikilink")[流媒體](https://zh.wikipedia.org/wiki/流媒體 "wikilink")，DirectX在網頁上的轉換，還有Direct3D可保留3D图像更清晰的解析。DirectShow亦包含有用於[音频信号处理以及](../Page/音频信号处理.md "wikilink")[DirectX视频加速加速影音播放](https://zh.wikipedia.org/wiki/DirectX视频加速 "wikilink")。
  - [DirectX媒体对象化](https://zh.wikipedia.org/wiki/DirectX_Media_Objects "wikilink")：支援資料流物件，像是編碼、解碼和效果。

### 廢棄元件

这些元件曾經也是DirectX的一員，但現在微軟只提供最低程度的維護，也不再建議使用。

  - [DirectDraw](https://zh.wikipedia.org/wiki/DirectDraw "wikilink")：用於繪製[2D图形](../Page/位图.md "wikilink")（不建議使用，雖然目前仍有大量的使用者），現開始被Direct2D取代。
  - [DirectInput](https://zh.wikipedia.org/wiki/DirectInput "wikilink")：用於結合[鍵盤](https://zh.wikipedia.org/wiki/鍵盤 "wikilink")、[滑鼠](https://zh.wikipedia.org/wiki/滑鼠 "wikilink")、[搖桿](https://zh.wikipedia.org/wiki/搖桿 "wikilink")，或其它的[遊戲控制器](https://zh.wikipedia.org/wiki/遊戲控制器 "wikilink")，自8.0之後就不再更新。
  - [DirectPlay](../Page/DirectPlay.md "wikilink")：用於[網路遊戲連線溝通](https://zh.wikipedia.org/wiki/網路遊戲 "wikilink")，配合DirectInput使用，自8.0後就不再更新。
  - [DirectSound](../Page/DirectSound.md "wikilink")：用於錄音，記錄波形音效已被XAudio2取代。
  - [DirectMusic](https://zh.wikipedia.org/wiki/DirectMusic "wikilink")：用於[DirectMusic
    Producer的錄音](https://zh.wikipedia.org/wiki/DirectMusic "wikilink")。

## 历史

1994年末，微软即将推出新一代[操作系统](../Page/操作系统.md "wikilink")[Windows
95](../Page/Windows_95.md "wikilink")。决定新操作系统的最终价值的因素在于究竟新系统能运行哪些程序。微软的三个员工：Craig
Eisler、Alex St. John、Eric
Engstrom十分关心这个问题，因为不少游戏程序员更喜欢在[DOS系统下编写](../Page/DOS.md "wikilink")[游戏](../Page/游戏.md "wikilink")，这意味著，没有多少人愿意为WIN95编写游戏，新操作系统不会获得多少成功。

DOS允许直接访问[显卡](https://zh.wikipedia.org/wiki/显卡 "wikilink")、[键盘](https://zh.wikipedia.org/wiki/键盘 "wikilink")、[鼠标](../Page/鼠标.md "wikilink")、[声卡以及其他系统](../Page/声卡.md "wikilink")[硬件设施](../Page/硬件.md "wikilink")。而Windows
95出于保护存储系统的目的，限制了对硬件的直接访问，取而代之的是一套更加规范标准的访问方法。微软需要一种方法让程序员在WIN95中也能编写出高效的程序。此时，离新系统发布不到几个月了。St.
John和Engstrom联合解决了这个问题，他们将解决方案称为DirectX。

DirectX的第一个版本作为Windows Games SDK发布于1995年9月，它作为[Windows
API的一部分用以替换](../Page/Windows_API.md "wikilink")[Windows
3.1中的](https://zh.wikipedia.org/wiki/Windows_3.1 "wikilink")-{DCI}-和[WinGAPI](https://zh.wikipedia.org/wiki/WinG "wikilink")。[ATI的一个开发团队为微软带来了基本的游戏图像技术](https://zh.wikipedia.org/wiki/ATI "wikilink")，微软方面，DirectX由专门的团队负责开发，Eisler为团队领导，而St.
John和Engstrom则成为主程序设计师。

DirectX出现之前，微软已经将[OpenGL包括在](../Page/OpenGL.md "wikilink")[Windows
NT系统中](../Page/Windows_NT.md "wikilink")，而在当时，OpenGL对硬件要求严苛，这限制了一些[工程师和](../Page/工程师.md "wikilink")[CAD用户](../Page/计算机辅助设计.md "wikilink")。Direct3D就作为OpenGL的代替品被加入DirectX。随着硬件技术的发展，OpenGL成为行业标准，一场“战役”发生在DirectX的支持者和OpenGL的支持者之间，而且前者只支持Windows平台，而后者支持多平台。在实际应用中，游戏开发者常常两者同时使用，因为DirectX支持许多OpenGL所不支持的功能，比如音效和输入装置。而选择混合使用OpenGL和[OpenAL的队伍也在壮大](../Page/OpenAL.md "wikilink")。

由此衍生出的“特别DirectX”也作为微软[Xbox和](../Page/Xbox_\(遊戲機\).md "wikilink")[Xbox
360的图形API](../Page/Xbox_360.md "wikilink")，这套API由微软和[NVIDIA公司共同开发](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")，Xbox
API和DirectX
8.1比较相似，但跟其他主機科技一樣不能更新，Xbox版本也叫做DirectXbox，但由于商业销售缘故，还是被简称为Xbox。\[1\]

2002年，微软发布了DirectX 9，它支持最新的顶点阴影着色器2.0版本，又于2004年4月将shader model 3.0（SM
3.0）加入了DirectX 9.0c。

2005年4月，[DirectShow从DirectX移除](../Page/DirectShow.md "wikilink")，加入到[Microsoft
Platform
SDK](https://zh.wikipedia.org/wiki/Microsoft_Platform_SDK "wikilink")。\[2\]

2010年6月7日發佈的DirectX SDK是最後獨立發佈的SDK版本，之後的DirectX SDK被整合進新版的[Microsoft
Windows SDK裡](../Page/Microsoft_Windows_SDK.md "wikilink")。例如DirectX
11.2 SDK被放在Windows Software Development Kit (SDK) for Windows 8.1裡。

### 發佈歷史

<table>
<thead>
<tr class="header">
<th><p>DirectX版本</p></th>
<th><p>版本编号[3]</p></th>
<th><p>作業系統</p></th>
<th><p>日期</p></th>
<th><p>備註</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>DirectX 1.0</p></td>
<td><p>4.02.0095</p></td>
<td></td>
<td><p>1995年9月30日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>DirectX 2.0</p></td>
<td><p>未知</p></td>
<td></td>
<td><p>1996年</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>DirectX 2.0a</p></td>
<td><p>4.03.00.1096</p></td>
<td><p><a href="../Page/Windows_95.md" title="wikilink">Windows 95和NT</a> 4.0</p></td>
<td><p>1996年6月5日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>DirectX 3.0</p></td>
<td><p>4.04.00.0068</p></td>
<td></td>
<td><p>1996年9月15日</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>4.04.00.0069</p></td>
<td><p>之后的DirectX 3.0加入了Direct3D 4.04.00.0069'''</p></td>
<td><p>1996年</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>DirectX 3.0a</p></td>
<td><p>4.04.00.0070</p></td>
<td><p><a href="../Page/Windows_NT.md" title="wikilink">Windows NT</a> 4.0 SP3<br />
最后支持Windows NT 4.0的版本</p></td>
<td><p>1996年12月</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>DirectX 3.0b</p></td>
<td><p>4.04.00.0070</p></td>
<td><p>3.0a的一个小更新<br />
纠正了一个日文版本下的漏洞</p></td>
<td><p>1996年12月</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>DirectX 4.0</p></td>
<td><p>從未發佈<ref>DirectX 4從未發佈過，<a href="https://zh.wikipedia.org/wiki/Raymond_Chen" title="wikilink">Raymond Chen在他的書</a>《The Old New Thing》中解釋說，DirectX 3發佈之後，微軟開始同時開發DX4和5，只是增加一些小特性的DX4版本會在短時間內完成，而DX5會增加大量新內容，遊戲開發者對DX4新特性的失望導致了DX4計劃的擱置。之後，微軟將重心完全轉移到DX5開發上。 {{cite book</p></td>
<td><p>title = The Old New Thing</p></td>
<td><p>edition = 第一版</p></td>
<td><p>chapter = Etymology and History</p></td>
</tr>
<tr class="odd">
<td><p>DirectX 5.0</p></td>
<td><p>4.05.00.0155 (RC55)</p></td>
<td><p>Windows NT 5.0的测试版本</p></td>
<td><p>1997年7月16日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>DirectX 5.2</p></td>
<td><p>4.05.01.1600 (RC00)</p></td>
<td><p>為<a href="../Page/Windows_95.md" title="wikilink">Windows 95發佈的版本</a></p></td>
<td><p>1998年5月5日</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>4.05.01.1998 (RC0)</p></td>
<td><p>只用于<a href="../Page/Windows_98.md" title="wikilink">Windows 98</a></p></td>
<td><p>1998年6月25日</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>DirectX 6.0</p></td>
<td><p>4.06.00.0318 (RC3)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Windows_CE" title="wikilink">Windows CE上的</a><a href="../Page/Dreamcast.md" title="wikilink">Dreamcast版本</a></p></td>
<td><p>1998年8月7日</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>DirectX 6.1</p></td>
<td><p>4.06.02.0436 (RC0)</p></td>
<td></td>
<td><p>1999年2月3日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>DirectX 6.1a</p></td>
<td><p>4.06.03.0518 (RC0)</p></td>
<td><p>只用于<a href="https://zh.wikipedia.org/wiki/Windows_98#第二版" title="wikilink">Windows 98 SE</a></p></td>
<td><p>1999年5月5日</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>DirectX 7.0</p></td>
<td><p>4.07.00.0700 (RC1)</p></td>
<td></td>
<td><p>1999年9月22日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>4.07.00.0700</p></td>
<td><p><a href="../Page/Windows_2000.md" title="wikilink">Windows 2000</a></p></td>
<td><p>2000年2月17日</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>DirectX 7.0a</p></td>
<td><p>4.07.00.0716 (RC0)</p></td>
<td></td>
<td><p>2000年3月8日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>4.07.00.0716 (RC1)</p></td>
<td></td>
<td><p>2000年</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>DirectX 7.1</p></td>
<td><p>4.07.01.3000 (RC1)</p></td>
<td><p>只用于<a href="../Page/Windows_Me.md" title="wikilink">Windows Me</a></p></td>
<td><p>2000年8月14日</p></td>
<td><p>2D與3D元件分離的最後一版（IDirectDraw7與IDirect3D7）</p></td>
</tr>
<tr class="even">
<td><p>DirectX 8.0</p></td>
<td><p>4.08.00.0400 (RC10)</p></td>
<td></td>
<td><p>2000年11月12日</p></td>
<td><p>2D與3D元件整合的第一個版本（IDirectGraphic8）與Vertex Shader與Pixel Shader</p></td>
</tr>
<tr class="odd">
<td><p>DirectX 8.0a</p></td>
<td><p>4.08.00.0400 (RC14)</p></td>
<td><p>最后支持Windows 95的版本</p></td>
<td><p>2001年2月5日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>DirectX 8.1</p></td>
<td><p>4.08.01.0810</p></td>
<td><p><a href="../Page/Windows_XP.md" title="wikilink">Windows XP</a>，<a href="../Page/Windows_Server_2003.md" title="wikilink">Windows Server 2003和</a><a href="../Page/Xbox_(遊戲機).md" title="wikilink">Xbox特别版</a></p></td>
<td><p>2001年10月25日</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>4.08.01.0881 (RC7)</p></td>
<td><p>這個版本用於更早的操作系统<br />
（Windows 98, Windows Me和Windows 2000）'''</p></td>
<td><p>2001年11月8日</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>DirectX 8.1a</p></td>
<td><p>4.08.01.0901（RC?）</p></td>
<td><p>这个版本升级了Direct3D（D3d8.dll）</p></td>
<td><p>2002年</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>DirectX 8.1b</p></td>
<td><p>4.08.01.0901 (RC7)</p></td>
<td><p>这个版本修正了DirectShow在Windows 2000上的一个漏洞（Quartz.dll）</p></td>
<td><p>2002年6月25日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>DirectX 8.2</p></td>
<td><p>4.08.02.0134 (RC0)</p></td>
<td><p>和DirectX 8.1b一样，但包含了DirectPlay 8.2</p></td>
<td><p>2002年</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>DirectX 9.0</p></td>
<td><p>4.09.00.0900 (RC4)</p></td>
<td></td>
<td><p>2002年12月19日</p></td>
<td><p>（IDirectGraphic9）與<a href="https://zh.wikipedia.org/wiki/HLSL" title="wikilink">HLSL</a></p></td>
</tr>
<tr class="even">
<td><p>DirectX 9.0a</p></td>
<td><p>4.09.00.0901 (RC6)</p></td>
<td></td>
<td><p>2003年3月26日</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>DirectX 9.0b</p></td>
<td><p>4.09.00.0902 (RC2)</p></td>
<td></td>
<td><p>2003年8月13日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>DirectX 9.0c</p></td>
<td><p>4.09.00.0903</p></td>
<td><p>只用于Windows XP SP2</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>4.09.00.0904 (RC0)</p></td>
<td></td>
<td><p>2004年8月4日</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>4.09.00.0904</p></td>
<td><p>Windows XP SP2，Windows Server 2003 SP1，Windows Server 2003 R2和<a href="../Page/Xbox_360.md" title="wikilink">Xbox 360</a></p></td>
<td><p>2004年8月6日</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>DirectX 9.0c - 双月更新</p></td>
<td><p>4.09.00.0904 (RC0)</p></td>
<td><p>2006年10月更新是最后支持Windows 98、Windows Me和Windows 2000的版本。[4]2005年12月更新和2006年2月更新增加了对<a href="../Page/XML.md" title="wikilink">XML的支持</a></p></td>
<td><p>两月更新一次，开始于2004年10月，直到现在，最新版本：DirectX 9.0c Redist Jun 2010（2010年6月）</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>DirectX 10.0</p></td>
<td><p>6.00.6000.16386</p></td>
<td><p><a href="../Page/Windows_Vista.md" title="wikilink">Windows Vista</a></p></td>
<td><p>2006年11月30日</p></td>
<td><p>開始導入DXGI（DirectX Graphics Infrastructure）架構</p></td>
</tr>
<tr class="odd">
<td><p>DirectX 10.1</p></td>
<td><p>6.00.6001.18000</p></td>
<td><p>Windows Vista Service Pack 1與<a href="../Page/Windows_Server_2008.md" title="wikilink">Windows Server 2008</a></p></td>
<td><p>2008年2月4日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>DirectX 11</p></td>
<td><p>6.01.7600.16385</p></td>
<td><p>Windows 7，Windows Server 2008 R2</p></td>
<td><p>2009年7月22日</p></td>
<td><p>與<a href="https://zh.wikipedia.org/wiki/Windows_7" title="wikilink">Windows 7</a> RTM一同釋出</p></td>
</tr>
<tr class="odd">
<td><p>6.01.7601.17514</p></td>
<td><p>Windows 7 SP1，Windows Server 2008 R2 SP1</p></td>
<td><p>2010年11月23日</p></td>
<td><p>KB976932，與Windows 7 SP1一同釋出</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>6.00.6002.18107</p></td>
<td><p>Windows Vista SP2，Windows Server 2008 SP2</p></td>
<td><p>2009年10月26日</p></td>
<td><p>KB971512</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>DirectX 11.1</p></td>
<td><p>6.02.9200.16384</p></td>
<td><p>Windows 8</p></td>
<td><p>2012年10月26日</p></td>
<td><p>與Windows 8一同釋出，Windows 7 SP1升級後部分支持</p></td>
</tr>
<tr class="even">
<td><p>DirectX 11.2</p></td>
<td><p>6.03.9600.16384</p></td>
<td><p><a href="../Page/Windows_8.1.md" title="wikilink">Windows 8.1</a>、<a href="../Page/Windows_8.1.md" title="wikilink">Windows RT 8.1</a>、<a href="https://zh.wikipedia.org/wiki/Windows_Server_2012#Windows_Server_2012_R2" title="wikilink">Windows Server 2012 R2</a></p></td>
<td><p>2013年10月18日</p></td>
<td><p>包含于操作系统，无独立程序包</p></td>
</tr>
<tr class="odd">
<td><p>DirectX 12</p></td>
<td><p>10.00.10240.16384</p></td>
<td><p><a href="../Page/Windows_10.md" title="wikilink">Windows 10</a></p></td>
<td><p>2015年1月18日</p></td>
<td><p>包含于操作系统，无独立程序包，並支持Xbox One</p></td>
</tr>
</tbody>
</table>

## 兼容性

[硬件制造商要为每款硬件产品编写](../Page/硬件.md "wikilink")[驱动程序来支持DX](../Page/驱动程序.md "wikilink")，甚至一些硬件商只编写DX的驱动，这意味着要使用这款硬件就必须安装DX，早期的DirectX版本自带了所有支持DX硬件的驱动程序，后来用户可以通过自动更新系统下载适合的驱动。

一些驅動程式只支持某個版本的DX，DX10之前，所有DirectX版本都保持向下相容性，即新版本相容舊版本，例如安装了DX9的電腦，依然可以執行由DX6编寫的程式碼。安装了DX11的電腦，依然可以執行由DX9C编寫的程式碼，不過小部分依然需要安裝DX9C。

## 各種版本

### .NET Framework

2002年间，微软发布一个兼容[.NET
Framework的DX版本](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")，因而允许程序员充分利用.NET的特性编写DX程序，这套API被称为（MDX）。2005年微軟在DirectX
9.0c版本上开发一套正对.NET平台的Managed API，即Direct 9.0 for Managed Code
1.0（简称Managed DirectX）。

2005年12月、2006年2月、4月、8月，微软相继发布DirectX的更新版本，使之支持.NET 2.0框架。然而.NET
2.0版本至今只是个测试版。

[-{GDC}-](../Page/游戏开发者大会.md "wikilink") 2006期间，微软终止開發Managed
DirectX，改推出了[XNA](https://zh.wikipedia.org/wiki/XNA "wikilink")
framework，是一組基于Managed
DirectX，帮助程序员更轻松的编写游戏的框架，将DirectX，Shader，[高级着色器语言](../Page/高级着色器语言.md "wikilink")（HLSL）以及其他工具整合到一起。2006年12月11日，微软对Windows
XP提供免费的XNA Game Studio Express RTM的下载服务。

### DirectX 10

[Windows Vista及以上的操作系统才支持DirectX](../Page/Windows_Vista.md "wikilink")
10（也就是說，DirectX 9是最後一個支援Windows
XP的版本），比起之前的版本，DX10做了重大的变动：增加了[XInput用以处理](https://zh.wikipedia.org/wiki/XInput "wikilink")[XBOX
360手柄的支持](https://zh.wikipedia.org/wiki/XBOX_360 "wikilink")，[DirectSound将被](../Page/DirectSound.md "wikilink")[XACT替换](https://zh.wikipedia.org/wiki/XACT "wikilink")。DirectX
10也减少了对音效硬件加速的支持，更多的使用CPU来运算音效。

Direct3D 10.1是DirectX 10的改進版，隨Vista SP1出貨。

### DirectX 11

DirectX 11是DirectX 10的改良，只對效能和擴展性進行最佳化，主要改進在提供Shader Model
5.0，加入對[MSAA的直接采樣控制](https://zh.wikipedia.org/wiki/反锯齿 "wikilink")。大幅改進[多執行緒效能](https://zh.wikipedia.org/wiki/多執行緒_\(電腦硬體\) "wikilink")，提供三個獨立的介面。進一步提高紋理壓縮，[鑲嵌](../Page/密鋪.md "wikilink")（tessellation）處理的效能\[5\]\[6\]，並加入Compute
Shader（DirectCompute）來支援[GPGPU](https://zh.wikipedia.org/wiki/GPGPU "wikilink")，提供新版[HLSL語言](https://zh.wikipedia.org/wiki/HLSL "wikilink")。

DirectX 11.1是DirectX 11的改进版，随[Windows
8出货](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")。Windows 7
SP1升級後部分支持。

DirectX 11.2是DirectX 11.1的改進版，隨[Windows
8.1出貨](../Page/Windows_8.1.md "wikilink")。

### DirectX 12

DirectX
12將更好支援多核心、多執行緒的最佳化，降低GPU處理瓶頸，並強化跨平台功能，可有效支援微軟各式平台，並提升硬體功耗表現。隨Windows
10 出貨並支持Xbox One。目前只有少數幾款遊戲能夠支援DirectX 12，且大部分支援DirectX
12的遊戲性能都不如DirectX 11。

2019年3月13日，微軟於DirectX Developer
Blog表示，未來[魔獸世界](https://zh.wikipedia.org/wiki/魔獸世界 "wikilink")8.1.5的遊戲更新將使Windows
7 平台下能夠支援DirectX 12，讓舊平台用戶也能體驗 DirectX
12的多線程渲染優勢，並提高遊戲效能。且未來陸續也會有其他廠商推出相關更新。\[7\]\[8\]

## DirectX标志的变更

纵观DX的各个版本，X都是一个核辐射警告标志或一只螺旋桨叶片。这个设计引发了不小的争议，因为DX计划的原名叫做“[曼哈顿计划](../Page/曼哈顿计划.md "wikilink")”，这个名称来源于美国的核武器研制计划，最终美国使用[核武器轰炸了日本的](../Page/核武器.md "wikilink")[广岛和](https://zh.wikipedia.org/wiki/广岛 "wikilink")[长崎](https://zh.wikipedia.org/wiki/长崎 "wikilink")，这在暗示DX产品要替代日本在电子游戏方面的霸主地位。这一说法被微软公开否定，微軟表示这只是出于艺术设计的考虑。\[9\]

<File:DirectX> 1 logo.png|DirectX 1.0–6.0 <File:DirectX> 7
logo.png|DirectX 7.0 <File:DirectX> 8.0 logo.png|DirectX 8.0
[File:Directx9.jpg|DirectX](File:Directx9.jpg%7CDirectX) 9.0
[File:DirectX_logo.png|DirectX](File:DirectX_logo.png%7CDirectX) 10.0
[File:DirectX11_logo.png|DirectX](File:DirectX11_logo.png%7CDirectX)
11.0

## 参见

  - [图形设备接口](https://zh.wikipedia.org/wiki/图形设备接口 "wikilink")（GDI）
  - [GGI](https://zh.wikipedia.org/wiki/GGI "wikilink")（通用图形接口）
  - [Graphics
    pipeline](https://zh.wikipedia.org/wiki/Graphics_pipeline "wikilink")
  - [DxDiag](../Page/DxDiag.md "wikilink")
  - [DirectX
    plugin](https://zh.wikipedia.org/wiki/DirectX_plugin "wikilink")
  - [ActiveX](../Page/ActiveX.md "wikilink")
  - [Microsoft XNA](../Page/Microsoft_XNA.md "wikilink")
  - [支持DirectX 10游戏列表](../Page/支持DirectX_10游戏列表.md "wikilink")
  - [支援DirectX
    11遊戲列表](https://zh.wikipedia.org/wiki/支援DirectX_11遊戲列表 "wikilink")

### 其他API

  - [Mantle](../Page/Mantle_\(API\).md "wikilink")
  - [SDL](https://zh.wikipedia.org/wiki/SDL "wikilink")
  - [OpenMAX](../Page/OpenMAX.md "wikilink")
  - [OpenML](https://zh.wikipedia.org/wiki/OpenML "wikilink")
  - [OpenGL](../Page/OpenGL.md "wikilink")
  - [OpenAL](../Page/OpenAL.md "wikilink")

## 参考资料

## 外部連結

  - [Microsoft's MSDN文檔&資源中心](http://msdn.microsoft.com/directx)
  - [DirectSetup
    Documentation](http://msdn.microsoft.com/en-us/library/bb174600.aspx)
  - [GameDev'關於DX的資料](https://web.archive.org/web/20071014030300/http://www.gamedev.net/community/forums/showfaq.asp?forum_id=10)
  - [OpenGL 3 & DirectX 11: The War Is Over : Introduction - Tom's
    Hardware](http://www.tomshardware.com/reviews/opengl-directx,2019.html)
  - [中關村在線 -
    見證3D進化之路－DirectX發展歷史回顧](http://vga.zol.com.cn/44/444819.html)
  - [DirectX知識庫 /
    程式設計俱樂部](http://www.programmer-club.com.tw/kb/directx.html)

[Category:DirectX](https://zh.wikipedia.org/wiki/Category:DirectX "wikilink")
[Category:Windows_API](https://zh.wikipedia.org/wiki/Category:Windows_API "wikilink")

1.  J. Allard, [PC
    Pro采访](http://www.pcpro.co.uk/news/55995/games-interview-xbox-supremo-allard-on-the-future-of-microsofts-console-part-ii.html)
    , 2004 4月
2.  [1](http://msdn.microsoft.com/directx/sdk/readmepage/default.aspx)
3.  版本编号由微软的[DxDiag工具获得](../Page/DxDiag.md "wikilink")（4.09.0000.0900以及更高版本，在开始菜单|运行中输入DxDiag即可），编号统一使用x.xx.xxxx.xxxx格式，而微软网站上给出的编号使用x.xx.xx.xxxx格式，如果网站上编号为4.09.00.0904，那么在电脑上安装后，会变为4.09.0000.0904。
4.  [DirectX End-User Runtimes
    (October 2006)](http://www.microsoft.com/downloads/details.aspx?FamilyID=013c0f78-3c9b-44dc-b8be-46783bcac3cb)
5.
6.
7.
8.
9.