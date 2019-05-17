**ANSI转义序列**是一种的[转义序列标准](https://zh.wikipedia.org/wiki/转义序列 "wikilink")，用于控制视频文本[终端上的光标位置](../Page/終端.md "wikilink")、颜色和其他选项。在文本中嵌入确定的字节序列，大部分以[`ESC`](../Page/退出键.md "wikilink")[转义字符和](../Page/转义字符.md "wikilink")"\["字符开始，终端会把这些字节序列解释为相应的指令，而不是普通的[字符编码](../Page/字符编码.md "wikilink")。

ANSI序列是在二十世纪七十年代引入的标准，用以取代特定于终端供应商的序列，并在二十世纪八十年代早期开始在计算机设备市场上广泛使用。与早期缺少光标移动功能的系统相比，新生的[电子公告板系统使用ANSI序列改进其显示](https://zh.wikipedia.org/wiki/电子公告板系统 "wikilink")。正是因为这个原因，ANSI序列变成了所有制造商共同采用的标准。

在21世纪，尽管硬件文本终端已经越来越少了，但ANSI标准依然存在，因为大多数终端模拟器会对部分ANSI转义序列进行解释。一个值得注意的例外是，在微软[Windows
10更新TH](https://zh.wikipedia.org/wiki/Windows_10 "wikilink")2之前，[Windows操作系统的](https://zh.wikipedia.org/wiki/Windows操作系统 "wikilink")[Win32控制台是不支持ANSI转义序列的](../Page/Win32控制台.md "wikilink")。

## 历史

最初，几乎每个视频终端制造商都各自添加了特定的转义序列用于执行一些特殊操作，比如把光标置于屏幕上的某个位置。举例来说，终端允许通过发送`ESC`字符、`y`字符，后面跟上两个等于x,y位置的数值加上32的字符（这是为了从ASCII空格字符开始，并避开控制字符），将光标置于屏幕上的x,y位置。

由于这些序列对于不同的终端并不一样，因此人们不得不开发了一些复杂的库（比如）和实用程序（比如），以便程序可以使用同一套[API应对各种终端](https://zh.wikipedia.org/wiki/API "wikilink")。另外，在很多终端中需要借助字符的二进制值发送数字（如行和列）。对于某些编程语言，以及内部不使用ASCII的系统来说，把数字转换为正确的字符常常是有困难的，甚至完全做不到。

ANSI标准试图解决这些问题。标准制订了一种所有终端共用的指令集，并要求用ASCII的数字字符传递所有数值信息。该系列的第一个标准是1976年通过的ECMA-48。它是一系列字符编码标准的延续，其中第一个是从1965年的，一个7[位标准](../Page/位元.md "wikilink")，[ISO
646就源自此标准](https://zh.wikipedia.org/wiki/ISO_646 "wikilink")。“ANSI转义序列”的名称可以追溯到1979年[ANSI采用ANSI](https://zh.wikipedia.org/wiki/ANSI "wikilink")
X3.64。此外，ANSI
X3L2委员会与[ECMA委员会TC](https://zh.wikipedia.org/wiki/ECMA "wikilink")
1合作制订了一个几乎一模一样的标准。以上两个标准合并为ISO 6429的国际标准\[1\]。1994年，ANSI取消了其标准，以支持国际标准。

第一个支持这个标准的流行视频终端是1978年推出的[Digital](../Page/迪吉多.md "wikilink")
\[2\]。这个终端在市场上非常成功，引发了各种各样的仿制品，其中最早和最流行的是1979年的\[3\] 。其他品牌还有
QVT-108， TVI-970，
WY-99GT。另外，许多其他品牌的终端也不同程度地兼容可选的“VT100”、“VT103”或“ANSI”模式。
随着越来越多的软件（尤其是[BBS系统](../Page/BBS.md "wikilink")）普及，越来越多的软件依赖转义序列起作用，导致几乎所有新的终端和终端模拟器都支持了此标准。

1981年，ANSI
X3.64被美国政府采用（[FIPS](https://zh.wikipedia.org/wiki/联邦资料处理标准 "wikilink")
86）。后来，美国政府停止复制行业标准，所以FIPS 86又被撤回了\[4\]。

ECMA-48已经经历了多次更新换代，目前是从1991年开始的第5版。它也被[ISO和](https://zh.wikipedia.org/wiki/ISO "wikilink")[IEC用作标准](https://zh.wikipedia.org/wiki/IEC "wikilink")**ISO/IEC
6429**。

## 平台支持

随着诸多[BBS和线上服务广泛使用ANSI](../Page/BBS.md "wikilink")，到20世纪80年代中期，ANSI几乎得到了全平台支持。尽管许多操作系统在标准文本输出中越来越多地支持ANSI，但大多数情况下是以终端模拟器的形式（例如[Unix上的](https://zh.wikipedia.org/wiki/Unix "wikilink")[xterm](https://zh.wikipedia.org/wiki/xterm "wikilink")，或MacOS上的[OS
X
Terminal或](https://zh.wikipedia.org/wiki/终端_\(macOS\) "wikilink")，以及IBM
PC上的许多通信程序）。

[Unix和](https://zh.wikipedia.org/wiki/Unix "wikilink")[AmigaOS都在操作系统中包含了对ANSI的一些支持](../Page/AmigaOS.md "wikilink")，导致在这些平台上运行的程序广泛使用ANSI。
[类Unix操作系统可以通过像](https://zh.wikipedia.org/wiki/类Unix操作系统 "wikilink")和之类的库来生成ANSI代码，许多软件使用这些库升级显示方式。这些库也应该支持非ANSI终端，但是现在很少有人测试，所以很可能已经不起作用了。许多游戏和shell脚本直接输出ANSI序列（如彩色的提示信息），因此无法在不支持ANSI的终端上运行。

AmigaOS不仅支持输出到屏幕上的文本使用ANSI序列，打印机驱动程序也支持（用AmigaOS的专有扩展），并将它们转换为与特定打印机实际通信所需的代码\[5\]。

尽管ANSI很普及，却并没有得到全平台支持。比如原始的[“经典”Mac
OS就没有内置对ANSI的支持](../Page/Classic_Mac_OS.md "wikilink")
，再比如Atari ST使用的是VT52改编的命令系统，用一些扩展程序支持颜色显示\[6\]。

### Windows和DOS

MS-DOS
1.x不支持ANSI或任何其他转义序列，只有少数[控制字符](../Page/控制字符.md "wikilink")（BEL、CR、LF、BS）可以由底层BIOS
解释，所以几乎\[7\]不可能做出任何全屏应用程序。所有显示效果都必须通过BIOS调用，或者直接控制IBM PC硬件来完成，调用速度非常慢。

DOS
2.0引入了添加[设备驱动程序来支持ANSI转义序列的功能](https://zh.wikipedia.org/wiki/设备驱动程序 "wikilink")（事实上的标准是ANSI.SYS，但也使用了ANSI.COM\[8\]、NANSI.SYS\[9\]和ANSIPLUS.EXE等其他程序。因为绕过了BIOS，所以这些程序的速度比以前快了不少）。但由于实际运行速度仍然比较慢，以及默认并没有安装，所以还是很少得到利用。应用程序往往还是继续用直接控制硬件的方式来显示所需的文本。ANSI.SYS和类似的驱动程序继续在[Windows
9x上工作](../Page/Windows_9x.md "wikilink")，直到[Windows
Me](../Page/Windows_Me.md "wikilink")，在NT衍生系统中用于在下执行的16位传统程序。

[Win32控制台完全不支持ANSI转义序列](../Page/Win32控制台.md "wikilink")。不过有一些控制台的替代品或者附加软件具有解释程序输出的ANSI转义序列的功能，例如JP
Software的TCC（以前的4NT）、Michael J. Mefford的ANSI.COM、Jason
Hood的ANSICON\[10\]和Maximus5的ConEmu。有一个[Python软件包](../Page/Python.md "wikilink")\[11\]在内部解释了打印文本中的ANSI转义序列，将它们转换为系统调用来操纵颜色和光标位置，以便更容易地将使用ANSI的Python代码移植到Windows。

2016年，在[Windows
10发布](https://zh.wikipedia.org/wiki/Windows_10 "wikilink")“Threshold
2”\[12\]时，微软开始在控制台应用程序中支持ANSI转义序列，使得从Unix移植软件或者远程访问Unix变得更容易。

## 转义序列

序列具有不同的长度。所有序列都以ASCII字符**[`ESC`](../Page/退出键.md "wikilink")**（27 /
[十六进制](../Page/十六进制.md "wikilink")
0x1B）开头，第二个字节则是0x40–0x5F（ASCII
`@A–Z[\]^_`）范围内的字符。\[13\]

标准规定，在8位环境中，这两个字节的序列可以合并为0x80-0x9F范围内的单个字节（详情请参阅[C1控制字符集](https://zh.wikipedia.org/wiki/C0与C1控制字符#C1控制字符集 "wikilink")）。但是，在现代设备上，这些代码通常用于其他目的，例如[UTF-8的一部分或](../Page/UTF-8.md "wikilink")[CP-1252字符](https://zh.wikipedia.org/wiki/CP-1252 "wikilink")，因此并不使用这种合并的方式。

除ESC之外的其他C0代码（通常是BEL，BS，CR，LF，FF，TAB，VT，SO和SI）在输出时也可能会产生与某些控制序列相似或相同的效果。

<table>
<caption>一些ANSI转义序列（不完整列表）</caption>
<thead>
<tr class="header">
<th><p>序列</p></th>
<th><p>C1</p></th>
<th><p>名称</p></th>
<th><p>作用</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>0x8e</p></td>
<td></td>
<td><p>从其中一个替代字符集中选择一个字符。在xterm中，SS2选择G2字符集，SS3选择G3字符集。[14]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>0x8f</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>0x90</p></td>
<td></td>
<td><p>控制设备。在xterm中，这个序列的使用包括定义用户自定义的密钥，以及请求或设置Termcap/Terminfo数据。[15]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>0x9b</p></td>
<td></td>
<td><p>大部分有用的序列，请参阅下一节。结束于ASCII 64到126 (<code>@</code>到<code>~</code>/十六进制0x40到0x7E).[16]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>0x9c</p></td>
<td></td>
<td><p>终止其他控件（包括APC，DCS，OSC，PM和SOS）中的字符串。[17]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>0x9d</p></td>
<td></td>
<td><p>启动操作系统使用的控制字符串。OSC序列与CSI序列相似，但不限于整数参数。通常，这些控制序列由ST终止[18]。在xterm中，它们也可能被BEL终止[19]。例如，在xterm中，窗口标题可以这样设置：<code>OSC 0;this is the window title BEL</code>。</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>0x98</p></td>
<td></td>
<td><p>引用由ST终止的一串文本的参数。这些字符串控制序列的用途由应用程序[20]或私有规则来定义[21]。这些函数没有实现，参数被xterm忽略[22]。</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>0x9e</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>0x9f</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td><p>将设备重置为原始状态。可能包括（如果适用的话）：重置图形格式，清除制表符，重置为默认字体等等。</p></td>
</tr>
</tbody>
</table>

按下键盘上的特殊键，以及输出xterm
CSI、DCS或OSC序列，常常用于产生从终端发送到计算机的CSI，DCS或OSC序列，就像用户使用键盘输入的一样。

## CSI序列

CSI序列由`ESC [`、若干个（包括0个）“参数字节”、若干个“中间字节”，以及一个“最终字节”组成。各部分的字符范围如下：

| 组成部分 | 字符范围      | ASCII                  |
| ---- | --------- | ---------------------- |
| 参数字节 | 0x30–0x3F | `0–9:;<=>?`            |
| 中间字节 | 0x20–0x2F | 空格、`!"#$%&'()*+,-./`   |
| 最终字节 | 0x40–0x7E | ``@A–Z[\]^_`a–z{\|}~`` |

所有常见的序列都只是把参数用作一系列分号分隔的数字，如`1;2;3`。缺少的数字视为0（如`1;;3`相当于中间的数字是0，`ESC[m`这样没有参数的情况相当于参数为0）。某些序列（如CUU）把0视为1，以使缺少参数的情况下有意义。

一部分字符定义是“私有”的，以便终端制造商可以插入他们自己的序列而不与标准相冲突。包括参数字节`<=>?`的使用，或者最终字节0x70–0x7F（`p–z{|}~`）例如序列`CSI?25h`和`CSI?25l`的作用是打开和关闭光标的显示。

当CSI序列含有超出0x20–0x7E范围的字符时，其行为是未定义的。这些非法字符包括C0控制字符（范围0–0x1F）、DEL（0x7F），以及高位字节。

<table>
<caption>一些ANSI控制序列（不完整列表）</caption>
<thead>
<tr class="header">
<th><p>代码</p></th>
<th><p>名称</p></th>
<th><p>作用 </p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>CSI <code>n</code> A</p></td>
<td><p>CUU – 光标上移（Cursor Up）</p></td>
<td><p>光标向指定的方向移动<span class="math inline"><em>n</em></span>（默认1）格。如果光标已在屏幕边缘，则无效。 </p></td>
</tr>
<tr class="even">
<td><p>CSI <code>n</code> B</p></td>
<td><p>CUD – 光标下移（Cursor Down） </p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSI <code>n</code> C</p></td>
<td><p>CUF – 光标前移（Cursor Forward） </p></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSI <code>n</code> D</p></td>
<td><p>CUB – 光标后移（Cursor Back）</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSI <code>n</code> E</p></td>
<td><p>CNL – 光标移到下一行（Cursor Next Line）</p></td>
<td><p>光标移动到下面第<span class="math inline"><em>n</em></span>（默认1）行的开头。（非）</p></td>
</tr>
<tr class="even">
<td><p>CSI <code>n</code> F</p></td>
<td><p>CPL – 光标移到上一行（Cursor Previous Line）</p></td>
<td><p>光标移动到上面第<span class="math inline"><em>n</em></span>（默认1）行的开头。（非ANSI.SYS）</p></td>
</tr>
<tr class="odd">
<td><p>CSI <code>n</code> G</p></td>
<td></td>
<td><p>光标移动到第<span class="math inline"><em>n</em></span>（默认1）列。（非ANSI.SYS） </p></td>
</tr>
<tr class="even">
<td></td>
<td><p>CUP – 光标位置（Cursor Position）</p></td>
<td><p>光标移动到第<span class="math inline"><em>n</em></span>行、第<span class="math inline"><em>m</em></span>列。值从1开始，且默认为<code>1</code>（左上角）。例如<code>CSI ;5H</code>和<code>CSI 1;5H</code>含义相同；<code>CSI 17;H</code>、<code>CSI 17H</code>和<code>CSI 17;1H</code>三者含义相同。 </p></td>
</tr>
<tr class="odd">
<td><p>CSI <code>n</code> J</p></td>
<td><p>ED – 擦除显示（Erase in Display）</p></td>
<td><p>清除屏幕的部分区域。如果<span class="math inline"><em>n</em></span>是0（或缺失），则清除从光标位置到屏幕末尾的部分。如果<span class="math inline"><em>n</em></span>是1，则清除从光标位置到屏幕开头的部分。如果<span class="math inline"><em>n</em></span>是2，则清除整个屏幕（在DOS ANSI.SYS中，光标还会向左上方移动）。如果<span class="math inline"><em>n</em></span>是3，则清除整个屏幕，并删除回滚缓存区中的所有行（这个特性是<a href="https://zh.wikipedia.org/wiki/xterm" title="wikilink">xterm添加的</a>，其他终端应用程序也支持）。 </p></td>
</tr>
<tr class="even">
<td><p>CSI <code>n</code> K</p></td>
<td><p>EL – 擦除行（Erase in Line）</p></td>
<td><p>清除行内的部分区域。如果<span class="math inline"><em>n</em></span>是0（或缺失），清除从光标位置到该行末尾的部分。如果<span class="math inline"><em>n</em></span>是1，清除从光标位置到该行开头的部分。如果<span class="math inline"><em>n</em></span>是2，清除整行。光标位置不变。 </p></td>
</tr>
<tr class="odd">
<td><p>CSI <code>n</code> S</p></td>
<td><p>SU – 向上滚动（Scroll Up）</p></td>
<td><p>整页向上滚动<span class="math inline"><em>n</em></span>（默认1）行。新行添加到底部。（非ANSI.SYS） </p></td>
</tr>
<tr class="even">
<td><p>CSI <code>n</code> T</p></td>
<td><p>SD – 向下滚动（Scroll Down）</p></td>
<td><p>整页向下滚动<span class="math inline"><em>n</em></span>（默认1）行。新行添加到顶部。（非ANSI.SYS） </p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>同CUP。 </p></td>
</tr>
<tr class="even">
<td></td>
<td><p>SGR – 选择图形再现（Select Graphic Rendition）</p></td>
<td><p>设置<a href="https://zh.wikipedia.org/wiki/#选择图形再现（SGR）参数" title="wikilink">SGR参数</a>，包括文字颜色。CSI后可以是0或者更多参数，用分号分隔。如果没有参数，则视为<code>CSI 0 m</code>（重置/常规）。 </p></td>
</tr>
<tr class="odd">
<td><p>CSI 5i</p></td>
<td><p>打开辅助端口</p></td>
<td><p>启用辅助串行端口，通常用于本地串行打印机 </p></td>
</tr>
<tr class="even">
<td><p>CSI 4i</p></td>
<td><p>关闭辅助端口</p></td>
<td><p>禁用辅助串行端口，通常用于本地串行打印机 </p></td>
</tr>
<tr class="odd">
<td><p>CSI 6n</p></td>
<td><p>DSR – 设备状态报告（Device Status Report）</p></td>
<td><p>以<code>ESC[n;mR</code>（就像在键盘上输入）向应用程序报告光标位置（CPR），其中<span class="math inline"><em>n</em></span>是行，<span class="math inline"><em>m</em></span>是列。 </p></td>
</tr>
<tr class="even">
<td><p>CSI s</p></td>
<td><p>SCP – 保存光标位置（Save Cursor Position）</p></td>
<td><p>保存光标的当前位置。 </p></td>
</tr>
<tr class="odd">
<td><p>CSI u</p></td>
<td><p>RCP – 恢复光标位置（Restore Cursor Position）</p></td>
<td><p>恢复保存的光标位置。</p></td>
</tr>
</tbody>
</table>

## 选择图形再现（SGR）参数

<table>
<thead>
<tr class="header">
<th><p>代码</p></th>
<th><p>作用</p></th>
<th><p>备注</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0</p></td>
<td><p>重置/正常</p></td>
<td><p>关闭所有属性。</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>粗体或增加强度</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>弱化（降低强度）</p></td>
<td><p>未广泛支持。</p></td>
</tr>
<tr class="even">
<td><p>3</p></td>
<td><p>斜体</p></td>
<td><p>未广泛支持。有时视为反相显示。</p></td>
</tr>
<tr class="odd">
<td><p>4</p></td>
<td><p>下划线</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5</p></td>
<td><p>缓慢闪烁</p></td>
<td><p>低于每分钟150次。</p></td>
</tr>
<tr class="odd">
<td><p>6</p></td>
<td><p>快速闪烁</p></td>
<td><p>MS-DOS ANSI.SYS；每分钟150以上；未广泛支持。</p></td>
</tr>
<tr class="even">
<td><p>7</p></td>
<td><p>反显</p></td>
<td><p>前景色与背景色交换。</p></td>
</tr>
<tr class="odd">
<td><p>8</p></td>
<td><p>隐藏</p></td>
<td><p>未广泛支持。</p></td>
</tr>
<tr class="even">
<td><p>9</p></td>
<td><p>划除</p></td>
<td><p>字符清晰，但标记为删除。未广泛支持。</p></td>
</tr>
<tr class="odd">
<td><p>10</p></td>
<td><p>主要（默认）字体</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>11–19</p></td>
<td><p>替代字体</p></td>
<td><p>选择替代字体<span class="math inline"><em>n</em> − 10</span>。</p></td>
</tr>
<tr class="odd">
<td><p>20</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/德文尖角体" title="wikilink">尖角体</a></p></td>
<td><p>几乎无支持。</p></td>
</tr>
<tr class="even">
<td><p>21</p></td>
<td><p>关闭粗体或双下划线</p></td>
<td><p>关闭粗体未广泛支持；双下划线几乎无支持。</p></td>
</tr>
<tr class="odd">
<td><p>22</p></td>
<td><p>正常颜色或强度</p></td>
<td><p>不强不弱。</p></td>
</tr>
<tr class="even">
<td><p>23</p></td>
<td><p>非斜体、非尖角体</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>24</p></td>
<td><p>关闭下划线</p></td>
<td><p>去掉单双下划线。</p></td>
</tr>
<tr class="even">
<td><p>25</p></td>
<td><p>关闭闪烁</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>27</p></td>
<td><p>关闭反显</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>28</p></td>
<td><p>关闭隐藏</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>29</p></td>
<td><p>关闭划除</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>30–37</p></td>
<td><p>设置前景色</p></td>
<td><p>参见下面的颜色表。</p></td>
</tr>
<tr class="odd">
<td><p>38</p></td>
<td><p>设置前景色</p></td>
<td><p>下一个参数是<code>5;n</code>或<code>2;r;g;b</code>，见下。</p></td>
</tr>
<tr class="even">
<td><p>39</p></td>
<td><p>默认前景色</p></td>
<td><p>由具体实现定义（按照标准）。</p></td>
</tr>
<tr class="odd">
<td><p>40–47</p></td>
<td><p>设置背景色</p></td>
<td><p>参见下面的颜色表。</p></td>
</tr>
<tr class="even">
<td><p>48</p></td>
<td><p>设置背景色</p></td>
<td><p>下一个参数是<code>5;n</code>或<code>2;r;g;b</code>，见下。</p></td>
</tr>
<tr class="odd">
<td><p>49</p></td>
<td><p>默认背景色</p></td>
<td><p>由具体实现定义（按照标准）。</p></td>
</tr>
<tr class="even">
<td><p>51</p></td>
<td><p>Framed</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>52</p></td>
<td><p>Encircled</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>53</p></td>
<td><p>上划线</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>54</p></td>
<td><p>Not framed or encircled</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>55</p></td>
<td><p>关闭上划线</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>60</p></td>
<td><p>表意文字下划线或右边线</p></td>
<td><p>几乎无支持。</p></td>
</tr>
<tr class="even">
<td><p>61</p></td>
<td><p>表意文字双下划线或双右边线</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>62</p></td>
<td><p>表意文字上划线或左边线</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>63</p></td>
<td><p>表意文字双上划线或双左边线</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>64</p></td>
<td><p>表意文字着重标志</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>65</p></td>
<td><p>表意文字属性关闭</p></td>
<td><p>重置<code>60</code>–<code>64</code>的所有效果。</p></td>
</tr>
<tr class="odd">
<td><p>90–97</p></td>
<td><p>设置明亮的前景色</p></td>
<td><p>aixterm（非标准）。</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>设置明亮的背景色</p></td>
<td><p>aixterm（非标准）。</p></td>
</tr>
</tbody>
</table>

## 颜色

### 3/4位

初始的规格只有8种颜色，只给了它们的名字。SGR参数30-37选择前景色，40-47选择背景色。相当多的终端将“粗体”（SGR代码1）实现为更明亮的颜色而不是不同的字体，从而提供了8种额外的前景色，但通常情况下并不能用于背景色，虽然有时候反显（SGR代码7）可以允许这样。例如：在白色背景上显示黑色文字使用`ESC[30;47m`，显示红色文字用`ESC[31m`，显示明亮的红色文字用`ESC[1;31m`。重置为默认颜色用`ESC[39;49m`（某些终端不支持），重置所有属性用`ESC[0m`。后来的终端新增了功能，可以直接用90-97和100-107指定“明亮”的颜色。

当硬件开始使用8位[DAC时](https://zh.wikipedia.org/wiki/数字模拟转换器 "wikilink")，多个软件为这些颜色名称分配了24位的代码。下面的图表显示了发送到DAC的一些常用硬件和软件的值。

<table>
<thead>
<tr class="header">
<th><p>名称</p></th>
<th><p>前景色代码</p></th>
<th><p>背景色代码</p></th>
<th><p>VGA[23]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/命令提示符" title="wikilink">CMD</a>[24]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/终端_(macOS)" title="wikilink">Terminal.app</a></p></th>
<th><p><a href="../Page/PuTTY.md" title="wikilink">PuTTY</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/mIRC" title="wikilink">mIRC</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/xterm" title="wikilink">xterm</a></p></th>
<th><p>[25]</p></th>
<th><p><a href="../Page/Ubuntu.md" title="wikilink">Ubuntu</a>[26]</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>黑</p></td>
<td><p>30</p></td>
<td><p>40</p></td>
<td><p>0,0,0</p></td>
<td><p>1,1,1</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>红</p></td>
<td><p>31</p></td>
<td><p>41</p></td>
<td><p>170,0,0</p></td>
<td><p>128,0,0</p></td>
<td><p>194,54,33</p></td>
<td><p>187,0,0</p></td>
<td><p>127,0,0</p></td>
<td><p>205,0,0</p></td>
<td><p>255,0,0</p></td>
<td><p>222,56,43</p></td>
</tr>
<tr class="odd">
<td><p>绿</p></td>
<td><p>32</p></td>
<td><p>42</p></td>
<td><p>0,170,0</p></td>
<td><p>0,128,0</p></td>
<td><p>37,188,36</p></td>
<td><p>0,187,0</p></td>
<td><p>0,147,0</p></td>
<td><p>0,205,0</p></td>
<td><p>0,255,0</p></td>
<td><p>57,181,74</p></td>
</tr>
<tr class="even">
<td><p>黄</p></td>
<td><p>33</p></td>
<td><p>43</p></td>
<td><p>170,85,0[27]</p></td>
<td><p>128,128,0</p></td>
<td><p>173,173,39</p></td>
<td><p>187,187,0</p></td>
<td><p>252,127,0</p></td>
<td><p>205,205,0</p></td>
<td><p>255,255,0</p></td>
<td><p>255,199,6</p></td>
</tr>
<tr class="odd">
<td><p>蓝</p></td>
<td><p>34</p></td>
<td><p>44</p></td>
<td><p>0,0,170</p></td>
<td><p>0,0,128</p></td>
<td><p>73,46,225</p></td>
<td><p>0,0,187</p></td>
<td><p>0,0,127</p></td>
<td><p>0,0,238[28]</p></td>
<td><p>0,0,255</p></td>
<td><p>0,111,184</p></td>
</tr>
<tr class="even">
<td><p>品红</p></td>
<td><p>35</p></td>
<td><p>45</p></td>
<td><p>170,0,170</p></td>
<td><p>128,0,128</p></td>
<td><p>211,56,211</p></td>
<td><p>187,0,187</p></td>
<td><p>156,0,156</p></td>
<td><p>205,0,205</p></td>
<td><p>255,0,255</p></td>
<td><p>118,38,113</p></td>
</tr>
<tr class="odd">
<td><p>青</p></td>
<td><p>36</p></td>
<td><p>46</p></td>
<td><p>0,170,170</p></td>
<td><p>0,128,128</p></td>
<td><p>51,187,200</p></td>
<td><p>0,187,187</p></td>
<td><p>0,147,147</p></td>
<td><p>0,205,205</p></td>
<td><p>0,255,255</p></td>
<td><p>44,181,233</p></td>
</tr>
<tr class="even">
<td><p>白</p></td>
<td><p>37</p></td>
<td><p>47</p></td>
<td><p>170,170,170</p></td>
<td><p>192,192,192</p></td>
<td><p>203,204,205</p></td>
<td><p>187,187,187</p></td>
<td><p>210,210,210</p></td>
<td><p>229,229,229</p></td>
<td><p>255,255,255</p></td>
<td><p>204,204,204</p></td>
</tr>
<tr class="odd">
<td><p>亮黑（灰）</p></td>
<td><p>90</p></td>
<td><p>100</p></td>
<td><p>85,85,85</p></td>
<td><p>128,128,128</p></td>
<td><p>129,131,131</p></td>
<td><p>85,85,85</p></td>
<td><p>127,127,127</p></td>
<td><p>127,127,127</p></td>
<td></td>
<td><p>128,128,128</p></td>
</tr>
<tr class="even">
<td><p>亮红</p></td>
<td><p>91</p></td>
<td><p>101</p></td>
<td><p>255,85,85</p></td>
<td><p>255,0,0</p></td>
<td><p>252,57,31</p></td>
<td><p>255,85,85</p></td>
<td><p>255,0,0</p></td>
<td><p>255,0,0</p></td>
<td></td>
<td><p>255,0,0</p></td>
</tr>
<tr class="odd">
<td><p>亮绿</p></td>
<td><p>92</p></td>
<td><p>102</p></td>
<td><p>85,255,85</p></td>
<td><p>0,255,0</p></td>
<td><p>49,231,34</p></td>
<td><p>85,255,85</p></td>
<td><p>0,252,0</p></td>
<td><p>0,255,0</p></td>
<td><p>144,238,144</p></td>
<td><p>0,255,0</p></td>
</tr>
<tr class="even">
<td><p>亮黄</p></td>
<td><p>93</p></td>
<td><p>103</p></td>
<td><p>255,255,85</p></td>
<td><p>255,255,0</p></td>
<td><p>234,236,35</p></td>
<td><p>255,255,85</p></td>
<td><p>255,255,0</p></td>
<td><p>255,255,0</p></td>
<td><p>255,255,224</p></td>
<td><p>255,255,0</p></td>
</tr>
<tr class="odd">
<td><p>亮蓝</p></td>
<td><p>94</p></td>
<td><p>104</p></td>
<td><p>85,85,255</p></td>
<td><p>0,0,255</p></td>
<td><p>88,51,255</p></td>
<td><p>85,85,255</p></td>
<td><p>0,0,252</p></td>
<td><p>92,92,255[29]</p></td>
<td><p>173,216,230</p></td>
<td><p>0,0,255</p></td>
</tr>
<tr class="even">
<td><p>亮品红</p></td>
<td><p>95</p></td>
<td><p>105</p></td>
<td><p>255,85,255</p></td>
<td><p>255,0,255</p></td>
<td><p>249,53,248</p></td>
<td><p>255,85,255</p></td>
<td><p>255,0,255</p></td>
<td><p>255,0,255</p></td>
<td></td>
<td><p>255,0,255</p></td>
</tr>
<tr class="odd">
<td><p>亮青</p></td>
<td><p>96</p></td>
<td><p>106</p></td>
<td><p>85,255,255</p></td>
<td><p>0,255,255</p></td>
<td><p>20,240,240</p></td>
<td><p>85,255,255</p></td>
<td><p>0,255,255</p></td>
<td><p>0,255,255</p></td>
<td><p>224,255,255</p></td>
<td><p>0,255,255</p></td>
</tr>
<tr class="even">
<td><p>亮白</p></td>
<td><p>97</p></td>
<td><p>107</p></td>
<td><p>255,255,255</p></td>
<td><p>255,255,255</p></td>
<td><p>233,235,235</p></td>
<td><p>255,255,255</p></td>
<td><p>255,255,255</p></td>
<td><p>255,255,255</p></td>
<td></td>
<td><p>255,255,255</p></td>
</tr>
</tbody>
</table>

### 8位

随着256色查找表在显卡上越来越常见，相应的转义序列也增加了，以从预定义的256种颜色中选择：

`   ESC[ … 38;5;`<n>`  … m选择前景色 `
`   ESC[ … 48;5;`<n>`  … m选择背景色 `
`     0-  7：标准颜色（同ESC [ 30–37 m）`
`     8- 15：高强度颜色（同ESC [ 90–97 m）`
`    16-231：6 × 6 × 6 立方（216色）: 16 + 36 × r + 6 × g + b (0 ≤ r, g, b ≤ 5)`
`   232-255：从黑到白的24阶灰度色`

[ITU的T](https://zh.wikipedia.org/wiki/ITU "wikilink").416信息技术-开放文档体系结构（ODA）和交换格式：字符内容体系结构\[30\]使用“:”作为分隔符：

`   ESC[ … 38:5:`<n>`  … m选择前景色 `
`   ESC[ … 48:5:`<n>`  … m选择背景色 `

<table>
<thead>
<tr class="header">
<th><p>256色模式 — 前景色：<code>ESC[38;5;#m</code>   背景色：<code>ESC[48;5;#m</code></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>标准色</p></td>
</tr>
<tr class="even">
<td><table>
<tbody>
<tr class="odd">
<td><p> 0 </p></td>
<td><p> 1 </p></td>
<td><p> 2 </p></td>
<td><p> 3 </p></td>
<td><p> 4 </p></td>
<td><p> 5 </p></td>
<td><p> 6 </p></td>
<td><p> 7 </p></td>
<td></td>
<td><p> 8 </p></td>
<td><p> 9 </p></td>
<td><p>10</p></td>
<td><p>11</p></td>
<td><p>12</p></td>
<td><p>13</p></td>
<td><p>14</p></td>
<td><p>15</p></td>
</tr>
</tbody>
</table></td>
</tr>
<tr class="odd">
<td><p>216色</p></td>
</tr>
<tr class="even">
<td><p>16</p></td>
</tr>
<tr class="odd">
<td><p>52</p></td>
</tr>
<tr class="even">
<td><p>88</p></td>
</tr>
<tr class="odd">
<td><p>124</p></td>
</tr>
<tr class="even">
<td><p>160</p></td>
</tr>
<tr class="odd">
<td><p>196</p></td>
</tr>
<tr class="even">
<td></td>
</tr>
<tr class="odd">
<td><p>灰度色</p></td>
</tr>
<tr class="even">
<td><table>
<tbody>
<tr class="odd">
<td><p>232</p></td>
<td><p>233</p></td>
<td><p>234</p></td>
<td><p>235</p></td>
<td><p>236</p></td>
<td><p>237</p></td>
<td><p>238</p></td>
<td><p>239</p></td>
<td><p>240</p></td>
<td><p>241</p></td>
<td><p>242</p></td>
<td><p>243</p></td>
<td><p>244</p></td>
<td><p>245</p></td>
<td><p>246</p></td>
<td><p>247</p></td>
<td><p>248</p></td>
<td><p>249</p></td>
<td><p>250</p></td>
<td><p>251</p></td>
<td><p>252</p></td>
<td><p>253</p></td>
<td><p>254</p></td>
<td><p>255</p></td>
</tr>
</tbody>
</table></td>
</tr>
</tbody>
</table>

### 24位

随着16位到24位颜色的“真彩色”显卡的普及，Xterm\[31\]、KDE的[Konsole](../Page/Konsole.md "wikilink")\[32\]，以及所有基于libvte的终端\[33\]（包括）支持了ISO-8613-3的24位前景色和背景色设置。\[34\]

`   ESC[ … 38;2;`<r>`;`<g>`;`<b>`  … m选择RGB前景色 `
`   ESC[ … 48;2;`<r>`;`<g>`;`<b>`  … m选择RGB背景色 `

作为ISO /
IEC国际标准8613-6采用的[ITU的T](https://zh.wikipedia.org/wiki/ITU "wikilink").416信息技术-开放文档体系结构（ODA）和交换格式：字符内容体系结构\[35\]给出了一个似乎不太受支持的替代版本：

`   ESC[
… 38:2:`<Color-Space-ID>`:`<r>`:`<g>`:`<b>`:`<unused>`:`<CS tolerance>`:<Color-Space: 0="CIELUV"; 1="CIELAB">m选择RGB前景色`
`   ESC[
… 48:2:`<Color-Space-ID>`:`<r>`:`<g>`:`<b>`:`<unused>`:`<CS tolerance>`:<Color-Space: 0="CIELUV"; 1="CIELAB">m选择RGB背景色`

请注意，这里使用了保留的“:”字符来分隔子选项，这可能是在实际实现中造成混淆的始作俑者。它还使用“3”作为第二个参数来指定使用青-品红-黄方案的方案，“4”用于青-品红-黄-黑的方案，后者使用上面标记为“unused”（“未使用”）的位置作为黑色组件。

还要注意，许多识别“:”作为分隔符的实现错误地忽视了色彩空间标识符参数，并因此改变了其余部分的位置。

## 示例

`CSI 2 J` — 清除屏幕、（在某些设备上）把光标置于1,1位置（左上角）。

`CSI 32 m` — 使文字呈绿色。在MS-DOS上，一般绿色是暗淡的绿色，可以用`CSI 1
m`启用粗体使其变成明亮的绿色，或者将两者合并为`CSI 32
; 1 m`。MS-DOS ANSI.SYS用粗体状态使字符变亮，闪烁状态（通过`INT 10, AX 1003h,
BL 00h`)使背景色变成明亮模式。MS-DOS ANSI.SYS并不直接支持SGR代码90–97和100–107。

`CSI 0 ; 6 8 ; "DIR" ; 13 p` —
重新分配F10键的功能为发送字符串“DIR”和回车符到键盘缓存中，在DOS命令行里会显示当前目录的内容（仅MS-DOS
ANSI.SYS）。这种序列有时用于“”。这是一个私用编码（如字母p所示），用非标准的扩展使其包含一个字符串参数。如果按标准，会认为字母D是序列的末尾。

`CSI s` — 保存光标的位置。用序列`CSI u`会把光标重置回这个位置。假设当前的光标位置是7（y）、10（x）。序列`CSI
s`会保存这两个数值。现在可以把光标移动到其他位置，比如用序列`CSI 20 ; 3 H`或`CSI 20 ; 3
f`把光标移动到20（y）、3（x）。现在如果用序列`CSI
u`，光标会回到7（y）、10（x）。某些终端需要使用DEC序列`ESC 7`/`ESC 8`，这得到了更广泛的支持。

### 使用Shell脚本的示例

ANSI转移代码常常用于[UNIX和类UNIX终端](../Page/UNIX.md "wikilink")，以提供[语法高亮功能](https://zh.wikipedia.org/wiki/语法高亮 "wikilink")。例如，在兼容的终端上，以下[ls命令按类型对文件和目录的名称进行颜色编码](https://zh.wikipedia.org/wiki/ls "wikilink")。

`ls --color`

用户可以在脚本中使用转义码，将其作为[标准输出或](https://zh.wikipedia.org/wiki/标准输出 "wikilink")[标准错误输出的一部分](https://zh.wikipedia.org/wiki/标准错误输出 "wikilink")。例如，下面的GNU
[sed命令通过反显](https://zh.wikipedia.org/wiki/sed "wikilink")“WARN”开头的单词的行，以及使用暗红色背景色和亮黄色前景色显示以“ERR”开头的单词（字母大小写被忽略）的行来修饰make命令的输出。突出显示了设置ANSI代码的部分。\[36\]

<span style="white-space:pre-wrap;">`make 2>&1 | sed -e 's/.*\bWARN.*/`<span style="border:1px solid grey;border-radius:5px;color:white;background:black;font-weight:bolder;">`\x1b[7m`</span>`&`<span style="border:1px solid grey;border-radius:5px;">`\x1b[0m`</span>`/i' -e 's/.*\bERR.*/`<span style="border:1px solid grey;border-radius:5px;color:yellow;background:maroon;font-weight:bolder;">`\x1b[93;41 m`</span>`&`<span style="border:1px solid grey;border-radius:5px;">`\x1b[0m`</span>`/i'`</span>

以下Bash函数会使终端闪烁（通过交替发送反相和正常显示模式代码），直到用户按下任意键\[37\]。这个函数可以用于当一个冗长的命令终止时提醒用户，用法如`make;
flasher`\[38\]。

<span style="white-space:pre-wrap;">`flasher () { while true; do printf `<span style="border:1px solid grey;border-radius:5px;color:white;background:black;font-weight:bolder;">`\\e[?5h`</span>`; sleep 0.1; printf `<span style="border:1px solid grey;border-radius:5px;font-weight:bolder;">`\\e[?5l`</span>`; read -s -n1 -t1 && break; done; }`</span>

下面这个命令可以重置控制台，类似现代Linux系统的`reset`命令。然而，即使在较早的Linux系统和其他（非Linux）UNIX变体上，也应该能起作用。

`printf \\033c`

## 参见

  - [控制字符](../Page/控制字符.md "wikilink")

## 脚注

## 参考资料

## 外部链接

  - [Standard ECMA-48, Control Functions For Coded Character
    Sets](http://www.ecma-international.org/publications/standards/Ecma-048.htm).
    (*5th edition, June 1991*), European Computer Manufacturers
    Association, Geneva 1991 (also published by ISO and IEC as standard
    ISO/IEC 6429)

  - [vt100.net DEC Documents](http://vt100.net/docs/)

  -
  - [Xterm / Escape
    Sequences](http://invisible-island.net/xterm/ctlseqs/ctlseqs.html)

  - [AIXterm / Escape
    Sequences](http://publib.boulder.ibm.com/infocenter/aix/v6r1/index.jsp?topic=%2Fcom.ibm.aix.cmds%2Fdoc%2Faixcmds1%2Faixterm.htm)

  - [A collection of escape sequences for terminals that are vaguely
    compliant with ECMA-48 and
    friends.](http://bjh21.me.uk/all-escapes/all-escapes.txt)

  - [ANSI Escape
    Sequences](http://ascii-table.com/ansi-escape-sequences.php)

  - \[<https://www.itu.int/rec/dologin_pub.asp?lang=e&id=T-REC-T.416-199303-I>\!\!PDF-E\&type=items
    ITU-T Rec. T.416 (03/93) Information technology – Open Document
    Architecture (ODA) and interchange format: Character content
    architectures\]

[Category:计算机标准](https://zh.wikipedia.org/wiki/Category:计算机标准 "wikilink")
[Category:Ecma標準](https://zh.wikipedia.org/wiki/Category:Ecma標準 "wikilink")
[Category:文本用户界面](https://zh.wikipedia.org/wiki/Category:文本用户界面 "wikilink")

1.  [Historical version of
    ECMA-48](http://www.ecma-international.org/publications/files/ECMA-ST/ECMA-48,%202nd%20Edition,%20August%201979.pdf)

2.

3.

4.  [Withdrawn FIPS Listed by
    Number](https://www.nist.gov/itl/upload/Withdrawn-FIPS-by-Numerical-Order-Index2.pdf)

5.

6.  ["Using
    C-Kermit"](https://books.google.com/books?id=Z0ejBQAAQBAJ&pg=PA88),
    p. 88.

7.  屏幕显示可以通过从底部绘制整个新屏幕的内容来替代，滚动上一屏幕以充分擦除所有旧文本内容。用户会看到滚动，硬件[光标会留在最底部](https://zh.wikipedia.org/wiki/光标 "wikilink")。
    一些早期的[批处理文件以这种方式实现了基本的](https://zh.wikipedia.org/wiki/批处理文件 "wikilink")“全屏”显示。

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
22.
23. 在启动PC并将其保留在文本模式下时使用的典型颜色，使用16个条目的颜色表。EGA/VGA图形模式中的颜色不同。

24. 从Windows XP起

25. 以上颜色名称来自X11 rgb.txt颜色数据库，用“light”作为明亮颜色的前缀。

26. 用于虚拟终端，来自/etc/vtrgb。

27. 在基于[CGA兼容硬件](https://zh.wikipedia.org/wiki/彩色图形适配器 "wikilink")（如在DOS上运行的ANSI.SYS）的终端上，正常强度的前景色呈现为橙色。
    CGA RGBI显示器包含一些硬件，通过减少绿色成分将深黄色修改为橙色/棕色。

28. Changed from 0,0,205 in July 2004

29. Changed from 0,0,255 in July 2004

30.

31.

32.

33.

34.

35.

36.

37.

38.