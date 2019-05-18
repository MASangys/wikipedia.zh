**异常处理**（exception
handling）是[C++的一项语言机制](../Page/C++.md "wikilink")，用于在程序能处理异常事件。

异常事件在C++中表示为**异常对象**（exception
object）。异常事件发生时，由操作系统为程序设置当前异常对象，然后执行程序的当前异常处理代码块，在包含了异常出现点的最内层的`try`块，依次匹配同级的`catch`语句。如果匹配`catch`语句成功，则在该catch块内处理异常；然后执行当前`try...catch...`块之后的代码。如果在当前的`try...catch...`块没有能匹配该异常对象的`catch`语句，则由更外一层的`try...catch...`块处理该异常；如果当前函数内的所有`try...catch...`块都不能匹配该异常，则递归回退到[调用栈的上一层函数去处理该异常](https://zh.wikipedia.org/wiki/调用栈 "wikilink")。如果一直回退到主函数`main()`都不能处理该异常，则调用系统函数`terminate()`终止程序。

## throw

`throw`是一个C++关键字，与其后的操作数构成了`throw`语句，语法上类似于`return`语句。`throw`语句必须被包含在`try`块之中；可以是被包含在调用栈的外层函数的`try`中。

执行`throw`语句时，其操作数的结果作为对象被[复制构造为一个新的对象](https://zh.wikipedia.org/wiki/复制构造函数 "wikilink")，放在内存的特殊位置（既不是[堆也不是](https://zh.wikipedia.org/wiki/堆_\(数据结构\) "wikilink")[栈](https://zh.wikipedia.org/wiki/栈 "wikilink")，[Windows上是放在](https://zh.wikipedia.org/wiki/Windows "wikilink")“线程信息块TIB”中）。这个新的对象由本级的`try`所对应的`catch`语句逐个做类型匹配；如果匹配不成功，则与本函数的外层`catch`语句依次做类型匹配；如果在本函数内不能与`catch`语句匹配成功，则递归回退到调用栈的上一层函数内从函数调用点开始继续与`catch`语句匹配。重复这一过程直到与某个`catch`语句匹配成功或者直到主函数main()都不能处理该异常。

因此，`throw`语句抛出的异常对象不同于一般的局部对象。一般的局部对象会在其作用域结束时被析构。而`throw`语句抛出的异常对象驻留在所有可能被激活的`catch`语句都能访问到的内存空间中。

`throw`语句抛出的异常对象在匹配成功的`catch`语句的结束处被析构（即使该catch语句使用的是非“引用”的传值参数类型）。

由于`throw`语句都进行了一次副本拷贝，因此异常对象应该是可以[copy构造的](https://zh.wikipedia.org/wiki/复制构造函数 "wikilink")。但对于[Microsoft
Visual
C++编译器](../Page/Microsoft_Visual_C++.md "wikilink")，异常对象的[复制构造函数即使私有的情形](https://zh.wikipedia.org/wiki/复制构造函数 "wikilink")，异常对象仍然可以被`throw`语句正常抛出；但在catch语句的参数是传值时，在catch语句处编译报错：“
cannot be caught as the destructor and/or copy constructor are
inaccessible”。

抛出一个表达式时，被抛出对象的静态编译时类型将决定异常对象的类型。

## catch

`catch`语句匹配被抛出的异常对象时，如果`catch`语句的参数是引用型，则该参数直接引用到throw语句抛出的异常对象上；如果`catch`参数是传值的，则拷贝构造一个新的对象作为`catch`语句的参数的值。在该catch语句结束时，先析构`catch`的传值的参数对象，然后析构throw语句抛出的异常对象。

`catch`语句匹配异常对象时，不会做任何隐式类型转换（implicit type
conversion），包括类型提升（promotion）。
异常对象与catch语句进行匹配的规则很严格，一般除了以下几种情况外，异常对象的类型必须与catch语句的声明类型完全匹配：允许非const到const的转换；允许派生类到基类的转换；将数组和函数类型转换为对应的指针。

在catch块中可以使用不带表达式的throw语句将捕获的异常重新抛出：

``` cpp
throw ;
```

被重新抛出的异常对象就是当前catch语句捕获时所匹配的，原本由`throw`语句抛出的那个异常对象。重新抛出的异常对象与catch语句的形参无关。如原来抛出的是派生类Derived，catch语句形参是基类Based，则重新抛出后的异常类型是Derived。如果catch语句形参是引用型，重新抛出的原来的异常对象的内容可能已在catch语句内部被修改了。

可以用catch(...){ }来捕获所有的异常。通常在catch(...){ }中，先执行可做的处理，然后重新抛出异常。

catch语句内部产生的新异常，或者“重新抛出异常”，均不能被同级的`try...catch...`中其他的catch语句捕获、处理。只能由更外层的catch语句去捕获该异常。

## 栈展开

**栈展开**（unwinding）是指当前的`try...catch...`块匹配成功或者匹配不成功异常对象后，从`try`块内异常对象的抛出位置，到`try`块的开始处的所有已经执行了各自构造函数的局部变量，按照构造生成顺序的逆序，依次被析构。如果当前函数内对抛出的异常对象匹配不成功，则从最外层的`try`语句到当前函数体的起始位置处的局部变量也依次被逆序析构，实现栈展开，然后再回退到[调用栈的上一层函数内从函数调用点开始继续处理该异常](https://zh.wikipedia.org/wiki/调用栈 "wikilink")。

catch语句如果匹配异常对象成功，在完成了对catch语句的参数的初始化（对传值参数完成了参数对象的copy构造）之后，对同层级的try块执行栈展开。

由于线程执行时，被调用的函数的参数、返回地址、局部变量等都是依函数调用次序保存在[函数调用栈](https://zh.wikipedia.org/wiki/调用栈 "wikilink")（即线程运行时栈）上。当前被调用函数的参数、局部变量名字可以覆盖掉早前调用函数的同名变量，看起来就是只有当前函数内的名字可以访问，早前调用的函数内部的名字都不可访问，就像[磁带被](../Page/磁带.md "wikilink")“卷起”。异常处理时按照函数调用顺序的逆序析构，依次析构各个被调函数的局部变量，就类似把已经卷起的“磁带”再展开，抹去上面记录的数据，故此“栈展开”得名。unwinding在物理学、[电工学上也翻译做](https://zh.wikipedia.org/wiki/电工 "wikilink")“退绕”、“退卷”。

## C++标准程序库中定义的异常类

标准异常类定义在[C++标准程序库的四个头文件中](https://zh.wikipedia.org/wiki/C++标准程序库 "wikilink")：

  - <exception>中定义了exception类
  - <new>中定义了bad_alloc类
  - <type_info>中定义了bad_cast类
  - <stdexcept>中定义了runtime_error、logic_error类

所有的异常类都是exception类的子类。

runtime_error类（表示运行时才能检测到的异常）包含了overflow_error、underflow_error、range_error几个子类；

logic_error类（一般的逻辑异常）包含了domain_error、invalid_argument、out_of_range、length_error几个子类；

各种标准异常类都定义了一个接受字符串的构造函数，字符串初始化式用于为所发生的异常提供更多的信息。所有异常类都有一个what()虚函数，它返回一个指向[C风格字符串的指针](../Page/C风格字符串.md "wikilink")。

应用程序可以从各种标准异常类派生自己的异常类。

## 函数的异常规格

**异常规格**（exception
specification）列出函数可能会抛出的所有异常的类型。异常规格写在函数的形参表之后的关键字throw之后跟着一对圆括号括住的异常类型列表。如：

``` cpp
void foo(int) throw(bad_alloc, invalid_argument)
{
/*函数体*/
}
```

异常列表还可以为空：

``` cpp
void foo(int) throw();
```

表示该函数不抛出任何异常。

如果函数内抛出的异常的类型不在该函数的异常规格中，则[系统函数unexpected](https://zh.wikipedia.org/wiki/系统函数 "wikilink")()被调用。如果在unexpected()中抛出的异常出现在该函数的异常规格中，则在该函数被调用处恢复对异常的catch处理。如果在unexpected()中抛出的异常**不**在该函数的异常规格中，则调用系统函数terminate()以终止程序。

标准异常类中的构造函数、析构函数和what()虚函数都承诺不抛出异常。如what的完整声明为：virtual const char\*
what() const throw();

派生类中的虚函数不能抛出基类虚函数中没有声明的新异常。

使用函数的异常规格的好处：

  - 抛出一个对象而不是用函数返回值判断是否出错；
  - 函数调用序列中间的函数可以不考虑异常处理，由某一层函数调用扑捉异常；
  - unwinding自动发生。

Microsoft Visual
C++接受但暂不支持C++标准中的函数的异常规格。即使使用了编译器选项/D1ESrt，函数抛出不在其异常规格中的其他类型异常时，不会自动调用unexpected()，而是在该函数调用点处的`try...catch...`处理。在[Visual
C++的函数名字修饰](../Page/Visual_C++名字修饰.md "wikilink")（name
mangling）中，函数的形参的类型都编码入被修饰后的函数名字中；但是函数的异常说明中的类型都没有编码入被修饰后的函数名字中。\[1\]

## noexcept关键字

事实上，异常规格这一特性在程序中很少被使用，因此在[C++11中被弃用](../Page/C++11.md "wikilink")\[2\]。C++11定义了新的noexcept关键字。如果在函数声明后直接加上noexcept关键字，表示函数不会抛出异常。另外一种形式是noexcept关键字后跟常量表达式，其值转为布尔值，如果为真表示函数不会抛出异常，反之，则有可能抛出异常。

`returnType funcDeclaration (args) noexcept(常量表达式) ;`

如果保证不抛出异常的函数却实际上抛出异常，则会直接调用std::terminate中断程序的执行。

noexcept关键字还可以用作运算符，其后的操作数表达式如果有可能抛出异常，则运算符返回为false；如果操作数表达式保证不抛出异常，则运算符返回为true。这一运算符用于在定义模板函数时可以根据模板参数类型来确定是否传出异常。

对类析构函数，使用noexcept关键字也可以显式指明不剖出异常。类析构函数默认不抛出异常。如果声明为（或默认）不抛出异常的类析构函数在运行时抛出了异常，将导致调用std::terminate中断程序的执行。

## 构造函数、析构函数与异常

构造函数没有返回值，所以应该用异常来报告发生的问题。构造函数抛出异常就意味着该构造函数没有执行完，所以其对应的析构函数不会被自动调用，因此构造函数应该先析构所有已初始化的基对象、成员对象，再抛出异常。

析构函数被期望不向函数外抛出异常。析构函数中向函数外抛出异常，将直接调用terminator()系统函数终止程序。如果一个析构函数内部抛出了异常，就应该在该析构函数内部捕获、处理了该异常，不能让异常被抛出析构函数之外。

### 构造函数初始化列表的异常机制

C++类构造函数初始化列表的异常机制，称为function-try block。一般形式为：

``` cpp
myClass::myClass(type1 pa1)
    try:  _myClass_val (初始化值)
{
  /*构造函数的函数体 */
}
  catch ( exception& err )
{
  /* 构造函数的异常处理部分 */
};
```

## 资源获取即初始化

**资源获取即初始化**（Resource acquisition is
initialization，RAII）是指：为了更为方便、鲁棒地释放已获取的资源，避免资源死锁，一个办法是把资源数据用对象封装起来。程序发生异常，执行**栈展开**时，封装了资源的对象会被自动调用其析构函数以释放资源。

## 例子

``` cpp
#include <iostream>
#include <exception>
using namespace std;

class AA{

private:

public:
    int s;
    AA(class AA& rhs)
            {  cout<<"copy ctor;"<<endl; }
        AA(int ihs)
                try:  s ( ihs )
               { cout<<"defautl ctor;"<<endl; }
                catch(...)
                    { }
        ~AA()
               { cout<<"dtor:"<<s<<endl; }
    void foo()  throw ( exception )
    {
           throw 3.14; //浮点型异常对象不在该函数的异常规格中
        }
};

int main()
{
       AA a(101);

        try
    {
                AA temp(102);
                temp.foo(); //对于Visual C++，即使用编译器选项/D1ESrt
                                   //仍然会无视AA::foo函数的异常规格
        throw a;
    }
    catch (AA& e) //引用型参数，可改为传值型参数
    {
        e.s=102;  //修改throw抛出的异常对象
        cout<<"catch AA exception!"<<endl;
    }
    catch(...)
    {
        cout<<"catch all others exception!"<<endl;
    }
}
```

## C++异常与Windows操作系统异常处理机制

在Windows操作系统上，编译器实现的C++异常一般是基于操作系统的异常处理机制。

## 参见

[异常处理](../Page/异常处理.md "wikilink")

## 参考文献

  - 《ISO/IEC 14882:2011 C++ Standard》 第15章 “Exception handling”

<references/>

[Category:C++](https://zh.wikipedia.org/wiki/Category:C++ "wikilink")
[Category:控制流程](https://zh.wikipedia.org/wiki/Category:控制流程 "wikilink")

1.  参见VC++ Compiler Warning C4290
2.  C++11标准附录B