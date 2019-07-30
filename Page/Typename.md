"**`typename`**"是一个[C++](../Page/C++.md "wikilink")[程序设计语言中的](https://zh.wikipedia.org/wiki/程序 "wikilink")[关键字](https://zh.wikipedia.org/wiki/关键字 "wikilink")。当用于[泛型编程时是另一](https://zh.wikipedia.org/wiki/泛型编程 "wikilink")[术语](https://zh.wikipedia.org/wiki/术语 "wikilink")"`class`"的[同义词](../Page/同义词.md "wikilink")。\[1\]这个关键字用于指出[模板](https://zh.wikipedia.org/wiki/模板 "wikilink")[声明](https://zh.wikipedia.org/wiki/声明 "wikilink")（或[定义](../Page/定义.md "wikilink")）中的[非独立名称](https://zh.wikipedia.org/wiki/非独立名称 "wikilink")（dependent names）是[类型](../Page/类型.md "wikilink")名，而非变量名。以下是对于[泛型编程中](https://zh.wikipedia.org/wiki/泛型编程 "wikilink")`typename`两种迥然不同的用法的解释。

## `class`关键字的同义词

这是一项[C++](../Page/C++.md "wikilink")[编程语言](../Page/编程语言.md "wikilink")的泛型编程（或曰“模板编程”）的功能，`typename`关键字用于引入一个模板[参数](https://zh.wikipedia.org/wiki/参数 "wikilink")，例如：

``` cpp
// 定义一个返回参数中较大者的通用函数
template <typename T>
const T& max(const T& x, const T& y)
{
  if (y < x) {
    return x;
  }
  return y;
}
```

这种情况下，`typename`可用另一个[等效的关键字](https://zh.wikipedia.org/wiki/等效 "wikilink")`class`代替，如下[代码](../Page/代码.md "wikilink")片段所示：

``` cpp
// 定义一个返回参数中较大者的通用函数
template <class T>
const T& max(const T& x, const T& y)
{
  if (y < x) {
    return x;
  }
  return y;
}
```

以上两段代码没有功能上的区别。

## 类型名指示符

考虑下面的错误代码：

``` cpp
template <typename T>
void foo(const T& t)
{
   // 声明一个指向某个类型为T::bar的对象的指针
   T::bar * p;
}

struct StructWithBarAsType {
   typedef int bar;
};

int main() {
   StructWithBarAsType x;
   foo(x);
}
```

这段代码看起来能通过[编译](https://zh.wikipedia.org/wiki/编译 "wikilink")，但是事实上这段代码并不正确。因为[编译器并不知道](https://zh.wikipedia.org/wiki/编译器 "wikilink")`T::bar`究竟是一个类型的名字还是一个某个[变量的名字](https://zh.wikipedia.org/wiki/变量 "wikilink")。究其根本，造成这种[歧义的原因在于](https://zh.wikipedia.org/wiki/歧义 "wikilink")，编译器不明白`T::bar`到底是不是“模板参数的非独立名字”，简称“非独立名字”。\[2\]注意，任何含有名为“`bar`”的项的类T，都可以被当作模板参数传入`foo()`函数，包括`typedef`类型、[枚举](../Page/枚举.md "wikilink")类型或者变量等。

为了消除歧义，C++[语言](https://zh.wikipedia.org/wiki/语言 "wikilink")[标准](../Page/标准.md "wikilink")规定：

> A name used in a template declaration or definition and that is dependent on a template-parameter is assumed not to name a type unless the applicable name lookup finds a type name or the name is qualified by the keyword typename.

意即出现上述歧义时，编译器将自动默认bar为一个变量名，而不是类型名。所以上面例子中的代码 `T::bar * p` 会被解释为[乘法](../Page/乘法.md "wikilink")，而不是声明p为指向T::bar类型的对象的[指针](https://zh.wikipedia.org/wiki/指针 "wikilink")。

如果还有另一个名为`StructWithBarAsValue`类型，如下：

``` cpp
struct StructWithBarAsValue {
    int bar;
};
```

那么，编译器将以完全不同的方式来解释

``` cpp
T::bar * p
```

的含义。

解决问题的最终办法，就是[显式地告诉编译器](https://zh.wikipedia.org/wiki/显式地 "wikilink")，`T::bar`是一个类型名。这就必须用`typename`关键字，例如：

``` cpp
template <typename T>
void foo(const T& t)
{
   // 声明一个指向某个类型为T::bar的对象的指针
   typename T::bar * p;
}
```

这样，编译器就确定了`T::bar`是一个类型名，p也就自然地被解释为指向`T::bar`类型的对象的指针了。

## 参考文献

<references />

[Category:C++](https://zh.wikipedia.org/wiki/Category:C++ "wikilink")

1.  C++ Primer 4th Edition, 模板和泛型编程，模板定义
2.  <http://pages.cs.wisc.edu/~driscoll/typename.html>