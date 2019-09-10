（原名 \[1\]\[2\]）是個通用、多範型，屬於[Lisp家族的](https://zh.wikipedia.org/wiki/Lisp "wikilink")[函數式](../Page/函数式编程.md "wikilink")[程序设计語言](https://zh.wikipedia.org/wiki/程序设计語言 "wikilink")，它的設計目之一是為了提供一種語言創造、設計與實作的平台，Racket被廣泛應用在腳本程式設計、通用程式設計、電腦科學教育和學術研究等不同領域。

Racket有一個實作平台，包含了執行環境、函数庫、即時編譯器（）等等，還有提供一個以Racket本身寫成的開發環境 DrRacket\[3\] (原名 )。

Racket平台的發行版本是免費且開放原始碼的，以[GNU宽通用公共许可证](../Page/GNU宽通用公共许可证.md "wikilink")授權發行，所有由社群所編寫的擴充功能和套件都會被上傳到 PLaneT(一個網頁套件發佈系統)。

基於 Racket 實現的 Scribble 可以用來構建 HTML 或 PDF（依賴 [LaTeX](https://zh.wikipedia.org/wiki/LaTeX "wikilink")），官方文檔就是基於這個語言來生成的。

## 开发原则

Racket的开发基于以下原则：\[4\]

  - 程式语言的目的是表述和解决问题，这一过程通常在特定的情境中发生，该情境有一定的描述语言，因此Racket应该是能够创制新程式语言的程式语言；
  - 基于上述的表述问题的方式，问题系统可视为多语言的相互联系的组件的集合，Racket应当能够提供足够的保护机制，允许实现各种语言的完整特性；
  - 与问题解决相关的在语言之外的机制，如项目和资源的管理，也可被Racket转换为语言构造。

## 歷史

### 開發

Matthias Felleisen在1990年代中期建立了PLT，一開始為一個研究團隊，不久後逐漸投入程式設計師入門教材的專案開發。

在1995年1月，這個團隊決定開發一個建立在 Scheme函數式程式語言上的教學用程式語言環境，Mattew Flatt 簡單的從 libscheme 中將 MrEd (Racket 的原始虛擬機器)、[wxWidgets](https://zh.wikipedia.org/wiki/wxWidgets "wikilink") 與一些其他的免費系統結合，接下來的幾年內，由 Flatt、Robby Findler、Shriram Krishnamurthi、Cormac Flanagan 和其他許多人組成的團隊推出了 DrScheme，一個給 Scheme 程式設計新手的程式設計環境，也作為[弱型別程式語言的研究環境](https://zh.wikipedia.org/wiki/:類型系統#.E5.BC.B7.E5.9E.8B.E5.88.A5.E5.92.8C.E5.BC.B1.E5.9E.8B.E5.88.A5 "wikilink")，當時 DrScheme 主要支援的程式語言叫做 PLT Scheme。

在此同時，該團隊也開始為中學教師開設研習課程，教授他們學習程式設計與函數式程式設計，這些老師和他們的學生所做的現場測試提供了團對專案開發方向重要的依據，在接下來的幾年中，PLT 團隊為 DrScheme 加入了教學用語言，例如 代數步進器\[5\]、[讀取-求值-輸出循環](https://zh.wikipedia.org/wiki/:读取﹣求值﹣输出循环 "wikilink")、constructor-based printer 和其他許多發明，推出了一套有應用價值的程式教學環境。

2001年，核心團隊(Felleisen, Findler, Flatt, Krishnamurthi)也編纂和發行了他們的第一本教科書《How to Design Programs》，融入了許多他們的教學理念。

## Code examples

Here is a trivial [hello world](https://zh.wikipedia.org/wiki/hello_world "wikilink") program:

``` Racket
#lang racket/base
"Hello, World!"
```

Running this program produces the output:

  -

Here is a slightly less trivial program: [Sierpinski_Racket_example.png](https://zh.wikipedia.org/wiki/File:Sierpinski_Racket_example.png "fig:Sierpinski_Racket_example.png")

``` Racket
#lang racket
(require 2htdp/image)

(let sierpinski ([n 8])
  (if (zero? n)
    (triangle 2 'solid 'red)
    (let ([t (sierpinski (- n 1))])
      (freeze (above t (beside t t))))))
```

This program, taken from the Racket website, draws a [Sierpinski triangle](https://zh.wikipedia.org/wiki/Sierpinski_triangle "wikilink"), nested to depth 8.

Using the `#lang` directive, a source file can be written in different dialects of Racket. Here is an example of the factorial program in Typed Racket, a [statically typed](https://zh.wikipedia.org/wiki/statically_typed "wikilink") dialect of Racket:

``` Racket
#lang typed/racket

(: fact (Integer -> Integer))
(define (fact n)
  (cond [(zero? n) 1]
        [else (* n (fact (- n 1)))]))
```

## 註釋

## 外部連結

  -
[Category:函数式编程语言](https://zh.wikipedia.org/wiki/Category:函数式编程语言 "wikilink") [Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink") [Category:LISP程式語言家族](https://zh.wikipedia.org/wiki/Category:LISP程式語言家族 "wikilink")

1.  [PLT Scheme](http://plt-scheme.org/)
2.  [What does "PLT" stand for?](http://stackoverflow.com/questions/13724714/what-does-the-plt-in-plt-scheme-now-called-racket-stand-for/)
3.  [DrRacket](http://docs.racket-lang.org/drracket/)
4.
5.  [1](http://www.ccs.neu.edu/racket/pubs/esop2001-cff.pdf)