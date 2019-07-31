**PyGTK**是一套用[Python](../Page/Python.md "wikilink")封裝的，用於[GTK+的](https://zh.wikipedia.org/wiki/GTK+ "wikilink")[GUI庫](https://zh.wikipedia.org/wiki/GUI "wikilink")。PyGTK是在[LGPL授權下的](https://zh.wikipedia.org/wiki/LGPL "wikilink")[自由軟件](https://zh.wikipedia.org/wiki/自由軟件 "wikilink")。它的作者是著名的GNOME開發者[James Henstridge](https://zh.wikipedia.org/wiki/James_Henstridge "wikilink")。今天PyGTK核心研發團隊有6人，與及其他不同開發者和用戶提出修正報告和[補丁](https://zh.wikipedia.org/wiki/補丁 "wikilink")。PyGTK所開發的應用程式更已被選應用於[OLPC](../Page/OLPC.md "wikilink")的系統之上。開發商和有關各方通常可以在[IRC](../Page/IRC.md "wikilink")頻道irc.gnome.org找到\#pygtk的相關文件。

## 語法

下面的[代碼將產生一個](https://zh.wikipedia.org/wiki/代碼 "wikilink")200x200像素的窗口，內裏列出"[Hello World](../Page/Hello_World.md "wikilink")"的[文字](../Page/文字.md "wikilink")。

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

  - [Anaconda installer](https://zh.wikipedia.org/wiki/Anaconda_installer "wikilink")
  - [BitTorrent](../Page/BitTorrent_\(软件\).md "wikilink")
  - [Deluge（BitTorrent的客戶端）](https://zh.wikipedia.org/wiki/Deluge（BitTorrent的客戶端） "wikilink")
  - [Emesene](../Page/Emesene.md "wikilink")
  - [Exaile](https://zh.wikipedia.org/wiki/Exaile "wikilink")
  - [Flumotion](https://zh.wikipedia.org/wiki/Flumotion "wikilink")
  - [gDesklets](https://zh.wikipedia.org/wiki/gDesklets "wikilink")
  - [Gedit](../Page/Gedit.md "wikilink")（用於可選的Python子系統和插件）
  - [GIMP](../Page/GIMP.md "wikilink")（用於可選的Python script）
  - [GNOME Sudoku](https://zh.wikipedia.org/wiki/Sudoku "wikilink")
  - [GRAMPS](https://zh.wikipedia.org/wiki/GRAMPS "wikilink")
  - [Itaka](https://zh.wikipedia.org/wiki/Itaka "wikilink")
  - [Jokosher](https://zh.wikipedia.org/wiki/Jokosher "wikilink")
  - [PyMusique](https://zh.wikipedia.org/wiki/PyMusique "wikilink")
  - [Pybliographer](https://zh.wikipedia.org/wiki/Pybliographer "wikilink")
  - [Quod Libet](https://zh.wikipedia.org/wiki/Quod_Libet "wikilink")
  - [ROX Desktop](https://zh.wikipedia.org/wiki/ROX_Desktop "wikilink")
  - [ROX-Filer](https://zh.wikipedia.org/wiki/ROX-Filer "wikilink")
  - [Stoq](https://zh.wikipedia.org/wiki/Stoq "wikilink")

## 参考资料

<references />

## 參見

  - [PyQt](../Page/PyQt.md "wikilink")（Python包裝的Qt工具）
  - [wxPython](https://zh.wikipedia.org/wiki/wxPython "wikilink")（Python包裝的WX工具收集）

## 外部連結

  - [PyGTK首頁](http://www.pygtk.org/)
  - [PyGTK常見問題](http://www.async.com.br/faq/pygtk/index.py?req=all)
  - [PyGTK教程](http://pygtk.org/pygtk2tutorial/index.html)
  - [PyGTK系列学习笔记](https://web.archive.org/web/20121005071209/http://www.dawndiy.com/archives/tag/pygtk)

[Category:GTK](https://zh.wikipedia.org/wiki/Category:GTK "wikilink") [Category:Python库](https://zh.wikipedia.org/wiki/Category:Python库 "wikilink") [Category:部件工具箱](https://zh.wikipedia.org/wiki/Category:部件工具箱 "wikilink")