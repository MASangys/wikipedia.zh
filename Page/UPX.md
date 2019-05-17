**UPX**（*the **U**ltimate **P**acker for
e**X**ecutables*）是一个免费且[开源的可执行程序文件加壳器](https://zh.wikipedia.org/wiki/开源 "wikilink")，支持许多不同[操作系统下的可执行文件格式](../Page/操作系统.md "wikilink")，具体的支持列表可见下文“支持格式”一节。

## 压缩

UPX使用一种叫做[UCL](http://www.oberhumer.com/opensource/ucl/)的压缩[算法](../Page/算法.md "wikilink")，这是一个对专有算法[NRV](http://www.oberhumer.com/products/nrv/)（***N**ot
**R**eally **V**anished*）算法的一个开源部分实现。

得益于UCL的简单设计，其解压缩代码只需要额外的数百[字节](../Page/字节.md "wikilink")。UCL最大的好处是在解压缩过程中不需要额外的内存，意味着经过UPX压缩的可执行文件执行时通常也不需要为了解压缩付出额外内存。

UPX（从2.90
beta版本开始）可以在大多数平台上使用[LZMA算法](../Page/LZMA.md "wikilink")，但因为速度慢，在16位平台上LZMA算法默认被禁止使用。（可以使用参数--lzma强制使用）

## 解压缩

UPX支持两种解压方式：就地解压或解压至临时文件夹。

就地解压方法会直接把可执行文件提取到[內存](https://zh.wikipedia.org/wiki/內存 "wikilink")。但这种方式不可能支持所有系统平台，因此在必要之时UPX会使用另一种解压方式：將压缩文件提取到临时文件夾。这种方式支持封装任何平台和格式的可执行文件，可执行文件往往先会被提取到一个位置，之后用`open()`打开。

然而提取到临时文件夹这种方式除了造成了额外占用之外，还有以下几个缺点：

  - 特殊权限会被忽略，如设置用户标识符。
  - [argv\[0](https://zh.wikipedia.org/wiki/命令行 "wikilink")\]（即程序中获取到的可执行文件名）将会无效。
  - 多实例应用程序将无法共享共同的程序部分（如内存内的相同代码）。

未特意以防止解包为目的修改过的UPX包通常能够被[杀毒软件识别并进行解压操作](../Page/杀毒软件.md "wikilink")。UPX也内置能够解压未修改UPX包的功能。在默认的UPX许可证中也明确禁止以防止前文所提及的解包为目的的修改。

## 支持的格式

  - [ARM](https://zh.wikipedia.org/wiki/ARM_architecture "wikilink")/[PE](https://zh.wikipedia.org/wiki/Portable_Executable "wikilink")
  - [Atari](https://zh.wikipedia.org/wiki/Atari "wikilink")/[TOS](https://zh.wikipedia.org/wiki/Atari_TOS "wikilink")
  - \*[BSD](../Page/BSD.md "wikilink")/[i386](https://zh.wikipedia.org/wiki/i386 "wikilink")
  - [DJGPP2](https://zh.wikipedia.org/wiki/DJGPP2 "wikilink")/[COFF](https://zh.wikipedia.org/wiki/COFF "wikilink")
  - [DOS](../Page/DOS.md "wikilink")/[COM](https://zh.wikipedia.org/wiki/COM格式 "wikilink")
    (包括某些其它二进制映像\[1\]\[2\])\[3\]
  - DOS/[EXE](../Page/EXE格式.md "wikilink")\[4\]
  - DOS/[SYS](../Page/.sys.md "wikilink")\[5\]
  - [Linux](../Page/Linux.md "wikilink")/i386
    [a.out](https://zh.wikipedia.org/wiki/a.out_\(file_format\) "wikilink")
  - Linux/[ELF](https://zh.wikipedia.org/wiki/Executable_and_Linkable_Format "wikilink")
    （位于 i386, [x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink"),
    [ARM](https://zh.wikipedia.org/wiki/ARM_architecture "wikilink"),
    [PowerPC平台](../Page/PowerPC.md "wikilink")）
  - Linux/kernel （位于i386, x86-64 and ARM平台）
  - [Mach-O](../Page/Mach-O.md "wikilink")/ppc32, Mach-O/i386
    (自3.09版本后还支持Google Go创建的此格式程序)
  - rtm32/[PE](https://zh.wikipedia.org/wiki/Portable_Executable "wikilink")
    (如 [Borland](../Page/Borland.md "wikilink")
    [C](https://zh.wikipedia.org/wiki/Turbo_C "wikilink")/[Pascal](../Page/Turbo_Pascal.md "wikilink")
    compilers\[6\]编译的程序)
  - tmt/adam (如the TMT Pascal compiler\[7\]编译的程序)
  - [PlayStation](https://zh.wikipedia.org/wiki/PlayStation "wikilink")1/EXE
  - [Watcom](https://zh.wikipedia.org/wiki/Watcom_C/C++编译器 "wikilink")/LE
    ([DOS4G](https://zh.wikipedia.org/wiki/DOS4G "wikilink")、[PMODE/W](https://zh.wikipedia.org/wiki/PMODE/W "wikilink")、[DOS32A](https://zh.wikipedia.org/wiki/DOS32A "wikilink")
    和
    [CauseWay](https://zh.wikipedia.org/wiki/CauseWay_DOS_Extender "wikilink"))
  - 包含[x86](https://zh.wikipedia.org/wiki/x86 "wikilink")
    (32-Bit)代码的[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")/[PE](https://zh.wikipedia.org/wiki/Portable_Executable "wikilink")
    [EXE](https://zh.wikipedia.org/wiki/EXE "wikilink") 文件
  - 包含[AMD64](https://zh.wikipedia.org/wiki/AMD64 "wikilink")
    (64-Bit)代码的[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")/[PE](https://zh.wikipedia.org/wiki/Portable_Executable "wikilink")
    [EXE](https://zh.wikipedia.org/wiki/EXE "wikilink") 文件（实验性的）

UPX目前**不**支持为了在[.NET
Framework](https://zh.wikipedia.org/wiki/Portable_Executable#.NET,_metadata,_and_the_PE_format "wikilink").运行而包含了
[CIL代码的](../Page/通用中间语言.md "wikilink")[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")/[PE](https://zh.wikipedia.org/wiki/Portable_Executable "wikilink")
[EXE](https://zh.wikipedia.org/wiki/EXE "wikilink") 文件。

## 注释

## 外部链接

  - [UPX: the Ultimate Packer for
    eXecutables](http://upx.sourceforge.net)

  -
  -
[Category:数据压缩软件](https://zh.wikipedia.org/wiki/Category:数据压缩软件 "wikilink")
[Category:SourceForge专案](https://zh.wikipedia.org/wiki/Category:SourceForge专案 "wikilink")
[Category:1998年软件](https://zh.wikipedia.org/wiki/Category:1998年软件 "wikilink")
[Category:数据压缩自由软件](https://zh.wikipedia.org/wiki/Category:数据压缩自由软件 "wikilink")
[Category:組合語言軟體](https://zh.wikipedia.org/wiki/Category:組合語言軟體 "wikilink")

1.
2.
3.
4.
5.
6.  <http://www.vogons.org/viewtopic.php?t=25997>

7.  <https://linux.die.net/man/1/upx>