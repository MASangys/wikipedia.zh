**GNU Unifont**是一個由Roman
Czyborra所製作的，自由且免費的點陣字型，涵蓋了[Unicode中的](https://zh.wikipedia.org/wiki/Unicode "wikilink")[基本多文種平面](https://zh.wikipedia.org/wiki/基本多文種平面 "wikilink")，使用了中型的點陣字型格式。见于大多數的自由[操作系统及一些視窗系統中](../Page/操作系统.md "wikilink")，像是[Linux](../Page/Linux.md "wikilink")、[XFree86](../Page/XFree86.md "wikilink")、[X.Org
Server](../Page/X.Org_Server.md "wikilink")，及一些嵌入式韌體，像是。此字型是以[GNU通用公共许可证第二版或更新釋出](../Page/GNU通用公共许可证.md "wikilink")，但加入了一個字型嵌入的例外條款（在文件中嵌入字型並不構成違反授權條款的條件）。

它在2013年10月成為了GNU軟體包。

## 狀態

[Unicode的](https://zh.wikipedia.org/wiki/Unicode "wikilink")[基本多文種平面涵蓋了](https://zh.wikipedia.org/wiki/基本多文種平面 "wikilink")2<sup>16</sup>
= 65,536
個碼位。在這個數字裡，2048是保留給特殊用途的代理對，6400是保留給私人用途。大約剩餘57,000個碼位可供分配。其中一些特殊的碼位並沒有已分配的字形，但其他多數的位置都有已分配的字形。

，GNU Unifont已經完整涵蓋了在Unicode
6.3版中所定義的[基本多文種平面](https://zh.wikipedia.org/wiki/基本多文種平面 "wikilink")。小於100%完成度的字形可以由任何貢獻者完成。

一大塊大約20,000個的中日韓表意文字已從[文泉驿的Unibit字形複製過來](../Page/文泉驿.md "wikilink")（獲得授權）\[1\]。

## .hex字型格式

GNU Unifont 的 .hex
格式定義了它的字形大小，寬度8或16像素，高度為16像素。多數西方字母的寬度被定義為8像素，但其他語言的字母（特別是中日韓文字）通常是16像素。

unifont.hex檔案的每一個字形都包含一行。每行都包含四位數的Unicode十六進位碼位，一個冒號及點陣字串。一個寬度為8像素的字母的位元串有32個十六進位的位數，而寬度為16像素的字母的位元串有64個十六進位的位數。

一個在位元字串中'1'的位元對應到一個'開'的像素。像素位元是以由上到下，由左到右的方式儲存。

然後字型會被轉換成BDF格式的檔案以在[X Window系統上使用](../Page/X_Window系統.md "wikilink")。

### 範例

[GNU_Unifont_Chinese_language_(Taiwan)_Sample.PNG](https://zh.wikipedia.org/wiki/File:GNU_Unifont_Chinese_language_\(Taiwan\)_Sample.PNG "fig:GNU_Unifont_Chinese_language_(Taiwan)_Sample.PNG")与[日语範例](../Page/日语.md "wikilink")\]\]
這是包含了一個ASCII大寫'A'字形的範例。

    <nowiki>
    0041:0000000018242442427E424242420000
    </nowiki>

第一個數字是十六進位的Unicode碼位，範圍從0000到FFFF。十六進為的0041是二進位的65，也就是字母'A'的碼位。冒號分隔了點陣字的碼位。在這個範例中，字形是8像素寬，所以位元串有32個十六進位的位數。

位元串以8個零開始，所以前4行是空的（每8位元是2個十六近位的數字，而寬度為8位元的字形則為每行8個位數）。位元串也以4個零結尾，所以最後兩行也是空的。因為如此，預設的字形會比基線低2行，且大寫的字母高於基線10行。這是GNU
Unifont的拉丁字母範例。

Perl的hexdraw指令稿按照上述的一行字形定義產生以下的輸出（右邊是相同的輸出，只是做了方便觀看的排版）：

`0041:  `
`   ––––––––`
`   ––––––––`
`   ––––––––`
`   ––––––––`
`   –––##–––`
`   ––#––#––`
`   ––#––#––`
`   –#––––#–`
`   –#––––#–`
`   –######–`
`   –#––––#–`
`   –#––––#–`
`   –#––––#–`
`   –#––––#–`
`   ––––––––`
`   ––––––––`

`0041:`
`   – – – – – – – –`
`   – – – – – – – –`
`   – – – – – – – –`
`   – – – – – – – –`
`   – – – # # – – –`
`   – – # – – # – –`
`   – – # – – # – –`
`   – # – – – – # –`
`   – # – – – – # –`
`   – # # # # # # –`
`   – # – – – – # –`
`   – # – – – – # –`
`   – # – – – – # –`
`   – # – – – – # –`
`   – – – – – – – –`
`   – – – – – – – –`

這可以在文字編輯器中進行編輯，然後再使用同樣的工具轉換回十六進位的字串。其目標是創造一個中間格式以方便加入新字形。

## 向量

Luis Alejandro Gonzalez
Miranda寫了指令稿以進行向量化及使用[FontForge轉換BDF格式](https://zh.wikipedia.org/wiki/FontForge "wikilink")（unifont.bdf）至[TrueType格式](../Page/TrueType.md "wikilink")\[2\]。Paul
Hardy調整了這些指令稿以處理最新的TrueType版本的組合字母（像是重音符號等）\[3\]。

## 歷史

Roman Czyborra在1998年創造了Unifont格式\[4\]，但更早期的努力可以追溯至1994年。

2008年，Luis Alejandro González Miranda寫了把這個字型轉換成TrueType字型的程式。Paul
Hardy在稍後修改它以支援在新版TrueType中的組合字母。

最後，[理查德·斯托曼在](../Page/理查德·斯托曼.md "wikilink")2013年10月接受Unifont成為一個GNU軟體包，而Paul
Hardy是它的維護者。

## 參考資料

  - Unicode協會： *The Unicode 5.0 Standard*. 5th, Addison Wesley 2007;
    ISBN 0-321-48091-0.

## 外部連結

  - [GNU專案檔案庫](https://ftp.gnu.org/gnu/unifont/)
  - [在Unifoundry.com上的GNU Unifont頁面](http://unifoundry.com/unifont.html)

[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink")
[Category:開源字型](https://zh.wikipedia.org/wiki/Category:開源字型 "wikilink")

1.
2.
3.
4.  [Roman Czyborra's GNU Unifont page](http://czyborra.com/unifont/)