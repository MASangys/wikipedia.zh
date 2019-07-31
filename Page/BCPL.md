**基本組合編程語言**（），是一種電腦程式設計語言，源自更早的[CPL語言](https://zh.wikipedia.org/wiki/CPL_\(程式語言\) "wikilink")，1966年由劍橋大學的[馬丁·理察德所發展出來的](https://zh.wikipedia.org/wiki/馬丁·理察德 "wikilink")。

Richards試著移除了CPL中最複雜的組成，第一支BCPL compiler在[IBM 7094電腦中完成](https://zh.wikipedia.org/wiki/IBM_7094 "wikilink")。

身為早期程式語言的BCPL，如今已不再廣泛使用，但它的影響卻是深遠的，今日流行的[C語言即是參考BCPL所設計](https://zh.wikipedia.org/wiki/C語言 "wikilink")。BCPL是第一支使用[括弧語言](https://zh.wikipedia.org/wiki/括弧語言 "wikilink")，[括弧特徵在C語言中隨處可見](https://zh.wikipedia.org/wiki/括弧 "wikilink")，例如

  -
    BCPL

`LET FUNC foo(a) =  VALOF`
`{ b := a + 1`
`  RESULTIS b }`

  -
    C語言改良自BCPL

`for (int i =  0; i < 10; i++)`
**`{`**
`    printf("%d", i);`
`    doTask(i);`
**`}`**

## 範例

下列是馬丁查理斯的 BCPL distribution.

Printing factorials:

    GET "libhdr"

    LET start() = VALOF
    { FOR i = 1 TO 5 DO writef("fact(%n) = %i4*n", i, fact(i))
      RESULTIS 0
    }

    AND fact(n) = n=0 -> 1, n*fact(n-1)

[N個皇后問題](../Page/八皇后问题.md "wikilink")：

    GET "libhdr"

    GLOBAL { count:200; all:201  }

    LET try(ld, row, rd) BE TEST row=all

                            THEN count := count + 1

                            ELSE { LET poss = all & ~(ld | row | rd)
                                   UNTIL poss=0 DO
                                   { LET p = poss & -poss
                                     poss := poss - p
                                     try(ld+p << 1, row+p, rd+p >> 1)
                                   }
                                 }

    LET start() = VALOF
    { all := 1

      FOR i = 1 TO 12 DO
      { count := 0
        try(0, 0, 0)
        writef("Number of solutions to %i2-queens is %i5*n", i, count)
        all := 2*all + 1
      }

      RESULTIS 0
    }

## 參考文獻

  - Martin Richards, *[The BCPL Reference Manual](https://web.archive.org/web/20080622171914/http://cm.bell-labs.com/cm/cs/who/dmr/bcpl.html)* (Memorandum M-352, Project MAC, Cambridge, July, 1967)
  - Martin Richards, *BCPL - a tool for compiler writing and systems programming* (**Proceedings of the Spring Joint Computer Conference**, Vol 34, pp 557-566, 1969)
  - Martin Richards, Arthur Evans, Robert F. Mabee, *The BCPL Reference Manual* (MAC TR-141, Project MAC, Cambridge, 1974)
  - Martin Richards, C. Whitby-Strevens, *BCPL, the language and its compiler* (Cambridge University Press, 1980) ISBN 0-521-28681-6

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")