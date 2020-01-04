> 本文内容由[Angular](https://zh.wikipedia.org/wiki/Angular)转换而来。


**Angular** (通常是指 "**Angular 2+**" 或 "**Angular v2 及更高版本**")\[1\]\[2\] 是一个基于 [TypeScript](../Page/TypeScript.md "wikilink") 的 [开源](https://zh.wikipedia.org/wiki/开源 "wikilink") [Web 应用框架](../Page/Web应用框架.md "wikilink") 由 [Google](../Page/Google.md "wikilink") 的 Angular 团队以及社区中的一些个人和公司共同领导。Angular 是由 [AngularJS](https://zh.wikipedia.org/wiki/AngularJS "wikilink") 的同一个开发团队完全重写的。

## Angular 和 AngularJS 之间的区别

[Architecture_of_an_Angular_2_application.png](https://zh.wikipedia.org/wiki/File:Architecture_of_an_Angular_2_application.png "fig:Architecture_of_an_Angular_2_application.png")

在设计上，Angular 是 AngularJS 的完全重写。

  - Angular 没有“作用域”或控制器的概念，其架构中的主要角色是一些层次化的组件。\[3\]
  - Angular 具有不同的表达式语法，主要是用 `"[ ]"` 来表示[属性绑定](https://zh.wikipedia.org/wiki/Property_\(programming\) "wikilink")，以及用 `"( )"` 来表示[事件绑定](https://zh.wikipedia.org/wiki/Event_\(computing\) "wikilink")\[4\]
  - 模块化 – 许多核心功能都已模块化
  - Angular 建议使用 Microsoft 的 [TypeScript](../Page/TypeScript.md "wikilink") 语言，该语言引入了如下特性：
      - [静态类型](https://zh.wikipedia.org/wiki/Static_typing "wikilink")，包括 [泛型](https://zh.wikipedia.org/wiki/Generic_programming "wikilink")
      - [装饰器](https://zh.wikipedia.org/wiki/Decorator "wikilink")，语法上类似于[注解](https://zh.wikipedia.org/wiki/Annotation "wikilink")
  - [TypeScript](../Page/TypeScript.md "wikilink") 是 [ECMAScript 6](https://zh.wikipedia.org/wiki/ECMAScript_6 "wikilink") (ES6) 的超集，并且与 [ECMAScript 5](https://zh.wikipedia.org/wiki/ECMAScript_5 "wikilink") (即: JavaScript) [向下兼容](../Page/向下兼容.md "wikilink")。
  - [动态加载](https://zh.wikipedia.org/wiki/动态加载 "wikilink")
  - 异步模板编译
  - RxJS 提供了迭代式回调。RxJS 在状态可见性和调试方面有局限，不过可以使用诸如 ngReact 或 ngrx 之类的响应式第三方库来解决这些问题
  - 支持 Angular Universal，它可以在服务器上运行 Angular 应用程序

## 历史

### 命名

最初，团队将这份 AngularJS 的重写版本称为 “Angular 2”，但这在开发人员之间引起了混乱。为了明确起见，该团队宣布应该为这两个框架分别使用各自的术语，其中 “AngularJS” 专指 1.X 版本，而不带 “JS” 的 “Angular” 则专指版本2及更高版本。\[5\]

### 版本 2

在2014年10月22\~23日的 ng-Europe 会议上发布了Angular 2.0。\[6\]\[7\] 2.0 版的重大变化在开发人员之间引起了很大争议。\[8\] 2015年4月30日，Angular 开发组宣布 Angular 2 从 Alpha 推进到 Developer Preview。\[9\] Angular 2 于2015年12月推进至 Beta 版，\[10\] 并于 2016年5月发布了首个 rc 版本。\[11\] 其最终版本于2016年9月14日发布。

### 版本 4

2016年12月13日发布了 Angular 4，它跳过了版本号 3，以免由于路由模块的版本的未和其它模块对齐而造成混淆（路由模块在之前已经作为 v3.3.0 发布了）。\[12\] 其最终版本于2017年3月23日发布。\[13\] Angular 4 向后兼容 Angular2。\[14\]

Angular 4.3 版是次要版本，这意味着它没有破坏性变更，是 4.xx 的直接替代品。

版本 4.3 中的特性

  - 引入了 **HttpClient**，这是一个更小、更易于使用且功能更强大的库，可用于发起 HTTP 请求。
  - 一些新的**路由器生命周期**事件，用于追踪守卫和解析过程。生命周期事件（比如 NavigationStart）集合中加入了四个新事件：**GuardsCheckStart**, **GuardsCheckEnd**, **ResolveStart**, **ResolveEnd**。
  - 有条件的**禁用**动画。

### 版本 5

Angular 5 于2017年11月1日发布。\[15\] Angular 5 的主要改进包括对[渐进式 Web 应用的支持](https://zh.wikipedia.org/wiki/Progressive_web_app "wikilink")、一个构建优化器，以及一些与 Material Design 相关的改进。\[16\]

### 版本 6

Angular 6 于2018年5月4日发布\[17\]。这是一个主版本，其改进重点不在于底层框架，而在于工具链，其目的是让工具链能在将来与 Angular 一起快速发展，改进点主要包括：ng update、ng add、Angular Elements、Angular Material + CDK 组件库、Angular Material 初学者组件、CLI 工作空间、库支持、服务提供商的摇树优化、动画性能改进，以及 RxJS v6。

### 版本 7

Angular 7 于2018年10月18日发布。其升级主要集中在 Angular Material & CDK、虚拟滚动、选择框在无障碍方面的改进、支持对符合 Web 标准的自定义元素进行内容投影，以及对 Typescript 3.1、RxJS 6.3、Node 10 (仍然支持 Node 8) 的依赖库更新。\[18\]

### 版本 8

Angular 8 于2019年5月28日发布。特性包括：为所有应用代码进行差异化加载、针对惰性加载路由的动态导入、Web workers、支持 TypeScript 3.4，并且把 Angular Ivy 作为可选的预览特性。Angular Ivy 的可选预览特性包括：\[19\]

  - 生成的代码在运行时更易于阅读和调试
  - 更快的重新构建
  - 改进了有效载荷的大小
  - 改进了模板类型检查
  - 向后兼容

### 未来的版本

最值得期待的特性之一是 Ivy \[20\]，它是一个向后兼容的、基于增量式 DOM 架构的全新渲染引擎。Ivy 从设计之初就考虑到了[摇树优化](https://zh.wikipedia.org/wiki/tree_shaking "wikilink")，这意味着应用的发布包中只会包含那些在应用中真正用到的 Angular 部件。

可以预期，每一个版本都会向后兼容前一个版本。Google 承诺每年会进行两次升级。

### 支持政策与时间表

所有主版本都提供了 18 个月的支持。其中包括 6 个月的活跃支持，在此期间会定期发布更新和补丁。然后是12个月的长期支持（LTS），在此期间只会发布关键修复程序和安全补丁。\[21\]

| 版本     | 状态  | 发布         | 活跃期结束      | LTS 期结束    |
| ------ | --- | ---------- | ---------- | ---------- |
| ^8.0.0 | 活跃  | 2019-05-28 | 2019-11-28 | 2020-11-28 |
| ^7.0.0 | LTS | 2018-10-18 | 2019-04-18 | 2020-04-18 |
| ^6.0.0 | LTS | 2018-05-03 | 2018-11-03 | 2019-11-03 |

支持的 Angular 版本

## 库

### Angular Material

Angular Material 是一个 [UI](https://zh.wikipedia.org/wiki/User_interface "wikilink") 组件库，它在 Angular 中实现了 [Material Design](https://zh.wikipedia.org/wiki/Material_Design "wikilink")。\[22\]\[23\]\[24\]\[25\]

## 另请参阅

  - [AngularJS](https://zh.wikipedia.org/wiki/AngularJS "wikilink")
  - [React (JavaScript 库)](https://zh.wikipedia.org/wiki/React.js "wikilink")
  - [Vue.js](../Page/Vue.js.md "wikilink")

## 参考资料

## 外部链接

  - [官网](https://angular.io)
  - [已归档网站 (Angular 2)](https://v2.angular.io)
  - [JavaScript 框架之间的比较](https://en.wikipedia.org/wiki/Comparison_of_JavaScript_frameworks)

[Category:Google软件](https://zh.wikipedia.org/wiki/Category:Google软件 "wikilink") [Category:富網路應用程式框架](https://zh.wikipedia.org/wiki/Category:富網路應用程式框架 "wikilink") [Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink") [Category:AJAX](https://zh.wikipedia.org/wiki/Category:AJAX "wikilink")

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
20.
21.
22.
23.
24.
25.