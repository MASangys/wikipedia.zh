**Cadence SKILL**是一种由[Cadence](../Page/Cadence.md "wikilink")公司设计的[编程语言](../Page/编程语言.md "wikilink")。它是[LISP](../Page/LISP.md "wikilink")语言的一种分支。\[1\]\[2\]

SKILL最初是根据Franz Lisp发展而来，由[加州大學柏克萊分校的Richard](https://zh.wikipedia.org/wiki/加州大學柏克萊分校 "wikilink") J. Fateman创造。\[3\]

## 语法

### 注释

注释可以像传统的Lisp分号分隔，

``` lisp
(car mylist) ; Comment from semicolon to end of the line
```

或者像C-样式注释

``` C
/* Comment */   car(mylist)   /* Another comment */
```

## 程序定义

``` lisp
;; C style
procedure (factorial(n)
    if ( n <= 1 then
        1
    else
        n * factorial(n-1)
    )
)
```

``` lisp
;; LISP style
(procedure (factorial n)
    (if (leqp n 1)
        then 1
        else (times n (factorial (difference n 1)))))
```

``` lisp
;; Hybrid style
(procedure (factorial n)
    (if n <= 1
        then 1
        else n * (factorial n-1)))
```

## 参考资料

[Category:脚本语言](https://zh.wikipedia.org/wiki/Category:脚本语言 "wikilink") [Category:LISP程式語言家族](https://zh.wikipedia.org/wiki/Category:LISP程式語言家族 "wikilink")

1.
2.
3.