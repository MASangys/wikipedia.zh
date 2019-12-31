> 本文内容由[Objdump](https://zh.wikipedia.org/wiki/Objdump)转换而来。


**objdump**是在[类Unix](https://zh.wikipedia.org/wiki/类Unix "wikilink")[操作系统](../Page/操作系统.md "wikilink")上显示关于[目标文件的各种信息的](https://zh.wikipedia.org/wiki/目标文件 "wikilink")[命令行程序](../Page/命令行界面.md "wikilink")。例如，它可用作[反汇编器](../Page/反汇编器.md "wikilink")来以汇编代码形式查看[可执行文件](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")。它是[GNU Binutils的一部分](../Page/GNU_Binutils.md "wikilink")，用于在可执行文件和其他二进制数据上进行精细粒度控制。objdump使用[BFD库来读取目标文件的内容](../Page/二进制文件描述库.md "wikilink")。类似工具还有[readelf](https://zh.wikipedia.org/wiki/readelf "wikilink")、[Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink") [DUMPBIN和](https://zh.wikipedia.org/wiki/DUMPBIN "wikilink")[Borland](../Page/Borland.md "wikilink") [TDUMP](https://zh.wikipedia.org/wiki/TDUMP "wikilink")。

注意在特定平台（比如Mac OS X）上，objdump二进制文件可能实际上被连接到[llvm的objdump](../Page/LLVM.md "wikilink")，它有着不同的命令选项和表现。

## 例子

比如对[nm条目的例子代码编译成的目标文件](https://zh.wikipedia.org/wiki/nm_\(Unix\) "wikilink")`test.o`执行如下命令：

``` console
 $ objdump -d -r test.o | grep main.: -A21
```

`-d`选项指示进行反汇编，`-r`选项指示穿插上重定位入口项，默认将[汇编代码用](../Page/汇编语言.md "wikilink")[AT\&T语法展示](https://zh.wikipedia.org/wiki/AT&T语法 "wikilink")。接着将它重定向到[grep](https://zh.wikipedia.org/wiki/grep "wikilink")，它查找main函数连带显示其后21行。结果输出为：

``` objdump
0000000000000045 <main>:
  45:   55                      push   %rbp
  46:   48 89 e5                mov    %rsp,%rbp
  49:   48 83 ec 10             sub    $0x10,%rsp
  4d:   89 7d fc                mov    %edi,-0x4(%rbp)
  50:   48 89 75 f0             mov    %rsi,-0x10(%rbp)
  54:   c7 05 00 00 00 00 01    movl   $0x1,0x0(%rip)        # 5e <main+0x19>
  5b:   00 00 00
            56: R_X86_64_PC32   .bss-0x8
  5e:   bf 02 00 00 00          mov    $0x2,%edi
  63:   e8 00 00 00 00          callq  68 <main+0x23>
            64: R_X86_64_PLT32  global_function-0x4
  68:   89 05 00 00 00 00       mov    %eax,0x0(%rip)        # 6e <main+0x29>
            6a: R_X86_64_PC32   global_var-0x4
  6e:   bf 03 00 00 00          mov    $0x3,%edi
  73:   e8 00 00 00 00          callq  78 <main+0x33>
            74: R_X86_64_PLT32  extern_function-0x4
  78:   89 05 00 00 00 00       mov    %eax,0x0(%rip)        # 7e <main+0x39>
            7a: R_X86_64_PC32   extern_var-0x4
  7e:   b8 00 00 00 00          mov    $0x0,%eax
  83:   c9                      leaveq
  84:   c3                      retq
```

可使用`-M intel`选项选用[intel语法展示](https://zh.wikipedia.org/wiki/intel语法 "wikilink")。

## 参见

  - [GNU Binutils](../Page/GNU_Binutils.md "wikilink")

## 外部链接

  -
  -
  - \[<https://metacpan.org/pod/Binutils>::Objdump Binutils::Objdump\] - [Perl](../Page/Perl.md "wikilink") interface to objdump

[Category:Unix编程工具](https://zh.wikipedia.org/wiki/Category:Unix编程工具 "wikilink") [Category:反汇编器](https://zh.wikipedia.org/wiki/Category:反汇编器 "wikilink")