{{ Infobox Software | name = *vi* | logo = | screenshot =
[Vi-splash.png](https://zh.wikipedia.org/wiki/File:Vi-splash.png "fig:Vi-splash.png")
| caption = 執行圖 | developer = [比尔·乔伊](../Page/比尔·乔伊.md "wikilink") |
latest_release_version = | latest_release_date = |
latest_preview_version = | latest_preview_date = | operating_system
= [类Unix](../Page/类Unix.md "wikilink") | programming_language =
[C](../Page/C语言.md "wikilink") | genre =
[文本编辑器](../Page/文本编辑器.md "wikilink") | license =
[BSD许可证](../Page/BSD许可证.md "wikilink") | website = }}
**vi**是一种[计算机](../Page/计算机.md "wikilink")[文本编辑器](../Page/文本编辑器.md "wikilink")，由美國計算機科學家[比爾·喬伊](../Page/比爾·喬伊.md "wikilink")（Bill
Joy）完成编写，并於1976年以[BSD协议授權发布](../Page/BSD.md "wikilink")。

## 关于vi

vi是“Visual”的不正规的缩写，来源于另外一个文本编辑器[ex的命令visual](../Page/Ex_\(文件编辑器\).md "wikilink")。

vi是一种模式编辑器。不同的按钮和键击可以更改不同的“模式”；比如说：在“插入模式”下，输入的文本会直接被插入到文档；当按下“[退出键](../Page/退出键.md "wikilink")”，“插入模式”就会更改为“命令模式”，并且光标的移动和功能的编辑都由字母来响应，例如：“j”用来移动光标到下一行；“k”用来移动光标到上一行，“x”可以删除当前光标处的字符，“i”可以返回到“插入模式”（也可以使用方向键）。在“命令模式”下，敲入的键（字母）并不会插入到文档，这给新接触vi的用户带来混乱。

在“命令模式”下，多重文本编辑操作是由一组键（字母）来执行，而不是同时按下<Alt>、<Ctrl>和其他特殊键来完成。更多复杂的编辑操作可以使用多重功能基元的组合，比如说“dw”用来删除一个单词，“c2fa”可以更改当前的光标处中“a”之前的文本。这就是说：对于熟练的vi用户可以更快的操作，因为双手就可以不必离开键盘。

早期的版本中，vi并没有指示出当前的模式，用户必须按下“退出键”来确认编辑器返回“命令模式”（会有声音提示）。当前的vi版本可以在“状态条”中（或用图形显示）。最新的版本中，用户可以在“终端”中设置并使用除主键盘以外的其他键，例如：PgUp，PgDn，Home，End和Del键。图形化界面的vi（如[gvim](../Page/gvim.md "wikilink")）可以很好的支持鼠标和菜单。

直到[Emacs的出现](../Page/Emacs.md "wikilink")（1984年以后），vi几乎是所有“[黑客](../Page/黑客.md "wikilink")”所使用的标准[UNIX编辑器](../Page/UNIX.md "wikilink")。从2006年开始，作为“[单一UNIX规范](../Page/单一UNIX规范.md "wikilink")”（Single
UNIX Specification）的一部分，vi或vi的一种变形版本一定会在UNIX中找到。

直到现在，vi仍然被广泛的使用，并且赢得1991年在[USENET的票选](../Page/USENET.md "wikilink")；vi比[Emacs的Bulkier版本启动的更快](../Page/Emacs.md "wikilink")，并且占内存更少。因此，甚至Emacs的追随者又重新使用vi，并且作为邮件编辑器和其他小型编辑工作的首选。1999年時，著名的[歐萊禮出版社](../Page/歐萊禮.md "wikilink")（O'reilly）卖出了比emacs更多的vi参考书。

当救急软盘作为恢复硬盘崩溃的媒介以来，vi通常被用户选择，因为一张软盘正好存储下vi，并且几乎所有人都可以很轻松的使用vi。

在[编辑器的大战中](../Page/编辑器之战.md "wikilink")，vi和Emacs是作战的双方。

## vi琐事

[KB_Terminal_ADM3A.svg](https://zh.wikipedia.org/wiki/File:KB_Terminal_ADM3A.svg "fig:KB_Terminal_ADM3A.svg")

  - vi是在[加州大学伯克利分校的](../Page/加州大学伯克利分校.md "wikilink")[Evans
    Hall中](../Page/Evans_Hall.md "wikilink")，使用"[Lear-Siegler
    ADM3A终端](../Page/Lear-Siegler_ADM3A.md "wikilink")”编写完成，在这台机器上的“退出键”（[Esc](../Page/Esc.md "wikilink")），也就是今天鍵盤“[表格键](../Page/表格键.md "wikilink")”（[Tab](../Page/Tab.md "wikilink")）的位置，目前vi用户仍使用“退出键”（[Esc](../Page/Esc.md "wikilink")）来转换状态。
  - Emacs的支持者一直说vi拥有极其恶毒的界面。
  - 使用vi的巨集，[David
    Hitz开发出了](../Page/David_Hitz.md "wikilink")“[图灵机模拟器](../Page/图灵机.md "wikilink")”。
  - [Snap.com使用vi的界面和命令开发了](../Page/Snap.com.md "wikilink")[visearch.com搜索引擎](../Page/visearch.com.md "wikilink")。

## vi的衍生物

  - [BSD vi
    3.7是现代UNIX系统的移植之一](../Page/BSD_vi_3.7.md "wikilink")，它使用[ed作为字库](../Page/ed.md "wikilink")。

  - 作为ex/vi编辑器，[nvi被预安装在第四代BSD上](../Page/nvi.md "wikilink")（[4BSD](../Page/4BSD.md "wikilink")）。

  - [Vim](../Page/Vim.md "wikilink")（[Vi
    IMproved](../Page/Vi_IMproved.md "wikilink")）是一种升级版，类似nvi。在大多数[Linux系统中都安装了Vim](../Page/Linux.md "wikilink")。

  - 是一个免费软件，可以安装在UNIX和其他系统中。

  - [Vigor是流行的vi](../Page/Vigor.md "wikilink")
    UNIX编辑器版本，含有Vigor助手，被作为对抗[Microsoft
    Office的](../Page/Microsoft_Office.md "wikilink")[Clippy](../Page/Clippy.md "wikilink")。

## 参考

  - [文本编辑器列表](../Page/文本编辑器列表.md "wikilink")
  - [编辑器之战](../Page/编辑器之战.md "wikilink")
  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [Vim](../Page/Vim.md "wikilink")

## 外部链接

  - [vi基本使用](https://www.ytyzx.org/index.php?title=%E5%A6%82%E4%BD%95%E4%BD%BF%E7%94%A8vi%E6%96%87%E6%9C%AC%E7%BC%96%E8%BE%91%E5%99%A8)

[Category:Vi](https://zh.wikipedia.org/wiki/Category:Vi "wikilink")
[Category:Unix文本编辑器](https://zh.wikipedia.org/wiki/Category:Unix文本编辑器 "wikilink")