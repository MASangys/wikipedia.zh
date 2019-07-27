在一些[程序语言中](https://zh.wikipedia.org/wiki/程序语言 "wikilink")，<b style="font-family:consolas,monospace">eval</b>
是一个把字符串当作表达式执行而返回一个结果的函数；在另一些之中，它执行多行的代码就好像它们被包括在其中，而不是包括 `eval`
的这一行。`eval` 的输入不一定是字符串；在支持句法抽象的语言（如
[Lisp](https://zh.wikipedia.org/wiki/Lisp "wikilink")）中，`eval`
的输入将会由抽象句法形式组成。

## 安全风险

当使用 `eval` 而数据来自不可信任的来源时，**一定要**特别的注意。比如说，假设 `get_data()` 函数从 Internet
获取数据，这个 [Python](../Page/Python.md "wikilink") 代码就是不安全的:

``` python
session['authenticated'] = False
data = get_data()
foo = eval(data)
```

一个攻击者可以让字符串 `"session.update(authenticated=True)"` 作为数据提供给这个程序，它将会更新
`session` 字典以设定一个通过身份验证的键为 True。为了补救这一点，所有将会被 `eval`
使用的数据必须被转义，或者必须运行于无法访问可能有害的函数的环境下。

## 使用

对 `eval` 的调用有时被没经验的程序员在所有种类的事物上使用。在绝大多数情况下，有更加灵活而不会造成解析代码时速度损失的可替代的方法。

比如说，`eval` 有时被用于一个简单的设施上，就像如下 [PHP](../Page/PHP.md "wikilink") 代码所示:

``` php
$name = 'John Doe';
$greeting = 'Hello';
$template = '"$greeting,  $name! How can I help you today?"';
print eval("return $template;");
```

尽管这确实有用，它可能导致一些安全问题
(见[安全风险](https://zh.wikipedia.org/wiki/#安全风险 "wikilink"))，而且比其它的解决方案慢很多。一个更快和更安全的解决方案可以是改变最后一行为
`print $template;` 和移除前一行的单引号，或者使用 `printf`。

`eval`
有时也被用于需要对数学表达式求值的应用中，如[电子试算表](https://zh.wikipedia.org/wiki/电子试算表 "wikilink")。这比写一个表达式解析器简单多了，但是发现或者写出一个表达式解析器通常是一个更好的选择。除了可修复的安全风险，使用这种语言的求值特性通常很有可能更慢，也没有那么高的可定制性。

也许 `eval` 的最佳使用是在  一个新的语言的过程中 (就像
[Lisp](https://zh.wikipedia.org/wiki/Lisp "wikilink")
那样)，以及作为语言的允许用户在受控制的环境下运行他们自己的程序的指导程序。

出于表达式求值的目的，eval 相比表达式解析器的主要优势在于，在 `eval`
受支持的绝大多数编程环境下，这个表达式可能是任意的复杂，而且可能包括对使用者所写的不可能被解析器的创造者所预先知道的函数的调用。这个能力允许你用一个你可以按需要增强的函数库有效的增加
eval() 引擎，而不必持续的维持一个表达式解析器。然而，如果你不需要这么终极的灵活性，表达式解析器远远更加有效和轻量。

## 实施

在[直译语言中](https://zh.wikipedia.org/wiki/直译语言 "wikilink")，`eval`
几乎总是被和正常的代码使用一样的解析器实现。在[编译语言中](https://zh.wikipedia.org/wiki/编译语言 "wikilink")，用于编译程序的编译器可能被嵌入在使用
`eval` 的程序中;
分开来的解释器有时也被使用，尽管这可能会导致[重复代码](https://zh.wikipedia.org/wiki/重复代码 "wikilink")。

## 程序语言

### JavaScript

在 [JavaScript](../Page/JavaScript.md "wikilink") 中，`eval`
是某种介于表达式求值器和语句执行器的混合体。它返回最后一个被求值的表达式的值 (在
JavaScript 中，所有语句都是表达式)，也允许最后一个分号省略。

如下示例是一个表达式求值器:

``` javascript
foo = 2;
alert(eval('foo + 2'));
```

如下示例则是一个语句执行器。

``` javascript
foo = 2;
eval('foo = foo + 2;alert(foo);');
```

JavaScript 的 `eval` 的一个应用是解析 [JSON](../Page/JSON.md "wikilink") 文本，也许是作为
[Ajax](https://zh.wikipedia.org/wiki/Ajax "wikilink")
框架中的一部分。然而，现代的浏览器提供 `JSON.parse`
作为这个任务的一个更加安全的替代品。

### ActionScript

在 [ActionScript](../Page/ActionScript.md "wikilink") (Flash 的编程语言)
中，`eval` 不能用于计算任意的表达式。根据 Flash 8
文档，它的使用仅限于代表“变量名，属性，对象或者要检索的影片剪辑。这个参数可以是一个字符串或者对对象实例的一个直接引用”的表达式。\[1\]

ActionScript 3 不支持 eval。

ActionScript 3 Eval Library\[2\] 和 D.eval API\[3\] 是进行中的用以在 ActionScript
3 中创建 `eval` 的等价物的开发项目。

### Lisp

[Lisp](https://zh.wikipedia.org/wiki/Lisp "wikilink") 是首先使用 `eval`
函数的语言。事实上，对 `eval` 函数的定义导致了该语言解释器的最初的实施。\[4\]在 `eval`
函数被定义之前，Lisp
函数只是手动被编译成[汇编语言](../Page/汇编语言.md "wikilink")语句。然而，一旦
`eval` 函数被手动编译，它随后就被用于组成第一个 Lisp
解释器的基础的[Read–eval–print循环的一部分](https://zh.wikipedia.org/wiki/Read–eval–print循环 "wikilink")。

Lisp `eval` 函数的后来版本也被作为编译器实施。

Lisp 中的 `eval` 函数期望一个形式作为一个参数被求值和执行。给定形式的返回值将会是对 `eval` 的调用的返回值。

这是一个示例 Lisp 代码:

``` lisp
; A form which calls the + function with 1,2 and 3 as arguments.
; It returns 6.
(+ 1 2 3)
; In lisp any form is meant to be evaluated, therefore
; the call to + was performed.
; We can prevent Lisp from performing evaluation
; of a form by prefixing it with "'", for example:
(setq form1 '(+ 1 2 3))
; Now form1 contains a form that can be used by eval, for
; example:
(eval form1)
; eval evaluated (+ 1 2 3) and returned 6.
```

Lisp 众所周知的非常灵活，`eval` 函数也是。例如，为了对字符串的内容求值，这个字符串首先必须使用 `read-from-string`
函数转化为 Lisp 格式，随后这个结果的格式将会被传给 `eval`:

``` lisp
(eval (read-from-string "(format t \"Hello World!!!~%\")"))
```

主要造成混淆的一点是这个问题，即在哪个上下文中这个形式中的符号会被求值。在上述示例中，`form1` 包含符号
+。对该符号的求值必然会产生一个用于加法的函数以使得该示例像预期那样工作。因而
Lisp 的某些方言允许为 `eval` 传入一个额外的参数以指定求值的上下文 (类似于 Python 的 `eval` 函数的可选参数 -
如下所示)。一个用 Lisp 的 [Scheme](../Page/Scheme.md "wikilink") 方言
(R<sup>5</sup>RS 和以后版本) 写出的示例:

``` scheme
;; Define some simple form as in the above example.
(define form2 '(+ 5 2))
;Value: form2

;; Evaluate the form within the initial context.
;; A context for evaluation is called an "environment" in Scheme slang.
(eval form2 user-initial-environment)
;Value: 7

;; Confuse the initial environment, so that + will be
;; a name for the subtraction function.
(environment-define user-initial-environment '+ -)
;Value: +

;; Evaluate the form again.
;; Notice that the returned value has changed.
(eval form2 user-initial-environment)
;Value: 3
```

### Perl

在 [Perl](../Page/Perl.md "wikilink") 中，`eval`
函数是某种介于表达式求值器和语句执行器的混合体。它返回最后一个被求值的表达式的结果
(在 Perl 编程中，所有的语句都是表达式)，且允许最后一个分号省略。

一个表达式求值器的示例:

``` perl
$foo = 2;
print eval('$foo + 2'), "\n";
```

一个语句执行器的示例:

``` perl
$foo = 2;
eval('$foo += 2; print "$foo\n";');
```

(注意字符串的引号。注意单引号在上述示例中被用来引用字符串。如果使用的是双引号，它将会在把该字符串传入 `eval`
之前把变量的值[插入字符串](../Page/变量_\(程序设计\).md "wikilink")，破坏了
`eval` 原本的目的，而且在赋值的情况下，有可能引起句法错误。)

[Perl](../Page/Perl.md "wikilink") 也有 `eval`
*块*，作为它的[异常处理](../Page/异常处理.md "wikilink")机制。这与上述对
`eval` 传入字符串的用法不同，在于 `eval` 内的代码在编译时而不是运行时解释，所以它不是本文中使用的 `eval` 的含义。

## PHP

在 [PHP](../Page/PHP.md "wikilink") 中，`eval`
执行在一个字符串中的代码几乎就像它被放进了文件中，而不是对
`eval()` 的调用一样。唯一的区别是错误被报道为来自对 `eval()` 的一个调用，而返回语句则成为函数的结果。

## 参考来源

[Category:控制流程](https://zh.wikipedia.org/wiki/Category:控制流程 "wikilink")

1.
2.  [AS3 Eval Library](http://eval.hurlant.com/)
3.  [D.eval API](http://www.riaone.com/products/deval/)
4.  [John McCarthy, "History of Lisp - The Implementation of
    Lisp"](http://www-formal.stanford.edu/jmc/history/lisp/node3.html)