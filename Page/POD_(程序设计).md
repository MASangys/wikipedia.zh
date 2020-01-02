> 本文内容由[POD \(程序设计\)](https://zh.wikipedia.org/wiki/POD_\(程序设计\))转换而来。


**Plain old data structure**, 缩写为**POD**, 是[C++](../Page/C++.md "wikilink")语言的标准中定义的一类[数据结构](https://zh.wikipedia.org/wiki/数据 "wikilink")\[1\]，POD适用于需要明确的数据底层操作的系统中。POD通常被用在系统的边界处，即指不同系统之间只能以底层数据的形式进行交互，系统的高层逻辑不能互相兼容。比如当对象的字段值是从外部数据中构建时，系统还没有办法对对象进行语义检查和解释，这时就适用POD来存储数据。

## 定义

POD类型包括下述C++类型，以及其cv-qualified的类型，还有以其为基类型的数组类型\[2\]:

  - 标量类型(scalar type)
  - POD类类型(POD class type)

### 標量類型

術語標量類型包括下述C++類型範疇, 以及其cv-qualified類型\[3\]:

  - 算术类型(arithmetic type)
  - 枚举类型(enumeration type)
  - 指针类型(pointer type)
  - 指標到成員類型(pointer-to-member type)

术语算术类型包括下述C++类型范畴\[4\]:

  - 整数类型(integral type)
  - 浮点类型(floating type)

术语整数类型包括下述C++类型范畴\[5\]:

  - 有符号整数类型 (signed char, short, int, long),
  - 无符号整数类型(unsigned char, unsigned short, unsigned int, unsigned long),
  - 字元類型char與寬字元類型wchar_t
  - 布林類型bool。

术语浮点类型包括C++的float, double, and long double类型\[6\].

术语枚举类型包括各种枚举类型，即命名的常量值(named constant values)的集合\[7\].

術語指標類型包括下述C++類型範疇\[8\]:

  - 空指標pointer-to-void (void \*),
  - 對象指標pointer-to-object與指向靜態數據成員的指標pointer-to-static-member-data (都是形如為T\*，其中T是對象類型),
  - 函數指標pointer-to-function與指向靜態成員函數的指標pointer-to-static-member-function (都是形如T (\*)(...)，T是函數的返回值的類型).

術語指標到成員類型包括下述C++類型範疇\[9\]:

  - 指標到非靜態數據成員(pointer-to-nonstatic-member-data), 形如T C::\* 表示指向類C的類型為T的數據成員的指標；
  - 指標到非靜態成員函數(pointer-to-nonstatic-member-functions), 形如T (C::\*)(...) 表示指向類C的返回值類型為T的成員函數的指標.

### POD类类型

POD类类型是指聚合类(aggregate classes, 即POD-struct types)与聚合union (POD-union types)，且不具有下述成员\[10\]:

  - 指针到成员类型的非静态数据成员(包括数组)。
  - 非POD类类型的非静态数据成员(包括数组)。
  - 引用类型的(reference type)非静态数据成员。
  - 用户定义的拷贝与赋值算子。
  - 用户定义的析构函数。

术语聚合是指任何的数组或者类，且不具有下述特征\[11\]:

  - 用户定义的构造函数。
  - 私有或保护的非静态数据成员。
  - 基类。
  - [虚函数](../Page/虚函数.md "wikilink")。

可见，POD类类型就是指class、struct、union，且不具有用户定义的构造函数、析构函数、拷贝算子、赋值算子；不具有继承关系，因此没有基类；不具有虚函数，所以就没有虚表；非静态数据成员没有私有或保护属性的、没有引用类型的、没有非POD类类型的（即嵌套类都必须是POD）、没有指针到成员类型的（因为这个类型内含了this指针）。

### C++11

C++11把情况推广为两种：

类型是平凡的（trivial），则可以静态初始化、可以用memcpy直接复制数据而不是必须用copy构造函数。其生存期始于它的对象的存储被定义，无须等到构造函数完成。平凡class或结构必须满足：

  - 有平凡的缺省构造函数，可用这样的默认语法：(SomeConstructor() = default;)
  - 有平凡的copy与move构造函数，可用默认语法.
  - 有平凡的copy与move运算符，可用默认语法.
  - 有平凡的destructor，不能是虚函数.

构造函数是平凡的，仅当类没有虚成员函数也没有虚基类。Copy/move运算符是平凡的，仅当没有静态数据成员。

类型是标准布局的（standard-layout）意味着它是有序的并且安排其成员兼容于C语言。这要求满足：

  - 没有虚函数
  - 没有虚基类
  - 所有非静态数据成员有相同的访问控制(public, private, protected)
  - 所有非静态数据成员，包括在任何基类中的，存在于类继承体系中的一个类中
  - 上述规则适用于所有基类与类继承体系中的所有非静态数据成员
  - 没有同一类型的基类型被定义为第一个非静态数据成员

一个class/struct/union是POD，当它是平凡的、标准布局的，所有数据成员是POD.

分为两个概念，对象可以不满足其中一个但是满足另外一个。例如，类有复杂的move与copy构造函数，因此不是平凡的，但可能是标准布局因此能与C程序互操作。类似地，一个类的有public与private的非静态数据成员，因此不是标准布局，但可以是平凡的因此可以memcpy操作。

## 用途

POD类型在源代码兼容于ANSI C时非常重要。POD对象与C语言的对应对象具有共同的一些特性，包括初始化、复制、内存布局、寻址。

一个例子是下述C++的new表达式中的对象初始化，POD与non-POD的区别\[12\]:

| 表达式      | POD类型T      | non-POD类型T |
| -------- | ----------- | ---------- |
| new T    | 不初始化        | 缺省初始化      |
| new T()  | 总是缺省初始化     |            |
| new T(x) | 总是调用构造函数初始化 |            |

因此，non-POD类型的对象或数组总是被初始化；而POD类型的对象或数组可能未被初始化.

其它与POD相关的C++特性:

  - 内存布局——POD对象的组成字节是连续的\[13\].

> "POD-struct ... types are layout-compatible if they have the same number of members, and corresponding members (in order) have layout-compatible types"\[14\].

> POD-union ... types are layout-compatible if they have the same number of members, and corresponding members (in any order) have layout-compatible types"\[15\].

  - 初始化——对于non-const POD对象，如果没有初始化声明时，具有不确定的初值(indeterminate initial value) \[16\]. POD对象的缺省初始化为0值\[17\]. 静态POD对象初始化为给定的初值，如果是局部静态POD对象，在进入所在作用域之前初始化\[18\]\[§6.7, ¶4\]; 对于非局部静态POD对象，在任何动态初始化之前赋予初值\[19\].
  - 拷贝——POD对象可直接拷贝(例如用memcpy())到其它字符数组或相同POD类型的对象，保持其值不变\[20\]。POD类型可以用作标准模板字符串类的字符\[21\]. 由于这个原因，函数的返回值如果是non-POD类型，则不能通过寄存器传递函数的返回值。
  - 寻址——一个POD对象的地址可以是一个地址常量表达式\[22\]；一个对POD成员的引用可以是一个引用常量表达式\[23\]. 一个POD-struct对象的指针，适合用reinterpret_cast转换到它的初始值\[24\].

## POD JAVA

JAVA中，一些开发者认为POD类型是符合没有public成员且没有方法的类，比如data transfer object。其实不使用事件句柄并且不实现除getter和setter之外的附加方法的POJO（只含有getter和setter的类）和JAVA Bean也属于POD。但不管怎么样，POJO和JAVA Bean已经有了封装，已经违反了POD的定义了。

## 参见

[Visual C++名字修饰](../Page/Visual_C++名字修饰.md "wikilink")

## 参考文献

<references/>

[Category:_C++](https://zh.wikipedia.org/wiki/Category:_C++ "wikilink") [Category:_数据类型](https://zh.wikipedia.org/wiki/Category:_数据类型 "wikilink")

1.  ISO/IEC 14882, first edition, 1998-09-01 p. 5, footnote 4\]
2.  参见C++标准的§3.9, ¶10; §9, ¶4
3.  參見C++標準§3.9, ¶10
4.  参见C++标准§3.9.1, ¶8
5.  参见C++标准§3.9.1, ¶7
6.  参见C++标准§3.9.1, ¶8
7.  参见C++标准§3.9.1, ¶1; §7.2, ¶1
8.  參見C++標準§3.9.2, ¶1
9.  參見C++標準§3.9.2, ¶1
10. 参见C++标准§9, ¶4
11. 参见C++标准§8.5.1, ¶1
12. 参见C++标准§5.3.4, ¶15
13. 参见C++标准§1.8, ¶5
14. 参见C++标准§9.2, ¶14
15. 参见C++标准§9.2, ¶15
16. 参见C++标准§8.5, ¶9
17. 参见C++标准§8.5, ¶5
18. 参见C++标准§6.7, ¶4
19. 参见C++标准§3.6.2, ¶1
20. 参见C++标准§3.9, ¶2与3
21. 参见C++标准§21, ¶1
22. 参见C++标准§5.19, ¶4
23. 参见C++标准§5.19, ¶5
24. 参见C++标准§9.2, ¶17