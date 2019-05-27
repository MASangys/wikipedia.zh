****（简称**SVN**，svn），一個[开放源代码的](../Page/开放源代码.md "wikilink")[版本控制系統](../Page/版本控制.md "wikilink")，相较于[RCS](../Page/修订控制系统.md "wikilink")、[CVS](https://zh.wikipedia.org/wiki/协作版本系统 "wikilink")，它採用了分支管理系統，它的設計目標就是取代CVS。互聯網上很多版本控制服務已从CVS转移到Subversion。

## 历史

[CollabNet](https://zh.wikipedia.org/wiki/CollabNet "wikilink")
于2000年创建SVN项目，意在写出一款近似[CVS操作方式的版本控制系统](https://zh.wikipedia.org/wiki/CVS "wikilink")。只不过，此款产品针对CVS的bug和一些缺失的功能，进行了修正和补充。

2000年2月，他们联系了Open Source Development with CVS（Coriolis, 1999）的作者Karl
Fogel，问他是否愿意为这个新專案工作。巧的是这时Karl已经在和他的朋友Jim
Blandy讨论一个新的版本控制系统的设计。在1995年，两人开了一家提供CVS技术支持的公司，叫作Cyclic
Software。虽然公司已经卖掉了，他们仍然在日常工作中使用CVS。在使用CVS时受到的束缚已经让Jim开始仔细思考管理版本化数据的更好的路子。他不仅已经起好了名字“Subversion”，而且有了Subvesion资料库的基本设计。当CollabNet打来电话时，Karl立刻同意为这个專案工作。Jim征得他的老板RedHat
Software的同意，让他投入这个專案，而且没有时间限制。CollabNet雇用了Karl和Ben
Collins-Sussman，从5月份开始详细设计。由于Greg Stein和CollabNet的Brian
Behlendorf和Jason
Robbins作了恰当的推动，Subversion很快吸引了一个活跃的开发人员社群。这说明了许多人有相同的受制于CVS的经验，他们对终于有机会对它做点什么表示欢迎。

最初的设计团队设定了几个简单的目标。他们并不想在版本控制方法论上有新突破。他们只想修补CVS。他们决定Subversion应该与CVS相似，保留相同的开发模型，但不复制CVS最明显的缺点。虽然它不一定是CVS的完全的替代品，但它应该和CVS相似，从而任何CVS用户可以不费什么力气的转换过来。

经过14个月的编码，在2001年8月31号，Subversion可以“自我寄生”了。就是说，Subversion开发人员停止使用CVS管理Subversion的源代码，开始使用Subversion代替。

虽然CollabNet发起了这个项目，而且仍然资助一大部分的工作（它为一些专职的Subversion开发人员发薪水）。但是Subversion像大部分开放源码的项目一样运作，由一个松散透明，鼓励能者多劳的规则管理。CollabNet的版权许可证和Debian
FSG完全兼容。换句话说，任何人可以免费下载，修改，按自己的意愿重新分发Subversion，而不必得到来自CollabNet或其他任何人的许可。

2009年11月，Subversion被[Apache
Incubator專案所接收](https://zh.wikipedia.org/wiki/Apache_Incubator "wikilink")。

2010年1月，正式成為[Apache软件基金会的一個頂級專案](../Page/Apache软件基金会.md "wikilink")。

## 特性

  - 统一的版本号。CVS是对每个文件顺序编排版本号，在某一时间各文件的版本号各不相同。而Subversion下，任何一次提交都会对所有文件增加到同一个新版本号，即使是提交并不涉及的文件。所以，各文件在某任意时间的版本号是相同的。版本号相同的文件构成软件的一个版本。
  - [原子提交](https://zh.wikipedia.org/wiki/原子操作 "wikilink")。一次提交不管是單個還是多個文件，都是作為一個整體提交的。在這當中發生的意外例如傳輸中斷，不會引起數據庫的不完整和數據損壞。
  - 重命名、複製、刪除文件等動作都保存在版本歷史記錄當中。
  - 對於二進制文件，使用了節省空間的保存方法（簡單的理解，就是只保存和上一版本不同之處）。
  - 目錄也有版本歷史。整個目錄樹可以被移動或者複製，操作很簡單，而且能夠保留全部版本記錄。
  - 分支的開銷非常小。
  - 最佳化過的數據庫訪問，使得一些操作不必訪問數據庫就可以做到。這樣減少了很多不必要的和數據庫主機之間的網絡流量。
  - 支持元数据（Metadata）管理。每个目录或文件都可以定义属性（Property），它是一些隐藏的键值对，用户可以自定义属性内容，而且属性和文件内容一样在版本控制范围内。
  - 支持[FSFS和](https://zh.wikipedia.org/wiki/FSFS "wikilink")[Berkeley
    DB两种资料库格式](../Page/Berkeley_DB.md "wikilink")。

## 企业级subversion

### Subversion Multisite

对于企业级应用，subversion还有其先天不足，比如对于多个地点的并行开发。Wandisco公司为此开发了subversion
multisite，实现异地对等服务器自动同步，支持并行开发以及异地备份。

### 基于Subversion的ALM平台——UberSVN

ALM（Application Lifecycle
Management）是软件配置管理的未来趋势，各种软件版本工具包括subversion都要集成到其中。目前UberSVN是唯一的以Subversion为基础构建的ALM平台，并实现了协同开发以及社交化编码。

## 不足

  - 只能设置目录的访问权限，无法设置单个文件的访问权限（目前可以通过辅助模块比如wandisco access
    control实现单文件访问）。
  - 数据库为二进制格式，无法方便的利用其它软件读取数据库的内容。

## 使用情況

雖然在2006年Subversion的使用族群仍然遠少於傳統的CVS，但已經有許多[開放-{zh-tw:原碼;zh-hk:原碼;zh-cn:源码;}-團體決定將CVS轉換為Subversion](https://zh.wikipedia.org/wiki/開放源代碼 "wikilink")。已經轉換使用Subversion的包括了[FreeBSD](../Page/FreeBSD.md "wikilink")、[Apache
Software
Foundation](https://zh.wikipedia.org/wiki/Apache_Software_Foundation "wikilink")、[KDE](../Page/KDE.md "wikilink")、[GNOME](../Page/GNOME.md "wikilink")、[GCC](../Page/GCC.md "wikilink")、[Python](../Page/Python.md "wikilink")、[Samba](../Page/Samba.md "wikilink")、[Mono以及許多團體](../Page/Mono.md "wikilink")。許多開發團隊換用Subversion是因為[Trac](../Page/Trac.md "wikilink")、[SourceForge](../Page/SourceForge.md "wikilink")、[CollabNet](https://zh.wikipedia.org/wiki/CollabNet "wikilink")、[CodeBeamer等專案協同作業軟體以及](https://zh.wikipedia.org/wiki/CodeBeamer "wikilink")[Eclipse](../Page/Eclipse.md "wikilink")、[NetBeans等](../Page/NetBeans.md "wikilink")[IDE提供Subversion的支援整合](https://zh.wikipedia.org/wiki/IDE "wikilink")。除此之外，一些自由軟體開發的協作網如[SourceForge.net除了提供CVS外](https://zh.wikipedia.org/wiki/SourceForge.net "wikilink")，現在也提供專案開發者使用Subversion作為源代码管理系統，[JavaForge](https://zh.wikipedia.org/wiki/JavaForge "wikilink")、[Google
Code以及](https://zh.wikipedia.org/wiki/Google_Code "wikilink")[BountySource則以Subversion作為官方的源代码管理系統](https://zh.wikipedia.org/wiki/BountySource "wikilink")。

2009年，绝大多数CVS服务已经改用SVN。此时CVS早已经停止维护。不过CVS也有了合适的替代品。

## SVN客户端圖形化軟體

### TortoiseSVN

在windows非常受到歡迎的一套客户端軟體，它與[檔案總管整合得相當不錯](../Page/檔案總管.md "wikilink")，可以透過檔案總管在檔案或目錄上用滑鼠右鍵的選單完成SVN的操作。
[TortoiseSVN官方網站](http://TortoiseSVN.net)

### SnailSVN

Mac OS X 平台下类似 TortoiseSVN 的图形化 SVN 客户端，可自动标记文件状态，并通过右键菜单提供各种常用 SVN 功能。
[下载 SnailSVN (Mac App
Store)](https://itunes.apple.com/cn/app/snailsvn/id847259925?mt=12)

### Ankhsvn

將subversion的操作整合進Visual Studio的SVN 客户端軟體。
[Ankhsvn官方網站](http://ankhsvn.open.collab.net/)

### Subclipse

將Subversion的操作整合進Eclipse的SVN 客户端軟體。
[Subclipse官方網站](http://subclipse.tigris.org/)

### Subversive

和Subclipse相同。 [Subversive官方網站](http://www.eclipse.org/subversive/)

### SCPlugin

Mac OS下類似TortoiseSVN的軟體。 [SCPlugin官方網站](http://scplugin.tigris.org/)

### SVNx

Mac OS X下的一款客户端軟體。 [SVNx官方網站](http://code.google.com/p/svnx/)

### eSVN

Unix下類似TortoiseSVN的軟體。 [eSVN官方網站](http://sourceforge.net/projects/esvn)

### kdesvn

Linux下使用KDE桌面管理下類似TortoiseSVN的軟體。
[kdesvn官方網站](https://archive.is/20051208020426/http://www.alwins-world.de/programs/kdesvn/)

### RabbitVCS

Linux下使用Gnome桌面管理下類似TortoiseSVN的軟體。
[RabbitVCS官方網站](http://rabbitvcs.org/)

### GTalkabout

Windows下整合了討論功能的客户端軟體。 [GTalkabout官方網站](http://www.gtalkabout.com/)

## 外部連結

  - [Subversion官方網站](http://subversion.apache.org/)
      - [Subversion舊官方網站](http://subversion.tigris.org/)

[Category:版本控制系統](https://zh.wikipedia.org/wiki/Category:版本控制系統 "wikilink")
[Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink")
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")