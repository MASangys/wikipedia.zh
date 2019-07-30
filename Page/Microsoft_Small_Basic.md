**Microsoft Small Basic**是一個經簡化過的[BASIC](../Page/BASIC.md "wikilink")程式語言，於Microsoft於2008年10月發表。只需要有程式語言最基本的概念，微軟說這是對於初學者而言最容易入手的程式語言。它只有14個關鍵字\[1\]，它的開發環境對於初學者是友善與直接的操作介面。從0.9版（11 June 2010）\[2\] 至今，沒有任何的新功能被添加，只有操作介面被翻译成更多種的語言。

Microsoft Small Basic是由Microsoft DevLabs所設計，與在2008年10月以技術預覽〈Technology Preview〉方式發佈\[3\]。它的目標是用於任何人開始學程式設計，包含兒童或成人。

## 程式語言

它最初是以微軟的[QBasic程式語言做為基礎進行修改](https://zh.wikipedia.org/wiki/QBasic "wikilink")，但被移植到[.Net Framework](https://zh.wikipedia.org/wiki/.Net_Framework "wikilink")。以範例'[Hello World](../Page/Hello_World.md "wikilink")'為例，必須寫成：

``` vbnet
TextWindow.Write（"Hello World"）
```

或是：

``` vbnet
TextWindow.Writeline（"Hello World"）
```

相較於其它的BASIC語言，是寫成：

``` vbnet
print "Hello World"
```

但是這種寫法完全不能在Microsoft Small Basic裡執行

### 條件分支

``` vbnet
TextWindow.Write（"Enter the temperature today （in F）: ")
temp = TextWindow.ReadNumber()
If temp > 100 Then
  TextWindow.WriteLine（"It is pretty hot."）ElseIf temp > 70 Then
  TextWindow.WriteLine（"It is pretty nice."）ElseIf temp > 50 Then
  TextWindow.WriteLine（"Don't forget your coat."）Else
  TextWindow.WriteLine（"Stay home."）
EndIf
```

以上列範例的Code為例，可發佈到smallbasic.com的網站上，透過網頁瀏覽器去執行\[4\]

### For迴圈

``` vbnet
TextWindow.WriteLine（"Multiplication Tables"）table = 4
For i = 1 to 10
  TextWindow.WriteLine（i + " x " + table + " = " + table * i）
EndFor
```

以上列範例的Code為例，可發佈到smallbasic.com的網站上，透過網頁瀏覽器去執行\[5\]

## Turtle

``` vbnet
For i = 1 to 4
  Turtle.Move (100)
  Turtle.TurnRight()
EndFor
```

它在迴圈的結束是用

``` vbnet
EndFor
```

，而不是像其它的Basic語言（例如Microsoft QuickBasic）中用的

``` vbnet
Next i
```

## 试验

在第一次試驗中，一些中學兒童成功地參與，其中大多數是在微軟工作者的兒童。Small Basic還試驗成功對一群25名高中女生的團體進行動手實驗的方法。\[6\]

## 参考资料

## 外部連結

  - [Official Site](http://msdn.microsoft.com/en-us/beginner/ff384126.aspx)
  - [Small Basic Programming Tutorials For Kids](https://web.archive.org/web/20110320065512/http://computerscienceforkids.com/MicrosoftSmallBasicTutorials.aspx/) by Computer Science for Kids\*
  - [The Basics of Small Basic](http://channel9.msdn.com/posts/Charles/Expert-to-Expert-The-Basics-of-SmallBasic/) discussion with Vijaye Raji and Erik Meijer on SmallBasic\*
  - [Introduction to Small Basic](http://channel9.msdn.com/shows/the%20knowledge%20chamber/intro-to-small-basic-with-vijaye-raji/) discussion with Vijaye Raji and Robert Hess on SmallBasic\*
  - [Microsoft Small Basic for .NET](http://www.simple-talk.com/dotnet/.net-tools/microsoft-small-basic-for-.net/) Review of Microsoft Small Basic, with sample application
  - [Category:Microsoft Small Basic](http://rosettacode.org/wiki/Category:Microsoft_Small_Basic) 在[rosettacode.org](http://rosettacode.org)上的Microsoft Small Basic中實現了許多任務

[Category:Microsoft_BASIC](https://zh.wikipedia.org/wiki/Category:Microsoft_BASIC "wikilink") [Category:.NET编程语言](https://zh.wikipedia.org/wiki/Category:.NET编程语言 "wikilink")

1.  [Microsoft Small Basic Home Page](http://msdn.microsoft.com/en-us/devlabs/cc950524.aspx)
2.  <http://blogs.msdn.com/b/smallbasic/archive/2010/06/11/small-basic-v0-9-is-here.aspx>
3.  [About DevLabs](http://msdn.microsoft.com/en-us/devlabs/cc950527.aspx)
4.  [Microsoft Small Basic Program Listing:KCF215](http://smallbasic.com/smallbasic.com/program/?KCF215)
5.  [Microsoft Small Basic Program Listing:RNG254](http://smallbasic.com/smallbasic.com/program/?RNG254)
6.  [The Basics of Small Basic](http://channel9.msdn.com/posts/Charles/Expert-to-Expert-The-Basics-of-SmallBasic)