**INT 10h**，**INT 10H**或**INT
16**是[BIOS中断调用的第](https://zh.wikipedia.org/wiki/BIOS中断呼叫 "wikilink")10H功能的简写，
在基于[x86的计算机系统中属于第](../Page/x86.md "wikilink")17[中断向量](https://zh.wikipedia.org/wiki/中断向量 "wikilink")。[BIOS通常在此建立了一个](../Page/BIOS.md "wikilink")[中断处理程序提供了](https://zh.wikipedia.org/wiki/中断处理程序 "wikilink")[实模式下的视频服务](https://zh.wikipedia.org/wiki/实模式 "wikilink")。此类服务包括设置显示模式，字符和字符串输出，和基本图形（在图形模式下的读取和写入[像素](../Page/像素.md "wikilink")）功能。要使用这个功能的调用，在寄存器AH赋予子功能号，其它的寄存器赋予其它所需的参数，并用指令INT
10H调用。INT
10H的执行速度是相当缓慢的，所以很多程序都绕过这个[BIOS例程而直接访问显示硬件](../Page/BIOS.md "wikilink")。设置显示模式并不经常使用，可以通过[BIOS来实现](../Page/BIOS.md "wikilink")，而一个游戏在屏幕上绘制图形，需要做得很快，所以直接访问显存比用BIOS调用每个像素更适合。

## 支持功能列表

<table>
<thead>
<tr class="header">
<th><p>功能</p></th>
<th><p>功能代码</p></th>
<th><p>参数</p></th>
<th><p>返回</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>设置显示模式</p></td>
<td><p>AH=00H</p></td>
<td><p>AL=显示模式</p></td>
<td><p>AL=显示模式标志/CRT控制模式字节</p></td>
</tr>
<tr class="even">
<td><p>设置文本方式光标</p></td>
<td><p>AH=01H</p></td>
<td><p>CH=行扫描开始，CL=行扫描结束<br />
通常一个字符单元有8个扫描行（0-7）。所以，CX=0607H是一个正常的光标，CX=0007H是一个完整块光标。如果设置CH的第5位，这通常意味着“隐藏光标”，所以CX=2607H是一种无形光标。<br />
<br />
有些显示卡有16条扫描线（00H-0Fh）。<br />
<br />
有些显示卡不使用CH的第5位，对于这种情况，可以尝试行扫描开始大于行扫描结束（如：CX=0706h） 。</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>设置光标位置</p></td>
<td><p>AH=02H</p></td>
<td><p>BH=页码，DH=列，DL=行</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>获取光标位置和形状</p></td>
<td><p>AH=03H</p></td>
<td><p>BX=页码</p></td>
<td><p>AX=0，CH=行扫描开始，CL=行扫描结束，DH=行，DL=列</p></td>
</tr>
<tr class="odd">
<td><p>读取光笔位置（VGA系统不工作）</p></td>
<td><p>AH=04H</p></td>
<td></td>
<td><p>AH=状态（0=无触发，1=触发），BX=X像素，CH=Y像素，CL=像素行模式（0FH-10H），DH=字符Y，DL=字符X</p></td>
</tr>
<tr class="even">
<td><p>选择活动显示页</p></td>
<td><p>AH=05H</p></td>
<td><p>AL=页码</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>向上滚动窗口</p></td>
<td><p>AH=06H</p></td>
<td><p>AL=滚动的行（0=清除，被用于CH，CL，DH，DL），<br />
BH=背景颜色和前景颜色，BH=43H，意义为背景颜色为红色，前景颜色为青色。请参考 <a href="https://zh.wikipedia.org/wiki/BIOS颜色属性" title="wikilink">BIOS颜色属性</a>。<br />
CH=高行数，CL=左列数，DH=低行数，DL=右列数</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>向下滚动窗口</p></td>
<td><p>AH=07H</p></td>
<td><p>参考向上滚动</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>读光标所在位置的字符和属性</p></td>
<td><p>AH=08H</p></td>
<td><p>BH=页码</p></td>
<td><p>AH=颜色，AL=字符</p></td>
</tr>
<tr class="even">
<td><p>在当前光标位置写字符和属性</p></td>
<td><p>AH=09H</p></td>
<td><p>AL=字符，BH=页码，BL=颜色，CX=多次打印字符</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>在光标位置写入字符</p></td>
<td><p>AH=0AH</p></td>
<td><p>AL=字符，BH=页码，CX=多次打印字符</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>设置背景/边框颜色</p></td>
<td><p>AH=0BH,BH=00H</p></td>
<td><p>BL=背景/边框颜色（边框颜色只能在文本模式设置）</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>设置调色板</p></td>
<td><p>AH=0BH,BH=01H</p></td>
<td><p>CGA]]，但现在的显示卡都支持多个或所有模式。）</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>写图形像素</p></td>
<td><p>AH=0CH</p></td>
<td><p>AL=颜色，BH=页码 CX=x，DX=y</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>读图形像素</p></td>
<td><p>AH=0DH</p></td>
<td><p>BH=页码，CX=x，DX=y</p></td>
<td><p>AL=颜色</p></td>
</tr>
<tr class="even">
<td><p>电传打字机输出</p></td>
<td><p>AH=0EH</p></td>
<td><p>AL=字符，BH=页码，BL=颜色（只适用于图形模式）</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>获取当前显示模式</p></td>
<td><p>AH=0FH</p></td>
<td></td>
<td><p>AH＝屏幕字符的列数</p>
<p><code>         AL＝显示模式(参见功能00H中的说明)</code><br />
<code>         BH＝页码</code></p></td>
</tr>
<tr class="even">
<td><p>写字符串（EGA+，最低PC AT ）</p></td>
<td><p>AH=13H</p></td>
<td><p>AL=写模式，BH=页码，BL=颜色，CX=字符串长度，DH=行，DL=列，ES:BP=字符串偏移量</p></td>
<td></td>
</tr>
</tbody>
</table>

## 参考

  - [INT 10h from Ralf Brown Interrupt List, online
    version](http://www.ctyme.com/intr/int-10.htm)
  - [INT 10h on www.ousob.com](http://www.ousob.com/ng/asm/ng6f862.php)

## 参见

  - [BIOS 中斷呼叫](https://zh.wikipedia.org/wiki/BIOS_中斷呼叫 "wikilink")
  - [INT 13h](https://zh.wikipedia.org/wiki/INT_13h "wikilink")
  - [mode 13h](https://zh.wikipedia.org/wiki/mode_13h "wikilink")

[Category:BIOS](https://zh.wikipedia.org/wiki/Category:BIOS "wikilink")
[Category:中断](https://zh.wikipedia.org/wiki/Category:中断 "wikilink")