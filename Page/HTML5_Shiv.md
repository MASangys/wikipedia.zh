> 本文内容由[HTML5 Shiv](https://zh.wikipedia.org/wiki/HTML5 Shiv)转换而来。


Sjoerd Visscher 所创造的**HTML5 Shiv**是[JavaScript](../Page/JavaScript.md "wikilink")的一种备选方案。该方案在[Internet Explorer](../Page/Internet_Explorer.md "wikilink") 9版本中优先启用[HTML5](../Page/HTML5.md "wikilink")元素样式，但不允许使用没有由[JavaScript](../Page/JavaScript.md "wikilink")定义过的[元素样式](../Page/HTML元素.md "wikilink")。

## Internet Explorer的兼容性和使用的版本

[Internet Explorer](../Page/Internet_Explorer.md "wikilink") 9之前的版本几乎不支持HTML5元素和其它HTML5特性。\[1\] HTML5Shiv允许[Internet Explorer](../Page/Internet_Explorer.md "wikilink") 9之前的版本识别[HTML5](../Page/HTML5.md "wikilink")标记，并允许他们使用[CSS样式](https://zh.wikipedia.org/wiki/CSS "wikilink")。

## 使用示例

在HTML5网页中使用HTML5 Shiv非常简单，你可以选择安装或者不安装官方库。下面这段示例代码告诉大家如何在版本低于9的Internet Explorer浏览器中使用HTML5 Shiv。脚本应该包含在网页

<head>

元素中且任何的样式表之后。

``` html numberLines
<!DOCTYPE html>
<html>
 <head>
  <!--[if lt IE 9]>
  <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
  <![endif]-->
 </head>
 <body>
 </body>
</html>
```

您也可以使用GitHub库下载最新版本的HTML5 Shiv，直接包含在您的项目目录中。\[2\]

## 相关条目

  - [HTML5](../Page/HTML5.md "wikilink")
  - [JavaScript](../Page/JavaScript.md "wikilink")

## 参考资料

[Category:HTML](https://zh.wikipedia.org/wiki/Category:HTML "wikilink") [Category:HTML5](https://zh.wikipedia.org/wiki/Category:HTML5 "wikilink")

1.  [Internet Explorer 6-9 HTML5 and CSS Compatibility Overview](http://fmbip.com/litmus/)
2.