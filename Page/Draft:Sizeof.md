编程语言[C和](https://zh.wikipedia.org/wiki/C语言 "wikilink")[C ++中](../Page/C++.md "wikilink") ， [一元运算符](../Page/一元運算.md "wikilink")**sizeof**生成变量或[数据类型的大小](../Page/資料類型.md "wikilink")，以该类型所需的*字符（char）*大小的存储单元数量来衡量。 因此，*sizeof（char）*保证为1。char类型的实际位数由预处理器宏<span class="monospaced">CHAR_BIT</span>指定，在标准包含文件 limits.h中定义。在大多数现代系统中为8位。*sizeof*的结果有无符号整数类型，通常用size_t表示。

运算符具有单个操作数，该操作数可以是变量或数据类型。强制转换是括在括号中的数据类型。 数据类型不仅可以是[基本类型](../Page/原始型別.md "wikilink") （如[整型和](../Page/整数_\(计算机科学\).md "wikilink")[浮点数类型](../Page/IEEE_754.md "wikilink")），还可以是[指针类型和复合数据类型](../Page/指標_\(電腦科學\).md "wikilink")（ [联合体](https://zh.wikipedia.org/wiki/联合体 "wikilink")、[结构体和C](../Page/结构体_\(C语言\).md "wikilink")++[类](../Page/类_\(计算机科学\).md "wikilink")）。

## 需要

许多程序必须知道特定数据类型的存储大小。虽然对于C或C ++的任何给定实现 ，特定数据类型的大小是恒定的，但是对于不同的实现平台，C和C ++中的偶数基本类型的大小可以被不同地定义。例如，数组空间的运行时分配可以使用以下代码，其中sizeof运算符应用于*int*类型的强制转换：

``` c
int *pointer =  malloc(10 * sizeof (int));
```

在这个例子中，函数 *malloc* 分配内存区块。大小的区块分配的数量相等字节一个单一类型的对象 *int* 乘以10，提供十个整数的空间。

假设任何数据类型的大小通常是不安全的。例如，尽管[32位系统上的大多数C和C](../Page/32位元.md "wikilink")++实现都将*int*类型定义为四个八位字节，但是当代码[移植到不同的系统时](https://zh.wikipedia.org/wiki/移植_\(軟體\) "wikilink")，这个大小可能会改变，从而破坏了代码。例外情况是数据类型*char* ，它在任何符合标准的C实现中总是大小为*1* 。此外，由于填充，通常很难预测复合数据类型（如*结构*或*联合）*的大小。 *sizeof*的使用增强了可读性，因为它避免了未命名的数字常量（ [幻数](../Page/魔術數字_\(程式設計\).md "wikilink") ）。

分配相同数组空间的等效语法来自使用指向存储地址的指针的解除引用形式，这次将操作符应用于指针变量：

``` c
int *pointer =  malloc(10 * sizeof *pointer);
```

## 使用

*sizeof*运算符计算其操作数所需的内存存储空间。 操作数是在关键字*sizeof之后*写入的，并且可以是存储空间的符号，例如变量，类型名称或表达式 。 如果是类型名称，则必须将其括在括号中。 操作的结果是操作数的大小（以字节为单位）或内存表示的大小。 对于表达式，它将计算表达式评估所产生类型的表示大小，而不执行该表达式。

例如，由于*sizeof（char）*被定义为1 \[1\]并且假设整数类型是四个字节长，因此以下代码打印 ：

``` c
/* the following code fragment illustrates the use of sizeof
 * with variables and expressions (no parentheses needed),
 * and with type names (parentheses needed)
 */
char c;
printf("%zu,%zu\n", sizeof c, sizeof (int));
```

某些标准头文件（如*stddef.h* ）定义*size_t*以表示*sizeof*表达式结果的无符号整数类型。 *printf*宽度说明符*z*用于格式化该类型。

*sizeof*不能在[C预处理程序表达式中使用](../Page/C预处理器.md "wikilink")，例如，因为预处理器没有数据类型。

### 应用程序阵列

当*sizeof*应用于数组名称时，结果是存储整个数组所需的字节数。 这是规则的少数例外之一，即数组的名称被转换为指向数组的第一个元素的指针，并且可能只是因为实际的数组大小是固定的并且在编译时已知，当*sizeof*运算符时被评估。 以下程序使用*sizeof*来确定声明的数组的大小，避免在复制字符时出现[缓冲区溢出](../Page/缓冲区溢出.md "wikilink") ：

``` c numberLines
#include <stdio.h>
#include <string.h>

int main(int argc, char** argv)
{
  char buffer[10]; /* Array of 10 chars */

  /* Copy at most 9 characters from argv[1] into buffer. */
  strncpy(buffer, argv[1], sizeof buffer - 1);

  /* Ensure that the buffer is null-terminated: */
  buffer[sizeof buffer - 1] = '\0';

  return 0;
}
```

这里，  相当于，其计算结果为10，因为*char*类型的大小定义为1。

C99增加了对结构的灵活阵列成员的支持。 这种形式的数组声明仅允许作为结构中的最后一个元素，并且与普通数组的不同之处在于没有为编译器指定长度。 对于命名*小号*含有命名*为*一个柔性阵列构件的结构， 因此相当于 ：

``` c numberLines
#include <stdio.h>

struct flexarray {
    char val;
    int array[];  /* Flexible array member; must be last element of struct */
};

int main(int argc, char** argv)
{
    printf("sizeof (struct flexarray) == %zu\n", sizeof (struct flexarray));
    return 0;
}
```

在这种情况下 *sizeof* 操作者返回结构的大小，包括任何填充，但没有任何储存允许阵列。 大多数的平台产生以下产出：

  -

C99 还允许变长阵列，有的长指定的运行时，\[2\] 虽然特征被认为是一个可选的执行情况在以后的版本中的C的标准。 在这种情况下， *sizeof* 操作者评估中一部分运行时，确定存储被占领的阵列。

``` c
#include <stddef.h>

size_t flexsize(int n)
{
   char b[n+3];      /* Variable length array */
   return sizeof b;  /* Execution time sizeof */
}

int main(void)
{
  size_t size = flexsize(10); /* flexsize returns 13 */
  return 0;
}
```

*sizeof*可用于确定数组中元素的数量，方法是将整个数组的大小除以单个元素的大小：

``` c
int main(void)
{
   int tab[10];
   printf("Number of elements in the array: %zu\n", sizeof tab / sizeof tab[0]); /* yields 10 */
   return 0;
}
```

*sizeof*只能应用于“完全”定义的类型。 对于数组，这意味着数组的维度必须存在于其声明中 ，并且必须完全定义元素的类型。 对于*struct*和*union* ，这意味着必须有一个完全定义类型的成员列表。 例如，请考虑以下两个源文件：

``` c
/* file1.c */
int arr[10];
struct x {int one; int two;};
/* more code */

/* file2.c */
extern int arr[];
struct x;
/* more code */
```

这两个文件都是完全合法的C和代码 可以将*sizeof*应用于*arr*和 。 但是，代码是非法的 这样做，因为在中的定义 不完整。 在*arr*的情况下，代码不指定数组的维度;没有这些信息，编译器无法知道数组中有多少元素，也无法计算数组的整体大小。 同样，编译器无法计算大小 因为它不知道它由哪个成员组成，因此无法计算结构成员（和填充）的大小总和。 如果程序员在其声明中提供了数组的大小 ，或者完成了定义通过提供成员列表来*构造* ，这将允许将*sizeof*应用于*arr*或该源文件中的 。

C ++ 11引入了将*sizeof*参数应用于类的特定成员的可能性，而无需实例化对象来实现此目的。 \[3\] 例如，以下示例在大多数平台上产生和 。

``` c
#include <iostream>

using namespace std;

struct foo {
  int a;
  int b;
};

int main(void)
{
  cout << sizeof foo::a << endl << sizeof(foo) << endl;
  return 0;
}
```

### Variadic模板包

C++11介绍了 [可变的模板](../Page/可变参数模板.md "wikilink")；关键词 *sizeof* 随后通过 [省略号](../Page/省略号.md "wikilink") 返回的数量元素中的一个参数组成。

``` c
template <typename... Args>
void print_size(Args... args)
{
  cout << sizeof...(args) << endl;
}

int main(void)
{
  print_size(); // outputs 0
  print_size("Is the answer", 42, true); // outputs 3
}
```

## 运行

当适用于一个固定长度的数据类型，或可变的，表述与操作者*sizeof*评估程序的汇编；它们是更换的通过不断的结果的价值。 该 C99 标准引入了 [变长阵列](../Page/可变长数组.md "wikilink") (沃拉斯)，这需要评价对于这样的表达过的程序执行。 在许多情况下，执行细节可能会被记录在一个 [应用程序接口](../Page/应用二进制接口.md "wikilink") (ABI)文件的平台，指定格式、填充和协同的数据类型，其编译器必须符合的。

在计算任何物体的大小的类型、编译器，必须考虑到的任何所需 [数据，对准结构](../Page/数据结构对齐.md "wikilink") 来满足效率或者建筑的约束。 许多 [计算机结构](../Page/计算机系统结构.md "wikilink") 不支持多字节的访问开始在任何字节的地址，不是一个字的大小，并且即使在结构允许的话，通常的 [处理器](../Page/中央处理器.md "wikilink") 可以获取一个 [单词结盟对象](../Page/数据结构对齐.md "wikilink") 的速度比它可以获取的对象横跨多个单词在存储器。\[4\] 因此，编译器通常对准数据结构中的至少一个 [词](../Page/字_\(计算机\).md "wikilink") 的边界，并且也对准个别成员以其各自的界限。 在下面的示例，该结构 *的学生*有可能对准在字边界上，这也是其成员 *级* 开始，并成员 *的年龄* 有可能开始下一个字地址。 编译器完成后者通过插入填字节的成员之间的作为需要满足的准的要求。 有也可以是衬垫底的结构，以确保适当协调的情况下结构，用作元件阵列。

因此，聚集大小的一个结构中的C可以大于总和的大小，其单个成员。 例如，在许多系统以下代码打印 :

``` c
struct student {
  char grade; /* char is 1 byte long */
  int age; /* int is 4 bytes long */
};

printf("%zu", sizeof (struct student));
```

## 参看

  - [typeof](https://zh.wikipedia.org/wiki/typeof "wikilink")
  - [offsetof](https://zh.wikipedia.org/wiki/offsetof "wikilink")

## 参考文献

[Category:带有C代码示例的条目](https://zh.wikipedia.org/wiki/Category:带有C代码示例的条目 "wikilink") [Category:C++](https://zh.wikipedia.org/wiki/Category:C++ "wikilink") [Category:C語言](https://zh.wikipedia.org/wiki/Category:C語言 "wikilink")

1.
2.
3.  <http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2007/n2253.html>
4.