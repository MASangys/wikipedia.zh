> 本文内容由[Sass](https://zh.wikipedia.org/wiki/Sass)转换而来。


**Sass**（英文全称：**S**yntactically **A**wesome **S**tyle**s**heets）是一个最初由[Hampton Catlin设计并由](https://zh.wikipedia.org/wiki/Hampton_Catlin "wikilink")[Natalie Weizenbaum开发的层叠样式表语言](https://zh.wikipedia.org/wiki/Natalie_Weizenbaum "wikilink")。\[1\]\[2\]在开发最初版本之后，Weizenbaum和[Chris Eppstein继续通过SassScript来继续扩充Sass的功能](https://zh.wikipedia.org/wiki/Chris_Eppstein "wikilink")。SassScript是一个在Sass文件中使用的小型脚本语言。

Sass是一个将脚本解析成[CSS的](https://zh.wikipedia.org/wiki/CSS "wikilink")[脚本语言](../Page/脚本语言.md "wikilink")，即SassScript。Sass包括两套[语法](https://zh.wikipedia.org/wiki/语法#电脑语法 "wikilink")。最开始的语法叫做“缩进语法”，与[Haml类似](https://zh.wikipedia.org/wiki/Haml "wikilink")\[3\]，使用[缩进来区分代码块](https://zh.wikipedia.org/wiki/缩进 "wikilink")，并且用-{zh-cn:回车;zh-tw:換行;}-将不同规则分隔开。而较新的语法叫做“SCSS”，使用和CSS一样的块语法，即使用大括号将不同的规则分开，使用分号将具体的样式分开。通常情况下，这两套语法通过.sass和.scss两个[文件扩展名](../Page/文件扩展名.md "wikilink")区分开。

[CSS3包括一系列选择器和伪类选择器](https://zh.wikipedia.org/wiki/CSS#CSS_3 "wikilink")，Sass设计了一些语法，对选择器功能进行了扩展。虽然扩展功能不是CSS的语法，但是Sass解释器会把SassScript解释成合乎CSS语法的CSS文件。此外，Sass解释器也可以对.sass或.scss文件的修改进行监视，以及时更新css文件。\[4\]可以认为Sass在CSS基础上加入了许多[语法糖](../Page/语法糖.md "wikilink")。

Sass的官方解释器是[开源的并且用](https://zh.wikipedia.org/wiki/开源 "wikilink")[Ruby](../Page/Ruby.md "wikilink")语言写成，但是也有用[PHP](../Page/PHP.md "wikilink")、[C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[Java](../Page/Java.md "wikilink")等实现的版本（C语言版本叫做llibSass，Java语言版本叫做JSass）。\[5\]\[6\]\[7\]

Sass中缩进是语法的一部分。SCSS是[巢状元语言](https://zh.wikipedia.org/wiki/元语言#巢状元语言 "wikilink")，一段合法的CSS代码也是一段合法的SCSS代码。Sass支持与[Firefox](../Page/Firefox.md "wikilink")[插件](https://zh.wikipedia.org/wiki/add-on_\(Mozilla\) "wikilink")[Firebug](../Page/Firebug.md "wikilink")集成。\[8\]

SassScript提供以下功能：[变量](../Page/变量_\(程序设计\).md "wikilink")、嵌套、混入（Mixin）、选择器[继承](https://zh.wikipedia.org/wiki/继承_\(计算机科学\) "wikilink")。\[9\]

## 变量

Sass支持定义变量。变量以[美元符号](https://zh.wikipedia.org/wiki/美元符号 "wikilink")（`$`）作为开头。变量用冒号（`:`）[赋值](https://zh.wikipedia.org/wiki/赋值 "wikilink")。\[10\]

SassScript支持四种数据类型：\[11\]

  - 数值（可包括单位）
  - [字符串](../Page/字符串.md "wikilink")
  - 颜色
  - [布尔类型](https://zh.wikipedia.org/wiki/布爾_\(數據類型\) "wikilink")

变量可以用作函数的参数或返回值。\[12\]在解释过程中，解释器会把变量的值写入最终的CSS文件中。\[13\]

SCSS语法的变量示例：

``` scss
$blue: #3bbfce;
$margin: 16px;

.content-navigation {
  border-color: $blue;
  color: darken($blue, 10%);
}

.border {
  padding: $margin / 2;
  margin: $margin / 2;
  border-color: $blue;
}
```

Sass语法的变量示例：

``` sass
$blue: #3bbfce
$margin: 16px

.content-navigation
  border-color: $blue
  color: darken($blue, 10%)

.border
  padding: $margin/2
  margin:  $margin/2
  border-color: $blue
```

这两段代码会被解释成：

``` css
.content-navigation {
  border-color: #3bbfce;
  color: #2b9eab;
}

.border {
  padding: 8px;
  margin: 8px;
  border-color: #3bbfce;
}
```

## 嵌套

CSS虽然支持嵌套但是不支持代码块的嵌套，而SCSS支持。这样可更加清晰地表示元素之间的关系。\[14\]

``` sass
table.hl {
  margin: 2em 0;
  td.ln {
    text-align: right;
  }
}

li {
  font: {
    family: serif;
    weight: bold;
    size: 1.3em;
  }
}
```

会被解释成：

``` css
table.hl {
  margin: 2em 0;
}
table.hl td.ln {
  text-align: right;
}

li {
  font-family: serif;
  font-weight: bold;
  font-size: 1.3em;
}
```

在Sass文档中还可以看到有关命名空间、父级引用等的内容。\[15\]

## 混入（Mixin）

Mixin包含一段合法Sass代码，类似于C语言的宏定义。调用Mixin时，解释器会将Mixin扩展成它所包含的完整的Sass代码，因此可以有效地减少代码重复，从而写出更加干净的代码。CSS不支持Mixin，因此重复和类似的代码必须挨个书写。\[16\]

``` sass
@mixin table-base {
  th {
    text-align: center;
    font-weight: bold;
  }
  td, th {padding: 2px}
}

#data {
  @include table-base;
}
```

会被解释成：

``` css
#data th {
  text-align: center;
  font-weight: bold;
}
#data td, #data th {
  padding: 2px;
}
```

### 循环

Sass支持用@for、@each和@while语句进行迭代。

``` sass
$squareCount: 3;
@for $i from 1 through $squareCount {
  #square-#{$i} {
   background-color: red;
   width: 50px * $i;
   height: 120px / $i
  }
}
```

会被解释为：

``` css
#square-1 {
  background-color: red;
  width: 50px;
  height: 120px;
}

#square-2 {
  background-color: red;
  width: 100px;
  height: 60px;
}

#square-3 {
  background-color: red;
  width: 150px;
  height: 40px;
}
```

### 参数

Mixin支持参数。\[17\]

``` sass
@mixin left($dist) {
  float: left;
  margin-left: $dist;
}

#data {
  @include left(10px);
}
```

会被解释为：

``` css
#data {
  float: left;
  margin-left: 10px;
}
```

### 包含

``` sass
@mixin table-base {
  th {
    text-align: center;
    font-weight: bold;
  }
  td, th {padding: 2px}
}

@mixin left($dist) {
  float: left;
  margin-left: $dist;
}

#data {
  @include left(10px);
  @include table-base;
}
```

会被解释为：

``` css
#data {
  float: left;
  margin-left: 10px;
}
#data th {
  text-align: center;
  font-weight: bold;
}
#data td, #data th {
  padding: 2px;
}
```

## 继承

CSS3支持[DOM层次](https://zh.wikipedia.org/wiki/DOM "wikilink")，但是不支持样式的继承。Sass语言通过@extend关键词实现了继承功能。\[18\]

``` sass
.error {
  border: 1px #f00;
  background: #fdd;
}
.error.intrusion {
  font-size: 1.3em;
  font-weight: bold;
}

.badError {
  @extend .error;
  border-width: 3px;
}
```

会被解释为：

``` css
.error, .badError {
  border: 1px #f00;
  background: #fdd;
}

.error.intrusion,
.badError.intrusion {
  font-size: 1.3em;
  font-weight: bold;
}

.badError {
  border-width: 3px;
}
```

Sass支持[多重继承](../Page/多重继承.md "wikilink").\[19\]

## libSass

在2012年HTML5开发者大会上，Sass的创建者Hampton Catlin宣布libSass 1.0版。libSass是一个由Catlin、Araon Leung和[Moovweb开发团队开发的开放源代码的C](https://zh.wikipedia.org/wiki/Moovweb "wikilink")++实现。\[20\]\[21\] Current Sass maintainer, Chris Eppstein, has expressed intent to contribute as well.\[22\]

libSass的设计目标是：

  - 性能：开发者反映，C++的实现速度是Ruby实现的10倍。\[23\]
  - 更容易集成：因为是一个C++库，不必集成或实现Ruby解释器，因此在自行开发软件的时候事情会变得更容易。例如，libSass现在已经被应用到[Node.js](../Page/Node.js.md "wikilink")、[Go](../Page/Go.md "wikilink")和[Ruby](../Page/Ruby.md "wikilink")等环境。\[24\]
  - 兼容性：libSass的目标是与Ruby实现完全兼容。但是目标尚未完全实现。\[25\]

## IDE集成

| IDE                                                                        | 软件          | 网站                                                                                   |
| -------------------------------------------------------------------------- | ----------- | ------------------------------------------------------------------------------------ |
| [Microsoft Visual Studio](../Page/Microsoft_Visual_Studio.md "wikilink")   | Mindscape   | <http://www.mindscapehq.com/products/web-workbench>                                  |
| [Microsoft Visual Studio](../Page/Microsoft_Visual_Studio.md "wikilink")   | SassyStudio | <http://visualstudiogallery.msdn.microsoft.com/85fa99a6-e4c6-4a1c-9f00-e6a8129b6f4d> |
| [Microsoft WebMatrix](../Page/Microsoft_WebMatrix.md "wikilink")           |             | <https://www.microsoft.com/web/webmatrix/>                                           |
| [Eclipse](../Page/Eclipse.md "wikilink")                                   |             |                                                                                      |
| [JetBrains IntelliJ IDEA (Ultimate版)](../Page/IntelliJ_IDEA.md "wikilink") |             | <https://www.jetbrains.com/idea/>                                                    |
| [JetBrains RubyMine](https://zh.wikipedia.org/wiki/RubyMine "wikilink")    |             | <http://www.jetbrains.com/ruby/>                                                     |
| [JetBrains PhpStorm](https://zh.wikipedia.org/wiki/PhpStorm "wikilink")    |             | <http://www.jetbrains.com/phpstorm/>                                                 |
| [NetBeans](../Page/NetBeans.md "wikilink")                                 |             | <http://plugins.netbeans.org/plugin/34929/scss-support>                              |
| [Emacs](../Page/Emacs.md "wikilink")                                       | SCSS Mode   | <https://github.com/antonj/scss-mode/>                                               |
| [Vim](../Page/Vim.md "wikilink")                                           | haml.zip    | <http://www.vim.org/scripts/script.php?script_id=1433>                               |

## 参见

  - [LESS (层叠样式表)](https://zh.wikipedia.org/wiki/LESS_\(层叠样式表\) "wikilink")
  - [Stylus](https://zh.wikipedia.org/wiki/Stylus "wikilink")

## 参考

## 外部链接

  -
  - [Haml/Sass Google Group](https://groups.google.com/group/haml)

  - [pyScss, a Python Scss library and client](https://github.com/Kronuz/pyScss)

  - [Sai the mixins extension and CSS authoring framework for Less & Sass/Scss (Git)](https://github.com/hapztron/sai)

  - [Sass tools and resources](https://web.archive.org/web/20150323061242/http://www.logogulf.ae/blog/sass-tools-and-resources/)

[Category:网页设计](https://zh.wikipedia.org/wiki/Category:网页设计 "wikilink") [Category:层叠样式表](https://zh.wikipedia.org/wiki/Category:层叠样式表 "wikilink")

1.
2.
3.
4.  [Sass - Syntactically Awesome Stylesheets](http://sass-lang.com/tutorial.html) Tutorial
5.
6.
7.
8.  [Sass (Syntactically Awesome StyleSheets)](http://sass-lang.com/docs/yardoc/file.SASS_REFERENCE.html) SASS_REFERENCE
9.
10.
11.
12. [Module: Sass::Script::Functions](http://sass-lang.com/docs/yardoc/Sass/Script/Functions.html) Sass Functions
13.
14.
15.
16.
17.
18.
19.
20.
21.
22.
23.
24.
25.