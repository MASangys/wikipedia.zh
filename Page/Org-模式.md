**Org-mode** 是[文本编辑器](../Page/文本编辑器.md "wikilink")
[Emacs](../Page/Emacs.md "wikilink")
的一种支持内容分级显示的编辑模式。这种模式下可以创建待办列表，日志管理，做笔记，做工程计划或者写网页。Org-mode
通常启用于后缀名为 org
的纯文本文件，使用[星号标记有层次的内容](https://zh.wikipedia.org/wiki/星号 "wikilink")（如文章大纲、话题与子话题、嵌套代码），并提供一组函数用于读取并展示这类标记以及操纵内容（如折叠大纲内容、移动元素、更改待办项状态）。

Carsten Dominik 于 2003 年发明了
org-mode，用于管理自己的生活和工作。而自初次发布以来，有大量参与者向其贡献了代码。目前的维护者为
Bastien Guerry。从 Emacs 22 版本开始，Org-mode 已是 Emacs
默认安装的一部分\[1\]，作为一个主编辑模式存在。由于 Emacs
和 Org-mode 是分开发布的，所以经常可以从 org-mode 的官网下载到比已经集成到 Emacs 中版本要新的
org-mode。Org-mode 的大部分功能都可以使用 Emacs 的经典方法定制（通过菜单栏进行人性化配置或者修改 *.emacs*
配置文件）。

在 org-mode 流行以后，主流的文本编辑器，如
[Vim](../Page/Vim.md "wikilink")、[Atom](https://zh.wikipedia.org/wiki/Atom "wikilink")
和 [Visual Studio Code](../Page/Visual_Studio_Code.md "wikilink") 等，都对
org 文件类型拥有了社区扩展支持。

## 功能和基本语法

Org 文件并没有采用任何类似 [XML](../Page/XML.md "wikilink")
的[标记语言来支持其丰富的编辑特性](https://zh.wikipedia.org/wiki/标记语言 "wikilink")；相反，org
文件都是严格的纯文本格式。运行在 org-mode 的 Emacs 会自动解析这些文本并提供给用户操作文本结构的接口。

### 自定层级大纲

Org-mode 中使用星号标定一行所属层级，星号数量代表层级深度。

``` Org
* 这是一级大纲
** 这是其二级大纲
*** 这是更深的一级大纲
** 另一个二级大纲
```

此例中，后面几行都属于第一行的子节点，可以按
[Tab](https://zh.wikipedia.org/wiki/Tab "wikilink") 键切换是否折叠显示。整个 org
文档的基本结构就是若干棵[树](https://zh.wikipedia.org/wiki/树状结构 "wikilink")。

### 表格

Org-mode 使用纯文本方式管理表格。

``` Org
| First | Second | Third |
| Item1 |  Item2 | Item3 |
```

第一行会被视作表头。Emacs 会自动调整单元格的宽度以保持对齐。

### 超链接

Org-mode 中有多种超链接形式。

``` Org
# 基本链接
[[Wikipedia][https:/wikipedia.org|Wikipedia][https://wikipedia.org]]
[https://wikipedia.org]

# 内部链接
#+NAME: Anchor
[[Anchor|Anchor]] 表示链接到对应 NAME 标记的一行

# 链接到文件
[[file:archive.txt|file:archive.txt]] # 链接到 archive.txt 文件
[[file:project.org::*Wikipedia|file:project.org::*Wikipedia]] # 链接到 project.org 文件中名为 Wikipedia 的大纲

# Emacs Lisp 链接
[[elisp:org-agenda|elisp:org-agenda]] # 执行交互式 Elisp 命令
[[elisp:(find-file-other-frame_"example.org")|elisp:(find-file-other-frame "example.org")]] # 对 Elisp 代码求值
```

### 任务管理

通过在大纲项上附加状态标记，org-mode 对待办项（todo）管理有良好的支持。

``` Org
* Write a novel
** DONE First chapter
** TODO Second chapter [1/2]
*** DONE Design scenes
*** TODO Design figures
DEADLINE: <2018-11-20 Tue>
** TODO Third chapter
```

基本的任务状态为 TODO 和 DONE，用户可以自定义其他级别。除此之外，todo
列表可以给每一件事分别赋上不同的优先级和最后完成期限，每一个
todo 项目又可以细分成次级 todo 列表或者核对表，而且每一个项目还都可以分别加标签或者属性。除此之外，org-mode
还可以自动生成某一段时间以内的日程表\[2\]。

### 标签

Org-mode
对标签亦有良好的支持，在某行大纲内容后加入单词，以两侧冒号包围，即会被编辑器视作标签。可在标签视图内搜索到含特定标签的大纲内容。

### 文本格式

类似 [Markdown](https://zh.wikipedia.org/wiki/Markdown "wikilink")，org
文件中也有一套标记本文内容的方法。

``` Org
# 引文
#+BEGIN_QUOTE
Hacking is playful cleverness.
-- Richard Stallman
#+END_QUOTE

# 居中
#+BEGIN_CENTER
This sentence will be aligned to center.
#+END_CENTER

# 强调
*Bold*
/Italic/
_Underlined_
=Verbatim=
~Code~
+Delete+
```

### 代码块与文学编程

``` Org
#+BEGIN_SRC c
int main(void) {
  return 0;
}
#+END_SRC
```

Org-mode 从 7.0 版本引入“Babel”功能\[3\]，允许用户在 ".org" 文件中插入其他编程语言的代码块，不离开 Emacs
而运行这些代码块，并在 ".org" 文件中储存运行结果。Org-mode
自此具备了有限的文学编程能力，能够用来编写代码和文档混合的程序，提供可重复的计算机和统计实验记录\[4\]，或进行远程系统的运维工作并记录过程和结果等。

## 扩展

Org-mode可以使用下面的软件或者组件进行扩展。有些应用需要支持 org-mode 的第三方应用程序，这些程序都是自由软件。

  - Emacs 中链接个人信息的
    [BBDB](https://zh.wikipedia.org/wiki/BBDB "wikilink")；
  - 可以调用 URL 的各种浏览器；
  - 可以快速保存各种想法，主意或者链接的快照模式；
  - Emacs
    的邮件客户端如[Gnus](../Page/新闻组.md "wikilink")，[VM](https://zh.wikipedia.org/wiki/VM（邮件查看器） "wikilink")
    和
    [Wanderlust](https://zh.wikipedia.org/wiki/Wanderlust（软件） "wikilink")，mu4e\[5\]；
  - 可以运行在 Org-mode 下面的各种其他编程语言（*org-babel*）。

在移动端，也有支持 org-mode 查看或编辑的软件：

  - iOS
      - beorg
      - MobileOrg
  - Android
      - MobileOrg
      - MobileOrgNg
      - Orgzly

## 参见

  - [Emacs](../Page/Emacs.md "wikilink")
  - [Pandoc](../Page/Pandoc.md "wikilink")
  - [文档标记语言比较](../Page/文档标记语言比较.md "wikilink")
  - [轻量级标记语言](../Page/轻量级标记语言.md "wikilink")

## 外部链接

  - [Org-mode 官方网站](http://www.orgmode.org/)
  - Org-mode
    教程：[Org-mode视频和文本教程](http://orgmode.org/worg/org-tutorials/index.php)，[Worg](http://orgmode.org/worg/index.php)

## 参考文献

<references/>

[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")
[Category:Emacs](https://zh.wikipedia.org/wiki/Category:Emacs "wikilink")
[Category:标记语言](https://zh.wikipedia.org/wiki/Category:标记语言 "wikilink")

1.
2.
3.  <https://orgmode.org/worg/org-contrib/babel/>
4.
5.  <http://www.djcbsoftware.nl/code/mu/mu4e.html>