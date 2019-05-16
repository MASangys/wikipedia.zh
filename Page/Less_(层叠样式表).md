{{ infobox programming language | name = Less | logo =
[LESS_Logo.svg](https://zh.wikipedia.org/wiki/File:LESS_Logo.svg "fig:LESS_Logo.svg")
| year = 2009 | designer = [Alexis
Sellier](https://zh.wikipedia.org/wiki/Alexis_Sellier "wikilink") |
developer = [Alexis
Sellier](https://zh.wikipedia.org/wiki/Alexis_Sellier "wikilink"),
[Dmitry
Fadeyev](https://zh.wikipedia.org/wiki/Dmitry_Fadeyev "wikilink") |
latest_release_version= 1.4.2 | latest_release_date =  | typing =
[动态类型](https://zh.wikipedia.org/wiki/动态类型 "wikilink") |
influenced_by = [CSS](https://zh.wikipedia.org/wiki/CSS "wikilink"),
[Sass](https://zh.wikipedia.org/wiki/Sass_\(样式表语言\) "wikilink") |
influenced =
[Sass](https://zh.wikipedia.org/wiki/Sass_\(样式表语言\) "wikilink"),
Less Framework | operating_system =
[跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink") | license =
[Apache
License](https://zh.wikipedia.org/wiki/Apache_License "wikilink") 2 |
website = [lesscss.org](http://lesscss.org/) | file_ext = .less }}
**Less**（或寫作**LESS**）是一种由Alexis
Sellier设计的动态[层叠样式表语言](../Page/层叠样式表.md "wikilink")，受[Sass所影响](../Page/Sass.md "wikilink")，同时也影响了Sass的新语法：SCSS。\[1\]

LESS是开源的，其第一个版本由[Ruby写成](../Page/Ruby.md "wikilink")，但在后续的版本当中，Ruby逐渐被替换为[JavaScript](../Page/JavaScript.md "wikilink")。受益于JavaScript，LESS可以在客户端上运行（IE6+、[Webkit](https://zh.wikipedia.org/wiki/Webkit "wikilink")、[Firefox](../Page/Firefox.md "wikilink")），也可以在服务端运行（[Node.js](../Page/Node.js.md "wikilink")、[Rhino](https://zh.wikipedia.org/wiki/Rhino "wikilink")）。\[2\]

在语法方面，LESS与CSS较为接近，一个合法的CSS代码段本身也是一段合法的LESS代码段。LESS提供[变量](https://zh.wikipedia.org/wiki/变量 "wikilink")、嵌套、混合、[操作符](https://zh.wikipedia.org/wiki/操作符 "wikilink")、[函数等一般编程所需的抽象机制](../Page/函数.md "wikilink")。\[3\]

## 变量

LESS支持自定义变量。在LESS中，变量以“@”开头，赋值时以“:”进行赋值。经过LESS的翻译，这些变量最终会转换为符合CSS标准的值。\[4\]

``` css
@color: #4D926F;

#header {
  color: @color;
}
h2 {
  color: @color;
}
```

上面的代码最终会转化为下面的代码：

``` css
#header {
  color: #4D926F;
}
h2 {
  color: #4D926F;
}
```

## 混合

混合允许开发者仅仅通过包含类名将一个类当中的所有属性全部应用于另一个类，同时也可以像函数一样提供参数使用。

CSS3并不支持混合，任何重复的代码必须在每个使用的地方重复编写，而通过LESS，你可以将代码进行复用。\[5\]

``` css
.rounded-corners (@radius: 5px) {
  border-radius: @radius;
  -webkit-border-radius: @radius;
  -moz-border-radius: @radius;
}

#header {
  .rounded-corners;
}
#footer {
  .rounded-corners(10px);
}
```

上面的代码将产生下面的代码：

``` css
#header {
  border-radius: 5px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
}
#footer {
  border-radius: 10px;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
}
```

## 嵌套

CSS支持逻辑上的嵌套，但在代码本身并不是嵌套的。LESS提供了代码的嵌套。\[6\]

``` css
#header {
  h1 {
    font-size: 26px;
    font-weight: bold;
  }
  p { font-size: 12px;
    a { text-decoration: none;
      &:hover { border-width: 1px }
    }
  }
}
```

将产生：

``` css
#header h1 {
  font-size: 26px;
  font-weight: bold;
}
#header p {
  font-size: 12px;
}
#header p a {
  text-decoration: none;
}
#header p a:hover {
  border-width: 1px;
}
```

## 函数与操作符

LESS提供了函数用以支持复杂的属性间关系，其函数与JavaScript代码中的函数一一对应，允许JavaScript代码直接操纵传达过去的值。同时，LESS内置了基本的操作符，涵盖了基本加、减、乘、除，能够对属性值或颜色进行计算。

``` css
@the-border: 1px;
@base-color: #111;
@red:        #842210;

#header {
  color: @base-color * 3;
  border-left: @the-border;
  border-right: @the-border * 2;
}
#footer {
  color: @base-color + #003300;
  border-color: desaturate(@red, 10%);
}
```

将产生：

``` css
#header {
  color: #333;
  border-left: 1px;
  border-right: 2px;
}
#footer {
  color: #114411;
  border-color: #7d2717;
}
```

## 相较于Sass

Sass与LESS都属于CSS的预处理器，都允许通过一定的抽象手段将开发者的意图转化为CSS代码。

LESS受启发于Sass\[7\]，但Sass被设计为简化、扩展CSS，因此诸如大括号等语法都被移除，但流程控制、继承等概念被引入其中；相反，LESS被设计为更接近于CSS，其语法与CSS本身非常接近，因此一段合法的CSS代码也是一段合法的LESS代码。\[8\]不过新版本的Sass同样将CSS式语法引入了其中，命名为SCSS（Sassy
CSS）。\[9\]

更多两者异同可见：[<https://gist.github.com/674726（英文>）](https://gist.github.com/674726)

## 相较于ZUSS

ZUSS受启发于LESS，但其目的是与[Java进行结合](../Page/Java.md "wikilink")，因此混合当中不允许使用JavaScript函数，取而代之的是Java函数。

## 应用于网站

LESS由于以JavaScript实现，因此既可以在浏览器上进行实时翻译，也可以首先在服务器上翻译为CSS之后再传送给浏览器。

## 参考文献

## 外部链接

  -
  - [LESS源码（GitHub）](https://github.com/less/less.js)

[Category:网页设计](https://zh.wikipedia.org/wiki/Category:网页设计 "wikilink")
[Category:层叠样式表](https://zh.wikipedia.org/wiki/Category:层叠样式表 "wikilink")

1.  [Sass and Less](http://nex-3.com/posts/83-sass-and-less)  Sass and
    Less

2.
3.  [Official LESS website](http://lesscss.org/) Official LESS website

4.
5.
6.
7.  [About LESS](http://lesscss.org/about) About

8.  [What's Wrong With
    CSS](http://www.codinghorror.com/blog/2010/04/whats-wrong-with-css.html)
    What's Wrong With CSS

9.