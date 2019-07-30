**Wine**是在[x86](https://zh.wikipedia.org/wiki/x86 "wikilink")、[x86-64容許](https://zh.wikipedia.org/wiki/x86-64 "wikilink")[类Unix操作系统在](../Page/类Unix系统.md "wikilink")[X Window System運行](https://zh.wikipedia.org/wiki/X_Window_System "wikilink")[Microsoft Windows程式的軟體](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。另外，Wine也提供[程序运行库](https://zh.wikipedia.org/wiki/程式庫 "wikilink")（Winelib）来帮助计算机程序设计师将Windows程序移植到类Unix系统；也有不少软件经过Wine测试后发布，比如[Picasa](../Page/Picasa.md "wikilink")、[uTorrent](https://zh.wikipedia.org/wiki/uTorrent "wikilink")、[MediaCoder](../Page/MediaCoder.md "wikilink")。

Wine通过提供一个兼容层来将Windows的系统调用转换成与POSIX标准的系统调用。它还提供了Windows系统运行库的替代品和一些系统组件的替代品。为了避免版权问题，Wine主要使用黑箱测试逆向工程来编写。

Wine最早是“**Win**dows **E**mulator”，即Windows模擬器的缩写，但Wine现在為“**W**ine **I**s **N**ot an **E**mulator”的[遞迴縮寫](https://zh.wikipedia.org/wiki/遞迴縮寫 "wikilink")，即Wine不是模擬器。Wine的正確名稱是“Wine”，而不是全大写或全小写。\[1\]

## 發展

Wine計劃在1993年由[Bob Amstadt及](https://zh.wikipedia.org/wiki/Bob_Amstadt "wikilink")[Eric Youngdale發起](https://zh.wikipedia.org/wiki/Eric_Youngdale "wikilink")，最初目的是為了讓16位元[Windows 3.1程式可以在](https://zh.wikipedia.org/wiki/Windows_3.1 "wikilink")[Linux](../Page/Linux.md "wikilink")上執行，但隨著電腦和時代的演進，Wine也一路支援到更新的Windows和[64位元](../Page/64位元.md "wikilink")的電腦架構。

由於Windows的[DLL为封閉原始碼](../Page/动态链接库.md "wikilink")，所以程式設計師只能由最底層的設計開始，耗費大量的時間來編寫和測試，最後達至兼容，這過程是困難且緩慢的。

在1999年期間，當[Corel](../Page/Corel.md "wikilink")加入這個計劃後，Wine很快便能兼容[WordPerfect Office](../Page/WordPerfect_Office.md "wikilink")，但[Corel](../Page/Corel.md "wikilink")不久便停止支持這項計劃，所以Wine的發展又逐漸趨緩，一直到2006年[Google](../Page/Google.md "wikilink")積極參與這個計劃後，Wine的發展才又恢復起色，最後終於在2008年發佈首個穩定版，其後便以每兩週發佈一個新版的速度發展著，除此之外，[Google](../Page/Google.md "wikilink")每年所舉辦的[夏日程式碼大賽活動也對Wine有著不少貢獻](../Page/Google夏日程式碼大賽.md "wikilink")。

Wine雖然是從Linux開始發展，但現在已經支援多種平台，有[BSD](../Page/BSD.md "wikilink")、[Mac OS X與](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[Solaris-x86](https://zh.wikipedia.org/wiki/Solaris_Operating_Environment "wikilink")，在2013年的[自由及開源軟體開發者歐洲會議上](https://zh.wikipedia.org/wiki/自由及開源軟體開發者歐洲會議 "wikilink")，Wine的項目領導人表示目前將積極支援[Android](../Page/Android.md "wikilink")平台\[2\]。

## 功能

在2008年，Wine已經能夠完美運行很多知名程式，例如[Lotus Notes及](https://zh.wikipedia.org/wiki/Lotus_Notes "wikilink")[Microsoft Office 2007](../Page/Microsoft_Office_2007.md "wikilink")，[Photoshop CS2](https://zh.wikipedia.org/wiki/Photoshop "wikilink")，但其可靠性及穩定性仍有待改善。如果該程式包含原生的微軟Windows系统的[函式庫](../Page/动态链接库.md "wikilink")，那樣Wine便可很順利運行該程式。

有些Wine DLLs亦已能完美地取代Windows原來的DLLs，使得有些程式可完美運行。

最晚到2006年，Wine上面已经可以完全基于Wine DLL完美地运行[暴雪发行的多款](https://zh.wikipedia.org/wiki/暴雪 "wikilink")3D游戏了，如[魔兽世界](../Page/魔兽世界.md "wikilink")、[魔兽争霸等](https://zh.wikipedia.org/wiki/魔兽争霸 "wikilink")。

## 版本

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>發行日期</p></th>
<th><p>說明</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>2008-05-27</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>2010-07-16</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2012-03-07</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>2013-07-18</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2015-12-19</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>2017-01-24</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2018-01-18</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>2019-01-22</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>雙週更新</p></td>
<td></td>
</tr>
</tbody>
</table>

## 輔助工具

  - 《[Cedega](https://zh.wikipedia.org/wiki/Cedega "wikilink")》為Transgaming開發的商業軟體，以Wine為基礎，在Wine更換授權後停止使用Wine的原始碼，雖然有Cedega提供原始碼下載（經由[CVS](https://zh.wikipedia.org/wiki/CVS "wikilink")），但在不包含專利技術的情形下，功能與可用性都不高。
  - 《[CrossOver](../Page/CrossOver.md "wikilink")》為CodeWeavers開發的商業軟體，提供應用軟體支援，CodeWeavers和Wine計畫一直保有密切的合作關係。CodeWeavers亦僱用了Alexandre Juillard將CrossOver的原始碼回饋給Wine。在2005年6月22日，CodeWeavers宣布支持基於[英特爾](https://zh.wikipedia.org/wiki/英特爾 "wikilink")[處理器的](https://zh.wikipedia.org/wiki/處理器 "wikilink")[蘋果電腦](https://zh.wikipedia.org/wiki/蘋果電腦 "wikilink")。
  - 《[PlayOnLinux](../Page/PlayOnLinux.md "wikilink")》輔助安裝程式，支援非常多的商用應用程式，對於應用程式的安裝經過最佳化，所以幾乎不用設定。
  - 《[ReactOS](https://zh.wikipedia.org/wiki/ReactOS "wikilink")》一款模擬Windows的作業系統，和Wine有相當密切的合作，所開發的元件很多都能共用。
  - 《[Winetricks](../Page/Winetricks.md "wikilink")》可以對wine的選項進行更多設定與微調，也可以安裝一些基本元件。

## 微軟對Wine的回應

微軟甚少直接回應Wine計劃。不過它通過各種手段封鎖Wine。

像2005年2月16日微軟承認其在公司的更新軟件包中加入了阻止特定用戶的程序。微軟公司日前承認，其反盜版工具同時也會阻止使用Wine軟件的用戶更新Windows。微軟的發言人日前說，其[Windows正版增值计划](../Page/Windows正版增值计划.md "wikilink")認證工具將會辨認Wine用戶，因此只有運行真正正版的Windows的用戶才能下載升級和附加工具。“現在越來越多的第三方模擬和API轉換技術被投入使用，不過Wine是第一款通過WGA測試的軟體，”發言人說道。“微軟並不希望為那些使用第三方模擬軟件或者跨平臺API轉換技術的用戶提供Windows軟件更新。”不過發言人稱那些沒有真正運行Windows XP或者Windows 2000的用戶依然能夠下載Office Update。

在Wine的開發者通告中亦有所記錄。

## 参考资料

## 外部連結

  -
  - [应用数据库](http://appdb.winehq.org/)

  - [Wine新闻组](news://news.cn99.com/comp.emulators.ms-windows.wine)

  - [官方Wine维基](http://wiki.winehq.org/)

  - [非官方Wine支持维基](http://www.wine-wiki.org)

### 參與中文翻譯

  - [Wine翻譯說明](http://wiki.winehq.org/Translating)

[Category:1993年软件](https://zh.wikipedia.org/wiki/Category:1993年软件 "wikilink") [Category:兼容层](https://zh.wikipedia.org/wiki/Category:兼容层 "wikilink") [Category:计算平台](https://zh.wikipedia.org/wiki/Category:计算平台 "wikilink") [Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink") [Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink") [Category:自由系統軟體](https://zh.wikipedia.org/wiki/Category:自由系統軟體 "wikilink")

1.
2.