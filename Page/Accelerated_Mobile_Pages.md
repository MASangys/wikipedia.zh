> 本文内容由[Accelerated Mobile Pages](https://zh.wikipedia.org/wiki/Accelerated_Mobile_Pages)转换而来。


（简称**AMP**，意为“加速移动页面”）是[Google](../Page/Google.md "wikilink")带领开发的[开源项目](https://zh.wikipedia.org/wiki/开源 "wikilink")，目的是为提升[移动设备](../Page/移动设备.md "wikilink")对[网站的访问速度](../Page/網站.md "wikilink")\[1\]。AMP也可指其衍生的标准和[库等项目成果](../Page/函式庫.md "wikilink")。AMP在[HTML](../Page/HTML.md "wikilink")等广泛使用的网络技术基础上进行改良，它的核心称作，是HTML的一种。服务于技术预览期结束后的2016年2月正式发布\[2\]\[3\]\[4\]。

## 构成

AMP大致可分为、和三部分\[5\]。

AMP HTML是描述[网页所用的](../Page/網頁.md "wikilink")[标记语言](../Page/置标语言.md "wikilink")，相当于普通网页使用的[HTML](../Page/HTML.md "wikilink")之亚种。AMP HTML在图像显示等方面使用与HTML不同的专用标签，另外还限制了HTML部分功能的使用。

AMP JS是一套[JavaScript](../Page/JavaScript.md "wikilink")[库](../Page/函式庫.md "wikilink")，保证AMP HTML的正确和快速显示。除此之外，AMP JS还负责在只支持普通HTML的[浏览器中担任桥梁](../Page/网页浏览器.md "wikilink")，使其能正确支持AMP HTML的专用功能。AMP HTML中可以调用该函数库。

AMP Cache是[缓存](../Page/缓存.md "wikilink")并传输AMP页面的[CDN](../Page/內容傳遞網路.md "wikilink")，进一步提高AMP网页的性能。用户在[搜索引擎](../Page/搜索引擎.md "wikilink")中点击AMP网页时，实际上访问的是优化后的缓存页面。[Google](../Page/Google.md "wikilink")的AMP Cache名为。

## AMP HTML

与创建普通网页时创建的[HTML](../Page/HTML.md "wikilink")类似，创建AMP页面时是以AMP HTML的方式创建，写法上大部分与HTML相同。文件扩展名亦同样是`.html`\[6\]，但也有人选择`.amp.html`以示区别。

AMP项目网站上有AMP HTML的详细标准，以下为其中独特的部分。

### 头部

AMP HTML的头部格式如下。

``` html5
<!doctype html>
<html amp lang="zh">
    <head>
```

其中与普通的[HTML5](../Page/HTML5.md "wikilink")完全一样，但起始标签<code>

<html>

</code>改为<code>

<html amp>

</code>或包含绘文字的`<html ⚡>`。

<code>

<head>

</code>标签须含有的元素包括`charset`和`viewport`元标签，格式固定的<code>

<style>

</code>元素，以及读取AMP JS库的<code>

<script>

</code>元素等（其中一部分顺序也有规定）。此外，通过加入形式的结构化数据\[7\]等，页面可以包含向[搜索引擎](../Page/搜索引擎.md "wikilink")等工具传递合适信息的[元数据](../Page/元数据.md "wikilink")。

### 自定义元素

除普通HTML元素外，AMP HTML还可使用一些独有元素（标签），即自定义元素。例如用于显示图像的<amp-img>（取代普通的<img>元素），显示布局侧边栏的<amp-sidebar>，显示外部站点内容的<amp-facebook>、<amp-twitter>，等等。

AMP中不可使用用户JavaScript，但有作为代替的自定义元素，代表性的有显示广告的<amp-ad>和用于的<amp-analytics>。

部分自定义元素要求使用时添加一些附加JavaScript库（在<code>

<head>

</code>标签内）。

### 样式

AMP页面与普通页面一样，使用[CSS进行样式布局](../Page/层叠样式表.md "wikilink")。但CSS不能用外部文件表示，也不能在各元素的`style`属性中分别定义，必须写在AMP HTML开始部分<code>

<head>

</code>标签中的单一<code>

<style>

</code>元素中（可在[服务器](../Page/服务器.md "wikilink")端动态生成CSS后嵌入AMP HTML）。包括媒体查询器和多数的属性选择器在内，大部分CSS功能都可在AMP中使用，禁用的则有`!``important`限定符和`*`选择器等。

另外，AMP允许通过元素的`layout`属性控制布局。例如，自适应图像可通过<amp-img layout="responsive">表示。

### HTML限制

部分HTML元素和属性的使用受到限制，特别是图像和媒体方面，这些均由AMP自有的自定义元素替换。

### 脚本

AMP中，用户自己的JavaScript，以及[jQuery](https://zh.wikipedia.org/wiki/jQuery "wikilink")、[AngularJS这类普通JavaScript库原则上不能使用](https://zh.wikipedia.org/wiki/AngularJS "wikilink")。作为代替方案，可使用AMP HTML的自定义元素制作交互式网页。

## 优点

使用AMP的网页可快速读取并显示，用户（网页访问者）在点击链接后无需等待即可看到页面内容。根据Google发布的数据，网页若是访问速度过慢，多数用户会放弃并关闭网页\[8\]，快速加载的页面对网站制作者也有利。

在[Google搜索](../Page/Google搜索.md "wikilink")结果中，妥善建立的AMP网页旁会出现AMP标志，对新闻等部分内容还会采用轮播（carousel）的特殊样式\[9\]。

## 应用

部分媒体已开始使用AMP，包括[CNN](https://zh.wikipedia.org/wiki/CNN "wikilink")、[美国广播公司](../Page/美国广播公司.md "wikilink")和[福克斯新闻](https://zh.wikipedia.org/wiki/福克斯新闻 "wikilink")。安装第三方插件后，[WordPress](../Page/WordPress.md "wikilink")博客也可使用AMP\[10\]。

2017年3月7日，Google宣布[百度](../Page/百度.md "wikilink")、[搜狗](../Page/搜狗.md "wikilink")和[Yahoo\! JAPAN搜索将支持AMP](https://zh.wikipedia.org/wiki/Yahoo!_JAPAN "wikilink")\[11\]；其中百度在搜索结果中将AMP页面标注为“MIP”（移动网页加速器），一个百度主导、与AMP类似的项目\[12\]。

## 参考文献

## 外部链接

  -

  - [Official Google Blog: Introducing the Accelerated Mobile Pages Project, for a faster, open mobile web](https://googleblog.blogspot.jp/2015/10/introducing-accelerated-mobile-pages.html)

[Category:2016年面世](https://zh.wikipedia.org/wiki/Category:2016年面世 "wikilink") [Category:HTML](https://zh.wikipedia.org/wiki/Category:HTML "wikilink")

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