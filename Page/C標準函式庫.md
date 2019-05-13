**C
標準函式庫**（，缩写：）是在[C語言程式設計中](../Page/C語言.md "wikilink")，所有符合標準的[头文件](../Page/头文件.md "wikilink")（）的集合，以及常用的[函式庫實作程序](../Page/函式庫.md "wikilink")（如
[I/O
輸入輸出和](../Page/I/O.md "wikilink")[字串控制](../Page/字串.md "wikilink")）。不像
[COBOL](../Page/COBOL.md "wikilink")、[Fortran](../Page/Fortran.md "wikilink")
和
[PL/I等](../Page/PL/I.md "wikilink")[程式語言](../Page/程式語言.md "wikilink")，在
C 語言的工作任務裡不會包含嵌入的[關鍵字](../Page/關鍵字.md "wikilink")，所以幾乎所有的 C
語言程式都是由標準函式庫的函式來建立的。

## 設計

每一個函式的名稱與特性會被寫成一個電腦檔案，這個檔案就稱為[標頭檔案](../Page/头文件.md "wikilink")，但是實際的函式實作是被分存到[函式庫檔案裡](../Page/函式庫.md "wikilink")。標頭檔的命名和領域是很常見的，但是函式庫的組織架構也會因為不同的編譯器而有所不同。標準函式庫通常會隨附在[編譯器上](../Page/編譯器.md "wikilink")。因為
C 編譯器常會提供一些額外的非 [ANSI C](../Page/ANSI_C.md "wikilink")
函式功能，所以某個隨附在特定編譯器上的標準函式庫，對其他不同的編譯器來說，是不相容的。

### 設計品質

大多数 C 標準函式庫設計得很好。有些少部分會為了商業優勢和利益，把某些舊函式視同錯誤或提出警告。字串輸入函式 `gets()` 及
`scanf()`
讀取字串輸入的使用是很多[緩衝區溢位的原因](../Page/緩衝區溢位.md "wikilink")，大多数的程式設計指南會建議避免使用。另一個較為奇特的函式是
`strtok()`，它原本是作為早期的[词法分析用途](../Page/词法分析.md "wikilink")，但是它非常容易出錯（），而且很難使用。

## 历史沿革

[ANSI C共包括](../Page/ANSI_C.md "wikilink")15個表頭檔。1995年，*Normative
Addendum 1*
（）批准了3个头文件（`iso646.h`、`wchar.h`和`wctype.h`）增加到C标准函数库中。[C99标准增加了](../Page/C99.md "wikilink")6个头文件（`complex.h`、`fenv.h`、`inttypes.h`、`stdbool.h`、`stdint.h`和`tgmath.h`）。[C11标准中又新增了](../Page/C11.md "wikilink")5个头文件（`stdalign.h`、`stdatomic.h`、`stdnoreturn.h`、`threads.h`和`uchar.h`）。至此，C标准函数库共有29个头文件：

| 名字                                                       | 源自  | 描述                                                                                                                                                                |
| -------------------------------------------------------- | --- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [`<assert.h>`](../Page/assert.h.md "wikilink")           |     | 包含[断言宏](../Page/斷言_\(程式\).md "wikilink")，被用来在程序的调试版本中帮助检测逻辑错误以及其他类型的bug。                                                                                          |
| [`<complex.h>`](../Page/complex.h.md "wikilink")         | C99 | 一组操作[复数的函数](../Page/复数.md "wikilink")。                                                                                                                            |
| [`<ctype.h>`](../Page/ctype.h.md "wikilink")             |     | 定义了一组函数，用来根据类型来给字符分类，或者进行大小写转换，而不关心所使用的字符集（通常是[ASCII或其扩展](../Page/ASCII.md "wikilink")[字符集](../Page/字符集.md "wikilink")，也有[EBCDIC](../Page/EBCDIC.md "wikilink")）。 |
| [`<errno.h>`](../Page/errno.h.md "wikilink")             |     | 用来测试由库函数报的错误代码。                                                                                                                                                   |
| [`<fenv.h>`](../Page/fenv.h.md "wikilink")               | C99 | 定义了一组用来控制[浮点数环境的函数](../Page/浮点数.md "wikilink")。                                                                                                                   |
| [`<float.h>`](../Page/float.h.md "wikilink")             |     | Defines macro constants specifying the implementation-specific properties of the [浮点数](../Page/浮点数.md "wikilink") library.                                        |
| [`<inttypes.h>`](../Page/inttypes.h.md "wikilink")       | C99 | Defines exact width integer types.                                                                                                                                |
| [`<iso646.h>`](../Page/iso646.h.md "wikilink")           | NA1 | Defines several macros that are equivalent to some of the operators in C. For programming in [ISO 646](../Page/ISO_646.md "wikilink") variant character sets.     |
| [`<limits.h>`](../Page/limits.h.md "wikilink")           |     | Defines macro constants specifying the implementation-specific properties of the [整數](../Page/整數.md "wikilink") types.                                            |
| [`<locale.h>`](../Page/locale.h.md "wikilink")           |     | 定义C语言本地化函数。                                                                                                                                                       |
| [`<math.h>`](../Page/math.h.md "wikilink")               |     | 定义C语言数学函数。                                                                                                                                                        |
| [`<setjmp.h>`](../Page/setjmp.h.md "wikilink")           |     | 定义了[巨集](../Page/巨集.md "wikilink")`setjmp`和`longjmp`，在非局部跳转的时候使用。                                                                                                  |
| [`<signal.h>`](../Page/signal.h.md "wikilink")           |     | 定义C语言信号处理函数。                                                                                                                                                      |
| [`<stdalign.h>`](../Page/stdalign.h.md "wikilink")       | C11 | For querying and specifying the data structure alignment of objects.                                                                                              |
| [`<stdarg.h>`](../Page/stdarg.h.md "wikilink")           |     | For accessing a varying number of arguments passed to functions.                                                                                                  |
| [`<stdatomic.h>`](../Page/stdatomic.h.md "wikilink")     | C11 | For atomic operations on data shared between threads.                                                                                                             |
| [`<stdbool.h>`](../Page/stdbool.h.md "wikilink")         | C99 | 定义布尔数据类型。                                                                                                                                                         |
| [`<stddef.h>`](../Page/stddef.h.md "wikilink")           |     | 定义了几个常见的类型与[巨集](../Page/巨集.md "wikilink")。                                                                                                                        |
| [`<stdint.h>`](../Page/stdint.h.md "wikilink")           | C99 | Defines exact width integer types.                                                                                                                                |
| [`<stdio.h>`](../Page/stdio.h.md "wikilink")             |     | 定义输入输出函数。                                                                                                                                                         |
| [`<stdlib.h>`](../Page/stdlib.h.md "wikilink")           |     | 定义数值转换函数，伪随机数生成函数，动态内存分配函数，过程控制函数。                                                                                                                                |
| [`<stdnoreturn.h>`](../Page/stdnoreturn.h.md "wikilink") | C11 | For specifying non-returning functions.                                                                                                                           |
| [`<string.h>`](../Page/string.h.md "wikilink")           |     | 定义C语言字符串处理函数。                                                                                                                                                     |
| [`<tgmath.h>`](../Page/tgmath.h.md "wikilink")           | C99 | Defines type-generic mathematical functions.                                                                                                                      |
| [`<threads.h>`](../Page/threads.h.md "wikilink")         | C11 | Defines functions for managing multiple threads as well as mutexes and condition variables.                                                                       |
| [`<time.h>`](../Page/time.h.md "wikilink")               |     | Defines date and time handling functions                                                                                                                          |
| [`<uchar.h>`](../Page/uchar.h.md "wikilink")             | C11 | Types and functions for manipulating [Unicode](../Page/Unicode.md "wikilink") characters.                                                                         |
| [`<wchar.h>`](../Page/wchar.h.md "wikilink")             | NA1 | Defines wide string handling functions.                                                                                                                           |
| [`<wctype.h>`](../Page/wctype.h.md "wikilink")           | NA1 | Defines set of functions used to classify wide characters by their types or to convert between upper and lower case                                               |

## 参考文献

## 外部連結

  - [The C Standard
    Library](http://www.infosys.utas.edu.au/info/documentation/C/CStdLib.html)：A
    detailed description of the header files
  - [The C Library Reference
    Guide](http://www.acm.uiuc.edu/webmonkeys/book/c_guide/index.html)
  - Microsoft [C Run-Time
    Libraries](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/vclib/html/_crt_c_run.2d.time_libraries.asp)
    on MSDN
  - [\[Coding Programmer Page / Library Reference and Examples\]
    (englisch)](http://c-p-p.net/c/)

## 参见

  - [GNU C 函式庫](../Page/GNU_C_函式庫.md "wikilink")
  - [C++標準程式庫](../Page/C++標準程式庫.md "wikilink")
  - [C POSIX library](../Page/C_POSIX_library.md "wikilink")

{{-}}

[Category:C標準函式庫](https://zh.wikipedia.org/wiki/Category:C標準函式庫 "wikilink")
[Category:C語言](https://zh.wikipedia.org/wiki/Category:C語言 "wikilink")