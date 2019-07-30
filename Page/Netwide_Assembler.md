**Netwide Assembler** （简称 **NASM**）是一款基于[英特尔](../Page/英特尔.md "wikilink") [x86](https://zh.wikipedia.org/wiki/x86 "wikilink") 架构的汇编与反汇编工具。它可以用来编写[16位](https://zh.wikipedia.org/wiki/16位 "wikilink")、[32位](https://zh.wikipedia.org/wiki/32位 "wikilink")（[IA-32](https://zh.wikipedia.org/wiki/IA-32 "wikilink")）和[64位](https://zh.wikipedia.org/wiki/64位 "wikilink")（[x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink")）的程序。 NASM被认为是Linux平台上最受欢迎的汇编工具之一。\[1\]

NASM 最初是在朱利安·霍尔的协助下由[西蒙·泰瑟姆](../Page/西蒙·泰瑟姆.md "wikilink")开发的。 ，它被一个由H.Peter Anvin领导的小团队所维护。\[2\] 它是一款基于简化版（二句版）[BSD许可证](../Page/BSD许可证.md "wikilink")的[开放源代码软件](../Page/开源软件.md "wikilink")。\[3\]

## 功能

NASM 可以输出包括 COFF、OMF、a.out、[可执行与可链接格式](../Page/可執行與可鏈接格式.md "wikilink")（ELF）、Mach-O 和二进制文件（.bin，二进制磁盘映像，用于编译操作系统）等多种二进制格式，而[地址无关代码](../Page/地址无关代码.md "wikilink")仅支持ELF对象文件。 NASM 也有自己的称为 RDOFF 的二进制格式。\[4\]

输出格式的广泛性允许将程序重定向到任何 x86 操作系统（OS）。 此外，NASM 可以创建浮动二进制文件，它可用于写入引导加载程序、只读存储器（ROM）映像以及操作系统开发的各个方面。 NASM 可以作为交叉汇编程序（如PowerPC和SPARC）在非 x86 平台上运行，尽管它不能生成这些机器可用的程序。

NASM 使用英特尔汇编语法的变体而不是 AT\&T 语法（GNU 汇编器采用的语法）。 \[5\]它还避免了 MASM 和兼容汇编器使用的自动生成段覆盖（以及相关的 ASSUME 指令）等功能。

## 用于各种操作系统的示例程序

这是一个 DOS 操作系统下的 ["Hello world\!" 程序](../Page/Hello_World.md "wikilink")：

``` nasm
section .text
org 0x100
    mov ah, 0x9
    mov dx, hello
    int 0x21

    mov ax, 0x4c00
    int 0x21

section .data
hello:  db 'Hello, world!', 13, 10, '$'
```

一个类似程序在 [Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink") 下的示例：

``` nasm
global _main
extern _MessageBoxA@16
extern _ExitProcess@4

section code use32 class=code
_main:
    push    dword 0      ; UINT uType = MB_OK
    push    dword title  ; LPCSTR lpCaption
    push    dword banner ; LPCSTR lpText
    push    dword 0      ; HWND hWnd = NULL
    call    _MessageBoxA@16

    push    dword 0      ; UINT uExitCode
    call    _ExitProcess@4

section data use32 class=data
    banner: db 'Hello, world!', 0
    title:  db 'Hello', 0
```

一段 Linux 下的等价程序：

``` nasm
global _start

section .text
_start:
    mov eax, 4 ; write
    mov ebx, 1 ; stdout
    mov ecx, msg
    mov edx, msg.len
    int 0x80   ; write(stdout, msg, strlen(msg));

    mov eax, 1 ; exit
    mov ebx, 0
    int 0x80   ; exit(0)

section .data
msg:    db  "Hello, world!", 10
.len:   equ $ - msg
```

下面是一个用于苹果 OS X 的64位程序，用于输入按键并将其显示在屏幕上：

``` nasm
global _start

section .data

    query_string:       db  "Enter a character:  "
    query_string_len:   equ $ - query_string
    out_string:         db  "You have input:  "
    out_string_len:     equ $ - out_string

section .bss

    in_char:            resw 4

section .text

_start:

    mov rax, 0x2000004      ; put the write-system-call-code into register rax
    mov rdi, 1              ; tell kernel to use stdout
    mov rsi, query_string   ; rsi is where the kernel expects to find the address of the message
    mov rdx, query_string_len   ; and rdx is where the kernel expects to find the length of the message
    syscall

    ; read in the character
    mov rax, 0x2000003      ; read system call
    mov rdi, 0              ; stdin
    mov rsi, in_char        ; address for storage, declared in section .bss
    mov rdx, 2              ; get 2 bytes from the kernel's buffer (one for the carriage return)
    syscall

    ; show user the output
    mov rax, 0x2000004      ; write system call
    mov rdi, 1              ; stdout
    mov rsi, out_string
    mov rdx, out_string_len
    syscall

    mov rax, 0x2000004      ; write system call
    mov rdi, 1              ; stdout
    mov rsi, in_char
    mov rdx, 2              ; the second byte is to apply the carriage return expected in the string
    syscall

    ; exit system call
    mov rax, 0x2000001      ; exit system call
        xor     rdi, rdi
    syscall
```

## 链接

NASM 主要输出目标文件（扩展名一般为.obj），这些目标文件通常不能自行执行。唯一的例外是浮动二进制文件（例如 .COM） ，它们在现代使用中固有地受到限制。 要将目标文件转换为可执行程序，必须使用适当的链接程序，例如用于 Windows 的 Visual Studio“LINK”实用程序或用于类 Unix 系统的 ld。

## 发展

第一版（版本号0.90）发布于1996年10月。\[6\]

2007年11月28日，2.00版本发布，增加对 [x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink") 扩展的支持。 开发版本不再上传到 SourceForge.net；相反，它们会被检入到项目自己的 Git 存储库中，而其二进制程序的快照可在项目官网上找到。

一个用于 NASM 文档的搜索引擎也已可用。\[7\]

截至2.07版本，NASM 在简化BSD许可证（二句版）下发布。

## RDOFF

开发人员使用可重定位的动态对象文件格式（RDOFF）来测试NASM的目标文件输出能力的完整性。 它很大程度上基于NASM的内部结构，\[8\]主要由一个头部组成，头部包含输出驱动程序函数调用的序列化，后跟包含可执行代码或数据的部分数组。 NASM发行版中包含了使用该格式的工具，包括链接程序和加载程序。

直到1996年10月发布0.90版，NASM 才支持只输出浮动格式的可执行文件（例如 DOS 的 COM 文件）。在版本0.90中，Simon Tatham 增加了对一个目标文件输出接口的支持，并且只支持用于16位代码的DOS的 .OBJ文件。\[9\]

NASM 因此缺少一个32位的对象格式。 为了解决这个问题，作为学习对象文件接口的练习，开发人员朱利安·霍尔将第一版 RDOFF 发布于 NASM 0.91版本。

自从这个初始版本以来，对RDOFF格式进行了一次重大更新，它在每个标题记录上增加了一个记录长度指示器，\[10\] 允许程序跳过它们无法识别格式的记录，并支持多个段；RDOFF1 仅支持三段：文本，数据和 bss（包含未初始化的数据）。

## 另请参见

  - [汇编语言](../Page/汇编语言.md "wikilink")
  - [汇编器列表](../Page/組合語言列表.md "wikilink")
  - [Yasm](../Page/Yasm.md "wikilink")

## 参考文献

## 进一步阅读

  -
## 外部链接

  -
  -
<!-- end list -->

  - [Special edition for Win32 and BeOS.](https://web.archive.org/web/20111016034545/http://www.realtech-vr.com/nasm/)

  - [A comparison of GAS and NASM](http://www.ibm.com/developerworks/linux/library/l-gas-nasm.html) at [IBM](../Page/IBM.md "wikilink")

  - : a converter between the source format of the assemblers NASM and [GAS](../Page/GNU汇编器.md "wikilink")

<div class="cx-template-editor-source-container" lang="en" dir="ltr" style="display: none;">

<div class="cx-template-editor-source">

<div class="cx-template-editor-title">

Freshmeat

</div>

<div class="cx-template-editor-param">

<div class="cx-template-editor-param-title">

<span id="1" class="cx-template-editor-param-key">1</span>

</div>

<div class="cx-template-editor-param-value" data-key="1" style="position: relative;">

intel2gas

</div>

</div>

</div>

</div>

[Category:DOS軟體](https://zh.wikipedia.org/wiki/Category:DOS軟體 "wikilink") [Category:反汇编器](https://zh.wikipedia.org/wiki/Category:反汇编器 "wikilink") [Category:自由編譯器與直譯器](https://zh.wikipedia.org/wiki/Category:自由編譯器與直譯器 "wikilink") [Category:MacOS](https://zh.wikipedia.org/wiki/Category:MacOS "wikilink") [Category:使用BSD许可证的软件](https://zh.wikipedia.org/wiki/Category:使用BSD许可证的软件 "wikilink")

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