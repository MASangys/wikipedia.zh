> 本文内容由[Assert.h](https://zh.wikipedia.org/wiki/Assert.h)转换而来。


`assert.h`是[C標準函数庫中的](https://zh.wikipedia.org/wiki/C標準函数庫 "wikilink")[头文件](../Page/头文件.md "wikilink")。其中定义了`assert()`宏用于程序调试。

在C標準函数庫中，它是個非常特別的头文件，你可以將它引入數次以獲得不同的效果，此效果依引入時是否以定義NDEBUG而定。

## 宏

`assert()`是一个诊断宏，用于动态辨识程序的逻辑错误条件。其原型是： `void assert(int expression);`

如果宏的参数求值结果为非零值，则不做任何操作（no action）；如果是零值，用[宽字符打印诊断消息](https://zh.wikipedia.org/wiki/宽字符 "wikilink")，然后调用`abort()`。诊断消息包括：

  - 源文件名字（在[`stdlib.h`](https://zh.wikipedia.org/wiki/stdlib.h "wikilink")中声明的宏`__FILE__`的值）
  - 所在的源文件的行号（在`stdlib.h`中声明的宏`__LINE__`的值）
  - 所在的函数名（在stdlib.h中声明的宏`__func__`的值），这是[C99新增的特性](https://zh.wikipedia.org/wiki/C99 "wikilink")
  - 求值结果为0的表达式

诊断信息的显示目标依赖于被调用程序的类型。如果是控制台程序，诊断信息显示在[stderr设备](https://zh.wikipedia.org/wiki/stderr "wikilink")；如果是基于窗口的程序，`assert()`产生一个Windows MessageBox来显示诊断信息。

程序可以屏蔽掉所有的`assert()`而无需修改源代码。这只需要在命令行调用C语言的编译器时添加宏定义的命令行选项，定义`NDEBUG`宏;也可以在源程序程序引入`<assert.h>`之前就使用`#define NDEBUG`来定义宏。被屏蔽的`assert()`甚至不对传递给它的参数表达式求值，因此使用`assert()`时其参数表达式不能有副作用（side-effects）。

## 例程

``` c
#include <stdio.h>
#include <assert.h>

int main (void)
{
    FILE *fd;

    fd = fopen ("/home/user/file.txt", "r");
    assert (fd);
    fclose (fd);

    return 0;
}
```