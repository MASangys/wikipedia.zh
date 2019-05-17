**`Strcpy`**
是[C語言的函式之一](https://zh.wikipedia.org/wiki/C語言 "wikilink")，來自
[C語言標準函式庫](../Page/C標準函式庫.md "wikilink")，定義於
[string.h](https://zh.wikipedia.org/wiki/string.h "wikilink")，它可以複製以
null 為結束字元的記憶體區塊到另一個記憶體區塊內。由於[字串在 C
語言不是首要的](../Page/String.h.md "wikilink")[資料型態](https://zh.wikipedia.org/wiki/資料型態 "wikilink")，而是以實作的方式來替代，在記憶體內以連續的[位元組區塊組成](https://zh.wikipedia.org/wiki/位元組 "wikilink")，`strcpy`
可以有效複製兩個配置在記憶體以[指標回傳的字串](https://zh.wikipedia.org/wiki/指针_\(信息学\) "wikilink")（字元指標或是字串指標）。

函式原型如下：\[1\]

``` c
#include<string.h>
char *strcpy(char *destination, const char *source);
```

傳回值是 `destination` 字元陣列或是配置在記憶體的字元指標（或是字串指標）。

## 使用方式與實作

例如

``` c
char *str1 = malloc(LARGE_NUMBER);
char *str2 = malloc(LARGE_NUMBER);

fgets(str1, LARGE_NUMBER, stdin);
strcpy(str2, str1); /* 這行程式碼類似 str2 "=" str1 */
```

前兩行程式碼是先配置記憶體，經由 `malloc` 函式把配置完成的記憶體位址，傳回給 `str1` 和 `str2`。到了下一行程式碼，指向
str1 的記憶體，會被使用者輸入的字串填滿。之後，複製 str1 字串到 str2 的記憶體區塊內。雖然 `str2 = str1`
這個程式敘述可以出現類似的現象，但是它只能複製位址從 `str1` 到 `str2`，讓 `str2` 指向 `str1`
的記憶體，實際上也無法真正做到複製字串的動作。這就是 `str1` 和 `str2` 兩個指標都指向相同的記憶體區塊位址。這相當於所謂的
，因為 `str2` 實際上沒有真正從 `str1` 複製到字串，所以這兩個指標所指的其實都是同一個的字串。

`strcpy` 函式利用迴圈動作逐次完成複製字串中每一個字元。在GCC-4.8.0的testsuite中的实现如下：

``` c
extern void abort (void);
extern int inside_main;

__attribute__ ((__noinline__))
char *
strcpy (char *d, const char *s)
{
  char *r = d;
#if defined __OPTIMIZE__ && !defined __OPTIMIZE_SIZE__
  if (inside_main)
    abort ();
#endif
  while ((*d++ = *s++));
  return r;
}
```

## 緩衝區溢位

必須注意使用 `strcpy`
函式，因為如果來源字串的長度太長，當複製到目的緩衝區時，它會覆寫到連接目的緩衝區後方的記憶體，導致無法預期的結果。而且程式通常容易會出現[區段錯誤](https://zh.wikipedia.org/wiki/記憶體區段錯誤 "wikilink")（也就是常見的例外現象），但是熟練的駭客會利用[緩衝區溢位來破解進入作業系統](https://zh.wikipedia.org/wiki/緩衝區溢位 "wikilink")（詳見[電腦安全](https://zh.wikipedia.org/wiki/電腦安全 "wikilink")）。

## Bounds checking variants

`strncpy` 這個常見的 bounded variant 它的實作方式與 `strcpy`
相類似，它只要複製指定的位元組個數，而且只要它接近指定的最大長度時，就會在目的緩衝區加上結束字元來結束複製動作。只要指定的位元組個數大於目的字串的長度，它就會因為緩衝區溢位而受到影響；然而，程式會自動假定來源字串是以
null 作為結束字元的字串，當來源字串的長度大於指定的長度時，它無法保證產生出來的結果是以 null
來作為結束字元的字串，它也可能出現[讀取例外的現象](https://zh.wikipedia.org/wiki/記憶體區段錯誤 "wikilink")。

### strlcpy

由 [OpenBSD](../Page/OpenBSD.md "wikilink") 的研發人員  和 [Theo de
Raadt](../Page/西奧·德·若特.md "wikilink") 兩人設計
[`strlcpy`](https://zh.wikipedia.org/wiki/strlcpy "wikilink") 函式，通常視為是
`strncpy`
安全版本。對於一些[作業系統而言](https://zh.wikipedia.org/wiki/作業系統 "wikilink")，這個函式會出現被掌控的問題，但是它已經被
[glibc](https://zh.wikipedia.org/wiki/glibc "wikilink")
維修人員給特別地刪除，所以在此建議使用
[`memcpy`](https://zh.wikipedia.org/wiki/memcpy "wikilink") 函式來替代。\[2\]

### strcpy_s

`strcpy_s` 函式是 `strcpy` 的安全版本，屬於 ISO/IEC TR 24731 的標準， \[3\]\[4\]某些 C
函式庫支援這個函式，包含 Microsoft C Runtime Library（微軟 C 語言執行時期函式庫）。\[5\] 它與
`strcpy`
的不同在於，在它取得額外參數來決定目的緩衝區大小時，會因為發生溢位而出現錯誤，如此一來，就可以預防[緩衝區溢位](https://zh.wikipedia.org/wiki/緩衝區溢位 "wikilink")。由於
`strcpy_s` 對於 C 語言來說是新的函式，所以沒有特別受到廣泛支援。

反對Microsoft人士宣稱，這個函式連同其他Microsoft在其Runtime
Library號稱對安全性所做的強化\[6\]皆為Microsoft試圖把開發人員鎖死在[視窗平台上的手段之一](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。\[7\]\[8\]；雖然strcpy_s是屬於ISO/IEC
TR 24731的標準而非Windows獨有的標準，且在本質上跟OpenBSD的strlcpy沒有差別。

## 參考資料

<references/>

## 外部連結

  - [`strcpy(3)`](http://www.openbsd.org/cgi-bin/man.cgi?query=strcpy&sektion=3)：複製字串
    – [OpenBSD](../Page/OpenBSD.md "wikilink")
    函式庫函式[說明手冊](../Page/手册页.md "wikilink")

[Category:C標準函式庫](https://zh.wikipedia.org/wiki/Category:C標準函式庫 "wikilink")

1.  <http://www.cplusplus.com/reference/clibrary/cstring/strcpy.html>
2.  [libc-alpha mailing list](http://sources.redhat.com/ml/libc-alpha/),
    selected messages from 8 Aug 2000 thread:
    [53](http://sources.redhat.com/ml/libc-alpha/2000-08/msg00053.html),
    [60](http://sources.redhat.com/ml/libc-alpha/2000-08/msg00060.html),
    [61](http://sources.redhat.com/ml/libc-alpha/2000-08/msg00061.html)
3.
4.
5.
6.
7.
8.