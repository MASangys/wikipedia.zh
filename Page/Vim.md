**Vim**是从[vi发展出来的一个](../Page/vi.md "wikilink")[文本编辑器](../Page/文本编辑器.md "wikilink")。其代码补完、编译及错误跳转等方便编程的功能特别丰富，在程序员中被广泛使用。和[Emacs并列成为](../Page/Emacs.md "wikilink")[类Unix系统用户最喜欢的编辑器](../Page/类Unix系统.md "wikilink")。

Vim的第一个版本由[布萊姆·米勒在](../Page/布萊姆·米勒.md "wikilink")1991年发布。最初的简称是**V**i
**IM**itation，随着功能的不断增加，正式名称改成了**V**i
**IM**proved。现在是在[开放源代码方式下发行的](../Page/开放源代码.md "wikilink")[自由软件](../Page/自由软件.md "wikilink")。

## Vim历史

[布萊姆·米勒在](../Page/布萊姆·米勒.md "wikilink")80年代末购入他的[Amiga计算机时](../Page/Amiga.md "wikilink")，Amiga上还没有他最常用的编辑器vi。Bram从一个开源的vi复制Stevie开始，开发了Vim的1.0版本。最初的目标只是完全复制vi的功能，那个时候的Vim是**V**i
**IM**itation（模拟）的简称。1991年Vim 1.14版被"Fred Fish Disk
\#591"这个Amiga用的免费软件集所收录了。1992年1.22版本的Vim被移植到了UNIX和[MS-DOS上](../Page/MS-DOS.md "wikilink")。从那个时候开始，Vim的全名就变成**V**i
**IM**proved（改良）了。

在这之后，Vim加入了不计其数的新功能。做为第一个里程碑的是1994年的3.0版本加入了多窗口编辑（分割视窗）模式，可以在同一终端中同时编辑多个文件。1996年发布的Vim
4.0是第一个利用GUI（[图形用户界面](../Page/图形用户界面.md "wikilink")）的版本。1998年5.0版本的Vim加入了highlight（[语法高亮](../Page/語法高亮度顯示.md "wikilink")）功能。2001年的Vim
6.0版本加入了[代码折叠](../Page/語法摺疊.md "wikilink")、[插件](../Page/插件.md "wikilink")、多国语言支持、垂直分割视窗等功能。2006
年5月发布的Vim 7.0版更加入了拼字检查、上下文相关补全，标签页编辑等新功能。2008年8月发布的Vim 7.2，合并了Vim
7.1以来的所有修正补丁，并且加入了脚本的浮点数支持。现在最新的版本是 Vim 8 。

## 协议

目前，VIM是按照VIM许可证发布的开源软件，这个协议兼容[GPL](../Page/GPL.md "wikilink")。\[1\]它的协议中包含一些慈善条款，建议用户向[荷兰](../Page/荷兰.md "wikilink")[ICCF捐款](../Page/ICCF.md "wikilink")，用于帮助[乌干达的](../Page/乌干达.md "wikilink")[艾滋病患者](../Page/艾滋病.md "wikilink")。VIM启动时会显示-{「}-**Help
poor children in Uganda\!**-{」}-的字样，在中文版本中则是-{「}-**請幫助烏干達的可憐孩童\!**-{」}-。

## 学习曲线

对于大多数用户来说，Vim有着一个比较陡峭的[学习曲线](../Page/经验学习曲线.md "wikilink")。这意味着开始学习的时候可能会进展缓慢，但是一旦掌握一些基本操作之后，能大幅度提高编辑效率。为了帮助学习，Vim为初学者准备了Vim教学。通常可以在Unix系统命令行下输入"vimtutor"或者点击Windows系统桌面上的Vim教学图标进入。在Vim用户手册中更加详细的描述了Vim的基础和进阶功能。可以在Vim中输入":help
user-manual"进入用户手册。手册除了原始的英文版本之外，也被志愿者翻译成了各国文字，其中包括中文。

新用户也应该学习Vim的帮助系统。可以在Vim中输入不带参数的"help"来阅读主帮助文件。

## 模式

从*vi*衍生出来的Vim具有多种模式，这种独特的设计容易使初学者产生混淆。几乎所有的编辑器都会有插入和执行命令两种模式，并且大多数的编辑器使用了与Vim截然不同的方式：命令目錄（鼠标或者键盘驱动），组合键（通常通过control键（CTRL）和alt键（ALT）组成）或者鼠标输入。Vim和vi一样，仅仅通过键盘来在这些模式之中切换。这就使得Vim可以不用进行菜单或者鼠标操作，并且最小化组合键的操作。对文字录入员或者程序员可以大大增强速度和效率。

Vim具有6种基本模式和5种派生模式。

### 基本模式

#### 普通模式

在普通模式中，用的编辑器命令，比如移动光标，删除文本等等。这也是Vim启动后的默认模式。这正好和许多新用户期待的操作方式相反（大多数编辑器默认模式为插入模式）。

Vim强大的编辑能力来自于其普通模式命令。普通模式命令往往需要一个操作符结尾。例如普通模式命令"dd"删除当前行，但是第一个"d"的后面可以跟另外的移动命令来代替第二个"d"，比如用移动到下一行的"j"键就可以删除当前行和下一行。另外还可以指定命令重复次数，"2dd"（重复"dd"两次），和"dj"的效果是一样的。用户学习了各种各样的文本间移动／跳转的命令和其他的普通模式的编辑命令，并且能够灵活组合使用的话，能够比那些没有模式的编辑器更加高效的进行文本编辑。

在普通模式中，有很多方法可以进入插入模式。比较普通的方式是按"a"（append／追加）键或者"i"（insert／插入）键。

#### 插入模式

在这个模式中，大多数按键都会向文本[缓冲区中插入文本](../Page/缓冲区.md "wikilink")。大多数新用户希望文本编辑器编辑过程中一直保持这个模式。

在插入模式中，可以按ESC键回到普通模式。

#### 可视模式

这个模式与普通模式比较相似。但是移动命令会扩大高亮的文本区域。高亮区域可以是字符、行或者是一块文本。当执行一个非移动命令时，命令会被执行到这块高亮的区域上。Vim的"文本对象"也能和移动命令一样用在这个模式中。

#### 选择模式

这个模式和无模式编辑器的行为比较相似（Windows标准文本控件的方式）。这个模式中，可以用鼠标或者光标键高亮选择文本，不过输入任何字符的话，Vim会用这个字符替换选择的高亮文本块，并且自动进入插入模式。

#### 命令行模式

在命令行模式中可以输入会被解释成并执行的文本。例如执行命令（":"键），搜索（"/"和"?"键）或者过滤命令（"\!"键）。在命令执行之后，Vim返回到命令行模式之前的模式，通常是普通模式。

#### Ex模式

这和命令行模式比较相似，在使用":visual"命令离开Ex模式前，可以一次执行多条命令。

### 衍生模式

#### 操作符等待模式

这个派生模式指普通模式中，执行一个操作命令后Vim等待一个"动作"来完成这个命令。Vim也支持在操作符等待模式中使用"文本对象"作为动作，包括"aw"一个单词（a
word）、"as"一个句子（a sentence）、"ap"一个段落（a paragraph）等等。

比如，在普通模式下"d2as"删除当前和下一个句子。在可视模式下"apU"把当前段落所有字母大写。

#### 插入普通模式

这个模式是在插入模式下按下ctrl-o键的时候进入。这个时候暂时进入普通模式，执行完一个命令之后，Vim返回插入模式

#### 插入可视模式

这个模式是在插入模式下按下ctrl-o键并且开始一个可视选择的时候开始。在可视区域选择取消的时候，Vim返回插入模式。

#### 插入选择模式

通常这个模式由插入模式下鼠标拖拽或者shift方向键来进入。当选择区域取消的时候，Vim返回插入模式。

#### 替换模式

这是一个特殊的插入模式，在这个模式中可以做和插入模式一样的操作，但是每个输入的字符都会覆盖文本缓冲中已经存在的字符。在普通模式下按"R"键进入。

### 其他

#### Evim (Easy Vim)

Evim（Easy
Vim）是一个特殊的GUI模式用来尽量的表现的和"无模式"编辑器一样。编辑器自动进入并且停留在插入模式，用户-{只}-能通过菜单、鼠标和键盘控制键来对文本进行操作。可以在命令行下输入"evim"或者"vim
-y"进入。在Windows下，通常也可以点击桌面上Evim（Easy Vim）的图标。

## 功能

### 概要

  - 根据设定可以和原始vi几乎兼容（例外包括Vim不支持Vi的打开模式仅支持可视模式）
  - 多缓冲编辑
  - 任意个数的分割窗口（横，竖）
  - 具备[列表和](../Page/数组.md "wikilink")[字典功能的](../Page/哈希表.md "wikilink")[脚本语言](../Page/脚本语言.md "wikilink")
  - 可以在脚本中调用[Lua](../Page/Lua.md "wikilink")，[Perl](../Page/Perl.md "wikilink")，[Ruby](../Page/Ruby.md "wikilink")，[Python](../Page/Python.md "wikilink")，[Tcl](../Page/Tcl/Tk.md "wikilink")，[MzScheme](../Page/Scheme.md "wikilink")
  - 单词缩写功能
  - 动态单词补全
  - 多次撤销和重做
  - 对应400种以上[文本-{zh-hans:文件;
    zh-hant:檔案;}-的语法高亮](../Page/文本文件.md "wikilink")
  - [C](../Page/C语言.md "wikilink")／[C++](../Page/C++.md "wikilink")，[Perl](../Page/Perl.md "wikilink")，[Java](../Page/Java语言.md "wikilink")，[Ruby](../Page/Ruby.md "wikilink")，[Python等](../Page/Python.md "wikilink")40种以上语言的自动缩排
  - 利用ctags的标签中跳转
  - 崩溃后-{zh-hans:文件; zh-hant:檔案;}-恢复
  - 光标位置和打开的缓冲状态的保存复原（session功能）
  - 可以对两个-{zh-hans:文件; zh-hant:檔案;}-进行差分，同步功能的diff模式
  - 远程-{zh-hans:文件; zh-hant:檔案;}-编辑
  - Omni补全（上下文相关的补全）

### 帮助

Vim提供了文本形式的大量[文档](../Page/档案.md "wikilink")。并且Vim为了能够快速找到问题的解决方案，提供了各种各样的功能。根据Vim自己的帮助文件语法，[关键字会被各种各样醒目的颜色表示出来](../Page/关键字.md "wikilink")。可以用[快捷键像在](../Page/快捷键.md "wikilink")[浏览器中那样浏览帮助文件](../Page/网页浏览器.md "wikilink")。在GUI版的Vim中还可以使用[鼠标在帮助文件中移动](../Page/鼠标.md "wikilink")。方便用户寻找问题解决方案的功能还不止这些，其中最主要的是':helpgrep'命令。使用这条命令，用户可以在所有帮助文件中搜索想要察看的内容，用':cwindows'可以在另一个窗口中表示搜索的结果，根据搜索的结果自动在帮助文件内跳转。使用Vim的帮助功能，更可以在搜索的结果中，继续进行搜索。

### 程序开发相关功能

Vim是[程序员为了方便的编写程序而开发的](../Page/程序员.md "wikilink")[文本编辑器](../Page/文本编辑器.md "wikilink")。Vim具有可以让写代码的工作变得轻松愉快的各种各样功能。和[集成开发环境一样](../Page/集成开发环境.md "wikilink")，Vim具有可以配置成在编辑代码源文件之后直接进行[编译的功能](../Page/编译.md "wikilink")。编译出错的情况下，可以在另一个窗口中显示出错误。根据错误信息，直接跳转到正在编辑的源文件出错位置。代码高亮，文本折叠，上下文关联补完都是对程序员特别有帮助的功能（参考':help
quickfix'）

### 文件比较

可以逐行的对文本文件进行比较。Vim可以并排显示两个版本的文件，同时以各种各样的颜色来表示有差别部分。改变过、新增的或者是被删除的行会以颜色高亮来强调，没有改变过的部分则会被自动折叠表示。

对于已经在vim中打开的两个缓冲区，分别使用：diffthis之后将会对这两个缓冲区的内容进行比较，被比较的缓冲区可以是一个尚未存盘的内存中的缓冲区。

在比较两个文件的不同之处时，可以用：diffget和：diffput命令对每一处不同进行双向的同步，也可以在比较不同时对内容进行其它编辑，然后用：diffupdate对最新内容重新进行比较。

在浏览两个文件的不同之处时，可以用\[c和\]c两个Normal模式的命令直接跳转到上一个和下一个不同之处。

可以通过diffopt等选项更精细地控制哪些区别被认为是真正的不同之处，比如可以设置比较时忽略空白字符数量的不同。

Unix下可以用vimdiff命令来使用这个功能。

### 脚本语言

Vim有其[脚本语言Vimscript](../Page/脚本语言.md "wikilink")，使用Vimscript写成的[巨集可以实现自动执行复杂的操作](../Page/巨集.md "wikilink")。用
-s选项启动Vim，或者直接切换到[宏所在](../Page/宏.md "wikilink")[目录使用](../Page/目录.md "wikilink")':source'命令都可以执行Vim脚本。Vim的配置文件就可以作为Vim脚本的一个范例，Unix和Linux下配置文件名是.vimrc，Windows下配置文件一般叫做_vimrc。这个文件在启动Vim的时候被自动执行。Vimscript可以使用Vim
[命令行模式的所有](../Page/命令行.md "wikilink")[命令](../Page/命令_\(计算机\).md "wikilink")，使用':normal'命令还可以使用通常模式中的所有命令。Vimscript具有数字，字符串两种[数据类型](../Page/資料類型.md "wikilink")。用数字代表[布尔类型](../Page/布尔代数.md "wikilink")，0代表假，之外的数全代表真。最新的Vim
7更提供了[列表](../Page/列表.md "wikilink")、[关联数组等高级](../Page/哈希表.md "wikilink")[数据结构](../Page/数据结构.md "wikilink")。Vimscript也拥有各种比较[运算符和算术运算符](../Page/运算符.md "wikilink")。控制结构实现了if分支和for/while循环。用户还可以自己定义[函数](../Page/函数.md "wikilink")，并且可以使用超过100种的预定义函数。编写成的脚本文件可以在调试模式中进行调试。

## 不足之处

  - 大文件读取速度很慢（可在vim.org下载并安装名为LargeFile的Script来优化）[LargeFile](http://www.vim.org/scripts/script.php?script_id=1506)
  - 即使文件不大，如果有非常长的行的话，处理也会变慢（同上）
  - vim自己的脚本语言處理速度不快，若是安插過多腳本套件，啟動速度會變慢。
  - 存在类似Ctrl-1等不能被映射的键（限于某些字符终端的性能）

## Neovim

[Neovim-logo.svg](https://zh.wikipedia.org/wiki/File:Neovim-logo.svg "fig:Neovim-logo.svg")
**Neovim**\[2\]是Vim的一个重构版本，致力于成为Vim的超集（superset）\[3\]。Neovim和Vim配置文件采用相同的语法，所以Vim的配置文件也可以用于Neovim\[4\]。Neovim的第一个版本在2015年12月发行，并且能够完全兼容Vim的特性\[5\]。

Neovim项目从2014年发起，有许多来自Vim社区的开源开发者为其提供早期支持，包括更好的脚本支持、插件以及和更好地融合图形界面等\[6\]\[7\]。Neovim項目在2014年3月23号成功获得捐款，足够支持一名全职开发者\[8\]。还有很多其他发挥Neovim功能的前端正在开发中\[9\]\[10\]。

相比于Vim，Neovim的主要改进在于其支持异步加載插件。此外，Neovim的插件可以用任意语言编写，而Vim的插件仅能使用Vimscript进行编写\[11\]\[12\]。Neovim在Ubuntu发行版中可以用PPA源进行安装\[13\]，同时也支持采用其他包管理器进行安装\[14\]，因此在各种Linux发行版中都可以顺利安装。

## 参见

  - [Vi](../Page/Vi.md "wikilink")
  - [Emacs](../Page/Emacs.md "wikilink")
  - [编辑器之战](../Page/编辑器之战.md "wikilink")——Emacs和vi（Vim）文本编辑器的用户之间的竞争
  - [文件编辑器列表](../Page/文件编辑器列表.md "wikilink")
  - [文本编辑器比较](../Page/文本编辑器比较.md "wikilink")
  - [VimIM](../Page/VimIM.md "wikilink")——Vim的一个[插件](../Page/插件.md "wikilink")[中文输入法](../Page/中文输入法.md "wikilink")
  - [Vimperator](../Page/Vimperator.md "wikilink")

## 参考文献

## 外部链接

  - [vim.org](http://www.vim.org)（官方主页）
  - [Vim Chinese
    Documentation](http://vimcdoc.sourceforge.net/)（Vim中文文档）
  - [spanish
    passion](https://web.archive.org/web/20061017100558/http://www15.ocn.ne.jp/~tusr/index.html)
  - [VimWiki](http://vimwiki.net/)
  - [大家來學VIM（一個歷久彌新的編輯器）](http://www.study-area.org/tips/vim/index.html)
  - [碎碎念](https://web.archive.org/web/20061209122328/http://blah.blogsome.com/)（HQ零零E的Vim进阶blog）

[Category:Vi](https://zh.wikipedia.org/wiki/Category:Vi "wikilink")
[Category:文本编辑器](https://zh.wikipedia.org/wiki/Category:文本编辑器 "wikilink")
[Category:Linux文本编辑器](https://zh.wikipedia.org/wiki/Category:Linux文本编辑器 "wikilink")
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")

1.  \[[http://vimdoc.sourceforge.net/htmldoc/uganda.html\#copying\]Vim](http://vimdoc.sourceforge.net/htmldoc/uganda.html#copying%5DVim)
    documentation: uganda
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