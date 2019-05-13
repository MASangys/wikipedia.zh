**Qt
Jambi**是[跨平台的應用程式框架](../Page/跨平台.md "wikilink")[Qt的](../Page/Qt.md "wikilink")[java綁定版本](../Page/java.md "wikilink")。對Java開發人員來說可以使用Java標準版和Java企業版進行開發，並且對[C++程序員也提供了Qt](../Page/C++.md "wikilink")
Jambi generator，可以方便地將其C++寫成的Qt代碼整合到Java中。

Qt Jambi最初是由[Qt Development
Frameworks開發](../Page/Qt_Development_Frameworks.md "wikilink")。Qt
Jambi
4.5.0_01之後以[LGPL釋出原始码](../Page/LGPL.md "wikilink")，並轉交由开源社群繼續维护開發。\[1\]

Qt Jambi支持[X Window
System](../Page/X_Window_System.md "wikilink")（包含[Linux操作系統和其他](../Page/Linux.md "wikilink")[Unix](../Page/Unix.md "wikilink")），以及[Mac
OS
X操作系統和微軟](../Page/Mac_OS_X.md "wikilink")[Windows](../Page/Windows.md "wikilink")。

相較於Swing的Listener架構需要實作一堆介面，介面的限制造成了有時需要透過中介的物件來將事件交給適當的物件處理

Qt的signal/slot設計則更為直覺更有效率

在白皮書中舉了下列例子比較

Swing:

``` Java
slider.addChangeListener（new ChangeListener(){
    public void stateChanged (ChangeEvent e) {
        spinner.setValue（slider.getValue());
       }
});
spinner.addChangeListener(new ChangeListener(){
    public void stateChanged (ChangeEvent e) {
               slider.setValue(（Integer）spinner.getValue());
    }
});
```

Qt Jambi:

``` Java
slider.valueChanged.connect(spinBox, "setValue(int)");
spinBox.valueChanged.connect(slider, "setValue(int)");
```

## Qt Jambi的hello world

``` Java
package com.trolltech.examples.tutorial;
import com.trolltech.qt.gui.*;

public class HelloWorld
{
    public static void main(String args[])
    {
        QApplication.initialize(args);

        QPushButton hello = new QPushButton("Hello World!");
        hello.show();

        QApplication.exec();
    }
}
```

## 參考文獻

## 外部連結

  - [Qt Jambi社群網站](http://qt-jambi.org)
  - [Qt Jambi下載](http://sourceforge.net/projects/qtjambi/files/)
  - [Qt
    Jambi原始碼管理庫](https://web.archive.org/web/20090616151134/http://qt.gitorious.org/qt-jambi)
  - [Qt
    Jambi官方參考文件](https://web.archive.org/web/20091227042831/http://doc.qt.nokia.com/qtjambi-4.5.2_01/com/trolltech/qt/qtjambi-index.html)

[Category:Qt](https://zh.wikipedia.org/wiki/Category:Qt "wikilink")
[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")
[Category:软件开发](https://zh.wikipedia.org/wiki/Category:软件开发 "wikilink")
[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")

1.