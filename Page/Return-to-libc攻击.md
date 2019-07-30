**Return-to-libc攻击**（缩写：），即“返回至[C标准库攻击](https://zh.wikipedia.org/wiki/C标准库 "wikilink")”，是一种[电脑安全攻击](https://zh.wikipedia.org/wiki/电脑安全 "wikilink")。这种攻击方式一般应用于[缓冲区溢出](../Page/缓冲区溢出.md "wikilink")中，其[堆栈](../Page/堆栈.md "wikilink")中的[返回地址被替换为另一条指令的地址](https://zh.wikipedia.org/wiki/返回地址 "wikilink")，并且堆栈的一部分被覆盖以提供其参数。这允许攻击者调用现有函数而无需注入恶意代码到程序中。

缩写为[`libc`](https://zh.wikipedia.org/wiki/libc "wikilink")的共享库是[C标准函数库](https://zh.wikipedia.org/wiki/C标准函数库 "wikilink")，提供了[类UNIX](https://zh.wikipedia.org/wiki/类UNIX "wikilink")[操作系统](../Page/操作系统.md "wikilink")中的[C运行时支持](https://zh.wikipedia.org/wiki/C运行时 "wikilink")。尽管攻击者可以让代码返回到任意位置，但绝大多数情况下的目标都是`libc`。这是因为`libc`总是会被链接到程序中，并且它提供了对攻击者而言一些相当有用的函数（如[`system`](https://zh.wikipedia.org/wiki/system_\(C_standard_library\) "wikilink")`()`调用可以只附加一个参数即执行外部程序）。这即是尽管返回地址可以指向另一个完全不同的区域，但这种攻击仍被称为return-to-libc的原因。

## 对 return-to-libc 攻击的防护

一个被标记了[不可执行位的堆栈可以阻止一些缓冲区溢出攻击](https://zh.wikipedia.org/wiki/NX位 "wikilink")，但无论如何它无法防止return-to-libc攻击。因为return-to-libc攻击只用到了标记为可执行的代码（libc中的函数均为可执行）。当然，攻击者也只能够调用已存在的函数。[Stack-smashing 防护能够阻止这种溢出](https://zh.wikipedia.org/wiki/Stack-smashing_防护 "wikilink")，因为它可以检测到损坏的堆栈并且有可能移除被攻击的[段](../Page/X86記憶體區段.md "wikilink")（segment）。[地址空间布局随机化](https://zh.wikipedia.org/wiki/地址空间布局随机化 "wikilink") (ASLR)使这种攻击在64位平台上变得几乎不可能成功，因为所有函数的内存地址都是随机的。在32位系统中，ASLR能够提供部分防护，因为只有16位地址可供用于随机化，这可以用暴力攻击在很少的几分钟内破解。\[1\]

## 相关攻击

[面向返回编程](https://zh.wikipedia.org/wiki/面向返回编程 "wikilink") 是这种攻击使用的精心完成的技术，并且，通过串联起每次单独的小型攻击以执行小数目的指令，可被用于进行更一般的操作。

## 参见

  - [缓冲区溢出](../Page/缓冲区溢出.md "wikilink")
  - [堆栈溢出](https://zh.wikipedia.org/wiki/堆栈溢出 "wikilink")
  - [Stack-smashing防护](https://zh.wikipedia.org/wiki/Stack-smashing防护 "wikilink")
  - [不可执行位](https://zh.wikipedia.org/wiki/NX位 "wikilink")
  - [地址空间布局随机化](https://zh.wikipedia.org/wiki/地址空间布局随机化 "wikilink")
  - [面向返回编程](https://zh.wikipedia.org/wiki/面向返回编程 "wikilink")

## 参考资料

## 外部链接

  - [Bypassing non-executable-stack during exploitation using return-to-libc](http://www.infosecwriters.com/text_resources/pdf/return-to-libc.pdf) by c0ntex at InfoSecWriters.com

[Category:电脑安全攻击](https://zh.wikipedia.org/wiki/Category:电脑安全攻击 "wikilink") [Category:C标准库](https://zh.wikipedia.org/wiki/Category:C标准库 "wikilink")

1.