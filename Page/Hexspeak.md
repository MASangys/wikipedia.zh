Hexspeak（[16进制](https://zh.wikipedia.org/wiki/16进制 "wikilink")[魔术数字](https://zh.wikipedia.org/wiki/魔术数字 "wikilink")）是一种类似[Leet](../Page/Leet.md "wikilink")的英文单词转写形式。

## 起源和写法

Hexspeak最早是-{zh-cn:程序员; zh-tw:程式設計師;}-用来清晰独特地标记-{zh-cn:[内存](https://zh.wikipedia.org/wiki/内存 "wikilink"); zh-tw:[記憶體](https://zh.wikipedia.org/wiki/記憶體 "wikilink");}-和-{zh-cn:[数据](https://zh.wikipedia.org/wiki/数据 "wikilink"); zh-tw:[資料](https://zh.wikipedia.org/wiki/資料 "wikilink");}-的一些魔术数字，使用以0-9与A-F构成的16进制数表示一些简单的英文单词。Hexspeak的转写规则为：数字“0”表示字母“O”，“1”表示“I”或“L”，“5”表示“S”，“7”表示“T”，“6”、“9”则各自表示“G”与“g”，其它的数字则可利用[画谜和](https://zh.wikipedia.org/wiki/画谜 "wikilink")[Leet](../Page/Leet.md "wikilink")的规则来借代字母，例如“defecate”就可用“DEFECA7E”或“DEFEC8”来表示。

## 较有名的魔术数

16进制魔术数在许多[处理器](https://zh.wikipedia.org/wiki/处理器 "wikilink")、[操作系统](../Page/操作系统.md "wikilink")和-{zh-cn:[调试工具](../Page/调试工具.md "wikilink"); zh-tw:[除錯工具](https://zh.wikipedia.org/wiki/除錯工具 "wikilink");}-中都得到应用，且尤常作为-{zh-cn:调试量; zh-tw:測試參數;}-使用。

  - 0x0000000FF1CE是微软[Office组件产品代码的最后一部分](../Page/Microsoft_Office.md "wikilink")，可于-{zh-cn:[注册表](../Page/注册表.md "wikilink"); zh-tw:註冊表;}-的HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall的键值中寻得。

<!-- end list -->

  - 0x00BAB10C（oo-ba-block）在[ZFS](../Page/ZFS.md "wikilink")的uberblock里使用。

<!-- end list -->

  - 0x1BADB002（“I bad boot”）为[多重引导](../Page/多重引导.md "wikilink")标头。\[1\]

<!-- end list -->

  - 0x8BADF00D（“ate bad food”）为[iOS应用程序崩溃报告中的](https://zh.wikipedia.org/wiki/iOS "wikilink")标识符，一般在程序运行、终止与响应时停滞太久时出现。\[2\]

<!-- end list -->

  - 0xBAADF00D（“bad food”）在[微软](../Page/微软.md "wikilink")的LocalAlloc（LMEM_FIXED）函数中使用，用以在已启用调试堆的情况下，标识未[初始化](../Page/初始化.md "wikilink")的分配堆-{zh-cn:内存; zh-tw:記憶體;}-。\[3\]

<!-- end list -->

  - 0xCAFEBABE（“cafe babe”）在[Mach-O](../Page/Mach-O.md "wikilink")格式文件中用于标识[通用二进制](../Page/通用二进制.md "wikilink")目标文件，同时也在[Java](../Page/Java.md "wikilink")中用于识别Java[字节码类文件](https://zh.wikipedia.org/wiki/字节码 "wikilink")。\[4\]

<!-- end list -->

  - 0xCAFED00D（“Cafe Dude”）在[Java](../Page/Java.md "wikilink")中用于识别[Pack200压缩格式](https://zh.wikipedia.org/wiki/Pack200 "wikilink")。\[5\]

<!-- end list -->

  - 0xD15EA5E（“disease”）是[任天堂GameCube](../Page/任天堂GameCube.md "wikilink")与[Wii](../Page/Wii.md "wikilink")[控制台正常启动的标识符](https://zh.wikipedia.org/wiki/控制台 "wikilink")。\[6\]\[7\]

<!-- end list -->

  - 0xDEADBABE（“Dead Babe”）在[IBM](../Page/IBM.md "wikilink")的[Jikes研究虚拟机](../Page/Jikes研究虚拟机.md "wikilink")上使用，用于确认主线程的栈是否正常。\[8\]

<!-- end list -->

  - 0xDEADBEEF（“dead beef”）在[嵌入式系统](../Page/嵌入式系统.md "wikilink")中常用于标示-{zh-cn:软件; zh-tw:軟體;}-崩溃或是-{zh-cn:[死锁](../Page/死锁.md "wikilink"); zh-tw:[死結](https://zh.wikipedia.org/wiki/死結 "wikilink");}-，在IBM RS/6000系统、32位[PowerPC](../Page/PowerPC.md "wikilink")处理器上的[Mac OS系统以及](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")[Commodore International的](https://zh.wikipedia.org/wiki/Commodore_International "wikilink")[Amiga](../Page/Amiga.md "wikilink")电脑上都有使用；而在[Sun的](https://zh.wikipedia.org/wiki/Sun "wikilink")[Solaris](../Page/Solaris.md "wikilink")操作系统中，这一魔术数则用于标记已释放的-{zh-cn:内核存储; zh-tw:記憶體儲存;}-空间。另外，在[Alpha处理器上的](../Page/DEC_Alpha.md "wikilink")[OpenVMS操作系统中](https://zh.wikipedia.org/wiki/OpenVMS "wikilink")，按下CTRL+T就可以看到DEAD_BEEF。DEC Alpha的控制台亦有一个用于检测-{zh-cn:内存; zh-tw:記憶體;}-错误的[后台进程](../Page/后台进程.md "wikilink")，PS识别为“BeefEater waiting on 0xdeadbeef”\[9\]。

<!-- end list -->

  - 0xDEADDEAD（“dead dead”）是-{zh-cn:[蓝屏](https://zh.wikipedia.org/wiki/蓝屏 "wikilink"); zh-tw:[藍白當機畫面](https://zh.wikipedia.org/wiki/藍白當機畫面 "wikilink");}-时显示的错误代码\[10\] 。由于此代码在基于[Windows NT的系统上用于进行](../Page/Windows_NT.md "wikilink")-{zh-cn:[内存转储](https://zh.wikipedia.org/wiki/内存转储 "wikilink"); zh-tw:[核心文件](https://zh.wikipedia.org/wiki/核心文件 "wikilink");}-，因而常为驱动开发者所见。0xDEADDEAD还有一个变种──0x000000E2\[11\]，这两者在[微软开发者网络](../Page/微软开发者网络.md "wikilink")中都被称为MANUALLY_INITIATED_CRASH。

<!-- end list -->

  - 0xDEADFA11（“dead fall”）为[iOS应用程序崩溃报告中的](https://zh.wikipedia.org/wiki/iOS "wikilink")“强制终止应用程序”的标识符。\[12\]

<!-- end list -->

  - 0xDEFEC8ED（“defecated”）在[OpenSolaris](../Page/OpenSolaris.md "wikilink")的[核心文件中使用](https://zh.wikipedia.org/wiki/核心文件 "wikilink")。\[13\]

<!-- end list -->

  - 0xE011CFD0在微软Office文件中使用，[小端序下表示为D](https://zh.wikipedia.org/wiki/字节序#.E5.B0.8F.E7.AB.AF.E5.BA.8F "wikilink")0CF11E0，也即“docfile0”。\[14\]

<!-- end list -->

  - 0xFACEFEED（“face feed”）在运行Windows NT的[Alpha服务器上使用](../Page/DEC_Alpha.md "wikilink")，也即当出现-{zh-cn:硬件; zh-tw:硬體;}-错误时，Alpha的-{zh-cn:硬件; zh-tw:硬體;}-抽象层就会产生这一错误信号。\[15\]

<!-- end list -->

  - 0xFEE1DEAD（“feel dead”）是[Linux](../Page/Linux.md "wikilink")重启系统-{zh-cn:调用; zh-tw:呼叫;}-中使用的魔术数。\[16\]

<!-- end list -->

  - C15C:0D06:F00D（cisco dog food）于世界[IPv6](../Page/IPv6.md "wikilink")日在www.cisco.com的IPv6地址中使用。“Dog food”指的就是就是[Cisco在IPv](https://zh.wikipedia.org/wiki/Cisco "wikilink")6上“[eating its own dog food](../Page/Eating_your_own_dog_food.md "wikilink")”（也即用自家的设备）的做法。

## 不同情况下的区别

  - 在[Ada](../Page/Ada.md "wikilink")语言中，16进制数带有“16\#”的[前缀与](https://zh.wikipedia.org/wiki/前缀 "wikilink")“\#”的[后缀](https://zh.wikipedia.org/wiki/后缀 "wikilink")，例如“16\#Ada_Ada_Ada_Ada\#”。

<!-- end list -->

  - 在[C语言中](https://zh.wikipedia.org/wiki/C语言 "wikilink")，16进制数用“0x”前缀标识。

<!-- end list -->

  - 在[Intel格式的](https://zh.wikipedia.org/wiki/Intel "wikilink")[汇编语言](../Page/汇编语言.md "wikilink")中，16进制数用“h”后缀标识，且当开头数字为A-F时必须加“0”为前缀，例如0FEEDADEADF15h（FEED A DEAD FISH）。

<!-- end list -->

  - 在[Pascal语言和](../Page/Pascal_\(程式語言\).md "wikilink")[MOS 6502使用的汇编语言中](../Page/MOS_6502.md "wikilink")，16进制数用“$”前缀标识，也即以S开头的词语也可以用16进制数表示，比如$EED（即SEED）。

<!-- end list -->

  - 在型上16进制数是用[俄语字母而非](https://zh.wikipedia.org/wiki/俄语字母 "wikilink")[拉丁字母](../Page/拉丁字母.md "wikilink")表示的，也即“−”、“L”、“C”、“Г”、“E”与空格，以此便可表示如“EГГ0Г”（即ERROR）这样的信息。

## 参见

  - [Leet](../Page/Leet.md "wikilink")
  - [魔术数字](https://zh.wikipedia.org/wiki/魔术数字 "wikilink")

## 注释

<references />

[Category:源代码](https://zh.wikipedia.org/wiki/Category:源代码 "wikilink") [Category:计算机幽默](https://zh.wikipedia.org/wiki/Category:计算机幽默 "wikilink")

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