**KDE Plasma
5**是一套由[KDE](../Page/KDE.md "wikilink")所編寫的[圖形介面殼層](https://zh.wikipedia.org/wiki/殼層#图形用户界面（GUI）殼層 "wikilink")，是[KDE
Plasma
4的繼承者](https://zh.wikipedia.org/wiki/KDE_Plasma_Workspaces "wikilink")，最初穩定版本於2014年7月15日釋出\[1\]。

## 概觀

[KDE_Plasma2_TP.png](https://zh.wikipedia.org/wiki/File:KDE_Plasma2_TP.png "fig:KDE_Plasma2_TP.png")

### 軟體架構

KDE Plasma 5使用並建基於[Qt 5及](../Page/Qt.md "wikilink")[KDE Frameworks
5之上](../Page/KDE_Frameworks_5.md "wikilink")\[2\]。Plasma
5.0改進了對[HiDPI顯示器的支援](../Page/每英寸像素.md "wikilink")\[3\]，且帶來了一個融合的[圖形介面殼層](https://zh.wikipedia.org/wiki/殼層#图形用户界面（GUI）殼層 "wikilink")，可以在不同的目標設備上切換不同的殼層。而一些看不見的改變則包括了遷移到了一個新的，有著完整硬體加速支援的顯示堆疊，建基於[OpenGL](../Page/OpenGL.md "wikilink")／[OpenGL
ES](../Page/OpenGL_ES.md "wikilink")\[4\]。

### 視窗系統

因為KDE Plasma 5使用並建基於[Qt 5及](../Page/Qt.md "wikilink")[KDE Frameworks
5之上](../Page/KDE_Frameworks_5.md "wikilink")，因此可以調整後端使用多種[視窗系統](../Page/視窗系統.md "wikilink")來顯示，包括了[X11及](https://zh.wikipedia.org/wiki/X11 "wikilink")[Wayland](../Page/Wayland.md "wikilink")顯示協定\[5\]，一直到[Quartz及](../Page/Quartz_Compositor.md "wikilink")[GDI+](../Page/GDI+.md "wikilink")。

Plasma 5完整的將[KDE Plasma
4遷移到QtQuick](https://zh.wikipedia.org/wiki/KDE_Plasma_Workspaces "wikilink")。而Qt
5的QtQuick
2則使用了具備了硬體加速功能的OpenGL(ES)來合成並渲染螢幕上的圖形。這可以讓圖形渲染的重擔完整的轉移到顯示卡上，讓顯示速度更快且更節能。而因為圖形合成器的內部變更，對於[Wayland](../Page/Wayland.md "wikilink")的支援預計會在未來的版本中實現。

### 開發

因為[KDE Software
Compilation分割為](https://zh.wikipedia.org/wiki/KDE_Software_Compilation "wikilink")[KDE
Frameworks 5](../Page/KDE_Frameworks_5.md "wikilink")、KDE Plasma 5及[KDE
Applications
5](https://zh.wikipedia.org/wiki/KDE_Software_Compilation#第四版以後 "wikilink")，每一個子專案都可以選擇他們自己的開發步伐\[6\]。而KDE
Plasma 5則是使用了自己的發佈時間表，每三個月有一個新功能版本的釋出，且中間的每個月都會有錯誤修復版本。

## 參考資料

## 外部連結

  -
  - [Plasma使用者wiki](http://userbase.kde.org/Plasma)

  - [Plasma開發者wiki](http://community.kde.org/Plasma)

[Category:KDE_Software_Compilation](https://zh.wikipedia.org/wiki/Category:KDE_Software_Compilation "wikilink")
[Category:X_Window系统](https://zh.wikipedia.org/wiki/Category:X_Window系统 "wikilink")
[Category:桌面环境](https://zh.wikipedia.org/wiki/Category:桌面环境 "wikilink")

1.
2.

3.

4.

5.

6.