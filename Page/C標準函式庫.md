> 本文内容由[C標準函式庫](https://zh.wikipedia.org/wiki/C標準函式庫)转换而来。


**C 標準函式庫**（，缩写：）是在[C語言程式設計中](https://zh.wikipedia.org/wiki/C語言 "wikilink")，所有符合標準的[头文件](../Page/头文件.md "wikilink")（）的集合，以及常用的[函式庫](../Page/函式庫.md "wikilink")實作程序（如 [I/O 輸入輸出和](https://zh.wikipedia.org/wiki/I/O "wikilink")[字串控制](https://zh.wikipedia.org/wiki/字串 "wikilink")）。不像 [COBOL](../Page/COBOL.md "wikilink")、[Fortran](../Page/Fortran.md "wikilink") 和 [PL/I等](https://zh.wikipedia.org/wiki/PL/I "wikilink")[程式語言](https://zh.wikipedia.org/wiki/程式語言 "wikilink")，在 C 語言的工作任務裡不會包含嵌入的[關鍵字](https://zh.wikipedia.org/wiki/關鍵字 "wikilink")，所以幾乎所有的 C 語言程式都是由標準函式庫的函式來建立的。

## 設計

每一個函式的名稱與特性會被寫成一個電腦檔案，這個檔案就稱為[標頭檔案](../Page/头文件.md "wikilink")，但是實際的函式實作是被分存到[函式庫](../Page/函式庫.md "wikilink")檔案裡。標頭檔的命名和領域是很常見的，但是函式庫的組織架構也會因為不同的編譯器而有所不同。標準函式庫通常會隨附在[編譯器](../Page/編譯器.md "wikilink")上。因為 C 編譯器常會提供一些額外的非 [ANSI C](../Page/ANSI_C.md "wikilink") 函式功能，所以某個隨附在特定編譯器上的標準函式庫，對其他不同的編譯器來說，是不相容的。

### 設計品質

大多数 C 標準函式庫設計得很好。有些少部分會為了商業優勢和利益，把某些舊函式視同錯誤或提出警告。字串輸入函式 `gets()` 及 `scanf()` 讀取字串輸入的使用是很多[緩衝區溢位的原因](https://zh.wikipedia.org/wiki/緩衝區溢位 "wikilink")，大多数的程式設計指南會建議避免使用。另一個較為奇特的函式是 `strtok()`，它原本是作為早期的[词法分析](../Page/词法分析.md "wikilink")用途，但是它非常容易出錯（），而且很難使用。

## 历史沿革

[ANSI C共包括](../Page/ANSI_C.md "wikilink")15個表頭檔。1995年，*Normative Addendum 1* （）批准了3个头文件（`iso646.h`、`wchar.h`和`wctype.h`）增加到C标准函数库中。[C99标准增加了](https://zh.wikipedia.org/wiki/C99 "wikilink")6个头文件（`complex.h`、`fenv.h`、`inttypes.h`、`stdbool.h`、`stdint.h`和`tgmath.h`）。[C11](../Page/C11.md "wikilink")标准中又新增了5个头文件（`stdalign.h`、`stdatomic.h`、`stdnoreturn.h`、`threads.h`和`uchar.h`）。至此，C标准函数库共有29个头文件：

| 名字                                                                          | 源自  | 描述                                                                                                                                                                                   |
| --------------------------------------------------------------------------- | --- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [`<assert.h>`](https://zh.wikipedia.org/wiki/assert.h "wikilink")           |     | 包含[断言宏](../Page/斷言_\(程式\).md "wikilink")，被用来在程序的调试版本中帮助检测逻辑错误以及其他类型的bug。                                                                                                             |
| [`<complex.h>`](https://zh.wikipedia.org/wiki/complex.h "wikilink")         | C99 | 一组操作[复数的函数](https://zh.wikipedia.org/wiki/复数 "wikilink")。                                                                                                                            |
| [`<ctype.h>`](https://zh.wikipedia.org/wiki/ctype.h "wikilink")             |     | 定义了一组函数，用来根据类型来给字符分类，或者进行大小写转换，而不关心所使用的字符集（通常是[ASCII](../Page/ASCII.md "wikilink")或其扩展[字符集](https://zh.wikipedia.org/wiki/字符集 "wikilink")，也有[EBCDIC](../Page/EBCDIC.md "wikilink")）。 |
| [`<errno.h>`](https://zh.wikipedia.org/wiki/errno.h "wikilink")             |     | 用来测试由库函数报的错误代码。                                                                                                                                                                      |
| [`<fenv.h>`](https://zh.wikipedia.org/wiki/fenv.h "wikilink")               | C99 | 定义了一组用来控制[浮点数](../Page/浮点数.md "wikilink")环境的函数。                                                                                                                                      |
| [`<float.h>`](https://zh.wikipedia.org/wiki/float.h "wikilink")             |     | Defines macro constants specifying the implementation-specific properties of the [浮点数](../Page/浮点数.md "wikilink") library.                                                           |
| [`<inttypes.h>`](https://zh.wikipedia.org/wiki/inttypes.h "wikilink")       | C99 | Defines exact width integer types.                                                                                                                                                   |
| [`<iso646.h>`](https://zh.wikipedia.org/wiki/iso646.h "wikilink")           | NA1 | Defines several macros that are equivalent to some of the operators in C. For programming in [ISO 646](https://zh.wikipedia.org/wiki/ISO_646 "wikilink") variant character sets.     |
| [`<limits.h>`](https://zh.wikipedia.org/wiki/limits.h "wikilink")           |     | Defines macro constants specifying the implementation-specific properties of the [整數](https://zh.wikipedia.org/wiki/整數 "wikilink") types.                                            |
| [`<locale.h>`](https://zh.wikipedia.org/wiki/locale.h "wikilink")           |     | 定义C语言本地化函数。                                                                                                                                                                          |
| [`<math.h>`](https://zh.wikipedia.org/wiki/math.h "wikilink")               |     | 定义C语言数学函数。                                                                                                                                                                           |
| [`<setjmp.h>`](https://zh.wikipedia.org/wiki/setjmp.h "wikilink")           |     | 定义了[巨集](../Page/巨集.md "wikilink")`setjmp`和`longjmp`，在非局部跳转的时候使用。                                                                                                                     |
| [`<signal.h>`](https://zh.wikipedia.org/wiki/signal.h "wikilink")           |     | 定义C语言信号处理函数。                                                                                                                                                                         |
| [`<stdalign.h>`](https://zh.wikipedia.org/wiki/stdalign.h "wikilink")       | C11 | For querying and specifying the data structure alignment of objects.                                                                                                                 |
| [`<stdarg.h>`](https://zh.wikipedia.org/wiki/stdarg.h "wikilink")           |     | For accessing a varying number of arguments passed to functions.                                                                                                                     |
| [`<stdatomic.h>`](https://zh.wikipedia.org/wiki/stdatomic.h "wikilink")     | C11 | For atomic operations on data shared between threads.                                                                                                                                |
| [`<stdbool.h>`](https://zh.wikipedia.org/wiki/stdbool.h "wikilink")         | C99 | 定义布尔数据类型。                                                                                                                                                                            |
| [`<stddef.h>`](https://zh.wikipedia.org/wiki/stddef.h "wikilink")           |     | 定义了几个常见的类型与[巨集](../Page/巨集.md "wikilink")。                                                                                                                                           |
| [`<stdint.h>`](https://zh.wikipedia.org/wiki/stdint.h "wikilink")           | C99 | Defines exact width integer types.                                                                                                                                                   |
| [`<stdio.h>`](https://zh.wikipedia.org/wiki/stdio.h "wikilink")             |     | 定义输入输出函数。                                                                                                                                                                            |
| [`<stdlib.h>`](https://zh.wikipedia.org/wiki/stdlib.h "wikilink")           |     | 定义数值转换函数，伪随机数生成函数，动态内存分配函数，过程控制函数。                                                                                                                                                   |
| [`<stdnoreturn.h>`](https://zh.wikipedia.org/wiki/stdnoreturn.h "wikilink") | C11 | For specifying non-returning functions.                                                                                                                                              |
| [`<string.h>`](https://zh.wikipedia.org/wiki/string.h "wikilink")           |     | 定义C语言字符串处理函数。                                                                                                                                                                        |
| [`<tgmath.h>`](https://zh.wikipedia.org/wiki/tgmath.h "wikilink")           | C99 | Defines type-generic mathematical functions.                                                                                                                                         |
| [`<threads.h>`](https://zh.wikipedia.org/wiki/threads.h "wikilink")         | C11 | Defines functions for managing multiple threads as well as mutexes and condition variables.                                                                                          |
| [`<time.h>`](https://zh.wikipedia.org/wiki/time.h "wikilink")               |     | Defines date and time handling functions                                                                                                                                             |
| [`<uchar.h>`](https://zh.wikipedia.org/wiki/uchar.h "wikilink")             | C11 | Types and functions for manipulating [Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink") characters.                                                                         |
| [`<wchar.h>`](https://zh.wikipedia.org/wiki/wchar.h "wikilink")             | NA1 | Defines wide string handling functions.                                                                                                                                              |
| [`<wctype.h>`](https://zh.wikipedia.org/wiki/wctype.h "wikilink")           | NA1 | Defines set of functions used to classify wide characters by their types or to convert between upper and lower case                                                                  |

## 参考文献

## 外部連結

  - [The C Standard Library](http://www.infosys.utas.edu.au/info/documentation/C/CStdLib.html)：A detailed description of the header files
  - [The C Library Reference Guide](https://web.archive.org/web/20150118141700/http://www.acm.uiuc.edu/webmonkeys/book/c_guide/index.html)
  - Microsoft [C Run-Time Libraries](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/vclib/html/_crt_c_run.2d.time_libraries.asp) on MSDN
  - [\[Coding Programmer Page / Library Reference and Examples\] (englisch)](http://c-p-p.net/c/)

## 参见

  - [GNU C 函式庫](https://zh.wikipedia.org/wiki/GNU_C_函式庫 "wikilink")
  - [C++標準程式庫](https://zh.wikipedia.org/wiki/C++標準程式庫 "wikilink")
  - [C POSIX library](../Page/C_POSIX_library.md "wikilink")

{{-}}

[Category:C標準函式庫](https://zh.wikipedia.org/wiki/Category:C標準函式庫 "wikilink") [Category:C語言](https://zh.wikipedia.org/wiki/Category:C語言 "wikilink")