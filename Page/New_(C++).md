> 本文内容由[New \(C++\)](https://zh.wikipedia.org/wiki/New_\(C++\))转换而来。


**`new`**是[C++](../Page/C++.md "wikilink")程序设计语言中的一种语言结构，用于动态分配内存、并用[构造函数初始化分配的内存](https://zh.wikipedia.org/wiki/构造函数 "wikilink")。

new的使用称为“new运算符表达式”，其内部实现分为两步：

1.  调用相应的`operator new()`函数，动态分配内存。如果`operator new()`不能成功获得内存，则调用new_handler函数。如果没有设置new_handler函数或者new_handler未能分配足够内存，则抛出`std::bad_alloc`[异常](../Page/C++异常处理.md "wikilink")。“new运算符表达式”所调用的`operator new()`函数，按照C++的规则，首先做[依赖于实参的名字查找](../Page/依赖于实参的名字查找.md "wikilink")（即ADL规则），在要申请内存的数据类型T的内部、数据类型T定义处的命名空间查找；如果没有查找到，则直接调用全局的::operator new()函数。
2.  在分配到的动态内存块上初始化相应类型的对象并返回其首地址。如果调用[构造函数初始化对象时抛出异常](https://zh.wikipedia.org/wiki/构造函数 "wikilink")，则自动调用operator delete()函数释放已经分配到的内存。

每个**`new`**获取的对象，必须用[delete析构并释放内存](https://zh.wikipedia.org/wiki/delete_\(C++\) "wikilink")，以免[内存泄漏](../Page/内存泄漏.md "wikilink")。

new运算符表达式是C++的一种语言结构，不可重载。但用户可重载`operator new()`函数。

## new运算符表达式语法

### 普通的new运算符表达式

`new`的语法是:

  -

    ``` cpp
    p_var = new typename;
    ```

其中`p_var`是已经定义的类型为`typename`的指针变量。

通过`new`初始化对象，使用下述语法：

  -

    ``` cpp
    p_var = new type(initializer); // 或者如此初始化 new type{initializer};
    ```

其中`initializer`是传递给构造函数的实参表或初值。

### 动态生成对象数组的new运算符表达式

`new`也可创建一个对象[数组](../Page/数组.md "wikilink")，称之为“array forms new”：

  -

    ``` cpp
    p_var = new type [size];
    ```

C++98标准规定，`new`创建的对象数组不能被显式初始化， 数组所有元素被缺省初始化。如果数组基类型没有缺省初始化，则编译报错。但[C++11](../Page/C++11.md "wikilink")已经允许显式初始化，例如：

  -

    ``` cpp
    int *p_int = new int[3] {1,2,3};
    ```

如此生成的对象数组，在释放时必须调用`delete [ ]`表达式。例如

``` cpp
 delete [] p_int ;
```

### 带位置的new运算符表达式

**带位置的new** （placement new）的语法是：

  -

    ``` cpp
    new ( expression-list ) new-type-id ( optional-initializer-expression-list );
    ```

其中，expression-list将作为`operator new()`函数的实参列表的结尾部分。这种形式的new运算符表达式首先调用`operator new(size_t,OtherTypeList)`函数来获取内存；然后对该对象执行构造函数。这里的OtherTypeList作为形参列表要和new表达式中第一个括号里的实参列表expression-list的类型兼容（即形参实参能够匹配）。

带位置的new运算符，语义上包括四种使用情形，其中前两种已经在标准头文件<new>中实现了：

1.  直接给出要构建的对象的内存位置；
2.  不抛出异常，如果内存分配失败返回空指针；
3.  定制的、带其他参数的内存分配器；
4.  用于调试目的，在构造函数调用失败时给出源文件名与行号。

狭义上的**带位置的new**是指第一种情形。使用这种placement new，原因之一是用户的程序不能在一块内存上自行调用其构造函数（即用户的程序不能显式调用构造函数），必须由编译系统生成的代码调用构造函数。原因之二是可能需要把对象放在特定硬件的内存地址上，或者放在多处理器内核的共享的内存地址上。

释放这种对象时，不能调用placement delete，应直接调用析构函数，如：`pObj->~ClassType();`然后再自行释放内存。

举例：

``` cpp
#include <iostream>
using namespace std;

int main(int argc, char* argv[])
{
    char buf[100];
    int *p=new (buf) int(101);
    cout<<*(int*)buf<<endl;
    return 0;
}
```

### 保证不抛出异常的new运算符表达式

在分配内存失败时，new运算符的标准行为是抛出`std::bad_alloc`异常。也可以让new运算符在分配内存失败时不抛出异常而是返回空指针。

  -

    ``` cpp
    new (nothrow) Type ( optional-initializer-expression-list );
    ```

或

  -

    ``` cpp
    new (nothrow) Type[size];
    ```

其中`nothrow`是`std::nothrow_t`的一个实例

### 自行定制参数的new运算符表达式

new运算符的参数可以是任意合法类型的列表。由C++的重载机制来决定调用那个operator new。

  -

    ``` cpp
    new (Type_list) Type ( optional-initializer-expression-list );
    ```

或

  -

    ``` cpp
    new (Type_list) Type[size];
    ```

### 带位置的delete运算符表达式

C++ 不能使用带位置的 delete 运算符表达式直接析构一个对象但不释放其内存。因此，对于用广义的带位置new表达式构建的对象，析构释放时有两种办法：

第一种办法是直接写一个函数，完成析构对象、释放内存的操作：

``` cpp
    void
    destroy (T * p, A & arena)
    {
        p->~T() ;   // First invoke the destructor explicitly.
        arena.deallocate(p) ;  // Then call the deallocator function directly.
    }
```

如此使用：

``` cpp
A arena ;
T * p = new (arena) T ;
/* ... */
destroy(p, arena) ;
```

第二种办法是分两步显式调用析构函数与带位置的operator delete函数：

``` cpp
A arena ;
T * p = new (arena) T ;
/* ... */
p->~T() ;    // First invoke the destructor explicitly.
operator delete(p, arena) ;   // Then call the deallocator function indirectly via operator delete(void *, A &) .
```

带位置的operator delete()函数，可以被带位置的new算符表达式自动调用。这是在对象的构造函数抛出异常的时候，用来释放掉带位置的operator new函数获取的内存。以避免内存泄露。

例如：

:

``` cpp

#include <cstdlib>
#include <iostream>
char buf[100];
struct A {} ;
struct E {} ;

class T {
public:
    T() { throw E() ; }
    void * operator new(std::size_t,const A &){
        std::cout << "Placement new called for class T." << std::endl;
        return buf;
    }
    void operator delete(void*, const A &)
    {
        std::cout << "Placement delete called for class T." << std::endl;
    }
} ;

void * operator new ( std::size_t, const A & )
    {std::cout << "Placement new called." << std::endl; return buf;}
void operator delete ( void *, const A & )
    {std::cout << "Placement delete called." << std::endl;}

int main ()
{
    A a ;
    try {
        T * p = new (a) T ;
        /* do something */
    } catch (E exp) {std::cout << "Exception caught." << std::endl;}
    return 0 ;
}
```

## operator new()的函数重载

使用`new`动态生成一个对象，实际上是调用了**`new`运算符**表达式。该运算符首先调用了`operator new`函数动态分配内存，然后调用类型的构造函数初始化这块内存。`new`运算符是不能被重载的，但是下述各种`operator new()`函数既可以作为全局函数重载，也可以作为类成员函数或作用域内的函数重载，即由编程者指定如何获取内存。

### 普通的operator new(size_t size)函数

`new`运算符调用`operator new`函数动态分配内存。首先查找类内是否有`operator new`函数可供使用（即[依赖于实参的名字查找](../Page/依赖于实参的名字查找.md "wikilink")）。\[1\]`operator new`函数的参数是一个size_t类型，指明了需要分配内存的规模。<ref>`operator new`函数的参数是一个size_t类型，却几乎从不被用户显式使用。其解释是：per-class allocator机制将适用整个类继承体系，而不是面向单个类。对子类使用new运算符时，可能会调用父类中定义的`operator new()`来获取内存。但是，在这里，内存分配的大小，不应该是`sizeof(父类)`，而是`sizeof(子类)`。无论是否声明，类里面重载的各种operator new函数和operator delete函数都是具有static属性，因此无法虚继承、无法访问类的非静态成员。

</ref>`operator new`函数可以被每个C++类作为成员函数重载。也可以作为全局函数重载：

``` cpp
void * operator new (std::size_t) throw(std::bad_alloc);
void operator delete(void*) throw();
```

内存需要回收的话,调用对应的`operator delete()`函数。

例如，在new运算符表达式的第二步，调用构造函数初始化内存时如果抛出异常，异常处理机制在栈展开（stack unwinding）时，要回收在new运算符表达式的第一步已经动态分配到的内存，这时就会自动调用对应`operator delete()`函数。

### 数组形式的operator new\[\](size_t size)函数

`new Type[]`运算符（array forms new），用来动态创建一个对象数组。这需要调用数组基类型内部定义的`void* operator new[ ](size_t)`函数来分配内存。如果数组基类型没有定义该函数，则调用全局的`void* operator new[ ](size_t)`函数来分配内存。

在[<new>中声明了void](https://zh.wikipedia.org/wiki/New_\(C++标准库\) "wikilink")\* operator new\[ \](size_t)全局函数：

``` cpp
void * operator new[] (std::size_t) throw(std::bad_alloc);
void operator delete[](void*) throw();
```

### void\* operator new(size_t,void\*)

`operator new(size_t,void*)`函数用于带位置的new运算符调用。C++标准库已经提供了`operator new(size_t,void*)`函数的实现，包含<new>头文件即可。这个实现只是简单的把参数的指定的地址返回，带位置的new运算符就会在该地址上调用构造函数来初始化对象：

``` cpp
// Default placement versions of operator new.
inline void* operator new(std::size_t, void* __p) throw() { return __p; }
inline void* operator new[](std::size_t, void* __p) throw() { return __p; }

// Default placement versions of operator delete.
inline void  operator delete  (void*, void*) throw() { }
inline void  operator delete[](void*, void*) throw() { }
```

**禁止重定义**这4个函数。因为都已经作为<new>的内联函数了。在使用时，实际上不需要` #include  `<new>

对应的placement delete函数，只应在placement new运算符表达式在第二步调用构造函数抛出异常时被异常处理机制的栈展开操作自动调用。

### 保证不抛出异常的operator new函数

C++标准库的<new>中还提供了一个nothrow的实现，用户可写自己的函数替代：

``` cpp
void* operator new(std::size_t, const std::nothrow_t&) throw();
void* operator new[](std::size_t, const std::nothrow_t&) throw();
void operator delete(void*, const std::nothrow_t&) throw();
void operator delete[](void*, const std::nothrow_t&) throw();
```

### 自行定制参数的operator new函数

这种函数被自行定制参数的new算符调用。需要由用户自行定义，以确定分配内存时的行为：

  -

    ``` cpp
    operator new(size_,Type1, Type2, ... );
    ```

例如：

``` cpp
char data[1000][sizeof(int)];
inline void* operator new(size_t ,int n)
{
        return data[n];
}
void foo(){
    int *p=new(6) int(102); //把整型对象创建在data的第六个单元上
}
```

## 参见

  - [RAII](../Page/RAII.md "wikilink")

  - [分配器 (C++)](../Page/分配器_\(C++\).md "wikilink")

  - [Delete (C++)](https://zh.wikipedia.org/wiki/Delete_\(C++\) "wikilink")

  - [C++异常处理](../Page/C++异常处理.md "wikilink")

  - [`malloc`](https://zh.wikipedia.org/wiki/malloc "wikilink")

  - [内存池](https://zh.wikipedia.org/wiki/内存池 "wikilink")

  -
  - [指针 (信息学)](https://zh.wikipedia.org/wiki/指针_\(信息学\) "wikilink")

  - [聪明指针](https://zh.wikipedia.org/wiki/聪明指针 "wikilink")

## 参考文献

  - [IBM Documentation describing C++'s operator new](http://publib.boulder.ibm.com/infocenter/macxhelp/v6v81/index.jsp?topic=/com.ibm.vacpp6m.doc/language/ref/clrc05cplr199.htm)
  - \[<http://msdn2.microsoft.com/en-us/library/kewsb8ba(VS.71>).aspx Microsoft Visual Studio operator new documentation\]

<references/>

[Category:C++](https://zh.wikipedia.org/wiki/Category:C++ "wikilink")

1.  在class内定义`operator new`函数，被称作per-class allocator语言支持。其原因为：
    第一、许多程序应用，需要在运行的过程中，大量地Create和Delete对象。这些对象，诸如：tree nodes,linked list nodes，messages等等。如果在传统的heap完成这些对象的创建，销毁，由于大量的内存申请，释放，势必会造成内存碎片。这种情况下，我们需要对内存分配进行细粒度的控制。
    第二、一些应用需要长时间跑在内存受限的装置上，这也需要我们对内存分配进行细粒度的控制，而不是无限制地分配，释放。