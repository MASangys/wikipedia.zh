**Visual Studio Code**（简称**VS
Code**）是一个由[微软开发的](../Page/微软.md "wikilink")，同时支持[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[Linux](../Page/Linux.md "wikilink")、和[macOS系統且](https://zh.wikipedia.org/wiki/macOS "wikilink")[开放源代码的](../Page/开放源代码.md "wikilink")[程式碼编辑器](../Page/文本编辑器.md "wikilink")\[1\]，它支持[測試](https://zh.wikipedia.org/wiki/调试 "wikilink")，并内置了[Git
版本控制功能](../Page/Git.md "wikilink")，同时也具有开发环境功能，例如代码补全（类似于
[IntelliSense](https://zh.wikipedia.org/wiki/IntelliSense "wikilink")）、代码片段、和[代码重构等](../Page/代码重构.md "wikilink")，该编辑器支持用户個性化配置，例如改变主题颜色、键盘快捷方式等各种属性和参数，还在编辑器中内置了扩展程序管理的功能。

## 开发

Visual Studio Code 基于 [Electron](../Page/Electron.md "wikilink")
开发。Electron 是一个基于 [Chromium](../Page/Chromium.md "wikilink")
的项目，可用于开发基于 [Node.js](../Page/Node.js.md "wikilink")
的本地应用程序。Visual Studio Code 使用
[Blink](../Page/Blink.md "wikilink")
[排版引擎渲染](../Page/排版引擎.md "wikilink")[用户界面](../Page/用户界面.md "wikilink")。\[2\]雖然
Visual Studio Code 基於 Electron
框架，但並不是[Atom的](../Page/Atom_\(文字編輯器\).md "wikilink")[復刻](https://zh.wikipedia.org/wiki/復刻_\(軟體工程\) "wikilink")。Code是由「Monaco」的编辑器核心製作，与
[Visual Studio Team
Services](https://zh.wikipedia.org/wiki/Visual_Studio_Team_Services "wikilink")
相同。\[3\]

## 历史

微软在2015
[Build大会上宣布即將开发](https://zh.wikipedia.org/wiki/Build_\(developer_conference\) "wikilink")
Visual Studio Code，在2015年4月29日发布第一个预览版本。\[4\]

2015年11月18日，Code團隊將其在[GitHub上開源](../Page/GitHub.md "wikilink")，並採用[MIT許可證](../Page/MIT許可證.md "wikilink")，同時宣佈將支持擴展功能。\[5\]

2016年4月14日，Visual Studio Code正式版發佈，版本號爲1.0.0。\[6\]

## 功能和语言支持

Visual Studio
Code支持多種編程語言。與其他編輯器不同的是，Code的許多功能並不在選單中顯示，而是通過“命令面板”來調用。用戶可以在命令面板中搜索和輸入命令，從而實現指定功能，例如安裝插件、設置屬性等。默認地，打開命令面板的快捷鍵是。

Code具備了現代文本編輯器所具有的功能，例如更改[字符編碼](https://zh.wikipedia.org/wiki/字符編碼 "wikilink")、更換換行符等。

下表是Visual Studio Code原生支持的语言：\[7\]

| 特徵                | 程式語言                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| 语法高亮、括号匹配         | [批处理](../Page/批处理.md "wikilink"), [C++](../Page/C++.md "wikilink"), [Clojure](https://zh.wikipedia.org/wiki/Clojure "wikilink"), [CoffeeScript](../Page/CoffeeScript.md "wikilink"), [DockerFile](../Page/Docker.md "wikilink"), [F\#](https://zh.wikipedia.org/wiki/F# "wikilink"), [Go](../Page/Go.md "wikilink"), [Jade](https://zh.wikipedia.org/wiki/Jade "wikilink"), [Java](../Page/Java.md "wikilink"), [HandleBars](https://zh.wikipedia.org/wiki/Handlebars_\(模板系统\) "wikilink"), [Ini](https://zh.wikipedia.org/wiki/INI文件 "wikilink"), [Lua](../Page/Lua.md "wikilink"), [Makefile](https://zh.wikipedia.org/wiki/Makefile "wikilink"), [Markdown](https://zh.wikipedia.org/wiki/Markdown "wikilink"), [Objective-C](../Page/Objective-C.md "wikilink"), [Perl](../Page/Perl.md "wikilink"), [PHP](../Page/PHP.md "wikilink"), [PowerShell](https://zh.wikipedia.org/wiki/PowerShell "wikilink"), [Python](../Page/Python.md "wikilink"), [R](../Page/R语言.md "wikilink"), [Razor](../Page/ASP.NET_MVC_Framework.md "wikilink"), [Ruby](../Page/Ruby.md "wikilink"), [Rust](../Page/Rust.md "wikilink"), [SQL](../Page/SQL.md "wikilink"), [Visual Basic](../Page/Visual_Basic.md "wikilink"), [XML](../Page/XML.md "wikilink") |
| 代码片段              | [Groovy](../Page/Groovy.md "wikilink"), [Markdown](https://zh.wikipedia.org/wiki/Markdown "wikilink"), [PHP](../Page/PHP.md "wikilink"), [Swift](../Page/Swift_\(程式語言\).md "wikilink")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| IntelliSense、大纲显示 | [CSS](https://zh.wikipedia.org/wiki/CSS "wikilink"), [HTML](../Page/HTML.md "wikilink"), [JavaScript](../Page/JavaScript.md "wikilink"), [JSON](../Page/JSON.md "wikilink"), [Less](https://zh.wikipedia.org/wiki/LESS_\(层叠样式表\) "wikilink"), [Sass](https://zh.wikipedia.org/wiki/Sass_\(样式表语言\) "wikilink")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| 重构、寻找所有引用         | [C\#](../Page/C♯.md "wikilink"), [TypeScript](../Page/TypeScript.md "wikilink")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| 调试                | [JavaScript](../Page/JavaScript.md "wikilink"), [TypeScript](../Page/TypeScript.md "wikilink"), [C\#](../Page/C♯.md "wikilink"), [F\#](https://zh.wikipedia.org/wiki/F# "wikilink"), [C](../Page/C.md "wikilink"), [C++](../Page/C++.md "wikilink")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |

Visual Studio
Code對[C\#](../Page/C♯.md "wikilink")、[JavaScript](../Page/JavaScript.md "wikilink")、和[TypeScript的原生支持最爲完備](../Page/TypeScript.md "wikilink")。

此外Visual Studio
Code还支持擴展程序。通過安装擴展程序，Code可以支持更多新的语言、界面主题、測試器，以及更多的增值服务。Visual
Studio Code的扩展程序运行于独立的進展中，确保编辑器运行速度不会被拖慢。

## 参考资料

## 外部链接

  -
  - [Product blog](http://blogs.msdn.com/b/vscode/)

  - [Twitter](http://twitter.com/code)

  - [Atom Electron](http://electron.atom.io/)

  - [Github Page](https://github.com/Microsoft/vscode)

## 参见

  - [Atom](../Page/Atom_\(文字編輯器\).md "wikilink")

[Category:文本编辑器](https://zh.wikipedia.org/wiki/Category:文本编辑器 "wikilink")
[Category:Unix文本编辑器](https://zh.wikipedia.org/wiki/Category:Unix文本编辑器 "wikilink")
[Category:OS_X文本编辑器](https://zh.wikipedia.org/wiki/Category:OS_X文本编辑器 "wikilink")
[Category:Windows文本编辑器](https://zh.wikipedia.org/wiki/Category:Windows文本编辑器 "wikilink")
[Category:Linux文本编辑器](https://zh.wikipedia.org/wiki/Category:Linux文本编辑器 "wikilink")
[Category:HTML编辑器](https://zh.wikipedia.org/wiki/Category:HTML编辑器 "wikilink")
[Category:微軟開發工具](https://zh.wikipedia.org/wiki/Category:微軟開發工具 "wikilink")
[Category:Microsoft_Visual_Studio](https://zh.wikipedia.org/wiki/Category:Microsoft_Visual_Studio "wikilink")
[Category:微軟](https://zh.wikipedia.org/wiki/Category:微軟 "wikilink")

1.
2.
3.
4.
5.
6.
7.