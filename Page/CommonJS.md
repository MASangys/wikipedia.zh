**CommonJS**是一个项目，其目标是为[JavaScript](../Page/JavaScript.md "wikilink")在[网页浏览器](../Page/网页浏览器.md "wikilink")之外建立[模块约定](../Page/子程序.md "wikilink")。创建这个项目的主要原因是当时缺乏普遍可接受形式的JavaScript脚本模块单元，模块在与运行JavaScript脚本的常规网页浏览器所提供的不同的环境下可以重复使用。

## 历史

这个项目由[Mozilla](../Page/Mozilla.md "wikilink")工程师Kevin Dangoor于2009年1月发起，最初名为**ServerJS**\[1\]。在2009年8月，这个项目被改名为“CommonJS”来展示其[API的广泛的应用性](https://zh.wikipedia.org/wiki/API "wikilink")\[2\]。有关规定在一个开放进程中被建立和认可，一个规定只有在已经被多个实现完成之后才被认为是最终的\[3\]。 CommonJS不隶属于致力于[ECMAScript](../Page/ECMAScript.md "wikilink")的[Ecma国际](../Page/Ecma国际.md "wikilink")的工作组 TC39，但是TC39的一些成员参与了这个项目\[4\]。

在2013年5月，[Node.js](../Page/Node.js.md "wikilink")包管理器[npm的作者Isaac](https://zh.wikipedia.org/wiki/npm "wikilink") Z. Schlueter，声称Node.js已经废弃了CommonJS，Node.js核心开发者应避免使用它\[5\]。

## 规定

规定列表包括\[6\]：

### 当前

### 提议

## 模块

require是一个函数，require函数接受一个模块标识符，require返回外部模块的导出的API。如果要求的模块不能被返回则require必须throw一个错误。在模块内，有一个自由变量require，它满足上述定义。在模块内，有一个自由变量叫做exports，它是一个对象，模块在执行时可以向其增加模块的API。模块必须使用exports对象作为唯一的导出方式。\[7\]

在模块中，必须有一个自由变量module，它是一个对象。module对象必须有一个id属性，它是这个模块的顶层id。id属性必须是这样的，`require(module.id)`会从源出`module.id`的那个模块返回exports对象。（就是说`module.id`可以被传递到另一个模块，而且在要求它时必须返回最初的模块）。\[8\]

### 样例代码

  - math.js:

<!-- end list -->

``` javascript
exports.add = function() {
    var sum = 0, i = 0, args = arguments, l = args.length;
    while (i < l) {
        sum += args[i++];
    }
    return sum;
};
```

  - increment.js:

<!-- end list -->

``` javascript
var add = require('math').add;
exports.increment = function(val) {
    return add(val, 1);
};
```

  - program.js:

<!-- end list -->

``` javascript
var inc = require('increment').increment;
var a = 1;
inc(a); // 2

module.id == "program";
```

## 实现

## 参见

  - [服务器端JavaScript实现列表](https://zh.wikipedia.org/wiki/服务器端JavaScript实现列表 "wikilink")
  - [文档对象模型](../Page/文档对象模型.md "wikilink") (DOM)，[网页浏览器](../Page/网页浏览器.md "wikilink")客户端[应用程序接口](../Page/应用程序接口.md "wikilink") (API)，通常以JavaScript获得
  - [JSGI](https://zh.wikipedia.org/wiki/JSGI "wikilink")

## 引用

## 外部链接

  -
  -
[Category:JavaScript](https://zh.wikipedia.org/wiki/Category:JavaScript "wikilink")

1.  [What Server Side JavaScript needs - Blue Sky On Mars](http://www.blueskyonmars.com/2009/01/29/what-server-side-javascript-needs/)
2.  [CommonJS: JavaScript Standard Library](http://commonjs.org/history/)
3.  [ProposalProcess - CommonJS Spec Wiki](http://wiki.commonjs.org/wiki/ProposalProcess)
4.  [CommonJS: the First Year - Blue Sky On Mars](http://www.blueskyonmars.com/2010/01/29/commonjs-the-first-year/)
5.
6.
7.  [Modules/1.0](http://wiki.commonjs.org/wiki/Modules/1.0).
8.  [Modules/1.1.1](http://wiki.commonjs.org/wiki/Modules/1.1.1).