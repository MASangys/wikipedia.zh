**PyGTK**是一套用[Python封裝的](../Page/Python.md "wikilink")，用於[GTK+的](../Page/GTK+.md "wikilink")[GUI庫](../Page/GUI.md "wikilink")。PyGTK是在[LGPL授權下的](../Page/LGPL.md "wikilink")[自由軟件](../Page/自由軟件.md "wikilink")。它的作者是著名的GNOME開發者[James
Henstridge](../Page/James_Henstridge.md "wikilink")。今天PyGTK核心研發團隊有6人，與及其他不同開發者和用戶提出修正報告和[補丁](../Page/補丁.md "wikilink")。PyGTK所開發的應用程式更已被選應用於[OLPC的系統之上](../Page/OLPC.md "wikilink")。開發商和有關各方通常可以在[IRC頻道irc](../Page/IRC.md "wikilink").gnome.org找到\#pygtk的相關文件。

## 語法

下面的[代碼將產生一個](../Page/代碼.md "wikilink")200x200像素的窗口，內裏列出"[Hello
World](../Page/Hello_World.md "wikilink")"的[文字](../Page/文字.md "wikilink")。

``` python
import pygtk
import gtk

def createWindow():
    window = gtk.Window()
    window.set_default_size(200, 200)
    window.connect('destroy', gtk.main_quit)

    label = gtk.Label('Hello World')
    window.add(label)

    label.show()
    window.show()

createWindow()
gtk.main()
```

## 使用PyGTK的常見程式

有不少常見的應用程式用上了PyGTK，以下是一些例子：

  - [Anaconda installer](../Page/Anaconda_installer.md "wikilink")
  - [BitTorrent](../Page/BitTorrent_\(软件\).md "wikilink")
  - [Deluge（BitTorrent的客戶端）](../Page/Deluge（BitTorrent的客戶端）.md "wikilink")
  - [Emesene](../Page/Emesene.md "wikilink")
  - [Exaile](../Page/Exaile.md "wikilink")
  - [Flumotion](../Page/Flumotion.md "wikilink")
  - [gDesklets](../Page/gDesklets.md "wikilink")
  - [Gedit](../Page/Gedit.md "wikilink")（用於可選的Python子系統和插件）
  - [GIMP](../Page/GIMP.md "wikilink")（用於可選的Python script）
  - [GNOME Sudoku](../Page/Sudoku.md "wikilink")
  - [GRAMPS](../Page/GRAMPS.md "wikilink")
  - [Itaka](../Page/Itaka.md "wikilink")
  - [Jokosher](../Page/Jokosher.md "wikilink")
  - [PyMusique](../Page/PyMusique.md "wikilink")
  - [Pybliographer](../Page/Pybliographer.md "wikilink")
  - [Quod Libet](../Page/Quod_Libet.md "wikilink")
  - [ROX Desktop](../Page/ROX_Desktop.md "wikilink")
  - [ROX-Filer](../Page/ROX-Filer.md "wikilink")
  - [Stoq](../Page/Stoq.md "wikilink")

## 参考资料

<references />

## 參見

  - [PyQt](../Page/PyQt.md "wikilink")（Python包裝的Qt工具）
  - [wxPython](../Page/wxPython.md "wikilink")（Python包裝的WX工具收集）

## 外部連結

  - [PyGTK首頁](http://www.pygtk.org/)
  - [PyGTK常見問題](http://www.async.com.br/faq/pygtk/index.py?req=all)
  - [PyGTK教程](http://pygtk.org/pygtk2tutorial/index.html)
  - [PyGTK系列学习笔记](https://web.archive.org/web/20121005071209/http://www.dawndiy.com/archives/tag/pygtk)

[Category:GTK](https://zh.wikipedia.org/wiki/Category:GTK "wikilink")
[Category:Python库](https://zh.wikipedia.org/wiki/Category:Python库 "wikilink")
[Category:部件工具箱](https://zh.wikipedia.org/wiki/Category:部件工具箱 "wikilink")