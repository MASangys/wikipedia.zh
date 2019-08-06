}}  在[HTML](../Page/HTML.md "wikilink")中，`span`与`div`元素被用来表达一个逻辑区块。`div`在Dreamweaver也叫“层”，用于标示块级元素，而`span`标示行内元素。

绝大多数HTML元素具有[语义上的意义](https://zh.wikipedia.org/wiki/语义 "wikilink") - 也就是说，这个元素表示了它的作用。例如，一个`p`元素应该包含一段文本，而一个`h1`元素应该包含页面的最高层级标题，可据此区分它们。但`span`和`div`没有天生的语义含义，它们可以被用于指定特定的区块或行列。

`div`就像一个段落，在视觉上于页面隔离出了文档的一部分，它可以包含段落、标题、表格等。`span`元素的作用是选择特定文本，以便于指定特殊样式，。这些特性由[层叠样式表](../Page/层叠样式表.md "wikilink")（CSS）控制。

## 实际使用

`span`和`div`

当它们被标记为具有`class`或`id`属性时，`span`和`div`元素可以表示通过HTML无法描述的信息的类型。例如，`<div id="byline">Fred Smith</div>`可能被用于指示一个文档中作者的名称，而`<span class="date">10th Feb 2010</span>`可能被用于具体指示一个日期。

有三个主要的理由使用具有`class`或`id`属性的`span`或`div`标签：

### 用CSS指定样式

也许`span`和`div`元素的最常见用法就是用以携带`class`或`id`属性，结合CSS以应用布局，排版，颜色和其它表现性的属性于部分内容。CSS不只是应用于视觉上的样式：当由语音浏览器（）说出时，CSS样式可以影响语速，重音，丰富度甚至于[立体声](https://zh.wikipedia.org/wiki/立体声 "wikilink")。

任何HTML内的元素的属性，应该描述它们语义上的目的，而不仅仅是它们在某个特定介质中所想要的表现属性。例如，<span class="red small">`password too short`</span>在语义上毫无意义，然而<span class="warning">`password too short`</span>会有用的多。\[1\]通过对CSS的正确使用，「warnings」可能被渲染为一个红色，小字体，但当被打印出时，它们可能被省略，因为此时对它们做任何事情都为时已晚。也许被说出时它们可以 被给与额外的重音，而且在语速上有一个较小的减少。第二个例子是语义化的标记，而不仅是表现上的，但当结合CSS时满足了这两种目的。

### 语义清晰度

这种对部分页面内容进行的分组和标签被引进可能仅仅为了使页面语义上更有意义。

[万维网联盟](../Page/万维网联盟.md "wikilink")（W3C）已在运行一个主要的[语义网](../Page/语义网.md "wikilink")项目，旨在使整个web对今天和未来的信息系统越来越有用。

在页面设计过程中，设计者对内容中每一个元素和子元素的确切目的和意义，有一个清晰的想法。如果表达该含义的标准的HTML元素存在，它们就应该被使用。如果没有，就封装一个恰当`class`或`id`，`span`或`div`。至少，这样做将帮助未来的编辑者维护这个标记。

[微格式](../Page/微格式.md "wikilink")运动是建立于语义化`class`的想法之上的一次尝试。例如，微格式敏感软件可能会自动发现如<span class="tel">`123-456-7890`</span>的元素且允许对该电话号码的自动拨号。

### 对代码的访问

一旦HTML或者XHTML的标记被送达网页访问者的客户端浏览器，就会有客户端代码将需要导航于网页的内部结构（或者[文档对象模型](../Page/文档对象模型.md "wikilink")）的机会。最常见的原因是页面随着产生动态行为的[JavaScript](../Page/JavaScript.md "wikilink")。例如，如果把鼠标移至"Buy now"的超链接上，它就意味价格，JavaScript代码可以做到这个，但无论它在标记中的哪里，JavaScript需要标识价格元素。如下的标记将足够：<code>

<div id="price">

$45.99

</div>

</code>。

另一个例子是[Ajax编程技术](https://zh.wikipedia.org/wiki/Ajax "wikilink")，其中，例如，点击一个超链接也许会引发JavaScript代码检索文本寻找新的报价，以代替页面中现有的那个，而不用重新加载整个网页。当新的文本从服务器端返回，JavaScript必须标识页面上的准确的区域，用新的信息代替。

不那么常见，但作为改进对网页的访问，以及必须使用`span`与`div`元素的`class`或`id`属性以在页面内导航的代码的重要例子包括自动测试工具的使用。在动态产生HTML（[Dynamic web page](https://zh.wikipedia.org/wiki/Dynamic_web_page "wikilink")）上，这也许包括自动页面测试工具如，家族成员之一，的使用，以及应用于[表单驱动的网站时的负载或压力测试工具如](https://zh.wikipedia.org/wiki/Web_Forms "wikilink")。

## 滥用

明智的使用div和span是HTML和XHTML标记中的一个重要部分。

例如，当结构上和语义上一系列项目需要一个外部的包围元素，和进一步为每一个项目提供的容器时，则在HTML中有多种多样可用的[列表结构](../Page/HTML元素.md "wikilink")，其中之一可能比一个自制的`div`和`span`元素的混合更加可取。\[2\]

示例：

【優】

``` html4strict
<ul class="menu">
  <li>Main page</li>
  <li>Contents</li>
  <li>Help</li>
</ul>
```

【劣】

``` html4strict
<div class="menu">
  <span>Main page</span>
  <span>Contents</span>
  <span>Help</span>
</div>
```

## 参考资料

[Category:HTML](https://zh.wikipedia.org/wiki/Category:HTML "wikilink")

1.
2.