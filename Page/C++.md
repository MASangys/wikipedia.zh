**C++**是一种被广泛使用的计算机程序设计语言。它是一种通用[程序設計語言](https://zh.wikipedia.org/wiki/程式設計語言 "wikilink")，支援[多重编程模式](https://zh.wikipedia.org/wiki/多重编程范式 "wikilink")，例如[程序化程序設計](https://zh.wikipedia.org/wiki/程序化程式設計 "wikilink")、[数据抽象](../Page/抽象化_\(計算機科學\).md "wikilink")、[面向对象程序設計](https://zh.wikipedia.org/wiki/物件導向程式設計 "wikilink")、[泛型程序設計和](https://zh.wikipedia.org/wiki/泛型程式設計 "wikilink")[设计模式等](../Page/设计模式_\(计算机\).md "wikilink")。

**C++**是一种获广泛使用的计算机编程语言。它是一种通用[编程语言](../Page/编程语言.md "wikilink")，支援[多重编程模式](https://zh.wikipedia.org/wiki/多重编程范式 "wikilink")，例如[程序化程序設計](https://zh.wikipedia.org/wiki/程序化程式設計 "wikilink")、[数据抽象](../Page/抽象化_\(計算機科學\).md "wikilink")、[面向对象程序設計](https://zh.wikipedia.org/wiki/物件導向程式設計 "wikilink")、[泛型程序設計和](https://zh.wikipedia.org/wiki/泛型程式設計 "wikilink")[设计模式等](../Page/设计模式_\(计算机\).md "wikilink")。

[比雅尼·斯特勞斯特魯普博士在](https://zh.wikipedia.org/wiki/比雅尼·斯特勞斯特魯普 "wikilink")[贝尔实验室](../Page/贝尔实验室.md "wikilink")工作期间在20世紀80年代發明並實現了C++。起初，這種語言被稱作“”（“包含‘[類](../Page/类_\(计算机科学\).md "wikilink")’的C語言”），作為[C語言的增強版出現](https://zh.wikipedia.org/wiki/C語言 "wikilink")。随后，C++不斷增加新特性。[虚函数](../Page/虚函数.md "wikilink")（）、[运算符重载](../Page/运算符重载.md "wikilink")（）、[多繼承](../Page/多重继承.md "wikilink")（）、[标准模板库](../Page/标准模板库.md "wikilink")（, ）、[异常处理](../Page/异常处理.md "wikilink")（）、[运行时类型信息](https://zh.wikipedia.org/wiki/RTTI "wikilink")（）、[命名空間](../Page/命名空间.md "wikilink")（）等概念逐漸納入標準。1998年，[國際標準組織](https://zh.wikipedia.org/wiki/国际标准化组织 "wikilink")（）頒布了C++程序設計語言的第一個國際標準ISO/IEC 14882:1998，目前最新标准为ISO/IEC 14882:2017。根據《C++編-{}-程思想》（）一書，C++與C的代码执行效率往往相差在±5%之間\[1\]。

## 发展历史

[BjarneStroustrup.jpg](https://zh.wikipedia.org/wiki/File:BjarneStroustrup.jpg "fig:BjarneStroustrup.jpg")，C++之父\]\]

C++語言發展大概可以分為三個階段：第一階段從80年代到1995年。這一階段C++語言基本上是傳統類型上的[面向对象語言](../Page/面向对象程序设计.md "wikilink")，並且憑藉着接近C語言的效率，在工業界使用的開發語言中佔據了相當大份額；第二階段從1995年到2000年，這一階段由於[標準模板庫](https://zh.wikipedia.org/wiki/標準模板庫 "wikilink")（）和後來的[Boost等程式庫的出現](../Page/Boost_C++_Libraries.md "wikilink")，[泛型程序設計在C](https://zh.wikipedia.org/wiki/泛型程式設計 "wikilink")++中佔據了越來越多的比重。當然，同時由於[Java](../Page/Java.md "wikilink")、[C\#等語言的出現和硬體價格的大規模下降](https://zh.wikipedia.org/wiki/C＃ "wikilink")，C++受到了一定的衝擊；第三階段從2000年至今，由於以[Loki](https://zh.wikipedia.org/wiki/Loki "wikilink")、[MPL(Boost)等程式庫為代表的](../Page/Boost_C++_Libraries.md "wikilink")[產生式編程和](https://zh.wikipedia.org/wiki/產生式編程 "wikilink")[模板元編程的出現](https://zh.wikipedia.org/wiki/模板元編程 "wikilink")，C++出現了發展歷史上又一個新的高峰，這些新技術的出現以及和原有技術的融合，使C++已經成為當今主流程序設計語言中最複雜的一員。

[比雅尼·史特勞斯特魯普](https://zh.wikipedia.org/wiki/比雅尼·史特勞斯特魯普 "wikilink")（）工作起於1979年的。這個構思起源於斯特劳斯特鲁普做博士論文時的一些程式撰寫經驗。他發現[Simula](../Page/Simula.md "wikilink")具備很利於大型軟體開發的特點，但的執行速度太慢，無法對現實需求發揮功效；[BCPL](../Page/BCPL.md "wikilink")雖快得多，但它過於低階的特性，使其不適於大型軟體的開發。當斯特劳斯特鲁普開始在[貝爾實驗室工作時](../Page/贝尔实验室.md "wikilink")，他有分析[UNIX](https://zh.wikipedia.org/wiki/Unix "wikilink")[核心關於](https://zh.wikipedia.org/wiki/核心 "wikilink")[分散式計算的問題](https://zh.wikipedia.org/wiki/分散式計算 "wikilink")。回想起他的博士論文經驗，斯特劳斯特鲁普開始為C語言增強一些類似的特點\[2\]。之所以選擇C，是因為它適於各種用途、快速和可移植性。除了[C](../Page/C.md "wikilink")和[Simula](../Page/Simula.md "wikilink")之外，同時也從其它語言中取得靈感，如[ALGOL 68](../Page/ALGOL_68.md "wikilink")、[Ada](../Page/Ada.md "wikilink")、[CLU](../Page/CLU.md "wikilink")以及[ML](https://zh.wikipedia.org/wiki/ML "wikilink")。

剛開始時，[類別](../Page/类_\(计算机科学\).md "wikilink")、[衍生類別](https://zh.wikipedia.org/wiki/继承_\(计算机科学\) "wikilink")、儲存類型檢查、[內聯和](https://zh.wikipedia.org/wiki/內聯 "wikilink")[缺省参数](../Page/缺省参数.md "wikilink")特性，都是透過[Cfront引入C語言之中](https://zh.wikipedia.org/wiki/Cfront "wikilink")\[3\]。

1983年，改命名為C++（`++`是C语言中的[增值操作符](../Page/增值和减值操作符.md "wikilink")）。加入了新的特性，其中包括[虛擬函式](https://zh.wikipedia.org/wiki/虛擬函式 "wikilink")、函式名和運算子多載、參考、常數、使用者可控制的自由空間儲存區控制、改良的型別檢查，以及新的雙斜線（`//`）單行註解風格。

1985年，發佈第一版《C++程式設計語言》，提供一個重點的語言參考，至此還不是官方標準\[4\]。1985年10月出現了第一個商業化發佈。

1989年，發佈了。引入了多重繼承、抽象類別、靜態成員函式、[常數成員函式](https://zh.wikipedia.org/wiki/常數成員函式 "wikilink")，以及成員保護。1990年，出版了*The Annotated C++ Reference Manual*。這本書後來成為標準化的基礎。稍後還引入了[模板](../Page/模板_\(C++\).md "wikilink")、[例外處理](https://zh.wikipedia.org/wiki/例外處理 "wikilink")、[命名空間](https://zh.wikipedia.org/wiki/命名空間 "wikilink")、新的[強制类型转换](https://zh.wikipedia.org/wiki/強制类型转换 "wikilink")，以及[布林类型](https://zh.wikipedia.org/wiki/布爾_\(數據類型\) "wikilink")。

隨著C++語言的演變，也逐漸演化出相應的標準程式庫。最先加進C++標準函式庫的是串流程式庫，其用以取代傳統的C函式，如[printf和](https://zh.wikipedia.org/wiki/printf "wikilink")[scanf](https://zh.wikipedia.org/wiki/scanf "wikilink")。隨後所引入的程式庫中最重要的便是[標準模板庫](https://zh.wikipedia.org/wiki/標準模板庫 "wikilink")，簡稱[STL](https://zh.wikipedia.org/wiki/STL "wikilink")。

多年後，一個聯合的[ANSI](https://zh.wikipedia.org/wiki/美国国家标准学会 "wikilink")-[ISO委員會於](https://zh.wikipedia.org/wiki/International_Organization_for_Standardization "wikilink")1998年對C++標準化（*[ISO/IEC 14882](https://zh.wikipedia.org/wiki/ISO/IEC_14882 "wikilink")：1998*）。在官方釋出1998標準的若干年後，委員會處理缺陷報告，並於2003年發佈一個C++標準的修正版本。2005年，一份名為**[Library Technical Report 1](../Page/C++_Technical_Report_1.md "wikilink")**（簡稱）的技術報告釋出。雖然還不是官方標準的一部分，不過它所提供的幾個擴展可望成為下一版C++標準的一部分。幾乎所有目前仍在維護的C++編譯器皆已支援。

目前最新的C++标准是2017年12月发布的*[ISO/IEC 14882](https://zh.wikipedia.org/wiki/ISO/IEC_14882 "wikilink"):2017*\[5\]，又称[C++17](../Page/C++17.md "wikilink")或[C++1z](https://zh.wikipedia.org/wiki/C++1z "wikilink")。

雖然C++免專利，但標準文件本身並不是免費的，尽管标准文档不是免费的，但是很容易从网络中取得，最简单的就是C++标准文档之前的最后一次草稿版本，它与标准的差别几乎只在于排版上。

### C++名字的由來

C++這個名字是[Rick Mascitti於](https://zh.wikipedia.org/wiki/Rick_Mascitti "wikilink")1983年中所建議的，並於1983年12月首次使用。更早以前，尚在研究階段的發展中語言曾被稱為「」，之後是「」。在[電腦科學中](https://zh.wikipedia.org/wiki/電腦科學 "wikilink")，C++仍被稱為C語言的上層結構。它最後得名於C語言中的「++」運算子（其對[變數](../Page/變數.md "wikilink")的[值進行遞增](https://zh.wikipedia.org/wiki/值 "wikilink")）。而且在共同的[命名約定中](https://zh.wikipedia.org/wiki/命名約定 "wikilink")，使用「+」以表示增強的程式。斯特劳斯特鲁普說：「這個名字象徵著源自於C語言變化的自然演進」。[C+是一個和C](https://zh.wikipedia.org/wiki/ABCL/c+ "wikilink")/C++無關的早期程式語言。

[Rick Mascitti在](https://zh.wikipedia.org/wiki/Rick_Mascitti "wikilink")1992年被非正式地問起名字的由來，他表示這是在半開玩笑中說出的。他從沒想過C++會成為這門語言的正式名字。

有一個關於C++名字的笑話是，當你使用後綴++時，附加只發生在運算之後（因此，它應該是++C，而不是C++，这个笑话是说时下某些程序员还在以使用C的方式使用C++，这通常被一些权威著作认为是不正确的）。

### C++标准

由进行。已经出版的标准文档如下：

| 发布时间 | 文档                          | 通称                                                     | 备注            |
| ---- | --------------------------- | ------------------------------------------------------ | ------------- |
| 2017 | ISO/IEC 14882:2017\[6\]     | [C++17](../Page/C++17.md "wikilink")                   | 第五个C++标准      |
| 2017 | ISO/IEC TS 22277:2017\[7\]  | coroutines TS                                          | 协程库扩展         |
| 2017 | ISO/IEC TS 21425:2017\[8\]  | ranges TS                                              | 提供范围机制        |
| 2017 | ISO/IEC TS 19568:2017\[9\]  | library fundamentals TS                                | 标准库扩展         |
| 2016 | ISO/IEC TS 19571:2016\[10\] | concurrency TS                                         | 用于并发计算的扩展     |
| 2015 | ISO/IEC TS 19217:2015\[11\] | concepts TS                                            | 概念库，用于优化编译期信息 |
| 2015 | ISO/IEC TS 19841:2015\[12\] | TM TS                                                  | 事务性内存操作       |
| 2015 | ISO/IEC TS 19570:2015\[13\] | parallelism TS                                         | 用于并行计算的扩展     |
| 2015 | ISO/IEC TS 18822:2015\[14\] | filesystem TS                                          | 文件系统          |
| 2014 | ISO/IEC 14882:2014\[15\]    | [C++14](../Page/C++14.md "wikilink")                   | 第四个C++标准      |
| 2011 | ISO/IEC TR 24733:2011\[16\] | \-                                                     | 十进制浮点数扩展      |
| 2011 | ISO/IEC 14882:2011\[17\]    | [C++11](../Page/C++11.md "wikilink")                   | 第三个C++标准      |
| 2010 | ISO/IEC TR 29124:2010\[18\] | \-                                                     | 数学函数扩展        |
| 2007 | ISO/IEC TR 19768:2007\[19\] | [C++TR1](../Page/C++_Technical_Report_1.md "wikilink") | C++技术报告：库扩展   |
| 2006 | ISO/IEC TR 18015:2006\[20\] | \-                                                     | C++性能技术报告     |
| 2003 | ISO/IEC 14882:2003\[21\]    | C++03                                                  | 第二个C++标准      |
| 1998 | ISO/IEC 14882:1998\[22\]    | C++98                                                  | 第一个C++标准      |
|      |                             |                                                        |               |

## 設計原則

在《C++語言的設計和演化》（1994）中，描述了他在設計C++時，所使用的一些原則。知道這些原則有助於理解C++為何會是現在這個樣子。以下總結了一些原則，詳盡的內容可參閱《C++語言的設計和演化》：

  - C++設計成直接的和廣泛的支援多種程式設計風格（[程序化程式設計](https://zh.wikipedia.org/wiki/程序化程式設計 "wikilink")、[数据抽象](../Page/抽象化_\(計算機科學\).md "wikilink")、[物件導向程式設計](https://zh.wikipedia.org/wiki/物件導向程式設計 "wikilink")、[泛型程式設計](https://zh.wikipedia.org/wiki/泛型程式設計 "wikilink")）。
  - C++設計成給程式設計者更多的選擇，即使可能導致程式設計者選擇錯誤。
  - C++設計成儘可能與C相容，藉此提供一個從C到C++的平滑過渡。
  - C++避免平台限定或沒有普遍用途的特性。
  - C++不使用會帶來額外開銷的特性。
  - C++設計成無需複雜的程式設計環境。

## 標準程序庫

1998的C++[標準分為兩個部分](https://zh.wikipedia.org/wiki/standardization "wikilink")：[核心語言和](https://zh.wikipedia.org/wiki/核心語言 "wikilink")[C++標準程式庫](https://zh.wikipedia.org/wiki/C++標準程式庫 "wikilink")；後者包含了大部分[標準模板庫和C標準程式庫的稍加修改版本](https://zh.wikipedia.org/wiki/標準模板庫 "wikilink")。存在許多不屬於標準部分的C++程式庫，且使用外部連結，程式庫甚至可以用[C](../Page/C.md "wikilink")撰寫。

[C++標準程式庫充分吸收了C標準程式庫](https://zh.wikipedia.org/wiki/C++標準程式庫 "wikilink")，並佐以少許的修改，使其與C++良好的運作。另一個大型的程式庫部分，是以[標準模板庫](https://zh.wikipedia.org/wiki/標準模板庫 "wikilink")（）為基礎，於1994年2月正式成為ANSI/ISO C++。它提供了實用的工具，如[容器类](https://zh.wikipedia.org/wiki/容器_\(抽象数据类型\) "wikilink")（如：[Array和](https://zh.wikipedia.org/wiki/Array "wikilink")），[迭代器](../Page/迭代器.md "wikilink")（廣義[指针](../Page/指標_\(電腦科學\).md "wikilink")）提供容器以類似陣列的存取方式，以及[<u>泛型</u>算法進行搜尋和排序的運算](https://zh.wikipedia.org/wiki/演算法 "wikilink")。此外還提供了(multi)map和(multi)set，它們都共享相似的成员函数。因此，以下成為可能，使用模板撰寫泛型算法，它可以和任何容器或在任何以迭代器定義的序列上運作。如同C，使用`#include`[指令包含](https://zh.wikipedia.org/wiki/directive_\(programming\) "wikilink")[標準表頭](https://zh.wikipedia.org/wiki/標準表頭 "wikilink")，即可存取[程式庫裡的功能](https://zh.wikipedia.org/wiki/程式庫 "wikilink")。C++提供69個標準表頭，其中19個不再贊成使用。

使用標準模板庫（例如：使用`std::vector`或`std::string`來取代C風格的数组或字符数组）有助於導向更安全和更靈活的软件。

在[STL在納入C](https://zh.wikipedia.org/wiki/STL "wikilink")++標準以前，是來自[HP和後來的](https://zh.wikipedia.org/wiki/Hewlett-Packard "wikilink")[SGI的第三方程式庫](https://zh.wikipedia.org/wiki/Silicon_Graphics "wikilink")，標準中並未稱之為「」，它只是標準庫中的一部分，但仍有許多人使用這個名稱，以別於其它的標準庫（輸入／輸出串流、國際化、診斷、C程式庫子集，等等）。 另外，如`std::basic_string`此类标准委员会添加的接口，有时也被误认为；实际上它们并不存在于原始的中，在标准化后才从标准库吸收加入其中。

## C++中的特色

和C語言相比，C++引入了更多的特性，包括：复合类型（引用類型等）、限定符和常量表达式、类型处理运算符（类型别名及和等多种类型指示符）、C++标准库（库与多种容器类）与迭代器、动态内存与智能指针、函数重載、面向对象程序设计（如数据抽象、成員函数、类作用域、构造函数与析构函数、静态成员、访问控制与繼承、虚函数、抽象类与接口等）、拷贝控制、运算符重载、造型与函数风格的強制类型转换、模板与泛型编程，以及異常處理、命名空間、多继承与虚继承、运行时类型识别及嵌套类等。

和普遍認為的相反，C++不是第一個正式引入`const`關鍵字的语言。80年代早期，和讨论之后提供了在C语言中的实现机制，并在带類的C中取得了一定经验。关键字`const`正式引入C語言是在。这早于第一个C++国际标准近十年，但此时`const`已被C++实现普遍採用。

C++在某些案例中（見下「與C不相容之處」），進行比C還要多的類型檢查。

以「`//`」起始作為註解起源自C的前身[BCPL](../Page/BCPL.md "wikilink")，而後被重新引入到C++。

C++的一些特性，C不久之後也採用了，包括在循环的括号中声明，C++風格的註解（使用`//`符號，和`inline`，雖然C99定義的`inline`關鍵字與C++的定義不相容。不過，[C99也引入了不存在於C](https://zh.wikipedia.org/wiki/C语言#C99 "wikilink")++的特性，如：可变参数[巨集](../Page/巨集.md "wikilink")，和以陣列作為參數的較佳處理；某些C++編譯器可能實作若干特性，以作為擴展，但其餘部分並不符合現存的C++特性）

一個常見的混淆其實只是一個微妙的術語問題：由於它的演化來自C，在C++中的術語**[对象](https://zh.wikipedia.org/wiki/对象 "wikilink")**和C語言一樣是意味著**記憶體區域**，而不是**-{zh:類別;zh-tw:類別;zh-cn:类}-的實體**，在其它絕大多數的[物件導向語言也是如此](https://zh.wikipedia.org/wiki/物件導向 "wikilink")。舉例來說，在C和C++中，語句`int i;`定義一個`int`型別的物件，這就是變數的值`i`將在指派時，所存入的記憶體區域。

### C++语言中的关键字

`const`是一个C和C++语言的关键字，意思是宣告一個常數(不能改變的變數)，即唯讀。使用`const`在一定程度上可以提高程序的安全性和可靠性，也便于实现对此进行优化（如把只读对象放入[ROM中](https://zh.wikipedia.org/wiki/ROM "wikilink")）。`const`作为-{zh:型別;zh-tw:型別;zh-cn:类型}-限定符，是型別的一部分。

以下是和C语言相容的用法：

``` cpp numberLines
int m = 1, n = 2;   // int 类型的对象
const int a = 3;    // const int 类型的对象
int const b = 4;    //同上
const int *p        //指向 const int 类型对象的指针
int const *q;       //同上
int *const x;       //指向 int 类型对象的 const 指针；注意 const 的位置
const int *const r; //指向 const int 类型对象的 const 指针
int const *const t; //同上
```

但是，`const`在C++中有更强大的特性。它允许在编译时确定作为真正的常量表达式。例如，

``` cpp numberLines
const int max_len = 42;
int a[max_len];
```

此前C语言并不支持这样的用法，直到[C99允许用变量作为数组长度](https://zh.wikipedia.org/wiki/C99 "wikilink")（需要注意的是[C99中的](https://zh.wikipedia.org/wiki/C99 "wikilink")支持运行期确定数组长度，但C++从未支持）。此外，C++中，命名空间作用域的对象的名称隐含内部链接。这意味着直接在头文件里定义对象被多个源文件包含时，也不会重定义。

在C++11及之后的C++标准中，推荐使用拥有更严格语义的`constexpr`限定符来表示一个可以出现在常量表达式中的变量。const可区分为顶层const(top-level const)和底层const(low-level const)。

实际上，在语义表达方面，const更多表示为“只读”，constexpr才表示编译期常量。

## 与C不兼容之处

C++有时被认为是C的[超集](https://zh.wikipedia.org/wiki/超集 "wikilink")（），但这並不严谨。

各个版本的的附录C中都指出了C++和的一些不兼容之处。

大部分的C代码可以很轻易的在C++中正确编译，但仍有少数差异，导致某些有效的C代码在C++中失效，或者在C++中有不同的行为。

最常见的差异之一是，C允许从`void*`隐式转换到其它的指标类型，但C++不允许。下列是有效的C代码：

``` cpp numberLines
// 从void *隐式转换为int *
int *i = malloc(sizeof(int) * 5);
```

但要使其在C和C++*两者*皆能运作，就需要使用显式转换：

``` cpp numberLines
int *i = (int *)malloc(sizeof(int) * 5);
```

另一个常见的可移植問題是，C++定义了很多的新关键字，如`new`和`class`，它们在C程式中，是可以作为识別字（例：变量名）的。

[C99去除了一些不兼容之处](https://zh.wikipedia.org/wiki/C_\(programming_language\)#C99 "wikilink")，也新增了一些C++的特性，如`//`注释，以及在代码中混合使用。不过C99也纳入几个和C++冲突的新特性（如：可变长数组、原生复数类型和复合逐字常数），而C++11已经加入了兼容C99预处理器的特性。

由于C++函数和C函数通常具有不同的[名字修饰](../Page/名字修饰.md "wikilink")和[调用约定](https://zh.wikipedia.org/wiki/调用约定 "wikilink")，所有在C++中呼叫的C函数，须放在`extern "C" { /* C函数声明 */ }`之內。

## C++的程序

下面这个程序显示“Hello, world\!”然后结束运行：

``` cpp numberLines
#include <iostream>
int main() {
    std::cout << "Hello, world!" << std::endl;
    return 0;
}
```

这里也可以使用指令以避免再次声明std::——

``` cpp numberLines
#include <iostream>
using namespace std;
int main() {
    cout << "Hello, world!" << endl;
    return 0;
}
```

你可以用“\\n”代替以上代碼裡的“”，不過必須用在句子的後端。請不要把斜杠（/）和反斜杠（\\）混淆。

``` cpp numberLines
std::cout << "Hello, world!\n";
```

但需要知道的是， std::endl 不仅仅会在某个输出流中插入换行字符，还将执行输出流的 flush() 函数（即刷新缓冲区），而'\\n'则不会。

根据ISO C++的规定，全局函数必须返回。 以下两种形式是合法的：

``` cpp numberLines
int main() {
    // ...
}
```

``` cpp numberLines
int main(int argc, char *argv[]) {
    // ...
}
```

不过，在一些编译器（例如Visual C++）上，

``` cpp numberLines
void main() {
    // ...
}
```

也是合法的。**永远不要这样写，因为这样的写法没有兼容性。**

## 語言特性

### 运算符

分為

| 優先權 | 運算子              | 說明                     | 結合性  |
| --- | ---------------- | ---------------------- | ---- |
| 1   | ()               | 括號                     | 由左至右 |
| 2   | \!、-、++、--       | 邏輯運算子NOT、算術運算子負號、遞增、遞減 | 由右至左 |
| 3   | \*、/、%           | 算術運算子的乘法、除法、餘數         | 由左至右 |
| 4   | \+、-             | 算術運算子加法、減法             | 由左至右 |
| 5   | \<\<、\>\>、\>\>\> | 位元運算子左移、右移、無符號右移       | 由左至右 |
| 6   | \>、\>=、\<、\<=    | 關係運算子大於、大於等於、小於、小於等於   | 由左至右 |
| 7   | \==、\!=          | 關係運算子等於、不等於            | 由左至右 |
| 8   | &                | 位元運算子AND               | 由左至右 |
| 9   | ^                | 位元運算子XOR               | 由左至右 |
| 10  | ｜                | 位元運算子OR                | 由左至右 |
| 11  | &&               | 邏輯運算子AND               | 由左至右 |
| 12  | ｜｜               | 邏輯運算子OR                | 由左至右 |
| 13  | ?:               | 條件控制運算子                | 由右至左 |
| 14  | \=、op=           | 指定運算子                  | 由右至左 |

### 預處理器

C++主要有三個編譯階段：預處理、轉譯成目的碼和連結（最後的兩個階段一般才視為真正的「編譯」）。在第一階段，預處理，會將*預處理器指令*替換成原始碼，然後送到下一個編譯階段。

#### 預處理器指令和巨集

預處理指令的運作方式是根據使用者定義的規則，簡單的把記號字元序列置換成其它的記號字元序列。它們進行[巨集置換](https://zh.wikipedia.org/wiki/巨集置換 "wikilink")、含入其它的檔案（由底層至高階的特性，例如包含模組／包／單元／元件）、條件式編譯和條件式含入。例如：

``` cpp
#define PI 3.1415926535897932384626433832795028841971693993751
```

原始代码中出現的`PI`，都將會替換為`3.1415926535897932384626433832795028841971693993751`。另一個普遍的例子是

``` cpp
#include <iostream>
```

它将標準庫头文件`iostream`中所有的声明语句都纳入调用者所在的程序块。除了以上提到的常用指令以外，還有幾個額外的預處理器指令，可以用來控制編譯流程、條件式含入或排除代碼區塊等等。

  -
    *參閱[預處理器和](https://zh.wikipedia.org/wiki/預處理器 "wikilink")[C預處理器](https://zh.wikipedia.org/wiki/C預處理器 "wikilink")*

### 模板

模板（）指C++程式語言中的函式模板（）與類別模板（），這種觀念是取材自[Simula](../Page/Simula.md "wikilink")的泛型程式設計。它采用[typename和](https://zh.wikipedia.org/wiki/typename "wikilink")[class两个关键字](https://zh.wikipedia.org/wiki/class "wikilink")，来标识模板類別的型別参数。[C++11](../Page/C++11.md "wikilink")和[C++14](../Page/C++14.md "wikilink")分别引入了类型别名模板和变量模板。

### 類別与对象

在物件導向物件程式設計術語中，物件（）是資料（）和處理資料的指令（）的聯合（）。模擬（）實際世界（），物件有三種特質（）：狀態（）、行為（）、，並且使用訊息（）來引發彼此的互動。類別（）為物件的[藍圖或工廠](https://zh.wikipedia.org/wiki/藍圖 "wikilink")，定義了物件的抽象特質，包括物件的屬性特質和物件的行為特質，屬性的值即是物件的狀態，行為即是物件能夠做的事。

C++為類別構成式物件導向程式設計語言（），類別概念具現化（）地作為二等公民（）出現在C++語言當中，在語法中明確地使用類別來做到資料抽象化、封裝、模組化、繼承、子型別多型、物件狀態的自動初始化。C++中，一個類別即為一個型別，加上封裝，一個類別即為一個[抽象資料型別](../Page/抽象資料型別.md "wikilink")（，），繼承、多型、模板都加強了類別的可抽象性。在C++可以使用或這兩個關鍵字宣告類別（），而使用運算子實體化類別產生的實體（）即為物件，是[一等公民](../Page/第一類物件.md "wikilink")。C/C++以資料成員（）表達屬性，以成員函式（）表達行為。

声明一个：

``` cpp numberLines
class Car {
private:
    int isRunning;
public:
    Run();
};
```

但是仍然需要注意，严格来说，C++中对象的概念和C的对应概念接近，表示的是具有特定类型的存储，而非面向对象意义上的“对象”：一个对象不一定是类类型的。此外，C++意义上的“实例”仅指模板实例化的结果，而并不指对象。作为对比，[Java](../Page/Java.md "wikilink")的“对象”和“实例”的概念和这里的使用一致。

#### 封裝

封裝（）是將資料和處理資料的[程序](../Page/计算机程序.md "wikilink")（）組合起來，僅對外公開接口（），达到信息隐藏（）的功能。封裝的優點是能減少耦合（）。C++、、C\# 等語言定義对象都是在語法中明確地使用類別（）來做到封裝。

C++的類別对其成员（包括数据成员、函数成员）分为三种封装状态：

  - 公有（）：類別的用户可以访问、使用该類別的此种成员。
  - 保护（）：该類別的衍生類別可以访问、使用该類別的此成员。外部程序代码不可以访问、使用这种成员。
  - 私有（）：只有類別自身的成员函数可以访问、使用该類別的此成员。

一般可以将C++類的对外接口设定为公有成员；類内部使用的数据、函数设定为私有成员；供派生自该類別的子類別使用的数据、函数设定为保护成员。

#### 繼承

[繼承](https://zh.wikipedia.org/wiki/繼承_\(計算機科學\) "wikilink")（）是指派生类（）繼承基类（），會自動取得超類別除私有特質外的全部特質，同一類別的所有實體都會自動有該類別的全部特質，做到程式碼再用（）。C++只支援類別構成式繼承，雖然同一類別的所有實體都有該類別的全部特質，但是實體能夠共享的實體成員只限成員函式，類別的任何實體資料成員乃每個實體獨立一份，因此物件間並不能共享狀態，除非特質為參考型別的屬性，或使用指標來間接共享。C++支持的继承关系为：

  - 公有繼承（）：最常用繼承关系，含义是「」關係，代表了在完全使用公有繼承的物件類別之間的层次关系（）。
  - 受保護繼承（）：基礎類別的公有或保护内容可以被衍生類別，以及由此衍生的其他類別使用。但是基礎類別对外界用户是不可见的。衍生類別的用户不能访问基礎類別的成员、不能把派生類別转换（造型）为基礎類別的指针或引用。
  - 私有繼承（）：基礎類別的公有或保护内容仅可以被衍生類別访问。但基礎類別对衍生類別的子類別或衍生類別的用户都是不可见的。衍生類別的子類別或衍生類別的用户都不能访问基礎類別的内容、不能把衍生類別转换为基礎類別的指针或引用。

C++支持多繼承（，）。多繼承（，）的優缺點一直廣為使用者所爭議，許多語言（如[Java](../Page/Java.md "wikilink")）並不支援多重繼承，而改以單一繼承和介面繼承（），而另一些語言则采用用單一繼承和混入（）。C++通过[虛繼承](https://zh.wikipedia.org/wiki/虛繼承 "wikilink")（）来解決多繼承带来的一系列问题。

### 多态

<table>
<tbody>
<tr class="odd">
<td><div style="text-align: center;">
<p>Polymorphism<br />
<br />
Ad Hoc                   Universal<br />
Overloading   Coercion       Inclusion  Parametric</p>
</div></td>
</tr>
</tbody>
</table>

除了封裝與繼承外，C++還提供了[多型功能](https://zh.wikipedia.org/wiki/多型_\(物件導向程式設計\) "wikilink")，物件導向的精神在於多态（），一般的多态，是指動態多态，係使用繼承和動態绑定（）實現，使用多型可建立起繼承體系（）。類（）與繼承只是達成多态中的一種手段，所以稱物件導向而非類別導向。

多态又分成靜態多态（）與動態多态（）。C++语言支持的動態多态必須結合繼承和动态绑定（）方式實現。靜態多态是指编译时决定的多态，包括重载和以模板（）實現多型的方法即參數化型態（），是使用巨集（）的“程序代码膨脹法”達到多型效果。

类型轉換（）也是一種非参数化（）多态的概念，C++提供dynamic_cast, static_cast等运算符來實作强制类型轉換（）。

運算元重載（）或函式重載（）也算是多型的概念。

## 分析和處理C++原始代碼

，但C++是個著名的例外：请看下面的代码。

``` c++ numberLines
#include <vector>
#include <string>
std::vector< std::vector<std::string> >table1;
std::vector<std::vector<std::string>>table2;
```

上面的显然是一个[字符串](../Page/字符串.md "wikilink")的二维[数组](../Page/数组.md "wikilink")，而则未必能通过编译：如果严格遵循分析过程，串 \>\> 会被解释为[右移运算符而非两个代表](https://zh.wikipedia.org/wiki/移位 "wikilink")[模板参数表结束的右尖括号](../Page/模板_\(C++\).md "wikilink")，因此出现编译错误，必须以的方式用空格区分。(在C++11发布之后，特别规定了当处理模板时，\>\>被优先视为两个\>，所以table1和table2均可通过编译.)

## 争议

「在這12年裡，C++使用者人數大約每七個月半增加一倍」是許多C++相關文件必引的一段話；然而，時至今日新語言層出不窮，使用者人數已不太可能以如此速度增長。分析機構定期對開發人員展開調查，其資料顯示，以C++為工具的開發人員在整個開發界所佔的比例由1998年春天的76%下降至2004年秋的46%。

一部分程序员对C++语言深恶痛绝，他们批评的理由如下：

1.  STL以非常丑陋的方式封装了各种数据结构和算法，写出来的代码难以理解、不美观。
2.  C++编译器复杂和不可靠，不适合构建人命关天类-{}-型的程序。
3.  Ian Joyner认为[面向对象技术徒增学习成本](../Page/面向对象程序设计.md "wikilink")，不如面向过程的C语言简单容易使用，尤其是在系统软件的构建上\[23\]。

概括說來[UNIX](../Page/UNIX.md "wikilink")程式設計師批評C++主要是由於社群與C++社群的文化差異\[24\]。

一个值得注意的事情是[Linux](../Page/Linux.md "wikilink")之父[Linus Torvalds曾经炮轰C](https://zh.wikipedia.org/wiki/Linus_Torvalds "wikilink")++；[图灵奖](../Page/图灵奖.md "wikilink")得主[尼克劳斯·维尔特](../Page/尼克劳斯·维尔特.md "wikilink")也曾经批评C++语言太复杂、语法语义模糊，是“拙劣工程学”的成果。

事实上，对于C++语言的批评并不只来源于系统下的程序员。就像C++语言本身是一个跨平台的语言一样，对C++的批评并不局限于系统用户。

一个确定的观点是：C++是一门复杂的语言、这门语言拥有过多的特性从而难以彻底掌握；C++的某些库难以学习、掌握并应用于实际当中；很多程序员都认为C++是一个过度设计的程序语言。

## 參閱

  - 《[C++程式語言](../Page/C++程式語言_\(書\).md "wikilink")》（）
  - [比较Java和C++](https://zh.wikipedia.org/wiki/比较Java和C++ "wikilink")
  - [C++託管擴展](https://zh.wikipedia.org/wiki/C++託管擴展 "wikilink")
  - [C++/CLI](https://zh.wikipedia.org/wiki/C++/CLI "wikilink")
  - [Boost C++ Libraries](../Page/Boost_C++_Libraries.md "wikilink")
  - [Objective-C](../Page/Objective-C.md "wikilink") ，另一個以C語言添加物件導向設計的程式語言

## 参考文献

## 延伸阅读

  -
  -   -
  -
  -
  -
  -
  -
  -
## 外部連結

  - [JTC1/SC22/WG21](http://www.open-std.org/jtc1/sc22/wg21/) - The C++ Standards Committee
  - [C和C++资源的最终列表](https://www.toptal.com/c/the-ultimate-list-of-resources-to-learn-c-and-c-plus-plus)

{{-}}

[Category:C++](https://zh.wikipedia.org/wiki/Category:C++ "wikilink") [Category:C語言家族](https://zh.wikipedia.org/wiki/Category:C語言家族 "wikilink") [Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")

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
23. Ian Joyner著的《C++?? A Critique of C++ and Programming and Language Trends of the 1990s》第3章51节
24. Eric Raymond著的《[Unix編-{}-程藝術](https://zh.wikipedia.org/wiki/Unix編程藝術 "wikilink")》一書第十四章第四節“語言評估”