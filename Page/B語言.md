> 本文内容由[B語言](https://zh.wikipedia.org/wiki/B語言)转换而来。


**B語言**是一种通用的[程序设计语言](https://zh.wikipedia.org/wiki/程序设计语言 "wikilink")。自從被[C語言取代之後](https://zh.wikipedia.org/wiki/C語言 "wikilink")，它幾乎已遭棄置。B語言大約是於1969年時由[美國](https://zh.wikipedia.org/wiki/美國 "wikilink")[貝爾實驗室的](https://zh.wikipedia.org/wiki/貝爾實驗室 "wikilink")[電腦科學家](../Page/電腦科學家.md "wikilink")──[肯·湯普森在](https://zh.wikipedia.org/wiki/肯·湯普森 "wikilink")[丹尼斯·利奇的支持下設計出來的](https://zh.wikipedia.org/wiki/丹尼斯·利奇 "wikilink")。[肯·湯普森最初想在UNIX上開發一個](https://zh.wikipedia.org/wiki/肯·湯普森 "wikilink")[Fortran](../Page/Fortran.md "wikilink")編譯器，但後來引進了[BCPL](../Page/BCPL.md "wikilink")的風格，形成一個新的語言。

後來，丹尼斯·利奇以B語言為基礎開發出C語言，至此C語言漸漸發展成為目前世界上最常用的程式語言之一。

## 例子

這是肯·湯普森提供的一個源代碼：

    /* The following function will print a non-negative number, n, to
      the base b, where 2<=b<=10,  This routine uses the fact that
      in the ASCII character set, the digits 0 to 9 have sequential
      code values.  */

    printn(n,b) {
            extrn putchar;
            auto a;

            if(a=n/b) /* assignment, not test for equality */
                    printn(a, b); /* recursive */
            putchar(n%b + '0');
    }

## 參見

  - [BCPL](../Page/BCPL.md "wikilink")
  - [C語言](https://zh.wikipedia.org/wiki/C語言 "wikilink")
  - [支援頭文字](https://zh.wikipedia.org/wiki/支援頭文字 "wikilink")

## 外部連結

  - [The Development of the C Language](http://cm.bell-labs.com/cm/cs/who/dmr/chist.html)
  - [Users' Reference to B，Ken Thompson著](https://web.archive.org/web/20060706005453/http://cm.bell-labs.com/cm/cs/who/dmr/kbman.html)
  - [The Programming Language B](https://web.archive.org/web/20070808110320/http://cm.bell-labs.com/cm/cs/who/dmr/bintro.html)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")