[C++](../Page/C++.md "wikilink")中的**標準程式庫**（**Standard Library** ）是[类和](../Page/类_\(计算机科学\).md "wikilink")[函式的集合](https://zh.wikipedia.org/wiki/函式 "wikilink")，其使用[核心語言寫成](https://zh.wikipedia.org/wiki/核心語言 "wikilink")。標準程式庫提供若干泛型容器、函式物件、泛型字串和串流（包含交互和檔案I/O），支援部分語言特性和常用的函式，如開平方根。C++標準程式庫也吸收了[ISO](https://zh.wikipedia.org/wiki/ISO "wikilink") C90 [C標準程式庫](https://zh.wikipedia.org/wiki/C標準程式庫 "wikilink")。標準程式庫的特性宣告於*std*[命名空間之中](https://zh.wikipedia.org/wiki/命名空間 "wikilink")。

C++標準程式庫大量參考了並基於[標準模板程式庫（STL）所建立的習慣用法](https://zh.wikipedia.org/wiki/標準模板庫 "wikilink")，包含容器、演算法、迭代器、函式物件等。此一部分占去标准库相当大的比重，因而有些人錯誤地使用“STL”指称整个C++標準程式庫。但這並非為正確的概念，C++標準程式庫和STL共有了許多特性，但都不是彼此的超集。

使用C++標準程式庫時，不必加上「.h」。

## 标准头文件

以下文件包含标准库的声明。

### 容器

  - \<[bitset](https://zh.wikipedia.org/wiki/bitset "wikilink")\>
  - \<[deque](https://zh.wikipedia.org/wiki/dque_\(STL\) "wikilink")\>
  - \<[list](../Page/List_\(STL\).md "wikilink")\>
  - \<[map](https://zh.wikipedia.org/wiki/map_\(STL\) "wikilink")\>
  - \<[queue](https://zh.wikipedia.org/wiki/queue_\(STL\) "wikilink")\>
  - \<[set](https://zh.wikipedia.org/wiki/set_\(STL\) "wikilink")\>
  - \<[stack](https://zh.wikipedia.org/wiki/stack_\(STL\) "wikilink")\>
  - \<[vector](../Page/Vector_\(STL\).md "wikilink")\>

### 一般

  - \<[algorithm](https://zh.wikipedia.org/wiki/algorithm_\(STL\) "wikilink")\>
  - \<[functional](https://zh.wikipedia.org/wiki/functional "wikilink")\>
  - \<[iterator](https://zh.wikipedia.org/wiki/iterator_\(STL\) "wikilink")\>
  - \<[locale](https://zh.wikipedia.org/wiki/locale "wikilink")\>
  - \<[memory](https://zh.wikipedia.org/wiki/memory_\(C++标准库\) "wikilink")\>
  - \<[stdexcept](https://zh.wikipedia.org/wiki/stdexcept "wikilink")\>
  - \<[utility](https://zh.wikipedia.org/wiki/utility "wikilink")\>

### 字符串

  - \<[string](https://zh.wikipedia.org/wiki/string_\(C++标准库\) "wikilink")\>

### 输入/输出流

  - \<[fstream](https://zh.wikipedia.org/wiki/fstream "wikilink")\>
  - \<[ios](https://zh.wikipedia.org/wiki/ios "wikilink")\>
  - \<[iostream](https://zh.wikipedia.org/wiki/iostream "wikilink")\>
  - \<[iosfwd](https://zh.wikipedia.org/wiki/Forward_reference "wikilink")\>
  - \<[iomanip](https://zh.wikipedia.org/wiki/iomanip "wikilink")\>
  - \<[istream](https://zh.wikipedia.org/wiki/istream "wikilink")\>
  - \<[ostream](https://zh.wikipedia.org/wiki/ostream "wikilink")\>
  - \<[sstream](https://zh.wikipedia.org/wiki/sstream "wikilink")\>
  - \<[streambuf](https://zh.wikipedia.org/wiki/streambuf "wikilink")\>

### 数值

  - \<[complex](https://zh.wikipedia.org/wiki/complex_\(C++标准库\) "wikilink")\>
  - \<[numeric](https://zh.wikipedia.org/wiki/numeric_\(C++标准库\) "wikilink")\>
  - \<[valarray](https://zh.wikipedia.org/wiki/valarray_\(C++标准库\) "wikilink")\>

### 语言支持

  - \<[exception](https://zh.wikipedia.org/wiki/exception "wikilink")\>注音繁體中文
  - \<[limits](https://zh.wikipedia.org/wiki/limits "wikilink")\>
  - \<[new](https://zh.wikipedia.org/wiki/new_\(C++标准库\) "wikilink")\>
  - \<[typeinfo](https://zh.wikipedia.org/wiki/typeinfo "wikilink")\>

### C标准库

来自C标准库的所有头文件，以另一个名称包含在C++标准中。將原名称移去「.h」并在开头处加上「c」作为新的名称。例如「time.h」改成「ctime」。C++标准库的头文件与C标准库的头文件的唯一区别是，函数位于std::命名空间（虽然很少编译器严格如此，通常的做法是同时放在全局与 std 内，例如 printf 和 std::printf 两者均有）。

## 参见

  - [标准模板库](../Page/标准模板库.md "wikilink") (STL)
  - [Boost](../Page/Boost_C++_Libraries.md "wikilink")（C++ 库）
  - [C 标准库](../Page/C標準函式庫.md "wikilink")
  - [C POSIX](../Page/C_POSIX_library.md "wikilink")

## 參考

  - [比雅尼·斯特劳斯特鲁普](../Page/比雅尼·斯特劳斯特鲁普.md "wikilink")：*[The C++ Programming Language](https://zh.wikipedia.org/wiki/The_C++_Programming_Language "wikilink")*, Addison-Wesley, ISBN 0-201-70073-5

## 外部链接

  - [1](http://en.cppreference.com/w/cpp)[Standard C++ Library reference](http://en.cppreference.com/w/cpp)
  - [C ++ reference](http://www.cplusplus.com/reference/)
  - [The GNU Standard C++ Library](https://web.archive.org/web/20160815222016/http://gcc.gnu.org/libstdc%20%20/)
  - [LLVM/Clang C++ Standard Library](http://libcxx.llvm.org/)
  - \[<http://msdn2.microsoft.com/en-us/library/cscc687y(VS.140>).aspx M\]\[<http://msdn2.microsoft.com/en-us/library/cscc687y(VS.140>).aspx icrosoft MSDN Library - Standard C++ Library Reference\]
  - [Rogue Wave C++ Standard Library Class Reference](https://web.archive.org/web/20070311123008/http://www.roguewave.com/support/docs/sourcepro/edition9/html/stdlibref/index.html)
  - \[<http://msdn2.microsoft.com/en-us/library/cscc687y(VS.80>).aspx Microsoft MSDN Library - Standard C++ Library Reference\]
  - [C++ Standard Library reference](http://cs.stmarys.ca/~porter/csc/ref/cpp_standlib.html)
  - [The C++ Resources Network](http://www.cplusplus.com/)

[Category:C++標準函式庫](https://zh.wikipedia.org/wiki/Category:C++標準函式庫 "wikilink")