[Corrected_S-expression_tree_2.png](https://zh.wikipedia.org/wiki/File:Corrected_S-expression_tree_2.png "fig:Corrected_S-expression_tree_2.png")
[data
structure](https://zh.wikipedia.org/wiki/data_structure "wikilink")
representing the s-expression for `(* 2 (+ 3 4))` \]\]
所谓“S-[表达式](https://zh.wikipedia.org/wiki/表达式 "wikilink")/[運算式](https://zh.wikipedia.org/wiki/運算式 "wikilink")”（S-expression）或“sexp”（其中“S”代表“符号的”），是指一种以人类可读的文本形式表达[半结构化数据的约定](https://zh.wikipedia.org/wiki/半结构化数据 "wikilink")。S-表达式可能以其在[Lisp家族的编程语言中的使用而为人所知](https://zh.wikipedia.org/wiki/Lisp "wikilink")。其他应用则见于由Lisp衍生的语言，如，以及如[IMAP之类通信协议中作为标记出现和](https://zh.wikipedia.org/wiki/Internet_Message_Access_Protocol "wikilink")[约翰·麦卡锡的](../Page/约翰·麦卡锡.md "wikilink")。语法细节和所支持的数据类型虽因语言而异，但这些语言间最通用的特性则是使用S-表达式作为括号化的前缀表示法（有时亦作剑桥[波兰表示法](../Page/波兰表示法.md "wikilink")）。

## 數據類型和語法

S-表達式格式有許多變體，支持不同數據類型的各種不同語法。最廣泛支持的是：

  - *列表和點對*: `(1 () (2 . 3) (4))`
  - *符號*: `with-hyphen` `?@!$` `a\ symbol\ with\ spaces`
  - *字串*: `"Hello, world!"`
  - *整數*: `-9876543210`
  - *浮點數*: `-0.0` `6.28318` `6.023e23`

## 在 LISP 編程中使用

S-表达式在Lisp中既用作代码，也用作数据（见McCarthy Recursive Functions of Symbolic
Expressions
[1](https://web.archive.org/web/20040202215021/http://www-formal.stanford.edu/jmc/recursive/recursive.html)）。S-表达式原本被用于将被处理的数据，但Lisp的首个实现是一个
S-表达式的解释器，以 S-表达式编码 M-表达式，而Lisp程序员很快习惯于对代码和数据都使用 S-表达式。

S-表达式可以是如数字这样的单个对象，包括特殊原子`nil`和`t`在内的，或写作 `(x . y)`的[cons
pair](../Page/列表構造函數.md "wikilink")。更长的列表则由嵌套的cons pair组成，例如`(1 . (2 .
(3 . nil)))`（，亦可写作更易理解的`(1 2 3)`）。

使用前缀表示法，程序代码可写作
S-表达式。书写Lisp程序中额外的[语法糖则是](../Page/语法糖.md "wikilink")，一般的表达式`(quote
x)`可以省略为`'x`。

### 數據表達式的示例

嵌套列表可以寫為 S-表達式：((milk juice) (honey marmalade))是一個雙元素S-表達式，其元素也是雙元素
S-表達式。Lisp（和本文）中使用的以空格分隔的符號是典型的。換行符（換行符）通常有資格作為分隔符。
這是一個簡單的上下文無關語法的一小部分英語寫成 S-表達式（Gazdar /
Melish，Lisp 中的自然語言處理）：

``` lisp
(((S) (NP VP))
 ((VP) (V))
 ((VP) (V NP))
 ((V) died)
 ((V) employed)
 ((NP) nurses)
 ((NP) patients)
 ((NP) Medicenter)
 ((NP) "Dr Chan"))
```

### S 表達式的源碼示例

[Common Lisp范例](../Page/Common_Lisp.md "wikilink")：

``` lisp
(defun factorial (x)
    (if (zerop x) 1
        (* x (factorial (- x 1)))))
```

[Scheme范例](../Page/Scheme.md "wikilink")：

``` scheme
(define (factorial x)
    (if (zero? x) 1
        (* x (factorial (- x 1)))))
```

## 解析

S-表達式經常與 XML 進行比較，一個關鍵的區別是 S-表達式在語法上要簡單得多，因此更容易解析。例如，可以在幾十行 Python
代碼中實現一個簡單的 S-表達式解析器。

``` python
def parse_sexp(string):
    """
    >>> parse_sexp("(+ 5 (+ 3 5))")
    [['+',_'5',_['+',_'3',_'5'|'+', '5', ['+', '3', '5']]]

    """
    sexp = [[]]
    word = ''
    in_str = False
    for char in string:
        if char == '(' and not in_str:
            sexp.append([])
        elif char == ')' and not in_str:
            if word:
                sexp[-1].append(word)
                word = ''
            temp = sexp.pop()
            sexp[-1].append(temp)
        elif char in (' ', '\n', '\t') and not in_str:
            if word:
                sexp[-1].append(word)
                word = ''
        elif char == '\"':
            in_str = not in_str
        else:
            word += char
    return sexp[0]
```

## 標準化

1997年5月，[罗纳德·李维斯特](../Page/罗纳德·李维斯特.md "wikilink") 提交了一份
，拟作为[RFC出版](../Page/RFC.md "wikilink")。该草案定义了基于Lisp
S-表达式的语法，但旨在用于一般目的的数据存储及交换（类似[XML](../Page/XML.md "wikilink")）而非仅限于编程。尽管未被批准为RFC，但此草案已被其他RFC（如RFC
2693）和数种出版物\[[http://scholar.google.com/scholar?hl=en\&lr=\&safe=off\&q=rivest+sexp\&btnG=Search\]引用。最原始的用途则是在](http://scholar.google.com/scholar?hl=en&lr=&safe=off&q=rivest+sexp&btnG=Search%5D引用。最原始的用途则是在)中。

Rivest的格式定义了
S-表达式为一个八位元组-串（一系列[字节](../Page/字节.md "wikilink")）或其他S-表达式的有限列表。此定义描述了三种表达这种结构的互换格式。一种为“advanced
transport”——以格式而言具有很大弹性，且语法上近似于Lisp-风格表达式，但并不等同。例如，advanced
transport允许八位元组-串逐字表示（串的长度后跟随一分号及整个原始的串），引号形式允许转义字符，[十六进制](../Page/十六进制.md "wikilink")，[Base64](../Page/Base64.md "wikilink")，或者在满足一定条件时直接作为“token”。（Rivest的token与Lisp
token不同之处在于前者仅仅为了方便与审美，像其他字符串一样对待，而后者有特别的语法意义。）为了更为紧密，更便于语法分析，独立于任何抽象的
S-表达式，另一种交换格式“canonical presentation”仅允许逐字表示的字符串，格式上禁止字符串以外的空白。

## 相关条目

  - [M-表达式](https://zh.wikipedia.org/wiki/M-表达式 "wikilink")

  - [CAR and
    CDR](https://zh.wikipedia.org/wiki/:en:CAR_and_CDR "wikilink")

  - [列表構造函數](../Page/列表構造函數.md "wikilink")

  -
## 外部链接

[自由软件](../Page/自由软件.md "wikilink")：

  - [sfsexp](http://sexpr.sourceforge.net/) 小且快速的“s表达式”库（C/C++）
  - [minilisp](http://leon.bottou.org/projects/minilisp), by Léon
    Bottou.
  - [libcurie](http://becquerel.org/curie)一个小的[libc替换](https://zh.wikipedia.org/wiki/libc "wikilink"),依赖“s表达式”。

[Category:LISP程式語言](https://zh.wikipedia.org/wiki/Category:LISP程式語言 "wikilink")
[Category:数据序列化格式](https://zh.wikipedia.org/wiki/Category:数据序列化格式 "wikilink")