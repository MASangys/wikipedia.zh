[ROT13_table_with_example.svg](https://zh.wikipedia.org/wiki/File:ROT13_table_with_example.svg "fig:ROT13_table_with_example.svg")

**ROT13**（**迴轉13位**，****，有時中間加了個[连字符稱作](https://zh.wikipedia.org/wiki/连字符 "wikilink")**ROT-13**）是一種簡易的[替換式密碼](https://zh.wikipedia.org/wiki/替換式密碼 "wikilink")。它是一種在英文[網路論壇用作隱藏](../Page/网络论坛.md "wikilink")[八卦](https://zh.wikipedia.org/wiki/劇情透露 "wikilink")（spoiler）、[妙句](https://zh.wikipedia.org/wiki/妙句 "wikilink")、謎題解答以及某些[髒話的工具](../Page/髒話.md "wikilink")，目的是逃過版主或管理员的匆匆一瞥。ROT13被描述成「雜誌[字謎上下顛倒解答的](https://zh.wikipedia.org/wiki/字謎 "wikilink")[Usenet對等體](../Page/Usenet.md "wikilink")」。（Usenet
equivalent of a magazine printing the answer to a quiz upside
down.）\[1\] ROT13
也是過去在[古羅馬開發的](../Page/古罗马.md "wikilink")[凱撒加密的一種變體](../Page/凱撒密碼.md "wikilink")。

ROT13是它自己本身的[逆反](../Page/反函數.md "wikilink")；也就是說，要還原ROT13，套用加密同樣的演算法即可得，故同樣的操作可用再加密與解密。該演算法並沒有提供真正的[密碼學上的保全](../Page/密码学.md "wikilink")，故它不應該被套用在需要保全的用途上。它常常被當作弱加密範例的典型。ROT13激勵了廣泛的線上書信撰寫與字母遊戲，且它常於[新聞群組對話中被提及](https://zh.wikipedia.org/wiki/新聞群組 "wikilink")。

## 描述

套用ROT13到一段文字上僅僅只需要檢查字元字母順序並取代它在13位之後的對應[字母](../Page/字母系統.md "wikilink")，有需要超過時則重新繞回26英文字母開頭即可\[2\]。
`A`換成`N`、`B`換成`O`、依此類推到`M`換成`Z`，然後序列反轉：`N`換成`A`、`O`換成`B`、最後`Z`換成`M`。只有這些出現在[英文字母裡頭的字元受影響](../Page/英文字母.md "wikilink")；[數字](../Page/數字.md "wikilink")、[符號](../Page/符号.md "wikilink")、[空白字元以及所有其他字元都不變](https://zh.wikipedia.org/wiki/空白字元 "wikilink")。因為只有在英文字母表裡頭只有26個，並且26
= 2 × 13，ROT13函數是它自己的[逆反](../Page/反函數.md "wikilink")：\[3\]

  -
    對任何字元 *x*：
    \(\mbox{ROT}_{13}(\mbox{ROT}_{13}(x))=\mbox{ROT}_{26}(x)=x\)。

換句話說，兩個連續的ROT13應用函式會回復原始文字（在[數學上](../Page/数学.md "wikilink")，這有時稱之為[對合](../Page/對合.md "wikilink")（involution）；在密碼學上，這叫做[對等加密](https://zh.wikipedia.org/wiki/對等加密 "wikilink")（reciprocal
cipher））。

轉換可以利用[查找表完成](../Page/查找表.md "wikilink")，如下例所示：

|                                                        |
| ------------------------------------------------------ |
| `ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz` |
| `NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm` |

例如，下面的英文笑話，精華句為ROT13所隱匿：

`How can you tell an extrovert from an`
`introvert at `[`NSA`](../Page/美国国家安全局.md "wikilink")`? Va gur ryringbef,`
`gur rkgebireg ybbxf ng gur BGURE thl'f fubrf. `

透過ROT13表格轉換整片文字，該笑話的解答揭露如下：

`Ubj pna lbh gryy na rkgebireg sebz na`
`vagebireg ng AFN? In the elevators,`
`the extrovert looks at the OTHER guy's shoes.`

第二次ROT13函數將轉回原始文字。

## 用途

ROT13過去在1980年代早期的net.jokes[新聞群組裡使用](https://zh.wikipedia.org/wiki/新聞群組 "wikilink")\[4\]。它被用來隱藏某些可能侮辱到特定讀者的笑話、隱晦某個謎題的答案或八卦性的內容。\[5\]\[6\]。之所以選一次13個字母的位移而不是其他值（例如原本凱撒加密裡的3字母位移）乃因13位這個值剛剛好加密解密都是一樣，故只要一行命令就可以簡潔的滿足兩者需要\[7\]。ROT13一般是[新聞閱讀軟體內建支援的功能](https://zh.wikipedia.org/wiki/新聞閱讀軟體 "wikilink")\[8\]。電子郵件位址有時也以ROT13編碼以躲過較不複雜的[垃圾郵件機器人耳目](https://zh.wikipedia.org/wiki/垃圾郵件機器人 "wikilink")。\[9\]

ROT13是凱撒密碼[加密演算法的特例](https://zh.wikipedia.org/wiki/加密 "wikilink")。西元前一世紀[尤利烏斯·凱撒發明凱薩加密法](../Page/尤利烏斯·凱撒.md "wikilink")\[10\]。

ROT13並不意圖用在重視[機密性的場合](https://zh.wikipedia.org/wiki/保密 "wikilink")。固定位移的使用意味著該加密實際上並沒有[金鑰](https://zh.wikipedia.org/wiki/金鑰_\(密碼學\) "wikilink")，而且解碼不需要對ROT13實際上的使用有較深了解。即使沒有ROT13使用的知識，該演算法也相當容易透過[頻率分析破解](../Page/频率分析.md "wikilink")\[11\]。正因為其完全不適合真正的機密用途，ROT13已經變成了一種警句，用來影射任何顯著的弱[加密體](https://zh.wikipedia.org/wiki/加密 "wikilink")-{系}-；例如批評家可能會這樣說：「56位元[DES這些日子以來只比ROT](../Page/資料加密標準.md "wikilink")13要好一點。」另外，作為對真正術語像“雙重DES”的嘲諷，半路殺出的術語“雙重ROT13”、“ROT26”、“2ROT13”、以及玩笑性質的學術論文「關於2ROT13加密演算法」\[12\]
都閃爍著幽默的心思。因為套用ROT13到已經加密過的ROT13文字，將會打回原形；也就是說，ROT26等於沒有加密。延伸下去，三重ROT13（用來取笑其對比的
3DES）等同於1次ROT13而已。

於1999年12月，人們發現[網景通訊家利用ROT](../Page/網景通訊家.md "wikilink")13作為其儲存email密碼的不安全體-{系}-。\[13\]。在2001年，俄羅斯程式設計師[狄米區·史蓋里亞羅夫](https://zh.wikipedia.org/wiki/狄米區·史蓋里亞羅夫 "wikilink")（Dimitry
Sklyarov）展示[eBook販賣商](https://zh.wikipedia.org/wiki/eBook "wikilink")[New
Paradigm Research
Group](https://zh.wikipedia.org/wiki/New_Paradigm_Research_Group "wikilink")（NPRG）使用ROT13來對它們的文件加密；據推測NPRG可能把ROT13玩具樣本——跟著[Adobe](https://zh.wikipedia.org/wiki/Adobe_Systems "wikilink")
eBook[软件开发工具包一起提供](../Page/软件开发工具包.md "wikilink")——用錯在重大加密體-{系}-上。\[14\][Windows
XP也在某些注册表键上使用ROT](../Page/Windows_XP.md "wikilink")13。\[15\]

## 字母遊戲與網路文化

<table>
<tbody>
<tr class="odd">
<td><p><code>abcdefghijklmnopqrstuvwxyz</code><br />
<code>NOPQRSTUVWXYZABCDEFGHIJKLM</code></p></td>
</tr>
<tr class="even">
<td><p><code>aha</code> ↔︎ <code>nun</code></p></td>
</tr>
<tr class="odd">
<td><p><code>balk</code> ↔︎ <code>onyx</code></p></td>
</tr>
<tr class="even">
<td><p><code>barf</code> ↔︎ <code>ones</code></p></td>
</tr>
<tr class="odd">
<td><p><code>bin</code> ↔︎ <code>ova</code></p></td>
</tr>
<tr class="even">
<td><p><code>envy</code> ↔︎ <code>rail</code></p></td>
</tr>
<tr class="odd">
<td><p><code>errs</code> ↔︎ <code>reef</code></p></td>
</tr>
<tr class="even">
<td><p><code>fur</code> ↔︎ <code>she</code></p></td>
</tr>
<tr class="odd">
<td><p><code>gnat</code> ↔︎ <code>tang</code></p></td>
</tr>
<tr class="even">
<td><p><code>clerk</code> ↔︎ <code>pyrex</code></p></td>
</tr>
<tr class="odd">
<td><p><code>PNG</code> ↔︎ <code>cat</code></p></td>
</tr>
<tr class="even">
<td><p><code>furby</code> ↔︎ <code>sheol</code></p></td>
</tr>
<tr class="odd">
<td><p><code>what</code> ↔︎ <code>Jung</code></p></td>
</tr>
<tr class="even">
<td><p><code>purpura</code> ↔︎ <code>Chechen</code></p></td>
</tr>
</tbody>
</table>

ROT13為[字母遊戲提供了良機](https://zh.wikipedia.org/wiki/字母遊戲 "wikilink")。許多字經過ROT13轉換後，會產生另一個字。[英文裡字最長的範例是一組](../Page/英语.md "wikilink")7個字母的字
`abjurer` 與 `nowhere`；另一組七字母的是`chechen` 與 `purpura`。其他字的範例如表中所示。\[16\]

1989年[国际C语言混乱代码大赛](../Page/国际C语言混乱代码大赛.md "wikilink")（IOCCC）收錄了一個來自[布來恩·衛斯里](https://zh.wikipedia.org/wiki/布來恩·衛斯里 "wikilink")（Brian
Westley）的作品。衛斯里的[计算机程序可被ROT](../Page/计算机程序.md "wikilink")13編解碼，並且仍舊正確的通過[編譯](../Page/編譯器.md "wikilink")。該程式主要是進行ROT13編碼，或者反過來解碼其輸入。\[17\]

新聞群組alt.folklore.urban創造了生字：`furrfu`，該字是常用狀聲辭「噓」（sheesh）的ROT13編碼。「`Furrfu`」在1992年中期首度出現。當時在alt.folklore.urban新聞群組裡許多[都會傳奇的眾多水帖裡](https://zh.wikipedia.org/wiki/現代傳說 "wikilink")，新手過度使用「Sheesh\!」而遭到某些發帖人抱怨，而這些新手對此所作的回應。\[18\]

## 變體

ROT47是ROT13的衍生物，它除了打亂基本字母外，也對數字與常見符號做處理。除了使用`A–Z`系列外，ROT47使用範圍較廣的[ASCII字符集](../Page/ASCII.md "wikilink")。具體而言，所有7-bit可列印字元，除空白以外，從十進位
33 '`!`' 到 126
'`~`'都被毫無保留的用來做47位循環。使用較廣的字母集原意是產生比ROT13更徹底的亂碼，不過因為ROT47無差別地將數字與符號混合導入，導致這種方式較容易看出某串文字被動過手腳。

ROT47的範例：
`The Quick Brown Fox Jumps Over The Lazy Dog.`
...加密成為...
`%96 "F:4< qC@H? u@I yF>AD ~G6C %96 {2KJ s@8]`

[程序设计裡標準的](../Page/程序设计.md "wikilink")[GNU C
函式庫包含了一個](https://zh.wikipedia.org/wiki/GNU_C_函式庫 "wikilink")[函式](../Page/子程序.md "wikilink")
—**`memfrob()`**\[19\]—
它與ROT13有類似的效果，儘管該函式使用對象是任意雙位元組資料。`memfrob()`透過每個[位元與](../Page/位元.md "wikilink")[雙位元模板](https://zh.wikipedia.org/wiki/二进制 "wikilink")00101010（[42](../Page/42.md "wikilink")）做[互斥](https://zh.wikipedia.org/wiki/互斥 "wikilink")（XOR）運算合併。這個效果是一種簡單的[XOR操作](https://zh.wikipedia.org/wiki/互斥 "wikilink")。與ROT13相似，
`memfrob()`也是自我逆反的，故提供的保全程度好不到哪裡去。

## 參見

  - [密码分析](../Page/密码分析.md "wikilink")

## 注釋與參考資料

## 外部連結

  - ROT5 與 ROT13
    [線上轉換器](http://rot13.de/)（不用[JavaScript](../Page/JavaScript.md "wikilink")）
  - [各種程式語言版本的ROT13軟體](https://web.archive.org/web/20081003231752/http://www.miranda.org/~jkominek/rot13/)
    —
    包括[SSH補丁讓它加入ROT](../Page/Secure_Shell.md "wikilink")13支援，以及對映的密碼分析工具，用來自動分別ROT13文字與純文字。
  - [在線的ROT13加密解密工具](http://www.mxcz.net/tools/rot13.aspx)。

[Category:古典密码](https://zh.wikipedia.org/wiki/Category:古典密码 "wikilink")
[Category:网络文化](https://zh.wikipedia.org/wiki/Category:网络文化 "wikilink")

1.

2.

3.
4.  早期ROT13的使用可從[Google
    USENET存檔資料回溯至](https://zh.wikipedia.org/wiki/Google_USENET "wikilink")1982年10月8日當日張貼`net.jokes`新聞群組的帖子
    [1](http://groups.google.com/groups?selm=bnews.desoto.299)[2](http://groups.google.com/groups?selm=bnews.utcsrgv.596)。

5.
6.

7.
8.
9.

10.

11.
12.

13.

14.

15.

16.

17.

18.

19.