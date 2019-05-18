**<string>**是[C++標準程式庫中的一個](https://zh.wikipedia.org/wiki/C++標準程式庫 "wikilink")[头文件](../Page/头文件.md "wikilink")，定义了[C++标准中的](../Page/C++.md "wikilink")[字符串的基本模板类std](../Page/字符串.md "wikilink")::basic_string及相关的模板类实例：

| 模板类实例       | std::basic_string的模板实参                            |
| ----------- | -------------------------------------------------- |
| `string`    | `char`                                             |
| `wstring`   | `wchar_t`                                          |
| `u16string` | `char16_t`（[C++11新增](../Page/C++11.md "wikilink")） |
| `u32string` | `char32_t`（C++11新增）                                |

其中的**`string`**是以`char`作为模板参数的模板类实例\[1\]，把字符串的内存管理责任由`string`负责而不是由编程者负责，大大减轻了[C语言风格的字符串的麻烦](https://zh.wikipedia.org/wiki/string.h "wikilink")。

`std::basic_string`提供了大量的字符串操作函数，如比较、连接、搜索、替换、获得子串等。并可与C语言风格字符串双向转换。`std::basic_string`属于C++
STL容器类，用户自定义的类也可以作为它的模板参数，因此也适用C++ STL Algorithm库。

`string`本质上是以字符作为元素的vector特化版本；不存在0字符结尾这个概念，能装入'\\0'这种数据。

## std::basic_string类模板

`std::basic_string`[类模板存储且操纵类似char的对象的序列](https://zh.wikipedia.org/wiki/类模板 "wikilink")。该对象类型的性质由特性类模板std::char_traits的实例来提供，并作为`std::basic_string`的第二个模板参数。

[C++11标准规定](../Page/C++11.md "wikilink")：basic_string的元素是**连续**存储的。即对于basic_string
s，有：`&*(s.begin() + n) == &*s.begin() + n`，其中n属于\[0,
s.size())。换句话说，指向s\[0\]的指针即为指向CharT\[\]数组的首元素指针。C++11已经禁止了[寫入時複製](https://zh.wikipedia.org/wiki/寫入時複製 "wikilink")（copy-on-write)的实现，因为存在多线程安全问题。一般都采用了小字符串优化（SSO）实现，如Visual
C++：

``` cpp
union _Bxty
    {   // storage for small buffer or pointer to larger one
    _Elem _Buf[_BUF_SIZE];
    _Elem *_Ptr;
    } _Bx;
size_type _Mysize;  // current length of string
size_type _Myres;   // current storage reserved for string
```

GCC从版本5开始，std::string不再采用COW策略。

[C++17标准规定](../Page/C++17.md "wikilink")，basic_string是AllocatorAwareContainer,
SequenceContainer与ContiguousContainer。

### 模板参数

  - CharT - 字符类型
  - Traits - 字符的特性类
  - Allocator 内部存储的分配器类

### 成员类型

  - traits_type 模板参数Traits
  - value_type 即Traits::char_type
  - allocator_type模板参数Allocator
  - size_type
    即Allocator::size_type。C++11改为std::allocator_traits<Allocator>::size_type
  - difference_type即Allocator::difference_type。C++11改为std::allocator_traits<Allocator>::difference_type
  - reference 即Allocator::reference。C++11改为value_type&
  - const_reference 即Allocator::const_reference。C++11改为const
    value_type&
  - pointer
    即Allocator::pointer。C++11改为std::allocator_traits<Allocator>::pointer
  - const_pointer
    即Allocator::const_pointer。C++11改为std::allocator_traits<Allocator>::const_pointer
  - iterator 属于RandomAccessIterator
  - const_iterator 属于Constant random access iterator
  - reverse_iterator 即std::reverse_iterator<iterator>
  - const_reverse_iterator 即std::reverse_iterator<const_iterator>

### 成员函数

下面列出所有成员函数，其中 `string`是 `std::basic_string`<T> 的简写：

  - 构造表示
      - `string::`[`string`](http://en.cppreference.com/w/cpp/string/basic_string/basic_string)（构造）
      - `string::`[`~string`](http://en.cppreference.com/w/cpp/string/basic_string/~basic_string)（析构）
      - `string::`[`operator=`](http://en.cppreference.com/w/cpp/string/basic_string/operator=)
        - 赋值
      - `string::`[`assign`](http://en.cppreference.com/w/cpp/string/basic_string/assign)
        –赋值
      - `string::`[`get_allocator`](http://en.cppreference.com/w/cpp/string/basic_string/get_allocator)
        –获得内存分配器
  - 字符访问
      - `string::`[`at`](http://en.cppreference.com/w/cpp/string/basic_string/at)
        –访问特定字符，带边界检查
      - `string::`[`operator[]`](http://en.cppreference.com/w/cpp/string/basic_string/operator_at)
        –访问特定字符
      - `string::`[`front`](http://en.cppreference.com/w/cpp/string/basic_string/front)
        –访问第一个字符
      - `string::`[`back`](http://en.cppreference.com/w/cpp/string/basic_string/back)
        –访问最后一个字符
      - `string::`[`data`](http://en.cppreference.com/w/cpp/string/basic_string/data)
        –访问基础数组，C++11 后与 c_str() 完全相同
      - `string::`[`c_str`](http://en.cppreference.com/w/cpp/string/basic_string/c_str)
        –返回对应于字符串内容的 C 风格零结尾的只读字符串
      - `string::`[`substr`](http://en.cppreference.com/w/cpp/string/basic_string/substr)
        –以子串构造一个新串；参数为空时取全部源串
  - 迭代器
      - `string::`[`begin`](http://en.cppreference.com/w/cpp/string/basic_string/begin)
        –获得指向开始位置的迭代器
      - `string::`[`end`](http://en.cppreference.com/w/cpp/string/basic_string/end)
        –获得指向末尾的迭代器
      - `string::`[`rbegin`](http://en.cppreference.com/w/cpp/string/basic_string/rbegin)
        –获得指向末尾的逆向迭代器
      - `string::`[`rend`](http://en.cppreference.com/w/cpp/string/basic_string/rend)
        –获得指向开始位置的逆向迭代器
      - `string::`[`cbegin`](http://en.cppreference.com/w/cpp/string/basic_string/cbegin)
        –获得指向开始位置的只读迭代器
      - `string::`[`cend`](http://en.cppreference.com/w/cpp/string/basic_string/cend)
        –获得指向末尾的只读迭代器
      - `string::`[`crbegin`](http://en.cppreference.com/w/cpp/string/basic_string/crbegin)
        –获得指向末尾的逆向只读迭代器
      - `string::`[`crend`](http://en.cppreference.com/w/cpp/string/basic_string/crend)
        –获得指向开始位置的逆向只读迭代器
  - 容量
      - `string::`[`empty`](http://en.cppreference.com/w/cpp/string/basic_string/empty)
        –检查是否为空
      - `string::`[`size`](http://en.cppreference.com/w/cpp/string/basic_string/size)
        –返回数据的字符长度
      - `string::`[`length`](http://en.cppreference.com/w/cpp/string/basic_string/length)
        –返回数据的字符长度，与 size() 完全相同
      - `string::`[`max_size`](http://en.cppreference.com/w/cpp/string/basic_string/max_size)
        –返回可存储的最大的字节容量，在 32 位 Windows 上大概为 43 亿字节。
      - `string::`[`reserve`](http://en.cppreference.com/w/cpp/string/basic_string/reserve)
        –改变 string 的字符存储容量，实际获得的存储容量不小于 reserve 的参数值。
      - `string::`[`capacity`](http://en.cppreference.com/w/cpp/string/basic_string/capacity)
        –返回当前的字符存储容量
      - `string::`[`shrink_to_fit`](http://en.cppreference.com/w/cpp/string/basic_string/shrink_to_fit)（[C++11](../Page/C++11.md "wikilink")
        新增）–降低内存容量到刚好
  - 修改器
      - `string::`[`clear`](http://en.cppreference.com/w/cpp/string/basic_string/clear)
        –清空内容
      - `string::`[`insert`](http://en.cppreference.com/w/cpp/string/basic_string/insert)
        –插入字符或字符串。目标 string
        中的插入位置可用整数值或迭代器表示。如果参数仅为一个迭代器，则在其所指位置插入[0](https://zh.wikipedia.org/wiki/NUL "wikilink")
        值。
      - `string::`[`erase`](http://en.cppreference.com/w/cpp/string/basic_string/erase)
        –删除 1 个或 1 段字符
      - `string::`[`push_back`](http://en.cppreference.com/w/cpp/string/basic_string/push_back)
        –追加 1 个字符
      - `string::`[`pop_back`](http://en.cppreference.com/w/cpp/string/basic_string/pop_back)
        –删除最后 1 个字符，C++11 标准引入
      - `string::`[`append`](http://en.cppreference.com/w/cpp/string/basic_string/append)
        –追加字符或字符串
      - `string::`[`operator+=`](http://en.cppreference.com/w/cpp/string/basic_string/operator+=)
        –追加，只有一个参数——字符指针、字符或字符串；不像 append() 一样可以追加参数的子串或若干相同字符
      - `string::`[`copy`](http://en.cppreference.com/w/cpp/string/basic_string/copy)
        –拷贝出一段字符到 C 风格字符数组；有溢出危险
      - `string::`[`resize`](http://en.cppreference.com/w/cpp/string/basic_string/resize)
        –改变（增加或减少）字符串长度；如果增加了字符串长度，新字符缺省为 0 值
      - `string::`[`swap`](http://en.cppreference.com/w/cpp/string/basic_string/swap)
        –与另一个 string 交换内容
      - `string::`[`replace`](http://en.cppreference.com/w/cpp/string/basic_string/replace)
        –替换子串；如果替换源数据与被替换数据的长度不等，则结果字符串的长度发生改变
  - 搜索
      - `string::`[`find`](http://en.cppreference.com/w/cpp/string/basic_string/find)
        –前向搜索特定子串的第一次出现
      - `string::`[`rfind`](http://en.cppreference.com/w/cpp/string/basic_string/rfind)
        –从尾部开始，后向搜索特定子串的第一次出现
      - `string::`[`find_first_of`](http://en.cppreference.com/w/cpp/string/basic_string/find_first_of)
        –搜索指定字符集合中任意字符在
        \*[this](https://zh.wikipedia.org/wiki/this "wikilink") 中的第一次出现
      - `string::`[`find_last_of`](http://en.cppreference.com/w/cpp/string/basic_string/find_last_of)
        –搜索指定字符集合中任意字符在 \*this 中的最后一次出现
      - `string::`[`find_first_not_of`](http://en.cppreference.com/w/cpp/string/basic_string/find_first_not_of)
        –\*this 中的不属于指定字符集合的首个字符
      - `string::`[`find_last_not_of`](http://en.cppreference.com/w/cpp/string/basic_string/find_last_not_of)
        –\*this 中的不属于指定字符集合的末个字符
      - `string::`[`compare`](http://en.cppreference.com/w/cpp/string/basic_string/compare)
        –与参数字符串比较

### 常量值

  -   - `string::`[`npos`](http://en.cppreference.com/w/cpp/string/basic_string/npos)
        –表示“未找到”，值为`static const unsigned -1`

### 非成员的有关的全局函数

  -   - `std::`[`operator+`](http://en.cppreference.com/w/cpp/string/basic_string/operator+)
        –字符串连接
      - `std::`[`operator!=`](http://en.cppreference.com/w/cpp/string/basic_string/operator_cmp)
        –不等比较
      - `std::`[`operator==`](http://en.cppreference.com/w/cpp/string/basic_string/operator_cmp)
        –相等比较
      - `std::`[`operator<`](http://en.cppreference.com/w/cpp/string/basic_string/operator_cmp)
        –小于比较
      - `std::`[`operator<=`](http://en.cppreference.com/w/cpp/string/basic_string/operator_cmp)
        –小于等于比较
      - `std::`[`operator>`](http://en.cppreference.com/w/cpp/string/basic_string/operator_cmp)
        –大于比较
      - `std::`[`operator>=`](http://en.cppreference.com/w/cpp/string/basic_string/operator_cmp)
        –大于等于比较
      - `std::`[`operator<<`](http://en.cppreference.com/w/cpp/string/basic_string/operator_ltltgtgt)
        –字符串内容写到输出流中
      - `std::`[`operator>>`](http://en.cppreference.com/w/cpp/string/basic_string/operator_ltltgtgt)
        –从输入流中读取一个字符串
      - `std::`[`getline`](http://en.cppreference.com/w/cpp/string/basic_string/getline)
        –从istream中读入一行或一段字符到string中
      - `std::`[`swap`](http://en.cppreference.com/w/cpp/string/basic_string/swap2)
        –交换两个string的内容。是std::swap算法针对std::basic_string的特化版本
      - `std::`[`stoi`](http://en.cppreference.com/w/cpp/string/basic_string/stol)
        –字符串转为整形
      - `std::`[`stol`](http://en.cppreference.com/w/cpp/string/basic_string/stol)
        –字符串转为长整形
      - `std::`[`stoll`](http://en.cppreference.com/w/cpp/string/basic_string/stol)
        –字符串转为长长整形
      - `std::`[`stoul`](http://en.cppreference.com/w/cpp/string/basic_string/stoul)
        –字符串转为无符号长整形
      - `std::`[`stoull`](http://en.cppreference.com/w/cpp/string/basic_string/stoull)
        –字符串转为无符号长长整形
      - `std::`[`stof`](http://en.cppreference.com/w/cpp/string/basic_string/stof)
        –字符串转为单精度浮点形
      - `std::`[`stod`](http://en.cppreference.com/w/cpp/string/basic_string/stod)
        –字符串转为双精度浮点形
      - `std::`[`stold`](http://en.cppreference.com/w/cpp/string/basic_string/stold)
        –字符串转为长双精度浮点形
      - `std::`[`to_string`](http://en.cppreference.com/w/cpp/string/basic_string/to_string)
        –整型、无符号整型、浮点型转化为string
      - `std::`[`to_wstring`](http://en.cppreference.com/w/cpp/string/basic_string/to_wstring)
        –整型、无符号整型、浮点型转化为wstring
      - `std::`[`hash`<std::string>](http://en.cppreference.com/w/cpp/string/basic_string/hash)
        –计算hash值
      - `std::`[`hash`<std::wstring>](http://en.cppreference.com/w/cpp/string/basic_string/hash)
        –计算hash值
      - `std::`[`hash`<std::u16string>](http://en.cppreference.com/w/cpp/string/basic_string/hash)
        –计算hash值
      - `std::`[`hash`<std::u32string>](http://en.cppreference.com/w/cpp/string/basic_string/hash)
        –计算hash值

### 字面量

C++14标准定义了如下的std::basic_string[字面量](../Page/用户定义字面量.md "wikilink")：

  - string operator "" s（const char \*str, std::size_t len）;
  - u16string operator "" s（const char16_t \*str, std::size_t len）;
  - u32string operator "" s（const char32_t \*str, std::size_t len）;
  - wstring operator "" s（const wchar_t \*str, std::size_t len）;

示例：

``` cpp
#include <string>
#include <iostream>
int main()
{
    using namespace std::string_literals;

    std::string s2 = "abc\0\0def"; // forms the string "abc"
    std::string s1 = "abc\0\0def"s; // form the string "abc\0\0def"
    std::cout<<s1.size()<<std::endl; //output 8
    std::cout<<s2<<std::endl;
    std::cout<<s1<<std::endl;
}
```

### 构造hash值的函数

C++11标准引入了4个std::hash[函数模板的特化](https://zh.wikipedia.org/wiki/函数模板 "wikilink")。用于以string为键值的hash定址。

  - template\<\> struct hash<std::string>;
  - template\<\> struct hash<std::wstring>;
  - template\<\> struct hash<std::u16string>;
  - template\<\> struct hash<std::u32string>;

## std::char_traits类

char_traits是一个traits[类模板](https://zh.wikipedia.org/wiki/类模板 "wikilink")。用于抽象出给定字符类型的字符特性与字符串操作。char_traits用于明确（explicit）实例化一个`std::basic_string`类模板。

  - 成员类型
      - char_type CharT
      - int_type 可以保持char_type以及EOF的值的整数类型
      - off_type 实现定义
      - pos_type 实现定义
      - state_type 实现定义
  - 成员函数
      - assign\[static\]赋值一个字符
      - eq\[static\] 比较两个字符相等
      - lt\[static\] 比较两个字符小于
      - move\[static\] 移动一个字符序列到另一个字符序列
      - copy\[static\] 复制一个字符序列
      - compare\[static\]词典序比较两个字符序列
      - length\[static\]返回一个字符序列的长度
      - find\[static\] 在一个字符序列中找到一个字符
      - to_char_type\[static\]转化整型值到相等的char_type
      - to_int_type\[static\] 转化char_type到相等的整型值
      - eq_int_type\[static\] 比较两个整型值
      - eof\[static\] 返回eof值
      - not_eof\[static\]检查一个字符是否为eof值

例如，如果需要定义“两个字符相等”[当且仅当](../Page/当且仅当.md "wikilink")“两个字符的大写形式相等”，就可以在std::char_traits<char>之上派生定义一个类，重载定义eq、lt、compare、find四个静态成员函数。再用此特性类作为第二个模板参数去实例化std::basic_string类模板。

## 用法

``` cpp
#include <iostream>
#include <string>

int main()
{
    std::string foo = "fighters";
    std::string bar = "stool";

    // "!=" compares string contents for inequality, even though they are different objects.
    if(foo != bar)
    {
        std::cout << "The strings are different." << std::endl;
    }

    // Prints "stool fighters" by creating a temporary object, which is automatically freed.
    std::cout << bar + " " + foo << std::endl;

    return 0;
}

/*
 Output:
 The strings are different.
 stool fighters
*/
```

由于字符串的拷贝操作与其字节长度成比例，是*[O](../Page/大O符号.md "wikilink")*（*n*）量级。且创建字符串的临时栈对象的成本开销。因此`string`一般作为常量引用（reference-to-const）以避免不必要的拷贝：

``` cpp
void print_the_string(const std::string& str)
{
    std::cout << str;
}
```

`c_str()`成员函数返回string类的C语言风格字符串（即ASCII-零串）的指针，用于C语言字符串的互操作。如果不需要零结尾的字符串，那么成员函数`data()`返回不一定是0结尾的字符串的内存地址。

## 参考文献

<references/>

[Category:C++標準函式庫](https://zh.wikipedia.org/wiki/Category:C++標準函式庫 "wikilink")

1.