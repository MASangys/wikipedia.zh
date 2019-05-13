**Darwin**是由[蘋果公司於](../Page/蘋果公司.md "wikilink")2000年所釋出的一個[開放原始碼](../Page/開放原始碼.md "wikilink")[作業系統](../Page/作業系統.md "wikilink")。Darwin是[macOS和](../Page/macOS.md "wikilink")[iOS操作環境的作業系統部份](../Page/iOS.md "wikilink")。蘋果公司於2000年把Darwin釋出給開放原始碼社群。

Darwin是一種[類Unix作業系統](../Page/類Unix.md "wikilink")，包含開放原始碼的[XNU](../Page/XNU.md "wikilink")[內核](../Page/內核.md "wikilink")，其以[微核心為基礎的核心架構來實作](../Page/微核心.md "wikilink")[Mach](../Page/Mach.md "wikilink")，而作業系統的服務和[使用者空間工具則以](../Page/使用者空間.md "wikilink")[BSD為基礎](../Page/BSD.md "wikilink")。類似其他類Unix作業系統，Darwin也有[對稱多處理器的優點](../Page/对称多处理机.md "wikilink")，高效能的網路設施和支援多種整合的檔案系統。

整合Mach到XNU内核的好處是可攜性，或者是在不同形式的系統使用軟體的能力。舉例來說，一個作業系統核心整合了Mach微核心，能夠提供多種不同[CPU架構的二進位格式到一個單一的檔案](../Page/CPU.md "wikilink")（例如x86和PowerPC），這是因為它使用了[Mach-O的二進位格式](../Page/Mach-O.md "wikilink")。Mach的缺點則是增加了作業系統核心
- 核心 -
的複雜度。在過去的微核心實作上，這種複雜度有時候會導致很難分離核心效能的問題。因此，採用Mach微核心會伴隨風險，但它有潛在的好處是廣泛的可移植性。以Darwin可移植性的具體例子來說，在2005年6月，蘋果電腦宣佈它會於2006年在Mac電腦上開始採用[Intel處理器](../Page/Intel.md "wikilink")。

Darwin的開發者在2000年決定採用一個[吉祥物](../Page/吉祥物.md "wikilink")，選擇了鴨嘴獸[Hexley而不是它的競爭對手](../Page/Hexley.md "wikilink")，像是一隻[Aqua](../Page/Aqua_\(GUI\).md "wikilink")
Darwin fish、Clarus和一隻海怪。蘋果電腦也沒有把Hexley認可為Darwin的一個標誌。

在2002年4月，在網際網路軟體論壇（Internet Software Consortium,
ISC）上，Apple成立OpenDarwin.org，是一個協助合作Darwin發展的社群。[OpenDarwin建立它自己釋出的Darwin作業系統](../Page/OpenDarwin.md "wikilink")。值得注意的是OpenDarwin子計畫中包含了DarwinPorts，目標是組合下一世代的port集合給Darwin使用（對於長期而言，也給其他的BSD所衍生的作業系統）。OpenDarwin專案於2006年中止，2007年另一個[PureDarwin專案成立去接手OpenDarwin之前的目標](../Page/PureDarwin.md "wikilink")。

2003年7月，蘋果在[APSL的](../Page/Apple_Public_Source_License.md "wikilink")2.0版本下釋出了Darwin，是由[自由軟體基金會批准為](../Page/自由軟體基金會.md "wikilink")[自由軟體的許可證](../Page/自由軟體.md "wikilink")。先前在較早的APSL版本下，儘管它已經達到開放原始碼定義的要求，但所釋出的先前版本並不符合FSF對於自由軟體的定義。

## 吉祥物

**Hexley**是[開放原始碼的](../Page/開放原始碼.md "wikilink")[作業系統](../Page/作業系統.md "wikilink")--[Darwin](../Page/Apple_Darwin.md "wikilink")（[Mac
OS
X的核心](../Page/Mac_OS_X.md "wikilink")）的[吉祥物](../Page/吉祥物.md "wikilink")。Hexley是一個[卡通的](../Page/卡通.md "wikilink")[鴨嘴獸](../Page/鴨嘴獸.md "wikilink")，通常戴著一個類似[BSD小惡魔的帽子](../Page/BSD小惡魔.md "wikilink")，並握著[三叉戟](../Page/三叉戟.md "wikilink")。Hexley是由Jon
Hooper所設計的，版權也為他所有。但Hexley並不附屬於[蘋果電腦](../Page/蘋果電腦.md "wikilink")。本來這個吉祥物的名稱應該是Huxley，源由是捍衛[达尔文](../Page/达尔文.md "wikilink")（Darwin）[演化理論的英國](../Page/演化.md "wikilink")[生物學家](../Page/生物學家.md "wikilink")[托马斯·亨利·赫胥黎](../Page/托马斯·亨利·赫胥黎.md "wikilink")，而原先提議的人誤以為是达尔文的助理，並錯用了Hexley。而發現錯誤時，要改名已經太晚，因此沿用了Hexley這個名稱。

## 版本歷史

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>發佈日期</p></th>
<th><p>對應發布</p></th>
<th><p>更新</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0.1</p></td>
<td><p>nowrap|1999年3月16日</p></td>
<td><p>rowspan="4" nowrap="" |Mac OS X 開發者預覽版</p></td>
<td><p>開發者預覽第1版</p></td>
</tr>
<tr class="even">
<td><p>0.2</p></td>
<td><p>1999年11月10日</p></td>
<td><p>開發者預覽第2版</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1.0</p></td>
<td><p>nowrap="" |2000年2月</p></td>
<td><p>開發者預覽第3版</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.1</p></td>
<td><p>2000年4月5日</p></td>
<td><p>開發者預覽第4版</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1.2.1</p></td>
<td><p>nowrap="" |2000年11月15日</p></td>
<td><p><a href="../Page/Mac_OS_X公開測試版.md" title="wikilink">Mac OS X 公開測試版</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.3.1</p></td>
<td><p>nowrap|2001年4月13日</p></td>
<td><p><a href="../Page/Mac_OS_X_v10.0.md" title="wikilink">Mac OS X v10.0</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1.4.1</p></td>
<td><p>nowrap|2001年10月2日</p></td>
<td><p><a href="../Page/Mac_OS_X_v10.1.md" title="wikilink">Mac OS X v10.1</a></p></td>
<td><p>提升開機時間、實時執行緒、執行緒管理、快取資料寫出及搶占處理的性能，支援<a href="../Page/伺服器訊息區塊.md" title="wikilink">SMB</a> <a href="../Page/網絡文件系統.md" title="wikilink">網絡文件系統</a>，以<a href="../Page/Wget.md" title="wikilink">Wget取代</a><a href="../Page/cURL.md" title="wikilink">cURL</a>[1]</p></td>
</tr>
<tr class="even">
<td><p>6.0.1</p></td>
<td><p>nowrap|2002年9月23日</p></td>
<td><p><a href="../Page/Mac_OS_X_v10.2.md" title="wikilink">Mac OS X v10.2</a> <small>(Darwin 6.0.2)</small></p></td>
<td><p><a href="../Page/GNU_Compiler_Collection.md" title="wikilink">GCC由</a>2更新至3.1,支援<a href="../Page/IPv6.md" title="wikilink">IPv6及</a><a href="../Page/IPSec.md" title="wikilink">IPSec</a>, mDNSResponder <a href="../Page/服務探索.md" title="wikilink">服務探索的</a><a href="../Page/守護行程.md" title="wikilink">守護行程</a>（<a href="../Page/Bonjour_(software).md" title="wikilink">Rendezvous</a>),新增<a href="../Page/CUPS.md" title="wikilink">CUPS</a>, <a href="../Page/HFS+.md" title="wikilink">HFS+支援</a><a href="../Page/Ruby.md" title="wikilink">Ruby</a>, <a href="../Page/Python.md" title="wikilink">Python及</a><a href="../Page/日記文件系統.md" title="wikilink">日記</a><small>（Darwin 6.2）</small>,應用程序配置文件（"pre-heat files"）速度更快[2]</p></td>
</tr>
<tr class="odd">
<td><p>7.0</p></td>
<td><p>nowrap|2003年10月24日</p></td>
<td><p><a href="../Page/Mac_OS_X_v10.3.md" title="wikilink">Mac OS X v10.3</a></p></td>
<td><p>BSD層與<a href="../Page/FreeBSD.md" title="wikilink">FreeBSD</a>5同步、自動檔案片段重組、熱文件集群、在HFS+可選用大小寫差異結構、以<a href="../Page/bash.md" title="wikilink">bash取代</a><a href="../Page/tcsh.md" title="wikilink">tcsh作為默認</a><a href="../Page/shell.md" title="wikilink">shell</a>,支援唯讀<a href="../Page/NTFS.md" title="wikilink">NTFS</a><small>（Darwin 7.9）</small>.[3]</p></td>
</tr>
<tr class="even">
<td><p>8.0</p></td>
<td><p>nowrap|2005年4月29日</p></td>
<td><p><a href="../Page/Mac_OS_X_v10.4.md" title="wikilink">Mac OS X v10.4</a><br />
Mac OS X for <a href="../Page/Apple_TV.md" title="wikilink">Apple TV</a> <small>(Darwin 8.8.2)</small></p></td>
<td><p>穩定版的核心編程介面、finer-grained kernel <a href="../Page/lock_(computer_science).md" title="wikilink">locking</a>, 64-bit的BSD層, <a href="../Page/launchd.md" title="wikilink">launchd</a><a href="../Page/作業系統服務管理.md" title="wikilink">服務管理框架</a>，<a href="../Page/擴展文件屬性.md" title="wikilink">擴展文件屬性</a>，<a href="../Page/存取控制表.md" title="wikilink">存取控制表</a>，命令如<a href="../Page/cp_(Unix).md" title="wikilink">cp及</a><a href="../Page/mv.md" title="wikilink">mv更新以保護擴展屬性及</a><a href="../Page/resource_forks.md" title="wikilink">resource forks</a>[4]</p></td>
</tr>
<tr class="odd">
<td><p>9.0</p></td>
<td><p>nowrap|2007年10月26日</p></td>
<td><p><a href="../Page/iPhone_OS.md" title="wikilink">iPhone OS 1.0</a> <small>(Darwin 9.0.0d1)</small><br />
<a href="../Page/Mac_OS_X_v10.5.md" title="wikilink">Mac OS X v10.5</a></p></td>
<td><p>完整的POSIX標準，改進分層的行程<a href="../Page/排程.md" title="wikilink">排程模型</a>，<a href="../Page/動態分配.md" title="wikilink">動態分配</a><a href="../Page/分頁.md" title="wikilink">分頁檔案</a>、動態資源限制（對個別檔案與行程）、行程<a href="../Page/沙盒.md" title="wikilink">沙盒化</a>、隨機位址空間配置、<a href="../Page/DTrace.md" title="wikilink">DTrace的追蹤框架</a>、<a href="../Page/檔案系統.md" title="wikilink">檔案系統事件的管理員</a>、<a href="../Page/目錄.md" title="wikilink">目錄的</a><a href="../Page/硬式連結.md" title="wikilink">硬式連結</a>, <a href="../Page/Apache_HTTP_Server.md" title="wikilink">Apache</a>1.3及<a href="../Page/PHP.md" title="wikilink">PHP</a>4更新至Apache 2.2及PHP 5,支援唯讀<a href="../Page/ZFS.md" title="wikilink">ZFS</a>[5]</p></td>
</tr>
<tr class="even">
<td><p>10.0</p></td>
<td><p>nowrap|2009年8月28日</p></td>
<td><p><a href="../Page/Mac_OS_X_Snow_Leopard.md" title="wikilink">Mac OS X Snow Leopard</a>, <a href="../Page/iOS_4.md" title="wikilink">iOS 4.0</a></p></td>
<td><p><a href="../Page/Mac_OS_X_v10.6.md" title="wikilink">Mac OS X v10.6</a> 停止支援<a href="../Page/PowerPC.md" title="wikilink">PowerPC架構</a>; 64-bit核心及驅動程式, <a href="../Page/libdispatch.md" title="wikilink">libdispatch</a><a href="../Page/任務并行.md" title="wikilink">任務并行框架</a>, <a href="../Page/OpenCL.md" title="wikilink">OpenCL</a><a href="../Page/異構計算.md" title="wikilink">異構計算框架</a>，透過<a href="../Page/C语言.md" title="wikilink">C语言支援</a><a href="../Page/块_(C语言扩展).md" title="wikilink">Blocks</a>,以HFS+<a href="../Page/数据压缩.md" title="wikilink">数据压缩文件</a>[6]</p></td>
</tr>
<tr class="odd">
<td><p>10.1.0</p></td>
<td><p>2009年9月10日</p></td>
<td><p><a href="../Page/Mac_OS_X_Snow_Leopard.md" title="wikilink">Mac OS X v10.6.1</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>10.2.0</p></td>
<td><p>2009年11月9日</p></td>
<td><p><a href="../Page/Mac_OS_X_Snow_Leopard.md" title="wikilink">Mac OS X v10.6.2</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>10.3.0</p></td>
<td><p>2010年3月29日</p></td>
<td><p><a href="../Page/Mac_OS_X_Snow_Leopard.md" title="wikilink">Mac OS X v10.6.3</a> <a href="../Page/iOS_4.md" title="wikilink">iOS 4.0</a> <small>(Darwin 10.3.1)</small></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>10.4.0</p></td>
<td><p>2010年6月15日</p></td>
<td><p><a href="../Page/Mac_OS_X_Snow_Leopard.md" title="wikilink">Mac OS X v10.6.4</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>10.5.0</p></td>
<td><p>2010年11月11日</p></td>
<td><p><a href="../Page/Mac_OS_X_Snow_Leopard.md" title="wikilink">Mac OS X v10.6.5</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>10.6.0</p></td>
<td><p>2011年1月6日</p></td>
<td><p><a href="../Page/Mac_OS_X_Snow_Leopard.md" title="wikilink">Mac OS X v10.6.6</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>10.7.0</p></td>
<td><p>2011年3月21日</p></td>
<td><p><a href="../Page/Mac_OS_X_Snow_Leopard.md" title="wikilink">Mac OS X v10.6.7</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>10.8.0</p></td>
<td><p>2011年6月23日</p></td>
<td><p><a href="../Page/Mac_OS_X_Snow_Leopard.md" title="wikilink">Mac OS X v10.6.8</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>11.0.0</p></td>
<td><p>2011年7月20日</p></td>
<td><p><a href="../Page/Mac_OS_X_Lion.md" title="wikilink">Mac OS X Lion</a> <a href="../Page/iOS_5.md" title="wikilink">iOS 5</a>[7]</p></td>
<td><p><a href="../Page/Mac_OS_X_Lion.md" title="wikilink">Mac OS X v10.7</a></p></td>
</tr>
<tr class="even">
<td><p>11.1.0</p></td>
<td><p>2011年8月16日</p></td>
<td><p><a href="../Page/Mac_OS_X_Lion.md" title="wikilink">Mac OS X v10.7.1</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>11.2.0</p></td>
<td><p>2011年10月13日</p></td>
<td><p><a href="../Page/Mac_OS_X_Lion.md" title="wikilink">Mac OS X v10.7.2</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>11.3.0</p></td>
<td><p>2012年2月2日</p></td>
<td><p><a href="../Page/Mac_OS_X_Lion.md" title="wikilink">Mac OS X v10.7.3</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>12.0</p></td>
<td><p>2012年2月16日</p></td>
<td><p><a href="../Page/OS_X_Mountain_Lion.md" title="wikilink">OS X Mountain Lion</a></p></td>
<td><p>iMessage, Notification Center, Notes, Reminder, etc form iOS</p></td>
</tr>
<tr class="even">
<td><p>13.0</p></td>
<td><p>2013年6月10日</p></td>
<td><p><a href="../Page/OS_X_Mavericks.md" title="wikilink">OS X Mavericks</a> <a href="../Page/iOS_6.md" title="wikilink">iOS 6</a></p></td>
<td><p>Flat Design, Control Center, AirDrop, etc（iOS 7）</p></td>
</tr>
<tr class="odd">
<td><p>14.0.0</p></td>
<td><p>2014年9月18日</p></td>
<td><p><a href="../Page/OS_X_Yosemite.md" title="wikilink">OS X Yosemite</a><a href="../Page/iOS_7.md" title="wikilink">iOS 7</a>, <a href="../Page/iOS_8.md" title="wikilink">iOS 8</a></p></td>
<td><p>OS X v10.10.0</p></td>
</tr>
<tr class="even">
<td><p>14.5.0</p></td>
<td><p>2015年8月13日</p></td>
<td><p>OS X v10.10.5</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>15.0.0</p></td>
<td><p>2015年9月16日</p></td>
<td><p><a href="../Page/OS_X_El_Capitan.md" title="wikilink">OS X El Capitan</a> <a href="../Page/iOS_9.md" title="wikilink">iOS 9</a></p></td>
<td><p>OS X v10.11.0 iOS 9.0</p></td>
</tr>
<tr class="even">
<td><p>15.6.0</p></td>
<td><p>2016年7月18日</p></td>
<td><p>OS X v10.11.6 iOS 9.3.3</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>16.0.0</p></td>
<td><p>2016年9月13日</p></td>
<td><p><a href="../Page/macOS_Sierra.md" title="wikilink">macOS Sierra</a> <a href="../Page/iOS_10.md" title="wikilink">iOS 10</a></p></td>
<td><p>macOS v10.12.0 iOS 10.0.1</p></td>
</tr>
<tr class="even">
<td><p>16.6.0</p></td>
<td><p>2017年7月19日</p></td>
<td><p>macOS v10.12.6 iOS 10.3.3</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>17.0.0</p></td>
<td><p>2017年9月19日</p></td>
<td><p><a href="../Page/macOS_High_Sierra.md" title="wikilink">macOS High Sierra</a> <a href="../Page/iOS_11.md" title="wikilink">iOS 11</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>18.0.0</p></td>
<td><p>2018年9月2日</p></td>
<td><p><a href="../Page/macOS_Mojave.md" title="wikilink">macOS Mojave</a> <a href="../Page/iOS_12.md" title="wikilink">iOS 12</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>18.2.0</p></td>
<td><p>2018年10月30日</p></td>
<td><p>macOS v10.14.1 iOS 12.1</p></td>
<td></td>
</tr>
</tbody>
</table>

## 参考

## 外部連結

  - [Apple - Mac OS X - Technologies -
    Darwin](https://developer.apple.com/library/mac/documentation/MacOSX/Conceptual/OSX_Technology_Overview/SystemTechnology/SystemTechnology.html)
  - [PureDarwin社群開發網頁](http://www.puredarwin.org/)
  - [DarwinPorts專案](https://web.archive.org/web/20031119010308/http://darwinports.opendarwin.org/)
  - [Hexley, Darwin吉祥物](http://www.hexley.com/)
  - [Apple Public Source
    License 2.0](https://web.archive.org/web/20050728144436/http://www.opensource.apple.com/apsl/2.0.txt)
  - [對於APSL之自由軟體基金會的意見](http://www.gnu.org/philosophy/apsl.html)
  - [Apple Press
    Release：蘋果電腦於2006年開始使用Intel微處理器](https://web.archive.org/web/20100722102013/http://www.apple.com/pr/library/2005/jun/06intel.html)
  - [Mac OS
    X和BSD的差異](https://web.archive.org/web/20040803183233/http://developer.apple.com/documentation/Darwin/Conceptual/KernelProgramming/BSD/chapter_11_section_3.html#//apple_ref/doc/uid/TP30000905-CH214-TPXREF103)

[Category:BSD](https://zh.wikipedia.org/wiki/Category:BSD "wikilink")
[Category:苹果操作系统](https://zh.wikipedia.org/wiki/Category:苹果操作系统 "wikilink")
[Category:自由操作系统](https://zh.wikipedia.org/wiki/Category:自由操作系统 "wikilink")
[Category:MacOS](https://zh.wikipedia.org/wiki/Category:MacOS "wikilink")
[Category:Mach](https://zh.wikipedia.org/wiki/Category:Mach "wikilink")

1.  ["Technical Note TN2029: Mac OS X
    v10.1."](http://developer.apple.com/technotes/tn/tn2029.html) [Apple
    Developer
    Connection](../Page/Apple_Developer_Connection.md "wikilink").
    Retrieved June 2, 2008.
2.  Siracusa, John (September 5, 2002). ["Mac OS X 10.2
    Jaguar."](http://arstechnica.com/reviews/os/macosx-10-2.ars) *[Ars
    Technica](../Page/Ars_Technica.md "wikilink")*. Retrieved on May 31,
    2008.
3.  Siracusa, John (November 9, 2003). ["Mac OS X 10.3
    Panther."](http://arstechnica.com/reviews/os/macosx-10-3.ars) *[Ars
    Technica](../Page/Ars_Technica.md "wikilink")*. Retrieved on May 31,
    2008.
4.  Siracusa, John (April 28, 2005). ["Mac OS X 10.4
    Tiger."](http://arstechnica.com/reviews/os/macosx-10-4.ars) *[Ars
    Technica](../Page/Ars_Technica.md "wikilink")*. Retrieved on May 30,
    2008.
5.  Siracusa, John (October 28, 2007). ["Mac OS X 10.5 Leopard: the Ars
    Technica
    review."](http://arstechnica.com/reviews/os/mac-os-x-10-5.ars) *[Ars
    Technica](../Page/Ars_Technica.md "wikilink")*. Retrieved on May 30,
    2008.
6.  Siracusa, John (August 31, 2009). ["Mac OS X 10.6 Snow Leopard: the
    Ars Technica
    review."](http://arstechnica.com/apple/reviews/2009/08/mac-os-x-10-6.ars)
    *[Ars Technica](../Page/Ars_Technica.md "wikilink")*. Retrieved on
    2009-11-29.
7.  在一台[越狱的](../Page/IOS越狱.md "wikilink")[iPhone
    4S中发现](../Page/iPhone_4S.md "wikilink")。