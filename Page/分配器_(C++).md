> 本文内容由[分配器 \(C++\)](https://zh.wikipedia.org/wiki/分配器_\(C++\))转换而来。


[AlexanderStepanov.jpg](https://zh.wikipedia.org/wiki/File:AlexanderStepanov.jpg "fig:AlexanderStepanov.jpg")

在[C++](../Page/C++.md "wikilink")编程中，**分配器**（）是[C++标准库的重要组成部分](https://zh.wikipedia.org/wiki/C++标准库 "wikilink")。C++的库中定义了多种被统称为“[容器](https://zh.wikipedia.org/wiki/容器_\(计算机科学\) "wikilink")”的[数据结构](../Page/数据结构.md "wikilink")（如[链表](../Page/链表.md "wikilink")、[集合等](https://zh.wikipedia.org/wiki/集合_\(計算機科學\) "wikilink")），这些容器的共同特征之一，就是其大小可以在程序的[运行时改变](https://zh.wikipedia.org/wiki/运行时 "wikilink")；为了实现这一点，进行动态内存分配就显得尤为必要，在此分配器就用于处理容器对[内存的分配与释放请求](https://zh.wikipedia.org/wiki/内存管理 "wikilink")。换句话说，分配器用于封装[標準模板庫](https://zh.wikipedia.org/wiki/標準模板庫 "wikilink")（STL）容器在内存管理上的低层细节。默认情况下，C++标准库使用其自带的通用分配器，但根据具体需要，程序员也可自行定制分配器以替代之。

分配器最早由作为C++[标准模板库](../Page/标准模板库.md "wikilink")（Standard Template Library，简称STL）的一部分发明，其初衷是创造一种能“使库更加灵活，并能独立于底层数据模型的方法”，并允许程序员在库中利用自定义的[指针和](https://zh.wikipedia.org/wiki/指针_\(信息学\) "wikilink")；但在将标准模板库纳入[C++标准时](https://zh.wikipedia.org/wiki/ISO/IEC_14882 "wikilink")，C++标准委员会意识到对数据模型的完全[抽象化处理会带来不可接受的性能损耗](https://zh.wikipedia.org/wiki/抽象化_\(计算机科学\) "wikilink")，为作折中，标准中对分配器的限制变得更加严格，而有鉴于此，与斯特潘诺夫原先的设想相比，现有标准所描述的分配器可定制程度已大大受限。

虽然分配器的定制有所限制，但在许多情况下，仍需要用到自定义的分配器，而这一般是为封装对不同类型内存空间（如[共享内存与](https://zh.wikipedia.org/wiki/共享内存 "wikilink")[已回收内存](https://zh.wikipedia.org/wiki/垃圾回收_\(计算机科学\) "wikilink")）的访问方式，或在使用[内存池进行内存分配时提高性能而为](https://zh.wikipedia.org/wiki/内存池 "wikilink")。除此以外，从内存占用和运行时间的角度看，在频繁进行少量内存分配的程序中，若引入为之专门定制的分配器，也会获益良多。

## 背景

亚历山大·斯特潘诺夫与李梦（Meng Lee）在1994年将[标准模板库](../Page/标准模板库.md "wikilink")草案提交给[C++](../Page/C++.md "wikilink")标准委员会\[1\]。提交伊始，草案就得到了委员会的初步支持，但委员会成员也对此提出了一些意见，尤其是要求斯特潘诺夫定制库内的容器，使之与底层存储模型相独立\[2\]。作为对要求的回应，斯特潘诺夫发明了分配器，而正因此，标准模板库的所有容器接口也被迫重写，以与分配器相兼容。在修改标准模板库以将之引入[C++标准库的过程中](https://zh.wikipedia.org/wiki/C++标准库 "wikilink")，许多标准委员会成员（如与[比雅尼·斯特劳斯特鲁普](../Page/比雅尼·斯特劳斯特鲁普.md "wikilink")）也与斯特潘诺夫协同工作。他们亦发现自定义分配器甚至有应用于长生命周期（持续存储）的标准模板库容器的潜力，斯特潘诺夫对此的评论则是“重要而有趣的见解”\[3\]。

|                                                                                                        |
| ------------------------------------------------------------------------------------------------------ |
| 从移植性的角度说，所有因在地址、指针等概念上有所限定而只兼容特定机器的组件都应该封装进一个轻量且易于理解的工具之中。但分配器并非标准模板库的本质所在，且也非分解基本数据结构与算法的关键。（节录）\[4\] |
| ——[标准模板库](../Page/标准模板库.md "wikilink")的设计者亚历山大·斯特潘诺夫                                                   |

在原有的提案里的分配器设定中，斯特潘诺夫杂糅了一些语言特性（如可将[模板参数也定义为模板](../Page/模板_\(C++\).md "wikilink")），但由于当时的[编译器皆无法处理之](https://zh.wikipedia.org/wiki/编译器 "wikilink")，所以最终并未被标准委员会所接纳，斯特潘诺夫则如此描述当时的情形：“比雅尼·斯特劳斯特鲁普与安迪·克尼格需要花大量时间来检查我们是否正确使用了这些未实现的特性\[5\]。”在分配器应用后，之前库中直接使用的[指针与](https://zh.wikipedia.org/wiki/指针_\(信息学\) "wikilink")也可以分配器所定义的类型替代，斯特潘诺夫亦曾如此描述分配器：“标准模板库有个不错的特性便是：唯一要提及机器相关类型的地方（……）（只需）被封装成（仅）约16行内的代码\[6\]。”除此以外，斯特潘诺夫原本还打算在分配器中完全封装存储模型，但标准委员会意识到这一做法会造成无法接受的效能损失\[7\]\[8\]，因而为补偿之，分配器的使用需求也做了一定扩充。

分配器的应用中比较特别的一点是，容器的实现过程中可能会假定分配器对指针与相关[整型的](https://zh.wikipedia.org/wiki/整数_\(计算机科学\) "wikilink")[类型定义与默认分配器所提供的等价](https://zh.wikipedia.org/wiki/typedef "wikilink")，因而给定分配器类型的所有[实例在比较时常会得出](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")“相等”的结果，而这一效果实际上恰与设计分配器的初衷背道而驰，并使带状态分配器的可用性大大受限\[9\]，斯特潘诺夫后来对此评论道：“（分配器）理论上说是不差的主意（……）但不幸的是在实践中无法发挥其功效。“他洞察到若要令分配器更加实用，就有必要针对核心语言的部分进行修改\[10\]。

## 使用需求

任意满足分配器使用需求的[C++-{zh-hans:类;zh-hant:類別;}-都可作分配器使用](../Page/C++类.md "wikilink")。具体来说，当一个-{zh-hans:类;zh-hant:類別;}-（在此设为-{zh-hans:类;zh-hant:類別;}-`A`）有为一个特定类型（在此设为类型`T`）的对象分配内存的能力时，该-{zh-hans:类;zh-hant:類別;}-就必须提供以下类型的定义：

  - `A::pointer` 指针
  - `A::const_pointer` 常量指针
  - `A::reference` 引用
  - `A::const_reference` 常量引用
  - `A::value_type` 值类型
  - `A::size_type` 所用内存大小的类型，表示-{zh-hans:类;zh-hant:類別;}-A所定义的分配模型中的单个对象最大尺寸的无符号整型
  - `A::difference_type` 指针差值的类型，为带符号整型，用于表示分配模型内的两个指针的差异值。

如此才能以通用的方式声明对象与对该类对象的引用`T`。allocator提供这些指针或引用的类型定义的初衷，是隐蔽指针或引用的物理实现细节；因为在16位编程时代，*远指针*（far pointer）是与普通指针非常不同的，allocator可以定义一些结构来表示这些指针或引用，而容器类用户不需要了解其是如何实现的。

虽然按照标准，在库的实现过程中允许假定分配器（-{zh-hans:类;zh-hant:類別;}-）A的`A::pointer`（指针）与`A::const_pointer`（常量指针）即是对`T*`与`T const*`的简单的类型定义，但一般更鼓励支持通用分配器。

另外，设有对于为某一对象类型`T`所设定的分配器`A`，则A必须包含四项成员函数，分别为分配函数、解除分配函数、最大个数函数和地址函数：

  - `A::pointer A::allocate(size_type n, A`<void>`::const_pointer hint = 0)`。分配函数用以进行内存分配。其中调用参数n即为需要分配的对象个数，另一调用参数`hint`（须为指向已为`A`所分配的某一对象的指针）则为可选参数，可用于在分配过程中指定新数组所在的内存地址，以提高[引用局部性](https://zh.wikipedia.org/wiki/訪問局部性 "wikilink")\[11\]，但在实际的分配过程中程序也可以根据情况自动忽略掉该参数。该函数调用时会返回指向分配所得的新数组的第一个元素的指针，而这一数组的大小足以容纳n个`T`-{zh-hans:类;zh-hant:類別;}-元素。在此需要注意的是，调用时只为此数组分配了内存，而并未实际[构造对象](https://zh.wikipedia.org/wiki/构造函数 "wikilink")。
  - `void A::deallocate(A::pointer p, A::size_type n)`。解除分配函数。其中p为需要解除分配的对象指针（以`A::allocate`函数所返回的指针做参数），n为对象个数，而调用该函数时即是将以p起始的n个元素解除分配，但同时并不会[析构之](https://zh.wikipedia.org/wiki/析构函数 "wikilink")。C++标准明确要求在调用deallocate之前，该地址空间上的对象已经被析构。
  - `A::max_size()`，最大个数函数。返回`A::allocate`一次调用所能成功分配的元素的最大个数\[12\]，其返回值等价于`A::size_type(-1) / sizeof(T)`的结果\[13\] 。
  - `A::pointer A::address ( reference x )`，地址函数。调用时返回一个指向`x`的指针。

除此以外，由于对象的[构造](https://zh.wikipedia.org/wiki/构造函数 "wikilink")/[析构过程与分配](https://zh.wikipedia.org/wiki/析构函数 "wikilink")/解除分配过程分别进行\[14\] ，因而分配器还需要成员函数`A::construct`（构造函数）与`A::destroy`（析构函数）以对对象进行构造与析构，且两者应等价于如下函数：

``` cpp
template <typename T>
void A::construct(A::pointer p, A::const_reference t) { new ((void*) p) T(t); }

template <typename T>
void A::destroy(A::pointer p){ ((T*)p)->~T(); }
```

以上代码中使用了[placement `new`语法](https://zh.wikipedia.org/wiki/Placement语法 "wikilink")，且直接调用了析构函数。

分配器应是[可复制构造的](https://zh.wikipedia.org/wiki/复制构造函数 "wikilink")，任举一例，为`T`-{zh-hans:类;zh-hant:類別;}-对象而设的分配器可由另一为`U`-{zh-hans:类;zh-hant:類別;}-所设的分配器构造。若某分配器分配了一段存储空间，则这段存储空间只能由与该分配器等价的分配器解除分配。分配器还需要提供一个模板-{zh-hans:类;zh-hant:類別;}-成员类` template  `<typename U>`  struct A::rebind { typedef A `<U>`  other; }; `，以[模板 (C++)参数化的方式](../Page/模板_\(C++\).md "wikilink")，借之来针对不同的数据类型获取不同的分配器。例如，若给定某一为整型（`int`）而设的分配器`IntAllocator`，则可执行`IntAllocator::rebind`<long>`::other`以获取对应长整型（`long`）的相关分配器\[15\]。实际上，stl::list<int>实际要分配的是包含了双向链表指针的node<int>，而不是实际分配int类型，这是引入了rebind的初衷。

与分配器相关联的operator ==，仅当一个allocator分配的内存可以被另一个allocator释放时，上述相等比较算符返回真。operator \!=的返回结果与之相反。

## 自定义分配器

定义自定义分配器的主要原因之一是提升性能。利用专用的自定义分配器可以提高程序的效能，又或提高内存使用效率，亦或两者兼而有之\[16\]\[17\]。默认分配器使用[`new`操作符分配存储空间](../Page/New_\(C++\).md "wikilink")，而这常利用[C语言堆分配函数](https://zh.wikipedia.org/wiki/C语言 "wikilink")（malloc()）实现\[18\]。由于堆分配函数常针对偶发的内存大量分配作优化，因此在为需要一次分配大量内存的容器（如[向量](https://zh.wikipedia.org/wiki/向量_\(C++\) "wikilink")、[双端队列](../Page/双端队列.md "wikilink")）分配内存时，默认分配器一般效率良好\[19\]。但是，对于与[双向链表](../Page/双向链表.md "wikilink")这-{zh-hans:类;zh-hant:類別;}-需要频繁分配少量内存的容器来说，若采用默认分配器分配内存，则通常效率很低\[20\]\[21\]。除此之外，基于malloc()的默认分配器还存在许多问题，诸如较差的引用局部性\[22\]，以及可能造成\[23\]\[24\]。

|                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------- |
| 简言之，此段（……）（如同）是这一标准针对分配器的一场《[我有一个梦想](../Page/我有一个梦想.md "wikilink")》的演讲。在梦想成真之前，关心可移植性的程序员将把自己局限于（使用）无状态的自定义分配器上。 |
| ——{{Tsl|en|Scott Meyers                                                                                          |

有鉴于此，在这一情况下，人们常使用基于[内存池的分配器来解决频繁少量分配问题](https://zh.wikipedia.org/wiki/内存池 "wikilink")\[25\]。与默认的“按需分配”方式不同，在使用基于内存池的分配器时，程序会预先为之分配大块内存（即“内存池”），而后在需要分配内存时，自定义分配器只需向请求方返回一个指向池内内存的指针即可；而在对象析构时，并不需实际解除分配内存，而是延迟到内存池的生命周期完结时才真正解除分配\[26\]。

在“自定义分配器”这一话题上，已有诸多[C++](../Page/C++.md "wikilink")专家与相关作者参与探讨，例如[斯科特·梅耶斯的作品](https://zh.wikipedia.org/wiki/斯科特·梅耶斯 "wikilink")《Effective STL》与[安德烈·亚历山德雷斯库的](https://zh.wikipedia.org/wiki/Andrei_Alexandrescu "wikilink")《》都有提及。梅耶斯洞察到，若要求针对某一类型T的分配器的所有实例都相等，则可移植的分配器的实例必须不包含状态。虽然C++标准鼓励库的实现者支持带状态的分配器，但梅耶斯称，相关段落是“（看似）美妙的观点”，但也几乎是空话，并称分配器的限制“过于严苛”\[27\]。例如，STL的list允许splice方法，即一个list对象A的节点可以被直接移入另一个list对象B中，这就要求A的分配器申请到的内存，可被B的分配器释放掉，从而推导出A与B的分配器实例必须相等。梅耶斯的结论是，分配器最好定义为使用静态方法的类型。例如，根据C++标准，分配器必须提供一个实现了rebind方法的other类模板。

另外，在《[C++程序设计语言](https://zh.wikipedia.org/wiki/C++程式語言_\(書\) "wikilink")》中，比雅尼·斯特劳斯特鲁普则认为“‘严格限制分配器，以免各对象信息不同’，这点显然问题不大”（大意），并指出大部分分配器并不需要状态，甚至没有状态情形下性能反倒更佳。他提出了三个自定义分配器的用例：[内存池型的分配器](https://zh.wikipedia.org/wiki/内存池 "wikilink")、[共享内存型分配器与](https://zh.wikipedia.org/wiki/共享内存 "wikilink")[垃圾回收型分配器](https://zh.wikipedia.org/wiki/垃圾回收_\(计算机科学\) "wikilink")，并展示了一个分配器的实现，此间利用了一个内部内存池，以快速分配/解除分配少量内存。但他也提到，如此[优化可能已经在他所提供的样例分配器中实现](https://zh.wikipedia.org/wiki/优化 "wikilink")\[28\]。

自定义分配器的另一用途是[调试内存相关错误](https://zh.wikipedia.org/wiki/调试 "wikilink")\[29\]。若要做到这一点，可以编写一个分配器，令之在分配时分配额外的内存，并借此存放调试信息。这类分配器不仅可以保证内存由同-{zh-hans:类;zh-hant:類別;}-分配器分配/解除分配内存，还可在一定程度上保护程序免受[缓存溢出之害](https://zh.wikipedia.org/wiki/缓存溢出 "wikilink")\[30\]。

### 使用方法

当初始化标准容器时，若需使用自定分配器，则可将其写入[模板参数](../Page/模板_\(C++\).md "wikilink")，以代替默认的`std::allocator`<T>，如下所示：

``` cpp
namespace std {
  template <class T, class Allocator = allocator<T> > class vector;
// ...
```

正如其他所有C++-{zh-hans:类;zh-hant:類別;}-模板般，在初始化同一标准库容器时，若使用了不同的分配器，则所生成容器的类型亦不同。譬如，若函数需一整型向量数组`std::vector`<int>作为参数，则其只能接受由默认分配器生成的整型向量数组。

### [C++11](../Page/C++11.md "wikilink")

通过加入“作用域”分配器，C++11标准进一步强化了分配器接口，从而保证带有嵌套式内存分配特点的容器（如字符串向量数组等）所分配到的内存皆来自容器自身的分配器\[31\]。

另外，C++11标准删除了“给定类型的分配器在比较时总是相等”的模棱两可的要求，使带状态分配器不仅实用性得到提升，而且可管理进程外的共享内存\[32\]\[33\]。现今分配器的作用多为让程序员可以控制容器的内存分配，而非适应基底硬件的地址模型。事实上，C++11标准删去了分配器“自适应地址模型”的功能，结果抹消了其设计初衷\[34\]。

## 注释

## 参考资料

</ref> \[35\] \[36\] \[37\] \[38\] \[39\] \[40\] \[41\] \[42\] \[43\] \[44\] \[45\] \[46\] }}

### 标准文档

  -
## 外部链接

  - [分配器（STL）](http://www.codeguru.com/cpp/cpp/cpp_mfc/stl/article.php/c4079), CodeGuru
  - [C++标准分配器：介绍与实现](https://www.codeproject.com/Articles/4795/C-Standard-Allocator-An-Introduction-and-Implement), CodeProject
  - [基于malloc()的分配器实现样例](http://www.drdobbs.com/cpp/184403759?pgno=2), Dr. Dobb's Journal

[Category:C++](https://zh.wikipedia.org/wiki/Category:C++ "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.
14.
15.
16.
17.
18.
19.
20.
21.
22.
23.
24.
25.
26.
27.
28.
29.
30.
31.
32.
33.
34.
35.
36.
37.
38.
39.
40.
41.
42.
43.
44.
45.
46.