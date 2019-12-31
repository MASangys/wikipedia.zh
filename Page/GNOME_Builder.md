> 本文内容由[GNOME Builder](https://zh.wikipedia.org/wiki/GNOME_Builder)转换而来。


**GNOME Builder**是[GNOME](../Page/GNOME.md "wikilink")[桌面环境](../Page/桌面环境.md "wikilink")的[集成开发环境](../Page/集成开发环境.md "wikilink")（IDE）。其首个版本发布于2015年3月24日。\[1\]

## 特性

  - GNOME Builder has been addressing "GNOME App" developers from its inception on,\[2\] and aims to integrate well with other Gnome desktop development tools.
  - 集成对[GNOME Devhelp的支持](https://zh.wikipedia.org/wiki/GNOME_Devhelp "wikilink")。
  - The version control system [git](https://zh.wikipedia.org/wiki/Git_\(software\) "wikilink") can be used by GNOME Builder to highlight code additions and changes.
  - 支持开发[flatpak应用](https://zh.wikipedia.org/wiki/flatpak "wikilink")。
  - GNOME Builder借助于[GtkSourceView](https://wiki.gnome.org/Projects/GtkSourceView)为多种编程语言提供语法高亮功能。
  - 支持C系语言（[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[C++](../Page/C++.md "wikilink")等）、[Vala](../Page/Vala.md "wikilink") 和[Python](../Page/Python.md "wikilink")的[代码补全](https://zh.wikipedia.org/wiki/代码补全 "wikilink")，其他语言正在开发中。
  - 支持安装[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[Python 3以及](../Page/Python.md "wikilink")[Vala](../Page/Vala.md "wikilink")编写的插件。\[3\]
  - GNOME Builder has basic support for many programming languages, and will offer additional features for languages that are supported by [GObject Introspection](https://zh.wikipedia.org/wiki/GObject_Introspection "wikilink").

At [GUADEC2016](https://zh.wikipedia.org/wiki/GNOME_Users_And_Developers_European_Conference "wikilink") Christian Hergert provided a  of an upcoming version of GNOME Builder. More features will be integrated once [GTK+ Scene Graph Kit](https://zh.wikipedia.org/wiki/GTK+_Scene_Graph_Kit "wikilink") will have been merged into GTK+. [sysprof](https://zh.wikipedia.org/wiki/sysprof "wikilink") was forked and its version number bumped from 1.2.0 to 3.20\[4\] and was integrated in version 3.22.\[5\]

Gnome Builder uses Gnome Code Assistance to provide code diagnostics for CSS, HTML, JS, JSON, Python, Ruby, SCSS, [Shell script](https://zh.wikipedia.org/wiki/Shell_script "wikilink") and XML. Jedi is used for code completion for Python. [Clang](../Page/Clang.md "wikilink") is used for code assistance for the C-like languages. Rust diagnostics are provided by using the [Language Server Protocol](https://zh.wikipedia.org/wiki/Language_Server_Protocol "wikilink") to communicate with the Rust Language Server.

## 用户界面

Most of the interface is dedicated to the centrally positioned code editor. The editor automatically recognizes most programming languages and will highlight the text accordingly. When a [version control system](https://zh.wikipedia.org/wiki/version_control_system "wikilink") is used, colored bars next to the line numbers indicate changes to those lines. For supported languages, additional symbols highlight lines that contain errors or poorly formatted code.

Builder可使用类Vim、类Emacs的键绑定。

Around the code-editor, additional panels can be toggled into view. These include a project-tree, a terminal-window, and a help-browser. The project tree allows the user to perform file and folder operations.

## 开发

GNOME Builder开发项目于2015年发起[众筹](https://zh.wikipedia.org/wiki/众筹 "wikilink")。筹得资金达到其预期目标的169%（55360[美元](../Page/美元.md "wikilink")）。\[6\]

## 版本历史

  - 3.16.0：2015年3月24日发布首个版本。\[7\]
  - 3.16.1：此版本发布于2015年4月13日，包括有关UI（[用户界面](../Page/用户界面.md "wikilink")）、文件管理和语法高亮的许多改进。\[8\]\[9\]
  - 3.16.2：发布于2015年4月16日，修复许多Bug并对项目管理功能进行了改进。\[10\]\[11\]\[12\]\[13\]
  - 3.16.3: Released on 18 May 2015 this update included a source-overview-map for scrolling and updates to the preference-dialogs.\[14\]
  - 3.18.0：于2015年9月23日与GNOME 3.18的其他组件同时发布。\[15\]
  - 3.18.1 was released on 15 October 2015 and brought many improvements to Vala code completion and error-hinting. The Jedi-plugin for Python code-completion was improved as well.\[16\]
  - 3.20：发布于2016年3月23日。\[17\]
  - 3.20.4：发布于2016年5月6日。\[18\]\[19\]
  - 3.22: This version introduced preliminary support for [Rust](https://zh.wikipedia.org/wiki/Rust_\(programming_language\) "wikilink") and its Gtk bindings.\[20\]
  - 3.22.4: Updates to the build system and the Flatpak integration.\[21\]

## 参见

  - [Glade Interface Designer](https://zh.wikipedia.org/wiki/Glade_Interface_Designer "wikilink")
  - [Anjuta](../Page/Anjuta.md "wikilink")
  - [Devhelp](https://zh.wikipedia.org/wiki/Devhelp "wikilink")

## 参考文献

## 外部链接

  -
  -
  -
  - FOSDEM2013: [Has the GNOME community gone crazy?](http://video.fosdem.org/2013/maintracks/Janson/Has_the_GNOME_community_gone_crazy_.webm) - Video

[Category:GNOME软件](https://zh.wikipedia.org/wiki/Category:GNOME软件 "wikilink") [Category:集成开发环境](https://zh.wikipedia.org/wiki/Category:集成开发环境 "wikilink") [Category:Software_that_uses_Meson](https://zh.wikipedia.org/wiki/Category:Software_that_uses_Meson "wikilink")

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