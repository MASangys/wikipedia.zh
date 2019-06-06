**ed**是用于[Unix和](https://zh.wikipedia.org/wiki/Unix "wikilink")[类Unix操作系统的](https://zh.wikipedia.org/wiki/类Unix "wikilink")[行编辑器](https://zh.wikipedia.org/wiki/行编辑器 "wikilink")。它是Unix操作系统在1969年8月开发出来的最初部分\[1\]。它仍旧是[POSIX和](https://zh.wikipedia.org/wiki/POSIX "wikilink")[Open
Group的基于Unix的操作系统标准的一部分](https://zh.wikipedia.org/wiki/The_Open_Group "wikilink")\[2\]，与更加完备的全屏幕编辑器[vi并列](https://zh.wikipedia.org/wiki/vi "wikilink")。

## 历史和影响

ed文本编辑器是Unix操作系统最初的三个要件之一：[汇编器](https://zh.wikipedia.org/wiki/汇编器 "wikilink")、[编辑器和](https://zh.wikipedia.org/wiki/行编辑器 "wikilink")[shell](../Page/Unix_shell.md "wikilink")，它们是[Ken
Thompson在](https://zh.wikipedia.org/wiki/Ken_Thompson "wikilink")1969年8月于[AT\&T贝尔实验室在](https://zh.wikipedia.org/wiki/AT&T贝尔实验室 "wikilink")[PDP-7上开发的](https://zh.wikipedia.org/wiki/PDP-7 "wikilink")\[3\]。ed的很多特征来自[qed文本编辑器](https://zh.wikipedia.org/wiki/QED_\(文本编辑器\) "wikilink")，它是Thompson的母校[加州大学伯克利分校开发的](https://zh.wikipedia.org/wiki/加州大学伯克利分校 "wikilink")\[4\]
。Thompson非常熟悉qed，曾经在[CTSS和](https://zh.wikipedia.org/wiki/相容分时系统 "wikilink")[Multics系统上重新实现过它](../Page/Multics.md "wikilink")。Thompson版本的qed曾因首先实现了[正则表达式而著名](../Page/正则表达式.md "wikilink")。正则表达式也实现于ed中，尽管相比qed中的这里实现的要相当不具一般性。

[Dennis M.
Ritchie生产了后来](https://zh.wikipedia.org/wiki/Dennis_M._Ritchie "wikilink")[Doug
McIlroy所描述的](https://zh.wikipedia.org/wiki/Doug_McIlroy "wikilink")“终极”ed\[5\]，ed的各方面转而影响了[ex](https://zh.wikipedia.org/wiki/Ex_\(文本编辑器\) "wikilink")，它依次又产生了[vi](https://zh.wikipedia.org/wiki/vi "wikilink")。非交互式Unix命令[grep受到qed和后来的ed常见特定用法的启发](https://zh.wikipedia.org/wiki/grep "wikilink")，它们的命令`g/re/p`含义是全局查找正则表达式`re`并打印包含它的行。Unix流式编辑器[sed实现了](https://zh.wikipedia.org/wiki/sed "wikilink")[qed的很多脚本特征](https://zh.wikipedia.org/wiki/QED_\(text_editor\) "wikilink")，而Unix上的ed却不支持。

## 特征

ed的特征包括：

  - 在所有Unix系统上必然可获得，在符合[单一UNIX规范的系统上是强制的](https://zh.wikipedia.org/wiki/单一UNIX规范 "wikilink")。
  - 模态编辑器，支持命令模式、文本模式和查看模式。
  - 支持[正则表达式](../Page/正则表达式.md "wikilink")。
  - 通过从[标准输入获取命令而达成的强力自动化](https://zh.wikipedia.org/wiki/标准输入 "wikilink")。

著称于它的简洁性，ed几乎不给予视觉反馈\[6\]，故而曾被（[Peter H.
Salus](https://zh.wikipedia.org/wiki/Peter_H._Salus "wikilink")）称为“曾有过的最仇视用户的编辑器”，即使是比较于同时代的（因复杂而声名狼藉的）[TECO](https://zh.wikipedia.org/wiki/TECO_\(文本编辑器\) "wikilink")。例如，在有错误的情况，或它想要确认用户希望不保存退出的时候，ed产生的消息就是“?”。它不报告当前文件名或行号，甚至不显示变更文本的结果，除非发出要求。更老版本（大约1981年）在发起退出命令而用户没有保存变更的时候甚至不提示确认\[7\]。这种简洁性对Unix的早期版本是适当的，那时控制台是[电传打字机](https://zh.wikipedia.org/wiki/电传打字机 "wikilink")，[调制解调器很慢](../Page/调制解调器.md "wikilink")，而[内存是珍贵的](https://zh.wikipedia.org/wiki/随机访问存储器 "wikilink")。计算机技术进步使得这些限制解除了，有更多视觉反馈的编辑器成为常规。

在当前实践中，ed极少交互式使用，但却在一些[shell脚本中有所使用](https://zh.wikipedia.org/wiki/shell脚本 "wikilink")。对于交互式使用，ed于1980年代被[sam](https://zh.wikipedia.org/wiki/sam_\(文本编辑器\) "wikilink")、[vi和](https://zh.wikipedia.org/wiki/vi "wikilink")[Emacs编辑器取代](../Page/Emacs.md "wikilink")。ed事实上可以在所有可获得的Unix和[Linux版本上找到](../Page/Linux.md "wikilink")，因此对必须在多个版本Unix上工作的人有用。在基于Unix的操作系统上，一些实用工具如[SQL
Plus运行ed作为编辑器](https://zh.wikipedia.org/wiki/SQL_Plus "wikilink")，如果EDITOR和VISUAL环境变量没有定义的话\[8\]。如果在故障的情况下，ed有时是唯一可获得的编辑器。这几乎是它交互式使用的唯一时刻。

ed命令在其他基于行的编辑器中经常被模仿。例如，在早期版本的[MS-DOS和](../Page/MS-DOS.md "wikilink")[32-bit版本的](https://zh.wikipedia.org/wiki/32-bit "wikilink")[Windows
NT中](../Page/Windows_NT.md "wikilink")，[EDLIN有某种程度上类似的语法](https://zh.wikipedia.org/wiki/edlin "wikilink")，在很多[MUD](../Page/MUD.md "wikilink")（[LPMud和后代](https://zh.wikipedia.org/wiki/LPMud "wikilink")）中的文本编辑器使用类似ed的语法。但是这些编辑器典型的在功能上更加有限。

## 例子

下面是一个ed会话的例子抄录。为了清晰，命令和用户键入的文本使用正常字型，而来自ed的输出被加粗。

`a`
`ed is the standard Unix text editor.`
`This is line number two.`
`.`
`2i`
` `
`.`
`,l`
**`ed``   ``is``   ``the``   ``standard``   ``Unix``   ``text``
 ``editor.$`**
**`$`**
**`This``   ``is``   ``line``   ``number``   ``two.$`**
`3s/two/three/`
`,l`
**`ed``   ``is``   ``the``   ``standard``   ``Unix``   ``text``
 ``editor.$`**
**`$`**
**`This``   ``is``   ``line``   ``number``   ``three.$`**
`w text`
**`65`**
`q`

最后结果是包含下列文本的一个简单文本文件:

`ed is the standard Unix text editor.`
` `
`This is line number three.`

开始于一个空文件，`a`命令附加文本，所有ed命令都是单一字母。这个命令安置ed进入“插入模式”，插入随后的字符，并由只有一个单一的点的行终止。在此点终止前键入的两行进入文件缓冲区。`2i`命令也进入插入模式，并在第2行之前插入键入的文本，这里是空行。所有命令都可以前缀一个行号来在此行上进行操作。

在行`,l`中，l表示列表命令。这个命令前缀着一个范围，这里是`,`，它是`1,$`的简写。范围是由逗号分割的两个行号，`$`意味着最后一行。作为回应，ed列出所有行，从最先至最后。这些行用美元号终结，所以在行尾的空白明显可见。

一旦空行被插入到第2行前，读作“This is line number
two”的行，现在实际上是第3行。这个错误使用`3s/two/three/`命令来更正，这是替换命令。`3`指定应用这个命令的那个行；随后是要被替换的文本，接着是要替代成的文本。现在用`,l`命令列出的行是正确的了。

`w text`命令写缓冲区到文件“text”，使得ed用“65”来相应，这是写到文件中的字符数目。`q`命令结束ed会话。

## 参见

  - [ex
    (文本编辑器)](https://zh.wikipedia.org/wiki/ex_\(文本编辑器\) "wikilink")，最初是扩展版本的ed。
  - [vi](https://zh.wikipedia.org/wiki/vi "wikilink")，基于ex的可视全屏幕编辑器.
  - [sed](https://zh.wikipedia.org/wiki/sed "wikilink")，基于ed内脚本特征的标准UNIX流式编辑器。
  - [Edlin](https://zh.wikipedia.org/wiki/Edlin "wikilink")，受ed影响的标准MS-DOS行编辑器。
  - [Sam
    (文本编辑器)](https://zh.wikipedia.org/wiki/Sam_\(文本编辑器\) "wikilink")
  - [编辑器之战](../Page/编辑器之战.md "wikilink")
  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")

## 引用

## 外部链接

  -
  - [描述ed的Unix第一版手册页](http://man.cat-v.org/unix-1st/1/ed)。

  - [GNU ed homepage](https://www.gnu.org/software/ed/ed.html)。

  -
  - ，最初ed的直接后代。

  - [Win32版本GNU ed](http://gnuwin32.sourceforge.net/packages/ed.htm)

  - [Unix Editors
    I](https://web.archive.org/web/20040825015310/http://snap.nlc.dcccd.edu/learn/nlc/ed.html)

  - [ed用于脚本的例子](http://wiki.bash-hackers.org/howto/edit-ed)

  - [ed 幽默("Ed是标准文本编辑器")](https://www.gnu.org/fun/jokes/ed.msg.html)

  - [在Berkeley之前的UNIX历史](http://www.darwinsys.com/history/hist.html)章节3.1描述了ed的历史。

[Category:Unix文本编辑器](https://zh.wikipedia.org/wiki/Category:Unix文本编辑器 "wikilink")
[Category:MacOS软件](https://zh.wikipedia.org/wiki/Category:MacOS软件 "wikilink")
[Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink")
[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")
[Category:控制台应用程序](https://zh.wikipedia.org/wiki/Category:控制台应用程序 "wikilink")

1.

2.

3.  The Peter H. Salus, Daemon, the Gnu and the Penguin. Ch. 2 & 3.
    Thursday, April 14, 2005 @ 10:56 PM EDT.
    <http://www.groklaw.net/article.php?story=20050414215646742>
    Accessed 10/29/2015.

4.  D. M. Ritchie and K. L. Thompson, "QED Text Editor",
    [MM-70-1373-3](https://wayback.archive-it.org/all/20150203071645/http://cm.bell-labs.com/cm/cs/who/dmr/qedman.pdf)
    (June 1970), reprinted as "QED Text Editor Reference Manual",
    MHCC-004, Murray Hill Computing, Bell Laboratories (October 1972).

5.

6.
7.

8.  Administering SQL\*Plus.
    <https://docs.oracle.com/cd/E11882_01/server.112/e10839/admn_sqlpls.htm#UNXAR166>
    Accessed 7/23/2016.