**BIOS[中断调用](https://zh.wikipedia.org/wiki/中断 "wikilink")**（）是一組功能，为[DOS](../Page/DOS.md "wikilink")程式與一些软件提供使用[IBM PC兼容机上](../Page/IBM_PC兼容机.md "wikilink")[BIOS](../Page/BIOS.md "wikilink")的功能。一些[操作系统](../Page/操作系统.md "wikilink")在[系统引导時也使用BIOS以检测并初始化硬件資源](https://zh.wikipedia.org/wiki/系统引导 "wikilink")。

## 中断调用

若要调用中断，可以使用[X86](../Page/X86.md "wikilink")[汇编语言](../Page/汇编语言.md "wikilink")的[INT指令](https://zh.wikipedia.org/wiki/INT_\(x86指令\) "wikilink")。 例如，如下的[x86](https://zh.wikipedia.org/wiki/x86 "wikilink")[汇编语言](../Page/汇编语言.md "wikilink")指令可以使用BIOS的0x10中断向屏幕打印一个字符。

<code language="x86">

`mov ah, 0x0e`
`mov al, '!'`
`int 0x10`

</code>

## BIOS 中斷向量表

<table style="width:95%;">
<colgroup>
<col style="width: 19%" />
<col style="width: 76%" />
</colgroup>
<thead>
<tr class="header">
<th><p>中斷</p></th>
<th><p>描述</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>INT 00h</p></td>
<td><p>CPU：除零错，或商不合法时触发</p></td>
</tr>
<tr class="even">
<td><p>INT 01h</p></td>
<td><p>CPU：单步陷阱，TF标记为打开状态时，每条指令执行后触发</p></td>
</tr>
<tr class="odd">
<td><p>INT 02h</p></td>
<td><p>CPU：，如<a href="https://zh.wikipedia.org/wiki/開機自我測試" title="wikilink">開機自我測試时发生内存错误</a>。</p></td>
</tr>
<tr class="even">
<td><p>INT 03h</p></td>
<td><p>CPU：第一个未定义的中断向量，约定俗成仅用于调试程序</p></td>
</tr>
<tr class="odd">
<td><p>INT 04h</p></td>
<td><p>CPU：算数溢出。通常由INTO指令在置溢出位时触发。</p></td>
</tr>
<tr class="even">
<td><p>INT 05h</p></td>
<td><p>在按下Shift-<a href="https://zh.wikipedia.org/wiki/Print_Screen" title="wikilink">Print Screen或BOUND指令检测到范围异常时触发</a>。</p></td>
</tr>
<tr class="odd">
<td><p>INT 06h</p></td>
<td><p>CPU：非法指令。</p></td>
</tr>
<tr class="even">
<td><p>INT 07h</p></td>
<td><p>CPU：没有<a href="https://zh.wikipedia.org/wiki/8087协处理器" title="wikilink">数学协处理器时尝试执行浮点指令触发</a>。</p></td>
</tr>
<tr class="odd">
<td><p>INT 08h</p></td>
<td><p>IRQ0：可编程中断控制器每 55 毫秒触发一次，即每秒 18.2 次。</p></td>
</tr>
<tr class="even">
<td><p>INT 09h</p></td>
<td><p>IRQ1：每次键盘按下、按住、释放。</p></td>
</tr>
<tr class="odd">
<td><p>INT 0Ah</p></td>
<td><p>IRQ2：</p></td>
</tr>
<tr class="even">
<td><p>INT 0Bh</p></td>
<td><p>IRQ3：<a href="https://zh.wikipedia.org/wiki/串口" title="wikilink">COM2/COM4</a>。</p></td>
</tr>
<tr class="odd">
<td><p>INT 0Ch</p></td>
<td><p>IRQ4：<a href="https://zh.wikipedia.org/wiki/串口" title="wikilink">COM1/COM3</a>。</p></td>
</tr>
<tr class="even">
<td><p>INT 0Dh</p></td>
<td><p>IRQ5：硬盘控制器（PC/XT 下）或 <a href="https://zh.wikipedia.org/wiki/并口" title="wikilink">LPT2</a>。</p></td>
</tr>
<tr class="odd">
<td><p>INT 0Eh</p></td>
<td><p>IRQ6：需要時由<a href="../Page/軟碟控制器.md" title="wikilink">軟碟控制器</a>呼叫。</p></td>
</tr>
<tr class="even">
<td><p>INT 0Fh</p></td>
<td><p>IRQ7：<a href="https://zh.wikipedia.org/wiki/并口" title="wikilink">LPT1</a>。</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/INT_10" title="wikilink">INT 10h</a></p></td>
<td><p>显示服务 - 由BIOS或操作系统设定以供软件调用。</p>
<table>
<tbody>
<tr class="odd">
<td><p>AH=00h</p></td>
<td><p>设定显示模式</p></td>
</tr>
<tr class="even">
<td><p>AH=01h</p></td>
<td><p>设定游标形态</p></td>
</tr>
<tr class="odd">
<td><p>AH=02h</p></td>
<td><p>設定游標位置</p></td>
</tr>
<tr class="even">
<td><p>AH=03h</p></td>
<td><p>获取光标位置与形态</p></td>
</tr>
<tr class="odd">
<td><p>AH=04h</p></td>
<td><p>获取光标位置</p></td>
</tr>
<tr class="even">
<td><p>AH=05h</p></td>
<td><p>設定顯示頁</p></td>
</tr>
<tr class="odd">
<td><p>AH=06h</p></td>
<td><p>清除或捲軸畫面(上)</p></td>
</tr>
<tr class="even">
<td><p>AH=07h</p></td>
<td><p>清除或捲軸畫面(下)</p></td>
</tr>
<tr class="odd">
<td><p>AH=08h</p></td>
<td><p>读取游标处字符与属性</p></td>
</tr>
<tr class="even">
<td><p>AH=09h</p></td>
<td><p>更改游标处字符与属性</p></td>
</tr>
<tr class="odd">
<td><p>AH=0Ah</p></td>
<td><p>更改游标处字符</p></td>
</tr>
<tr class="even">
<td><p>AH=0Bh</p></td>
<td><p>设定边界颜色</p></td>
</tr>
<tr class="odd">
<td><p>AH=0Eh</p></td>
<td><p>在TTY模式下写字符</p></td>
</tr>
<tr class="even">
<td><p>AH=0Fh</p></td>
<td><p>取得目前顯示模式</p></td>
</tr>
<tr class="odd">
<td><p>AH=13h</p></td>
<td><p>写字符串</p></td>
</tr>
</tbody>
</table></td>
</tr>
<tr class="even">
<td><p>INT 11h</p></td>
<td><p>返回设备列表。</p></td>
</tr>
<tr class="odd">
<td><p>INT 12h</p></td>
<td><p>获取常规内存容量。</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/INT_13" title="wikilink">INT 13h</a></p></td>
<td><p>低階磁碟服務。</p>
<table>
<tbody>
<tr class="odd">
<td><p>AH=00h</p></td>
<td><p>复位磁盘驱动器。</p></td>
</tr>
<tr class="even">
<td><p>AH=01h</p></td>
<td><p>检查磁盘驱动器状态。</p></td>
</tr>
<tr class="odd">
<td><p>AH=02h</p></td>
<td><p>读扇区。</p></td>
</tr>
<tr class="even">
<td><p>AH=03h</p></td>
<td><p>写扇区。</p></td>
</tr>
<tr class="odd">
<td><p>AH=04h</p></td>
<td><p>校验扇区。</p></td>
</tr>
<tr class="even">
<td><p>AH=05h</p></td>
<td><p>格式化磁道。</p></td>
</tr>
<tr class="odd">
<td><p>AH=08h</p></td>
<td><p>取得驱动器参数。</p></td>
</tr>
<tr class="even">
<td><p>AH=09h</p></td>
<td><p>初始化硬盘驱动器参数。</p></td>
</tr>
<tr class="odd">
<td><p>AH=0Ch</p></td>
<td><p>寻道。</p></td>
</tr>
<tr class="even">
<td><p>AH=0Dh</p></td>
<td><p>复位硬盘控制器。</p></td>
</tr>
<tr class="odd">
<td><p>AH=15h</p></td>
<td><p>取得驱动器类型。</p></td>
</tr>
<tr class="even">
<td><p>AH=16h</p></td>
<td><p>取得软驱中盘片的状态。</p></td>
</tr>
</tbody>
</table></td>
</tr>
<tr class="odd">
<td><p>INT 14h</p></td>
<td><p>串口通信例程。</p>
<table>
<tbody>
<tr class="odd">
<td><p>AH=00h</p></td>
<td><p>初始化串口。</p></td>
</tr>
<tr class="even">
<td><p>AH=01h</p></td>
<td><p>写出字符。</p></td>
</tr>
<tr class="odd">
<td><p>AH=02h</p></td>
<td><p>读入字符。</p></td>
</tr>
<tr class="even">
<td><p>AH=03h</p></td>
<td><p>状态。</p></td>
</tr>
</tbody>
</table></td>
</tr>
<tr class="even">
<td><p>INT 15h</p></td>
<td><p>其它（系统支持例程）。</p>
<table>
<tbody>
<tr class="odd">
<td><p>AH=4FH</p></td>
<td><p>键盘拦截。</p></td>
</tr>
<tr class="even">
<td><p>AH=83H</p></td>
<td><p>事件等待。</p></td>
</tr>
<tr class="odd">
<td><p>AH=84H</p></td>
<td><p>读游戏杆。</p></td>
</tr>
<tr class="even">
<td><p>AH=85H</p></td>
<td><p>SysRq 键。</p></td>
</tr>
<tr class="odd">
<td><p>AH=86H</p></td>
<td><p>等待。</p></td>
</tr>
<tr class="even">
<td><p>AH=87H</p></td>
<td><p>块移动。</p></td>
</tr>
<tr class="odd">
<td><p>AH=88H</p></td>
<td><p>获取扩展内存容量。</p></td>
</tr>
<tr class="even">
<td><p>AH=C0H</p></td>
<td><p>获取系统参数。</p></td>
</tr>
<tr class="odd">
<td><p>AH=C1H</p></td>
<td><p>获取扩展 BIOS 数据区段。</p></td>
</tr>
<tr class="even">
<td><p>AH=C2H</p></td>
<td><p>指针设备功能。</p></td>
</tr>
<tr class="odd">
<td><p>AH=E8h, AL=01h (AX = E801h)</p></td>
<td><p>获取扩展内存容量（自从 1994 年引入的新功能），可获取到 64MB 以上的内存容量。</p></td>
</tr>
<tr class="even">
<td><p>AH=E8h, AL=20h (AX = E820h)</p></td>
<td><p>查询系统地址映射。该功能取代了 AX=E801h 和 AH=88h。</p></td>
</tr>
</tbody>
</table></td>
</tr>
<tr class="odd">
<td><p>INT 16h</p></td>
<td><p>键盘通信例程。</p>
<table>
<tbody>
<tr class="odd">
<td><p>AH=00h</p></td>
<td><p>读字符。</p></td>
</tr>
<tr class="even">
<td><p>AH=01h</p></td>
<td><p>读输入状态。</p></td>
</tr>
<tr class="odd">
<td><p>AH=02h</p></td>
<td><p>读 Shift 键（修改键）状态。</p></td>
</tr>
<tr class="even">
<td><p>AH=10h</p></td>
<td><p>读字符（增强版）。</p></td>
</tr>
<tr class="odd">
<td><p>AH=11h</p></td>
<td><p>读输入状态（增强版）。</p></td>
</tr>
<tr class="even">
<td><p>AH=12h</p></td>
<td><p>读 Shift 键（修改键）状态（增强版）。</p></td>
</tr>
</tbody>
</table></td>
</tr>
<tr class="even">
<td><p>INT 17h</p></td>
<td><p>打印服务。</p>
<table>
<tbody>
<tr class="odd">
<td><p>AH=00h</p></td>
<td><p>打印字符。</p></td>
</tr>
<tr class="even">
<td><p>AH=01h</p></td>
<td><p>初始化打印机。</p></td>
</tr>
<tr class="odd">
<td><p>AH=02h</p></td>
<td><p>检查打印机状态。</p></td>
</tr>
</tbody>
</table></td>
</tr>
<tr class="odd">
<td><p>INT 18h</p></td>
<td><p>执行磁带上的 BASIC 程序：“真正的”IBM 兼容机在 ROM 里内置 BASIC 程序，当引导失败时由 BIOS 调用此例程解释执行。（例：打印“Boot disk error. Replace disk and press any key to continue...”这类提示信息）</p></td>
</tr>
<tr class="even">
<td><p>INT 19h</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/加电自检" title="wikilink">加电自检之后载入操作系统</a>。</p></td>
</tr>
<tr class="odd">
<td><p>INT 1Ah</p></td>
<td><p>实时钟服务。</p>
<table>
<tbody>
<tr class="odd">
<td><p>AH=00h</p></td>
<td><p>读取实时钟。</p></td>
</tr>
<tr class="even">
<td><p>AH=01h</p></td>
<td><p>设置实时钟。</p></td>
</tr>
<tr class="odd">
<td><p>AH=02h</p></td>
<td><p>读取实时钟時間。</p></td>
</tr>
<tr class="even">
<td><p>AH=03h</p></td>
<td><p>设置实时钟時間。</p></td>
</tr>
<tr class="odd">
<td><p>AH=04h</p></td>
<td><p>读取实时钟日期。</p></td>
</tr>
<tr class="even">
<td><p>AH=05h</p></td>
<td><p>设置实时钟日期。</p></td>
</tr>
<tr class="odd">
<td><p>AH=06h</p></td>
<td><p>设置实时钟闹铃。</p></td>
</tr>
<tr class="even">
<td><p>AH=07h</p></td>
<td><p>重置实时钟闹铃。</p></td>
</tr>
</tbody>
</table></td>
</tr>
<tr class="even">
<td><p>INT 1Bh</p></td>
<td><p>Ctrl+Break，由 IRQ 9 自动调用。</p></td>
</tr>
<tr class="odd">
<td><p>INT 1Ch</p></td>
<td><p>预留，由 IRQ 8 自动调用。</p></td>
</tr>
<tr class="even">
<td><p>INT 1Dh</p></td>
<td><p>不可调用：指向视频参数表（包含视频模式的数据）的指针。</p></td>
</tr>
<tr class="odd">
<td><p>INT 1Eh</p></td>
<td><p>不可调用：指向软盘模式表（包含关于软驱的大量信息）的指针。</p></td>
</tr>
<tr class="even">
<td><p>INT 1Fh</p></td>
<td><p>不可调用：指向视频图形字符表（包含从 80h 到 FFh 的 <a href="../Page/EASCII.md" title="wikilink">ASCII</a> 字符的数据）的信息。</p></td>
</tr>
<tr class="odd">
<td><p>INT 41h</p></td>
<td><p>地址指针：硬盘参数表（第一硬盘）。</p></td>
</tr>
<tr class="even">
<td><p>INT 46h</p></td>
<td><p>地址指针：硬盘参数表（第二硬盘）。</p></td>
</tr>
<tr class="odd">
<td><p>INT 4Ah</p></td>
<td><p>实时钟在闹铃时调用。</p></td>
</tr>
<tr class="even">
<td><p>INT 70h</p></td>
<td><p>IRQ8：由实时钟调用。</p></td>
</tr>
<tr class="odd">
<td><p>INT 74h</p></td>
<td><p>IRQ12：由鼠标调用</p></td>
</tr>
<tr class="even">
<td><p>INT 75h</p></td>
<td><p>IRQ13：由数学协处理器调用。</p></td>
</tr>
<tr class="odd">
<td><p>INT 76h</p></td>
<td><p>IRQ14：由第一個 IDE 控制器所呼叫</p></td>
</tr>
<tr class="even">
<td><p>INT 77h</p></td>
<td><p>IRQ15：由第二個 IDE 控制器所呼叫</p></td>
</tr>
</tbody>
</table>

## 参见

  -
  -
  -
  -
## 参考资料

  - [The x86 Interrupt List](http://www.cs.cmu.edu/~ralf/files.html) (a.k.a. RBIL, Ralf Brown's Interrupt List)
  - [Embedded BIOS User's Manual](ftp://ftp.embeddedarm.com/old/saved-downloads-manuals/EBIOS-UM.PDF)
  - [PhoenixBIOS 4.0 User's Manual](https://web.archive.org/web/20120617084000/http://www.esapcsolutions.com/ecom/drawings/PhoenixBIOS4_rev6UserMan.pdf)
  - [HTML version of Ralf Brown Interrupt List](http://www.ctyme.com/rbrown.htm)
  - *IBM Personal System/2 and Personal Computer BIOS Interface Technical Reference*, IBM, 1988, ISBN 999857739X
  - *System BIOS for IBM PCs, Compatibles, and EISA Computers*, , 1991, ISBN 0201577607
  - *Programmer's Guide to the AMIBIOS*, , 1993, ISBN 0070015619
  - *The Programmer's PC Sourcebook* by Thom Hogan, Microsoft Press, 1991 ISBN 155615321X

[Category:BIOS](https://zh.wikipedia.org/wiki/Category:BIOS "wikilink") [Category:中断](https://zh.wikipedia.org/wiki/Category:中断 "wikilink")