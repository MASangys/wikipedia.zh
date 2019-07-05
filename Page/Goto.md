**GOTO**是一条可以在许多计算机[编程语言中找到的](../Page/编程语言.md "wikilink")[语句](https://zh.wikipedia.org/wiki/语句 "wikilink")。它是英文单词*[go](https://zh.wikipedia.org/wiki/wiktionary:go "wikilink")*和*[to](https://zh.wikipedia.org/wiki/wiktionary:to "wikilink")*的组合。当执行这条语句的时候，它将[控制流程无条件地转到另一条语句](../Page/控制流程.md "wikilink")（也叫「[跳转](https://zh.wikipedia.org/wiki/跳转 "wikilink")」）。跳转语句需要指明[標記](../Page/標記_\(程式語言\).md "wikilink")，在不同语言中，標記可以是[标识符或](https://zh.wikipedia.org/wiki/标识符 "wikilink")[行号](https://zh.wikipedia.org/wiki/行号 "wikilink")。在[机器码级别](https://zh.wikipedia.org/wiki/机器码 "wikilink")，`goto`是一种[分支的形式](https://zh.wikipedia.org/wiki/分支_\(計算機科學\) "wikilink")。

在一些语言中，可以不用显示地使用`goto`[关键字而实现同样的功能](https://zh.wikipedia.org/wiki/关键字 "wikilink")，例如`break`或`continue`关键字可以跟随一个标识符。[SNOBOL语言支持一种语句的后缀形式](https://zh.wikipedia.org/wiki/SNOBOL "wikilink")，可以在本条语句执行完毕后实现无条件跳转。

GOTO语句被大部分[高级语言支持](https://zh.wikipedia.org/wiki/高级语言 "wikilink")，只有很少的高级语言不支持GOTO语句。例如，`goto`是一个[Java语言的](../Page/Java.md "wikilink")[保留字](../Page/保留字.md "wikilink")，但是不允许使用。

## 用法

`goto`语句通常和[IF语句一起使用来实现一个条件跳转](https://zh.wikipedia.org/wiki/条件表达式 "wikilink")。

`   `**`IF`**` `*`条件`*` `**`THEN`**` `**`goto`**` `*`标签`*`;`

编程语言一般对`goto`语句跳转的位置加以严格限制。例如，在[C中](https://zh.wikipedia.org/wiki/C语言 "wikilink")，不允许跳转至另一个函数中的標記位置。\[1\][Setjmp函数提供了对非本地goto的支持](https://zh.wikipedia.org/wiki/setjmp.h "wikilink")。

### 例子

以下C++例子中，我們要在2D[陣列](https://zh.wikipedia.org/wiki/陣列 "wikilink")`ar`中找尋有沒有100這個數。如果找到，要立即停止搜尋，節省時間。

``` cpp
for (int i=0; i<n; i++)
    for (int j=0; j<m; j++)
        if (ar[i][j]==100)goto found;
...

found:
...
```

如果使用`break`只能跳出目前所在的一個`for`循環，因此需要使用`goto`跳出所有循環。

## 对于goto使用的批评

GOTO语句一直是批评和争论的目标，主要的负面影响是使用GOTO语句使程序的可读性变差，甚至成为不可维护的「[面条代码](https://zh.wikipedia.org/wiki/面条代码 "wikilink")」。随着[结构化编程在二十世纪六十年代到七十年代变得越来越流行](../Page/结构化编程.md "wikilink")，许多[计算机科学家得出结论](https://zh.wikipedia.org/wiki/计算机科学家 "wikilink")，即程序应当总是使用被称为「结构化」[控制流程的命令](../Page/控制流程.md "wikilink")，如[迴圈以及if](https://zh.wikipedia.org/wiki/程式迴圈 "wikilink")-then-else语句来替代GOTO。甚至在今天，许多[程序风格编码标准禁止使用GOTO语句](https://zh.wikipedia.org/wiki/程序风格 "wikilink")。为GOTO语句辩护的人认为，加以限制地使用GOTO语句不会导致低质量的代码，并且声称在许多编程语言中，一些任务如果不使用一条或多条GOTO语句是无法被直接实现的。如[有限状态自动机的实现](https://zh.wikipedia.org/wiki/有限状态自动机 "wikilink")、跳出嵌套[循环以及](https://zh.wikipedia.org/wiki/程式迴圈 "wikilink")[异常处理](../Page/异常处理.md "wikilink")。

大概最著名的对于GOTO的批评是[艾兹格·迪杰斯特拉](https://zh.wikipedia.org/wiki/艾兹格·迪杰斯特拉 "wikilink")（Edsger
Wybe
Dijkstra）在1968年的一篇名稱為《GOTO陳述有害論》的論文。\[2\]迪杰斯特拉认为不加限制地使用GOTO语句应当从高级语言中废止，因为它使分析和验证程序正确性（特别是涉及循环）的任务变得复杂。另外一种观点出现在[高德纳的](../Page/高德纳.md "wikilink")*Structured
Programming with go to Statements*
\[3\]中，文章分析了许多常见编程任务，然后发现其中的一些使用GOTO将得到最理想的结构。

这些批评在一些编程语言的设计上起到了效果。虽然[Ada语言的设计者在二十世纪七十年代晚期意识到了对于GOTO的批评](../Page/Ada.md "wikilink")，这条语句仍旧被包含进去，主要是用来支持自动生成那些`goto`语句必不可少的代码。\[4\]但是，作为goto语句目的地的标签必须使用双尖括号括起来（如：`<`<Start_Again>`>`），而这个语法在其他语言中都不被使用。这使得检查程序中goto目的地的存在变得容易。goto语句本身使用简单的形式**`goto`**`
Start_Again; `.

## 变体

有许多不同的语言构成可以看作是*goto*的变形：

### 限制的GOTO

许多语言，如[C语言和](https://zh.wikipedia.org/wiki/C语言 "wikilink")[Java](../Page/Java.md "wikilink")，提供了相关的控制流语句，如`break`和`continue`，它们都是有效地被限制的goto语句。它们的作用是无条件跳转，但是只能够跳到[循环块结束的位置](https://zh.wikipedia.org/wiki/程式迴圈 "wikilink")——继续进入下一循环（continue）或者结束循环（break）。对于break语句，部分语言允许附加特定参数来控制结束循环的范围，例如[PHP允许标记数字参数代表跳出嵌套语句的层数](../Page/PHP.md "wikilink")，\[5\]Java允许在循环语句前添加<标签名>`:`，在循环内以标签名作为参数代表跳转到该循环语句的结束位置。

对于Java而言，虽然`goto`是作为保留字，但没有赋予其功能，从而限制goto的使用。

### switch/case结构

[C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[C++和](../Page/C++.md "wikilink")[Java中的](../Page/Java.md "wikilink")[switch语句高效地实现了一个多路](https://zh.wikipedia.org/wiki/switch语句 "wikilink")*goto*，跳转目标由表达式的值来选择。

## 参见

  - [非结构化编程](https://zh.wikipedia.org/wiki/非结构化编程 "wikilink")
  - [控制流](https://zh.wikipedia.org/wiki/控制流 "wikilink")
  - [GOSUB](https://zh.wikipedia.org/wiki/GOSUB "wikilink")
  - [三次法則](https://zh.wikipedia.org/wiki/三次法则_\(程序設計\) "wikilink")
  - [组合子逻辑](../Page/组合子逻辑.md "wikilink")
  - [柯里化](../Page/柯里化.md "wikilink")
  - [λ演算](https://zh.wikipedia.org/wiki/λ演算 "wikilink")
  - [极小化求值](https://zh.wikipedia.org/wiki/极小化求值 "wikilink")
  - [求值策略](../Page/求值策略.md "wikilink")

## 参考

## 外部链接

  - [A Structured Discipline of
    Programming](https://web.archive.org/web/20090822145609/http://www.geek-central.gen.nz/peeves/programming_discipline.html)
  - [Using gotos](http://www.stevemcconnell.com/ccgoto.htm). Summarized
    arguments agains and pro usage of goto

[Category:BASIC程序设计语言家族](https://zh.wikipedia.org/wiki/Category:BASIC程序设计语言家族 "wikilink")
[Category:控制流程](https://zh.wikipedia.org/wiki/Category:控制流程 "wikilink")

1.  [C Standard section 6.8.6.1 The goto
    statement](http://c0x.coding-guidelines.com/6.8.6.1.html)
2.
3.
4.
5.