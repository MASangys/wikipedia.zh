**Scheme**是一种[函数式编程语言](../Page/函数式编程语言.md "wikilink")，是[Lisp的两种主要方言之一](../Page/Lisp.md "wikilink")（另一种为[Common
Lisp](../Page/Common_Lisp.md "wikilink")）。不同于[Common
Lisp](../Page/Common_Lisp.md "wikilink")，Scheme遵循[極簡主義哲学](../Page/極簡主義_\(程式設計\).md "wikilink")，以一个小型语言核心作为标准，加上各种强力语言工具（[语法糖](../Page/语法糖.md "wikilink")）来扩展语言本身\[1\]。

[麻省理工學院與其他院校曾采用Scheme教授计算机科学入門課程](../Page/麻省理工學院.md "wikilink")。著名的入門教材《[-{zh-hans:计算机程序的构造和解释;zh-hant:電腦程式的構造和解釋}-](../Page/計算機程序的構造和解釋.md "wikilink")》（SICP）利用Scheme來解釋程序設計\[2\]。Scheme的廣泛受眾被視為一個主要優勢，然而不同實現之間的差異成為了它的一個劣勢\[3\]。

Scheme最早由[麻省理工學院的](../Page/麻省理工學院.md "wikilink")[蓋伊·史提爾二世與](../Page/蓋伊·史提爾二世.md "wikilink")[傑拉德·傑伊·薩斯曼在](../Page/傑拉德·傑伊·薩斯曼.md "wikilink")1970年代發展出來，並由兩人發表的「λ論文集」推廣開來。
Scheme語言與[λ演算關係十分密切](../Page/λ演算.md "wikilink")。小寫字母「λ」是Scheme語言的[標誌](../Page/標誌.md "wikilink")。

Scheme的[哲学是](../Page/哲学.md "wikilink")：设计计算机语言不应该进行功能的堆砌，而应该尽可能减少弱点和限制，使剩下的功能显得必要\[4\]。Scheme是第一個使用**靜態**[作用域的Lisp方言](../Page/作用域.md "wikilink")，也是第一个引入“干净宏”和第一类续延的编程语言。

## 歷史

### Lisp

Scheme起源於[約翰·麥卡錫於](../Page/約翰·麥卡錫.md "wikilink")1958年提出的[Lisp語言](../Page/Lisp.md "wikilink")。通過Lisp，麥卡錫證明了[圖靈完備的系統可以僅僅由幾個簡單的算子與函數定義功能組成](../Page/圖靈完備.md "wikilink")。這一設計對Scheme的影響非常深刻。

麥卡錫最早提出兩套語法：所謂「M表示式」是通常熟知的函數語法，如`car[cons[A,B]]`。在麥卡錫原本的設計中，用M表示式寫成的程式將自動譯至「S表示式」，如`(car
(cons A
B))`，然而由於S表示式具備[同像性](../Page/同像性.md "wikilink")（即程序与数据由相同的结构存储），實際應用中一般只使用S表示式。Scheme的語法即來自S表示式。這一特性使得在Scheme中實現[自循環直譯器變得非常簡單](../Page/自循環直譯器.md "wikilink")。

### 起源

Scheme的靈感來自[麻省理工學院的Carl](../Page/麻省理工學院.md "wikilink")
Hewitt提出的一種叫做[參與者模式的](../Page/參與者模式.md "wikilink")[數學模型](../Page/數學模型.md "wikilink")。Hewitt當時正在試圖將參與者模式加入[Planner語言](../Page/Planner.md "wikilink")，而受其影響的史提爾與薩斯曼決定在[Maclisp中實現一個支援參與者模式的](../Page/Maclisp.md "wikilink")[Lisp方言](../Page/Lisp.md "wikilink")\[5\]。史提爾與薩斯曼兩人很快發現參與者模式與[λ演算非常類似](../Page/λ演算.md "wikilink")，而所謂「參與者」不過是Peter
J. Landin提出並由Joel
Moses於1970年發表的[閉包而已](../Page/闭包_\(计算机科学\).md "wikilink")\[6\]。因此，兩人很快意識到λ演算是在Lisp中實現變數範圍的關鍵\[7\]。基於這一見解，兩人很快開發出了一套精簡的程式語言，並命名為「Schemer」（後因作業系統字數限制改為Scheme）。儘管Hewitt認為Scheme[抽象性的不足是一個倒退](../Page/抽象性.md "wikilink")，它簡約的語法很快贏得廣泛接受，並成為最具影響力的程式語言之一。在Scheme被廣為接受後，史提爾與薩斯曼曾承認他們事實上沒有刻意實現Scheme的簡約性。兩人認為簡單而強大的[λ演算最終使得Scheme得以實現極度的精簡化](../Page/λ演算.md "wikilink")\[8\]。

### λ論文集

「λ論文集」是Scheme的發明人史提爾與薩斯曼所撰寫的關於程式語言設計的一系列論文，最早作為[麻省理工學院的內部](../Page/麻省理工學院.md "wikilink")[備忘錄發表](../Page/備忘錄.md "wikilink")。Scheme的功能很大一部分是由這些論文確立的。
通常認為λ論文集包括：

## 語言標準

目前Scheme由[IEEE負責標準管理](../Page/IEEE.md "wikilink")，並由一個專門的委員會發表的「演算法語言Scheme報告，第N版」（Revised<sup>n</sup>
Report on the Algorithmic Language
Scheme）進行標準化。現在的標準是1998年的R5RS\[9\]，並且R6RS\[10\]已經在2007年被批准了\[11\]。R6RS帶來了很大的變動\[12\]，導致Scheme社區對其意見不一，更有一些使用者指責R6RS僅僅是在堆積華而不實的功能\[13\]\[14\]。

Scheme的標準委員會目前正在討論R7RS的事宜，並決定是否將Scheme分為兩個獨立的語言：一個為教育者提供精簡的語法，另一個為專業人士提供強大的功能\[15\]。

## 語言特性

Scheme大体上是一個[函數式程式語言](../Page/函數式程式語言.md "wikilink")，並支援其他[编程范型](../Page/编程范型.md "wikilink")。它的語法基於[Lisp的](../Page/Lisp.md "wikilink")[S-表达式](../Page/S-表达式.md "wikilink")：函數調用在Scheme中表示為一個串列，其中第一個元素為函數名，而後的元素為函數的參數。一個Scheme程式是由巢狀串列表達而成，而串列又是Scheme的主要資料結構，這導致程式和資料在Scheme中基本上是等價的概念。因此每一個Scheme程式都可以被視為另一個Scheme程式的參數。Scheme程式可以輕易讀入並分析其他Scheme程式，就是所谓的[同像性](../Page/同像性.md "wikilink")。该特性被用于“代码即数据”的设计思维中，它极大提高了语言表达性和灵活性。但也有批评认为对该特性的不当使用将造成反效果，将数据当作代码需要借助[eval在运行时求值](../Page/eval.md "wikilink")，这不利于编译优化；另外代码可以被当作数据一样被修改（即所谓[程序自修改](../Page/程序自修改.md "wikilink")）可能会造成程序逻辑混乱。

Scheme的列表與其他Lisp方言都是基於最基礎的數據結構「有序對」（pair）。Scheme提供cons，car，與cdr方法\[16\]操作有序對與列表。

Scheme的變數都使用動態強型別系統，而函數被視為變數的一種，並可以作為參數提供給其他函數。換句話說，Scheme中的函數都是[第一類物件](../Page/第一類物件.md "wikilink")。

### 極簡主義

Scheme的簡約性使它成為具備同級別功能的程式語言中最易於實現的語言\[17\]。Scheme的很多結構源於[λ演算](../Page/λ演算.md "wikilink")，例如let可以寫作創造並調用一個[匿名函數](../Page/匿名函數.md "wikilink")：

``` Scheme
(define-syntax let
  (syntax-rules ()
    ((let ((var expr) ...) body ...)
      ((lambda (var ...) body ...) expr ...))))
```

換句話說，調用let語句如`(let ((a 1) (b 2)) (+ a
b))`等同於[λ演算語句](../Page/λ演算.md "wikilink")`((lambda
(a b) (+ a b)) 1 2)`。
基於這一特性，Scheme的[解釋器可以得到極大的精簡](../Page/解釋器.md "wikilink")。

### λ演算

Scheme的函數式範型主要受到了[邱奇的](../Page/邱奇.md "wikilink")[λ演算的影響](../Page/λ演算.md "wikilink")。在Scheme中，「`lambda`」關鍵詞被用於定義[匿名函數](../Page/匿名函數.md "wikilink")，且所有非匿名函數都可以被視作取值為`lambda`函數的變數。（換句話說，`(define
(foo x) (+ x 1))`與`(define foo (lambda (x) (+
x 1)))`在語法上是等同的，而前者在直譯器中會被譯為後者。）這一設定在歷史上推動了[函數式程式語言的發展](../Page/函數式程式語言.md "wikilink")。事實上，Scheme中所有函數式控制語句都可以用λ演算的語言表示，例如有序對可以表示為\[18\]

``` scheme
(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

(define (cdr z)
  (z (lambda (p q) q)))
```

只要這樣定義出來的cons、car和cdr滿足恆等式`(car (cons x y))`等於x和`(cdr (cons x y))`等於y。

甚至遞歸也可以利用λ演算的「[Y算子](../Page/不動點組合子#Y組合子.md "wikilink")」表示。用Scheme創始人的話講，Scheme中的`lambda`不僅是定義函數的功能，而是整個語言的控制結構與環境操作語句\[19\]。Scheme的這一特性使得形式化證明變得非常容易。

### 代碼塊結構

Scheme的代碼塊結構來自更早時候的[ALGOL語言](../Page/ALGOL.md "wikilink")。在Scheme中，本地變數可以由`let`，`let*`，與`letrec`產生。這些語句實際上與`lambda`等同：它們都通過函數的形式參數來實現本地變數。例如，

``` scheme
(define foo 5)
;; foo 現在取值 5
(let ((foo 10))
  ;; foo 現在取值 10
  )
;; foo 現在取值 5
```

這三者的區別在於，`let`所綁定的變數僅在它的區塊內有效，而`let*`所綁定的變數可以在以下的綁定中使用，例如，

``` scheme
(let* ((var1 10)
       (var2 (+ var1 5)))
  var2)
;; 返回 15
;; 如果僅使用 let，程式會出錯。
```

`letrec`所綁定的變數可以互相引用。因此，`letrec`通常被用於雙重遞歸：

``` Scheme
(letrec ((female (lambda(n)
                   (if (= n 0) 1
                       (- n (male (female (- n 1)))))))
         (male (lambda(n)
                 (if (= n 0) 0
                     (- n (female (male (- n 1))))))))
  (display "i male(i) female(i)")(newline)
  (do ((i 0 (+ i 1)))
      ((> i 8) #f)
    (display i) (display "   ")(display (male i))(display "         ")(display (female i))
    (newline)))
```

這一程式可以列出[侯世達的陰陽數列](../Page/侯世達.md "wikilink")。

### 尾端遞迴優化

Scheme是最早實現[尾端遞迴優化的Lisp方言](../Page/尾端遞迴.md "wikilink")。換句話說，Scheme中所有尾端遞迴都會被自動作為[循環解釋](../Page/循環.md "wikilink")（Scheme支援`do`語句，但是一般Scheme中循環都會寫作遞歸）。尾端遞迴優化使得Scheme支援任意數目的尾端遞迴調用，而無需擔心[堆疊溢位](../Page/堆疊溢位.md "wikilink")。如以下計算[階乘的程式將自動優化為循環](../Page/階乘.md "wikilink")。\[20\]

``` Scheme
(define (factorial n)
  (define (iter product counter)
    (if (> counter n)
        product
        (iter (* counter product)
              (+ counter 1))))
  (iter 1 1))
```

## 語言元素

根據Scheme語言規範，Scheme中的標準語句可分為「標準模式」（Standard form）與「標準過程」（Standard
procedure），其中標準模式提供語言的控制結構，而標準過程提供一些常用的功能。
下表給出所有R5RS所定義的標準語句\[21\]（R6RS在這一基礎上加入了大量標準過程，因此無法全部列出）。

### 標準模式

標註為「L」的模式為庫模式（Library form），通常是用其他更加基礎的模式來實現的。 define |row2=Binding
constructs{{\!\!}}lambda, do (L), let (L), let\* (L), letrec (L)
|row3=條件判斷{{\!\!}}if, cond (L), case (L), and (L), or (L)
|row4=順序執行{{\!\!}}begin (L) |row5=循環執行{{\!\!}}lambda, do (L),
named let (L) |row6=語法延伸{{\!\!}}define-syntax, let-syntax,
letrec-syntax, syntax-rules (R5RS), syntax-case (R6RS)
|row7=引用符號{{\!\!}}quote('), unquote(,), quasiquote(\`),
unquote-splicing(,@) |row8=賦值{{\!\!}}set\! |row9=延緩執行{{\!\!}}delay (L)}}

### 標準過程

vector, make-vector, make-string, list |row2=相等判斷{{\!\!}}eq?, eqv?,
equal?, string=?, string-ci=?, char=?, char-ci=?
|row3=型別轉換{{\!\!}}vector-\>list, list-\>vector, number-\>string,
string-\>number, symbol-\>string, string-\>symbol, char-\>integer,
integer-\>char, string-\>list, list-\>string |row4=數學運算{{\!\!}}*參見下表*
|row5=字串操作{{\!\!}}string?, make-string, string, string-length,
string-ref, string-set\!, string=?, string-ci=?, string\<? string-ci\<?,
string\<=? string-ci\<=?, string\>? string-ci\>?, string\>=?
string-ci\>=?, substring, string-append, string-\>list, list-\>string,
string-copy, string-fill\! |row6=字符操作{{\!\!}}char?, char=?, char-ci=?,
char\<? char-ci\<?, char\<=? char-ci\<=?, char\>? char-ci\>?, char\>=?
char-ci\>=?, char-alphabetic?, char-numeric?, char-whitespace?,
char-upper-case?, char-lower-case?, char-\>integer, integer-\>char,
char-upcase, char-downcase |row7=陣列（vector）操作{{\!\!}}make-vector,
vector, vector?, vector-length, vector-ref, vector-set\!, vector-\>list,
list-\>vector, vector-fill\! |row8=符號操作{{\!\!}}symbol-\>string,
string-\>symbol, symbol? |row9=有序對與列表{{\!\!}}pair?, cons, car, cdr,
set-car\!, set-cdr\!, null?, list?, list, length, append, reverse,
list-tail, list-ref, memq. memv. member, assq, assv, assoc,
list-\>vector, vector-\>list, list-\>string, string-\>list
|row10=型別判斷{{\!\!}}boolean?, pair?, symbol?, number?, char?,
string?, vector?, port?, procedure?
|row11=Continuations{{\!\!}}call-with-current-continuation (call/cc),
values, call-with-values, dynamic-wind |row12=環境操作{{\!\!}}eval,
scheme-report-environment, null-environment, interaction-environment
(optional) |row13=輸入輸出{{\!\!}}display, newline, read, write, read-char,
write-char, peek-char, char-ready?, eof-object? open-input-file,
open-output-file, close-input-port, close-output-port, input-port?,
output-port?, current-input-port, current-output-port,
call-with-input-file, call-with-output-file,
with-input-from-file(optional), with-output-to-file(optional)
|row14=系統操作{{\!\!}}load (optional), transcript-on (optional),
transcript-off (optional) |row15=延緩執行{{\!\!}}force
|row16=函數式方法{{\!\!}}procedure?, apply, map, for-each
|row17=布林操作{{\!\!}}boolean? not}}

\+, -, \*, /, abs, quotient, remainder, modulo, gcd, lcm, expt, sqrt
|row2=分數運算{{\!\!}}numerator, denominator, rational?, rationalize
|row3=近似值{{\!\!}}floor, ceiling, truncate, round
|row4=精確性{{\!\!}}inexact-\>exact, exact-\>inexact, exact?,
inexact? |row5=不等判斷{{\!\!}}\<, \<=, \>, \>= |row6=其他判斷{{\!\!}}zero?,
negative?, positive? odd? even? |row7=最大與最小值{{\!\!}}max, min
|row8=三角函數{{\!\!}}sin, cos, tan, asin, acos, atan
|row9=冪與對數{{\!\!}}exp, log |row10=複數運算{{\!\!}}make-rectangular,
make-polar, real-part, imag-part, magnitude, angle, complex?
|row11=輸入與輸出{{\!\!}}number-\>string, string-\>number
|row12=型別判斷{{\!\!}}integer?, rational?, real?, complex?, number?}}

## 實作

Scheme的精簡設計使得程式語言設計人士與愛好者特別鍾愛研究它的實作，很多嵌入式系統語言與指令碼語言即是基於Scheme。Scheme的實作一般小而精簡，造成了很多不可互通的實作互相競爭。儘管Scheme的精簡性是它的一個主要長處，但试图使用Scheme编写既复杂又便于移植的程序往往比较困难，主要原因之一，是因为Scheme没有库函数标准。而R6RS试图完成这样的工作，它定义了两套标准，核心语言以及标准库。这使得Scheme第一次有了库函数标准，也使得编译器开发者和贡献者可以实现Scheme的可移植库。

幾乎所有Scheme實作都是基於Lisp的「[讀取﹣求值﹣輸出循環](../Page/讀取﹣求值﹣輸出循環.md "wikilink")」（Read-Eval-Print
Loop）模式。一些Scheme實作亦可作為編譯器，並將Scheme程式譯為二進制碼。很多用類似[C的基礎語言寫成的軟體都利用Scheme作為指令碼語言](../Page/C語言.md "wikilink")。還有一些Scheme翻譯器（例如Gambit，Chicken，Bigloo等）可將Scheme程式譯為[C或](../Page/C語言.md "wikilink")[Java](../Page/Java.md "wikilink")，或甚至[.Net](../Page/.Net.md "wikilink")。將Scheme譯作C的翻譯器往往可以在原始碼中利用C的特性。

最基本的Scheme實作是在《[-{zh-hans:计算机程序的构造和解释;zh-hant:電腦程式的構造和解釋}-](../Page/計算機程序的構造和解釋.md "wikilink")》中實現的[自循環直譯器](../Page/自循環直譯器.md "wikilink")。這一直譯器以Scheme寫成，並利用底層的Scheme功能來實現被執行的Scheme語言程式。儘管在實際上這一直譯器的意義不大（要想運行自循環直譯器，電腦中必須已經存在一個Scheme直譯器），它簡單的語法可以幫助使用者理解Scheme的執行過程。

## 教科書

  - 《[-{zh-hans:计算机程序的构造和解释;zh-hant:電腦程式的構造和解釋}-](../Page/計算機程序的構造和解釋.md "wikilink")》（SICP）是最著名的使用Scheme語言的電腦科學教科書，由Scheme創始人之一薩斯曼與Harold
    Abelson編寫。
  - 《[-{zh-hans:程序设计方法;zh-hant:程式設計方法}-](../Page/程序设计方法.md "wikilink")》對SICP中的一些被認為過於艱澀的概念進行了改進，由Felleison等人編寫。
  - [*Simply
    Scheme*](http://www.cs.berkeley.edu/~bh/ss-toc2.html)是一本專為中學級別，無電腦科學基礎的學生編寫的入門書，由[柏克萊加州大學資深講師](../Page/柏克萊加州大學.md "wikilink")[布萊恩·哈維編寫](../Page/布萊恩·哈維.md "wikilink")。

## 實際用處

### 電腦科學教育

很多著名的[電腦科學院校都利用Scheme來教授入門級課程](../Page/電腦科學.md "wikilink")。以下為一些最為著名的教授Scheme的學校：

  - [麻省理工學院是Scheme與](../Page/麻省理工學院.md "wikilink")[SICP的誕生地](../Page/SICP.md "wikilink")。直到2008年為止，麻省理工學院的入門課程6.001即是用Scheme來教授的\[22\]。儘管現在Scheme已經不再被用於入門課程，麻省理工學院到目前為止還在教授SICP\[23\]。

  - [柏克萊加州大學的入門課程](../Page/柏克萊加州大學.md "wikilink")61A到2010年為止利用Scheme與SICP教授入門課程，並利用Scheme來實作[Logo](../Page/Logo语言.md "wikilink")，另一個基於[Lisp的程式語言](../Page/Lisp.md "wikilink")\[24\]。自2011年起，61A改用[Python來教授SICP](../Page/Python.md "wikilink")\[25\]。

  - [西北大學的入門課程CS](../Page/西北大學.md "wikilink")2500利用Scheme來教授另一本著名的教材《[-{zh-hans:程序设计方法;zh-hant:程式設計方法}-](../Page/程序设计方法.md "wikilink")》。

  - [印第安那大學的入門課程C](../Page/印第安那大學.md "wikilink")211利用Scheme來教授。

  - [耶魯大學](../Page/耶魯大學.md "wikilink")

  - [萊斯大學](../Page/萊斯大學.md "wikilink")

  - [香港科技大學](../Page/香港科技大學.md "wikilink")

  - [北京大學](../Page/北京大學.md "wikilink")

  - 項目在美國超過600所高中教授Scheme語言。

  - [滑铁卢大学数学系](../Page/滑铁卢大学.md "wikilink")（包括 Computer
    Science）的入門課程CS115, CS116, CS135利用Scheme來教授。

  - [雲林科技大學](../Page/雲林科技大學.md "wikilink")

### 指令碼語言

  - [自由軟體影像處理程式](../Page/自由軟體.md "wikilink")[GIMP利用Scheme為指令碼語言](../Page/GIMP.md "wikilink")\[26\]。
  - [GNU的標準指令碼語言](../Page/GNU.md "wikilink")[Guile是基於Scheme的](../Page/Guile.md "wikilink")，並被用於[GNOME等軟體中](../Page/GNOME.md "wikilink")\[27\]
    。

## 参见

  - 《[-{zh-hans:计算机程序的构造和解释;zh-hant:電腦程式的構造和解釋}-](../Page/計算機程序的構造和解釋.md "wikilink")》
  - 《[-{zh-hans:程序设计方法;zh-hant:程式設計方法}-](../Page/程序设计方法.md "wikilink")》

## 註釋

## 外部链接

  - [Scheme 语言的官方主页](http://www.schemers.org)
  - [The Scheme programming language 3rd
    edition](http://www.scheme.com/tspl3/)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")
[Category:LISP程式語言家族](https://zh.wikipedia.org/wiki/Category:LISP程式語言家族 "wikilink")
[Category:LISP程式語言](https://zh.wikipedia.org/wiki/Category:LISP程式語言 "wikilink")
[Category:Scheme語言](https://zh.wikipedia.org/wiki/Category:Scheme語言 "wikilink")

1.  Barbara Liskov, "A History of CLU", MIT Laboratory for Computer
    Science Technical Report 561 (1993)

2.

3.

4.
5.

6.

7.

8.
9.

10.

11.

12.

13.

14.

15.
16. cons，car，與cdr的名稱來自於Lisp。這三者的含義分別為「construct」（意為「建立」），「**C**ontent of
    **A**ddress **R**egister」（意為「記憶體地址暫存器內容」），與「**C**ontent of
    **D**ecrement **R**egister」（意為「記憶體減量暫存器內容」）。這些名稱反映了Lisp中有序對最早的實現方法。

17. 事實上，Richard Kelsey與Jonathan
    Rees曾在1986年8月6日僅用48小時寫作過一個Scheme直譯器，並命名為[Scheme
    48](../Page/Scheme_48.md "wikilink")。詳見

18.
19.

20.
21.
22.

23.

24.

25.

26.

27.