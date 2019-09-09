C++程序设计允许[程序员](../Page/程序员.md "wikilink")使用**类**（class）定义特定程序中的[数据类型](https://zh.wikipedia.org/wiki/数据类型 "wikilink")。这些数据类型的实例被称为[对象](https://zh.wikipedia.org/wiki/对象 "wikilink")，这些实例可以包含程序员定义的成员[变量](https://zh.wikipedia.org/wiki/变量 "wikilink")、[常量](https://zh.wikipedia.org/wiki/常量 "wikilink")、[成员函数](../Page/方法_\(電腦科學\).md "wikilink")，以及[重载的运算符](../Page/运算符重载.md "wikilink")。语法上，類似[C中结构体](https://zh.wikipedia.org/wiki/C程序设计语言 "wikilink")（struct）的扩展，C中结构体不能包含函数以及重载的运算符。

## C 结构体与C++ 类的对比

在 C++ 中，**结构体** 是由关键词 `struct` 定义的一种数据类型\[1\][ISO](https://zh.wikipedia.org/wiki/ISO "wikilink")/[IEC](https://zh.wikipedia.org/wiki/International_Electrotechnical_Commission "wikilink") (2003). *[ISO/IEC 14882:2003(E): Programming Languages - C++](https://zh.wikipedia.org/wiki/ISO/IEC_14882 "wikilink") §9 Classes \[class\]* para. 4</ref>。他的成员和基类默认为公有的（public）。由关键词 `class` 定义的成员和基类默认为私有的（private）。这是C++中结构体和类仅有的区别。

### 聚合类

聚合类是一种没有用户定义的构造函数，没有私有（private）和保护（protected）非静态数据成员，没有基类，没有虚函数\[2\][ISO](https://zh.wikipedia.org/wiki/ISO "wikilink")/[IEC](https://zh.wikipedia.org/wiki/International_Electrotechnical_Commission "wikilink") (2003). *[ISO/IEC 14882:2003(E): Programming Languages - C++](https://zh.wikipedia.org/wiki/ISO/IEC_14882 "wikilink") §8.5.1 Aggregates \[dcl.init.aggr\]* para. 1</ref>。这样的类可以由封闭的大括号用逗号分隔开初始化列表\[3\][ISO](https://zh.wikipedia.org/wiki/ISO "wikilink")/[IEC](https://zh.wikipedia.org/wiki/International_Electrotechnical_Commission "wikilink") (2003). *[ISO/IEC 14882:2003(E): Programming Languages - C++](https://zh.wikipedia.org/wiki/ISO/IEC_14882 "wikilink") §8.5.1 Aggregates \[dcl.init.aggr\]* para. 2</ref>。下列的代码在 C 和 C++ 具有相同的语法：

``` cpp
struct C
{
  int a;
  double b;
};

struct D
{
  int a;
  double b;
  C c;
};

// initialize an object of type C with an initializer-list
C c = { 1, 2 };

// D has a sub-aggregate of type C. In such cases initializer-clauses can be nested
D d = { 10, 20, { 1, 2 } };
```

### POD 结构

一个[POD结构](https://zh.wikipedia.org/wiki/普通旧式数据结构 "wikilink")（普通旧式数据结构）是一个不包含非POD结构、非POD联合（或者这些类型的数组）或引用的非静态成员变量（静态成员没有限制），并且没有用户定义的[赋值运算符和](https://zh.wikipedia.org/wiki/赋值运算符_\(C++\) "wikilink")[析构器的聚合类](https://zh.wikipedia.org/wiki/析构器 "wikilink")。\[4\] 一个POD结构可以说是C `struct`在C++中的等价物。在大多数情况下，一个POD结构拥有和一个在C中声明的对应的结构相同的内存布局。\[5\]因此，POD结构有时不正式地被称为“C风格结构”（C-style struct）。 \[6\]

#### C结构与C++ POD结构共有的属性

  - 数据成员被分配使得一个对象中之后的成员有着更高的地址，除非跨越了一个访问描述符\[7\][ISO](https://zh.wikipedia.org/wiki/ISO "wikilink")/[IEC](https://zh.wikipedia.org/wiki/International_Electrotechnical_Commission "wikilink") (2003). *[ISO/IEC 14882:2003(E): Programming Languages - C++](https://zh.wikipedia.org/wiki/ISO/IEC_14882 "wikilink") §9.2 Class members \[class.mem\]* para. 12</ref>。
  - 两个POD结构类型是布局兼容的如果它们有相同数量的非静态数据成员，而且对应的非静态数据成员（按照顺序）是布局兼容的\[8\][ISO](https://zh.wikipedia.org/wiki/ISO "wikilink")/[IEC](https://zh.wikipedia.org/wiki/International_Electrotechnical_Commission "wikilink") (2003). *[ISO/IEC 14882:2003(E): Programming Languages - C++](https://zh.wikipedia.org/wiki/ISO/IEC_14882 "wikilink") §9.2 Class members \[class.mem\]* para. 14</ref>。
  - 一个POD结构可以包含未命名的[填充](../Page/数据结构对齐.md "wikilink")\[9\][ISO](https://zh.wikipedia.org/wiki/ISO "wikilink")/[IEC](https://zh.wikipedia.org/wiki/International_Electrotechnical_Commission "wikilink") (2003). *[ISO/IEC 14882:2003(E): Programming Languages - C++](https://zh.wikipedia.org/wiki/ISO/IEC_14882 "wikilink") §9.2 Class members \[class.mem\]* para. 17</ref>。
  - 一个指向POD结构对象的指针适合使用[`reinterpret_cast`](https://zh.wikipedia.org/wiki/reinterpret_cast "wikilink")，指向其初始成员而且反之亦然，说明在POD结构的头部不存在填充\[10\]。
  - 一个POD结构可以被[`offsetof`](https://zh.wikipedia.org/wiki/offsetof "wikilink")宏使用\[11\][ISO](https://zh.wikipedia.org/wiki/ISO "wikilink")/[IEC](https://zh.wikipedia.org/wiki/International_Electrotechnical_Commission "wikilink") (2003). *[ISO/IEC 14882:2003(E): Programming Languages - C++](https://zh.wikipedia.org/wiki/ISO/IEC_14882 "wikilink") §18.1 Types \[lib.support.types\]* para. 5</ref>。

## 声明和使用

C++ 的结构体和类具有他们自己的成员。这些成员包括变量（包括其他结构体和类），被看做方法的函数（特定的标示符或重载的运算符），构造函数以及析构函数。成员被声明成为公共或私有使用说明符`public:`和`private:`来区分。说明符后出现的任何成员会获得相应的访问权限直到下一个说明符的出现。对于继承的类能够使用`protected:`说明符。

### 基本声明和成员变量

类和结构体的声明使用[关键词](https://zh.wikipedia.org/wiki/关键词 "wikilink")`class`和`struct`。成员在类和结构体的内部声明。

下面的代码段实例了结构体和类的声明：

<table>
<tbody>
<tr class="odd">
<td><div class="sourceCode" id="cb1"><pre class="sourceCode cpp"><code class="sourceCode cpp"><span id="cb1-1"><a href="#cb1-1"></a><span class="kw">struct</span> person</span>
<span id="cb1-2"><a href="#cb1-2"></a>{</span>
<span id="cb1-3"><a href="#cb1-3"></a>  string name;</span>
<span id="cb1-4"><a href="#cb1-4"></a>  <span class="dt">int</span> age;</span>
<span id="cb1-5"><a href="#cb1-5"></a></span>
<span id="cb1-6"><a href="#cb1-6"></a>};</span>
<span id="cb1-7"><a href="#cb1-7"></a></span>
<span id="cb1-8"><a href="#cb1-8"></a> </span></code></pre></div></td>
<td><div class="sourceCode" id="cb2"><pre class="sourceCode cpp"><code class="sourceCode cpp"><span id="cb2-1"><a href="#cb2-1"></a><span class="kw">class</span> person</span>
<span id="cb2-2"><a href="#cb2-2"></a>{</span>
<span id="cb2-3"><a href="#cb2-3"></a><span class="kw">public</span>:</span>
<span id="cb2-4"><a href="#cb2-4"></a>  string name;</span>
<span id="cb2-5"><a href="#cb2-5"></a>  <span class="dt">int</span> age;</span>
<span id="cb2-6"><a href="#cb2-6"></a>};</span></code></pre></div></td>
</tr>
</tbody>
</table>

以上两个声明在功能上是等价的。每一段代码都定义了一个类型`person`，其含有两个成员变量：`name`和`age`。注意，大括号后面的分号是必需的。

在其中一个声明之后（不能同时使用两个），`person`可以被用来定义新的`person`类型的变量：

``` cpp
#include <iostream>
#include <string>
using namespace std;

class person
{
public:
  string name;
  int age;
};

int main ()
{
  person a, b;
  a.name = "Calvin";
  b.name = "Hobbes";
  a.age = 30;
  b.age = 20;
  cout << a.name << ": " << a.age << endl;
  cout << b.name << ": " << b.age << endl;
  return 0;
}
```

执行以上代码将会输出

`Calvin: 30`
`Hobbes: 20`

### 成员函数

**成员函数**是C++ 的类和结构体的一个重要特性。这些数据类型可以包含作为其成员的函数。成员函数分为静态成员函数与非静态成员函数。静态成员函数只能访问该数据类型的对象的静态成员。而非静态成员函数能够访问对象的所有成员。在非静态成员函数的函数体内，关键词`this`指向了调用该函数的对象。这通常是通过thiscall调用协议，将对象的地址作为隐含的第一个参数传递给成员函数。\[12\]再次以之前的`person`类型作为例子：

``` cpp
class person
{
  std::string name;
  int age;
public:
  person() : age(5) { }
  void print() const;
};

void person::print() const
{
  cout << name << ";" << this->age << endl;
  /* "name"和"age"是成员变量。
     "this"关键字的值是被调用对象的地址。其类型为
     const person*，原因是该函数被声明为const。
  */
}
```

在上面的例子中`print()`函数在类中声明，并在类的名称后加上`::`来限定它后加以定义。`name`和`age`是私有的（类的默认修饰符），`print()`被声明为公有，由于一个被用于类外的成员需要被申明为公有的。

通过使用成员函数`print()`，输出可以被简化为：

``` cpp
a.print();
b.print();
```

上述的`a`和`b`被称为调用者（sender），当`print()`函数被执行时每一个都引用自己的成员变量。 将类或结构的申明（称做接口）和定义（称作实现）放入分开的单元是常见的做法。用户需要的接口被放入一个头文件中而实现则独立地放入源代码或者编译后的形式。

非静态成员函数，可以用const或volatile关键词限定。const限定的成员函数不能修改其他数据成员（除了具有mutable的例外），也不能调用非const限定的其他成员函数。编译实现时，通常是在const限定的成员函数体内，this所指向的数据成员自动具有const限定，因此是只读的。const对象只能调用const成员函数；volatile对象只能调用volatile限定的成员函数。反之，没有受到限定的普通对象可以调用所有的成员函数，不论它是否为cv限定。构造函数、析构函数不能cv限定。

### 继承

非POD类的内存布局没有被C++标准规定。例如，许多流行的C++编译器通过将父类的字段和子类的字段并置来实现单[继承](https://zh.wikipedia.org/wiki/继承_\(计算机科学\) "wikilink")，但是这并不被标准所需求。这种布局的选择使得将父类的指针指向子类的操作是平凡的（trivial）。

例如，考虑：

``` cpp
class P
{
    int x;
};
```

``` cpp
class C : public P
{
    int y;
};
```

一个`P`的实例和`P* p`指向它，在内存中可能看起来像这样：

`+----+`
`|P::x|`
`+----+`
`↑`
`p`

一个`C`的实例和`P* p`指向它，在内存中可能看起来像这样：

`+----+----+`
`|P::x|C::y|`
`+----+----+`
`↑`
`p`

因此，任何操纵`P`对象的字段的代码都可以操纵在`C`对象中的`P`字段而不需要考虑任何关于`C`字段的定义。一个正确书写的C++程序在任何情况下都不应该对被继承字段的布局有任何假定。使用static_cast或者dynamic_cast[类型转换](../Page/类型转换.md "wikilink")运算符会确保指针正确的从一个类型转换为另一个。

多重继承并不那么简单。如果一个类`D`继承了`P1`和`P2`，那么两个父类的字段需要被按照某种顺序存储，但是（在大多数情况下）只有一个父类可以被放在子类的头部。每当编译器需要将一个指向`D`的指针转换为`P1`或`P2`中的任一个，编译器需要提供一个自动转换从子类的地址转换为父类字段的地址（典型地，这是一个简单的偏移量计算）。

关于多重继承的更多信息，参看[虚继承](../Page/虚继承.md "wikilink")。

### 重载运算符

C++容許程序員重載某些運算符，目的是補充庫中未能提供的針對特定類的運算符。同理，很多時自定類也因為內建庫不能提供指定運算符而需要重載。

另外，當程式設計師沒有重載或定義某些運算符時，編譯器會自動地建立它們，例如[三法則](../Page/三法則.md "wikilink")中的複製指定運算子（`=`）。

依照慣例，重載運算符時應模擬運算符本身意義的功能，例如重載運算符「\*」時，程序員義務重載為兩數之乘法（或其他，視數學或程式上的意義）。另外，宣告一結構如`integer`類，當重載運算符如「\*」就要回傳`integer`類：

``` cpp
struct integer
{
    int i;
    integer(int j = 0) : i(j) {}
    integer operator*(const integer &k) const
    {
        return integer (i * k.i);
    }
};
```

或

``` cpp
struct integer
{
    int i;

    integer(int j = 0) : i(j) {}

    integer operator*(const integer &k) const;
};

integer integer::operator*(const integer &k) const
{
    return integer(i * k.i);
}
```

在這裡，`const`關鍵字出現兩次。表達式`const integer &k`中的`const`關鍵字代表函數不能修改此常數值，而第二個`const`關鍵字代表此函數不會修改類物件本身（`*this`）。

而`integer &k`之中，符號（`&`）表示以參照形式呼叫。當呼叫函數時會直接傳遞變數地址，並以變數本身取代這裡的變數`k`。\[13\]

#### 二元可重载运算符

[二元運算符會用函數方式並以](https://zh.wikipedia.org/wiki/二元運算符 "wikilink")「`operator 運算符`」識別來進行重載，這裡的參數會是單一參數。實際使用時，二元運算符左方的變數會成為類物件本身（`*this`），而右方變數則成為傳入參數。

``` cpp
integer a = 1;
/* 這裡的等號是其中一種二元運算符，
   我們可利用重載運算符(=)的方式
   來提供初始化功能，而左方的變數i
   就是類物件本身，右方的數字1則是
   傳入參數。 */
integer b = 3;
/* 變數名字跟類物件內的變數無關 */
integer k = a * b;
cout << k.i << endl;  //輸出3
```

以下是二元可重載運算符列表：

|           |
| --------- |
| **算術運算子** |
| 運算子名稱     |
| 加法（總和）    |
| 以加法賦值     |
| 減法（差）     |
| 以減法賦值     |
| 乘法（乘積）    |
| 以乘法賦值     |
| 除法（分之）    |
| 以除法賦值     |
| 模數（餘數）    |
| 以模數賦值     |
| **比較運算子** |
| 運算子名稱     |
| 小於        |
| 小於或等於     |
| 大於        |
| 大於或等於     |
| 不等於       |
| 等於        |
| 邏輯 AND    |
| 邏輯 OR     |
| **位元運算子** |
| 運算子名稱     |
| 位元左移      |
| 以位元左移賦值   |
| 位元右移      |
| 以位元右移賦值   |
| 位元AND     |
| 以位元AND賦值  |
| 位元OR      |
| 以位元OR賦值   |
| 位元XOR     |
| 以位元XOR賦值  |
| **其它運算子** |
| 運算子名稱     |
| 基本賦值      |
| 逗號        |

運算符（`=`）可以被用作賦值，意思是原定功能是由右方變數抄寫內部資料到左方變數，但視乎需要也可以被用作其他用途。

每個運算符是互相獨立存在，並不依賴其他運算符。例如運算符（`<`）並不需要運算符（`>`）存在從而運作。

#### 一元可重载运算符

[一元運算符跟上述的運算符相似](https://zh.wikipedia.org/wiki/一元運算符 "wikilink")，只是一元運算符只會載入類物件本身（`*this`），而不接受其他參數。另外，一元運算符有分前置運算符和後置運算符，分別在於前置運算符會放到變數前方，後置運算符則是後方。例如負值運算符（`-`）和邏輯取反運算符（`!`）都是一元前置運算符。

以下是一元可重載運算符列表：

|           |
| --------- |
| **算術運算子** |
| 運算子名稱     |
| 一元正號      |
| 前綴遞增      |
| 後綴遞增      |
| 一元負號（取反）  |
| 前綴遞減      |
| 後綴遞減      |
| **比較運算子** |
| 運算子名稱     |
| 邏輯取反      |
| **位元運算子** |
| 運算子名稱     |
| 位元一的補數    |
| **其它運算子** |
| 運算子名稱     |
| 間接（向下參考）  |
| 的位址（參考）   |
| 轉換        |

重載一元運算符時有區分前置和後置式，一元前置運算符按以下格式編寫：

  -
    `回傳資料型態 operator 運算符 ()`

而後置運算符按以下格式編寫：

  -
    `回傳資料型態 operator 運算符 (參數)`

#### 括号重载

括號運算符有兩種，分別是方形括號運算符（`[]`）和圓形括號運算符（`()`）。方形括號運算符又名陣列運算符，只能傳入單一參數，而圓形括號運算符卻可以傳入任意數量的參數。

方形括號運算符按以下格式重載：

  -
    `回傳資料型態 operator[] (參數)`

圓形括號運算符按以下格式重載：

  -
    `回傳資料型態 operator() (參數1, 參數2, ...)`

注意，參數是指定在第二個括號之中，第一個括號只是運算符符號。

### 构造函数

有时软件工程师会想要他们的变量在声明时有一个默认值。这可以通过声明[构造函数做到](https://zh.wikipedia.org/wiki/构造函数 "wikilink")。

``` cpp
person(string N, int A)
{
    name = N;
    age = A;
}
```

成员变量可以像下面的例子一样，利用一个冒号，通过一个初始化序列初始化。这与上面不同，它进行了初始化（使用构造函数），而不是使用赋值运算符。这对类类型来说更有效，因为它只需要直接构造；而赋值时，它们必须先使用默认构造函数进行第一次初始化，然后再赋予一个不同的值。而且一些类型（例如引用和`const`类型）不能被赋值，因而必须通过初始化序列进行初始化。

``` cpp
person(std::string N, int A) : name(N), age(A) {}
```

注意花括号不能被省略，即使为里面为空。

默认值可以给予最后的几个参数类帮助初始化默认值。

``` cpp
person(std::string N = "", int A = 0) : name(N), age(A) {}
```

在上面的例子中，当没有参数给予构造函数时，等价于调用以下的无参构造函数（一个默认构造函数）：

``` cpp
person() : name(""), age(0) {}
```

构造函数的声明看起来像一个名字和数据类型相同的函数。事实上，我们的确可以用函数调用的形式调用构造函数。在这种情况下一个`person`类型的变量会成为返回值：

``` cpp
int main()
{
    person r = person("Wales", 40);
    r.print();
}
```

以上的例子创建了一个临时的person对象，然后使用复制构造函数将其赋予`r`。一个更好的创建对象的方式（没有不需要的拷贝）：

``` cpp
int main()
{
    person r ("Wales", 40);
    r.print ();
}
```

具体的程序行为，可以也可以不和变量有关系，可以被作为一部分加入构造函数。

``` cpp
person()
{
    std::cout << "Hello!" << endl;
}
```

通过以上的构造函数，当一个`person`变量没有被具体的值初始化时，“Hello\!”会被打印。

### 默认构造函数

当类没有定义构造函数时，默认构造函数将被调用。

``` cpp
class A { int b;};
//使用括号创建对象
A *a = new A(); //调用默认构造函数，b会被初始化为'0'
//不使用括号创建对象
A *a = new A; //仅分配内存，不调用默认构造函数，b会有一个未知值
```

然而如果用户定义了这个类的构造函数，两个声明都会调用用户定义的构造函数。而在用户定义的构造函数中的代码会被执行，并且不会赋予b默认值。

### 析构函数

一个析构函数是一个构造函数的逆，当一个类的一个实例被销毁时会被调用，例如当一个类在块（一组花括号“{}”)中被构造的一个对象会在关闭括号后删除，之后析构函数被自动调用。它会在清空保存变量的内存位置时被调用。析构函数可以在类被销毁时用来释放资源，例如堆分配的内存和打开的文件。

声明一个析构函数的符号类似于构造函数。它没有返回值而且方法的名称和在类的名称前加上波浪线（\~）相同。

``` cpp
~person()
{
    cout << "I'm deleting " << name << " with age " << age << endl;
}
```

另外要注意的是，析構函數是不容許參數傳遞。然而，與構造函數一樣，析構函數可以被顯式調用：

``` cpp
int main()
{
    person someone("Wales", 40);
    someone.~person();  //此時會輸出一次"I'm deleting Wales with age 40"

    return 0;  //第二次輸出"I'm deleting  with age 40"
}
/* 在這裡，程式結束時會自動調用析構函數，
   而person.name在第一次調用析構函數時已被清除，
   但person.age會按編譯器而定，
   沒能在第一次調用析構函數時清零。 */
```

## 构造函数与析构函数的相似点

  - 都和声明所在的类有相同的名字。
  - 如果没有被用户定义都默认可用，但此时只分配和释放对象内存当一个对象被声明或删除。

## 类模板

类模板，是对一批仅仅成员数据类型不同的类的抽象，程序员只要为这一批类所组成的整个类家族创建一个类模板，给出一套程序代码，就可以用来生成多种具体的类，这类可以看作是类模板的实例，从而大大提高编程的效率。

## 属性

C++语法试图使一个结构的所有方面看起来像一个[基本数据类型](../Page/原始型別.md "wikilink")。因此，运算符重载允许结构像整数和浮点数一样操作，结构的[数组](../Page/数组.md "wikilink")可以通过方括号声明（`some_structure variable_name[size]`），而且指向结构的指针可以通过和指向内置类型的指针通用的方法解引用。

### 内存消耗

结构的内存消耗至少是组成变量的内存大小的总和。参考如下`twonums` 结构例子。

``` cpp
struct twonums
{
    int a;
    int b;
};
```

这个结构包含两个整型。在当前许多 C++ 编译器中，整型[默认是](https://zh.wikipedia.org/wiki/default_\(computer_science\) "wikilink")[32 位整型](https://zh.wikipedia.org/wiki/Integer_\(computer_science\) "wikilink")， 所以每个成员变量消耗 4 个字节的内存．因而整个结构至少（或者正好）消耗 8 个字节的内存，见下图。

`+----+----+`
`| a  | b  |`
`+----+----+`

然而，编译器可能在变量或者结构的结尾添加空的位， 这样可以保证和给定的计算机结构匹配，通常是把变量添加到 32 位。如下例子所示的结构:

``` cpp
struct bytes_and_such
{
   char c;
   char C;
   short int s;
   int i;
   double d;
};
```

可看成

`+-+-+--+--+--+--+--------+`
`|c|C|XX|s |  i  |   d    |`
`+-+-+--+--+--+--+--------+`

在内存中, `XX` 表示两个未被使用的空位元。

因为结构可能会使用指针和数组去[声明](https://zh.wikipedia.org/wiki/Declaration_\(computer_science\) "wikilink") 或者初始化变量，结构的内存消耗不一定是[固定的](https://zh.wikipedia.org/wiki/constant_\(computer_science\) "wikilink")。另外一个内存消耗不固定的例子是模板结构。

#### 位字段

位字段（Bit field）可以被用来定义比内置类型还要小的类成员变量。通过这个字段定义的变量，只可以像使用内置的整数类型(例如int, char, short, long...)那样子使用。

``` cpp
struct A
{
    unsigned a:2; // 可以存储0-3的数字，占据一个int前2 bit的空间.
    unsigned b:3; // 可以存储0-7的数字，占据之后3 bit的空间.
    unsigned :0;  // 移动到下一个内置类型的末尾
    unsigned c:2;
    unsigned :4;  // 在c和d中间加4bit的空白
    unsigned d:1;
    unsigned e:3;
};

// 内存结构
/*  4 byte int   4 byte int
    [1][2][3][4] [5][6][7][8]
    [1]                   [2]              [3]              [4]
    [a][a][b][b][b][][][] [][][][][][][][] [][][][][][][][] [][][][][][][][]

    [5]                  [6]                [7]              [8]
    [c][c][][][][][d][e] [e][e][][][][][][] [][][][][][][][] [][][][][][][][]
*/
```

位字段不能在结构体中使用，它只能在使用struct或者class关键字定义的类中使用。

### 按引用传参

### *this*关键字

``` cpp
complex& operator+=(const complex & c)
{
    realPart += c.realPart;
    imagPart += c.imagPart;
    return *this;
}
```

## 参见

  - [对象组合](https://zh.wikipedia.org/wiki/对象组合 "wikilink")
  - [虚继承](../Page/虚继承.md "wikilink")
  - [类型转换](../Page/类型转换.md "wikilink")

## 參考

## 資料來源

  - [Cplusplus.com tutorial lesson 5.2](http://www.cplusplus.com/doc/tutorial/classes2.html), accessed in January 2006
  - Chan, S. "Tutorial on C++ and STL", Hong Kong, 2006
  - [Cplusplus.com tutorial lesson 2.5](http://www.cplusplus.com/doc/tutorial/basic_io.html), accessed in February 2006

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

13. 跟`integer *k`不同，使用符號（\*）只會傳遞變數地址，而且只能利用變數地址操作變數本身。