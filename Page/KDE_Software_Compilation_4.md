
{{ URL | <http://www.kdecn.org/> | KDE简体中文翻译团队 }}
{{ URL | <http://kde.linux.org.tw/> | KDE正体中文翻译团队 }} }}

'''KDE Software Compilation 4 '''（缩写KDE SC
4，中文译名KDE软件集4）是[KDE社区發布的桌面環境的最新系列](../Page/KDE.md "wikilink")。本系列第一個主要版本（4.0）發布於2008年1月11日，\[1\]最新的主要版本（4.14）發布於2014年8月20日。\[2\]

新系列包括更新數個KDE核心組成，特別是移植到[Qt
4](../Page/Qt.md "wikilink")。包含一個稱為[Phonon新的多媒體API](../Page/Phonon_\(KDE\).md "wikilink")，一個稱為[Solid的設備整合框架和稱為](https://zh.wikipedia.org/wiki/Solid_\(KDE\) "wikilink")[Oxygen的新風格指引和預設圖標集](https://zh.wikipedia.org/wiki/Oxygen "wikilink")。它也包括稱為[Plasma的新桌面和面板用戶界面工具](https://zh.wikipedia.org/wiki/Plasma_\(KDE\) "wikilink")，支持桌面元件（稱為｢Plasmoids｣）。使用Qt
4將有利於支持非X11的平台，包括[Microsoft
Windows和](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[Mac
OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")。KDE
4其中一個總體目標是能更加容易地移植到不同的操作系統。

主要版本（4.x）每6個月發布，每個月發佈錯誤修正的版本（4.x.y）。\[3\]

## 主要更新

這是一個簡短的概述KDE 4的重大變化。

### \-{zh-cn:常规;zh-tw:一般}-

移植到Qt 4系列預計將使KDE 4使用較少的記憶體，並明顯快於KDE 3。KDE函式庫自身也會更有效率。在Summer of Code
2007設立圖標緩存是為了降低用於KDE 4應用程序的啟動時間。\[4\]改善不盡相同 -
Kfind，一個使用數百圖標的應用程序，启动时间几乎减少了四分之一。\[5\]

許多在[Extragear和](../Page/Extragear.md "wikilink")[KOffice模塊的應用程序已加入KDE](../Page/KOffice.md "wikilink")
4和Qt 4的新功能。但由於他們根據自己的發布計劃，他們並沒有隨著第一次的KDE
4發布–其中包括[Amarok](../Page/Amarok.md "wikilink")、[K3b](../Page/K3b.md "wikilink")、[digiKam](https://zh.wikipedia.org/wiki/digiKam "wikilink")、[KWord和](../Page/KWord.md "wikilink")[Krita](../Page/Krita.md "wikilink")。

### 視覺

最顯著的變化是[Oxygen提供的新圖標](https://zh.wikipedia.org/wiki/Oxygen "wikilink")、主題和聲音。這些代表了擺脫KDE以前的卡通外觀的圖標和圖形。相反氧氣圖標選擇更加寫實的風格。Oxygen團隊藉由社群的幫助下在KDE
4提供更好的視覺效果，雙方交替圖標集和獲獎的桌布被加入Oxygen。\[6\]並有一組新的HIG提供一個更標準化的版面配置。

[Plasma提供了主要的桌面用戶界面](https://zh.wikipedia.org/wiki/Plasma_\(KDE\) "wikilink")，重寫了幾個核心KDE應用程序，如桌面繪圖和widget引擎。Plasma將提供一個更具自定性的桌面和更靈活的widget。

[KWin](../Page/KWin.md "wikilink")：KDE的窗口管理器，現在提供了自己的合成效果。

### 開發

[Phonon是KDE](../Page/Phonon_\(KDE\).md "wikilink")
4新的多媒體API。Phonon相較以前的KDE版本是一種不同的方法使用多媒體後端。這是因為Phonon只是一個包裝，通過一個單一的API提取操作系統提供的各種多媒體框架，並可在運行時切換後端。這樣做是為KDE
4提供一個穩定的API，並防止它依賴於一個單一的多媒體框架。應用程序使用Phonon的API可以無縫的切換多媒體框架之間地通過系統設定簡單改變使用的後端。

## KDE 4.0

[File:Kde4alpha1.png|KDE](File:Kde4alpha1.png%7CKDE) 4.0 Alpha
1，展示Dolphin和早期Oxygen图标
[File:Kde4Beta1.png|Beta](File:Kde4Beta1.png%7CBeta)
1，展示运行对话框，时钟部件和Dolphin文件管理器 <File:Kdebeta2>
plasma.png|Beta 2，展示若干桌面部件 <File:KDE> 4 beta 4.png|Beta 4，展示新的Kickoff選單
<File:KDE> 4.0RC2.png|RC2，展示Dolphin和Konqueror

## KDE 4.1

<File:Krunner4> 1 beta1.png|KDE 4.1 Beta 1的krunner。
<File:Plasma-panelcontroller> 4.1 beta 1.png|Beta 1时期的新面板配置界面。
<File:Kontact-calendar> 4.1 Beta 1.png|Beta 1的Kontact。
<File:Kwin-coverswitch4.1> beta 1.png|"CoverSwitch"特效。
[File:Kdepim-4.1.png|KDE](File:Kdepim-4.1.png%7CKDE) PIM套裝。

## KDE 4.2

[KDE_4.2_desktop.png](https://zh.wikipedia.org/wiki/File:KDE_4.2_desktop.png "fig:KDE_4.2_desktop.png")
KDE 4.2發布於2009年1月27日。被認為是一個重大改進幾乎在KDE 4.1的所有方面和對於大多數用戶的KDE
3.5合適的替代品。\[7\]

### KDE工作空間的改善

4.2包括數以千計的bug的修復，並實現許多出現在KDE 3.5但缺少在KDE 4.0和4.1的功能。\[8\]
其中包括分組和多行欄佈局在任務欄、在系統托盤隱藏圖標、面板自動隱藏，面板和任務欄的窗口預覽和工具提示回來、Plasma通知和工作跟踪、並有能力在桌面上的圖標再次使用文件夾視圖作為桌面背景，圖標現在留在原地放置。

### 新的和改善的應用程式

## KDE 4.3

[KDE_4.3_desktop.png](https://zh.wikipedia.org/wiki/File:KDE_4.3_desktop.png "fig:KDE_4.3_desktop.png")
KDE 4.3在2009年8月4日發布。4.3的重點是潤飾KDE
4。\[9\]\[10\]並集成其他技術，如PolicyKit、NetworkManager和Geolocation服務，是此版本的另一個重點。\[11\]\[12\]\[13\]
KRunner的界面進行了改革。靈活的系統托盤已經研製成功。添加許多新的Plasmoid，包括openDesktop.org Plasmoid
–社會性桌面初步負起。\[14\] Plasma也得到更多的鍵盤快捷方式。\[15\]

<File:Screenshot> of KDE 4.3.png|文件夹视图部件的新“文件内容工具提示”特性，笔记部件，以及Amarok
2.1的新播放列表编辑器。 <File:KDE> 4.3 social desktop.png|KDE 4.3的社會性桌面和其他線上服務。
<File:Krunner> kde4.3.png|Krunner的新界面。

## KDE SC 4.4

[Screenshot_of_KDE_4.4_plasma-netbook.png](https://zh.wikipedia.org/wiki/File:Screenshot_of_KDE_4.4_plasma-netbook.png "fig:Screenshot_of_KDE_4.4_plasma-netbook.png")
KDE SC 4.4發佈于2010年2月9日。

KDE SC 4.4基於2009年年底發布的[Qt](../Page/Qt.md "wikilink") 4.6。\[16\] KDE SC
4.4將獲得Qt的性能提升以及Qt 4.6的新功能，如新的動畫框架*Kinetic*。

[KAddressBook將被一個具有相同的名稱全新的應用程序](https://zh.wikipedia.org/wiki/KAddressBook "wikilink")（先前暫名為KContactManager）取代。\[17\]
KDE SC
4.4的KAddressBook的特點是完全整合[Akonadi與簡化的用戶界面](../Page/Akonadi.md "wikilink")。

另一項重要的新功能是一個針對上網本的新Plasma界面。\[18\]

[Kopete將發布](../Page/Kopete.md "wikilink")1.0。\[19\]

KAuth：跨平台的認證API，將在KDE SC 4.4亮相。最初只支持PolicyKit作為後端。\[20\]

## KDE SC 4.5

KDE SC 4.5发布于2010年8月10日，是KDE SC当前的版本。
该版本专注于改善此前引入的技术和特性的易用性、性能和稳定性。\[21\]

### KDE Development Platform 4.5.0

新的KSharedDataCache组件为磁盘数据（如图标）的快速存取而优化。

新的KDE
WebKit库提供与[Konqueror中的网络设置](../Page/Konqueror.md "wikilink")，密码保存和其他许多功能的集成。\[22\]

### Plasma Desktop and Netbook 4.5.0

[Plasma桌面的易用性得到改进](https://zh.wikipedia.org/wiki/Plasma "wikilink")，包括精简通知和任务区域和采用[Freedesktop.org的通知协议](../Page/Freedesktop.org.md "wikilink")。\[23\]

### KDE Applications 4.5.0

虚拟地球仪[Marble支持](https://zh.wikipedia.org/wiki/Marble "wikilink")[OpenRouteService服务](https://zh.wikipedia.org/wiki/OpenRouteService "wikilink")。

网络浏览器[Konqueror可以通过Extragear中的KWebKit组件来使用](../Page/Konqueror.md "wikilink")[WebKit](../Page/WebKit.md "wikilink")。\[24\]

## KDE SC 4.6

KDE SC 4.6于2011年1月26日發行，對OpenGL混合提供了更好的支持，并加入了大量的修正和新功能。

## 發布時間表

<table>
<thead>
<tr class="header">
<th><p>日期</p></th>
<th><p>事件</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>4.0[25]</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>| 2007年4月2日</p></td>
<td><p>子系統凍結<br />
從這個日期之後，沒有新KDE子系統或重大改變可以被提交到kdelibs的。</p></td>
</tr>
<tr class="odd">
<td><p>| 2007年5月1日</p></td>
<td><p><a href="../Page/KDELibs.md" title="wikilink">kdelibs</a> soft API凍結<br />
kdelibs API為"soft-frozen"，意思是經過核心開發者同意是可以修改。</p></td>
</tr>
<tr class="even">
<td><p>| 2007年5月11日</p></td>
<td><p>Alpha 1</p></td>
</tr>
<tr class="odd">
<td><p>| 2007年6月1日</p></td>
<td><p>trunk/KDE模塊凍結</p></td>
</tr>
<tr class="even">
<td><p>| 2007年7月4日</p></td>
<td><p>Alpha 2</p></td>
</tr>
<tr class="odd">
<td><p>| 2007年7月24日</p></td>
<td><p>核心函式庫API凍結</p></td>
</tr>
<tr class="even">
<td><p>| 2007年8月2日</p></td>
<td><p>Beta 1</p></td>
</tr>
<tr class="odd">
<td><p>| 2007年9月6日</p></td>
<td><p>Beta 2<br />
主幹凍結提交</p></td>
</tr>
<tr class="even">
<td><p>| 2007年10月18日</p></td>
<td><p>Beta 3</p></td>
</tr>
<tr class="odd">
<td><p>| 2007年10月24日</p></td>
<td><p>KDE 4發行凍結<br />
源代碼和二進制兼容性直到KDE 5，硬凍結平台與軟凍結桌面。</p></td>
</tr>
<tr class="even">
<td><p>| 2007年10月30日</p></td>
<td><p>Beta 4</p></td>
</tr>
<tr class="odd">
<td><p>rowspan="2"  |2007年11月20日</p></td>
<td><p>Release candidate 1</p></td>
</tr>
<tr class="even">
<td><p>KDE開發平台發布</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>| 2007年12月11日</p></td>
<td><p>Release candidate 2</p></td>
</tr>
<tr class="even">
<td><p>| 2008年1月11日</p></td>
<td><p><strong>KDE 4.0發布</strong></p></td>
</tr>
<tr class="odd">
<td><p>| 2008年2月5日</p></td>
<td><p>4.0.1維護版本</p></td>
</tr>
<tr class="even">
<td><p>| 2008年3月5日</p></td>
<td><p>4.0.2維護版本</p></td>
</tr>
<tr class="odd">
<td><p>| 2008年4月2日</p></td>
<td><p>4.0.3維護版本</p></td>
</tr>
<tr class="even">
<td><p>| 2008年5月7日</p></td>
<td><p>4.0.4維護版本</p></td>
</tr>
<tr class="odd">
<td><p>| 2008年6月4日</p></td>
<td><p>4.0.5維護版本</p></td>
</tr>
<tr class="even">
<td><p>4.1[26]</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>| 2008年4月20日</p></td>
<td><p>Soft特性凍結</p></td>
</tr>
<tr class="even">
<td><p>| 2008年4月29日</p></td>
<td><p>Alpha 1<br />
</p></td>
</tr>
<tr class="odd">
<td><p>| 2008年5月19日</p></td>
<td><p>Hard特性凍結</p></td>
</tr>
<tr class="even">
<td><p>| 2008年5月27日</p></td>
<td><p>Beta 1<br />
</p></td>
</tr>
<tr class="odd">
<td><p>| 2008年6月24日</p></td>
<td><p>Beta 2<br />
</p></td>
</tr>
<tr class="even">
<td><p>| 2008年7月15日</p></td>
<td><p>Release candidate 1</p></td>
</tr>
<tr class="odd">
<td><p>| 2008年7月29日</p></td>
<td><p><strong>KDE 4.1發布</strong></p></td>
</tr>
<tr class="even">
<td><p>| 2008年9月3日</p></td>
<td><p>4.1.1維護版本</p></td>
</tr>
<tr class="odd">
<td><p>| 2008年10月3日</p></td>
<td><p>4.1.2維護版本</p></td>
</tr>
<tr class="even">
<td><p>| 2008年11月5日</p></td>
<td><p>4.1.3維護版本</p></td>
</tr>
<tr class="odd">
<td><p>| 2009年1月13日</p></td>
<td><p>4.1.4維護版本</p></td>
</tr>
<tr class="even">
<td><p>4.2[27]</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>| 2008年10月19日</p></td>
<td><p>Soft特性凍結</p></td>
</tr>
<tr class="even">
<td><p>| 2008年11月17日</p></td>
<td><p>Hard特性凍結</p></td>
</tr>
<tr class="odd">
<td><p>| 2008年11月26日</p></td>
<td><p>Beta 1<br />
</p></td>
</tr>
<tr class="even">
<td><p>| 2008年12月18日</p></td>
<td><p>Beta 2<br />
</p></td>
</tr>
<tr class="odd">
<td><p>| 2009年1月13日</p></td>
<td><p>Release candidate 1</p></td>
</tr>
<tr class="even">
<td><p>| 2009年1月27日</p></td>
<td><p><strong>KDE 4.2發布</strong></p></td>
</tr>
<tr class="odd">
<td><p>| 2009年3月4日</p></td>
<td><p>4.2.1維護版本</p></td>
</tr>
<tr class="even">
<td><p>| 2009年4月2日</p></td>
<td><p>4.2.2維護版本</p></td>
</tr>
<tr class="odd">
<td><p>| 2009年5月6日</p></td>
<td><p>4.2.3維護版本</p></td>
</tr>
<tr class="even">
<td><p>| 2009年6月2日</p></td>
<td><p>4.2.4維護版本</p></td>
</tr>
<tr class="odd">
<td><p>4.3[28]</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>| 2009年4月16日</p></td>
<td><p>Soft特性凍結</p></td>
</tr>
<tr class="odd">
<td><p>| 2009年5月4日</p></td>
<td><p>Hard特性凍結</p></td>
</tr>
<tr class="even">
<td><p>| 2009年5月12日</p></td>
<td><p>Beta 1<br />
</p></td>
</tr>
<tr class="odd">
<td><p>| 2009年6月9日</p></td>
<td><p>Beta 2<br />
</p></td>
</tr>
<tr class="even">
<td><p>| 2009年6月30日</p></td>
<td><p>Release candidate 1</p></td>
</tr>
<tr class="odd">
<td><p>| 2009年7月9日</p></td>
<td><p>Release candidate 2</p></td>
</tr>
<tr class="even">
<td><p>| 2009年7月22日</p></td>
<td><p>Release candidate 3</p></td>
</tr>
<tr class="odd">
<td><p>| 2009年8月4日</p></td>
<td><p><strong>KDE 4.3發布</strong></p></td>
</tr>
<tr class="even">
<td><p>| 2009年9月1日</p></td>
<td><p>4.3.1維護版本</p></td>
</tr>
<tr class="odd">
<td><p>| 2009年10月6日</p></td>
<td><p>4.3.2維護版本</p></td>
</tr>
<tr class="even">
<td><p>| 2009年11月3日</p></td>
<td><p>4.3.3維護版本</p></td>
</tr>
<tr class="odd">
<td><p>| 2009年12月1日</p></td>
<td><p>4.3.4維護版本</p></td>
</tr>
<tr class="even">
<td><p>4.4[29]</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>| 2009年10月21日</p></td>
<td><p>Soft特性凍結</p></td>
</tr>
<tr class="even">
<td><p>| 2009年11月25日</p></td>
<td><p>Hard特性凍結</p></td>
</tr>
<tr class="odd">
<td><p>| 2009年12月4日</p></td>
<td><p>Beta 1<br />
</p></td>
</tr>
<tr class="even">
<td><p>| 2009年12月21日</p></td>
<td><p>Beta 2<br />
</p></td>
</tr>
<tr class="odd">
<td><p>| 2009年1月8日</p></td>
<td><p>Release candidate 1</p></td>
</tr>
<tr class="even">
<td><p>| 2010年1月25日</p></td>
<td><p>Release candidate 2</p></td>
</tr>
<tr class="odd">
<td><p>| 2010年2月1日</p></td>
<td><p>Release candidate 3</p></td>
</tr>
<tr class="even">
<td><p>| 2010年2月9日</p></td>
<td><p><strong>KDE SC 4.4發布</strong></p></td>
</tr>
<tr class="odd">
<td><p>| 2010年5月5日</p></td>
<td><p>4.4.3维护版本</p></td>
</tr>
<tr class="even">
<td><p>| 2010年6月1日</p></td>
<td><p>4.4.4维护版本</p></td>
</tr>
<tr class="odd">
<td><p>4.5[30]</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>| 2010年5月11日</p></td>
<td><p>特性冻结</p></td>
</tr>
<tr class="odd">
<td><p>| 2010年5月26日</p></td>
<td><p>Beta 1<br />
</p></td>
</tr>
<tr class="even">
<td><p>| 2010年6月9日</p></td>
<td><p>Beta 2<br />
</p></td>
</tr>
<tr class="odd">
<td><p>| 2010年6月23日</p></td>
<td><p>Release candidate 1</p></td>
</tr>
<tr class="even">
<td><p>| 2010年7月7日</p></td>
<td><p>Release candidate 2</p></td>
</tr>
<tr class="odd">
<td><p>| 2010年8月10日</p></td>
<td><p><strong>KDE SC 4.5发布</strong></p></td>
</tr>
<tr class="even">
<td><p>4.6[31]</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>| 2010年11月11日</p></td>
<td><p>Feature Freeze</p></td>
</tr>
<tr class="even">
<td><p>| 2010年11月24日</p></td>
<td><p>Beta 1<br />
</p></td>
</tr>
<tr class="odd">
<td><p>| 2010年12月8日</p></td>
<td><p>Beta 2<br />
</p></td>
</tr>
<tr class="even">
<td><p>| 2010年12月22日</p></td>
<td><p>Release candidate 1</p></td>
</tr>
<tr class="odd">
<td><p>| 2011年1月2日</p></td>
<td><p>Release candidate 2</p></td>
</tr>
<tr class="even">
<td><p>| 2011年1月26日</p></td>
<td><p><strong>KDE SC 4.6發布</strong></p></td>
</tr>
<tr class="odd">
<td><p>特性冻结 - 此后，不再添加新特性。<br />
所有未来的日期都是暂定的。</p></td>
<td></td>
</tr>
</tbody>
</table>

## 參考文獻

## 外部連結

  - [KDE官方網站](http://www.kde.org)
  - [KDE.news](http://dot.kde.org/)：KDE官方的新聞和公告。
  - [Planet KDE](http://www.planetkde.org/)：一個KDE的開發者和貢獻者部落格的集合。
  - [KDE論壇](http://forum.kde.org/)：KDE社群的官方論壇。
  - [LifeStream](http://buzz.kde.org/)：KDE微部落格
  - [KDE
    UserBase](http://userbase.kde.org/Welcome_to_KDE_UserBase/zh-tw)：提供使用者教學、指南和實用的小提示
  - [KDE
    UserBase](http://userbase.kde.org/Welcome_to_KDE_UserBase/zh-cn)：提供使用者教學、指南和實用的小提示
  - [KDE
    TechBase](https://web.archive.org/web/20100105220615/http://techbase.kde.org/Welcome_to_KDE_TechBase_\(zh_TW\))：提供開發人員技術性的頁面
  - [KDE
    TechBase](https://web.archive.org/web/20090707015103/http://techbase.kde.org/Welcome_to_KDE_TechBase_\(zh_CN\))：提供開發人員技術性的頁面
  - [KDE-Apps](http://www.kde-apps.org/) - KDE應用程式下載
  - [KDE-Look](http://www.kde-look.org/) - KDE外觀主題下載
  - [KDE on Windows项目](http://windows.kde.org/)
  - [KDE on Mac OS X项目](http://mac.kde.org/)
  - [KDE on FreeBSD项目](http://freebsd.kde.org/)
  - [*Previewing
    KDE 4*](http://www.linuxdevcenter.com/pub/a/linux/2006/01/12/KDE4.html)
  - [Linux Action Show interview with Aaron Seigo about KDE 4
    (part 1)](https://web.archive.org/web/20061019020456/http://www.linuxactionshow.com/?p=48)
  - [Linux Action Show interview with Aaron Seigo about KDE 4
    (part 2)](https://web.archive.org/web/20070930065554/http://www.linuxactionshow.com/?p=50)

### 中文社群

  - {{ URL | <http://www.kdecn.org/> | KDE 简体中文翻译团队}}
  - {{ URL | <http://kde.linux.org.tw/> | KDE 正体中文翻译团队}}
  - [KDE@Taiwan討論區](http://moto.debian.org.tw/viewforum.php?f=39)

### 參與中文翻譯

  - [KDE正體中文（臺灣）翻譯說明](https://web.archive.org/web/20080126091945/http://kde.linux.org.tw/kde-i18n/trans-po.html)
  - [KDE正體中文（臺灣）翻譯計劃](https://web.archive.org/web/20080522161209/http://kde.linux.org.tw/kde-i18n/)
  - [到KDE Bugzilla回報翻譯錯誤](http://bugs.kde.org/)
  - [Tryneeds（「KDE」類別）](http://tryneeds.westart.tw/)→KDE正體中文翻譯團隊維護，[相關說明](http://moto.debian.org.tw/viewtopic.php?t=13793)
  - [KDE正體中文翻譯團隊E-mail](mailto:coordinator@kde.linux.org.tw)
  - [KDE
    Localization上的正體中文（臺灣）翻譯團隊](http://l10n.kde.org/team-infos.php?teamcode=zh_TW)→提供翻譯檔下載

[Category:圖形用戶界面](https://zh.wikipedia.org/wiki/Category:圖形用戶界面 "wikilink")
[Category:软件架构](https://zh.wikipedia.org/wiki/Category:软件架构 "wikilink")
[Category:KDE_Software_Compilation](https://zh.wikipedia.org/wiki/Category:KDE_Software_Compilation "wikilink")

1.

2.

3.

4.  [Google Summer of Code 2007 – Application
    Information](http://code.google.com/soc/2007/kde/appinfo.html?csaid=1EF6392A4C8AEADD)


5.  [KDE Commit-Digest – 22nd
    July 2007](http://commit-digest.org/issues/2007-07-22/)

6.  [Oxygen Team Unveils Wallpaper Collection for
    KDE 4.0](http://dot.kde.org/1195329269/)

7.

8.

9.

10.

11. [Networkmanager in KDE4.](http://vizzzion.org/?blogentry=839)

12. [KDE 4 Network Management
    Applet](http://www.kdedevelopers.org/node/3873)

13. [KDE 4.3 Beta 1 Release
    Announcement](http://kde.org/announcements/announce-4.3-beta1.php)

14. [Social Desktop Starts to
    Arrive](http://dot.kde.org/2009/05/01/social-desktop-starts-arrive)

15.
16. <http://kdenews.org/2009/09/08/third-plasma-summit-lifts-kde-desktop-higher-grounds>

17. <http://commit-digest.org/issues/2009-01-25/>

18. <http://www.notmart.org/index.php/BlaBla/Looking_back_at_Tokamak_3>

19. <http://lists.kde.org/?l=kopete-devel&m=125226558215165&w=2>

20. <http://drfav.wordpress.com/2009/09/06/tokamak-wrap-up/>

21.

22.

23.

24.

25.

26.

27.

28.

29.

30.

31.