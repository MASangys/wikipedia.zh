**Prolog**（的缩写）是一种[逻辑编程语言](../Page/逻辑编程.md "wikilink")。它建立在[逻辑学的理论基础之上](../Page/逻辑学.md "wikilink")，
最初被运用于[自然语言等研究领域](../Page/自然语言.md "wikilink")。现在它已广泛的应用在[人工智能的研究中](../Page/人工智能.md "wikilink")，它可以用来建造[专家系统](../Page/专家系统.md "wikilink")、自然语言理解、智能知识库等。

## 历史

Prolog语言最早由Aix-Marseille大学的Alain Colmerauer与Phillipe
Roussel等人于60年代末研究开发。1972年被公认为是Prolog语言正式诞生的年份，自1972年以后，分支出多种Prolog的方言。最主要的两种方言为Edinburgh和Aix-Marseille。最早的Prolog解释器由Roussel建造，而第一个Prolog编译器则是David
Warren编写的。

Prolog一直在北美和欧洲被广泛使用。日本政府曾经为了建造智能计算机而用Prolog来开发ICOT第五代计算机系统。在早期的机器智能研究领域，Prolog曾经是主要的开发工具。

80年代Borland开发的Turbo Prolog，进一步普及了Prolog的使用。1995年确定了ISO Prolog标准。

## 特點

有別於一般的[函数式语言](../Page/函数式语言.md "wikilink")，prolog的程式是基於謂詞邏輯的理論。最基本的寫法是定立[物件與物件之間的關係](../Page/物件_\(電腦科學\).md "wikilink")，之後可以用詢問目標的方式來查詢各種物件之間的關係。系統會自動進行匹配及[回溯](../Page/回溯法.md "wikilink")，找出所詢問的答案。

Prolog代码中以大写字母开头的元素是**变量**，[字符串](../Page/字符串.md "wikilink")、数字或以小写字母开头的元素是**常量**。下划线（_）被称为匿名变量。

## 语法示例

表示事实：

`human(kate).`
`human(bill).`
`likes(kate,bill).`

表示kate和bill是人（human），kate喜欢bill，而表示规则：

`friend(X,Y):-likes(X,Y),likes(Y,X).`

表示对于两个对象XY，如果X喜欢Y，且Y喜欢X，那么他们是朋友。

## Prolog範例

範例如下：

### Quicksort

[快速排序範例](../Page/快速排序.md "wikilink")（對list作排序）：

``` prolog
/* quicksort2.pl    原始來源：http://en.wikipedia.org/wiki/Prolog   */
/* quicksort()中的第二個引數帶有排序好的結果　*/
/* 僅為示範，若為gprolog使用者則用內建sort等較佳 */
/* 在gprolog下之編譯例：gplc --min-size quicksort2.pl　*/
/*   執行 quicksort2 後會出現排序結果 [2,9,18,18,25,33,66,77] */

q:- L=[33,18,2,77,66,18,9,25], last(P,_), (quicksort(L,P,_), write(P), nl).    /* 加入last/2會在印P時沒複合項 */

partition([], _, [], []).           /* 此行表空集亦視為分割（分割成空集與空集）*/
partition([X|Xs], Pivot, Smalls, Bigs) :-   /* 原list分成Smalls與Bigs; 此规则保證Smalls集<Pivot且Bigs集>=Pivot */
    (   X @< Pivot ->
        Smalls = [X|Rest],
        partition(Xs, Pivot, Rest, Bigs)
    ;   Bigs = [X|Rest],
        partition(Xs, Pivot, Smalls, Rest)
    ).

quicksort([])     --> [].           /* 表empty list視為排序好的list */
quicksort([X|Xs]) -->           /* 此行相當於quicksort([X|Xs],Start,End) :-  此规则讓Start為sorted list */
    { partition(Xs, X, Smaller, Bigger) },  /* 由上行最左端元素為 Pivot */
    quicksort(Smaller), [X], quicksort(Bigger). /* 此行相當於    quicksort(Smaller,Start,A),
                                    A=[X|B],  注意首字母大寫者皆視為變數(list)
                                quicksort(Bigger,B,End).  */
:- initialization(q).       /* 啟動q處goals */
```

### sort

下面簡潔的排序範例可以體會到為什麼AI領域喜用Prolog：

``` prolog
/* sortcsj.pl    原始參考：Computer Science  J. Glenn Brookshear   */
/* sortcsj()中的第二個引數帶有排序好的結果　*/
/* 僅為示範，若為gprolog使用者則用內建sort等較佳 */
/* 在gprolog下之編譯例：gplc --min-size sortcsj.pl　*/
/*   執行 sortcsj 後會出現排序結果 [2,9,18,18,25,33,66,77] */

q:- L=[33,18,2,77,18,66,9,25], (sortcsj(L,P), write(P), nl).

sortcsj(L,S) :-  permutation(L,S), ordered(S).  /* L為原list, S為排序好的list, 此為permutation關係(built-in) */

ordered([]).            /* 表empty list視為排序好的list */
ordered([_|[]]).            /* 只有一元素之list視為排序好的list */
ordered([A|[B|T]]) :- A =< B, ordered([B|T]).   /* 此规则約束所謂的排序好是指前項元素小於或等於後一項元素 */

:- initialization(q).       /* 啟動q處goals */
```

### Russell's paradox

示範[羅素悖論在Prolog下會導致Stack](../Page/羅素悖論.md "wikilink") Overflow：

``` prolog
/* tstpx.pl */
/* 羅素佯謬(羅素悖論)（皇帝新腦 羅杰.彭羅斯 p.120）會導致不停機(使得gprolog產生 stack overflow) */
/* 在gprolog下之編譯例：gplc --min-size tstpx.pl　*/

q:- px(_).              /* 找尋任何可使 px() 规则成立的方式 */

px(1) :- \+ px(1).      /* 規定此规则不成立。 i.e. 此规则為假時此规则才為真 （佯謬）*/

:- initialization(q).           /* 啟動q處goal */
```

## 参考文献

## 外部連結

  - [Prolog 人工智能语言中文论坛](http://prolog.longluntan.net)

<!-- end list -->

  - 实现

<!-- end list -->

  - [SWI-Prolog](http://www.swi-prolog.org/)
  - [Yap Prolog](http://www.dcc.fc.up.pt/~vsc/yap/)

## 参见

  - [Visual Prolog](../Page/Visual_Prolog.md "wikilink")
  - [LISP](../Page/LISP.md "wikilink")
  - [non-Monotonic Logic](../Page/non-Monotonic_Logic.md "wikilink")

{{-}}

[Category:邏輯編程語言](https://zh.wikipedia.org/wiki/Category:邏輯編程語言 "wikilink")
[Category:Prolog](https://zh.wikipedia.org/wiki/Category:Prolog "wikilink")
[Category:知识表示](https://zh.wikipedia.org/wiki/Category:知识表示 "wikilink")
[Category:专家系统](https://zh.wikipedia.org/wiki/Category:专家系统 "wikilink")
[Category:人工智能](https://zh.wikipedia.org/wiki/Category:人工智能 "wikilink")