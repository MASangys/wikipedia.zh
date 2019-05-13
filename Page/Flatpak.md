**Flatpak**，在2016年5月前又被稱为**xdg-app**，是一個[Linux桌面應用電腦環境的](../Page/Linux#個人電腦.md "wikilink")系統。

## 原理

這個程式的目標是在使用者想要執行他們可能並不完全信任的[应用软件時提供一個安全的](../Page/应用软件.md "wikilink")[沙盒環境供使用者使用](../Page/沙盒_\(電腦安全\).md "wikilink")\[1\]。應用程式將必須使用由flatpak提供的函式呼叫來控制硬體裝置或存取使用者的檔案，而flatpak將會在給予應用程式存取權限前提示使用者\[2\]。

其原始名稱是來自於[freedesktop.org的協作關係](../Page/freedesktop.org.md "wikilink")，其通常縮寫為“xdg”\[3\]。當時，[freedesktop.org的伺服器被公認是xdg](../Page/freedesktop.org.md "wikilink")-app專案的家\[4\]。2016年5月，在活躍的開發下，其更名為“Flatpak”\[5\]。

，部份應用程式加入了在Flatpak（xdg-app）下執行的初步支援，如[LibreOffice](../Page/LibreOffice.md "wikilink")\[6\]\[7\]、
Glom\[8\]與[Pitivi](../Page/Pitivi.md "wikilink")\[9\]。

## 技術

其沙盒是基於[Linux核心以下子系統所提供的功能](../Page/Linux核心.md "wikilink")：

  - [cgroups](../Page/cgroups.md "wikilink")
  - Linux namespaces
  - [SELinux](../Page/安全增强式Linux.md "wikilink")（目前未使用）
  - [kdbus](../Page/D-Bus#kdbus.md "wikilink")（未來可能會使用，目前使用用戶空間過濾）
  - 視窗化系統基於[Wayland](../Page/Wayland.md "wikilink")（因為[X
    Window核心協議已被開發者認為不安全](../Page/X_Window核心協議.md "wikilink")\[10\]）

## 替代方案

不依賴於特定发行版的包裝格式在Linux生態系中在Flatpak前早已被提出過數次。2000年代早期，[autopackage開始](../Page/autopackage.md "wikilink")，2004年則是klik，這也提供了Alexander
Larsson靈感，於2007年開發出*glick*專案\[11\]。到了2014年，klik便演化成AppImage，其目標是成為不依賴於特定散佈版的[可攜式上游打包格式](../Page/可攜式軟體.md "wikilink")。[Canonical公司則於](../Page/Canonical公司.md "wikilink")2016年釋出了[Snappy](../Page/Snappy_\(包管理器\).md "wikilink")，其目標也是為了提供廣泛的linux生態系一個通用的包裝格式\[12\]，其支援類似於Flatpak的格式，同時也支援應用程式商店式的[数字发行與更新模式](../Page/数字发行.md "wikilink")。

## 參考資料

## 參見

  - [freedesktop](../Page/freedesktop.md "wikilink")
  - [GNOME](../Page/GNOME.md "wikilink")

[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")
[Category:操作系统安全](https://zh.wikipedia.org/wiki/Category:操作系统安全 "wikilink")
[Category:操作系统技术](https://zh.wikipedia.org/wiki/Category:操作系统技术 "wikilink")
[Category:Linux软件包管理相关软件](https://zh.wikipedia.org/wiki/Category:Linux软件包管理相关软件 "wikilink")
[Category:软件分发](https://zh.wikipedia.org/wiki/Category:软件分发 "wikilink")

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