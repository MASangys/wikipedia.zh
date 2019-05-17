**Velocity**是一个[跨平台的](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[JavaScript库](../Page/JavaScript函式庫.md "wikilink")，旨在简化网站动画的[客户端脚本](https://zh.wikipedia.org/wiki/動態網頁 "wikilink")。\[1\]
Velocity是[自由、开源软件](../Page/自由及开放源代码软件.md "wikilink")，用[MIT許可證授权](../Page/MIT許可證.md "wikilink")。\[2\]
它是最流行的开源Web动画引擎。\[3\]

Velocity的语法旨在让为[HTML和](../Page/HTML.md "wikilink")[SVG元素创建复杂动画变得更加容易](../Page/可縮放向量圖形.md "wikilink")。\[4\]
Velocity除了在工作流程有上优势外，还提供了与基于[CSS的动画相媲美的动画性能](../Page/层叠样式表.md "wikilink")。\[5\]
Velocity通过维护动画状态的内部缓存并最小化“布局[抖动](https://zh.wikipedia.org/wiki/Thrashing_\(computer_science\) "wikilink")”来实现其性能，这是[网页浏览器在以较快速度进行视觉更新时所经历的不良行为](../Page/网页浏览器.md "wikilink")。\[6\]
总而言之，其工作流程和性能优势使得Velocity能够用于复杂的动画编程，这些编程可以集成到网络和移动应用程序中。\[7\]
其广泛的浏览器和设备支持使其成为必须支持低功耗设备的大型企业分布的理想选择。\[8\]

Velocity被用于驱动许多著名网站的用户界面，包括[優步](../Page/優步.md "wikilink")、[三星](https://zh.wikipedia.org/wiki/三星集团 "wikilink")、[WhatsApp](../Page/WhatsApp.md "wikilink")、[Tumblr](https://zh.wikipedia.org/wiki/Tumblr "wikilink")、[HTC](../Page/宏達國際電子.md "wikilink")、[马自达和](../Page/马自达.md "wikilink")[Microsoft
Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。\[9\]
它是代码托管服务[GitHub上最受欢迎的项目之一](../Page/GitHub.md "wikilink")。\[10\]
2015年，Velocity被[The Net
Awards提名为](https://zh.wikipedia.org/wiki/The_Net_Awards "wikilink")“年度开源项目”。\[11\]

## 功能

Velocity的功能包括：\[12\]

  - 浏览器窗口和元素滚动
  - 独立于[jQuery框架](https://zh.wikipedia.org/wiki/jQuery "wikilink")\[13\]
  - 动画逆转（撤消前一个动画）和动画循环
  - [SVG元素动画](../Page/可縮放向量圖形.md "wikilink")\[14\]
  - [RGB与](https://zh.wikipedia.org/wiki/网页颜色 "wikilink")[hex颜色动画](https://zh.wikipedia.org/wiki/网页颜色 "wikilink")
  - [CSS](../Page/层叠样式表.md "wikilink") transform属性动画
  - 通过Velocity的UI Pack预先创建动画效果\[15\]
  - 弹簧释放类型的基于物理学的运动
  - 集成[Future与promise](../Page/Future与promise.md "wikilink")

### 浏览器支持

Velocity支持所有主流桌面浏览器（[Firefox](../Page/Firefox.md "wikilink")、[Google
Chrome](../Page/Google_Chrome.md "wikilink")、[Safari](../Page/Safari.md "wikilink")）以及[iOS和](https://zh.wikipedia.org/wiki/iOS "wikilink")[Android移动操作系统](../Page/Android.md "wikilink")。它可以支持到[Internet
Explorer](../Page/Internet_Explorer.md "wikilink")
8和[Android](../Page/Android.md "wikilink") 2.3。\[16\]

## 用法

### 引入Velocity

Velocity库是一个包含所有核心功能的JavaScript文件。它可以通过链接到本地副本或从公共服务器（如[MaxCDN的](https://zh.wikipedia.org/wiki/MaxCDN "wikilink")[jsDelivr和](https://zh.wikipedia.org/wiki/jsDelivr "wikilink")[Cloudflare的](../Page/CloudFlare.md "wikilink")[CDNjs](http://www.cdnjs.com/)）提供的许多副本中的一个包含在网页中。

``` html5
<script src="velocity.min.js"></script>
```

直接从内容交付网络中包含Velocity也是可能的。（以//开头的链接是[协议相对URL](../Page/统一资源定位符.md "wikilink")）

``` html5
<script src="//cdn.jsdelivr.net/velocity/1.2.3/velocity.min.js"></script>
```

### 使用方式

Velocity有两种使用方式：

  - `$.Velocity`函数，这是一个从[jQuery根对象扩展的](https://zh.wikipedia.org/wiki/jQuery "wikilink")[工厂方法](../Page/工厂方法.md "wikilink")。此方法使用原始[DOM元素而不是](../Page/文档对象模型.md "wikilink")[jQuery封装的元素进行动画处理](https://zh.wikipedia.org/wiki/jQuery "wikilink")。这是在没有jQuery的情况下使用Velocity的方式。
  - `$element.velocity()`函数。当页面上有jQuery时，用这种方式来给jQuery元素添加元素。

Velocity中的动画调用包括提供需要附加动画的元素、一个指定哪些[CSS属性需要附加动画的](../Page/层叠样式表.md "wikilink")“动画属性映射”，还有一个可选的“options对象”来指定动画的设置（例如“duration”）。

### 参数

Velocity接受一个或多个参数。第一个参数可以是预定义的Velocity命令的名称（*scroll*或*reverse*），也可以是要进行动画的CSS属性的对象：

``` javascript
// Animate an element's width to 100px and its left property to 200px
$element.velocity({ width: "100px", left: "200px" });
```

第二个参数是可选的，是一个对象。它用于指定动画选项，如持续时间（duration）、缓动（easing）和完成（complete）（动画完成后执行的任意函数）：

``` javascript
// Animate an element's width to 100px over a 1000ms duration after pausing for a 100s delay.
$element.velocity({ width: "100px" }, { duration: 1000, delay: 100 });
```

### 链接

要用Velocity创建一系列连续的动画，就要让目标[jQuery元素对象一个接一个地调用](https://zh.wikipedia.org/wiki/jQuery "wikilink")*velocity()*：

``` javascript
$element
    .velocity({ height: 300 }, { duration: 1000 })
    // Continue on to this animation once the previous one has completed
    .velocity({ top: 200 }, { duration: 600 })
   // And once more...
    .velocity({ opacity: 0 }, { duration: 200 });
```

### 滚动和逆转

滚动的话，就要在第一个参数传*scroll* — 代替典型的CSS属性映射：

``` javascript
// Scroll with a duration of 750ms
$element.velocity("scroll", { duration: 750 });
```

浏览器随后会向下滚动到Velocity被调用的元素的顶部边缘。

动画逆转，就要在第一个参数传*reverse*：

``` javascript
// Animate an element's height
$element.velocity({ height: "500px" }, { duration: 500 });
// Reverse the previous animation; animate back to the element's original height using the previous duration
$element.velocity("reverse");
```

Velocity的*reverse*命令默认是针对之前一个调用的。如果传新的参数的话，就会扩展前一个动画（改变其option）：

``` javascript
$element.velocity({ height: "500px" }, { duration: 500 });
// Extend the previous reverse call's options object with a new duration value
$element.velocity("reverse", { duration: 1000 });
```

## 历史

Velocity由Julian
Shapiro开发，旨在解决缺乏高性能和面向设计者的[JavaScript动画库的问题](../Page/JavaScript.md "wikilink")。\[17\]\[18\]
[Stripe是一家颇受欢迎的以](../Page/Stripe.md "wikilink")[Web开发人员为中心的互联网技术公司](https://zh.wikipedia.org/wiki/網頁開發者 "wikilink")，为Shapiro提供经济上的资助，让他可以继续专职开发Velocity。\[19\]

Velocity内部动画引擎性能较高，对重新推广基于JavaScript的网络动画起到了积极作用；这个领域在之前由于基于CSS的动画的出现而一度失去人们的关注，因为基于CSS的动画在速度上超越了对动画缺乏关注的以前一些JavaScript库。\[20\]

2014年9月，Shapiro发布了Velocity Motion
Designer，这是一个在现成的网站上设计动画的工具，可以实时导出生成的动画代码，以便在[IDE中随后使用](../Page/集成开发环境.md "wikilink")。\[21\]
2015年3月，[Peachpit发布了Shapiro的](https://zh.wikipedia.org/wiki/Peachpit "wikilink")《使用JavaScript的网页动画》（Web
Animation using JavaScript）一书，该书教导了使用Velocity开发网页动画的入门和高级原则。\[22\]
截至2015年中期，Velocity继续由Shapiro专职开发和维护。\[23\]

Velocity除了在专业企业环境中的使用外，它还广泛用于[Web开发实验和初学者练习](https://zh.wikipedia.org/wiki/網頁程式設計 "wikilink")。

## 参见

  - [D3.js](../Page/D3.js.md "wikilink")
  - [Raphaël](https://zh.wikipedia.org/wiki/Raphaël_\(JavaScript_library\) "wikilink")
  - [Three.js](../Page/Three.js.md "wikilink")
  - [jQuery](https://zh.wikipedia.org/wiki/jQuery "wikilink")

## 延伸阅读

  - [Animating without
    jQuery](http://www.smashingmagazine.com/2014/09/04/animating-without-jquery/)
  - [How to use Velocity to easily add
    animations](http://www.creativebloq.com/web-design/use-velocity-add-animations-61515280/)
  - [Fast UI animation using
    Velocity.js](http://www.sitepoint.com/incredibly-fast-ui-animation-using-velocity-js/)

## 外部链接

  -
  - [Velocity demo gallery](http://codepen.io/collection/tIjGb/)

## 参考文献

[Category:JavaScript函式庫](https://zh.wikipedia.org/wiki/Category:JavaScript函式庫 "wikilink")
[Category:AJAX](https://zh.wikipedia.org/wiki/Category:AJAX "wikilink")
[Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink")
[Category:2014年软件](https://zh.wikipedia.org/wiki/Category:2014年软件 "wikilink")
[Category:用JavaScript編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用JavaScript編程的自由軟體 "wikilink")

1.  <http://davidwalsh.name/intro-javascript-animation>

2.
3.

4.

5.  <http://davidwalsh.name/css-js-animation>

6.
7.

8.

9.  <http://libscore.com/#$.Velocity>

10.

11.

12.
13.

14. <http://davidwalsh.name/svg-animation>

15.

16.

17.

18.

19.

20.

21.

22.

23. <https://github.com/julianshapiro/velocity/graphs/contributors>