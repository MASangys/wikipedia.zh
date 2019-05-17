**Pacman**是一個[軟件包管理器](https://zh.wikipedia.org/wiki/軟件包管理器 "wikilink")，作為[Arch
Linux發行版的一部分](../Page/Arch_Linux.md "wikilink")。它最早由Arch Linux的[Judd
Vinet開發](https://zh.wikipedia.org/wiki/Judd_Vinet "wikilink")。Pacman可以解決安裝過程中的依賴問題，自動下載并且安裝所有需要的軟件包。

Pacman也被移植到[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")，作为基础系统的一部分随[MSYS2分发](https://zh.wikipedia.org/wiki/MSYS2 "wikilink")。

## 圖形前端

現在已經有很多可用的pacman
[GUI圖形前端](https://zh.wikipedia.org/wiki/GUI "wikilink")。

### Qt/KDE界面

  - **Shaman:** Shaman是多功能的[Qt](../Page/Qt.md "wikilink")
    4前端，它擴展了pacman一系列功能，圖形化的設置，以及ABS的支持。
  - **pacmanager-svn:**用Qt 4開發，基於pacman的包管理器。
  - **kpacupdate:**適用與[KDE系統消息欄的Pacman更新消息提示工具](../Page/KDE.md "wikilink")。
  - **octopi:**使用[Qt編寫的pacman圖型前端](../Page/Qt.md "wikilink")。
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

### 安裝

在終端機裡輸入：

  - pacman -S <package>

這樣系統會封閉迴路自動下載封包<package>以及所有的依存套件，同時進行一系列套件的安裝過程進行。

### 移除

在終端機裡輸入：

  - pacman -R <package>

這樣系統會自動移除<package>以及任何依此存套件的其它套件。

### 升級

在終端機裡輸入：

  - pacman -Syu

這樣系統會自動更新所有的套件。每次修改了 /etc/pacman.d/mirrorlist後，也必須執行一次。

## 参见

  - [高级包装工具](https://zh.wikipedia.org/wiki/高级包装工具 "wikilink")
  - [Yum](../Page/Yellowdog_Updater,_Modified.md "wikilink")
  - [ZYpp](../Page/ZYpp.md "wikilink")

## 外部連結

  - [Pacman homepage](http://www.archlinux.org/pacman/)
  - Arch
    Linux的[维基站中的](https://zh.wikipedia.org/wiki/维基 "wikilink")[Pacman](http://wiki.archlinux.org/index.php/Pacman)
  - Arch
    Linux的[维基站中的](https://zh.wikipedia.org/wiki/维基 "wikilink")[Pacman
    GUI
    Frontends](http://wiki.archlinux.org/index.php/Pacman_GUI_Frontends)
  - [DistroWatch Interview: Judd Vinet talks about Arch Linux and Pacman
    in 2003](http://distrowatch.com/dwres.php?resource=interview-arch)\<\!--

Interlang --\>

[Category:软件包管理系统](https://zh.wikipedia.org/wiki/Category:软件包管理系统 "wikilink")