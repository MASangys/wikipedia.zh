，或，是[Windows
8中的一种跨平台应用程序架构](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")。WinRT支持的开发语言包括C++（一般包括[C++/CX](https://zh.wikipedia.org/wiki/Visual_C++_组件扩展 "wikilink")）和[托管语言](../Page/受控代碼.md "wikilink")[C\#和](https://zh.wikipedia.org/wiki/C_Sharp "wikilink")[VB.NET](https://zh.wikipedia.org/wiki/VB.NET "wikilink")，还有[JavaScript](../Page/JavaScript.md "wikilink")。WinRT应用程序同时原生支持[x86架构和](../Page/x86.md "wikilink")[ARM架构](https://zh.wikipedia.org/wiki/ARM "wikilink")，同时为了更好的安全性和稳定性，也支持运行在[沙盒环境中](https://zh.wikipedia.org/wiki/沙盒 "wikilink")。\[1\]\[2\]
由于依赖于一些增强[COM组件](../Page/组件对象模型.md "wikilink")，WinRT本质上是一基于COM的API。正因为其COM风格的基础，WinRT可以像COM那样轻松地实现多种语言代码之间的交互联系，不过本质上是非托管的本地API。API的定义存储在以”.winmd"为后缀的元数据文件中，格式编码遵循[ECMA
335的定义](../Page/通用语言架构.md "wikilink")，和[.Net使用的文件格式一样](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")，不过稍有改进。\[3\]使用统一的元数据格式相比于[P/Invoke](https://zh.wikipedia.org/wiki/平台叫用服務 "wikilink"),可以大幅减少WinRT调用.NET程序时的开销，同时拥有更简单的语法。\[4\]全新的[C++/CX](https://zh.wikipedia.org/wiki/Visual_C++_组件扩展 "wikilink")（组件扩展）语言，借用了一些[C++/CLI语法](https://zh.wikipedia.org/wiki/C++/CLI "wikilink")，允许授权和使用WinRT组件，但相比传统的C++下COM编程，对于程序员来说，有更少的[粘合可见性](https://zh.wikipedia.org/wiki/Glue_Code "wikilink")，同时对于混合类型的限制相比C++/CLI也更少。在新的称为Windows
Runtime C++ Template
Library(WRL)的模板类库的帮助下（就好似[ATL之于COM一样](https://zh.wikipedia.org/wiki/ATL "wikilink"))\[5\]，规范的C++代码（遵循COM化规范）也同样可以用在使用了WinRT组件的程序里\[6\]。不过MSDN建议使用C++/CX而不是WRL。\[7\]

## 技术

WinRT组件设计时即着眼于多种语言和API直接的互通性，包括本地代码、托管代码还有脚本。比如[C++/CX的组件扩展就被建议仅用于存在API壁垒的状况](https://zh.wikipedia.org/wiki/Visual_C++_组件扩展 "wikilink")，而不要用于其他目的。\[8\]
WinRT应用程序可以快速部署并运行在沙盒环境中。对运行库的测试表明其是构筑在[Win32
API之上的](../Page/Windows_API.md "wikilink")\[9\]。[.Net使用了类似的实现](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")。

## 服务

### 元数据

元数据描述了用于WinRT平台的代码。定义了一套[编程范式来实现编写可跨](../Page/编程范型.md "wikilink")[编程语言共享的](../Page/编程语言.md "wikilink")[面向对象的代码](https://zh.wikipedia.org/wiki/面向对象 "wikilink")。同时也支持[反射等服务](https://zh.wikipedia.org/wiki/面向反射编程 "wikilink")。

### 类型系统

#### WinRT组件

### 编程接口

#### C++（WRL,组件扩展）

#### .NET

#### JavaScript

### API

#### Windows类

#### 命名规范

#### 限制与规范

## 参考文献

## 外部链接

  - [WinRT documentation
    (preview)](http://msdn.microsoft.com/en-us/library/windows/apps/br211386.aspx)

## 参见

  -
{{-}}

[Category:微软](https://zh.wikipedia.org/wiki/Category:微软 "wikilink")
[Category:Windows_8](https://zh.wikipedia.org/wiki/Category:Windows_8 "wikilink")

1.
2.
3.  de Icaza, Miguel (2011-09-15). WinRT demystified. Personal blog of
    Miguel de Icaza, 15 September 2011. Retrieved from
    <http://tirania.org/blog/archive/2011/Sep-15.html>.
4.
5.
6.
7.
8.
9.