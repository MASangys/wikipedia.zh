> 本文内容由[Ios base](https://zh.wikipedia.org/wiki/Ios_base)转换而来。


**ios_base** 是[C++標準程式庫中的一個类](https://zh.wikipedia.org/wiki/C++標準程式庫 "wikilink")，定义于<ios>头文件中。ios_base类封装了C++标准中的[流输入输出中不依赖于读写的数据的类型的基本信息](https://zh.wikipedia.org/wiki/iostream "wikilink")，如格式化信息、异常状态、事件回调函数等。

C++程序设计时，一般不会直接调用std::ios_base的成员函数，但是会经常用到该类中定义的各种流的数据格式的枚举值常量。如ios_base::hex、ios_base::skipws等等。

## 保存的各种信息

在类std::ios_base中，保存了下述关于流的信息：

  - 格式控制信息的枚举类型fmtflags ，影响到如何解释输入序列的格式、如何生成输出序列的格式，例如整数是16进制还是10进制表示，浮点数是科学计数法还是定点形式等；
  - 流的状态的枚举类型iostate，如数据是否完整、是否到达流的末尾、是否读写失败等；
  - 流的打开方式的枚举类型openmode，如读取、写入、追加、创建时删除原内容、二进制打开、
  - 流的定位位置的枚举类型seekdir，如开始位置、当前位置、结尾位置等。
  - 流的事件的枚举类型event，如“擦除”事件erase_event，改变locale设置事件imbue_event，复制格式事件copyfmt_event。
  - 流的私用的其它额外保存的数据，为一个long型数组与一个指针数组。
  - 一个成员类failure，用于作为C++标准中的[流输入输出类库抛出的各种异常的基类](https://zh.wikipedia.org/wiki/iostream "wikilink")。
  - 一个成员类Init，用于封装cout、cin、wcout等8个静态对象的初始化函数。

## 成员函数

### 状态函数

  - ios_base::flags，读取/设置流的格式。
  - ios_base::setf，设置流的格式，与原有格式合并。
  - ios_base::unsetf，根据参数mask，清除流的格式的某些位（bit）。
  - ios_base::precision，读取/设置显示浮点数时的精度。
  - ios_base::width，读取/设定流的输出数据的显示宽度。

### locale相关函数

  - ios_base::imbue，设置新的locale，并依次执行所有登记的回调函数处置imbue_event。
  - ios_base::getloc，读取当前locale设置

### 静态成员函数

  - ios_base::sync_with_stdio，设置流的内部标志位，确定是否与C运行时库的stdio在输入输出上同步。

### 私用数据存储函数

  - ios_base::xalloc，返回一个对于进程中的多线程来说是唯一的一个整形值，这个值对应于流的一个内存块的索引，该内存块可保存一个long或者指针值。
  - ios_base::iword，根据输入的索引值，返回流的一个内存块的引用，可保持一个long值。
  - ios_base::pword，根据输入的索引值，返回流的一个内存块的引用，可保持一个指针值。

### 回调函数

  - ios_base::register_callback，登记一个回调函数。一个流的所有回调函数的地址保存在一个单向链表中。如果某个事件发生，则以登记的逆序依次调用每个回调函数。每个回调函数内部一般有个switch语句，进入相应的事件的处理分支。

### 构造/析构函数

  - ios_base::ios_base
  - ios_base::\~ios_base：销毁前用erase_event为参数，调用登记的回调函数。

## 参考文献

  - [ios_base Class Reference](http://gcc.gnu.org/onlinedocs/libstdc++/libstdc++-html-USERS-4.0/classstd_1_1ios__base.html)

<references/>

[Category:C++標準函式庫](https://zh.wikipedia.org/wiki/Category:C++標準函式庫 "wikilink")