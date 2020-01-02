> 本文内容由[VBScript](https://zh.wikipedia.org/wiki/VBScript)转换而来。


**VBScript**是**Visual Basic Script**的简称，有时也被缩写为VBS。VBScript是[微软](../Page/微软.md "wikilink")开发的一种[脚本语言](../Page/脚本语言.md "wikilink")，可以看作是[VB语言的简化版](https://zh.wikipedia.org/wiki/VB "wikilink")，与[Visual Basic for Applications的关系也非常密切](../Page/Visual_Basic_for_Applications.md "wikilink")。它具有原语言容易学习的特性。目前这种语言广泛应用于网页和ASP程序制作，同时还可以直接作为一个可执行程序。用于调试简单的VB语句非常方便。

## 使用范围

由于VBScript可以通过[Windows脚本宿主调用](https://zh.wikipedia.org/wiki/Windows脚本宿主 "wikilink")[COM](https://zh.wikipedia.org/wiki/COM "wikilink")，因而可以使用[Windows操作系统中可以被使用的程序](https://zh.wikipedia.org/wiki/Windows "wikilink")[库](https://zh.wikipedia.org/wiki/库 "wikilink")，比如它可以使用[Microsoft Office的库](../Page/Microsoft_Office.md "wikilink")，尤其是使用[Microsoft Access和](../Page/Microsoft_Access.md "wikilink")[Microsoft SQL Server的程序库](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")，当然它也可以使用其它程序和操作系统本身的库。在实践中VBScript一般被用在以下三个方面：

### Windows操作系统

VBScript可以被用来自动地完成重复性的Windows操作系统任务。在Windows操作系统中，VBScript可以在[Windows Script Host的范围内运行](../Page/Windows_Script_Host.md "wikilink")。Windows操作系统可以自动辨认和执行\*.VBS和\*.WSF两种文件格式，此外[Internet Explorer可以执行HTA和CHM文件格式](../Page/Internet_Explorer.md "wikilink")。VBS和WSF文件完全是文字式的，它们-{只}-能通过少数几种对话窗口与用户通讯。HTA和CHM文件使用HTML格式，它们的程序码可以像HTML一样被编辑和检查。在WSF、HTA和CHM文件中VBScript和JavaScript的程序码可以任意混合。HTA文件实际上是加有VBS、JavaScript成分的HTML文件。CHM文件是一种[在线帮助](https://zh.wikipedia.org/wiki/在线帮助 "wikilink")，用户可以使用专门的编辑程序将HTML程序编辑为CHM。

Windows 操作系统也提供一些 VBScript 脚本来进行高级管理功能，例如管理 Windows 激活密钥的 [slmgr.vbs](https://zh.wikipedia.org/wiki/slmgr.vbs "wikilink")（Windows Server License Manager Script）。

### 网页浏览器（客户端的VBS）

网页中的VBS可以用来控制客户端的网页浏览器（以浏览器执行VBS程序）。VBS与JavaScript在这一方面是竞争者，它们可以用来实现[动态HTML](https://zh.wikipedia.org/wiki/DHTML "wikilink")，甚至可以将整个[程式结合到](https://zh.wikipedia.org/wiki/程式 "wikilink")[网页中来](https://zh.wikipedia.org/wiki/网页 "wikilink")。

至今为止VBS在客户方面未能占优势，因为它只获得Microsoft Internet Explorer的支持（[Mozilla Suite可以透过安裝一个](https://zh.wikipedia.org/wiki/Mozilla_Suite "wikilink")[套件来支援VBS](https://zh.wikipedia.org/wiki/Firefox擴充套件列表 "wikilink")），并且[IE11起已不再支持VBScript](../Page/Internet_Explorer_11.md "wikilink")\[1\]。而JavaScript则受到所有网页浏览器的支援。在Internet Explorer中VBS和JavaScript使用同样的權限，它们-{只}-能有限地使用Windows操作系统中的对象。

### 网页服务器（服务器方面的VBS）

在网页服务器方面VBS是微软的[Active Server Pages的一部分](../Page/Active_Server_Pages.md "wikilink")，它与[JavaServer Pages和](../Page/JSP.md "wikilink")[PHP](../Page/PHP.md "wikilink")是竞争对手。在这里VBS的程序码直接嵌入到[HTML](../Page/HTML.md "wikilink")页内，这样的网页以ASP结尾。[网页服务器](https://zh.wikipedia.org/wiki/网页服务器 "wikilink")[Internet信息服务执行ASP页内的程序部分并将其结果转化为HTML传递给网页浏览器供用户使用](https://zh.wikipedia.org/wiki/Internet信息服务 "wikilink")。这样服务器可以进行数据库闻讯并将其结果放到HTML网页中。

## 示范

### Hello World

最简单的例子：

``` vb
MsgBox "Hello World"
```

以`.vbs`文件保存。再使用`cscript.exe`或`wscript.exe`执行。

一个更复杂的例子中，示出了使用`MsgBox`作为函数（返回一个结果），并使用了三个参数，其中第二个参数使用的是常量。

``` vb
Dim x
' These three produce the same result. However, the use of constants as in the third line
' is considered best practice.
x = MsgBox("Hello World:Text",1+64+4096,"Hello World:Title")
x = MsgBox("Hello World:Text",4161,"Hello World:Title")
x = MsgBox("Hello World:Text", vbOKCancel+vbInformation+vbSystemModal, _
           "Hello World:Title")

' Presents the number corresponding to the button pressed. Different constants will produce
' different behaviours. For example, vbOKCancel specifies two buttons in the dialogue box,
' whereas vbYesNoCancel specifies three.
x = MsgBox("Hello World:Text", vbYesNoCancel+vbInformation,"Hello World:Title")
MsgBox "The result is " & x
```

### 终止任务

VBScript能访问[Windows管理规范](../Page/Windows管理规范.md "wikilink") (WMI)，就像[Windows任务管理器](https://zh.wikipedia.org/wiki/Windows任务管理器 "wikilink")。以下的代码执行时将会终止（“杀掉”）任何关于*notepad.exe*的进程。

``` vb
'Terminate all processes involving the name <strProcessToKill>
Option Explicit
Dim strComputer, strProcessToKill, objWMIService, colProcess, objProcess

strComputer = "."
strProcessToKill = "notepad.exe"
Set objWMIService = GetObject("winmgmts:" _
   & "{impersonationLevel=impersonate}!\\" _
   & strComputer _
   & "\root\cimv2")
Set colProcess = objWMIService.ExecQuery _
   ("Select * from Win32_Process Where Name = '" & strProcessToKill & "'")
For Each objProcess in colProcess
   MsgBox "... terminating " & objProcess.Name
   objProcess.Terminate()
Next
```

使用*Option Explicit*并不是必须的，但它被认为是VBScript的[最佳实践](https://zh.wikipedia.org/wiki/最佳实践 "wikilink")。\[2\]\[3\]

### 创建具有唯一的名称的十个文件

这个实例显示如何创建文件并向它添加内容。它还演示了字符串连接。

``` vb

For i = 1 to 10
    createFile( i )
Next

Public sub createFile(a)

    Dim fso,myFile
    filePath = "C:\file_name" & a & ".txt"
    Set fso=CreateObject("Scripting.FileSystemObject")
    Set MyFile= fso.CreateTextFile( filePath)
    MyFile.WriteLine("This is a separate file")
    MyFile.close

End Sub
```

### 发送按键

SendKeys方法模拟一个或多个按键到活动窗口（模拟在键盘上输入）。 在该示例中，脚本发送字符串“Hello World！”3次，每次暂停2秒（2000毫秒）。SendKeys巨集可能会在某些程序中失效，因为一些软件（如在安装时输入许可证密钥）将检查是否是真正的按键，而不是虚拟的。

``` vb
set shl = createobject("wscript.shell")
shl.sendkeys "Hello World!"
wscript.sleep 2000
shl.sendkeys "Hello World!"
wscript.sleep 2000
shl.sendkeys "Hello World!"
wscript.sleep 2000
```

执行期间，“Hello World\!”将显示在命令提示符。

### Windows文件操作

对象FileSystemObject执行一些文件操作（例如测试一个文件是否存在），并且还创建一个文本文件（一个TextStream对象）。

``` vb
myfilename = "C:\Wikipedia - VBScript - Example - Hello World.txt"
MakeHelloWorldFile myfilename

Sub MakeHelloWorldFile (FileName)
'Create a new file in C: drive or overwrite existing file
   Set FSO = CreateObject("Scripting.FileSystemObject")
   If FSO.FileExists(FileName) Then
      Answer = MsgBox ("File " & FileName & " exists ... OK to overwrite?", vbOKCancel)
      'If button selected is not OK, then quit now
      'vbOK is a language constant
      If Answer <> vbOK Then Exit Sub
   Else
      'Confirm OK to create
      Answer = MsgBox ("File " & FileName & " ... OK to create?", vbOKCancel)
      If Answer <> vbOK Then Exit Sub
   End If
   'Create new file (or replace an existing file)
   Set FileObject = FSO.CreateTextFile (FileName)
   FileObject.WriteLine "Time ... " & Now()
   FileObject.WriteLine "Hello World"
   FileObject.Close()
   MsgBox "File " & FileName & " ... updated."
End Sub
```

`MakeHelloWorldFile`将会在按下按钮后于C:\\ 驱动器根目录创建（若已经存在则更新）一个小文本文件。

### Excel对象操作

``` vb
Option Explicit '所有变量必须显式声明

Dim app,workbook,sheet
Dim row,col

Set app = WScript.CreateObject("Excel.Application")
app.Visible = True
Set workbook = app.WorkBooks.Add

Set sheet = workbook.Worksheets(1)
'10x10 random value
For row = 1 To 10
  For col = 1 To 10
    sheet.Cells(row,col).Value = CInt(Int((100 * Rnd()) + 1))
  Next
Next

Set sheet = workbook.Worksheets(2)
'10x10 random value
sheet.Range("A1:J10").Formula = "=Int(Rand() * 100 + 1)"
```

## 语言

VBScript主要的优点有：

  - 由于VBScript由操作系统，而不是由网页浏览器解释，它的文件比较小。
  - 易学。
  - 在所有2000 / 98SE以后的Windows版本都可直接使用。
  - 可以使用其它程序和可使用的物件（尤其是[Microsoft Office](../Page/Microsoft_Office.md "wikilink")）。

缺点有：

  - 现在VBS无法作为电子邮件的附件了。Microsoft Outlook拒绝接受VBS为附件，收信人无法直接使用VBS附件。
  - VBS的各种编辑器不受欢迎。
  - 操作系统没有任何特别的保护设施。VBS程序与其它JS、EXE、BAT或CMD程序一样对待。操作系统没有监察恶意功能的能力。

## 和VB的对比

### 不能为变量定义类型

在VB中，为变量定义类型使用“Dim 变量名 As 类型”的语句格式。

但是在VBScript中这样写是错误的，VBScript中的变量都是弱类型（即Variant变体），因此它不需要指定类型。-{只}-能使用“Dim 变量名”的格式，[解释器会自动根据](https://zh.wikipedia.org/wiki/解释器 "wikilink")[赋值的类型定义变量类型](https://zh.wikipedia.org/wiki/赋值 "wikilink")。

### 不能使用条件编译

在VB中，可以使用\#If…Then、\#ElseIf…Then、\#Else、\#End If、\#Const… = …等语句定义编译时使用的语句

而由于VBScript不需要编译即可被WSH（Windows Script Host）直接解释执行，所以并不需要条件编译语句。

## 安全性

微软决定Outlook和[Outlook Express中的HTML邮件可以使用VBScript后出现了许多利用Windows](../Page/Outlook_Express.md "wikilink") Script Host和[ActiveX](../Page/ActiveX.md "wikilink")的功能的[电脑病毒](https://zh.wikipedia.org/wiki/电脑病毒 "wikilink")。这些病毒之所以能够传播开来也是因为一开始这些系统功能完全未受保护。虽然VBScript和JavaScript使用同样的使用操作系统的功能的安全措施，今天这些功能被看作不符合标准。

一般很难保护VBScript的程序码不被用户看到。

## 参考资料

## 外部链接

[Category:脚本语言](https://zh.wikipedia.org/wiki/Category:脚本语言 "wikilink") [Category:Microsoft_Windows](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows "wikilink") [Category:BASIC程序设计语言家族](https://zh.wikipedia.org/wiki/Category:BASIC程序设计语言家族 "wikilink")

1.
2.  \[<http://msdn.microsoft.com/en-us/library/bw9t3484(VS.85>).aspx Remarks on *Option Explicit* Statement\], MSDN Library
3.  *Why force yourself to declare all variables?*, In VBScript For Dummies, John Walkenbach, IDG Books Worldwide, Inc., 1996