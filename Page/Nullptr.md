**nullptr**是[C++11](../Page/C++11.md "wikilink")语言标准用来表示[空指针的](https://zh.wikipedia.org/wiki/空指针 "wikilink")[常量值](https://zh.wikipedia.org/wiki/常量 "wikilink")\[1\]，可以指派給任意類型的[指標變數](../Page/指標_\(電腦科學\).md "wikilink")\[2\]。部分[編譯器](../Page/編譯器.md "wikilink")將之視為一個關鍵字，例如[Visual Studio](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink")\[3\]，部分使用舊標準的[C++](../Page/C++.md "wikilink")編譯器則未實作需要自行定義\[4\]或引入額外的標頭檔\[5\]。

## 定義

在C语言中，[空指標](../Page/空指標.md "wikilink")可以使用`(void *)0;`來表示，且標準庫中也是如此定義，但在C++语言中，由于对语法的类型检查更为严格，因而空指针的值就不能表示为`(void *)0;`。例如，空指针的值表示为`FILE *fp=(void *)0;`编译报错。所以至少自[C++98开始](https://zh.wikipedia.org/wiki/C++98 "wikilink")`#define NULL 0`。 但这会在函数重载时遇到新的困难。例如

``` cpp
void foo(char c, void *p);
void foo(char c, int i);
int main()
{
    foo('x',NULL);//匹配哪个版本的foo()？
}
```

[C++11](../Page/C++11.md "wikilink")开始，定义了空指针的常值为`nullptr`，解决了上述函数重载问题。

在没有C++11的nullptr时，可以自己实现一个\[6\]：

``` cpp
const class nullptr_t
{
public:
    template<class T>
    inline operator T*() const
        { return 0; }

    template<class C, class T>
    inline operator T C::*() const
        { return 0; }

private:
    void operator&() const;
} nullptr = {};
```

C++语言标准规定：\[7\] 值0或std::nullptr_t类型的纯右值是空指针常量（null pointer constant）。可以通过空指针转换(null pointer conversion)成为某个类型的空指针值(null pointer value)。

C++语言标准还规定，\[8\]在实参个数多于形参个数时（即可变参数个数的函数调用，可用va_arg来访问），多出来的实参如果是std::nullptr_t类型，则转化为(void \*)0供函数访问。

std::nullptr_t定义在标准头文件`<`[`cstddef`](https://zh.wikipedia.org/wiki/cstddef "wikilink")`>`中。但实际上在源程序中不包含该头文件仍可以正常使用nullptr_t类型与nullptr对象。

## nullptr_t

nullptr_t是[字面常數nullptr的資料型態](../Page/字面常量_\(C语言\).md "wikilink")\[9\]。它是一種特殊的類型，並不是一種指標類型也不是指向任何種變數型態的指標類型。nullptr_t位於std命名空間中，且定義於<cstddef>標頭檔中\[10\]。可透過is_null_pointer來檢查物件是否為這種型態\[11\]。

## 參見

  - [空指標](../Page/空指標.md "wikilink")

## 参考文献

<references/>

[Category:C++](https://zh.wikipedia.org/wiki/Category:C++ "wikilink")

1.

2.

3.

4.
5.
6.  《Imperfect C++ --- Practical Solutions for Real-Life Programming》 作者: 威尔逊 译者: 荣耀 / 刘未鹏 人民邮电出版社 2006年1月 ISBN 9787115136848

7.  《C++14语言标准》4.10.1

8.  《C++14语言标准》5.2.2.7

9.

10.

11.