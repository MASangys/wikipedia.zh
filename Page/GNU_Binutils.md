**[GNU](../Page/GNU.md "wikilink") Binary
Utilities**或**binutils**是一整套的[程式語言工具程式](../Page/程式語言.md "wikilink")，用來處理許多格式的[目的檔](../Page/目的檔.md "wikilink")。當前的版本原本由在[Cygnus
Solutions的程式員以](../Page/Cygnus_Solutions.md "wikilink")[Binary File
Descriptor
library](../Page/Binary_File_Descriptor_library.md "wikilink")（libbfd）所撰寫。這個工具程式通常搭配[GCC](../Page/GCC.md "wikilink")、[make](../Page/make.md "wikilink")、和[GDB這些程式來使用](../Page/GNU_Debugger.md "wikilink")。

剛開始時，這個套件內只有幾支程式，但後來，由於功能需求近似，陸續加入了[GNU組譯器](../Page/GNU組譯器.md "wikilink")（GAS）和[GNU連結器](../Page/GNU連結器.md "wikilink")（GLD）。一般來說，這些程式都很簡單，大部分的複雜性都存在於[Binary
File Descriptor
library和](../Page/Binary_File_Descriptor_library.md "wikilink")[libopcodes這些函式庫裡頭](../Page/libopcodes.md "wikilink")。

原來的BFD版本由David Henkel-Wallace和Steve Chamberlain所撰寫。Ken Raeburn和Ian Lance
Taylor曾維護過。目前則是由Nick Clifton負責維護此版本。至於Linux上的版本，由H.J. Lu在維護。

## 指令

binutils包含底下這些指令：

|                                                     |                                                                                                     |
| --------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| [`as`](../Page/GNU_Assembler.md "wikilink")         | [組譯器](../Page/組譯器.md "wikilink")                                                                    |
| [`ld`](../Page/GNU_linker.md "wikilink")            | [連結器](../Page/連結器.md "wikilink")                                                                    |
| `gprof`                                             | [性能分析工具程式](../Page/性能分析.md "wikilink")                                                              |
| [`addr2line`](../Page/addr2line.md "wikilink")      | 從目的檔的虛擬位址取得檔案的行號或符號                                                                                 |
| [`ar`](../Page/ar_\(Unix\).md "wikilink")           | 可以對[靜態函式庫做建立](../Page/archive_file.md "wikilink")、修改和取出的操作。                                         |
| `c++filt`                                           | [解码](../Page/name_mangling#Name_mangling_in_C++.md "wikilink") [C++](../Page/C++.md "wikilink") 的符号 |
| `dlltool`                                           | 建立Windows [動態函式庫](../Page/動態函式庫.md "wikilink")                                                      |
| [`gold`](../Page/gold_\(linker\).md "wikilink")     | 另一種連結器                                                                                              |
| `nlmconv`                                           | 可以轉換成[NetWare Loadable Module目的檔格式](../Page/NetWare_Loadable_Module.md "wikilink")                  |
| [`nm`](../Page/nm_\(Unix\).md "wikilink")           | 顯示目的檔內的符號                                                                                           |
| [`objcopy`](../Page/objcopy.md "wikilink")          | 複製目的檔，過程中可以修改                                                                                       |
| [`objdump`](../Page/objdump.md "wikilink")          | 顯示目的檔的相關資訊，亦可反組譯                                                                                    |
| [`ranlib`](../Page/ranlib.md "wikilink")            | 產生靜態函式庫的索引                                                                                          |
| [`readelf`](../Page/readelf.md "wikilink")          | 顯示[ELF檔案的內容](../Page/可執行與可鏈接格式.md "wikilink")                                                       |
| [`size`](../Page/size_\(Unix\).md "wikilink")       | 列出總體和section的大小                                                                                     |
| [`strings`](../Page/strings_\(Unix\).md "wikilink") | 列出任何二進位檔內的可顯示字串                                                                                     |
| [`strip`](../Page/strip_\(Unix\).md "wikilink")     | 從目的檔中移除符號                                                                                           |
| `windmc`                                            | 產生Windows訊息資源                                                                                       |
| `windres`                                           | Windows [資源檔編譯器](../Page/資源_\(Windows\).md "wikilink")                                              |

## 参见

  - [GNU核心工具组](../Page/GNU核心工具组.md "wikilink")
  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [GNU侦错器](../Page/GNU侦错器.md "wikilink")

## 外部链接

  - [GNU Binutils 首頁](http://www.gnu.org/software/binutils/)
  - [Linux上的Binutils](http://www.kernel.org/pub/linux/devel/binutils/)

[Category:程序设计工具](https://zh.wikipedia.org/wiki/Category:程序设计工具 "wikilink")
[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink")