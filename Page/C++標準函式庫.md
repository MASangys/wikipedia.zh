[C++中的](../Page/C++.md "wikilink")**標準程式庫**（**Standard Library**
）是[类和](../Page/类_\(计算机科学\).md "wikilink")[函式的集合](../Page/函式.md "wikilink")，其使用[核心語言寫成](../Page/核心語言.md "wikilink")。標準程式庫提供若干泛型容器、函式物件、泛型字串和串流（包含交互和檔案I/O），支援部分語言特性和常用的函式，如開平方根。C++標準程式庫也吸收了[ISO](../Page/ISO.md "wikilink")
C90
[C標準程式庫](../Page/C標準程式庫.md "wikilink")。標準程式庫的特性宣告於*std*[命名空間之中](../Page/命名空間.md "wikilink")。

C++標準程式庫大量參考了並基於[標準模板程式庫（STL）所建立的習慣用法](../Page/STL.md "wikilink")，包含容器、演算法、迭代器、函式物件等。此一部分占去标准库相当大的比重，因而有些人錯誤地使用“STL”指称整个C++標準程式庫。但這並非為正確的概念，C++標準程式庫和STL共有了許多特性，但都不是彼此的超集。

使用C++標準程式庫時，不必加上「.h」。

## 标准头文件

以下文件包含标准库的声明。

### 容器

  - \<[bitset](../Page/bitset.md "wikilink")\>
  - \<[deque](../Page/dque_\(STL\).md "wikilink")\>
  - \<[list](../Page/List_\(STL\).md "wikilink")\>
  - \<[map](../Page/map_\(STL\).md "wikilink")\>
  - \<[queue](../Page/queue_\(STL\).md "wikilink")\>
  - \<[set](../Page/set_\(STL\).md "wikilink")\>
  - \<[stack](../Page/stack_\(STL\).md "wikilink")\>
  - \<[vector](../Page/Vector_\(STL\).md "wikilink")\>

### 一般

  - \<[algorithm](../Page/algorithm_\(STL\).md "wikilink")\>
  - \<[functional](../Page/functional.md "wikilink")\>
  - \<[iterator](../Page/iterator_\(STL\).md "wikilink")\>
  - \<[locale](../Page/locale.md "wikilink")\>
  - \<[memory](../Page/memory_\(C++标准库\).md "wikilink")\>
  - \<[stdexcept](../Page/stdexcept.md "wikilink")\>
  - \<[utility](../Page/utility.md "wikilink")\>

### 字符串

  - \<[string](../Page/string_\(C++标准库\).md "wikilink")\>

### 输入/输出流

  - \<[fstream](../Page/fstream.md "wikilink")\>
  - \<[ios](../Page/ios.md "wikilink")\>
  - \<[iostream](../Page/iostream.md "wikilink")\>
  - \<[iosfwd](../Page/Forward_reference.md "wikilink")\>
  - \<[iomanip](../Page/iomanip.md "wikilink")\>
  - \<[istream](../Page/istream.md "wikilink")\>
  - \<[ostream](../Page/ostream.md "wikilink")\>
  - \<[sstream](../Page/sstream.md "wikilink")\>
  - \<[streambuf](../Page/streambuf.md "wikilink")\>

### 数值

  - \<[complex](../Page/complex_\(C++标准库\).md "wikilink")\>
  - \<[numeric](../Page/numeric_\(C++标准库\).md "wikilink")\>
  - \<[valarray](../Page/valarray_\(C++标准库\).md "wikilink")\>

### 语言支持

  - \<[exception](../Page/exception.md "wikilink")\>注音繁體中文
  - \<[limits](../Page/limits.md "wikilink")\>
  - \<[new](../Page/new_\(C++标准库\).md "wikilink")\>
  - \<[typeinfo](../Page/typeinfo.md "wikilink")\>

### C标准库

来自C标准库的所有头文件，以另一个名称包含在C++标准中。將原名称移去「.h」并在开头处加上「c」作为新的名称。例如「time.h」改成「ctime」。C++标准库的头文件与C标准库的头文件的唯一区别是，函数位于std::命名空间（虽然很少编译器严格如此，通常的做法是同时放在全局与
std 内，例如 printf 和 std::printf 两者均有）。

## 参见

  - [标准模板库](../Page/标准模板库.md "wikilink") (STL)
  - [Boost](../Page/Boost_C++_Libraries.md "wikilink")（C++ 库）
  - [C 标准库](../Page/C標準函式庫.md "wikilink")
  - [C POSIX](../Page/C_POSIX_library.md "wikilink")

## 參考

  - [比雅尼·斯特劳斯特鲁普](../Page/比雅尼·斯特劳斯特鲁普.md "wikilink")：*[The C++
    Programming
    Language](../Page/The_C++_Programming_Language.md "wikilink")*,
    Addison-Wesley, ISBN 0-201-70073-5

## 外部链接

  - [1](http://en.cppreference.com/w/cpp)[Standard C++ Library
    reference](http://en.cppreference.com/w/cpp)
  - [C ++ reference](http://www.cplusplus.com/reference/)
  - [The GNU Standard C++
    Library](https://web.archive.org/web/20160815222016/http://gcc.gnu.org/libstdc%20%20/)
  - [LLVM/Clang C++ Standard Library](http://libcxx.llvm.org/)
  - \[<http://msdn2.microsoft.com/en-us/library/cscc687y(VS.140>).aspx
    M\]\[<http://msdn2.microsoft.com/en-us/library/cscc687y(VS.140>).aspx
    icrosoft MSDN Library - Standard C++ Library Reference\]
  - [Rogue Wave C++ Standard Library Class
    Reference](https://web.archive.org/web/20070311123008/http://www.roguewave.com/support/docs/sourcepro/edition9/html/stdlibref/index.html)
  - \[<http://msdn2.microsoft.com/en-us/library/cscc687y(VS.80>).aspx
    Microsoft MSDN Library - Standard C++ Library Reference\]
  - [C++ Standard Library
    reference](http://cs.stmarys.ca/~porter/csc/ref/cpp_standlib.html)
  - [The C++ Resources Network](http://www.cplusplus.com/)

[Category:C++標準函式庫](https://zh.wikipedia.org/wiki/Category:C++標準函式庫 "wikilink")