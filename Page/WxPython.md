**wxPython**是[Python](../Page/Python.md "wikilink")语言的[GUI工具包](https://zh.wikipedia.org/wiki/GUI "wikilink")，作为Python的扩展模块实现，包装了[wxWidgets](https://zh.wikipedia.org/wiki/wxWidgets "wikilink")。

wxPython是跨平台的，开源的。

## 範例

以下是一個簡單的wxPython的[Hello World模塊](../Page/Hello_World.md "wikilink")，描述了在wxPython中的兩個主要物件（主視窗物件和應用程序物件），然後藉由呼叫`MainLoop()`控制事件驅動系統，而該系統負責該程式的使用者互動部分。

``` python
#!/usr/bin/env python
import wx

app = wx.App(False)  # Create a new app, don't redirect stdout/stderr to a window.
frame = wx.Frame(None, wx.ID_ANY, "Hello World") # A Frame is a top-level window.
frame.Show(True)     # Show the frame.
app.MainLoop()
```

## 使用wxPython開發的程式

  - [BitTorrent](../Page/BitTorrent_\(软件\).md "wikilink")，一種對等的BitTorrent應用程序。
  - [Google Drive](https://zh.wikipedia.org/wiki/Google_Drive "wikilink")，Google雲端存儲系統的桌面客戶端\[1\]。
  - [GRASS GIS](https://zh.wikipedia.org/wiki/GRASS_GIS "wikilink")，一種免費且[開源的地理信息系統](https://zh.wikipedia.org/wiki/開源 "wikilink")。
  - [PlayOnLinux](../Page/PlayOnLinux.md "wikilink")，一個[Wine](../Page/Wine.md "wikilink")軟體[相容層的圖形化前端](https://zh.wikipedia.org/wiki/相容層 "wikilink")。

## 參見

  - [Python](../Page/Python.md "wikilink")
  - [PyGTK](../Page/PyGTK.md "wikilink")
  - [wxWidgets](https://zh.wikipedia.org/wiki/wxWidgets "wikilink")
  - [PyQt](../Page/PyQt.md "wikilink")

## 參考資料

## 延伸閱讀

  -
  -
## 外部連結

  -
  - [Project Phoenix main page](http://wiki.wxpython.org/ProjectPhoenix)

  - [List of applications developed with wxPython](http://wiki.wxpython.org/wxPythonPit%20Apps)

  - [Tutorial screencasts for starting wxPython programming](https://web.archive.org/web/20060823135830/http://showmedo.com/videos/series?name=PythonWxPythonBeginnersSeries) at showmedo

[Category:Python库](https://zh.wikipedia.org/wiki/Category:Python库 "wikilink")

1.