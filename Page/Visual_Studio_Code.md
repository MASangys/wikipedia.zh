> 本文内容由[Visual Studio Code](https://zh.wikipedia.org/wiki/Visual_Studio_Code)转换而来。


**Visual Studio Code**（简称**VS Code**）是一个由[微软](../Page/微软.md "wikilink")开发，同时支持[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink") 、 [Linux](../Page/Linux.md "wikilink")和[macOS等操作系統且](https://zh.wikipedia.org/wiki/macOS "wikilink")[开放源代码](../Page/开放源代码.md "wikilink")的[程式碼编辑器](../Page/文本编辑器.md "wikilink")\[1\]，它支持[測試](https://zh.wikipedia.org/wiki/调试 "wikilink")，并内置了[Git 版本控制功能](../Page/Git.md "wikilink")，同时也具有开发环境功能，例如代码补全（类似于 [IntelliSense](https://zh.wikipedia.org/wiki/IntelliSense "wikilink")）、代码片段和[代码重构](../Page/代码重构.md "wikilink")等，该编辑器支持用户個性化配置，例如改变主题颜色、键盘快捷方式等各种属性和参数，同时还在编辑器中内置了扩展程序管理的功能。

在2019年的[Stack Overflow组织的开发者调研中](../Page/Stack_Overflow.md "wikilink")，VS Code被认为是最受开发者欢迎的开发环境，据调查87317名受访者中有50.7%的受访者声称正在使用VS Code\[2\]。

## 开发

Visual Studio Code 基于 [Electron](../Page/Electron.md "wikilink") 开发。Electron 是一个基于 [Chromium](../Page/Chromium.md "wikilink") 的项目，可用于开发基于 [Node.js](../Page/Node.js.md "wikilink") 的本地应用程序。Visual Studio Code 使用 [Blink](../Page/Blink.md "wikilink") [排版引擎](../Page/排版引擎.md "wikilink")渲染[用户界面](../Page/用户界面.md "wikilink")。\[3\]雖然 Visual Studio Code 基於 Electron 框架，但並不是[Atom的](../Page/Atom_\(文字編輯器\).md "wikilink")[復刻](https://zh.wikipedia.org/wiki/復刻_\(軟體工程\) "wikilink")。Code是由「Monaco」的编辑器核心製作，与 [Visual Studio Team Services](https://zh.wikipedia.org/wiki/Visual_Studio_Team_Services "wikilink") 相同。\[4\]

## 历史

微软在2015 [Build大会上宣布即將开发](https://zh.wikipedia.org/wiki/Build_\(developer_conference\) "wikilink") Visual Studio Code，并于2015年4月29日发布第一个预览版本。\[5\]

2015年11月18日，Code團隊將其在[GitHub](../Page/GitHub.md "wikilink")上開源，並採用[MIT許可證](../Page/MIT許可證.md "wikilink")，同時宣佈將支持擴展功能。\[6\]

2016年4月14日，Visual Studio Code正式版發佈，版本號爲1.0.0。\[7\]

## 功能和语言支持

Visual Studio Code 支持多種編程語言，集成终端，可以在編輯器中執行腳本、編譯軟體、調試腳本、設置斷點、做版本管理。

VSCode 的許多功能可以通過“命令面板”來調用。用戶可以在命令面板中搜索和輸入命令，從而實現指定功能，例如安裝擴展、設置屬性等。默认情况下，打開命令面板的快捷鍵是 。

內建一套易於使用的配置界面，同時支持使用 json 文件配置，在控制面板做的所有設定都會自動保存到 json。方便備份或部署。

Code具備了現代文本編輯器所具有的功能，例如更改[字符編碼](../Page/字符编码.md "wikilink")、更換換行符、語法高亮、支援正則表達式、安裝擴展、建立 snippet 等。

下表为 Visual Studio Code 原生支持的编程语言：\[8\]

| 特徵                | 程式語言                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 语法高亮、括号匹配         | [批处理](../Page/批处理.md "wikilink"), [C++](../Page/C++.md "wikilink"), [Vala](../Page/Vala.md "wikilink"), [Clojure](../Page/Clojure.md "wikilink"), [CoffeeScript](../Page/CoffeeScript.md "wikilink"), [Docker](../Page/Docker.md "wikilink")File, [F\#](https://zh.wikipedia.org/wiki/F# "wikilink"), [Go](../Page/Go.md "wikilink"), [Jade](https://zh.wikipedia.org/wiki/Jade "wikilink"), [Java](../Page/Java.md "wikilink"), [HandleBars](https://zh.wikipedia.org/wiki/Handlebars_\(模板系统\) "wikilink"), [Ini](https://zh.wikipedia.org/wiki/INI文件 "wikilink"), [Lua](../Page/Lua.md "wikilink"), [Makefile](https://zh.wikipedia.org/wiki/Makefile "wikilink"), [Markdown](https://zh.wikipedia.org/wiki/Markdown "wikilink"), [Objective-C](../Page/Objective-C.md "wikilink"), [Perl](../Page/Perl.md "wikilink"), [PHP](../Page/PHP.md "wikilink"), [PowerShell](https://zh.wikipedia.org/wiki/PowerShell "wikilink"), [Python](../Page/Python.md "wikilink"), [R](../Page/R语言.md "wikilink"), [Razor](../Page/ASP.NET_MVC_Framework.md "wikilink"), [Ruby](../Page/Ruby.md "wikilink"), [Rust](../Page/Rust.md "wikilink"), [SQL](../Page/SQL.md "wikilink"), [Visual Basic](../Page/Visual_Basic.md "wikilink"), [XML](../Page/XML.md "wikilink")，[Tex](https://zh.wikipedia.org/wiki/Tex "wikilink") |
| 代码片段              | [Groovy](../Page/Groovy.md "wikilink"), [Markdown](https://zh.wikipedia.org/wiki/Markdown "wikilink"), [PHP](../Page/PHP.md "wikilink"), [Swift](../Page/Swift_\(程式語言\).md "wikilink")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| IntelliSense、大纲显示 | [CSS](https://zh.wikipedia.org/wiki/CSS "wikilink"), [HTML](../Page/HTML.md "wikilink"), [JavaScript](../Page/JavaScript.md "wikilink"), [JSON](../Page/JSON.md "wikilink"), [Less](https://zh.wikipedia.org/wiki/LESS_\(层叠样式表\) "wikilink"), [Sass](https://zh.wikipedia.org/wiki/Sass_\(样式表语言\) "wikilink")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| 重构、寻找所有引用         | [C\#](../Page/C♯.md "wikilink"), [TypeScript](../Page/TypeScript.md "wikilink")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| 调试                | [JavaScript](../Page/JavaScript.md "wikilink"), [TypeScript](../Page/TypeScript.md "wikilink"), [C\#](../Page/C♯.md "wikilink"), [F\#](https://zh.wikipedia.org/wiki/F# "wikilink"), [C](../Page/C.md "wikilink"), [C++](../Page/C++.md "wikilink")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |

Visual Studio Code 對 [C\#](../Page/C♯.md "wikilink")、[JavaScript](../Page/JavaScript.md "wikilink")、和 [TypeScript](../Page/TypeScript.md "wikilink") 等编程语言的原生支持最爲完善。

此外 Visual Studio Code 还支持擴展程序。通過安装擴展程序，Code 可以支持更多新的语言、界面主题、測試器，以及更多的增值服务。Visual Studio Code 的扩展程序运行于独立的进程中，以保证编辑器的运行速度不受干扰。

## 参考资料

## 外部链接

  -
  - [Product blog](http://blogs.msdn.com/b/vscode/)

  - [Twitter](http://twitter.com/code)

  - [Atom Electron](http://electron.atom.io/)

  - [Github Page](https://github.com/Microsoft/vscode)

## 参见

  - [Atom](../Page/Atom_\(文字編輯器\).md "wikilink")

[Category:文本编辑器](https://zh.wikipedia.org/wiki/Category:文本编辑器 "wikilink") [Category:Unix文本编辑器](https://zh.wikipedia.org/wiki/Category:Unix文本编辑器 "wikilink") [Category:OS_X文本编辑器](https://zh.wikipedia.org/wiki/Category:OS_X文本编辑器 "wikilink") [Category:Windows文本编辑器](https://zh.wikipedia.org/wiki/Category:Windows文本编辑器 "wikilink") [Category:Linux文本编辑器](https://zh.wikipedia.org/wiki/Category:Linux文本编辑器 "wikilink") [Category:HTML编辑器](https://zh.wikipedia.org/wiki/Category:HTML编辑器 "wikilink") [Category:微軟開發工具](https://zh.wikipedia.org/wiki/Category:微軟開發工具 "wikilink") [Category:Microsoft_Visual_Studio](https://zh.wikipedia.org/wiki/Category:Microsoft_Visual_Studio "wikilink") [Category:微軟](https://zh.wikipedia.org/wiki/Category:微軟 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.