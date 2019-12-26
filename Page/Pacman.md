**Pacman**是一個[軟件包管理器](https://zh.wikipedia.org/wiki/軟件包管理器 "wikilink")，作為[Arch Linux發行版的一部分](../Page/Arch_Linux.md "wikilink")。它最早由Arch Linux的[Judd Vinet開發](https://zh.wikipedia.org/wiki/Judd_Vinet "wikilink")。Pacman可以解決安裝過程中的依賴問題，自動下載并且安裝所有需要的軟件包。

Pacman也被移植到[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")，作为基础系统的一部分随[MSYS2分发](https://zh.wikipedia.org/wiki/MSYS2 "wikilink")。

## 圖形前端

現在已經有很多可用的pacman [GUI圖形前端](https://zh.wikipedia.org/wiki/GUI "wikilink")。

### Qt/KDE界面

  - **Shaman:** Shaman是多功能的[Qt](../Page/Qt.md "wikilink") 4前端，它擴展了pacman一系列功能，圖形化的設置，以及ABS的支持。
  - **pacmanager-svn:**用Qt 4開發，基於pacman的包管理器。
  - **kpacupdate:**適用與[KDE](../Page/KDE.md "wikilink")系統消息欄的Pacman更新消息提示工具。
  - **octopi:**使用[Qt](../Page/Qt.md "wikilink")編寫的pacman圖型前端。
  - **oktopi:**octopi的分支，針對KDE所設計，已併入octopi。

### GTK/GNOME界面

  - **gtkpacman:**采用Py[GTK2開發的pacman圖形前端](https://zh.wikipedia.org/wiki/GTK+ "wikilink")。
  - **alunn:**顯示新的更新和消息的系統提示。
  - **guzuta:**另一個 采用PyGTK開發的前端。
  - **pacmon-svn:**提示可用更新的任務欄部件。
  - **pacupdate:**提示系統更新的系統提示。
  - **wakka:**gtkpacman的一個分支。
  - **kalu:**在系統匣顯示官方新聞及更新（包含官方套件庫及AUR），同時包含了一個系統升級的圖形前端。

## 语法

### 同步包

在終端機裡輸入：

  - pacman -S <package>

這樣系統會封閉迴路自動下載封包<package>以及所有的依存套件，同時進行一系列套件的安裝過程進行。

参数：

  - \-s --search <正则表达式>

会在所有源列表中搜索与表达式匹配的包并列出

  - \-u --sysupgrade

将升级所有版本比源列表低的包，通过调用两次可以变为与源列表不相等的包，该命令对于从不稳定源切换至稳定源十分有用

  - \-w --downloadonly

只返回搜索结果，不进行安装或升级操作

  - \-y --refresh

下载主源列表最新副本，通常配合 -u 使用，通过调用两次即可强制下载，即使版本相同

### 移除

在終端機裡輸入：

  - pacman -R <package>

這樣系統會自動移除<package>以及任何依此存套件的其它套件。

参数：

  - \-c --cascade

递归删除该包及所有与该包有依赖关系的包，请小心使用该参数

  - \-u --uneeded

删除向下没有依赖关系的包，比起 -c ，本参数更为安全

### 更新

在終端機中输入：

  - pacman -U <package>

这样系统可以同步已经在本地的包至最新状态

## 参见

  - [APT](../Page/APT.md "wikilink")
  - [Yum](../Page/Yellowdog_Updater,_Modified.md "wikilink")
  - [ZYpp](../Page/ZYpp.md "wikilink")

## 外部連結

  - [Pacman homepage](http://www.archlinux.org/pacman/)
  - Arch Linux的[维基站中的](https://zh.wikipedia.org/wiki/维基 "wikilink")[Pacman](http://wiki.archlinux.org/index.php/Pacman)
  - Arch Linux的[维基站中的](https://zh.wikipedia.org/wiki/维基 "wikilink")[Pacman GUI Frontends](http://wiki.archlinux.org/index.php/Pacman_GUI_Frontends)
  - [DistroWatch Interview: Judd Vinet talks about Arch Linux and Pacman in 2003](http://distrowatch.com/dwres.php?resource=interview-arch)\<\!--

Interlang --\>

  - [pacman 文档](https://www.archlinux.org/pacman/pacman.8.html)

[Category:软件包管理系统](https://zh.wikipedia.org/wiki/Category:软件包管理系统 "wikilink")