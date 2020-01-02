> 本文内容由[F♯](https://zh.wikipedia.org/wiki/F♯)转换而来。


**F\#**是由[微软](../Page/微软.md "wikilink")发展的为[.NET语言提供运行环境的](https://zh.wikipedia.org/wiki/.NET "wikilink")[程序设计语言](https://zh.wikipedia.org/wiki/程序设计语言 "wikilink")，是[函數程式語言](https://zh.wikipedia.org/wiki/函數程式語言 "wikilink")（**FP**，Functional Programming），函數程式語言最重要的基礎是[Lambda Calculus](../Page/Λ演算.md "wikilink")。它是基于[OCaml](../Page/OCaml.md "wikilink")的，而[OCaml](../Page/OCaml.md "wikilink")是基于[ML函数程式语言](../Page/ML语言.md "wikilink")。有時F\#和OCaml的程式是可以交互編譯的。

F\#已經接近成熟，支援高阶函数、[柯里化](../Page/柯里化.md "wikilink")、[惰性求值](../Page/惰性求值.md "wikilink")、Continuations、模式匹配、[闭包](https://zh.wikipedia.org/wiki/闭包 "wikilink")、列表处理和[元编程](../Page/元编程.md "wikilink")。这是一个用于显示.NET在不同编程语言间互通的程序设计，可以被.NET中的任意其它代碼編譯和調用。

2002年微软開始由Don Syme帶領研發F\#，從C\#，[LINQ和](../Page/语言集成查询.md "wikilink")[Haskell](../Page/Haskell.md "wikilink")中獲取了經驗，2005年推出第一個版本，2007年7月31日释出1.9.2.9版。2007年底，微軟宣布F\#進入產品化的階段。

F\#已被集成在[Visual Studio](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink") 2010中，版本是2.0，含有对.Net Framework的完全支持。

F\#现在在[Visual Studio](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink") 2015中，版本是4.0。

F\#现在在[Visual Studio](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink") 2017中，版本是4.1。

## 范例

一些小小范例如下：

``` ocaml
(* This is a comment *)
(* Sample hello world program *)
printf "Hello World!"
```

``` ocaml
#light
open Microsoft.FSharp.Collection.List
(* print a list of numbers recursively *)
let rec printlist l =
    (* When using "#light", you must indent with 4 spaces *)
    if l = [] then
    else
        printf "%d\n" (nth l 0)
        printlist (tl l)
```

``` ocaml
#light
(* Sample Windows Forms Program *)

(* We need to open the Windows Forms library *)
open System.Windows.Forms

(* Create a window and set a few properties *)
let form = new Form(Visible=true, TopMost=true, Text="Welcome to F#")

(* Create a label to show some text in the form *)
let label =
    let temp = new Label()
    let x = 3 + (4 * 5)
    (* Set the value of the Text*)
    temp.Text <- x
    (* Remember to return a value! *)
    temp

(* Add the label to the form *)
do form.Controls.Add(label)

(* Finally, run the form *)
do Application.Run(form)
```

F\#相容于[XNA Game Studio Express产品](https://zh.wikipedia.org/wiki/XNA_Game_Studio_Express "wikilink")，可允许在Xbox 360上建构游戏软件。

## 参考文献

## 外部链接

  - [微软F\#](http://research.microsoft.com/projects/ilx/fsharp.aspx)

  - [F Sharp](https://web.archive.org/web/20111231160059/http://www.fsharp.name/)

  - [Planet F\#](https://web.archive.org/web/20080216232744/http://ocaml.cn/planet)

  - [F\#](http://www.fsharp.net)

[Category:微软研究院](https://zh.wikipedia.org/wiki/Category:微软研究院 "wikilink") [Category:.NET编程语言](https://zh.wikipedia.org/wiki/Category:.NET编程语言 "wikilink") [Category:ML語言家族](https://zh.wikipedia.org/wiki/Category:ML語言家族 "wikilink")