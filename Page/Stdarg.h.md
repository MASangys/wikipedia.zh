**`stdarg.h`**是[C語言中](../Page/C語言.md "wikilink")[C標準函式庫的](../Page/C標準函式庫.md "wikilink")[標頭檔](../Page/標頭檔.md "wikilink")，stdarg是由**st**andar**d**（標準）
**arg**uments（參數）簡化而來，主要目的為讓函式能夠接收不定量參數。\[1\]
[C++的](../Page/C++.md "wikilink")`cstdarg`標頭檔中也提供這樣的機能；雖然與C的標頭檔是相容的，但是也有衝突存在。

[不定參數函式](../Page/不定參數函式.md "wikilink")（Variadic
functions）是`stdarg.h`內容典型的應用，雖然也可以使用在其他由不定參數函式呼叫的函式（例如，[`vprintf`](../Page/vprintf.md "wikilink")）。

## 宣告不定參數函式

不定參數函式的參數數量是可變動的，它使用[省略號來忽略之後的參數](../Page/省略號.md "wikilink")。例如[`printf`](../Page/printf.md "wikilink")函式一般。代表性的宣告為:

``` c
int check(int a, double b, ...);
```

不定參數函式最少要有一個命名的參數，所以

``` c
char *wrong(...);
```

在C是不被允許的。在C，省略符號之前必須要有逗號；在C++，則沒有這種強制要求。
（雖然在C++中，這樣的宣告是合理的，但是這種寫法，因為沒有已命名的參數，使得`va_start`沒辦法抓到動態參數的正確起始點。）

## 定義不定參數函式

使用與聲明時相同的語法來定義:

``` c
long func(char, double, int, ...);

long func(char a, double b, int c, ...)
{
    /* ... */
}
```

在舊形式中可能會出現較省略的函式定義:

``` c
long func();

long func(a, b, c, ...)
    char a;
    double b;
{
    /* ... */
}
```

## `stdarg.h`数据类型

| 名稱        | 描述                        | 相容                                             |
| --------- | ------------------------- | ---------------------------------------------- |
| `va_list` | 用來保存宏va_arg与宏va_end所需信息 | [C89](../Page/C89_\(C_version\).md "wikilink") |

## `stdarg.h`巨集

| 名稱         | 描述                | 相容                               |
| ---------- | ----------------- | -------------------------------- |
| `va_start` | 使`va_list`指向起始的參數 | C89                              |
| `va_arg`   | 檢索參數              | C89                              |
| `va_end`   | 釋放`va_list`       | C89                              |
| `va_copy`  | 拷貝`va_list`的內容    | [C99](../Page/C99.md "wikilink") |

## 存取參數

存取未命名的參數，首先必須在不定參數函式中宣告`va_list`型態的變數。呼叫`va_start`並傳入兩個參數：第一個參數為`va_list`型態的變數，第二個参数為函式的動態參數前面最後一個已命名的參數名稱，接著每一呼叫`va_arg`就會回傳下一個參數，`va_arg`的第一個參數為`va_list`，第二個參數為回傳的型態。最後`va_end`必須在函式回傳前被`va_list`呼叫(當作參數)。(沒有要求要讀取完所有參數)

[C99提供額外的巨集](../Page/C99.md "wikilink")，`va_copy`，它能夠複製`va_list`。而`va_copy(va2,
va1)`意思為拷貝`va1`到`va2`。

沒有機制定義該怎麼判別傳遞到函式的參數量或者型態。函式通常需要知道或確定它們變化的方法。共通的慣例包含:

  - 使用[`printf`](../Page/printf.md "wikilink")或[`scanf`](../Page/scanf.md "wikilink")類的格式化字串來嵌入明確指定的型態。
  - 在不定參數最後的[標记值](../Page/標记值.md "wikilink")(sentinel value)。
  - 總數變數來指明不定參數的數量。

## 型別安全性

有些C的实现，提供了对不定参数的扩展，允許編譯器檢查適當的格式化字串及標志(sentinels)的使用。如果沒有這种擴充，編譯器通常無從檢查傳入函式的未命名參數是否為所預期的型態，也不能转换它们为所需要的数据类型。因此，必須小心謹慎以确保正確性，因为不匹配的型態降到导致[未定義行為](../Page/未定義行為.md "wikilink")(Undefined
behavior)。例如，如果傳递[空指针](../Page/空指针.md "wikilink")，不能仅仅写入`NULL`（可能实际定义为0），还要转化为（cast）适当的指针类型。另一个考慮是未命名参数的默认的类型提升。`float`將會自動的被轉換成`double`‧同樣的比`int`(整數)更小容量的參數型態將會被轉換成`int`或者`unsigned
int`‧函式所接收到的未命名參數必須預期将被型態提升。

## 例子

``` c
#include <stdio.h>
#include <stdarg.h>

void printargs(int arg1, ...) /* 輸出所有int型態的參數，直到-1結束 */
{
  va_list ap;
  int i;

  va_start(ap, arg1);
  for (i = arg1; i != -1; i = va_arg(ap, int))
    printf("%d ", i);
  va_end(ap);
  putchar('\n');
}

int main(void)
{
   printargs(5, 2, 14, 84, 97, 15, 24, 48, -1);
   printargs(84, 51, -1);
   printargs(-1);
   printargs(1, -1);
   return 0;
}
```

這個程式產生輸出:

    5 2 14 84 97 15 24 48
    84 51

    1

## `varargs.h`

[POSIX定義所遺留下的標頭檔](../Page/POSIX.md "wikilink")`varargs.h`，它早在C標準化前就已經開始使用了且提供類似`stdarg.h`的機能。[MSDN明确指出这一头文件已经过时](../Page/MSDN.md "wikilink")，完全被stdarg.h取代\[2\]。這個標頭檔不屬於ISO
C的一部分。檔案定義在[单一UNIX规范的第二個版本中](../Page/单一UNIX规范.md "wikilink")，簡單的包含所有C89
`stdarg.h`的機能，除了:不能使用在標準C較新的形式定義；你可以不給予參數(標準C需要最少一個參數)；與標準C運作的方法不同，其中一個寫成：

``` c
#include <stdarg.h>

int summate(int n, ...)
{
    va_list ap;
    int i = 0;

    va_start(ap, n);
    for (; n; n--)
        i += va_arg(ap, int);
    va_end(ap);
    return i;
}
```

或比較舊式的定義:

``` c
#include <stdarg.h>

int summate(n, ...)
    int n;
{
    /* ... */
}
```

以此呼叫

``` c
summate(0);
summate(1, 2);
summate(4, 9, 2, 3, 2);
```

使用`varargs.h`的函式為:

``` c
#include <varargs.h>

summate(n, va_alist)
    va_dcl /* 這裡沒有分號! */
{
    va_list ap;
    int i = 0;

    va_start(ap);
    for (; n; n--)
        i += va_arg(ap, int);
    va_end(ap);
    return i;
}
```

以及相同的呼叫方法。

`varargs.h`因為運作的模式需要舊型態的函式定義。\[3\]

## 參見

  - [可變參數函數](../Page/可變參數函數.md "wikilink")

## 參考

<references/>

1.
2.  [The macros defined in VARARGS.H are deprecated and exist solely for
    backwards compatibility. Use the macros defined in STDARGS.H unless
    you are working with code before the ANSI
    standard.](http://msdn.microsoft.com/zh-cn/site/kb57fad8%28v=VS.100%29)
3.