> 本文内容由[Vi](https://zh.wikipedia.org/wiki/Vi)转换而来。


{{ Infobox Software | name = *vi* | logo = | screenshot = [Vi-splash.png](https://zh.wikipedia.org/wiki/File:Vi-splash.png "fig:Vi-splash.png") | caption = 執行圖 | developer = [比尔·乔伊](../Page/比尔·乔伊.md "wikilink") | latest_release_version = | latest_release_date = | latest_preview_version = | latest_preview_date = | operating_system = [类Unix](https://zh.wikipedia.org/wiki/类Unix "wikilink") | programming_language = [C](https://zh.wikipedia.org/wiki/C语言 "wikilink") | genre = [文本编辑器](../Page/文本编辑器.md "wikilink") | license = [BSD许可证](../Page/BSD许可证.md "wikilink") | website = }} **vi**是一种[计算机](https://zh.wikipedia.org/wiki/计算机 "wikilink")[文本编辑器](../Page/文本编辑器.md "wikilink")，由美國計算機科學家[比爾·喬伊](https://zh.wikipedia.org/wiki/比爾·喬伊 "wikilink")（Bill Joy）完成编写，并於1976年以[BSD](../Page/BSD.md "wikilink")协议授權发布。

## 关于vi

vi是“Visual”的不正规的缩写，来源于另外一个文本编辑器[ex的命令visual](https://zh.wikipedia.org/wiki/Ex_\(文件编辑器\) "wikilink")。

vi是一种模式编辑器。不同的按钮和键击可以更改不同的“模式”。在“插入模式”下，输入的文本会直接被插入到文档；当按下“[退出键](../Page/退出键.md "wikilink")”，“插入模式”就会更改为“命令模式”，并且光标的移动和功能的编辑都由字母来响应，例如：“j”用来移动光标到下一行；“k”用来移动光标到上一行，“x”可以删除当前光标处的字符，“i”可以返回到“插入模式”（也可以使用方向键）。在“命令模式”下，敲入的键（字母）并不会插入到文档，这给新接触vi的用户带来混乱。

在“命令模式”下，多重文本编辑操作是由一组键（字母）来执行，而不是同时按下<Alt>、<Ctrl>和其他特殊键来完成。更多复杂的编辑操作可以使用多重功能基元的组合，比如说“dw”用来删除一个单词，“c2fa”可以更改当前的光标处中“a”之前的文本。这就是说：对于熟练的vi用户可以更快的操作，因为双手就可以不必离开键盘。

早期的版本中，vi并没有指示出当前的模式，用户必须按下“退出键”来确认编辑器返回“命令模式”（会有声音提示）。当前的vi版本可以在“状态条”中（或用图形显示）。最新的版本中，用户可以在“终端”中设置并使用除主键盘以外的其他键，例如：PgUp，PgDn，Home，End和Del键。图形化界面的vi（如[gvim](https://zh.wikipedia.org/wiki/gvim "wikilink")）可以很好的支持鼠标和菜单。

直到[Emacs](../Page/Emacs.md "wikilink")的出现（1984年以后），vi几乎是所有“[黑客](../Page/黑客.md "wikilink")”所使用的标准[UNIX](../Page/UNIX.md "wikilink")编辑器。从2006年开始，作为“[单一UNIX规范](https://zh.wikipedia.org/wiki/单一UNIX规范 "wikilink")”（Single UNIX Specification）的一部分，vi或vi的一种变形版本一定会在UNIX中找到。

直到现在，vi仍然被广泛的使用，并且赢得1991年在[USENET的票选](https://zh.wikipedia.org/wiki/USENET "wikilink")；vi比[Emacs](../Page/Emacs.md "wikilink")的Bulkier版本启动的更快，并且占内存更少。因此，甚至Emacs的追随者又重新使用vi，并且作为邮件编辑器和其他小型编辑工作的首选。1999年時，著名的[歐萊禮](../Page/歐萊禮.md "wikilink")出版社（O'reilly）卖出了比emacs更多的vi参考书。

当救急软盘作为恢复硬盘崩溃的媒介以来，vi通常被用户选择，因为一张软盘正好存储下vi，并且几乎所有人都可以很轻松的使用vi。

在[编辑器的大战中](../Page/编辑器之战.md "wikilink")，vi和Emacs是作战的双方。

## vi琐事

[KB_Terminal_ADM3A.svg](https://zh.wikipedia.org/wiki/File:KB_Terminal_ADM3A.svg "fig:KB_Terminal_ADM3A.svg")

  - vi是在[加州大学伯克利分校的](https://zh.wikipedia.org/wiki/加州大学伯克利分校 "wikilink")[Evans Hall中](https://zh.wikipedia.org/wiki/Evans_Hall "wikilink")，使用"[Lear-Siegler ADM3A终端](https://zh.wikipedia.org/wiki/Lear-Siegler_ADM3A "wikilink")”编写完成，在这台机器上的“退出键”（[Esc](https://zh.wikipedia.org/wiki/Esc "wikilink")），也就是今天鍵盤“[表格键](https://zh.wikipedia.org/wiki/表格键 "wikilink")”（[Tab](https://zh.wikipedia.org/wiki/Tab "wikilink")）的位置，目前vi用户仍使用“退出键”（[Esc](https://zh.wikipedia.org/wiki/Esc "wikilink")）来转换状态。
  - Emacs的支持者一直说vi拥有极其恶毒的界面。
  - 使用vi的巨集，[David Hitz开发出了](https://zh.wikipedia.org/wiki/David_Hitz "wikilink")“[图灵机](../Page/图灵机.md "wikilink")模拟器”。
  - [Snap.com使用vi的界面和命令开发了](https://zh.wikipedia.org/wiki/Snap.com "wikilink")[visearch.com搜索引擎](https://zh.wikipedia.org/wiki/visearch.com "wikilink")。

## vi的衍生物

  - [BSD vi 3.7是现代UNIX系统的移植之一](https://zh.wikipedia.org/wiki/BSD_vi_3.7 "wikilink")，它使用[ed作为字库](https://zh.wikipedia.org/wiki/ed "wikilink")。

  - 作为ex/vi编辑器，[nvi被预安装在第四代BSD上](https://zh.wikipedia.org/wiki/nvi "wikilink")（[4BSD](https://zh.wikipedia.org/wiki/4BSD "wikilink")）。

  - [Vim](../Page/Vim.md "wikilink")（[Vi IMproved](https://zh.wikipedia.org/wiki/Vi_IMproved "wikilink")）是一种升级版，类似nvi。在大多数[Linux](../Page/Linux.md "wikilink")系统中都安装了Vim。

  - 是一个免费软件，可以安装在UNIX和其他系统中。

  - [Vigor是流行的vi](https://zh.wikipedia.org/wiki/Vigor "wikilink") UNIX编辑器版本，含有Vigor助手，被作为对抗[Microsoft Office的](../Page/Microsoft_Office.md "wikilink")[Clippy](https://zh.wikipedia.org/wiki/Clippy "wikilink")。

## 参考

  - [文本编辑器列表](https://zh.wikipedia.org/wiki/文本编辑器列表 "wikilink")
  - [编辑器之战](../Page/编辑器之战.md "wikilink")
  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [Vim](../Page/Vim.md "wikilink")

## 外部链接

  - [vi基本使用](https://www.ytyzx.org/index.php?title=%E5%A6%82%E4%BD%95%E4%BD%BF%E7%94%A8vi%E6%96%87%E6%9C%AC%E7%BC%96%E8%BE%91%E5%99%A8)

[Category:Vi](https://zh.wikipedia.org/wiki/Category:Vi "wikilink") [Category:Unix文本编辑器](https://zh.wikipedia.org/wiki/Category:Unix文本编辑器 "wikilink")