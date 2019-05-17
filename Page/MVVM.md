[MVVMPattern.png](https://zh.wikipedia.org/wiki/File:MVVMPattern.png "fig:MVVMPattern.png")
**MVVM**（）是一种软件。

MVVM有助于将[图形用户界面的开发与](../Page/图形用户界面.md "wikilink")或[后端逻辑](https://zh.wikipedia.org/wiki/前端和后端 "wikilink")（*数据模型*）的开发[分离开来](../Page/关注点分离.md "wikilink")，这是通过[置标语言或GUI代码实现的](../Page/置标语言.md "wikilink")。MVVM的*视图模型*是一个值转换器，\[1\]
这意味着视图模型负责从模型中暴露（转换）[数据对象](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")，以便轻松管理和呈现对象。在这方面，视图模型比视图做得更多，并且处理大部分视图的显示逻辑。\[2\]
视图模型可以实现，组织对视图所支持的[用例集的后端逻辑的访问](../Page/用例.md "wikilink")。

MVVM是[马丁·福勒的PM](../Page/马丁·福勒.md "wikilink")（）设计模式的变体。\[3\]\[4\]
MVVM以相同的方式抽象出视图的状态和行为，\[5\]
但PM以*不*依赖于特定用户界面平台的方式抽象出视图（建立了*视图模型*）。
MVVM和PM都来自[MVC模式](../Page/MVC.md "wikilink")。

MVVM由[微软架构师Ken](../Page/微软.md "wikilink") Cooper和Ted
Peters开发，通过利用[WPF](../Page/Windows_Presentation_Foundation.md "wikilink")（微软[.NET图形系统](../Page/.NET框架.md "wikilink")）和[Silverlight](https://zh.wikipedia.org/wiki/Microsoft_Silverlight "wikilink")（WPF的互联网应用衍生品）的特性来简化用户界面的[事件驅動程式設計](../Page/事件驅動程式設計.md "wikilink")。\[6\]
微软的WPF和Silverlight架构师之一John Gossman于2005年在他的博客上发表了MVVM。

MVVM也被称为**model-view-binder**，特别是在不涉及.NET平台的实现中。[ZK](../Page/ZK.md "wikilink")（Java写的一个[Web应用框架](../Page/Web应用框架.md "wikilink")）和[KnockoutJS](https://zh.wikipedia.org/wiki/KnockoutJS "wikilink")（一个[JavaScript](../Page/JavaScript.md "wikilink")[库](../Page/函式庫.md "wikilink")）使用model-view-binder。\[7\]\[8\]\[9\]

## MVVM模式的组成部分

  - 模型
    *模型*是指代表真实状态内容的[领域模型](https://zh.wikipedia.org/wiki/领域模型 "wikilink")（面向对象），或指代表内容的（以数据为中心）。

<!-- end list -->

  - 视图
    就像在[MVC和](../Page/MVC.md "wikilink")[MVP模式中一样](../Page/Model-view-presenter.md "wikilink")，视图是用户在屏幕上看到的结构、布局和外观（UI）。\[10\]

<!-- end list -->

  - 视图模型
    *视图模型*是暴露公共属性和命令的视图的抽象。MVVM没有MVC模式的控制器，也没有MVP模式的presenter，有的是一个*绑定器*。在视图模型中，绑定器在视图和之间进行通信。\[11\]

<!-- end list -->

  - 绑定器
    声明性数据和命令绑定隐含在MVVM模式中。在Microsoft中，绑定器是一种名为[XAML的](../Page/XAML.md "wikilink")[标记语言](../Page/置标语言.md "wikilink")。\[12\]
    绑定器使开发人员免于被迫编写样板式逻辑来同步视图模型和视图。在微软的堆之外实现时，声明性数据绑定技术的出现是实现该模式的一个关键因素。\[13\]\[14\]

## 理论基础

MVVM旨在利用WPF中的[数据绑定函数](../Page/数据绑定.md "wikilink")，通过从视图层中几乎删除所有[GUI代码](../Page/图形用户界面.md "wikilink")（[代码隐藏](../Page/ASP.NET.md "wikilink")），更好地促进视图层开发与模式其余部分的分离。\[15\]
不需要[用户体验](https://zh.wikipedia.org/wiki/用户体验设计 "wikilink")（UX）开发人员编写GUI代码，他们可以使用框架标记语言（如[XAML](../Page/XAML.md "wikilink")），并创建到应用程序开发人员编写和维护的视图模型的数据绑定。角色的分离使得交互设计师可以专注于用户体验需求，而不是对业务逻辑进行编程。这样，应用程序的层次可以在多个工作流中进行开发以提高生产力。即使一个开发人员在整个代码库上工作，视图与模型的适当分离也会更加高效，因为基于最终用户反馈，用户界面通常在开发周期中经常发生变化，而且处于开发周期后期。

MVVM模式试图获得MVC提供的功能性开发分离的两个优点，同时利用[数据绑定的优势和通过绑定数据的框架尽可能接近纯应用程序模型](../Page/数据绑定.md "wikilink")。\[16\]\[17\]\[18\]
它使用绑定器、视图模型和任何业务层的数据检查功能来验证传入的数据。结果是模型和框架驱动尽可能多的操作，消除或最小化直接操纵视图的应用程序逻辑（如代码隐藏）。

## 批评

对这种模式的批评来自MVVM的创造者John
Gossman本人，\[19\]他指出，实现MVVM的开销对于简单的UI操作是“过度的”。他说，对于更大的应用来说，推广ViewModel变得更加困难。而且，他说明了非常大的应用程序中的数据绑定会导致相当大的内存消耗。

## .NET中的实现

### .NET框架

  -
  - [DotVVM](https://www.dotvvm.com/)开源项目

## 参见

  - [Omi.js
    MVVM](https://github.com/Tencent/omi/blob/master/tutorial/omi-mvvm.cn.md)
  - [Common layers in an information system logical
    architecture](https://zh.wikipedia.org/wiki/Common_layers_in_an_information_system_logical_architecture "wikilink")
  - [Model–view–controller](../Page/MVC.md "wikilink")
  - [Model–view–presenter](../Page/Model-view-presenter.md "wikilink")
  - [Ember.js](https://zh.wikipedia.org/wiki/Ember.js "wikilink")

## 参考文献

## 外部链接

  -
  - [MVVM validation
    logic](https://github.com/simbo1905/ZkToDo2/blob/b97b353d399ad012577bef7f880f9e3167ed70a3/src/main/java/org/zkforge/zktodo2/ZkToDoViewModel.java),
    written in Java by Tim Clare

  -
  -
[Category:软件设计模式](https://zh.wikipedia.org/wiki/Category:软件设计模式 "wikilink")
[Category:.NET框架術語](https://zh.wikipedia.org/wiki/Category:.NET框架術語 "wikilink")

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