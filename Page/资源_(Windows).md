[Windows操作系统的](https://zh.wikipedia.org/wiki/Windows操作系统 "wikilink")**资源**(resources)是指嵌入可执行程序([EXE](https://zh.wikipedia.org/wiki/EXE "wikilink"),
[DLL](https://zh.wikipedia.org/wiki/Dynamic-Link_Library "wikilink"),
[CPL](../Page/控制面板.md "wikilink"), 等)的只读数据。\[1\]\[2\]\[3\]

[Windows API提供了便捷访问应用程序资源的方法](../Page/Windows_API.md "wikilink")。

## 类型

每种资源有类型及名字，它们是数值标识符或字符串。

Windows预定义的资源类型：

  - [鼠标指標与动画指標](https://zh.wikipedia.org/wiki/游标 "wikilink")
  - [圖示](../Page/圖示.md "wikilink")
  - [點陣圖](https://zh.wikipedia.org/wiki/點陣圖 "wikilink")
  - [對話方塊模板](https://zh.wikipedia.org/wiki/對話方塊 "wikilink")
  - [字型](../Page/字型.md "wikilink")
  - [HTML](../Page/HTML.md "wikilink") 文档
  - [字串](../Page/字符串.md "wikilink") 与消息模板
  - EXE/DLL檔案版本資料

程序员也可以自行定义资源中的数据类型。

## 使用

Windows为一个程序显示的图标实际上是它的EXE文件中的第一个圖示资源。如果EXE文件没有圖示资源，则显示一个标准圖示。

EXE或DLL文件的版本资源显示在它们的属性页的*Version* tab中。

一个资源总是附加了某种语言。Windows自动使用最适合的可行的语言。这使得程序适合于用户的locale的语言。

编辑工具可以修改嵌入在EXE或DLL文件中的资源。这常用于把应用程序中的字符串翻译为另一种语言，或者修改图标或位图。

## 开发

1.  为cursors, icons, bitmaps, dialog boxes, fonts创建单独的文件；
2.  创建一个资源定义脚本(.rc)文件来描述应用程序用到的资源；
3.  使用预处理器RC.exe编译该脚本:\[4\] `RC [options] script-file`
4.  使用[链接器把编译后的资源](../Page/链接器.md "wikilink")(.res)文件加入到要生成的可执行程序中。

## 参考文献

## 外部链接

  - [MSDN: Windows Resource Files
    Guide](http://msdn.microsoft.com/en-us/library/cc194804.aspx)
  - [MSDN: Better Resource File Guide with
    reference](http://msdn.microsoft.com/en-us/library/aa380599%28v=vs.85%29.aspx)

[Category:Microsoft_Windows](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows "wikilink")

1.
2.
3.
4.  \[<https://msdn.microsoft.com/en-us/library/aa381055(v=vs.85>).aspx
    MSDN:Using RC (The RC Command Line)\]