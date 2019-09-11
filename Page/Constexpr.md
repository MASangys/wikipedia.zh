**constexpr**是[C++11](../Page/C++11.md "wikilink")引入的[关键字](https://zh.wikipedia.org/wiki/关键字 "wikilink")，用于[编译时的常量与常量函数](https://zh.wikipedia.org/wiki/编译时 "wikilink")。

声明为constexpr函数的意义是：如果其参数均为合适的编译期常量，则对这个constexpr函数的调用就可用于期望常量表达式的场合（如模板的非类型参数，或枚举常量的值）。如果参数的值在运行期才能确定，或者虽然参数的值是编译期常量，但不匹配这个函数的要求，则对这个函数调用的求值只能在运行期进行。

## 简介

C++编译时可确定常量表达式的结果，因此可在编译时优化。C++规范在一些地方要求使用常量表达式，如声明数组的维数。但常量表达式不允许包含函数调用或者对象构造。因此下述代码无效：

``` cpp
int get_five() {return 5;}

int some_value[get_five() + 7]; // 创建包含12个整数的数组. C++03中非法，因为get_five() + 7不是常量表达式
```

C++11引入了关键字`constexpr`，允许编程者保证函数或对象的构造函数是编译时常量。\[1\]上述代码可以改写为：

``` cpp
constexpr int get_five() {return 5;}

int some_value[get_five() + 7]; // Create an array of 12 integers. Valid C++11
```

`constexpr`函数必须满足下述限制：

  - 函数返回值不能是void类型
  - 函数体不能声明变量或定义新的类型
  - 函数体只能包含声明、null语句或者一条return语句
  - 在形参实参结合后，return语句中的表达式为常量表达式

C++11去掉了const variable必须是整型或者枚举型的限制，只要是用于关键字`constexpr`定义即可：

``` cpp
constexpr double earth_gravitational_acceleration = 9.8;
constexpr double moon_gravitational_acceleration = earth_gravitational_acceleration / 6.0;
```

这些variable必须用常量表达式初始化。

为构造用户定义类型的常量表达式，构造函数必须用`constexpr`声明，函数体仅包含声明或null语句，不能声明变量或定义类型。因此，构造函数的实参值应该是常量表达式，直接初始化类的数据成员。析构函数是平凡的。类型的拷贝构造函数应该也定义为`constexpr`，以允许constexpr函数返回一个该类型的对象。类型的成员函数都应该是`constexpr`。

constexpr函数或构造函数的实参值如果不是常量表达式，那么调用行为与结果就不是常量表达式。

C++14放松了这些限制。声明为constexpr的函数可以含有以下内容：\[2\]

  - 任何声明，除了：
      - `static`或`thread_local`变量。
      - 没有初始化的变量声明。
  - 条件分支语句`if`和`switch`。
  - 所有的循环语句，包括基于范围的`for`循环。
  - 表达式可以改变一个对象的值，只需该对象的生命期在声明为constexpr的函数内部开始。包括对有`constexpr`声明的任何非`const`非静态成员函数的调用。

`goto`仍然不允许在constexpr函数中出现。

constexpr支持编译期的递归。例如，可以写一个constexpr函数计算斐波那契数列。

此外，C++11指出，所有被声明为`constexpr`的非静态成员函数也隐含声明为`const`（即函数不能修改\*this的值）。C++14已经删除此点，非静态成员函数可以为非`const`。\[3\]

## 示例代码

``` cpp
#include <iostream>
using namespace std;
// C++98/03
template<int N> struct Factorial_Cpp03
{
    const static int value = N * Factorial<N - 1>::value;
};
template<> struct Factorial_Cpp03<0>
{
    const static int value = 1;
};
// C++11
constexpr int factorial_Cpp11(int n)
{
    return n == 0 ? 1 : n * factorial(n - 1);
}
// C++14
constexpr int factorial_Cpp14(int n)
{
    int result = 1;
    for (int i = 1; i <= n; ++i)
        result *= i;
    return result;
}

int main()
{
    static_assert(Factorial_Cpp03<3>::value == 6, "error");
    static_assert(factorial_Cpp11(3) == 6, "error");
    static_assert(factorial_Cpp14(3) == 6, "error");
    return 0;
}
```

## 参考文献

<references/>

[Category:C++](https://zh.wikipedia.org/wiki/Category:C++ "wikilink") [Category:计算机编程](https://zh.wikipedia.org/wiki/Category:计算机编程 "wikilink")

1.
2.
3.