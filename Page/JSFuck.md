[JSFuck_Logo.svg](https://zh.wikipedia.org/wiki/File:JSFuck_Logo.svg "fig:JSFuck_Logo.svg") [JSFuck_Example.svg](https://zh.wikipedia.org/wiki/File:JSFuck_Example.svg "fig:JSFuck_Example.svg")前的内容是：`alert(1)`\]\] **JSFuck**（或为了[避讳](../Page/避讳.md "wikilink")[脏话](https://zh.wikipedia.org/wiki/脏话 "wikilink")[Fuck](../Page/Fuck.md "wikilink")写作 **JSF\*ck** ）是一种[深奥的](../Page/深奥的编程语言.md "wikilink") [JavaScript](../Page/JavaScript.md "wikilink") [编程风格](https://zh.wikipedia.org/wiki/编程 "wikilink")。以这种风格写成的[代码](../Page/代码.md "wikilink")中仅使用 `[`、`]`、`(`、`)`、`!` 和 `+` 六种[字符](../Page/字符.md "wikilink")。此编程风格的[名字](https://zh.wikipedia.org/wiki/名字 "wikilink")[衍生自仅使用较少符号写代码的](https://zh.wikipedia.org/wiki/衍生 "wikilink")[Brainfuck](../Page/Brainfuck.md "wikilink")语言。与其他深奥的编程语言不同，以JSFuck风格写出的代码不需要另外的[编译器或](https://zh.wikipedia.org/wiki/编译器 "wikilink")[解释器来执行](https://zh.wikipedia.org/wiki/解释器 "wikilink")，无论[浏览器或](https://zh.wikipedia.org/wiki/浏览器 "wikilink")[JavaScript引擎](../Page/JavaScript引擎.md "wikilink")中的原生 JavaScript 解释器皆可直接运行。鉴于 JavaScript 是[弱类型语言](../Page/強弱型別.md "wikilink")，编写者可以用数量有限的字符重写 JavaScript 中的所有功能，且可以用这种方式执行任何类型的表达式。\[1\]

## 缘起

长谷川阳介（Yosuke Hasegawa）于2009年7月创建了一个名为“jjencode”的网络应用程序，可将一切的JavaScript代码混淆为`[]()!+,\"$.:;_{}~=`这十八个字符的排列组合\[2\]\[3\]。

2010年1月，在一个Web应用程序安全站点上的“混淆”版块内，举行了一场非正式的竞赛。这场竞赛的目标是让JavaScript编程将所需的最少字符降至八个以下（`[]()!+,/`），而该帖文的回复者们设法消除了对`,`和`/`字符的需求\[4\]。截至2010年3月，网上有一个名为“JS-NoAlnum”的在线编码器，它只使用六个字符来混淆JavaScript\[5\]。

2010年底，长谷川洋介制作了一个名为JSF\*ck的新编码器，它只使用了六个字符来混淆JavaScript\[6\]\[7\]。2012年，马丁·克莱普在[GitHub](../Page/GitHub.md "wikilink")上创建了一个编码器项目“jsfuck”\[8\]，并创建了JSFuck.com网站，放置了一个使用该编码器实现的Web应用程序\[9\]。

## 用途与安全性

JSFuck可用于[代码混淆](../Page/代码混淆.md "wikilink")，一个优化版JSFuck编码器已经被用于混淆[jQuery代码](https://zh.wikipedia.org/wiki/jQuery "wikilink")，使这一流行的[JavaScript函数库可以仅使用六个字符来实现原本的所有功能](https://zh.wikipedia.org/wiki/JavaScript函数库 "wikilink")\[10\]。

此外，JSFuck可用于绕过[恶意代码检测](../Page/恶意软件.md "wikilink")，且可以被用于[跨站脚本攻击](https://zh.wikipedia.org/wiki/跨站脚本攻击 "wikilink")\[11\]。因为缺乏原生JavaScript应有的特征，类似JSFuck的JavaScript混淆技术可帮助恶意代码绕过入侵防御系统或内容过滤器\[12\]。现实中，因为JSFuck中缺少字母数字字符，且eBay中的内容过滤器曾存在缺陷，使得卖家曾经可以在他们的eBay拍卖页面中嵌入任意JSFuck脚本\[13\]。

## 编码方式

JSFuck代码非常冗长。在JavaScript中，`alert("`[`Hello``   ``World`](../Page/Hello_World.md "wikilink")`");`这一代码将导致弹窗并显示“Hello World”字符串，这一代码的长度为21个字符。在使用JSFuck.com提供的JSFuck混淆程序后，转换出对应的相同效果代码长度为24691个字符。本节概述此转换方式的工作原理。

### 数字

数字0使用`+[]`来构造，其中`[]`代表空[数组](../Page/数组.md "wikilink")，而`+`是一元加运算符。 数字1则以`+!![]`或`+!+[]`来构造，其中`!![]`或`!+[]`代表[布尔值为真](https://zh.wikipedia.org/wiki/布尔值 "wikilink")（`true`），而前置的一元加运算符将真值转换为数字1。 数字2至9则以将“真”加和多次后转换为数值的类似方式来构造。例如，由`true + true`这一表达式在JavaScript中输出结果为2，又`true`可写作`!![]`或`!+[]`，故2可转写作`!![]+!![]`或`!+[]+!+[]`。 多位的整数则可将各数位分别表示，并使用串接运算符`+`进行字符串[串接](https://zh.wikipedia.org/wiki/串接 "wikilink")。例如字符串`"10"`可表达为两个数组串接的形式（`[1] + [0]`），将各数位替换为对应的JSFuck表达式后，即可将这一字符串表达为`[+!+[]]+[+[]]`；若要将字符串转化为数字，可将前述的表达式括在括号或方括号中，并加上一个`+`运算符，因此，数字值10可在JSFuck中表达为`+([+!+[]]+[+[]])`。\[14\]

### 字母

通过使用索引器（即方括号中的数字）的方式，可以访问简单[布尔值或数值对应字符串表示形式](https://zh.wikipedia.org/wiki/布尔值 "wikilink")（如`false`、`true`、`NaN`、`undefined`）中的单个字符，而JSFuck可以借此转换一部分字母。此外，转换另一部分字母需要其他技巧，例如将字符串`1e1000`转换为数字，这样就会产生无穷大值（`Infinity`），而`Infinity`中的字符可以用于获取字母`y`。\[15\]

| 值           | 经JSFuck转化后                                                     |
| ----------- | -------------------------------------------------------------- |
| `false`     | `![]`                                                          |
| `true`      | <code>                                                         |
| `NaN`       | `+[![]]`或`+[]`[](https://zh.wikipedia.org/wiki/ "wikilink")    |
| `undefined` | `[]`[](https://zh.wikipedia.org/wiki/ "wikilink")              |
| `Infinity`  | `+(+!+[]+(!+[]+[])[!+[]+!+[]+!+[]]+[+!+[]]+[+[]]+[+[]]+[+[]])` |

### 其他构造方法

在JavaScript中，`Function`函数这种[构造器](../Page/构造器.md "wikilink")可被用于触发执行包含在字符串中的JavaScript代码，正如像执行原生JavaScript代码那样。例如，语句`alert(1)`等价于`Function("alert(1)")()`。而`Function`构造器在JavaScript中是任何常用函数的`constructor`属性，此处所言的常见函数指的是像`[]["filter"]`（即Array.prototype.filter）之类的函数。于是，这个构造器便可以通过访问一个空数组的`filter`属性下的`constructor`属性来构造。例如，`alert(1)`可被等价转换为`[]["filter"]["constructor"]("alert(1)")()`，并使用JSFuck进一步转换。\[16\]

## 备注

  - <small>对于“编码方式”章节中的内容：</small>

## 参考来源

## 外部链接

  - [JSFuck - Write any JavaScript with 6 Characters: \[](http://www.jsfuck.com/)()\!+\] – 将原生JavaScript转换为JSFuck的Web应用程序
  - [Yosuke Hasegawa创作的JSF\*ck在线应用](http://utf-8.jp)
  - [JSfuck.com所用的转换脚本](https://github.com/aemkei/jsfuck/blob/master/jsfuck.js)

[Category:深奥的编程语言](https://zh.wikipedia.org/wiki/Category:深奥的编程语言 "wikilink") [Category:JavaScript](https://zh.wikipedia.org/wiki/Category:JavaScript "wikilink")

1.

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
16.