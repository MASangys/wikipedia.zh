> 本文内容由[File \(命令\)](https://zh.wikipedia.org/wiki/File_\(命令\))转换而来。


**file**是[Unix 系统的一条标准命令](../Page/UNIX.md "wikilink")，用来确认文件的类型。

## 用法

file 的[Unix 规范命令](https://zh.wikipedia.org/wiki/单一UNIX规范 "wikilink")：

` `**`file`**` [`**`OPTION`**`...] [`**`FILE`**`...]`

## 示例

`$ file file.c`
`file.c: `[`C`](https://zh.wikipedia.org/wiki/C_\(programming_language\) "wikilink")` `[`program`](https://zh.wikipedia.org/wiki/Computer_program "wikilink")` `[`text`](https://zh.wikipedia.org/wiki/Text_file "wikilink")

`$ file program`
`program: `[`ELF`](https://zh.wikipedia.org/wiki/Executable_and_Linkable_Format "wikilink")` `[`32-bit`](https://zh.wikipedia.org/wiki/32-bit "wikilink")` `[`LSB`](https://zh.wikipedia.org/wiki/Least_significant_bit "wikilink")` `[`executable`](https://zh.wikipedia.org/wiki/executable "wikilink")`, `[`Intel``   ``80386`](../Page/Intel_80386.md "wikilink")`, `[`version`](https://zh.wikipedia.org/wiki/Software_versioning "wikilink")` `[`1`](https://zh.wikipedia.org/wiki/1_\(number\) "wikilink")` (`[`SYSV`](https://zh.wikipedia.org/wiki/SYSV "wikilink")`), `[`dynamically``   ``linked`](https://zh.wikipedia.org/wiki/Dynamically_linked_library "wikilink")
`    (uses `[`shared``   ``libs`](https://zh.wikipedia.org/wiki/Shared_Library "wikilink")`), `[`stripped`](../Page/Strip_\(Unix\).md "wikilink")

`$ file `[`/dev/hda`](https://zh.wikipedia.org/wiki/Device_file#Naming_conventions "wikilink")`1`
`/dev/hda1: `[`block``   ``special`](https://zh.wikipedia.org/wiki/Device_file#Block_devices "wikilink")` (0/0)`

`$ file -s `[`/dev/hda`](https://zh.wikipedia.org/wiki/Device_file#Naming_conventions "wikilink")`1`
`/dev/hda1: `[`Linux`](../Page/Linux.md "wikilink")`/`[`i386`](https://zh.wikipedia.org/wiki/i386 "wikilink")` `[`ext2`](https://zh.wikipedia.org/wiki/ext2 "wikilink")` `[`filesystem`](https://zh.wikipedia.org/wiki/filesystem "wikilink")

## 外部連結

  -
  - [file mailing list](https://mailman.astron.com/mailman/listinfo/file)

  - [file releases](ftp://ftp.astron.com/pub/file)

### 手冊頁

  -
  -
  -
  -
### 其他

  - [Fine Free File Command](http://darwinsys.com/file/) – homepage for version of `file` used in major BSD and Linux distributions.
  - [File for Windows](http://gnuwin32.sourceforge.net/packages/file.htm) – webpage of native [GnuWin32](https://zh.wikipedia.org/wiki/GnuWin32 "wikilink") port of `file` for 32 bit Windows.
  - The [libmagic-dev package](http://packages.debian.org/unstable/libdevel/libmagic-dev) on [packages.debian.org](http://packages.debian.org)
  - [TrID](http://mark0.net/soft-trid-e.html), an alternative providing ranked answers (instead of just one) based on statistics.

[Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink") [Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")