在[電腦科學裡面](https://zh.wikipedia.org/wiki/電腦科學 "wikilink")，**lex**是一個產生[詞法分析器](https://zh.wikipedia.org/wiki/詞法分析 "wikilink")（lexical
analyzer，"掃描器"（scanners）或者"lexers"）的[程式](https://zh.wikipedia.org/wiki/電腦程式 "wikilink")。\[1\]\[2\]
Lex常常與[yacc](https://zh.wikipedia.org/wiki/yacc "wikilink")
[語法分析器產生程式](https://zh.wikipedia.org/wiki/語法分析器產生程式 "wikilink")（parser
generator）一起使用。Lex(最早是[埃里克·施密特和](../Page/埃里克·施密特.md "wikilink")[迈克·莱斯克製作](../Page/迈克·莱斯克.md "wikilink")）是許多[UNIX系統的標準](../Page/UNIX.md "wikilink")[詞法分析器](https://zh.wikipedia.org/wiki/詞法分析器 "wikilink")（lexical
analyzer）產生程式，而且這個工具所作的行為被詳列為[POSIX標準的一部分](https://zh.wikipedia.org/wiki/POSIX "wikilink")。

Lex讀進一個代表詞法分析器規則的輸入[字串流](../Page/字串流.md "wikilink")，然後輸出以[C語言實做的詞法分析器](https://zh.wikipedia.org/wiki/C語言 "wikilink")[原始碼](https://zh.wikipedia.org/wiki/原始碼 "wikilink")。

雖然傳統上是商業軟體，但是有些根據原本AT\&T程式碼這些版本的Lex可以以[公開原始碼的形式獲得](https://zh.wikipedia.org/wiki/公開原始碼 "wikilink")，並被視為某些系統的一部份，例如說[OpenSolaris和](../Page/OpenSolaris.md "wikilink")[貝爾實驗室九號計畫](../Page/貝爾實驗室九號計畫.md "wikilink")。另一個有名的Lex[公開原始碼版本是](https://zh.wikipedia.org/wiki/公開原始碼 "wikilink")[flex](https://zh.wikipedia.org/wiki/flex詞法分析器 "wikilink")，代表"快速的詞法分析器"（fast
lexical analyzer）

## lex檔案的結構

lex的檔案結構故意設計的與yacc的檔案格式相似；檔案分成三個區塊，均以一個只有兩個百分比符號（%）的單行來分隔，如下：

*`定義區塊`*
`%%`
*`規則區塊`*
`%%`
*`C程式碼區塊`*

  - **定義**區塊是用來定義[巨集以及匯入](../Page/巨集.md "wikilink")[C寫成的](https://zh.wikipedia.org/wiki/C語言 "wikilink")[表頭檔所在區塊](https://zh.wikipedia.org/wiki/表頭檔 "wikilink")。在這裡面也可以寫一些C程式碼，這一些程式碼會被複製到產生出來的C原始碼的開頭部份。
  - **規則**區塊是最重要的區塊；這裡將樣式與C的[陳述](https://zh.wikipedia.org/wiki/陳述_\(程式\) "wikilink")（statement）串連在一起。這一些樣式都是[正規表式](https://zh.wikipedia.org/wiki/正規表式 "wikilink")。當lexer看到輸入裡面有合乎給定的樣式時，則會操作相對應的C程式碼。這就是lex運作的基礎。
  - **C程式碼**區塊包含C的陳述與[函式](https://zh.wikipedia.org/wiki/子程式 "wikilink")（function）會原封不動的照搬到產生出來的C原始碼裡面。這些陳述一般假設包含了在規則區塊裡面，各個規則分別呼叫的原始碼。在大型程式裡面，將這一些程式放在其他分開的檔案並且在[編譯階段作連接會更方便](../Page/編譯器.md "wikilink")（在進行修改跟擴充的時候）。

## lex檔案的範例

下方是一個[flex版本的lex檔的範例](https://zh.wikipedia.org/wiki/flex "wikilink")。這隻程式分辨出哪裡是表示數字（整數）的字串，並且把他們印出來。

    /*** 定義區塊***/

    %{
    /* 會直接照搬放檔頭的C code */
    #include <stdio.h>
    %}

    /* 這裡告訴flex只要讀取輸入的檔案（不需要其他檔案）*/
    %option noyywrap

    %%
        /*** 規則區塊***/

        /* [0-9]+代表包含一個或多個數字的字串*/
    [0-9]+  {
                /* yytext是一個字串變數，內容是符合規則的字串本身。*/
                printf("Saw an integer: %s\n", yytext);
            }

    .       {   /* 忽略所有其他的字*/   }

    %%
    /*** C程式碼區塊***/

    int main(void)
    {
        /* 呼叫lexer，然後結束程式*/
        yylex();
        return 0;
    }

將這個檔案輸入給flex，它會將這個檔案轉換成一個C檔案，檔名lex.yy.c。這個C檔案可以被編譯成一份可執行檔，功能為找出並且輸出代表整數的字串。例如，給定輸入：

`abc123z.!&*2ghj6`

這隻程式會印出：

`Saw an integer: 123`
`Saw an integer: 2`
`Saw an integer: 6`

## Lex和其他工具並用

### Lex和語法分析產生程式（parser generator）並用

Lex和語法分析器產生程式，例如說[Yacc或者](../Page/Yacc.md "wikilink")[Bison之類](https://zh.wikipedia.org/wiki/GNU_bison "wikilink")，常常一起使用。語法分析器產生程式使用[形式文法來分析輸入字串流](../Page/形式文法.md "wikilink")（input
stream），這是Lex使用簡單的[正規表示式所作不到的事情](https://zh.wikipedia.org/wiki/正規表示式 "wikilink")（Lex的設計被限制於只能使用[有限狀態自動機](https://zh.wikipedia.org/wiki/有限狀態自動機 "wikilink")）。然而，語法分析器產生程式不能直接讀取簡單的輸入字串流–他們需要使用一系列的單詞（token）。Lex則常常被使用來提供語法分析器產生程式這一些單詞。

### Lex和make

[make是一個便利程式](https://zh.wikipedia.org/wiki/make "wikilink")（utility），在這裡我們用它來維護跟lex相關的程式。make假設副檔名是`.l`的檔案是一個lex原始碼檔案。make內部的巨集`LFLAGS`可以用來詳列make自動觸發的lex選項。\[3\]

## 相關條目

  - [flex詞法分析器](https://zh.wikipedia.org/wiki/flex詞法分析器 "wikilink")
  - [Yacc](../Page/Yacc.md "wikilink")
  - [Ragel](https://zh.wikipedia.org/wiki/Ragel "wikilink")
  - [Quex](../Page/Quex.md "wikilink")
  - [List of C\# lexer
    generators](https://zh.wikipedia.org/wiki/List_of_C_Sharp_lexer_generators "wikilink")

## 参考文献

## 外部連結

  - [Using Flex and Bison at
    Macworld.com](http://www.mactech.com/articles/mactech/Vol.16/16.07/UsingFlexandBison/)

[Category:编译工具](https://zh.wikipedia.org/wiki/Category:编译工具 "wikilink")
[Category:分析器生成器](https://zh.wikipedia.org/wiki/Category:分析器生成器 "wikilink")
[Category:Unix编程工具](https://zh.wikipedia.org/wiki/Category:Unix编程工具 "wikilink")
[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")
[Category:程序設計工具](https://zh.wikipedia.org/wiki/Category:程序設計工具 "wikilink")

1.
2.
3.