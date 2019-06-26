**Emmet**（以前名为**Zen
Coding**\[1\]）是一套面向[文本编辑器的](../Page/文本编辑器.md "wikilink")[插件](../Page/插件.md "wikilink")，它允许通过[内容辅助高速度的编写和编辑](../Page/内容辅助.md "wikilink")[HTML](../Page/HTML.md "wikilink")、[XML](../Page/XML.md "wikilink")、[XSL和其他结构化的代码格式](../Page/可扩展样式语言.md "wikilink")。此项目2008年由Vadim
Makeev发起\[2\]，并由Sergey Chikuyonok和其他Emmet用户基于Zen Coding
2.0的概念继续积极开发。\[3\]这套工具已经被一些高端的文本编辑器采纳，以及存在于Emmet团队开发或其他人独立实现的插件中。不过，Emmet独立于任何文本编辑器，它的引擎可以直接处理文本，而无需与任何特定软件相关。\[4\]

Emmet以[MIT許可證开源](../Page/MIT許可證.md "wikilink")。

## 功能

### 展开缩写

Emmet使用特定的语法来展开小段代码，它类似CSS选择器，使其成为完整的HTML代码。\[5\]例如，下列序列：

`div#page>div.logo+ul#navigation>li*5>a`

将展开为：

``` html4strict
<div id="page">
    <div class="logo"></div>
    <ul id="navigation">
        <li><a href=""></a></li>
        <li><a href=""></a></li>
        <li><a href=""></a></li>
        <li><a href=""></a></li>
        <li><a href=""></a></li>
    </ul>
</div>
```

展开缩写函数包含数个更加复杂的函数，例如用展开的代码包装一段代码。\[6\]

### 标签平衡

HTML配对匹配器允许用户定位当前光标位置的标签所对应的开启/闭合标签（Tag）。不同于其他HTML配对匹配器，Emmet会从光标的当前位置开始搜索，而非从头开始扫描文档。\[7\]

## 文本编辑器

Emmet团队为以下文本编辑器开发了插件：

  - [Aptana/Eclipse](../Page/Eclipse.md "wikilink")（跨平台）

  - [Notepad++](../Page/Notepad++.md "wikilink")（Windows）

  - [NetBeans](../Page/NetBeans.md "wikilink")（跨平台）

  - [TextMate](https://zh.wikipedia.org/wiki/TextMate "wikilink")（Mac）

  - （Mac）

  - （跨平台）

  - [PSPad](https://zh.wikipedia.org/wiki/PSPad "wikilink")（Windows）

  - \[\[文本框|

    <textarea>

    \]\]（基于浏览器）

  - （Linux/Windows/Mac）

  - [Brackets](../Page/Adobe_Brackets.md "wikilink")（跨平台）

下列文本编辑器由第三方组织用官方Emmet引擎开发了插件：

  - [Atom](../Page/Atom_\(文字編輯器\).md "wikilink")（跨平台）

  - [Dreamweaver](../Page/Adobe_Dreamweaver.md "wikilink")（Windows、Mac）

  - [Sublime Text](../Page/Sublime_Text.md "wikilink")（跨平台）

  - [Visual
    Studio](../Page/Microsoft_Visual_Studio.md "wikilink")（Windows）

  - [Visual Studio Code](../Page/Visual_Studio_Code.md "wikilink")（跨平台）

  - [gedit](https://zh.wikipedia.org/wiki/gedit "wikilink")（跨平台）

  - [AkelPad](../Page/AkelPad.md "wikilink")（Windows）

  - [UltraEdit](../Page/UltraEdit.md "wikilink")（Windows）

  - [TopStyle](../Page/Topstyle.md "wikilink")（Windows）

  - /（Mac）

  - [EmEditor](../Page/EmEditor.md "wikilink")（Windows）

  - [EditPlus](../Page/EditPlus.md "wikilink")（Windows）

下列文本编辑器的插件为独立开发，使用不同的Emmet引擎：

  - [Emacs](../Page/Emacs.md "wikilink")（跨平台）
  - [IntelliJ
    IDEA](../Page/IntelliJ_IDEA.md "wikilink")/[WebStorm](../Page/JetBrains.md "wikilink")/（跨平台）
  - [RJ TextEd](../Page/RJ_TextEd.md "wikilink")（Windows）
  - Tincta Pro（Mac）
  - [Vim](../Page/Vim.md "wikilink")（跨平台）

## 参考资料

## 外部链接

  - [Emmet project page](http://emmet.io/)
  - [Zen Coding Google Project
    Page](http://code.google.com/p/zen-coding/)
  - [How to Use Zen
    Coding](http://www.emeditor.com/text-editor-features/extensibility/plug-ins/snippets/how-to-use-zen-coding/)

[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")
[Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink")

1.
2.  [First announcement of Zen HTML and Zen CSS bundles for
    TextMate](http://pepelsbey.net/2008/08/zen-html/)
3.  [Zen Coding 2.0
    concept](http://pepelsbey.net/2009/04/zen-coding-concept/)
4.  [Smashing Magazine: Zen Coding: A Speedy Way To Write HTML/CSS
    Code](http://www.smashingmagazine.com/2009/11/21/zen-coding-a-new-way-to-write-html-code/)
5.  [Monday By Noon: The Art of zen-coding: Bringing Snippets to a New
    Level](https://mondaybynoon.com/the-art-of-zen-coding-bringing-snippets-to-a-new-level/)
6.  [Download Squad
    Review](http://www.downloadsquad.com/2010/04/30/if-you-code-html-zen-coding-will-change-your-life/)
7.  [Smashing Magazine: Zen Coding: A Speedy Way to Write HTML/CSS
    Code](http://www.smashingmagazine.com/2009/11/21/zen-coding-a-new-way-to-write-html-code/)