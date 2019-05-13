[DOS4GWbanner.svg](https://zh.wikipedia.org/wiki/File:DOS4GWbanner.svg "fig:DOS4GWbanner.svg")

**DOS扩展器**是一个电脑[软件程序](../Page/软件.md "wikilink")，令须[保护模式环境的软件能够在](https://zh.wikipedia.org/wiki/保护模式 "wikilink")[实模式运行](https://zh.wikipedia.org/wiki/实模式 "wikilink")，即使其所处的操作系统衹能在实模式下运作。

DOS扩展器起初在1980年代诞生，目的是要通过[Intel
80286芯片](../Page/Intel_80286.md "wikilink")（稍後扩展到[Intel
80386](../Page/Intel_80386.md "wikilink")）的指令，以应付[MS-DOS及其它同类型操作系统的内存限制](../Page/MS-DOS.md "wikilink")。

## DOS扩展器操作

<table>
<caption>DOS可见内存</caption>
<thead>
<tr class="header">
<th><p>实模式<br />
640K</p></th>
<th><p>DOS</p></th>
<th><p>DOS</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>保护模式</p></td>
<td><p>80286 DOS扩展器<br />
16位访问<br />
保护模式</p></td>
<td><p>80386 DOS扩展器<br />
32位访问<br />
保护模式</p></td>
</tr>
<tr class="even">
<td><p>虚拟 8086模式</p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

DOS扩展器，是“扩展的”DOS程序，保护模式程序可藉之透明地使用底层的[MS-DOS应用接口](https://zh.wikipedia.org/wiki/MS-DOS_API "wikilink")。这很重要：因为许多由DOS所提供的函数接口　须为“16位的段:16位的偏移”形式来指向中的某一块内存；然而，保护模式以《》描述各段的特征，用段寄存器（现称“选择子”）指向《表》项，此举与实模式不兼容。芯片须切换回实模式（或[虚拟86模式](https://zh.wikipedia.org/wiki/虚拟86模式 "wikilink")）以响应某个非保护模式的请求。

除了要“建起环境、载入程序来执行”之外，DOS扩展器还须提供（其它）转换层，这包括维护它自己在1MB实模式中的所申请的内存[缓冲器](https://zh.wikipedia.org/wiki/缓冲器 "wikilink")，这些缓存用于在底层实模式操作系统与保护模式程序之间传输数据。因为在实模式/虚拟86模式与保护模式之间切换甚为耗时，所以扩展器会复制许多实模式操作功能函数到它自己的保护模式环境内，以此减少切换次数。例如DOS在操作系统与用户级别软件之间的广泛地以[中断来通讯](https://zh.wikipedia.org/wiki/中断 "wikilink")，DOS扩展器则因而拦截许多公用硬件（例如[实时时钟](https://zh.wikipedia.org/wiki/实时时钟 "wikilink")、键盘）与软件（例如DOS自己、鼠标应用接口）的中断。许多扩展器更处理公用中断函数，例如常规视频BIOS中断函数。

DOS扩展器在本质上就是小型操作系统，提供了许多操作系统自己的底层功能。

## 诞生历史

可考证得DOS扩展器是由所创建，但主推者却是（以前的 Rational 系统）的386扩展器，它带来了保护模式DOS程序。後来更有
[Watcom_c在C](https://zh.wikipedia.org/wiki/Watcom_c "wikilink")、C++与Fortran在386芯片级别上的编译器，很快就无处不在地呈现在PC应用程序、游戏（例如[id
Software的成名软件](../Page/id_Software.md "wikilink")[毁灭战士](https://zh.wikipedia.org/wiki/毁灭战士 "wikilink")）里了。

开始衹是商务程序之类的内存老饕需要DOS扩展器，後来PC游戏则把DOS扩展器的需求公诸天下。结果DOS扩展器的开发就成功了，两个新软件接口被建立出来，以照顾许多潜在冲突，这些冲突源于多种已存在的内存管理方法，现统一到衹给客户程序提供唯一的接口。

第一个接口是（Virtual Control Program Interface，缩写作VCPI），旋为（DOS Protected Mode
Interface，缩写作DPMI）所代，後者在Windows 3.0
开发中诞生\[1\]。它提供了应用接口，以扩展的程序与实模式软件衔接、分配内存、处理中断服务，更让扩展器自己建立了保护模式切换、允许多个保护模式程序的同时共存。

## DOS扩展器举例

  - Tenberry
    软件公司的与[DOS/16M](https://zh.wikipedia.org/wiki/DOS/16M "wikilink")。

  - 286|DOS扩展器、386|DOS扩展器。

  - Al Williams在《Dr. Dobb's
    Journal》\[2\]\[3\]内付梓的PROT，是32位DOS扩展器，在另两册书亦有\[4\]\[5\]。该扩展器可在仿真模式运行DOS与调用BIOS的优点，不用真的切换到实模式。

  - [Thomas
    Pytel](https://zh.wikipedia.org/wiki/Thomas_Pytel "wikilink")、[Charles
    Sheffold的](https://zh.wikipedia.org/wiki/Charles_Sheffold "wikilink")与\[<http://en.wikipedia.org/wiki/PMODE/W>|
    PMODE/W\]後者在Watcom C替代了DOS/4GW，且在程序员中很流行。

  - Ergo（以前是 Eclipse, formerly A. I. Architects）OS/286、OS/386 扩展，与
    DPM16、DPM32 服务。

  - [Microsoft
    Windows在](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")1990年前所有（64位元版本除外）版本的Windows，都都包括
    DPMI服务与 DOS扩展器\[6\]。

  - [HX DOS
    Extender提供的Win](https://zh.wikipedia.org/wiki/HX_DOS_Extender "wikilink")32有限支持。

  - DosWin32提供的Win32有限支持。

  - Charles W.
    Sandman的，是服务器，使用32位保护模式DOS的[DJGPP程序](https://zh.wikipedia.org/wiki/DJGPP "wikilink")。

  - 旧（pre-v2）版本的GO32使用[DJGPP与](https://zh.wikipedia.org/wiki/DJGPP "wikilink")[Free
    Pascal](../Page/Free_Pascal.md "wikilink")。

  - Salford
    软件的DBOS，是32位保护模式DOS扩展器，主用于其[FTN77](https://zh.wikipedia.org/wiki/FTN77 "wikilink")（Fortran编译器）。

  - Narech K模仿的。

## 著名DOS扩展的应用程序

  - Adobe Acrobat Reader 1.0（用了早期商务版本 DOS/4GW）
  - [AutoCAD](../Page/AutoCAD.md "wikilink") 11（PharLap 386）
  - [Lotus
    1-2-3发行版的第](../Page/Lotus_1-2-3.md "wikilink")3版（Rational系统DOS/16M）
  - [甲骨文公司商务版本软件](../Page/甲骨文公司.md "wikilink")
  - [IBM公司的](../Page/IBM.md "wikilink")
  - 1980年代的BBS软件包《》，用了的DOS扩展器。
  - [Quarterdeck Office Systems
    Quarterdeck的](https://zh.wikipedia.org/wiki/Quarterdeck_Office_Systems_Quarterdeck "wikilink")
    [DESQview](https://zh.wikipedia.org/wiki/DESQview "wikilink")、DESQview/X
    多任务软件
  - [Watcom_c在](https://zh.wikipedia.org/wiki/Watcom_c "wikilink")[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[C++](../Page/C++.md "wikilink")、[Fortran的](../Page/Fortran.md "wikilink")[x86](../Page/x86.md "wikilink")[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")
  - 1990年代早期中期的无数DOS游戏，多用DOS/4GW，包括:
      - [id
        Software的](../Page/id_Software.md "wikilink")[毁灭战士及其续集](https://zh.wikipedia.org/wiki/毁灭战士 "wikilink")，又如[雷神之锤
        (游戏)](../Page/雷神之锤_\(游戏\).md "wikilink")(用[DJGPP写的](https://zh.wikipedia.org/wiki/DJGPP "wikilink"))
      - [Looking Glass
        Studios的](https://zh.wikipedia.org/wiki/Looking_Glass_Studios "wikilink"),
      - [Parallax
        Software的](https://zh.wikipedia.org/wiki/Parallax_Software "wikilink")[黑暗侵袭](https://zh.wikipedia.org/wiki/天旋地轉 "wikilink")
      - Crack dot
        com的[Abuse](https://zh.wikipedia.org/wiki/Abuse_\(电子游戏\) "wikilink")
      - [暴雪娱乐的](https://zh.wikipedia.org/wiki/暴雪娱乐 "wikilink")[魔兽争霸:
        兽人与人类](https://zh.wikipedia.org/wiki/魔兽争霸:_兽人与人类 "wikilink")、[魔兽争霸II：黑暗之门](../Page/魔兽争霸II：黑暗之门.md "wikilink")
      - [3D
        Realms的](https://zh.wikipedia.org/wiki/3D_Realms "wikilink")[永远的毁灭公爵](../Page/永远的毁灭公爵.md "wikilink")
      - [Midway的](https://zh.wikipedia.org/wiki/Midway "wikilink")[真人快打系列](../Page/真人快打系列.md "wikilink")
      - [西木工作室的](../Page/西木工作室.md "wikilink")[命令与征服](https://zh.wikipedia.org/wiki/命令与征服 "wikilink")、[红色警戒1](https://zh.wikipedia.org/wiki/红色警戒1 "wikilink")
      - [DMA
        Design](https://zh.wikipedia.org/wiki/DMA_Design "wikilink")（现称Rockstar
        North）的[侠盗猎车手](https://zh.wikipedia.org/wiki/侠盗猎车手 "wikilink")，後期游戏版本移植进了Windows以兼容新型电脑。
      - [NovaLogic的](../Page/NovaLogic.md "wikilink")用了特殊的内存管理器，须[80386芯片支持](https://zh.wikipedia.org/wiki/80386 "wikilink")，与其他、不兼容，须在[CONFIG.SYS内配置复杂的](https://zh.wikipedia.org/wiki/CONFIG.SYS "wikilink")。後期版本包含了一个DOS扩展器，以解上述难题。
  - [Windows
    9x自称为](../Page/Windows_9x.md "wikilink")“操作系统”系列，但实为高级的更灵活扩展了MS-DOS代码的Window
      - [Windows 95](../Page/Windows_95.md "wikilink")
      - [Windows 98](../Page/Windows_98.md "wikilink")/SE
      - [Windows ME](../Page/Windows_ME.md "wikilink")

## 参考

## 外部链接

  - FreeDOS维基上的[DOS扩展器](https://web.archive.org/web/20090302092520/http://wiki.fdos.org/Main/DOSExtender)
  - [The Free
    Country的DOS扩展器列表](http://www.thefreecountry.com/programming/dosextenders.shtml)

[Category:DOS内存管理](https://zh.wikipedia.org/wiki/Category:DOS内存管理 "wikilink")
[Category:DOS軟體](https://zh.wikipedia.org/wiki/Category:DOS軟體 "wikilink")

1.
2.
3.
4.
5.
6.