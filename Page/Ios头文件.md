> 本文内容由[Ios头文件](https://zh.wikipedia.org/wiki/Ios头文件)转换而来。


**ios**是[C++標準程式庫中的一個](https://zh.wikipedia.org/wiki/C++標準程式庫 "wikilink")[头文件](../Page/头文件.md "wikilink")，定义了C++标准中的[流输入输出的](https://zh.wikipedia.org/wiki/iostream "wikilink")3个基类std::basic_ios、[std::ios_base](https://zh.wikipedia.org/wiki/ios_base "wikilink")、[std::fpos](https://zh.wikipedia.org/wiki/fpos "wikilink")，以及一些作为manipulator的全局函数。一般std::ios_base与std::fpos定义在ios头文件包含的其它头文件中。

## 模板类std::basic_ios

### 成员函数

  - basic_ios::basic_ios，构造函数
  - basic_ios::\~basic_ios，析构函数
  - basic_ios::init，初始化函数，在访问该类或者析构该类对象前必须先调用init().
  - basic_ios::tie，确保函数参数所指向的流先被处理。用来保持两个流的同步。
  - basic_ios::rdbuf，查询/设置流所绑定的streambuf。
  - basic_ios::imbue，设置流的locale。
  - basic_ios::narrow，返回与参数字符对应的char字符。
  - basic_ios::widen，返回与参数字符对应的wchar字符。
  - basic_ios:fill，查询/设置输出流填充宽度的字符。
  - basic_ios::copyfmt，复制另一个流的格式信息，但不复制流的内部状态、streambuf、异常掩码。在复制开始调用erase_event处理函数，在复制结束调用copyfmt_event处理函数及exceptions函数。
  - basic_ios::clear，输入一个状态值，视情况决定是否抛出异常、调用事件处理函数。
  - basic_ios::rdstate，读出一个流的状态值。
  - basic_ios::setstate，把一个状态值与流的当前状态“按位或”操作，然后调用clear函数。
  - basic_ios::good，判断流的当前状态是否为枚举值goodbit。
  - basic_ios::eof，判断流的当前状态是否为枚举值eofbit。
  - basic_ios::fail，判断流的当前状态是否为枚举值failbit。
  - basic_ios::bad，判断流的当前状态是否为枚举值badbit。
  - basic_ios::exceptions：设置哪些异常允许抛出

### 操作符

  - basic_ios::operator =，把一个流的各种设置复制到另一个流。
  - basic_ios::operator void \*，如果状态没有报错，则返回流自身的地址。
  - basic_ios::operator \!，返回流的状态是否报错

## fpos模板类

**fpos** 是[C++標準程式庫中的一個模板类](https://zh.wikipedia.org/wiki/C++標準程式庫 "wikilink")，定义于<ios>头文件中。std::fpos类封装了C++标准中的[流输入输出的定位信息](https://zh.wikipedia.org/wiki/iostream "wikilink")。std::fpos模板类定义了操作符\!=、+、+=、-、-=、==、operator streamoff( )，还定义了成员函数state()、seekpos()。

## 参考文献

  - [basic_streambuf Class Template Reference](http://gcc.gnu.org/onlinedocs/libstdc++/libstdc++-html-USERS-4.0/classstd_1_1basic__streambuf.html)

<references/>

[Category:C++標準函式庫](https://zh.wikipedia.org/wiki/Category:C++標準函式庫 "wikilink")