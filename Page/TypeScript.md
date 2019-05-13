是一種由[微軟開發的](https://zh.wikipedia.org/wiki/微軟 "wikilink")[自由和](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")[開源的編程语言](https://zh.wikipedia.org/wiki/開源 "wikilink")。它是[JavaScript的一個严格超集](../Page/JavaScript.md "wikilink")，並添加了可選的靜態型別和類別基礎的[物件導向編程](https://zh.wikipedia.org/wiki/物件導向編程 "wikilink")。[C\#的首席架构师以及](https://zh.wikipedia.org/wiki/C_Sharp "wikilink")[Delphi和](../Page/Delphi.md "wikilink")[Turbo
Pascal的创始人](../Page/Turbo_Pascal.md "wikilink")[安德斯·海尔斯伯格参与了TypeScript的开发](../Page/安德斯·海尔斯伯格.md "wikilink")。\[1\]\[2\]\[3\]\[4\]

TypeScript设计目标是开发大型應用，然后转译成JavaScript。\[5\]由于TypeScript是JavaScript的严格超集，任何現有的JavaScript程式都是合法的TypeScript程序。

TypeScript支援為現存JavaScript函式庫添加類型資訊的定义文件，方便其他程序像使用静态类型的值一样使用现有库中的值。目前有第三方提供常用函式庫如[jQuery](../Page/jQuery.md "wikilink")、[MongoDB](../Page/MongoDB.md "wikilink")、[Node.js和](../Page/Node.js.md "wikilink")[D3.js的定义文件](https://zh.wikipedia.org/wiki/D3.js "wikilink")。

TypeScript编译器本身也是用TypeScript编写，并被[转译为JavaScript](https://zh.wikipedia.org/wiki/源到源编译器 "wikilink")，以[Apache
License 2发布](https://zh.wikipedia.org/wiki/Apache_License "wikilink")。

## 背景

TypeScript起源于微软以及外部客户在开发大规模JavaScript应用的过程中遇到的语言本身的短板。\[6\]处理复杂JavaScript代码的挑战使得自定义工具在开发这门语言时很有必要。\[7\]

很多依赖于JavaScript的开发者通常用最终编译为JavaScript代码的另一种语言编写脚本，例如[CoffeeScript和Script](../Page/CoffeeScript.md "wikilink")\#（读作ScriptSharp）。一个明显的劣势是也许无法在那另一种语言中使用任何JavaScript细节的语言特性，如果那种语言不支持。

## 语言特性

TypeScript是一种给JavaScript添加特性的语言扩展。增加的功能包括：

  - [类型批注和](https://zh.wikipedia.org/wiki/类型批注 "wikilink")[编译时](https://zh.wikipedia.org/wiki/编译时 "wikilink")[类型检查](https://zh.wikipedia.org/wiki/类型系统 "wikilink")
  - [类型推断](https://zh.wikipedia.org/wiki/类型推断 "wikilink")
  - [类型擦除](../Page/类型擦除.md "wikilink")
  - [接口](../Page/介面_\(資訊科技\).md "wikilink")
  - [枚举](../Page/枚举.md "wikilink")
  - [Mixin](https://zh.wikipedia.org/wiki/Mixin "wikilink")
  - [泛型编程](https://zh.wikipedia.org/wiki/泛型编程 "wikilink")
  - [命名空间](../Page/命名空间.md "wikilink")
  - [元组](https://zh.wikipedia.org/wiki/元组 "wikilink")
  - [Await](https://zh.wikipedia.org/wiki/Await "wikilink")

以下功能是从ECMA 2015反向移植而来：

  - [类](../Page/类_\(计算机科学\).md "wikilink")
  - [模块](https://zh.wikipedia.org/wiki/模組_\(程式設計\) "wikilink")\[8\]
  - [lambda函数的箭头语法](../Page/匿名函数.md "wikilink")
  - 可选参数以及默认参数

在语法上，TypeScript很类似[JScript
.NET](../Page/JScript_.NET.md "wikilink")，它是另外一个微软对ECMA-262语言标准的实现，添加了对静态类型、经典的面向对象语言特性（如类、继承、接口和命名空间等）的支持。

### 类型批注

TypeScript通过类型批注提供在编译时启动类型检查的[静态类型](https://zh.wikipedia.org/wiki/类型系统 "wikilink")。这是可选的，而且可以忽略而使用JavaScript常规的动态类型。

``` JavaScript
function Add(left: number, right: number): number {
    return left + right;
}
```

对于基本类型的批注是`number`、`bool`和`string`。而弱或动态类型的结构则是`any`类型。

类型批注可以被导出到一个单独的“声明文件”，以让使用类型已被编译为JavaScript的TypeScript脚本中的类型信息仍可用。批注可以为一个现有的JavaScript库声明，就像已经为Node.js和jQuery所做的那样。

当类型没有给出时，TypeScript编译器利用[类型推断来推断类型](https://zh.wikipedia.org/wiki/类型推断 "wikilink")。如果由于缺乏声明而不能推断出类型，那么它的类型被视作默认的动态`any`类型。

### 声明文件

当一个TypeScript脚本被编译时，有一个产生作为编译后的JavaScript的[组件的一个](https://zh.wikipedia.org/wiki/基于组件的软件工程 "wikilink")[接口而起作用的声明文件](../Page/介面_\(資訊科技\).md "wikilink")（具有扩展名.d.ts）的选项。在这个过程中编译器基本上带走所有的函数和方法体而仅保留所导出类型的批注。当第三方开发者从TypeScript中使用它时，由此产生的声明文件就可以被用于描述一个JavaScript库或模块导出的虚拟的TypeScript类型。

声明文件的概念类似于[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")/[C++中](../Page/C++.md "wikilink")[头文件的概念](../Page/头文件.md "wikilink")。

``` javascript
   module Arithmetics {
       add(left: number, right: number): number;
       subtract(left: number, right: number): number;
       multiply(left: number, right: number): number;
       divide(left: number, right: number): number;
   }
```

类型声明文件可以为已存在的JavaScript库手写，就像为jQuery和Node.js所做的那样。

### 对ECMAScript 6的支持

TypeScript增加了对为即将到来的ECMAScript 6标准所建议的特性的支持。

如下为其构想：

  -
    类（以及继承）
    模块
    Arrow functions

尽管标准还未准备就绪，Microsoft说它的目标是使TypeScript的特性与建议的标准看齐。

#### 类

TypeScript支持集成了可选的类型批注支持的ECMAScript 6的类。

``` JavaScript
class Person {
    private name: string;
    private age: number;

    constructor(name: string, age: number){
        this.name = name;
        this.age = age;
    }

    toString(): string {
        return this.name + "(" + this.age + ")";
    }
}
```

#### 泛型

这种语言的规范说明一个未来的版本将会支持基于[类型擦除的](../Page/类型擦除.md "wikilink")[泛型编程](https://zh.wikipedia.org/wiki/泛型编程 "wikilink")。

## 与JavaScript的兼容性

TypeScript是JavaScript的一个超集。默认情况下编译器以ECMAScript
3（ES3）为目标但ES5也是受支持的一个选项。一个TypeScript应用可以利用已存在的JavaScript脚本。编译后的TypeScript脚本也可以在JavaScript中使用。

现有框架如jQuery和Node.js等受到完全支持。这些库的类型声明在源代码中提供。

## 支持的浏览器和平台

运行于任何平台上的任何[网页浏览器都可以运行TypeScript](../Page/网页浏览器.md "wikilink")：由于它仅仅是被编译为标准的JavaScript，一个脚本既可以被预编译为JavaScript，也可以通过为TypeScript包含JavaScript编译器实时编译。

## 开发工具

### 编译器

TypeScript 编译器，叫做`tsc`，本身也是用 TypeScript 写成的。可以将 TypeScript 编译为可以在任何
JavaScript 引擎（如浏览器）中执行的标准 JavaScript。编译器包也包含了脚本解释器，用来执行编译器。同时也有个
[Node.js](../Page/Node.js.md "wikilink") 包，在 Node.js 平台执行。

另外还有一个用JavaScript写的[alpha版本的客户端编译器](https://zh.wikipedia.org/wiki/软件版本周期#alpha "wikilink")，它在页面载入时，实时执行
TypeScript 代码。\[9\]

这种编译器的当前版本默认支持 ECMAScript 5。一个选项是允许以 ECMAScript 2015
为目标，以利用该版本独有的语言特性（比如生成器）。类尽管是
ECMAScript 2015 标准的一部分，在这两个模式下都可以使用。

### IDE和编辑器支持

  - 微软为[Visual Studio
    2012和](../Page/Microsoft_Visual_Studio.md "wikilink")[WebMatrix提供了一个](../Page/Microsoft_WebMatrix.md "wikilink")[插件](../Page/插件.md "wikilink")，在[Visual
    Studio 2013](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink")
    和 [Visual Studio
    2015](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink")
    中内嵌了支持，也为[Sublime
    Text](../Page/Sublime_Text.md "wikilink")、[Emacs和](../Page/Emacs.md "wikilink")[Vim提供了基本的文本编辑器支持](../Page/Vim.md "wikilink")。\[10\]

<!-- end list -->

  - [Visual Studio Code](../Page/Visual_Studio_Code.md "wikilink")
    是一个开源的、跨平台的代码编辑器，是微软在[Electron](https://zh.wikipedia.org/wiki/Electron "wikilink")
    的基础上开发的。它支持 TypeScript，同时也支持其他几个语言，同时提供了调试和自动代码补全的功能。
  - [JetBrains](https://zh.wikipedia.org/wiki/JetBrains公司 "wikilink")
    在他们的IDE系列中支持
    TypeScript，而且已经发行了具有部分支持的[PhpStorm](https://zh.wikipedia.org/wiki/PhpStorm "wikilink")
    6和[WebStorm](https://zh.wikipedia.org/wiki/WebStorm "wikilink") 6 以及
    [IntelliJ IDEA](../Page/IntelliJ_IDEA.md "wikilink")。\[11\]同时他们的
    Visual Studio 扩展 [ReSharper](https://www.jetbrains.com/resharper)
    8.1 也支持。\[12\]
  - [Atom](https://zh.wikipedia.org/wiki/Atom_\(文字编辑器\) "wikilink") 也有一个
    [TypeScript 插件](https://atom.io/packages/atom-typescript)， 由
    [Basarat](https://zh.wikipedia.org/wiki/Basarat_Ali_Syed "wikilink")
    开发，支持代码补全、跳转、格式化和快速完成。
  - 在线的[Cloud9 IDE](https://zh.wikipedia.org/wiki/Cloud9_IDE "wikilink")
    和 [Codenvy](https://zh.wikipedia.org/wiki/Codenvy "wikilink")
    也支持TypeScript。
  - [NetBeans](../Page/NetBeans.md "wikilink") 也有一个
    [插件](https://github.com/Everlaw/nbts).
  - [Eclipse IDE](../Page/Eclipse.md "wikilink") (Kepler) 也有一个
    [插件](https://github.com/palantir/eclipse-typescript)
  - [TypEcs](https://web.archive.org/web/20140720235749/http://www.typecsdev.com/)也是一个[Eclipse
    IDE插件](../Page/Eclipse.md "wikilink")
  - [Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink") 为
    [Sublime Text](../Page/Sublime_Text.md "wikilink") 提供了 [TypeScript
    插件](https://github.com/Microsoft/TypeScript-Sublime-Plugin)
  - 跨平台云 IDE
    [Codeanywhere](https://zh.wikipedia.org/wiki/Codeanywhere "wikilink")
    支持 TypeScript
  - [Webclipse](https://www.genuitec.com/products/webclipse/) 是一个
    Eclipse 插件，用于开发
    [TypeScript](https://www.genuitec.com/tech/jsjet-javascript-in-eclipse/using-typescript/)
    和 Angular 2.
  - [Angular IDE](https://www.genuitec.com/products/angular-ide/) 是一个可以从
    npm 安装的IDE，可以开发
    [TypeScript](https://www.genuitec.com/tech/jsjet-javascript-in-eclipse/using-typescript/)
    和 Angular 2 应用，集成终端支持
  - [Tide](https://github.com/ananthakumaran/tide) —
    [Emacs](../Page/Emacs.md "wikilink") 的 TypeScript 交互开发环境

## 开源

TypeScript是[开源的](../Page/开放源代码.md "wikilink")，其[源代码可以在](../Page/源代码.md "wikilink")[Apache
2
License下从](../Page/Apache许可证.md "wikilink")[Github获得](../Page/Github.md "wikilink")。这个项目由[Microsoft维护](https://zh.wikipedia.org/wiki/Microsoft "wikilink")，但是任何人可以通过在Github项目页发送反馈、提出建议和提交bugfixes而做出贡献。\[13\]

已有一些批评提到，TypeScript鼓励[强类型](https://zh.wikipedia.org/wiki/强类型 "wikilink")，当前只有[Microsoft
Visual
Studio支持在该语言上方便开发](../Page/Microsoft_Visual_Studio.md "wikilink")。最初的方案是在其它的编辑器上带来强类型，,
[代码完成和](../Page/自动完成.md "wikilink")[代码重构的功能](../Page/代码重构.md "wikilink")，但这可能不是一个简单的任务。\[14\]此外，支持TypeScript开发的Visual
Studio扩展不是开源的。最好的TypeScript开发体验是在[Microsoft
Windows上](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，\[15\]然而随着时间的流逝以及这种语言的开放性，加之编译器自我托管，而且用TypeScript自身写的，这很有可能会改变。通过编译器的源代码访问到AST（抽象句法树）以及详细的语言规范文档，社群已开始构建一个跨平台的编辑器，\[16\]\[17\]利用和Visual
Studio所用到的相同的语言服务以提供一个增强的编辑体验。编辑器仍然在概念检验的阶段，但已经运行于Linux,
OSX和Windows，提供功能强度相同的IntelliSense,代码完成和句法高亮方法。

## 参见

  - [JavaScript](../Page/JavaScript.md "wikilink")
  - [ECMAScript](../Page/ECMAScript.md "wikilink")

### 其它编译为JavaScript的语言

  - [CoffeeScript](../Page/CoffeeScript.md "wikilink")
  - [Dart](../Page/Dart.md "wikilink")
  - [HaXe](../Page/HaXe.md "wikilink")

## 参考资料

## 外部链接

  - [TypeScript官方网站](http://www.typescriptlang.org/)
  - [TypeScript示例](http://www.typescriptlang.org/Samples/)
  - [list of languages that compile to
    JS](https://github.com/jashkenas/coffee-script/wiki/List-of-languages-that-compile-to-JS)

[Category:微软软件](https://zh.wikipedia.org/wiki/Category:微软软件 "wikilink")
[Category:脚本语言](https://zh.wikipedia.org/wiki/Category:脚本语言 "wikilink")
[Category:基于对象的编程语言](https://zh.wikipedia.org/wiki/Category:基于对象的编程语言 "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")

1.
2.
3.
4.
5.  [Microsoft TypeScript: the JavaScript we need, or a solution looking
    for a problem? | Ars
    Technica](http://arstechnica.com/information-technology/2012/10/microsoft-typescript-the-javascript-we-need-or-a-solution-looking-for-a-problem/)
6.
7.
8.  <http://techcrunch.com/2012/10/01/microsoft-previews-new-javascript-like-programming-language-typescript/>
9.
10.
11.
12.
13. <https://github.com/Microsoft/TypeScript>
14.
15.
16.
17.