**Null** 在電腦程式設計上有多種含義：

## Null 指標 或是 Null 引用

Null
是一特殊指標值（或是一種[对象引用](https://zh.wikipedia.org/wiki/:引用型 "wikilink")）表示這個指標並不指向任何的对象。這樣的指標稱之為
[Null指標](https://zh.wikipedia.org/wiki/:指標_\(信息学\) "wikilink")\[1\]。
有許多實现上是以0 (全位为0)
代表null指標，多數的[CPU以此作為記憶體空間的底](https://zh.wikipedia.org/wiki/CPU "wikilink")
(雖有些系統會使用有符号位址空間（signed address space），並允許為負值)。 一旦用null來存取其記億體，許多
[作業系統會发生意外事件](https://zh.wikipedia.org/wiki/作業系統 "wikilink")。
一些語言使用其他的命名方式來表示這種指標，如[Pascal](https://zh.wikipedia.org/wiki/:Pascal_\(程式語言\) "wikilink"),
[Ruby](https://zh.wikipedia.org/wiki/:Ruby "wikilink") 以及
[Lua](https://zh.wikipedia.org/wiki/:Lua "wikilink") 則使用
`nil`\[2\]，而[Visual Basic](../Page/Visual_Basic.md "wikilink") 使用
`Nothing`。[Fortran不支援此一常數](../Page/Fortran.md "wikilink")，但其屬性（property）可被設定成
`NULLIFY` 並由 `ASSOCIATED` 函數測試之。

## Null 值

在許多定義裡，Null 意指 "没有值" 或是 "未知的值"。[SQL資料庫查詢語言使用](../Page/SQL.md "wikilink")
null 在這種地方上，如同在[Visual Basic](../Page/Visual_Basic.md "wikilink")
及其衍生語言。於此模型上, null operand 等同於 `null` (VB) or "`unknown`"
(SQL). 故對於A而言, 算式 "`A == null`" 與 "`A <> null`" 既非 true 亦非 false。

然而，布林運算 "`A and false`" 產生 false，且類似 "`A or true`" 是真 true，甚至當 A 是
null，因為這個算式並非代表在 A的值域之上。另一算式 "`A is null`" 和 "`A is not null`"
都是正確的方法，皆可用來測試 SQL 中的null value，一些 SQL 可實作為 `A == null` 可以是
"true" ，如果 A 是 null; 詳見 **[Null
(SQL)](https://zh.wikipedia.org/wiki/Null_\(SQL\) "wikilink")**。

## Null 字符串

null [字符串](https://zh.wikipedia.org/wiki/:字符串 "wikilink"),
也就是[空字符串](https://zh.wikipedia.org/wiki/空字元串 "wikilink")（empty
string），是一種長度為0的字串 \[3\]。

## Null 设备

  - 虛擬裝置（[device](../Page/硬件.md "wikilink")-like
    entity）並不提供輸入亦不支援輸出。在[UNIX系統中](https://zh.wikipedia.org/wiki/Unix "wikilink")，會被標示為特別檔（）
    **[`:/dev/null`](https://zh.wikipedia.org/wiki/:/dev/null "wikilink")**
    （亦可視之為[黑洞或](../Page/黑洞.md "wikilink")
    [比特垃圾桶](../Page/比特垃圾桶.md "wikilink")）。[DOS](../Page/DOS.md "wikilink")
    與 Windows，代表著一種`NUL` 裝置。[AmigaOS則是以](../Page/AmigaOS.md "wikilink")
    `NIL:` 代表虛擬裝置。

## Null 字符

在 的控制碼集control code set 定義於 [ISO
646](https://zh.wikipedia.org/wiki/ISO/IEC_646 "wikilink"),
[ASCII](../Page/ASCII.md "wikilink"), 以及
[Unicode標準字元集](https://zh.wikipedia.org/wiki/Unicode "wikilink"),
code value 0 是空字符（null character，NUL）。大多數的程式語言提供語法來表示這樣的字元
(例如：[Pascal](../Page/Pascal_\(程式語言\).md "wikilink") 使用 chr(0) 或
\#0, [C](https://zh.wikipedia.org/wiki/C语言 "wikilink") 以及其他衍生語言 `'\0'`).
\[4\]

在一些程式語言，null字符
意指為[字符串的結束](https://zh.wikipedia.org/wiki/:字符串 "wikilink")。這些字串被編成[ASCII字元集有時可視同](../Page/ASCII.md "wikilink")
*[ASCIIZ](../Page/C风格字符串.md "wikilink")* 或 *ASCIZ* 字串 — "Z" 是指字串的終點
"Zero"，或 null 字符\[5\].

當機電電傳打字電報被用作計算機輸出設備，一個或多個NULL字符被送往在每次印刷線，以便有時間的機制，以返回到第一個印刷上的立場下一行。

## Null 的变种

一些程式語言（像是
[LISP](../Page/LISP.md "wikilink")，[Ruby](../Page/Ruby.md "wikilink")，[Pascal](../Page/Pascal_\(程式語言\).md "wikilink")
和 [Delphi](../Page/Delphi.md "wikilink"), 以及其他基於 Pascal發展的語言）使用
[`nil`](https://zh.wikipedia.org/wiki/nil "wikilink")
來表示Null變數，這有時會導致混淆。

## Null 脚本 或 Null 子程序

[command script](../Page/脚本语言.md "wikilink") 或 [program
subroutine](../Page/子程序.md "wikilink") 不做任何事, 但回傳個常數值。稱為存根函數或
"[stubroutine](https://zh.wikipedia.org/wiki/stubroutine "wikilink")",
通常使用於 [program development](../Page/程序设计.md "wikilink"),
此處的功能執行例程被推遲。這種技術常被用於防盜版。目標程式會被反組譯[disassembled](../Page/汇编语言.md "wikilink")。

## Null 账户

在一些某些論壇或是網際網路, 使用者数据库（user database） 的毀損可能造成帳號突然顯示為「無效」（null） 會要求重設其系統.

## Null函数

[Null函数](https://zh.wikipedia.org/wiki/Null函数 "wikilink")（）（或稱
null操作符）是一種傳回「非資料值」（no data values）的函數, 故執行後不會有任何狀態的改變。

## 注釋

<references/>

[Category:電腦術語](https://zh.wikipedia.org/wiki/Category:電腦術語 "wikilink")
[Category:无](https://zh.wikipedia.org/wiki/Category:无 "wikilink")

1.  [Brian W.
    Kernighan](https://zh.wikipedia.org/wiki/Brian_W._Kernighan "wikilink"),
    [Dennis M.
    Ritchie](https://zh.wikipedia.org/wiki/Dennis_M._Ritchie "wikilink"),
    *[The C Programming
    Language](https://zh.wikipedia.org/wiki/The_C_Programming_Language "wikilink")*,
    Second Edition, Prentice Hall New Jersey, ISBN 0-13-110362-8, p. 102

2.  [Elliot B.
    Koffman](https://zh.wikipedia.org/wiki/Elliot_B._Koffman "wikilink"),
    *Pascal 3rd Edition*, Addison Wesley, Reading MA, ISBN
    0-201-11834-3, pp. 678-679

3.  Kernighan and Ritchie, *C*, p. 38

4.
5.  Kernighan and Ritchie, *C*, p. 30