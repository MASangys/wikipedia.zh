[Midnight_Commander_(2005)_en.png](https://zh.wikipedia.org/wiki/File:Midnight_Commander_\(2005\)_en.png "fig:Midnight_Commander_(2005)_en.png")s implement a TUI (*here: *)\]\] [Vim-%28logiciel%29-console.png](https://zh.wikipedia.org/wiki/File:Vim-%28logiciel%29-console.png "fig:Vim-%28logiciel%29-console.png") is a very widely used TUI text editor\]\]

**Text-based user interface** (**TUI**), also called **textual user interface** or **terminal user interface**, is a [retronym](https://zh.wikipedia.org/wiki/返璞词 "wikilink") coined sometime after the invention of [graphical user interfaces](../Page/图形用户界面.md "wikilink") (GUI). TUIs display [computer graphics](../Page/计算机图形.md "wikilink") in . An advanced TUI may, like GUIs, use the entire screen area and accept [mouse](../Page/鼠标.md "wikilink") and other inputs.

## Types of text terminals

From [text application](../Page/控制台应用程序.md "wikilink")'s point of view, a text screen (and communications with it) can belong to one of three types (here ordered in order of decreasing accessibility):

1.  A genuine  display, controlled by a [video adapter](../Page/显示卡.md "wikilink") or the central processor itself. This is a normal condition for a locally running application on various types of [personal computers](../Page/个人电脑.md "wikilink") and [mobile devices](../Page/移动设备.md "wikilink"). If not deterred by the [operating system](../Page/操作系统.md "wikilink"), a smart program may exploit the full power of a hardware text mode.
2.  A text mode [emulator](https://zh.wikipedia.org/wiki/仿真器 "wikilink"). Examples are [xterm](https://zh.wikipedia.org/wiki/Xterm "wikilink") for [X Window System](../Page/X_Window系統.md "wikilink") and [win32 console](../Page/Win32控制台.md "wikilink") (in a window mode) for [Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink"). This usually supports programs which expect a real text mode display, but may run considerably slower. Certain functions of an advanced text mode, such as an own [font](../Page/计算机字体.md "wikilink") uploading , almost certainly become unavailable.
3.  A remote [text terminal](../Page/終端.md "wikilink"). The communication capabilities usually become reduced to a [serial line](../Page/串行端口.md "wikilink") or its emulation, possibly with few [ioctl](../Page/Ioctl.md "wikilink")()s as an  channel in such cases as [Telnet](../Page/Telnet.md "wikilink") and [Secure Shell](../Page/Secure_Shell.md "wikilink"). This is the worst case, because software restrictions hinder the use of capabilities of a remote display device.

Under [Linux](../Page/Linux内核.md "wikilink") and other [Unix-like](../Page/类Unix系统.md "wikilink") systems, a program easily [accommodates](../Page/故障容許度.md "wikilink") to any of the three cases because the same interface (namely, [standard streams](../Page/標準串流.md "wikilink")) controls the display and keyboard. Also,  help to output the text in a way appropriate to the given display device and interface to it. See  for a comparison to Windows.

## On ANSI-compatible terminals

[American National Standards Institute](../Page/美國國家標準協會.md "wikilink") (ANSI) standard [ANSI X3.64](../Page/ANSI转义序列.md "wikilink") defines a standard set of [escape sequences](https://zh.wikipedia.org/wiki/转义序列 "wikilink") that can be used to drive terminals to create TUIs (see [ANSI escape code](https://zh.wikipedia.org/wiki/ANSI_escape_code "wikilink")). Escape sequences may be supported for all three cases mentioned in the above section, allowing random [cursor](https://zh.wikipedia.org/wiki/游標 "wikilink") movements and color changes. However, not all terminals follow this standard, and many non-compatible but functionally equivalent sequences exist.

## Under DOS and Microsoft Windows

[Fdedit.png](https://zh.wikipedia.org/wiki/File:Fdedit.png "fig:Fdedit.png") Edit user interface\]\] On [IBM Personal Computers](../Page/IBM_PC.md "wikilink") and [compatibles](../Page/IBM_PC兼容机.md "wikilink"), the Basic Input Output System ([BIOS](../Page/BIOS.md "wikilink")) and [DOS](../Page/DOS.md "wikilink") system calls provide a way to write text on the screen, and the  driver could process standard ANSI escape sequences. However, programmers soon learned that writing data directly to the [screen buffer](../Page/帧缓冲器.md "wikilink") was far faster and simpler to program, and less error-prone; see  for details. This change in programming methods resulted in many DOS TUI programs. The [win32 console](../Page/Win32控制台.md "wikilink") environment is notorious for its emulation of certain EGA/VGA text mode features, particularly random access to the text buffer, even if the application runs in a window. On the other hand, programs running under Windows (both native and DOS applications) have much less control of the display and keyboard than Linux and DOS programs can have, because of aforementioned win32 console layer.

Most often those programs used a blue background for the main screen, with white or yellow characters, although commonly they had also user color customization. They often used [box-drawing characters](../Page/方框绘制字符.md "wikilink") in IBM's [code page 437](https://zh.wikipedia.org/wiki/代碼頁437 "wikilink"). Later, the interface became deeply influenced by [graphical user interfaces](../Page/图形用户界面.md "wikilink") (GUI), adding [pull-down menus](../Page/選單.md "wikilink"), overlapping [windows](../Page/視窗.md "wikilink"), [dialog boxes](../Page/对话框.md "wikilink") and [GUI widgets](../Page/控件.md "wikilink") operated by  or [keyboard shortcuts](../Page/快捷键.md "wikilink"). Soon [mouse](../Page/鼠标.md "wikilink") input was added – either at text resolution as a simple colored box or at graphical resolution thanks to the ability of the [Enhanced Graphics Adapter](https://zh.wikipedia.org/wiki/增强图形适配器 "wikilink") (EGA) and [Video Graphics Array](../Page/视频图形阵列.md "wikilink") (VGA) display adapters to  – providing additional functions.

Some notable programs of this kind were [Microsoft Word](../Page/Microsoft_Word.md "wikilink"), , [WordPerfect](../Page/WordPerfect.md "wikilink"), ,  based [Borland](../Page/Borland.md "wikilink") [Turbo Pascal](../Page/Turbo_Pascal.md "wikilink") and [Turbo C](https://zh.wikipedia.org/wiki/Borland_Turbo_C "wikilink") (the latter included the [conio](https://zh.wikipedia.org/wiki/Conio.h "wikilink") [library](../Page/函式庫.md "wikilink")), [Lotus 1-2-3](../Page/Lotus_1-2-3.md "wikilink") and many others. Some of these interfaces survived even during the [Microsoft](../Page/微软.md "wikilink")  period in the early 1990s. For example, the [Microsoft C](../Page/Microsoft_Visual_C++.md "wikilink") 6.0 compiler, used to write true GUI programs under [16-bit](https://zh.wikipedia.org/wiki/16位元 "wikilink") Windows, still has its own TUI.

Since its start, [Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink") includes a console to display DOS software. Later versions added the [Win32 console](../Page/Win32控制台.md "wikilink") as a native interface for [command-line interface](../Page/命令行界面.md "wikilink") and TUI programs. The console usually opens in window mode, but it can be switched to full, true text mode screen and vice versa by pressing the [Alt](https://zh.wikipedia.org/wiki/转换键 "wikilink") and [Enter](../Page/回車鍵.md "wikilink") keys together. Full-screen mode is not available in Windows Vista and later, but may be used with some workarounds.\[1\] {{-}}

## Under Unix-like systems

[XFdrake.png](https://zh.wikipedia.org/wiki/File:XFdrake.png "fig:XFdrake.png") to configure the graphical system.\]\] In [Unix-like](../Page/类Unix系统.md "wikilink") operating systems, TUIs are often constructed using the terminal control [library](../Page/函式庫.md "wikilink") **, or *[ncurses](../Page/Ncurses.md "wikilink")*, a mostly compatible library.

The advent of the *curses* library with [Berkeley Unix](../Page/BSD.md "wikilink") created a portable and stable API for which to write TUIs. The ability to talk to various [text terminal](../Page/終端.md "wikilink") types using the same [interfaces](../Page/应用程序接口.md "wikilink") led to more widespread use of "visual" Unix programs, which occupied the entire terminal screen instead of using a simple line interface. This can be seen in [text editors](../Page/文本编辑器.md "wikilink") such as [vi](../Page/Vi.md "wikilink"), [mail clients](../Page/電子郵件用戶端.md "wikilink") such as  or [mutt](../Page/Mutt.md "wikilink"), system management tools such as , [SAM](https://zh.wikipedia.org/wiki/SAM_\(HP-UX\) "wikilink"), [FreeBSD](../Page/FreeBSD.md "wikilink")'s [Sysinstall](../Page/FreeBSD.md "wikilink") and [web browsers](../Page/网页浏览器.md "wikilink") such as [lynx](../Page/Lynx.md "wikilink"). Some applications, such as [w3m](https://zh.wikipedia.org/wiki/W3m "wikilink"), and older versions of  and [vi](../Page/Vi.md "wikilink") use the less-able  library, performing many of the functions associated with  within the application.

In addition, the rise in popularity of [Linux](../Page/Linux.md "wikilink") brought many former DOS users to a Unix-like platform, which has fostered a DOS influence in many TUIs. The program , for example, is modeled after the popular DOS program . Some other TUI programs, such as the  desktop, were [ported](https://zh.wikipedia.org/wiki/移植_\(軟體\) "wikilink") over.

The Linux kernel supports s, typically accessed through a Ctrl-Alt-F key combination. Up to 64 consoles may be accessed (12 via function keys), each displaying in full-screen text mode.

The [free software](../Page/自由软件.md "wikilink") program [GNU Screen](../Page/GNU_Screen.md "wikilink") provides for managing multiple sessions inside a single TUI, and so can be thought of as being like a [window manager](https://zh.wikipedia.org/wiki/窗口管理器 "wikilink") for text-mode and command-line interfaces. [Tmux](../Page/Tmux.md "wikilink") can also do this.

The proprietary [macOS](../Page/MacOS.md "wikilink") [text editor](../Page/文本编辑器.md "wikilink")  includes a *shell worksheet* function that works as a full-screen shell window. The [free](../Page/自由软件.md "wikilink") [Emacs](../Page/Emacs.md "wikilink") text editor can run a shell inside of one of its buffers to provide similar functionality. There are several shell implementations in Emacs, but only `ansi-term` is suitable for running TUI apps. The other common shell modes, `shell` and `eshell` only emulate command lines and TUI apps will complain "Terminal is not fully functional" or display a garbled interface.

## OpenVMS

VAX/VMS and the later development [OpenVMS](https://zh.wikipedia.org/wiki/OpenVMS "wikilink") had a similar facility to *curses* known as the Screen Management facility or SMG. This could be invoked from the command line or called from programs using the  library.

## In embedded systems

[MicroVGA_TUI_demoapp.jpg](https://zh.wikipedia.org/wiki/File:MicroVGA_TUI_demoapp.jpg "fig:MicroVGA_TUI_demoapp.jpg") Modern [embedded systems](../Page/嵌入式系统.md "wikilink") are capable of displaying TUI on a monitor like personal computers. This functionality is usually implemented using specialized integrated circuits, modules, or using [FPGA](../Page/现场可编程逻辑门阵列.md "wikilink").

Video circuits or modules are usually controlled using -compatible command set over [UART](../Page/UART.md "wikilink"), FPGA designs usually allow direct video memory access.

## Other uses

  - The [full screen editor](https://zh.wikipedia.org/wiki/可视编辑器 "wikilink") of the [Commodore 64](../Page/康懋達64.md "wikilink") 8-bit computers was advanced in its market segment for its time. Users could move the cursor over the entire screen area, entering and editing [BASIC](../Page/BASIC.md "wikilink") program lines, as well as  commands. All Commodore [8-bit](../Page/8位元.md "wikilink") computers used the  character set, which included character glyphs suitable for making a TUI.
  - Apple's  programming environment included Commando, a TUI shell. It was the inspiration for BBEdit's shell worksheet.
  - Later  models included , a set of graphical glyphs used for making a TUI.
  - The  computer of 1982 used a [function key](https://zh.wikipedia.org/wiki/功能键 "wikilink")-based text interface on a full-page pivoting display.
  - Another kind of TUI was the primary interface of the  as released in 1988[OberonScreen.PNG](https://zh.wikipedia.org/wiki/File:OberonScreen.PNG "fig:OberonScreen.PNG"). In contrast to the so far mentioned uses of text user interfaces, the Oberon system did not use a console or terminal based mode but required a large bit-mapped display on which text was used as primary target for mouse clicks. Commands of the form *Module.Procedure parameters \~* were activated by a middle-mouse click on *Module.Procedure*. Any text displayed on the screen could be edited and every command displayed in a text, which complied to the required syntax, could be clicked and executed. Any text with a bunch of commands could be used as a so-called tool text serving as a user-configurable menu. Even the output of a previous command could be edited and used as a command. This approach is radically different from the dialogue oriented command prompt and console menus described so far. Since it did not use graphical elements, but text elements, it was termed a text user interface. For a short introduction see the 2nd paragraph on p.4 of the first published report\[2\] on the .

## See also

  - [Command-line interface](../Page/命令行界面.md "wikilink")

  - [Console application](../Page/控制台应用程序.md "wikilink") (Pending potential merge to this article)

  - , a game using a TUI

### Examples of programming libraries

  -
  - [ncurses](../Page/Ncurses.md "wikilink")

  -
  - , a widget-based toolkit

  -
  - [Early versions of Visual Basic](../Page/Visual_Basic.md "wikilink")

## References

[Category:文本用户界面](https://zh.wikipedia.org/wiki/Category:文本用户界面 "wikilink") [Category:用户界面](https://zh.wikipedia.org/wiki/Category:用户界面 "wikilink")

1.  [cmd prompt full screen in Windows 7](http://social.technet.microsoft.com/Forums/en/w7itprohardware/thread/3cc6994e-cbc2-4844-b040-a3c8385c69a5). Social.technet.microsoft.com. Retrieved on 2013-06-15.
2.  Niklaus Wirth & Jürg Gutknecht: (1988) The Oberon System. [Report Nr. 88](http://e-collection.library.ethz.ch/eserv/eth:3180/eth-3180-01.pdf).