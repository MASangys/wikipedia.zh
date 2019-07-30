[C语言的](https://zh.wikipedia.org/wiki/C语言 "wikilink")**`offsetof()`**宏，是定义在[`stddef.h`](https://zh.wikipedia.org/wiki/stddef.h "wikilink")。用于求出一个[struct或](https://zh.wikipedia.org/wiki/struct "wikilink")[union数据类型的给定成员的](https://zh.wikipedia.org/wiki/联合体 "wikilink")[`size_t`](https://zh.wikipedia.org/wiki/size_t "wikilink")类型的字节偏移值。`offsetof()`宏有两个参数，分别是结构名与结构内的成员名。不能声明为C原型。\[1\]

## 实现

传统实现依赖于编译器对指针不是很挑剔。它假定结构的地址为0，然后获得成员的偏移值：

``` c
#define offsetof(st, m) ((size_t)&(((st *)0)->m))
```

上述定义在[C11](../Page/C11.md "wikilink")语言标准下是[未定义行为](../Page/未定义行为.md "wikilink")，\[2\] 因为它对空指针做了解引用（dereference）。[GCC](../Page/GCC.md "wikilink")现在定义该宏为：\[3\]

``` c
#define offsetof(st, m) __builtin_offsetof(st, m)
```

这种内置对C++的`class`或`struct`也适用。\[4\]

## 用途

[Linux内核](../Page/Linux内核.md "wikilink")使用`offsetof()`来实现`container_of()`，这允许类似于[mixin类型以发现包含它的结构](https://zh.wikipedia.org/wiki/mixin "wikilink"):\[5\]

``` c
#define container_of(ptr, type, member) ({ \
                const typeof( ((type *)0)->member ) *__mptr = (ptr); \
                (type *)( (char *)__mptr - offsetof(type,member) );})
```

`container_of()`宏被用于从指向内嵌成员的指针获得外包的结构的指针。如链表`my_struct`:

``` c
struct my_struct {
    const char *name;
    struct list_node list;
};

extern struct list_node * list_next(struct list_node *);

struct list_node *current = /* ... */
while(current != NULL){
    struct my_struct *element = container_of(current, struct my_struct, list);
    printf("%s\n", element->name);
    current = list_next(&element->list);
}
```

Linux内核实现`container_of()`时，使用了GNU C扩展*statement expressions*.\[6\]下述实现也能确保类型安全:

``` c
#define container_of(ptr, type, member) ((type *)((char *)(1 ? (ptr) : &((type *)0)->member) - offsetof(type, member)))
```

粗看起来，上述的不寻常的?:条件运算符是不适当的。可以写成更简单的形式:

``` c
#define container_of(ptr, type, member) ((type *)((char *)(ptr) - offsetof(type, member)))
```

这种写法忽略了检查ptr的类型是否是member的类型，而Linux内核的实现需要这种安全检查。而?:条件运算符要求如果操作数是一个类型的两个指针值，那么它们应当是兼容的类型。所以第三个操作数虽然不会被使用，但编译器要检查`(ptr)`与`&((type *)0)->member`是不是兼容的指针类型。

## 局限性

C++03要求`offsetof`限于[POD类型](../Page/POD_\(程序设计\).md "wikilink")。[C++11](../Page/C++11.md "wikilink")要求`offsetof`限于[标准布局类型](https://zh.wikipedia.org/wiki/标准布局类型 "wikilink")，\[7\] 但仍存在未定义行为。特别是[虚继承](../Page/虚继承.md "wikilink")情形。\[8\] 下述代码用gcc 4.7.3 amd64编译器，产生的结果是有问题的:

``` c++
#include <stddef.h>
#include <stdio.h>

struct A
{
    int  a;
    virtual void dummy() {}
};

struct B: public virtual A
{
    int  b;
};

int main()
{
    printf("offsetof(A,a) : %zu\n", offsetof(A, a));
    printf("offsetof(B,b) : %zu\n", offsetof(B, b));
    return 0;
}
```

Output is:

    offsetof(A,a) : 8
    offsetof(B,b) : 8

## 参考文献

[Category:C標準函式庫](https://zh.wikipedia.org/wiki/Category:C標準函式庫 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.