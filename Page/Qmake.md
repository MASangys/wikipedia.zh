**qmake**是一個協助簡化[跨平台進行專案開發的構建過程的工具程式](https://zh.wikipedia.org/wiki/跨平台 "wikilink")，[Qt](../Page/Qt.md "wikilink")附帶的工具之一
。qmake能夠自动生成Makefile、[Microsoft Visual
Studio](../Page/Microsoft_Visual_Studio.md "wikilink") 專案檔 和
[xcode](https://zh.wikipedia.org/wiki/xcode "wikilink")
專案檔。不管原始碼是否是用Qt寫的，都能使用qmake，因此qmake能用於很多軟體的構建過程。

手寫Makefile是比較困難而且容易出錯，尤其在進行跨平台開發時必須針對不同平台分別撰寫Makefile，會增加跨平台開發複雜性與困難度。qmake會根據專案檔（.pro）里面的信息自動生成適合平台的
Makefile。开发者能夠自行撰寫專案檔或是由qmake本身產生。qmake包含額外的功能来方便 Qt
开发，如自动的包含[moc](https://zh.wikipedia.org/wiki/moc "wikilink")
和 [uic](https://zh.wikipedia.org/wiki/uic "wikilink") 的编译规则。

## 参考资料

## 外部連結

  - [qmake手冊](http://qt-project.org/doc/qt-5.1/qtdoc/qmake-manual.html)
  - [qmake手册（初级部分）](https://web.archive.org/web/20091101065648/http://www.cuteqt.com/blog/?p=556)


[Category:Qt](https://zh.wikipedia.org/wiki/Category:Qt "wikilink")
[Category:自动化构建](https://zh.wikipedia.org/wiki/Category:自动化构建 "wikilink")
[Category:編譯工具](https://zh.wikipedia.org/wiki/Category:編譯工具 "wikilink")