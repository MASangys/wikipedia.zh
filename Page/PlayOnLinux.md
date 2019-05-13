**PlayOnLinux**是一個[Wine軟體](../Page/Wine.md "wikilink")[相容層的圖形化前端](../Page/相容層.md "wikilink")，可以讓[Linux的使用者安裝基於](../Page/Linux.md "wikilink")[Windows的](../Page/Microsoft_Windows.md "wikilink")[电子游戏](../Page/电子游戏.md "wikilink")、[Microsoft
Office](../Page/Microsoft_Office.md "wikilink")（2000到2010）、Microsoft
[Internet
Explorer](../Page/Internet_Explorer.md "wikilink")、以及其他許多[应用软件](../Page/应用软件.md "wikilink")，像是Apple
[iTunes及](../Page/iTunes.md "wikilink")[Safari等](../Page/Safari.md "wikilink")\[1\]\[2\]。

## 內部

PlayOnLinux結合了[bash](../Page/bash.md "wikilink")、[Python及](../Page/Python.md "wikilink")[wxPython進行開發](../Page/wxPython.md "wikilink")。

該系統提供了一些[Shell脚本以指定Wine在安裝及執行特定應用程式時所需要的特殊設定](../Page/Shell脚本.md "wikilink")。

它使用了一個線上的指令碼資料庫以套用各應用程式所需的特殊設定；若某應用程式不在資料庫裡，也仍可以執行手動安裝。[程式可以安裝在個別的不同容器](../Page/计算机程序.md "wikilink")（WINEPREFIX）中以避免與其他應用程式互相干擾。這種隔離的方式大致上與[CrossOver的bottles運作的方式相同](../Page/CrossOver.md "wikilink")。
因此，不同的應用程式可以使用不同的Wine版本及設定。這些安裝由PlayOnLinux軟體管理，不需要另外安裝Wine。

這個程式同時也允許使用者建立[虛擬](../Page/硬件虚拟化.md "wikilink")[分割區](../Page/硬盘分区.md "wikilink")，其可以讓特定的程式以不同的Wine版本安裝並與不同的程式共存，類似於可[多重開機的電腦](../Page/多重開機.md "wikilink")。

### 指令碼語言

**PlayOnLinux**包含了一些bash的進階功能，讓社群可以建立指令碼以方便控制安裝過程\[3\]。每一個支援的程式都有用這種語言編寫的指令碼。

例如，下面的這個簡單的指令碼會彈出一個包含「Hello World」訊息的設定視窗：

``` bash
#!/bin/bash
[ "$PLAYONLINUX" = "" ] && exit 0
source "$PLAYONLINUX/lib/sources"

POL_SetupWindow_Init

POL_SetupWindow_message "Hello World!" "My first message"

POL_SetupWindow_Close
exit
```

  - [PlayOnLinux
    Bash的-{文件}-](http://www.playonlinux.com/en/dev-documentation-1.html)

## 參見

  - [Wine](../Page/Wine.md "wikilink")

## 參考資料

## 外部連結

  -
  - [支援的軟體](http://www.playonlinux.com/en/supported_apps-1-0.html)

[Category:系统软件](https://zh.wikipedia.org/wiki/Category:系统软件 "wikilink")
[Category:Linux軟件](https://zh.wikipedia.org/wiki/Category:Linux軟件 "wikilink")

1.
2.
3.