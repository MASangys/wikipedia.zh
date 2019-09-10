**PackageKit**是由Richard Hughes所開發的[自由且開源的](../Page/自由及开放源代码软件.md "wikilink")[应用软件套裝](https://zh.wikipedia.org/wiki/应用软件 "wikilink")，旨在為多種不同的[软件包管理系统](../Page/软件包管理系统.md "wikilink")提供一個一致的高階[前端](https://zh.wikipedia.org/wiki/前端和后端 "wikilink")。

此軟體套裝表面上是[跨平台的](https://zh.wikipedia.org/wiki/跨平台 "wikilink")，但它主要的目標是提供遵循[Freedesktop.org](../Page/Freedesktop.org.md "wikilink")標準的[Linux发行版](../Page/Linux发行版.md "wikilink")之間的互操作性。它使用[D-Bus](../Page/D-Bus.md "wikilink")及提供的[函式庫](../Page/函式庫.md "wikilink")來處理內部進程溝通及取得權限。

## 歷史

PackageKit是由Richard Hughes在他的部落格上於2007年首次提出\[1\]\[2\]，現在由一個小型團隊進行開發。[Fedora](../Page/Fedora.md "wikilink") 9 是第一個使用PackageKit作為[yum的預設前端的發行版](https://zh.wikipedia.org/wiki/Yellow_Dog_Updater_Modified "wikilink")。其在Fedora 10 及 Fedora 11歷經了多次更新。

## 設計

PackageKit本身是一個稱做 `packagekitd` 的[守护进程](../Page/守护进程.md "wikilink")，它將不同系統中的差異抽象化。另一個稱為 `libpackagekit` 的函式庫允許其他程式與PackageKit進行互動\[3\]。

其特性包括：

  - 可以從本機檔案、套裝媒體或是遠端資源中進行安裝。
  - 使用取得權限。
  - 不會取代已存在的軟體包管理系統。
  - 多使用者系統感知 － 它不會允許在事務處理的關鍵部份關機。
  - 不使用時可以關閉。

### 前端

[Free_and_open-source-software_display_servers_and_UI_toolkits.svg](https://zh.wikipedia.org/wiki/File:Free_and_open-source-software_display_servers_and_UI_toolkits.svg "fig:Free_and_open-source-software_display_servers_and_UI_toolkits.svg")及[NetworkManager](../Page/NetworkManager.md "wikilink")齊名的[守护进程](../Page/守护进程.md "wikilink")\]\] PackageKit目前有數種[前端](https://zh.wikipedia.org/wiki/前端和后端 "wikilink")：

[File:Kpackagekit.png|使用](File:Kpackagekit.png%7C使用)[Qt](../Page/Qt.md "wikilink")的[Apper](../Page/Apper.md "wikilink") [File:GNOME_Software_3.10.png|使用](File:GNOME_Software_3.10.png%7C使用)[GTK+的](https://zh.wikipedia.org/wiki/GTK+ "wikilink")[GNOME Software](https://zh.wikipedia.org/wiki/GNOME_Software "wikilink") <File:PackageKit> on Fedora.png|廢棄的gnome-packagekit

  - **pkcon** 供[命令行界面](../Page/命令行界面.md "wikilink")使用。

### 後端

許多不同的[软件包管理系统](../Page/软件包管理系统.md "wikilink")（稱為後端）支援多種不同的抽象方法及訊號供前端工具使用\[4\]。支援的後端包括了：

  - [APT](../Page/APT.md "wikilink")

  -
  - [Conary](../Page/Conary.md "wikilink")

  - [DNF](../Page/DNF_\(软件\).md "wikilink")

  - [Sabayon Linux的](../Page/Sabayon_Linux.md "wikilink")[Entropy](http://wiki.sabayonlinux.org/index.php?title=En:Entropy)

  - [Opkg](../Page/Opkg.md "wikilink")

  - [Pacman](../Page/Pacman.md "wikilink")

  -
  - [poldek](http://poldek.pld-linux.org/)

  - [Portage](../Page/Portage.md "wikilink")

  - [razor](https://github.com/krh/razor)

  - [Smart Package Manager](https://zh.wikipedia.org/wiki/Smart_Package_Manager "wikilink")

  - [YUM](https://zh.wikipedia.org/wiki/Yellow_Dog_Updater_Modified "wikilink")

  - [ZYpp](../Page/ZYpp.md "wikilink")

  - [urpmi](https://zh.wikipedia.org/wiki/urpmi "wikilink")

## 參見

  - [AppStream](../Page/AppStream.md "wikilink")

  - [Listaller](../Page/Listaller.md "wikilink")

  -
## 參考資料

## 外部連結

  - [Website of PackageKit](https://web.archive.org/web/20080319042651/http://www.packagekit.org/)

[分類:使用Qt的軟體](https://zh.wikipedia.org/wiki/分類:使用Qt的軟體 "wikilink")

[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink") [Category:Linux軟件](https://zh.wikipedia.org/wiki/Category:Linux軟件 "wikilink")

1.
2.
3.
4.