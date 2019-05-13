**B語言**是一种通用的[程序设计语言](../Page/程序设计语言.md "wikilink")。自從被[C語言取代之後](../Page/C語言.md "wikilink")，它幾乎已遭棄置。B語言大約是於1969年時由[美國](../Page/美國.md "wikilink")[貝爾實驗室的](../Page/貝爾實驗室.md "wikilink")[電腦科學家](../Page/電腦科學家.md "wikilink")──[肯·湯普森在](../Page/肯·湯普森.md "wikilink")[丹尼斯·利奇的支持下設計出來的](../Page/丹尼斯·利奇.md "wikilink")。[肯·湯普森最初想在UNIX上開發一個](../Page/肯·湯普森.md "wikilink")[Fortran編譯器](../Page/Fortran.md "wikilink")，但後來引進了[BCPL的風格](../Page/BCPL.md "wikilink")，形成一個新的語言。

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
  - [C語言](../Page/C語言.md "wikilink")
  - [支援頭文字](../Page/支援頭文字.md "wikilink")

## 外部連結

  - [The Development of the C
    Language](http://cm.bell-labs.com/cm/cs/who/dmr/chist.html)
  - [Users' Reference to B，Ken
    Thompson著](https://web.archive.org/web/20060706005453/http://cm.bell-labs.com/cm/cs/who/dmr/kbman.html)
  - [The Programming Language
    B](https://web.archive.org/web/20070808110320/http://cm.bell-labs.com/cm/cs/who/dmr/bintro.html)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")