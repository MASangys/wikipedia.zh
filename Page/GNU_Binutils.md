**[GNU](../Page/GNU.md "wikilink") Binary
Utilities**或**binutils**是一整套的[程式語言工具程式](https://zh.wikipedia.org/wiki/程式語言 "wikilink")，用來處理許多格式的[目的檔](https://zh.wikipedia.org/wiki/目的檔 "wikilink")。當前的版本原本由在[Cygnus
Solutions的程式員以](https://zh.wikipedia.org/wiki/Cygnus_Solutions "wikilink")[Binary
File Descriptor
library](https://zh.wikipedia.org/wiki/Binary_File_Descriptor_library "wikilink")（libbfd）所撰寫。這個工具程式通常搭配[GCC](../Page/GCC.md "wikilink")、[make](https://zh.wikipedia.org/wiki/make "wikilink")、和[GDB這些程式來使用](https://zh.wikipedia.org/wiki/GNU_Debugger "wikilink")。

剛開始時，這個套件內只有幾支程式，但後來，由於功能需求近似，陸續加入了[GNU組譯器](https://zh.wikipedia.org/wiki/GNU組譯器 "wikilink")（GAS）和[GNU連結器](https://zh.wikipedia.org/wiki/GNU連結器 "wikilink")（GLD）。一般來說，這些程式都很簡單，大部分的複雜性都存在於[Binary
File Descriptor
library和](https://zh.wikipedia.org/wiki/Binary_File_Descriptor_library "wikilink")[libopcodes這些函式庫裡頭](https://zh.wikipedia.org/wiki/libopcodes "wikilink")。

原來的BFD版本由David Henkel-Wallace和Steve Chamberlain所撰寫。Ken Raeburn和Ian Lance
Taylor曾維護過。目前則是由Nick Clifton負責維護此版本。至於Linux上的版本，由H.J. Lu在維護。

## 指令

binutils包含底下這些指令：

|                                                                        |                                                                                                                        |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| [`as`](https://zh.wikipedia.org/wiki/GNU_Assembler "wikilink")         | [組譯器](https://zh.wikipedia.org/wiki/組譯器 "wikilink")                                                                    |
| [`ld`](https://zh.wikipedia.org/wiki/GNU_linker "wikilink")            | [連結器](https://zh.wikipedia.org/wiki/連結器 "wikilink")                                                                    |
| `gprof`                                                                | [性能分析工具程式](../Page/性能分析.md "wikilink")                                                                                 |
| [`addr2line`](https://zh.wikipedia.org/wiki/addr2line "wikilink")      | 從目的檔的虛擬位址取得檔案的行號或符號                                                                                                    |
| [`ar`](https://zh.wikipedia.org/wiki/ar_\(Unix\) "wikilink")           | 可以對[靜態函式庫做建立](https://zh.wikipedia.org/wiki/archive_file "wikilink")、修改和取出的操作。                                         |
| `c++filt`                                                              | [解码](https://zh.wikipedia.org/wiki/name_mangling#Name_mangling_in_C++ "wikilink") [C++](../Page/C++.md "wikilink") 的符号 |
| `dlltool`                                                              | 建立Windows [動態函式庫](https://zh.wikipedia.org/wiki/動態函式庫 "wikilink")                                                      |
| [`gold`](https://zh.wikipedia.org/wiki/gold_\(linker\) "wikilink")     | 另一種連結器                                                                                                                 |
| `nlmconv`                                                              | 可以轉換成[NetWare Loadable Module目的檔格式](https://zh.wikipedia.org/wiki/NetWare_Loadable_Module "wikilink")                  |
| [`nm`](https://zh.wikipedia.org/wiki/nm_\(Unix\) "wikilink")           | 顯示目的檔內的符號                                                                                                              |
| [`objcopy`](https://zh.wikipedia.org/wiki/objcopy "wikilink")          | 複製目的檔，過程中可以修改                                                                                                          |
| [`objdump`](https://zh.wikipedia.org/wiki/objdump "wikilink")          | 顯示目的檔的相關資訊，亦可反組譯                                                                                                       |
| [`ranlib`](https://zh.wikipedia.org/wiki/ranlib "wikilink")            | 產生靜態函式庫的索引                                                                                                             |
| [`readelf`](https://zh.wikipedia.org/wiki/readelf "wikilink")          | 顯示[ELF檔案的內容](../Page/可執行與可鏈接格式.md "wikilink")                                                                          |
| [`size`](https://zh.wikipedia.org/wiki/size_\(Unix\) "wikilink")       | 列出總體和section的大小                                                                                                        |
| [`strings`](https://zh.wikipedia.org/wiki/strings_\(Unix\) "wikilink") | 列出任何二進位檔內的可顯示字串                                                                                                        |
| [`strip`](https://zh.wikipedia.org/wiki/strip_\(Unix\) "wikilink")     | 從目的檔中移除符號                                                                                                              |
| `windmc`                                                               | 產生Windows訊息資源                                                                                                          |
| `windres`                                                              | Windows [資源檔編譯器](https://zh.wikipedia.org/wiki/資源_\(Windows\) "wikilink")                                              |

## 参见

  - [GNU核心工具组](../Page/GNU核心工具组.md "wikilink")
  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [GNU侦错器](../Page/GNU侦错器.md "wikilink")

## 外部链接

  - [GNU Binutils 首頁](http://www.gnu.org/software/binutils/)
  - [Linux上的Binutils](http://www.kernel.org/pub/linux/devel/binutils/)

[Category:程序设计工具](https://zh.wikipedia.org/wiki/Category:程序设计工具 "wikilink")
[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink")