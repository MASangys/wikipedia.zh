在[C++程序设计语言中](https://zh.wikipedia.org/wiki/C++程序设计语言 "wikilink")，**`decltype`**作为，用于获取[表达式的](https://zh.wikipedia.org/wiki/表达式 "wikilink")[数据类型](https://zh.wikipedia.org/wiki/数据类型 "wikilink")。[C++11](../Page/C++11.md "wikilink")标准引入`decltype`，主要是为[泛型](../Page/泛型.md "wikilink")编程而设计，以解决泛型编程中有些类型由[模板参数决定而难以](../Page/模板_\(C++\).md "wikilink")（甚至不可能）表示的问题。

从语义上说，`decltype`的设计适合于通用库编写者或编程新手。总体上说，对于变量或函数参数作为表达式，由`decltype`推导出的类型与源码中的定义可精确匹配。而正如操作符一样，`decltype`不对操作数求值。

## 简要理解

虽然C++规范或大多数的文档及书籍都将decltype定义为一个操作符，但是针对初学者而言，应将此操作符理解为一种特殊的类型声明，而不是像一些强类型语言那样将此操作符理解为一个带返回值的函数。为说明此问题，举例如下：

对于其它语言的开发者，可能写出如下的代码：

``` cpp
#include <iostream>

using std::cout;

int main()
{
    int n = 12;
    cout << decltype(n);//实际上decltype完全不同于js或C#的typeof
    getchar();
    return 0;
}
```

相反，可以将decltype视为一种特殊的类型声明方式，C++语言里面类似的功能为[自动变量](../Page/Auto_\(C++\).md "wikilink")。

举例：设开发人员无法确定一个表达式exp()的值类型，然而需要声明一个与之类型匹配的变量，则可以如下声明：

decltype(exp()) x;

## 设计构想

随着C++引入[模板](../Page/模板_\(C++\).md "wikilink")，以及由[标准模板库](../Page/标准模板库.md "wikilink")引领的泛型编程逐渐兴起，实现一个能获取表达式类型的机制的需求便由此出现，而这一机制常称为`typeof`。在泛型编程中，若类型由函数参数决定，则获知之常非易事\[1\]\[2\]，在需要获取函数模板实例化的返回类型时尤然\[3\]。

为此，许多编译器厂商都基于程序语言现有的功能，自行实现了这类操作符，其实现如，以及一些功能有限，但更易移植的实现，以满足这一需求\[4\]。早在C++还未完全标准化的1997年，布莱恩·帕克（Brian Parker）就基于`sizeof`操作符，提出了一种可移植的解决方案\[5\]。对此，比尔·吉本斯（Bill Gibbons）则提出，这一方案仍有诸多限制，而且通常来说，直接引入`typeof`机制效果都更好\[6\]。2000年10月，[安德烈·亚历山德雷斯库在IT技术杂志](https://zh.wikipedia.org/wiki/Andrei_Alexandrescu "wikilink")《》上评论道：“（若）有typeof（操作符），撰写和理解模板代码就会便易许多。\[7\]”他也提到“typeof和sizeof（操作符）有相同的后端，（这是）因为sizeof无论如何必须去计算类型。\[8\]”与芭芭拉·E·摩（Barbara E. Moo）也谈到内建于程序语言中的`typeof`功能非常有用，但也提醒道“使用时常会引入一些难以发觉的程序错误，且尚有无法解决的问题（即并非万用）。\[9\]”并提出可以利用类型转换（如使用[标准模板库](../Page/标准模板库.md "wikilink")所提供的[typedef](https://zh.wikipedia.org/wiki/typedef "wikilink")），更有效、更通用地实现这一功能\[10\]。但是，史蒂夫·丹斯特（Steve Dewhurst）则称如此转换“在设计与发布上花费巨大”，而且“采用直接提取表达式类型的方法更简单。\[11\]”（大意）2011年间，在一片关于[C++0x的文章中](https://zh.wikipedia.org/wiki/C++0x "wikilink")，克尼格和摩预言道：“decltype将会广泛用于为每日的程序编写提供便利。\[12\]”

2002年间， [比雅尼·斯特劳斯特鲁普](../Page/比雅尼·斯特劳斯特鲁普.md "wikilink")提议扩充C++程序语言，为之引入查询表达式类型，以及不必指明类型便可初始化对象的机制\[13\]。斯特劳斯特鲁普注意到，在[GCC](../Page/GCC.md "wikilink")与编译器中，`typeof`所提供的“引用丢弃”（reference-dropping）语义可能存在问题\[14\]；另一方面，若使用基于表达式[左值性](https://zh.wikipedia.org/wiki/值_\(计算机科学\) "wikilink")、返回一个引用类型的操作符实现之，又难以理解。于是，在呈交给C++标准委员会的初始提案中，便将两种实现方法杂糅起来：只有当表达式的声明类型包含一个引用时，操作符才会返回一个引用类型。为强调推导出的类型能确实反映表达式的声明类型，提案中提议将此操作符命名为`decltype`\[15\]。提案还提及了`decltype`的一项主要设计初衷，也即让编写完美的[转发函数成为可能](https://zh.wikipedia.org/wiki/包装函数 "wikilink")\[16\]。在编程时，程序员有时需要编写一个泛型转发函数，使之不论以何种类型实例化，都能返回同于包装函数的类型，而若无`decltype`操作符，就几乎不可能做到这一点\[17\]。decltype的样例代码如下所示，其中利用了[C++11](../Page/C++11.md "wikilink")标准中的“[返回类型后置](https://zh.wikipedia.org/wiki/C++11#另一種的函式語法 "wikilink")”（trailing-return-type）语法\[18\]。

``` cpp
int& foo(int& i);
float foo(float& f);

template <class T> auto transparent_forwarder(T& t) −> decltype(foo(t)) {
  return foo(t);
}
```

`decltype`便是本段代码的核心部分，用于保存“包装函数是否返回一个引用类型”这一信息 \[19\]。

## 语义

类似于`sizeof`操作符，`decltype`不对其操作数求值\[20\]。粗略来说，`decltype(e)`返回类型前，进行了如下推导\[21\]：

  - 若表达式`e`为一个无括号的变量、函数参数、类成员访问，那么返回类型即为该变量或参数或类成员在源程序中的“声明类型”；
  - 否则的话，根据表达式的值分类（value categories），设T为e的类型：
      - 若`e`是一个[左值](https://zh.wikipedia.org/wiki/值_\(计算机科学\) "wikilink")（lvalue，即“可寻址值”），则`decltype(e)`将返回`T&`；
      - 若`e`是一个[临终值](https://zh.wikipedia.org/wiki/值_\(计算机科学\) "wikilink")（xvalue），则返回值为[`T&&`](../Page/右值引用.md "wikilink")；
      - 若`e`是一个[纯右值](https://zh.wikipedia.org/wiki/值_\(计算机科学\) "wikilink")（prvalue），则返回值为`T`。

这些语义是为满足通用库编写者的需求而设计，但由于`decltype`的返回类型总与对象（或函数）的定义类型相匹配，这对编程新手来说也更为直观\[22\]。更正式地说，规则1适用于不带括号的标识符表达式（id-expression）与类成员访问表达式\[23\]\[24\]。示例如下\[25\]：

``` cpp
const int&& foo();
const int bar();
int i;
struct A { double x; };
const A* a = new A();
decltype(foo()) x1; // 类型为const int&&
decltype(bar()) x2; // 类型为int
decltype(i) x3; // 类型为int
decltype(a->x) x4; // 类型为double
decltype((a->x)) x5; // 类型为const double&
```

由上可见，最后两个对`decltype`的调用，返回结果有所不同。这是因为，带括号的表达式`(a->x)`既非“标识符表达式”，亦非类访问表达式，因而未指向一个命名对象\[26\]，而是一个左值，于是推导类型便为“指向表达式类型的引用”，亦即`const double&`\[27\]。

在2008年12月，雅克·雅尔维（Jaakko Järvi）向标准委员会指出一个问题：在C++中，“带限定标识符”（qualified-id）无法由`decltype`作成\[28\]，而这正与“`decltype(e)`可作‘类型定义名’（typedef-name）看待”的设计初衷不一致\[29\]。在评论标准委员会为[C++0x](https://zh.wikipedia.org/wiki/C++0x "wikilink")（[C++11](../Page/C++11.md "wikilink")前名）制定的正式草案时，日本[ISO会员成员提到](https://zh.wikipedia.org/wiki/ISO "wikilink")，“一个定义域操作符（::）不适用于decltype，但本应适用才对。（若能解决这一问题，则）这在需要从实例中获取成员类型（嵌套类型）很有用，如下所示\[30\]”：

``` cpp
vector<int> v;
decltype(v)::value_type i = 0; // int i = 0;
```

这一问题，以及其他相似问题（关于`decltype`无法在[衍生类声明和](https://zh.wikipedia.org/wiki/子类 "wikilink")[析构函数调用中使用](https://zh.wikipedia.org/wiki/析构函数 "wikilink")），都交由大卫·范德沃德（David Vandevoorde）处理，并在2010年3月投票纳入工作日程表\[31\]\[32\]。解决办法是：如果表达式是纯用户定义类型（plain user defined type），即不是引用、指针、函数等，则`decltype`表达式返回类名。这意味着可以访问嵌套类型。甚至可以用`decltype(expr)`作为派生时的基类型。

## 可用性

`decltype`包含于当前的C++标准[C++11](../Page/C++11.md "wikilink")中\[33\]，并由许多编译器以扩展的形式提供：[微软](../Page/微软.md "wikilink")在[Visual C++ 2010编译器中提供了](https://zh.wikipedia.org/wiki/Visual_C++ "wikilink")`decltype`操作符，基本实现了标准委员会提案中所描述的语义，并且在[托管代码或原生代码中都可使用](https://zh.wikipedia.org/wiki/C++/CLI "wikilink")\[34\]。据其文档称，这一实现“主要对编写模板库的开发者有用。\[35\]”从2008年3月5日发布的4.3版开始\[36\]，[GCC](../Page/GCC.md "wikilink") C++编译器也加入了`decltype`操作符\[37\]。这一操作符也已纳入了的[C++ Builder 2009](https://zh.wikipedia.org/wiki/C++_Builder "wikilink")\[38\]、[Intel C++编译器](https://zh.wikipedia.org/wiki/Intel_C++编译器 "wikilink")\[39\]与[Clang](../Page/Clang.md "wikilink")\[40\]。

## 注释

## 参考资料

## 外部链接

  - [比雅尼·斯特劳斯特鲁普的“C++11 FAQ”中关于decltype的部分](http://www.stroustrup.com/C++11FAQ.html#decltype)

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