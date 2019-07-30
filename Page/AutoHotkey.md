**AutoHotkey**是面向普通电脑用户的[自由](../Page/自由软件.md "wikilink")[开源的](../Page/开源软件.md "wikilink")[自动化](https://zh.wikipedia.org/wiki/自动化 "wikilink")[软件](../Page/软件.md "wikilink")工具，它让用户能够快捷或自动执行重复性任务\[1\]。为了保持AutoHotkey自由开放、持续开发，2014年4月成立了AutoHotkey Foundation以提供组织、法务和财政上的支持。\[2\]

与同类工具比较，AutoHotkey体积小巧、语法简明使其易学易用，同时在热键、热字串实现的快捷、高效（同时也强大，这点其他语言也能做到）方面没有其他语言能超越，不过缺点同样明显，即没有官方自带或第三方实现的完善的标准库\[3\]，这样需要实现未内置的功能时通常需要直接调用Windows API或寻找别人封装好的函数（注：命令行命令或COM等与Windows API在功能全面性上相差太远）。换句话说，普通人极容易使用，但熟悉后要提升複雜性以实现更强大的功能时則困难重重，这点从大量用户选择该语言入手而后一些需求较高的用户则转向其他语言容易看的出来。例如，Folder Menu v2及之前的版本使用AutoHotkey，v3时换为[AutoIt](../Page/AutoIt.md "wikilink")。\[4\]

## 功能与定位

### 特色功能

通过[热键或热字串触发是AutoHotkey脚本中执行操作最常见的两种方式](https://zh.wikipedia.org/wiki/热键 "wikilink")，它们都很容易编写且使用方便，因此快捷高效。AutoHotkey对这两者的支持比同类工具强大许多。

#### 热键

热键是指通过按下预定义的某个按键或组合键执行特定操作的一种方式，常用于根据用户需要执行操作，例如：

``` autohotkey
LWin::return
```

在全屏程序中操作时（尤其是游戏），经常会误触键打开开始菜单而退出全屏，让人很无奈。现在只要打开全屏程序前先执行该脚本（这里屏蔽键），在全屏时无需担心误触而退出了（这里只屏蔽左边的Win键）。

``` autohotkey
#g:: ; Win+g
   Run http://www.google.com/search?q=%clipboard%
Return
```

运行这个脚本后，只需把要搜索的内容[复制到](https://zh.wikipedia.org/wiki/复制 "wikilink")[剪贴板](../Page/剪贴板.md "wikilink")，然后使用热键就可以打开默认[网页浏览器](../Page/网页浏览器.md "wikilink")并自动通过[Google](../Page/Google.md "wikilink")开始搜索。 AutoHotkey中不仅支持把单键、组合键设为热键，同时还支持将鼠标和游戏杆按钮设为热键，例如：\[5\]

``` autohotkey
#If MouseIsOver("ahk_class Shell_TrayWnd")
WheelUp::Send {Volume_Up}
WheelDown::Send {Volume_Down}

MouseIsOver(WinTitle) {
    MouseGetPos,,, Win
    return WinExist(WinTitle . " ahk_id " . Win)
}
```

通过该脚本，我们可以在任务栏上滚动鼠标滚轮来快速调节音量。

AutoHotkey中热键的功能非常强大，支持几乎所有按键和按钮、上下文热键、自定义组合键、动态热键等，同时众多的修饰符提供了许多附加特性。\[6\]可实现其他工具不方便或难以实现的一些功能，如重映射键盘按键（甚至是键盘布局，如从[QWERTY映射为](https://zh.wikipedia.org/wiki/QWERTY "wikilink")[Dvorak](../Page/德沃夏克鍵盤.md "wikilink")）、鼠标和游戏杆按钮。\[7\]

#### 热字串

热字串（有时也被称为“序列键”，类似[Vim](../Page/Vim.md "wikilink")一些模式中的操作键）是指按顺序键入一些字符后触发对应操作的一种方式。它的典型应用是扩展缩写：

``` autohotkey
::wjbk::维基百科，自由的百科全书
```

执行这个脚本后，依次按下（“维基百科”四个字的拼音首字母）后会被替换为**维基百科，自由的百科全书**并输入到当前文本框中（实际使用时还需按下终止符才会替换）。这种功能常用于输入常用字符串、在邮件或论坛中签名、填写数据录入表单及纠正常见英文拼写错误等。

除了扩展缩写，热字串也像热键一样能执行任何自定义操作：

``` autohotkey
::rn::
Run, Notepad
return
```

这里依次按下后会打开记事本。

热字串的许多选项为其添加了丰富的特性和选择。\[8\]

### 其他功能简介

AutoHotkey能快速实现的常见功能包括：

  - 重映射键盘按键、鼠标和[游戏杆的按钮](https://zh.wikipedia.org/wiki/游戏杆 "wikilink")；
  - 发送键击及鼠标和操纵杆的点击几乎可自动化所有操作；
  - 启动程序或文档，操作与控制其他程序的窗口；
  - 处理字符串，支持[正则表达式](../Page/正则表达式.md "wikilink")；
  - 操作文件和文件夹、[注册表](../Page/注册表.md "wikilink")和INI文件；
  - 设置静音，调节音量和声卡的其他设置；
  - 创建自定义[图形用户界面](../Page/图形用户界面.md "wikilink")程序，从用户或文件中获取输入；
  - 监视系统，当某些状态改变时自动响应；
  - 通过检测图像和像素颜色来自动操作游戏，以减缓[肢体重复性劳损](https://zh.wikipedia.org/wiki/重複使力傷害 "wikilink")；

### 脚本定位

AutoHotkey语法宽松灵活、关键字不区分大小写、变量可直接使用（无需声明），且自带简明易懂的入门教程，\[9\]所以普通用户可通过它快速高效地实现自己的需求。

在网络中提到时常被作为生产力工具，不过正确的定位才能真正发挥出高效：利用它提供的热键和热字串功能实现目标操作。对于常见的任务（重映射键盘、操作窗口、字符串处理等），它直接能完成的很好；对于较复杂的操作，则把它当成桥梁操作其他工具来实现我们的需要。

## 当前活跃分支

下面简介AutoHotkey当前的活跃分支，详细的说明和历史分支介绍请参阅[选择哪个分支？](http://zhuanlan.zhihu.com/autohotkey/19707355)。

### AutoHotkey_L

AutoHotkey_L指主要由Lexikos在AutoHotkey Basic基础上开发的分支，主要增加或增强了以下功能：\[10\]

  - 提供Unicode、COM和64位原生支持
  - 对象（可扩展的联合数组）
  - 增强的文件编码支持和错误处理
  - 面向对象文件I/O

这是目前的主流分支，建议所有用户优先选择。

### AutoHotkey v2

AutoHotkey v2\[11\]由Lexikos基于AutoHotkey_L代码开发，主要进行语法改进和功能整合。目前仍在测试过程中，语法、功能尚不稳定（与AutoHotkey_L差异较大\[12\]），欢迎用户参与测试协助完善\[13\]，尚不推荐作为日常使用。

### AutoHotkey_H

AutoHotkey_H\[14\]是由HotkeyIt合并了原有AutoHotkey.dll并在AutoHotkey_L（及AutoHotkey v2）基础上开发的增强分支。它没有使用自己的版本号，一般与AutoHotkey_L（及AutoHotkey v2）并行开发。这个名称实际上包含了基于[AutoHotkey_L和](https://zh.wikipedia.org/wiki/#AutoHotkey_L "wikilink")[AutoHotkey v2两种分支扩展后的AutoHotkey](https://zh.wikipedia.org/wiki/#AutoHotkey_v2 "wikilink").exe（H版本）和AutoHotkey.dll及相关文件，功能有所增强，有经验的老用户可考虑使用。

## 其他内容

### 辅助工具

目前AutoHotkey的安装包中自带了英文帮助、ahk2exe（脚本编译器，即用于把脚本转换成可执行文件）、Window Spy（获取窗口和控件的信息），此外还有许多方便编写、提升效率的辅助工具：

  - 中文帮助\[15\]：英文帮助的中文翻译，目前能及时更新。
  - [SciTE4AutoHotkey](https://zh.wikipedia.org/wiki/SciTE4AutoHotkey "wikilink")：基于[SciTE](../Page/SciTE.md "wikilink")的AutoHotkey脚本编辑器，包括语法高亮、自动补全、智能提示及其他专用于AutoHotkey的增强支持和辅助工具，推荐新手使用。目前与AutoHotkey_L和AutoHotkey v2保持一致更新。
  - GUI Creator\[16\]：在图形界面中为AutoHotkey脚本创建GUI的工具，极大降低了图形用户界面命令的学习成本和创建难度。
  - Pulover's Macro Creator\[17\]：圖形化宏录制和自动脚本輔助工具，可極大的降低學習成本。
  - iWB2 Learner\[18\]：从IE中获取网页元素信息的工具，在编写通过COM自动化操作IE的方便辅助。

### 实用脚本

这里列出一些基于AutoHotkey编写的实用工具：

  - 屏幕密码锁\[19\]：屏幕密码锁软件，可以方便地锁住鼠标和屏幕。
  - AHK脚本管理器\[20\]：用于管理（包括启动、关闭、重载和编辑等操作）AutoHotkey脚本的工具。
  - Folder Menu\[21\]：在常用位置（我的电脑、打开/保存对话框、[命令提示符](https://zh.wikipedia.org/wiki/命令提示符 "wikilink")、[TC等](../Page/Total_Commander.md "wikilink")）快速切换文件夹的工具<sup>注：后来的版本改用[AutoIt](../Page/AutoIt.md "wikilink")编写</sup>。
  - HK4WIN\[22\]：针对Windows系统的快捷键增强软件。
  - VimDesktop\[23\]：让Windows桌面程序拥有Vim操作风格的辅助工具。
  - LINK\[24\]：用于管理、收藏、重命名各种快捷方式，以便你记忆并通过热字符快速启动程序。
  - 飞扬热键\[25\]：将画屏命令、快捷热键、快捷菜单以及命令窗口融为一体，达到快速启动程序、打开文档、自定义短语、模拟用户输入输出的目的。
  - Jumplist Extender\[26\]：让任意程序支持跳转列表。
  - Clipjump\[27\]：开源的剪贴板管理工具。
  - Candy\[28\]：根据包含文件类型和关联程序的配置通过简便的方式使用多种不同的程序打开选中的文件，代替系统中在目标文件上点击右键并从打开方式中选择目标程序的繁琐方式。\[29\]

### 官方网站说明

AutoHotkey Basic时期，官方网站为[www.autohotkey.com](http://www.autohotkey.com)。当Chris Mallett（原作者）停止更新时宣布AutoHotkey_L为后续主分支。\[30\]不久网站转由polyethene管理，他对网站的决定与论坛中许多核心用户出现较大分歧\[31\]\[32\]且不时失去联系\[33\]，于是这些用户建立了ahkscripts.org作为AutoHotkey_L的支持网站\[34\]，并成立了公司确保其正常运营。\[35\]

目前原官网的下载链接提供的仍为AutoHotkey Basic，已无法满足当前用户需求，所有用户都应到新官网中下载AutoHotkey_L。因此，在软件信息和外部链接中均不再提供原官网，以免误导新用户。

### 名称的大小写

一般而言，普遍接受的全名大小写形式为**AutoHotkey**，即字母A、H大写，其余字母小写，注意这里的k也是小写的。有些时候可能看到**autohotkey**，即完全小写的形式，这是种较随意的写法。

对于简称，可写为**ahk**或**AHK**，这里三个字母可大写可小写，但大小写形式必须保持一致。

### 开发历史

Chris Mallett提议在[AutoIt](../Page/AutoIt.md "wikilink") v2中集成[热键支持未得到AutoIt社区响应](https://zh.wikipedia.org/wiki/热键 "wikilink")\[36\]\[37\]后，于2003年11月10日公开发布了AutoHotkey的首个[测试版本](https://zh.wikipedia.org/wiki/軟件出版週期 "wikilink")。\[38\]作者以AutoIt v2的语法为基础并在一些命令和编译器中使用AutoIt v3的源码开始编写自己的程序。\[39\]随后，AutoIt v3的许可从[GPL切换为](https://zh.wikipedia.org/wiki/GPL "wikilink")[闭源](../Page/专有软件.md "wikilink")，原因是“某些项目重复窃取AutoIt的代码”和“建立了竞争者”。\[40\]

2010年10月10日，原作者在停止更新一年多后表示“失去了兴趣”并声明AutoHotkey_L为正在开发的分支，并把它放置在网页的下载部分的前面。\[41\]同时把原来的版本称为AutoHotkey Basic。\[42\]比起AutoHotkey Basic，AutoHotkey_L中增加了[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")、[COM](../Page/组件对象模型.md "wikilink")、[对象](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")、[调试特性和其他功能](https://zh.wikipedia.org/wiki/调试 "wikilink")。\[43\]

## 另请参阅

  - [SciTE4AutoHotkey](https://zh.wikipedia.org/wiki/SciTE4AutoHotkey "wikilink")
  - [AutoIt](../Page/AutoIt.md "wikilink")
  - [AutoKey](../Page/AutoKey.md "wikilink")（用于Linux）
  - [Automator](../Page/Automator.md "wikilink")（用于Macintosh）
  - [Bookmarklet](https://zh.wikipedia.org/wiki/Bookmarklet "wikilink")
  - [用于Firefox的iMacros](https://zh.wikipedia.org/wiki/iMacros "wikilink")

## 参考资料

## 外部链接

  - <sup>请参阅[\#官方网站说明](https://zh.wikipedia.org/wiki/#官方网站说明 "wikilink")</sup>：官方论坛含[中文子论坛](http://ahkscript.org/boards/viewforum.php?f=26)，可用中文交流。

  - [AutoHotkey学习指南](http://ahkscript.org/boards/viewtopic.php?f=29&t=1099)

[Category:自动化软件](https://zh.wikipedia.org/wiki/Category:自动化软件 "wikilink") [Category:自由系統軟體](https://zh.wikipedia.org/wiki/Category:自由系統軟體 "wikilink") [Category:用C++編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C++編程的自由軟體 "wikilink") [Category:GUI自动化](https://zh.wikipedia.org/wiki/Category:GUI自动化 "wikilink") [Category:脚本语言](https://zh.wikipedia.org/wiki/Category:脚本语言 "wikilink")

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

18. [iWB2 Learner页面](http://www.autohotkey.com/board/topic/84258-iwb2-learner-iwebbrowser2/)

19.

20.

21.

22.

23.

24.

25.

26.

27.

28.

29.

30.

31.

32.

33.

34.

35.

36.

37.

38.

39.

40.

41.

42.

43.