**QML** (Qt Markup Language\[1\] 或 Qt Meta Language 或 Qt Modeling Language\[2\]) 是基於[JavaScript](../Page/JavaScript.md "wikilink")、宣告式編程的程式語言，用於設計使用者介面為主的應用程式。它是，諾基亞開發的使用者介面建立套件的一部分。QML 主要用於行動應用程式，注重於觸控輸入、流暢的動畫（60張/秒）和使用者體驗。QML documents 描述元素的物件樹。

QML 元素可以透過標準 JavaScript 增強，包括這 inline 和引入.js 檔。元素可以也無縫整合和使用 [Qt](../Page/Qt.md "wikilink") 框架的 [C++](../Page/C++.md "wikilink") 元件擴展。

語言的名稱是 QML。runtime的名稱是 QQuickView。

## 語法、語義

### 基本語法

範例：

``` qml
import QtQuick 1.0

 Rectangle {
     id: canvas
     width: 200
     height: 200
     color: "blue"

     Image {
         id: logo
         source: "pics/logo.png"
         anchors.centerIn: parent
         x: canvas.height / 5
     }
 }
```

### 動畫

``` qml
 Rectangle {
     id: rect
     width: 120; height: 200

     Image {
         id: img
         source: "pics/qt.png"
         x: 60 - img.width/2
         y: 0

         SequentialAnimation on y {
             loops: Animation.Infinite
             NumberAnimation { to: 200 - img.height; easing.type: Easing.OutBounce; duration: 2000 }
             PauseAnimation { duration: 1000 }
             NumberAnimation { to: 0; easing.type: Easing.OutQuad; duration: 1000 }
         }
     }
 }
```

## Qt/C++ 整合

QML 不需要 Qt/C++ 的知識就能使用，但它可以輕鬆地擴展 Qt。

**熟悉的概念**

QML 提供直接訪問，從以下來自 Qt 的概念：

  - QAction – action 類型
  - QObject signals and slots – 作為在 JavaScript 中調用的函數
  - QObject properties – 作為 JavaScript 中的變數
  - QWidget – QDeclarativeView 是一個 QML-displaying widget
  - Q\*Model – 直接用在資料綁定 (如 QAbstractItemModel)

### Qt 信號處理式

``` javascript
 MouseArea {
     onPressed: console.log("mouse button pressed")
 }
```

### 操作方法

  - [Calling Qt class methods from QML](https://web.archive.org/web/20100819130735/http://wiki.forum.nokia.com/index.php/CS001613_-_Calling_Qt_class_methods_from_QML)
  - [Creating a custom QML element with Qt](https://web.archive.org/web/20100819160752/http://wiki.forum.nokia.com/index.php/CS001627_-_Creating_a_custom_QML_element_with_Qt)
  - [Connecting Qt signal to QML function](https://web.archive.org/web/20101211113715/http://wiki.forum.nokia.com/index.php/CS001625_-_Connecting_Qt_signal_to_QML_function)

## 開發工具

由于 QML 和 Javascript 的语法相似，大多数支持 Javascript 的编辑器均可编辑 QML。但是从 [Qt Creator](../Page/Qt_Creator.md "wikilink") 的 2.1 版本开始，该 IDE 提供了完整的语法高亮、代码补全、内建帮助和所见即所得编辑器。在商业版本的 Creator 中，所见即所得编辑器还会提供更多的功能。

## 參考資料

## 外部連結

  - [QML Reference Documentation](https://web.archive.org/web/20111024202714/http://doc.qt.nokia.com/4.7-snapshot/qdeclarativeelements.html)
  - [Introduction to the QML language](https://web.archive.org/web/20111014054245/http://doc.qt.nokia.com/4.7-snapshot/qdeclarativeintroduction.html)
  - [QML Examples and Demos](https://web.archive.org/web/20111008153849/http://doc.qt.nokia.com/4.7-snapshot/qdeclarativeexamples.html)
  - [Qt Labs Blog Posts related to QML](https://web.archive.org/web/20090518012534/http://labs.trolltech.com/blogs/category/labs/graphics/kinetic/declarative_ui/)
  - [QML Tutorial](https://web.archive.org/web/20100924210913/http://doc.qt.nokia.com/4.7/qml-tutorial.html)

[Category:Qt](https://zh.wikipedia.org/wiki/Category:Qt "wikilink") [Category:宣告式編程語言](https://zh.wikipedia.org/wiki/Category:宣告式編程語言 "wikilink")

1.
2.