[Agda_proof.jpg](https://zh.wikipedia.org/wiki/File:Agda_proof.jpg "fig:Agda_proof.jpg")

**Agda**是一个[依赖类型的](../Page/依赖类型.md "wikilink")[函数式编程语言](https://zh.wikipedia.org/wiki/函数式编程语言 "wikilink")，同时亦可作为一个用于构建[构造性证明的](../Page/构造性证明.md "wikilink")[证明辅助工具](https://zh.wikipedia.org/wiki/证明辅助工具 "wikilink")。Agda最早由[瑞典](../Page/瑞典.md "wikilink")[查尔摩斯工学院的](https://zh.wikipedia.org/wiki/查尔摩斯工学院 "wikilink")
Ulf Norell 设计并开发，作为他的博士论文课题\[1\]。目前的版本，Agda 2，则在第一版的基础上完全重写。

Agda体现了[柯里-霍华德同构](../Page/柯里-霍华德同构.md "wikilink")（Curry-Howard
correspondence）。它的理论根基是 Zhaohui Luo 的UTT\[2\]，该理论与 [Per
Martin-Löf](https://zh.wikipedia.org/wiki/Per_Martin-Löf "wikilink")
的[直觉类型论相类似](../Page/直觉类型论.md "wikilink")。

Agda与[Coq的几点显著不同之处在于](../Page/Coq.md "wikilink")：它本身并不支持tactics；所有的证明均以函数式编程的方式书写；语言本身吸收了许多常规的程序语言元素，诸如：数据类型、模式匹配（pattern
matching）、记录类型（records）、let表达式和模块（modules）等，而其语法则非常类似[Haskell](../Page/Haskell.md "wikilink")。

Agda系统一般通过其提供的[Emacs界面进行交互](../Page/Emacs.md "wikilink")\[3\]，亦可藉由命令行方式单独执行。

## 特性

### 归纳类型

在Agda中定义数据类型的形式与在其它非依赖类型的编程语言中定义代数数据类型相似。

例如，在Agda中定义[皮亚诺数](../Page/皮亚诺公理.md "wikilink")：

``` haskell
data ℕ : Set where
  zero : ℕ
  suc : ℕ → ℕ
```

这表示构造一个自然数有两种方式：zero 是一个自然数；若 n 是一个自然数，则 suc n 也必定是一个自然数。

又如，Agda中对小于或等于关系的定义：

``` haskell
data _≤_ : ℕ → ℕ → Set where
  z≤n : {n : ℕ} → zero ≤ n
  s≤s : {n m : ℕ} → n ≤ m → suc n ≤ suc m
```

第一处构造指出：zero 必定小于或等于任何自然数；第二处构造指出：当 n \<= m 时必定有 (suc n) \<= suc m。\[4\]

### 元变量

Agda和其他类似的证明系统（如Coq）相比，一个显著的特性是程序构造中对元变量（metavariables）的大量使用。

例如，在Agda中可以写出如下函数：

``` haskell
add : ℕ → ℕ → ℕ
add x y = ?
```

“?”即是一个元变量。在 Emacs mode
中交互时，系统会提示用户所期望的类型，允许用户进一步添加具体代码到其中。该特性为增量程序构造提供了支持，从而达到了与Coq的tactics类似的效果。

## 标准库

Agda的标准库包含了一些有用的数据结构、定义和相关的定理证明，例如自然数、list与vector。目前该标准库比起Coq尚欠成熟。

## Unicode

Agda大量吸收了[Unicode字符集中的数学符号](https://zh.wikipedia.org/wiki/Unicode "wikilink")，这使得其证明更具可读性；但这同时也造成了键盘输入的不便。Agda的
Emacs mode 中提供了输入这些符号的快捷键。

## 编译器后端

目前Agda具备三个编译器后端的实现：编译到Haskell平台的MAlonzo；一个编译到[JavaScript的后端](../Page/JavaScript.md "wikilink")；以及一个[Epic](https://web.archive.org/web/20120722024513/http://www.cs.st-andrews.ac.uk/~eb/epic.php)后端。

## 参考文献

## 外部链接

  - [The Agda 2 homepage](http://wiki.portal.chalmers.se/agda/) (a
    wiki), including documentation and a link to a bug-report tool
  - [Agda at the Hackage
    repository](http://hackage.haskell.org/package/Agda)
  - [Learn you an Agda](https://github.com/liamoc/learn-you-an-agda), a
    tutorial.
  - [A course on Functional
    Programming](https://web.archive.org/web/20131224094000/http://pnyf.inf.elte.hu/fp/Overview_en.xml),
    with seven parts on Agda
  - [Introduction to
    Agda](http://www.youtube.com/playlist?p=B7F836675DCE009C), a
    five-part YouTube playlist by Daniel Peebles
  - [Dependently Typed Programming in
    Agda](http://www.cse.chalmers.se/~ulfn/papers/afp08/tutorial.pdf),
    by [Ulf Norell](https://zh.wikipedia.org/wiki/Ulf_Norell "wikilink")
  - [A Brief Overview of
    Agda](http://www.cse.chalmers.se/~ulfn/papers/tphols09/tutorial.pdf),
    by Ana Bove, Peter Dybjer, and [Ulf
    Norell](https://zh.wikipedia.org/wiki/Ulf_Norell "wikilink")
  - [An Agda Tutorial](http://ocvs.cfv.jp/Agda/main.pdf), Misao
    Nagayama, Hideaki Nishihara, Makoto Takeyama (2006)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")
[Category:函数式编程语言](https://zh.wikipedia.org/wiki/Category:函数式编程语言 "wikilink")

1.  Ulf Norell. Towards a practical programming language based on
    dependent type theory. PhD Thesis. Chalmers University of
    Technology, 2007.
    http://www.cse.chalmers.se/\~ulfn/papers/thesis.pdf
2.  Luo, Zhaohui. *Computation and reasoning: a type theory for computer
    science*. Oxford University Press, Inc., 1994.
3.
4.