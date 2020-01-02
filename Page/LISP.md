> 本文内容由[LISP](https://zh.wikipedia.org/wiki/LISP)转换而来。


**Lisp**（歷史上拼寫為**LISP**）是具有悠久歷史的計算機編程語言家族，有獨特和完全括號的[前綴符號表示法](../Page/波兰表示法.md "wikilink")。起源於西元1958年，是現今第二悠久而仍廣泛使用的高階編程語言。只有[FORTRAN編程語言比它更早一年](../Page/Fortran.md "wikilink")。Lisp編程語族已經演變出許多種方言。現代最著名的通用編程語種是[Clojure](../Page/Clojure.md "wikilink")、[Common Lisp和](../Page/Common_Lisp.md "wikilink")[Scheme](../Page/Scheme.md "wikilink")。

Lisp最初創建時受到[阿隆佐·邱奇](../Page/阿隆佐·邱奇.md "wikilink")的[lambda演算的影響](https://zh.wikipedia.org/wiki/λ演算 "wikilink")，用來作為計算機程序實用的數學表達。因為是早期的高階編程語言之一，它很快成為人工智能研究中最受歡迎的編程語言。在計算機科學領域，Lisp開創了許多先驅概念，包括：[树结构](https://zh.wikipedia.org/wiki/树结构 "wikilink")、[自動記憶體管理](../Page/垃圾回收_\(計算機科學\).md "wikilink")、[动态类型](https://zh.wikipedia.org/wiki/类型系统 "wikilink")、[条件表达式](https://zh.wikipedia.org/wiki/条件表达式 "wikilink")、[高階函數](https://zh.wikipedia.org/wiki/高階函數 "wikilink")、[遞迴](https://zh.wikipedia.org/wiki/遞迴 "wikilink")、自主（self-hosting）編譯器、[讀取﹣求值﹣輸出循環](https://zh.wikipedia.org/wiki/讀取﹣求值﹣輸出循環 "wikilink")（）。

"LISP"名稱源自「列表處理器」（）的縮寫。[列表是Lisp的主要數據結構之一](https://zh.wikipedia.org/wiki/連結串列 "wikilink")，Lisp編程代碼也同樣由列表組成。因此，Lisp程序可以把源代碼當作數據結構進行操作，而使用其中的宏系統，開發人員可將自己定義的新語法或領域專用的語言，嵌入在Lisp編程中。

代碼和數據的可互換性為Lisp提供了立即可辨識的語法。所有的Lisp程序代碼都寫為[S-表達式或以括號表示的列表](https://zh.wikipedia.org/wiki/S-表達式 "wikilink")。函數調用或語義形式也同樣寫成列表，首先是函數或操作符的名稱，然後接著是一或多個參數：例如，取三個參數的函數f即為`（f arg1 arg2 arg3）`。

Lisp语言的主要现代版本包括[Common Lisp](../Page/Common_Lisp.md "wikilink"), [Scheme](../Page/Scheme.md "wikilink")，[Racket](../Page/Racket.md "wikilink")以及[Clojure](../Page/Clojure.md "wikilink")。1980年代[蓋伊·史提爾二世编写了Common](https://zh.wikipedia.org/wiki/蓋伊·史提爾二世 "wikilink") Lisp试图进行标准化，这个标准被大多数解释器和编译器所接受。还有一种是編輯器[Emacs](../Page/Emacs.md "wikilink")所衍生出來的[Emacs Lisp](../Page/Emacs_Lisp.md "wikilink")（而Emacs正是用Lisp作为扩展语言进行功能扩展）非常流行，并建立了自己的标准。

## 歷史

### 20世纪

1955年至1956年間，[資訊處理語言被創造出來](https://zh.wikipedia.org/wiki/資訊處理語言 "wikilink")，用於[人工智能](../Page/人工智能.md "wikilink")處理（早期的基于符号处理的人工智能领域，以[图灵测试](../Page/图灵测试.md "wikilink")为目标）。此领域中有研究者持有观点：“符号演算系统可以衍生出智能。”\[1\]。它首先使用了列表(抽象数据类型)與遞歸。

1958年，[約翰·麥卡錫在](https://zh.wikipedia.org/wiki/約翰·麥卡錫 "wikilink")[麻省理工學院發明了Lisp程式語言](https://zh.wikipedia.org/wiki/麻省理工學院 "wikilink")，採用了資訊處理語言的特徵。1960年，他在《[ACM通讯](../Page/ACM通讯.md "wikilink")》發表論文，名為《遞迴函數的符號表達式以及由機器運算的方式，第一部》（Recursive Functions of Symbolic Expressions and Their Computation by Machine, Part I）。在這篇論文中闡述了只要透過一些簡單的運算子，以及用於函數的記號，就可以建立一個具[圖靈完備性語言](https://zh.wikipedia.org/wiki/圖靈完備性 "wikilink")，可用於[演算法中](https://zh.wikipedia.org/wiki/演算法 "wikilink")。

麥卡錫最初使用M-表達式寫程式碼，之後再轉成S-表達式，舉例來說M-表達式的語法，`car[cons[A,B]]`，等同於S-表達式的。然而由於S-表達式具備[同像性](../Page/同像性.md "wikilink")的特性（homoiconic，即程式與資料由同樣的結構儲存），實際應用中一般只使用S-表達式。此外他也借用了資訊處理語言中的许多概念。

約翰·麥卡錫的學生[史帝芬·羅素](../Page/史帝芬·羅素.md "wikilink")在閱讀完此論文後，認為Lisp編程語言當中的*`eval`*函数可以用[機器碼來實做](https://zh.wikipedia.org/wiki/機器碼 "wikilink")。他在[IBM 704機器上](https://zh.wikipedia.org/wiki/IBM_704 "wikilink")，寫出了第一個Lisp[解释器](https://zh.wikipedia.org/wiki/解释器 "wikilink")。1962年，蒂姆·哈特（Tim Hart）與麥克·萊文（Mike Levin）在麻省理工學院以Lisp編程語言，實做出第一個完整的Lisp編譯器。這兩人在筆記中使用的語法比麥卡錫早期的代碼更接近現代Lisp風格。

然而使用20世紀70年代當時的編譯器技術和硬體，要實現Lisp還是困難的挑戰。由研究生丹尼爾·愛德華茲所開發的垃圾收集程序，使得在通用計算機上運行Lisp變得實用，但效率仍然是一個問題。這導致了Lisp專用機器的創建：用於運行Lisp環境和程序的專用硬體。之後計算機硬體和編譯器技術的發展迅速，使得昂貴的Lisp專用機器過時。

### 西元2000年迄今

在20世紀90年代衰退之後，Lisp最近十年來因一些關注而逐漸復甦。大多數新活動都集中在Common Lisp，Clojure，Racket，Scheme和Emacs Lisp的實作上，包括開發新的跨平台函式庫和應用。當其他人認為Lisp已經是過時陳舊的，如[保羅·格雷厄姆和](https://zh.wikipedia.org/wiki/保羅·格雷厄姆 "wikilink")[埃里克·雷蒙](../Page/埃里克·雷蒙.md "wikilink")等人繼續出版有關於Lisp編程的著作，一些新的開發人員受到這些作者啟發，經常將Lisp這種語言描述為令人大開眼界的經驗，並聲稱在本質上比較其它編程語言更有生產效率。這種意識的提高可對比於，如同Lisp在90年代中期“[人工智能冬季](../Page/人工智慧低谷.md "wikilink")”的短暫增長。

Dan Weinreb在他的調查中，列出了11個積極維護中的Common Lisp實作。Scieneer Common Lisp是一個新的實作商業化產品，由CMUCL於2002年首次發布。

開源社群建立了新的支援基礎：CLiki是個收集Common Lisp相關資訊的維基，Common Lisp目錄列出了資源，\#lisp是一個受歡迎的IRC頻道，可以共享和註釋代碼片段（在lisppaste的支持下，一個用Lisp編寫的[IRC機器人](../Page/IRC機器人.md "wikilink")），Planet Lisp收集了各種 Lisp相關博客的內容，LispForum用戶討論Lisp主題，Lispjobs是個公布職缺機會的服務，還有一個Weekly Lisp News提供每週新聞。Common-lisp.net是開源專案的託管站點。Quicklisp則是含括了許多函式庫的裝載管理器。

Lisp50@OOPSLA慶祝了Lisp的50週年（1958-2008）。在波士頓，溫哥華和漢堡有定期的當地用戶會議。其他活動包括歐洲共同Lisp會議，歐洲Lisp專題討論會和國際Lisp研討會。Scheme社群積極維護了二十多個實作。在過去幾年中已開發了數個有意義的新實作（Chicken，Gambit，Gauche，Ikarus，Larceny，Ypsilon），Scheme社群廣泛接納了R5RS語言標準。Scheme需求實作過程建立了很多預備標準函式庫和Scheme擴展功能。各種 Scheme實作的用戶社群持續地增長。

一個新的語言標準化過程於2003年開始，並在2007年產生了R6RS標準，而使用Scheme介紹計算機科學課程的學校似乎有所減少。麻省理工學院的計算機科學入門課程，已經不再使用Scheme。

有幾種新的Lisp方言：Arc，Hy，Nu，Clojure，Liskell，LFE（Lisp Flavored Erlang）和Racket。

### Lisp編程語族時間軸

## 基本介绍

Lisp是第一個[函数式程序語言](https://zh.wikipedia.org/wiki/函數程式語言 "wikilink")，区别于[C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[Fortran](../Page/Fortran.md "wikilink")等命令型程序语言和[Java](../Page/Java.md "wikilink")、[C\#](../Page/C♯.md "wikilink")、[Objective-C](../Page/Objective-C.md "wikilink")等面向对象程序语言。由于历史的原因，Lisp长期以来被认为主要用于[人工智能](../Page/人工智能.md "wikilink")领域，但Lisp并不是只为人工智能而设计，而是一种通用的程序语言。

Lisp的表达式是一个原子（atom）或列表（list），原子又包含符號（symbol）與數值（number）；列表是由零个或多个表达式组成的序列，表达式之间用空格分隔开，放入一对括号中，如：

``` lisp
abc
()
(abc xyz)
(a b (c) d)
```

最后一个列表是由四个元素构成的，其中第三个元素本身也是一个列表，這種又稱為嵌套列表（nested list）。

正如算数表达式1+1有值2一样，Lisp中的表达式也有值，如果表达式`e`得出值`v`，我们说`e`返回`v`。如果一个表达式是一个表，那么我们把表中的第一个元素叫做操作符，其余的元素叫做自变量。

### Lisp的7个公理（基本操作符）

#### 基本操作符1 quote

`(quote x)`返回x，我们简记为'x

``` lisp
(quote a)
```

上面的表達式的值是a。如果使用C语言或者Java語言的表達方式，可以說成：上面這段代碼返回的值是a。

``` lisp
'a
```

這個表達式和上面的那個相同，值也是a。將**quote**寫成 ''' ' '''只是一種[語法糖](https://zh.wikipedia.org/wiki/語法糖 "wikilink")。

被**quote**起來的單一個元素會成為符號（**symbol**，例如'a）。符號是Lisp中的一個特別概念，他在程式碼中看起來是個字串，但並不盡然，因為符號其實會被Lisp解释器直接指向某個記憶體位置，所以當你比較'apple和'apple兩個符號是否相同時，不需要像字串一樣一個個字元逐字比較，而是直接比較記憶體位置，故速度較快（使用eq運算子來比較，如果使用equal運算子會變成逐字比較）。當你定義一個函数，或者定義一個变量時，他們的內容其實就是指向一個符號。

#### 基本操作符2 atom

(atom x)当x是一个atom或者空的list时返回原子`t`，否则返回NIL。在Common Lisp中我们习惯用原子`t`表示真，而用空表`()`或`NIL`表示假。

``` lisp
> (atom 'a)
t
> (atom '(a b c))
NIL
> (atom '())
t
```

现在我们有了第一个需要求出自变量值的操作符，让我们来看看quote操作符的作用——通过引用（quote）一个表，我们避免它被求值（eval）。一个未被引用的表达式作为自变量，atom将其视为代码，例如：

``` lisp
> (atom (atom 'a))
t
```

这是因为`(atom 'a)`的结果（`t`）被求出，并代入`(atom (atom 'a))`，成为`(atom t)`，而这个表达式的结果是t。

反之一个被引用的表仅仅被视为表

``` lisp
> (atom '(atom 'a))
NIL
```

引用看上去有些奇怪，因为你很难在其它语言中找到类似的概念，但正是这一特征构成了Lisp最为与众不同的特点：代码和数据使用相同的结构来表示，只用**quote**来区分它们。

#### 基本操作符3 eq

(eq x y)当x和y指向相同的对象的时候返回t，否则返回NIL，值得注意的是在Common Lisp中，原子对象在内存中只会有一份拷贝，所以`(eq 'a 'a)`返回t，例如：

``` lisp
>(eq 'a 'a)
t
>(eq 'a 'b)
NIL
> (eq '() '())
t
> (eq '(a b c) '(a b c))
NIL
```

#### 基本操作符4 car

Contents of the Address part of Register number缩写

(car x)要求x是一个表，它返回x中的第一个元素，例如：

``` lisp
> (car '(a b))
a
```

#### 基本操作符5 cdr

(cdr x)同样要求x是一个表，它返回x中除第一个元素之外的所有元素组成的表，例如：

``` lisp
> (cdr '(a b c))
(b c)
```

#### 基本操作符6 cons

(cons x y)返回一个cons cell(x y)，如果y不是一个list，将会以dotted pair形式展现这个cons cell，例如：

``` lisp
>(cons 'a 'b)
(a . b)
```

一个cons cell的第二项如果是另一个cons cell，就表示成表的形式，例如：

``` lisp
 (cons 'a (cons 'b 'c))
```

就表示成 （a b . c） 若一个cons cell第二项为空，就省略不写，例如：

``` lisp
 (cons 'a  (cons 'b ()))
```

表示为 （a b） 这样，多重的cons cell就构成了表：

``` lisp
> (cons 'a (cons 'b (cons 'c ())))
(a b c)
```

#### 基本操作符7 cond

(cond (p<sub>1</sub> e<sub>1</sub>) ...(p<sub>n</sub> e<sub>n</sub>))的求值规则如下。对“条件表达式p”依次求值直到有一个返回t.如果能找到这样的p表达式，相应的“结果表达式e”的值作为整个cond表达式的返回值。

``` lisp
> (cond ((eq 'a 'b) 'first)  ((atom 'a)  'second))
 second
```

### 函数

七个原始操作符中，除了quote與cond，其他五個原始操作符总会对其自变量求值。我们称这样的操作符为函数。

## 语法和语义

## Lisp編程語族基本Hello World範例

### Scheme

``` lisp
(display "Hello, world!")
;; 在屏幕中打印出：Hello, world!

;; 函数定义
(define (hello)
  (display "Hello, world!"))

;; 函数调用
(hello)
;; 在屏幕中打印出：Hello, world!
```

### Common Lisp

``` lisp
(format t "hello, world!")
;; 在屏幕中打印出：hello, world!

;; 函数定义：
(defun hello-world ()
  (format t "hello, world!"))

;; 调用函数：
(hello-world)
;; 在屏幕中打印出：hello, world!
;; 并以NIL作为函数的返回值
```

### Clojure

``` clojure
(print "hello, world!")
;; 在屏幕中打印出：hello, world!

;; 函数定义：
(defn hello-world []
  (print "hello, world!"))

;; 调用函数：
(hello-world)
;; 在屏幕中打印出：hello, world!
;; 并以nil作为函数的返回值
```

## Lisp的巨集

Lisp的語法結構使数据与程序只是一線之隔（有quote就是数据，沒quote就是程序）。由于Lisp這種「数据即程序、程序即数据」的概念，使Lisp的[巨集](../Page/巨集.md "wikilink")（Macro）變得非常有彈性：你可以定義巨集，指定它應該被編譯器翻譯（巨集展開）成什麼程式，程序和数据都可以靈活地互相轉換，最後展開的代码會成為整個程序的一部分。巨集的实现非常倚重**quote**來達成。當你定義了一個巨集，巨集被**quote**的部份會先被編譯器**unquote**，而沒有quote、或已經被unquote的部份，則會先被求值。最终編譯器生成的整個程序代码才是最後執行時的代码。以下以廣泛使用的Emacs Lisp為範例（以下範例亦相容Common Lisp），解釋最基本的Lisp巨集。

想要建立一個list並賦予給fruit這個变量時不能這樣做，因為這個list沒有被quote過，會被編譯器視為「程序」執行（會把"apple"這個字符串當成函数解釋），而不是「数据」，因而產生錯誤：

``` lisp
> (setq fruit ("apple" "banana" "citrus"))
錯誤："apple"不是一個有效函數。
```

但這樣就正確了：

``` lisp
> (setq fruit (quote ("apple" "banana" "citrus")))
("apple" "banana" "citrus")
;;或者
> (setq fruit '("apple" "banana" "citrus"))
("apple" "banana" "citrus")
;;也可以用(list...)運算子，這樣一樣可以建立list。因為list本身是個函數，本來就應該被當成程式執行而不是資料，所以不會報錯：
> (setq fruit (list "apple" "banana" "citrus"))
("apple" "banana" "citrus")
```

前面有提到使用'符號這個語法糖能夠代替quote，但還有另外一種符號是\`，意義基本上與'相同，但被\`包起來的部份可以再用來unquote；而'沒有這種能力。

也就是說被\`給quote起來的部份是資料，但使用逗号“,”來unquote，令被quote的数据變回程序。（注意quote只有一個arg，所以arg要用list包起來）

``` lisp
;;使用`來quote整個list
> `("apple" "banana" "citrus")
("apple" "banana" "citrus")

;;使用逗號，來unquote，這樣fruit這個變量會被重新求值。
> `("apple" "banana" "citrus" ,fruit)
("apple" "banana" "citrus" ("apple" "banana" "citrus"))

;;可以利用unquote的特性，定義一個函数，讓該函数根據輸入的參數回傳一個我們想要的list数据結構：
(defun user-profile (name email mobile)
  `((name . ,name)
    (email . ,email)
    (mobile . ,mobile)))

(user-profile "Richard" "rms@gnu.org" "Noooo!")
=> ((name . "Richard")
    (email . "rms@gnu.org")
    (mobile . "Noooo!"))
```

### 簡易巨集範例

這裡定義一個巨集叫做`nonsense`，這個巨集可以方便地定義更多以`nonsense`為開頭的新函數：

``` lisp
(defmacro nonsense (function-name)
  `(defun ,(intern (concat "nonsense-" function-name)) (input) ;intern可以將string轉成symbol
     (print (concat ,function-name input))))
;;解釋：
;;這個巨集在編譯時，`(defun  因為被quote所以不會被求值，
;;但裡面的,(intern ...)這一段從逗號開始，整個括號括起來的
;; s-expression部份會被求值。這時作為argument輸入的function-name
;;就是在這時被插進macro中。其餘剩下的部份因為仍然在`(defun的quote
;;影響之下，並不會被求值。
;;現在巨集展開完了，整個巨集才被當成一般function執行。

(nonsense "apple")  ;使用我們剛剛定義的nonsense這個macro來定義新的f函数
=> nonsense-apple  ;成功定義出了新的函数叫做nonsense-apple

(nonsense "banana")  ;再使用一次巨集來定義新的函数叫做nonsense-banana
=> nonsense-banana  ;成功定義了新的函数。

(nonsense-apple " is good")  ;使用剛剛定義出的新函数
=> "apple is good"
(nonsense-banana " I love to eat")  ;使用另一個剛剛定義函数
=> "banana I love to eat"
```

## 参见

  - [Common Lisp](../Page/Common_Lisp.md "wikilink")
  - [Prolog](../Page/Prolog.md "wikilink")
  - [Scheme](../Page/Scheme.md "wikilink")
  - [SICP](https://zh.wikipedia.org/wiki/SICP "wikilink")
  - [Clojure](../Page/Clojure.md "wikilink")

## 参考文献

## 外部链接

  - [John McCarthy的主页](http://www-formal.stanford.edu/jmc/frames.html)
  - [Paul Graham's The Roots of Lisp](http://www.paulgraham.com/rootsoflisp.html)
  - [Racket官網](http://www.racket-lang.org/)

{{-}}

[Category:动态类型编程语言](https://zh.wikipedia.org/wiki/Category:动态类型编程语言 "wikilink") [Category:函数式编程语言](https://zh.wikipedia.org/wiki/Category:函数式编程语言 "wikilink") [Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink") [Category:LISP程式語言](https://zh.wikipedia.org/wiki/Category:LISP程式語言 "wikilink")

1.  徐宥，[《Lisp语言是怎么来的–Lisp和AI的青梅竹马A》](http://blog.youxu.info/2009/08/31/lisp-and-ai-1/) [《Lisp语言是怎么来的–Lisp和AI的青梅竹马B》](http://blog.youxu.info/2010/02/10/lisp-and-ai-2/)