more：一种用于[命令行分页显示的工具](../Page/命令行.md "wikilink")。more是一种比较原始的分页工具，功能有限。新的分页工具，如[less](../Page/less.md "wikilink")，功能更强大。

## 常见版本

  - [Unix](../Page/Unix.md "wikilink")/[Unix-like操作系统](../Page/Unix-like.md "wikilink")
  - [OS/2](../Page/OS/2.md "wikilink")
  - [DOS](../Page/DOS.md "wikilink")
  - [Windows](../Page/Windows.md "wikilink")

## 历史\[1\]

more的原作者是Daniel Halbert，并由Eric Shienbrood和Geoff Peck扩充功能。
Daniel
Halbert在[MIT就读本科时](../Page/MIT.md "wikilink")，他学习的操作系统是[ITS](../Page/ITS.md "wikilink")。ITS自带一个分页工具，当显示的内容满一屏幕后，它会在屏幕的底部添加提示“--more--”，用户按下空格键就能继续显示下一页的内容。
Daniel
Halbert考入[加利福尼亚大学伯克利分校就读研究生课程时](../Page/柏克萊加州大學.md "wikilink")，学习的是VAX
Unix系统，它使用的分页器是cr3。当一页文本已经显示完成后，cr3用系统响铃的方式提示用户。这个做法有几个不利，一来，很多终端是“哑终端”，没有扬声器；二来，装满大量终端的机房内哔声此起彼伏，用户也不胜其烦。
于是Daniel Halbert改进了cr3，并将新工具命名为“more”。这是第一个采用完整英文单词命名的Unix命令。随后发行的BSD
3.0首次包含了more。此后，它成为所有的Unix及Unix-like操作系统的标准工具。

## 用法

### Unix/Unix-like操作系统\[2\]

#### 输入

  - 文件名作为参数直接输入：如，more \~/维基百科.txt
  - 用管道符输入：如，more \< \~/维基百科.txt；或者，cat \~/维基百科.txt | more。

#### 参数

  - \-数字 指定一页显示的行数。
  - \-d 将在“--More--(已读百分比)”后显示提示信息“\[Press space to continue, 'q' to
    quit.\]”；当用户按下无效按键时，出现提示信息“\[Press 'h' for instructions.\]”。
  - \-l 忽略换页符(**^L**)。没有此参数时，more遇到含有^L的行将自动暂停显示。
  - \-f
    按原文件实际的行数计算，而非以显示在屏幕上的行数计算。(文件中的一行文本可能非常长，占用数个屏幕行，此时开启本选项，将无法很好地完成分页功能)。
  - \-p 以清屏代替滚屏。
  - \-c 类似于-p。
  - \-s 将数个连续空行显示为一个空行。
  - \-u 取消下划线。
  - \+/ 在显示之前，先搜索指定字符串。
  - \+数字 在指定的行数开始显示。

#### 键盘命令

  - h键或?键 简要显示键盘命令的作用。
  - 空格键 显示k行。默认值为屏幕行数。
  - z键 显示k行。默认值为屏幕行数。如果定义了新的k值，k值将成为新的默认值。
  - 回车键 显示k行。默认值为1。如果定义了新的k值，k值将成为新的默认值。
  - d键或Ctrl+D键 滚动k行。默认值为当前滚动的行数。如果定义了新的k值，k值将成为新的默认值。
  - q键 退出
  - s键 向下跳过k个逻辑行。默认值为1。
  - f键 向下跳过k屏。默认值为1。
  - b键或Ctrl+B键 往回k屏幕。默认值为1。仅对文件有效，对管道无效。
  - \=键 显示当前行号。
  - /键+正则表达式 搜索第k次出现的正则表达式。默认值为1。
  - n键 搜索第k次出现的最后用过的正则表达式。默认值为1。
  - \!键+命令或:键+\!键+命令 在一个子shell中启动指定命令。
  - v键
    在当前行启动编辑器。编辑器由环境变量决定，优先权为VISUAL\>EDITOR，如果VISUAL和EDITOR均未定义，则启动vi。
  - Ctrl+L键 重新绘制屏幕。
  - :键+n键 跳到第k个文件。默认值为1。
  - :键+p键 跳到第k个之前的文件。默认值为1。
  - :键+f键 显示当前的文件名及行号。
  - .键 重复前一个命令。

#### 环境变量

  - MORE 设定默认参数。
  - SHELL 当前正在使用的shell。
  - TERM 指定终端类型，以便获得屏幕的规格。

### Windows操作系统\[3\]

#### 格式

  - more /E \[/C\] \[/P\] \[/S\] \[/Tn\] \[+n\] <文件1>\[<空格键>文件2...\]
  - more \[/E \[/C\] \[/P\] \[/S\] \[/Tn\]
    [+n](../Page/+n.md "wikilink") \< \[驱动器:\]\[路径\]文件名
  - 命令 | more \[/E \[/C\] \[/P\] \[/S\] \[/Tn\]
    [+n](../Page/+n.md "wikilink")

#### 参数

  - /E 启用扩展功能(见下)。
  - /C 显示页面前先清除屏幕。
  - /P 扩展换页符。
  - /S 将多个空白行缩成一行。
  - /Tn 将跳格键扩展成n个空格(默认值为8)。
  - \+n 从第 n 行开始显示第一个文件

备注，上述参数，除+n外，可以出现在环境变量MORE中。

#### 扩展功能

如果扩展的功能已经启用，在“-- More --”提示处会接受下列键盘命令:

  - P n 显示下n行。
  - S n 略过下n行。
  - F 显示下个文件。
  - Q 退出。
  - \= 显示行号。
  - ? 显示帮助行。
  - <space> 显示下一页。
  - <return> 显示下一行。

## 参考文献

[Category:Windows管理](https://zh.wikipedia.org/wiki/Category:Windows管理 "wikilink")
[Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink")
[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")

1.  [Daniel
    Halbert写的关于more的简史](http://www.halwitz.org/halbert/more.html)

2.  [more的manpage。](http://www.linuxmanpages.com/man1/more.1.php)
3.  \[Microsoft Windows XP SP2命令行more /?的输出\]