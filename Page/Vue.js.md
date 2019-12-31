> 本文内容由[Vue.js](https://zh.wikipedia.org/wiki/Vue.js)转换而来。


**Vue.js**（，或简称为**Vue**）是一个用于创建用户界面的[开源](../Page/开源软件.md "wikilink")[JavaScript](../Page/JavaScript.md "wikilink")框架，也是一个创建[单页应用](../Page/单页应用.md "wikilink")的[Web应用框架](../Page/Web应用框架.md "wikilink")\[1\]。 2016年一项针对JavaScript的调查表明，Vue有着89%的开发者满意度。\[2\] 在[GitHub](../Page/GitHub.md "wikilink")上，该项目平均每天能收获95颗星，\[3\]\[4\]为Github有史以来星标数第3多的项目。\[5\]

## 综述

Vue.js是一款流行的[JavaScript](../Page/JavaScript.md "wikilink")前端框架，旨在更好地组织与简化Web开发。Vue所关注的核心是[MVC](../Page/MVC.md "wikilink")模式中的视图层，同时，它也能方便地获取数据更新，并通过组件内部特定的方法实现视图与模型的交互。

## 历史

在为[AngularJS工作之后](https://zh.wikipedia.org/wiki/AngularJS "wikilink")，Vue的作者尤雨溪开发出了这一框架。他声称自己的思路是提取Angular中为自己所喜欢的部分，构建出一款相当轻量的框架。\[6\]Vue最早发布于2014年2月。作者在[Hacker News](../Page/Hacker_News.md "wikilink")、Echo JS与[Reddit](../Page/Reddit.md "wikilink")的*/r/javascript*版块\[7\]发布了最早的版本。一天之内，Vue就登上了这三个网站的首页。\[8\]Vue是Github上最受欢迎的开源项目之一。同时，在JavaScript框架/函式库中，Vue所获得的星标数已超過[React](../Page/React.md "wikilink")，並高于[Backbone.js](../Page/Backbone.js.md "wikilink")、Angular 2、[jQuery等项目](https://zh.wikipedia.org/wiki/jQuery "wikilink")。

## 特性

### 组件

组件是Vue最为强大的特性之一。为了更好地管理一个大型的应用程序，往往需要将应用切割为小而独立、具有复用性的组件。在Vue中，组件是基础[HTML元素](../Page/HTML元素.md "wikilink")的拓展，可方便地自定义其数据与行为。\[9\]下方的代码是Vue组件的一个示例，渲染为一个能计算鼠标点击次数的按钮。</nowiki> times</button>',

` methods: {`
`   onclick() {`
`     this.count += 1;`
`   }`
` },`
` mounted() {`
`   this.count = this.initial_count;`
` }`

}); }}

### 模板

Vue使用基于[HTML](../Page/HTML.md "wikilink")的模板语法，允许开发者将DOM元素与底层Vue实例中的数据相绑定。所有Vue的模板都是合法的HTML，所以能被遵循规范的浏览器和HTML解析器解析。在底层的实现上，Vue将模板编译成虚拟DOM渲染函数。结合响应式系统，在应用状态改变时，Vue能够智能地计算出重新渲染组件的最小代价并应用到DOM操作上。\[10\] 此外，Vue允许开发者直接使用[JSX语言作为组件的渲染函数](https://zh.wikipedia.org/wiki/React_\(JavaScript_library\)#JSX "wikilink")，以代替模板语法。\[11\] 以下为可计算点击次数的按钮的JSX渲染版本：

### 响应式设计

响应式是指MVC模型中的视图随着模型变化而变化。在Vue中，开发者只需将视图与对应的模型进行绑定，Vue便能自动观测模型的变动，并重绘视图。这一特性使得Vue的状态管理变得相当简单直观。 \[12\]

### 过渡效果

Vue在插入、更新或者移除DOM时，提供多种不同方式的应用过渡效果。 包括以下工具：

  - 在[CSS过渡和动画中自动应用class](https://zh.wikipedia.org/wiki/Cascading_Style_Sheets "wikilink")
  - 可以配合使用第三方CSS动画库，如Animate.css
  - 在过渡钩子函数中使用JavaScript直接操作DOM
  - 可以配合使用第三方JavaScript动画库，如Velocity.js.\[13\]

### 单文件组件

为了更好地适应复杂的项目，Vue支持以.vue为扩展名的文件来定义一个完整组件，用以替代使用`Vue.component`注册组件的方式。开发者可以使用 [Webpack](../Page/Webpack.md "wikilink")或[Browserify等构建工具来打包单文件组件](https://zh.wikipedia.org/wiki/Browserify "wikilink")。\[14\]

## 核心插件

  - vue-router\[15\]
  - vuex\[16\]
  - vue-loader\[17\]
  - vueify \[18\]
  - vue-cli\[19\]

## 参见

  - [React](../Page/React.md "wikilink")
  - [AngularJS](https://zh.wikipedia.org/wiki/AngularJS "wikilink")
  - [JavaScript函式库](https://zh.wikipedia.org/wiki/JavaScript函式库 "wikilink")
  - [Axios](https://zh.wikipedia.org/wiki/Axios "wikilink")

## 参考文献

## 外部链接

  -
  -
[Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink") [Category:Web应用框架](https://zh.wikipedia.org/wiki/Category:Web应用框架 "wikilink") [Category:JavaScript函式庫](https://zh.wikipedia.org/wiki/Category:JavaScript函式庫 "wikilink")

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
17.
18.
19.