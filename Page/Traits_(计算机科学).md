**Traits**在[面向对象程序设计](../Page/面向对象程序设计.md "wikilink")中，是一个不可实例化（uninstantiable）的方法与类型的集合，为一个对象或算法提供了策略（policy）或实现自身接口的细节功能。

Traits作为模板类，既声明了统一的接口（包括类型、枚举、函数方法等），又可以通过模板特化，针对不同数据类型或其他模板参数，为类、函数或者通用算法在因为使用的数据类型不同而导致处理逻辑不同时，提供了区分不同类型的具体细节，从而把这部分用Traits实现的功能与其它共同的功能区分开来。例如，容器的元素的不同数据类型，或者iostream是使用char还是wchar_t。

## C++编程中的traits

C++标准模板库中大量使用了traits。将因为模板形参（包括类型形参、非类型形参）不同而导致的不同抽取到新的模板（即traits）中去；然后通过traits的模板特化来实现针对具体情况的优化实现。一个traits包括了enum、typedef、模板偏特化（template
partial
specialization）。其中，enum定义了各种类的标识的统一表示；typedef定义了各个类的各自不同的类型定义，这对于使用模板元编程（template
meta-programming）的灵活性非常重要；模板偏特化用于实现各个类的不同功能。

### 示例

假设有一个容器模板类，其包含元素的值类型可以是内生（built-in）的数据类型，也可以是自定义的类。因此，有的值类型支持move操作，有的值类型不支持move操作。该容器模板类具有统一的界面，但对不同的值类型实现了不同的语义功能。为此：

``` cpp
#include <iostream>

struct no_move{};//两个marker类型
struct has_move{};

struct myValueType{
  public: void move(){std::cout<<"move a myValueType obj."<<std::endl;}
};

template <typename T> struct traits{
  typedef no_move move_method; //对于traits模板类，默认为无move方法
  void move(T* p){}//默认为无move方法
};

template <> struct traits<myValueType>{
  typedef has_move move_method;//对于myValueType，traits模板偏特化，定义了有move方法
  void move(myValueType* p){p->move();} //模板特化，有move方法
};

template <typename T> struct Container{
  void move(T* p){traits<T>().move(p);};
};

int main()
{
  int i=101;
  int *p1=&i;
  myValueType v1;
  myValueType *pv=&v1;
  Container<int> c1;
  Container<myValueType> c2;
  c1.move(p1);
  c2.move(pv);
}
```

[Category:面向对象的程序设计](https://zh.wikipedia.org/wiki/Category:面向对象的程序设计 "wikilink")
[Category:C++](https://zh.wikipedia.org/wiki/Category:C++ "wikilink")