{{ Infobox Software | name = QtRuby | logo = | screenshot = | caption =
| developer = | latest release version = 2.2.0 | latest release date =
| latest preview version = | latest preview date = | operating system =
[跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink") | programming
language = [Ruby](../Page/Ruby.md "wikilink") | genre = | license =
[LGPL](https://zh.wikipedia.org/wiki/GNU_Lesser_General_Public_License "wikilink")
| website =
[QtRuby主頁](https://archive.is/20120628224903/http://rubyforge.org/projects/korundum/)
}}
**QtRuby**是[跨平台的应用程序框架](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[Qt](../Page/Qt.md "wikilink")的[Ruby](../Page/Ruby.md "wikilink")綁定版本，包含Qt4和Qt3支持。也是[Korundum](https://zh.wikipedia.org/wiki/Korundum "wikilink")（[KDE](../Page/KDE.md "wikilink")
API的Ruby綁定）的基礎。

QtRuby使用[SMOKE提供语言綁定基礎](https://zh.wikipedia.org/wiki/SMOKE "wikilink")

除了[Linux](../Page/Linux.md "wikilink")和[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")，QtRuby也支持[Mac
OS
X操作系統和微軟](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")。

## QtRuby的hello world

``` c
require 'Qt4'

app = Qt::Application.new (ARGV)

hello = Qt::PushButton.new ('Hello World!')
hello.resize (100, 30)
hello.show()

app.exec()
```

## 外部連結

  - [官方主頁](https://archive.is/20120628224903/http://rubyforge.org/projects/korundum/)
  - [\#qtruby](irc://irc.freenode.net/qtruby)
  - [QtRuby郵件列表](https://mail.kde.org/mailman/listinfo/kde-bindings)
  - [Qt®4 Tutorial for the Ruby Programming
    Language](http://www.darshancomputing.com/qt4-qtruby-tutorial/) -
    QtRuby教學
  - [Qt4-QtRuby installer for Microsoft
    Windows](https://web.archive.org/web/20090317091453/http://vision.eng.shu.ac.uk/mmvlwiki/index.php/Qt4-QtRuby_installer_for_Microsoft_Windows)
  - [(zh_CN)| KDE
    TechBase上的QtRuby資料](http://techbase.kde.org/Development/Languages/Ruby)
  - [(zh_TW)| KDE
    TechBase上的QtRuby資料](http://techbase.kde.org/Development/Languages/Ruby)

[Category:Qt](https://zh.wikipedia.org/wiki/Category:Qt "wikilink")
[Category:Ruby](https://zh.wikipedia.org/wiki/Category:Ruby "wikilink")
[Category:KDE](https://zh.wikipedia.org/wiki/Category:KDE "wikilink")
[Category:软件开发](https://zh.wikipedia.org/wiki/Category:软件开发 "wikilink")
[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")