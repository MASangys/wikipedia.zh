{{ Infobox Software | name = PyQt | logo = Python and Qt.svg | logo size = 160px | screenshot = Screenshot-qt-designer-qwebview.png | screenshot size = 300px | caption = Qt Designer | developer = [Riverbank Computing](http://www.riverbankcomputing.co.uk/) | latest release version = 5.12.3 | latest release date =  | latest preview version = | latest preview date = | operating system = [跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink") | programming language = [Python](../Page/Python.md "wikilink")\[1\] | genre = | license = [GNU GPL和商業授權](https://zh.wikipedia.org/wiki/GNU_GPL "wikilink") | website = [PyQt官方網站](http://www.riverbankcomputing.co.uk/software/pyqt/) }}

**PyQt**是[Python](../Page/Python.md "wikilink")语言的[GUI编程解决方案之一](https://zh.wikipedia.org/wiki/GUI "wikilink")。可以用来代替Python内置的[Tkinter](https://zh.wikipedia.org/wiki/Tkinter "wikilink")。其它替代者还有[PyGTK](../Page/PyGTK.md "wikilink")、[wxPython等](https://zh.wikipedia.org/wiki/wxPython "wikilink")。与[Qt](../Page/Qt.md "wikilink")一样，PyQt是一个[自由软件](../Page/自由软件.md "wikilink")。PyQt是[PyKDE的基础](https://zh.wikipedia.org/wiki/PyKDE "wikilink")。

PyQt的开发者是英国的“Riverbank Computing”公司。与4.5版本之前的Qt一样，它提供了[GPL与商业协议两种授权方式](https://zh.wikipedia.org/wiki/GPL "wikilink")，因此它可以免费地用于自由软件的开发。不过目前尚不提供[LGPL授权方式](https://zh.wikipedia.org/wiki/LGPL "wikilink")。PyQt可以运行于[Microsoft Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[Mac OS X](https://zh.wikipedia.org/wiki/OS_X "wikilink")、[Linux](../Page/Linux.md "wikilink")以及[Unix的多数变种上](https://zh.wikipedia.org/wiki/Unix "wikilink")。

2009年8月，Qt的开发公司[诺基亚](../Page/诺基亚.md "wikilink")发布[PySide](https://zh.wikipedia.org/wiki/PySide "wikilink")，提供与PyQt类似的功能，但提供了LGPL授权。主要原因是“Riverbank Computing”不愿以LGPL授权发布PyQt。\[2\]

自4.5版本以后\[3\]，PyQt同时支持Python 2.x与Python 3.x。但是在API方面有所区别，最主要的是运行在Python 3.x下的PyQt不使用`QString`，而是`str`。另外，之前为了避开Python 2.x关键词限制的`exec_()`、`print_()`两个函数现在重新命名为`exec()`，`print()`。

[Python_and_Qt_2.svg](https://zh.wikipedia.org/wiki/File:Python_and_Qt_2.svg "fig:Python_and_Qt_2.svg")

## PyQt组件

PyQt包含了大约440个类型、超过6000个的函数和方法。

  - “QtCore”模块主要包含了一些非GUI的基础功能，包含事件循环与Qt的信号机制。此外，还提供了跨平台的[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")、[线程](../Page/线程.md "wikilink")、[内存映射文件](../Page/内存映射文件.md "wikilink")、[共享内存](https://zh.wikipedia.org/wiki/共享内存 "wikilink")、[正则表达式](../Page/正则表达式.md "wikilink")和用户设置。

<!-- end list -->

  - “QtGui”模块包含了大多数的GUI类型。包含按钮、文本框、列表等常见控件，还包含了基于[MVC](../Page/MVC.md "wikilink")设计模式的列表、表格、树型控件。同时还提供了一个能够容纳成千上万个元素的画布控件，其中可以放置各种控件和图形。此外，QtGui还支持界面动画与界面状态机编程。

<!-- end list -->

  - “QtNetwork”模块可以用于编写非阻塞式的UDP、TCP程序。还包含了DNS、HTTP与FTP的客户端。

<!-- end list -->

  - “QtOpenGL”模块允许Qt程序使用[OpenGL](../Page/OpenGL.md "wikilink")渲染3D图形，而且不必大量更改代码。

<!-- end list -->

  - “QtSql”模块支持多种SQL数据库。包括[sqlite](https://zh.wikipedia.org/wiki/sqlite "wikilink")、[ODBC](../Page/ODBC.md "wikilink")、[MySQL](../Page/MySQL.md "wikilink")、[PostgreSQL](../Page/PostgreSQL.md "wikilink")、[Oracle](https://zh.wikipedia.org/wiki/Oracle "wikilink")。还提供了一个基于[MVC](../Page/MVC.md "wikilink")模式的数据模型，与QtGui的的表格控件配合使用。

<!-- end list -->

  - “QtXml”包含一个[XML](../Page/XML.md "wikilink")解释器，同时支持[SAX](../Page/SAX.md "wikilink")和[DOM两种编程方式](https://zh.wikipedia.org/wiki/DOM "wikilink")。

<!-- end list -->

  - “QtWebkit”与“QtScript”两个子模块支持[WebKit](../Page/WebKit.md "wikilink")与[EMCAScript脚本语言](https://zh.wikipedia.org/wiki/EMCAScript "wikilink")

<!-- end list -->

  - “Phonon”子模块支持高级的多媒体编程。包含音频播放器、视频播放器与声效处理。

<!-- end list -->

  - “uic”子模块能够将Qt的窗体文件转换为Python代码，能够即时读入窗体文件并且显示出来。它依赖于QtXml模块。“QScintilla”子模块包含一个基于Scintilla的文本编辑器控件，Eric IDE使用它作为代码编辑器。“QtMultimedia”提供了底层的多媒体支持，现在多数开发者改用Phonon模块。“QtSvg”支持SVG 1.2 Tiny的静态标准，用于显示与保存SVG格式的图形。

## 简单例子

下面一段代码演示了一个简单的PyQt程序，它的功能是在窗体内显示一个按钮，当按下按钮时，要求用户输入名字。根据用户是否输入了名字，会分别显示两种问候语。 [PyQt_Example_Screenshot.png](https://zh.wikipedia.org/wiki/File:PyQt_Example_Screenshot.png "fig:PyQt_Example_Screenshot.png")

``` python
# -*- coding: utf-8 -*-
#该程序适合Python 2.x

import sys
from PyQt4.QtGui import *

class TestWidget(QWidget):
    def __init__(self):
        QWidget.__init__(self, windowTitle=u"A Simple Example for PyQt.")
        self.outputArea=QTextBrowser(self)
        self.helloButton=QPushButton(self.trUtf8("问候(&S)"), self)
        self.setLayout(QVBoxLayout())
        self.layout().addWidget(self.outputArea)
        self.layout().addWidget(self.helloButton)

        self.helloButton.clicked.connect(self.sayHello)

    def sayHello(self):
        yourName, okay=QInputDialog.getText(self, self.trUtf8("请问你的名字是?"), self.trUtf8(b"名字"))
        if not okay or yourName==u"": #用户没有输入名字，或者是点了取消
            self.outputArea.append(self.trUtf8("你好，陌生人！"))
        else:
            self.outputArea.append(self.trUtf8("你好，<b>%1</b>。").arg(yourName))

app=QApplication(sys.argv)
testWidget=TestWidget()
testWidget.show()
sys.exit(app.exec_())
```

## signal和slot

Qt采用了signal和slot的概念来处理GUI程序中的用户事件。PyQt同样支持这种方法，还进而针对Python的特点增强了某些功能。任何Python类型都可以定义signal和slot，并与GUI控件的signal和slot相连接。PyQt支持old-style与new-style两种连接方式。不过，目前一般推荐使用new-style connection。因为它还支持连接到Python函数，而且看起来也比较pythonic。

``` Python
#old-style connection，
self.connect(self, SIGNAL("mySignal(int)"), self, SLOT("mySlot(int)"))
#new-style connection
self.mySignal.connect(self.mySlot)
#连接到函数
self.mySignal.connect(lambda value:sys.stdout.write(str(value)))
```

`QMetaObject.connectSlotsByName(obj)`函数可以帮助程序员自动连接signal和slot。使用它可以免去很多代码。

## Qt设计器

Qt设计器是Qt所包含的可视化UI设计器。在安装PyQt时，可以选择安装Qt设计器。它使用拖拉操作来设计图形界面。在设计的同时，还能够直接预览最终的窗体效体。当窗体很复杂或者整个程序需要大量的窗体时，Qt设计器可以节省大量的代码。不过稍有改变的是，设计好窗体后需要运行pyuic4这个脚本，将窗体文件转换成Python代码。仍以“简单例子”中的小程序为例，首先使用Qt设计器设计出窗体。假定保存为"h:\\pyqt_example.ui"。窗体文件内容是：

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<ui version="4.0">
 <class>TestWidget</class>
 <widget class="QWidget" name="TestWidget">
  <property name="geometry">
   <rect>
    <x>0</x>
    <y>0</y>
    <width>361</width>
    <height>271</height>
   </rect>
  </property>
  <property name="windowTitle">
   <string>A Simple Example for PyQt.</string>
  </property>
  <layout class="QVBoxLayout" name="verticalLayout">
   <item>
    <widget class="QTextBrowser" name="outputArea"/>
   </item>
   <item>
    <widget class="QPushButton" name="helloButton">
     <property name="text">
      <string>问候(&S)</string>
     </property>
    </widget>
   </item>
  </layout>
 </widget>
 <resources/>
 <connections/>
</ui>
```

使用如下命令将窗体文件转换成Python代码（适用于Windows系统）：

``` dos
H:\> C:\Python26\pyuic4.bat -o ui_pyqt_example.py pyqt_example.ui
```

新的示例程序是（假定保存为h:\\pyqt_example.py）：

``` python
# -*- coding: utf-8 -*-
#该程序适合Python 2.x版本。

import sys
from PyQt4.QtGui import *
#差异1：从转换后的代码里面导入窗体
from ui_pyqt_example import Ui_TestWidget

#差异2：需要继承Ui_TestWidget
class TestWidget(QWidget, Ui_TestWidget):
    def __init__(self):
        QWidget.__init__(self)
        #差异3：原来长篇累牍的创建控件的代码不再需要了，取而代之的是一行简单的setupUi()
        self.setupUi(self)
        self.helloButton.clicked.connect(self.sayHello)

    def sayHello(self):
        yourName, okay=QInputDialog.getText(self, self.trUtf8("请问你的名字是?"), self.trUtf8(b"名字"))
        if not okay or yourName==u"": #用户没有输入名字，而是点了取消
            self.outputArea.append(self.trUtf8("你好，陌生人！"))
        else:
            self.outputArea.append(self.trUtf8("你好，<b>%1</b>。").arg(yourName))

app=QApplication(sys.argv)
testWidget=TestWidget()
testWidget.show()
sys.exit(app.exec_())
```

## PyQt的优劣

### 优势

  - PyQt的API与Qt类似，Qt的文档通常仍然可以应用于PyQt。因此，PyQt的文档比[PyGTK](../Page/PyGTK.md "wikilink")、[wxPython](https://zh.wikipedia.org/wiki/wxPython "wikilink")、[Tkinter等GUI编程库的文档丰富得多](https://zh.wikipedia.org/wiki/Tkinter "wikilink")。
  - 如果程序员具备使用Qt的经验，一般很快就可以过渡到PyQt上。而使用PyQt的程序员，如果同时精通C++的话，也可以很快地过渡到Qt平台上。
  - 利用SIP，大多数为Qt开发的控件可以方便地port到PyQt。——然而，SIP也需要一些学习成本。
  - 有方便的周边工具支持PyQt。如QtDesigner，可以使用拖拉式的方法来设计界面，简单易用。Eric6，一个使用PyQt设计的Python IDE，对PyQt有特殊的支持。

### 劣势

  - 由于PyQt同时使用Qt以及Python的两种内存管理方法，所以在使用PyQt的过程中要注意避免内存泄露以及悬挂指针\[4\]。
  - 运行时庞大，在Windows平台，只使用PyQt.QtCore与PyQt.QtGui两个子模块时，压缩后至少需要4.09M
  - 需要学习一些C++知识，主要是C++类型、内存管理两个方面，以便于阅读Qt文档和理解PyQt的行为。

## SIP

SIP是一个自动为C和C++库生成Python扩展模块的工具。为了方便开发PyQt，SIP于1998被“Riverbank Computing”公司创造出来。不过，SIP不专用于PyQt，而是适用于所有的C和C++库。

使用SIP时，程序员首先要编写一个特殊的".sip"文件，使用类似于C++的语法在其中描述扩展模块所提供的类型与函数。然后用SIP将这个文件转化为C++代码。最终编译，与C、C++库链接后就成为Python扩展模块。".sip"文件类似于C、C++的头文件。根据需要，需要程序员用SIP定义的语法添加一些C++代码中没有的信息。因为SIP不支持完整的C++语法，所以不能直接使用C++的头文件作为".sip"文件。

## 使用PyQt的著名應用程式

  - [Eric Python IDE](../Page/Eric_Python_IDE.md "wikilink")
  - [Anki](../Page/Anki.md "wikilink"), a spaced repetition flashcard program
  - [QtiPlot](../Page/QtiPlot.md "wikilink"), a computer program to analyze and visualize scientific data
  - [qt-recordMyDesktop](https://zh.wikipedia.org/wiki/RecordMyDesktop "wikilink")：recordMyDesktop的Qt4介面
  - [Kodos](https://zh.wikipedia.org/wiki/Kodos_Python_Regular_Expression_Debugger "wikilink"), Python Regular Expression Debugger

## 參考文獻

## 延伸阅读

  -
  -
## 外部連結

  - [官方網站](http://www.riverbankcomputing.co.uk/software/pyqt/)
  - [PyQT tutorial](https://pythonspot.com/building-an-application-gui-with-pyqt-beginners-tutorial/)
  - [PyQt教學](http://www.cs.usfca.edu/~afedosov/qttut)
  - [透過Python體驗QtWebKit快速開發](http://blog.linux.org.tw/~jserv/archives/002026.html)

[Category:Python库](https://zh.wikipedia.org/wiki/Category:Python库 "wikilink") [Category:Qt](https://zh.wikipedia.org/wiki/Category:Qt "wikilink")

1.
2.
3.
4.