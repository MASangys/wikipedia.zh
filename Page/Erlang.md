[LYME_software_bundle.svg](https://zh.wikipedia.org/wiki/File:LYME_software_bundle.svg "fig:LYME_software_bundle.svg")'''
is **Erlang**-based\]\]

**Erlang**（）是一種通用的-{zh-hans:并发;zh-hant:平行導向;}--{zh-hans:[程序设计语言](../Page/编程语言.md "wikilink");zh-hant:[程式語言](https://zh.wikipedia.org/wiki/程式語言 "wikilink");}-，它由[喬·阿姆斯特朗](../Page/喬·阿姆斯特朗.md "wikilink")（Joe
Armstrong）在[瑞典電信設備製造商](../Page/瑞典.md "wikilink")[愛立信所轄的電腦科學研究室開發](../Page/愛立信.md "wikilink")，目的是創造一種可以應付大規模并發活動的-{zh-hans:[程序设计语言](https://zh.wikipedia.org/wiki/程序设计语言 "wikilink");zh-hant:[程式語言](https://zh.wikipedia.org/wiki/程式語言 "wikilink");}-和[執行環境](https://zh.wikipedia.org/wiki/執行環境 "wikilink")。Erlang於1987年釋出正式版本，最早是愛立信擁有的私有軟體，經過十年的發展，於1998年發表[開放源碼版本](https://zh.wikipedia.org/wiki/開放源代碼 "wikilink")。

Erlang是運作於[虛擬機的](https://zh.wikipedia.org/wiki/虛擬機 "wikilink")-{zh-hans:[解释型语言](https://zh.wikipedia.org/wiki/直譯式語言 "wikilink");zh-hant:[直譯式語言](https://zh.wikipedia.org/wiki/直譯式語言 "wikilink");}-，但是現在也包含有[烏普薩拉大學高性能Erlang計劃](https://zh.wikipedia.org/wiki/烏普薩拉大學 "wikilink")（HiPE）\[1\]開發的原生程式碼[編譯器](../Page/編譯器.md "wikilink")，自R11B-4版本開始，Erlang也支持-{zh-hans:[脚本方式执行](../Page/脚本语言.md "wikilink");zh-hant:[腳本直譯器](https://zh.wikipedia.org/wiki/脚本語言 "wikilink");}-。在[編程範型上](https://zh.wikipedia.org/wiki/編程範型 "wikilink")，Erlang屬於多重典範程式語言，涵蓋[函數式](https://zh.wikipedia.org/wiki/函數式編程 "wikilink")、-{zh-hans:[并行](https://zh.wikipedia.org/wiki/Concurrent_computing "wikilink");zh-hant:[平行式](https://zh.wikipedia.org/wiki/Concurrent_computing "wikilink");}-及-{zh-hans:[分布式](https://zh.wikipedia.org/wiki/分布式計算 "wikilink");zh-hant:[分散式](https://zh.wikipedia.org/wiki/分布式計算 "wikilink");}-。循序執行的Erlang是一个[及早求值](https://zh.wikipedia.org/wiki/及早求值 "wikilink"),
[單次賦值和](https://zh.wikipedia.org/wiki/單次賦值 "wikilink")-{zh-hans:[动态类型](https://zh.wikipedia.org/wiki/动态类型 "wikilink");zh-hant:[動態資料形態](../Page/類型系統.md "wikilink");}-的[函數式程式語言](https://zh.wikipedia.org/wiki/函數編程語言 "wikilink")。

## 開發及演變歷史

Erlang得名於[丹麥](https://zh.wikipedia.org/wiki/丹麥 "wikilink")[數學家及](https://zh.wikipedia.org/wiki/數學家 "wikilink")[統計學家Agner](https://zh.wikipedia.org/wiki/統計學家 "wikilink")
Krarup *Erlang*，同時Erlang還可以表示*Er*icsson
*Lang*uage。Erlang語言由瑞典愛立信電信公司的[喬·阿姆斯特朗開始設計](../Page/喬·阿姆斯特朗.md "wikilink")，開始於公元一九八零年代。最初是以[Prolog](../Page/Prolog.md "wikilink")-{zh-hans:程序设计语言;
zh-hant:程式語言;}-為基礎，幾度改版之後，改成以Joe's Abstract
Machine為基礎的獨立語言執行環境。雖然語言風格仍與[Prolog相近](../Page/Prolog.md "wikilink")，不過因Erlang語言設計的走向，Erlang成為具备函數語言特色的-{zh-hans:程序设计语言;
zh-hant:程式語言;}-\[2\]。

### 發行版本

1998年起，Erlang發布[開放源碼版本](https://zh.wikipedia.org/wiki/開放源代碼 "wikilink")，稱為[開源電信平台](https://zh.wikipedia.org/wiki/開源電信平台 "wikilink")。**開源電信平台**採用修改過的[Mozilla公共許可證協議發放](https://zh.wikipedia.org/wiki/Mozilla公共許可證 "wikilink")，同時爱立信仍然提供商業版本的技術支持。目前，Erlang最大的商業用户是爱立信，其他知名用户有[北電網路](../Page/北电网络.md "wikilink")、[-{zh-hans:亚马逊;
zh-hant:亞瑪遜}-以及](https://zh.wikipedia.org/wiki/Amazon.com "wikilink")[T-Mobile等](../Page/T-Mobile.md "wikilink")\[3\]。

### 語言特色

  - **-{zh-hans:并行程序设计;zh-hant:平行導向程式設計;}-**
    在語言中，可以藉由spawn/\*函數，將特定的函數設定為獨立的-{zh-hans:进程;
    zh-hant:行程;}-，之後可以做跨-{zh-hans:进程;zh-hant:行程;}-通訊。
  - **函數式-{zh-hans:程序;zh-hant:程式;}-設計**
    由於Erlang早期以Prolog開發製成，受語言特性影響，即成為函數式語言。
  - **單次賦值** 每個-{zh-hans:变量;
    zh-hant:變數}-只能跟-{zh-hans:数据;zh-hant:資料;}-綁一次，所以，不像一般-{zh-hans:程序设计语言;zh-hant:程式語言;}-的-{zh-hans:变量;zh-hant:變數;}-可以多次指定為不同的值。單次賦值的好處是狀態單純，使-{zh-hans:程序;zh-hant:程式;}-容易閱讀。
  - **[及早求值或嚴格求值](https://zh.wikipedia.org/wiki/及早求值 "wikilink")**
    Erlang基本求值策略為電腦語言中及早求值之特性。而且，可以藉由明確使用無參數的-{zh-hans:λ表达式;zh-hant:λ演算式;}-，將特定函數設定為惰性求值策略。
  - **-{zh-hans:动态数据类型;zh-hant:動態資料型態;}-與類型系統**
    有編譯時期的-{zh-hans:类型;zh-hant:型態;}-檢查系統-{zh-hans:支持;zh-hant:支援;}-。
  - **-{zh-hans:[快速失败](https://zh.wikipedia.org/wiki/Fail-fast "wikilink");zh-hant:[錯誤先發](https://zh.wikipedia.org/wiki/Fail-fast "wikilink");}-**
    在執行時期發生的錯誤，會由錯誤位置送出訊息，發生錯誤的-{zh-hans:进程;zh-hant:行程;}-立刻停止-{zh-hans:执行;zh-hant:動作;}-。藉由-{zh-hans:进程通讯机制;zh-hant:行程鏈通機制;}-，可以自動傳遞錯誤、捕捉錯誤，使其他-{zh-hans:进程;zh-hant:行程;}-能夠幫助處理錯誤。
  - **-{zh-hans:代码;zh-hant:程式碼;}-熱更新**
    由於Erlang是函數語言，可以撰寫特定的-{zh-hans:程序结构;zh-hant:程式結構;}-，製作即時更換新版函數的機制。
  - **腳本語言** Erlang實作提供了腳本執行方式。

## 語言構成

Erlang-{zh-hans:程序;zh-hant:程式;}-結構以函數定義為主。函數是一組將輸入分別對應到輸出的規則，對應方式遵守[數學函數的慣例](https://zh.wikipedia.org/wiki/函數 "wikilink")。此外，Erlang語言由幾項構句要素所組成，包括[文字(或稱原子)](https://zh.wikipedia.org/wiki/文字_\(數理邏輯\) "wikilink")、數字、列表、[值組](https://zh.wikipedia.org/wiki/多元組 "wikilink")、字元、字串、二進位資料、模組、與特定用途的關鍵字如fun
... end, if ... end, case ... of ... end, spawn, \!, receive ...
end等等。以下段落分別列示並舉例說明Erlang程式的基本構成部份，涵蓋**資料格式**、**表達式格式**與**內建函數**。

### 資料格式

<table>
<thead>
<tr class="header">
<th><p>類型</p></th>
<th><p>意義與構詞規則</p></th>
<th><p>例子</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>原子</p></td>
<td><p>原子是基本資料單元，以一般文字構成。構詞規則有：</p>
<ol>
<li>以小寫英文字元開頭、不包含空白的連續文字。</li>
<li>以單引號包含的任意連續文字。</li>
</ol></td>
<td><ul>
<li>hello</li>
<li>'Hello, World!'</li>
<li>true</li>
<li>a3b</li>
</ul></td>
</tr>
<tr class="even">
<td><p>數字</p></td>
<td><p>數字是基本資料單元，可以是整數或實數。</p>
<ol>
<li>連續數字符號。</li>
<li>包含一個小數點的連續數字符號，並不以小數點開頭也不以小數點結尾。</li>
<li>符合前二項原則，並以 + 或 - 符號開頭。</li>
<li>以#分割的数字，前者将表示进制。</li>
</ol></td>
<td><ul>
<li>302</li>
<li>3.1416</li>
<li>+1</li>
<li>-2</li>
<li>16#10</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>列表</p></td>
<td><p>列表是與<a href="https://zh.wikipedia.org/wiki/連結串列" title="wikilink">鏈接序列相同的資料結構</a>。任一列表大致區分為頭部與尾部，頭部是列表的第一項，尾部是列表除第一項之外的其他部份。</p>
<ol>
<li>左邊以 [ 、右邊以 ] 符號，包含一串以逗號分隔的零或多項構句要素。</li>
<li>符合前項原則，當存在任一 | 符號時， | 的左邊有一串逗號分隔的構句要素， | 的右邊只有一個構句要素。</li>
</ol></td>
<td><ul>
<li>[]</li>
<li>[1,2,3]</li>
<li>[ [1],2|[] ]</li>
</ul></td>
</tr>
<tr class="even">
<td><p>值組</p></td>
<td><p>值組是將二個、三個或多個資料放在一起的資料結構。</p>
<ul>
<li>左邊以 { 、右邊以 } 符號，包含一串以逗號分隔的零或多項構句要素。</li>
</ul></td>
<td><ul>
<li>{}</li>
<li>{{1},2}</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>字元</p></td>
<td><p>Erlang將字元存為32位元的整數。</p>
<ol>
<li>任何可見的字元，以 $ 開頭、後接該字元符號，即表示字元本身。</li>
<li>任何不可見的字元，可使用以 $ 開頭、後接該字元符號的<a href="https://zh.wikipedia.org/wiki/转义序列" title="wikilink">-{zh-tw:逸出序列表達</a>。</li>
</ol></td>
<td><ul>
<li>$3</li>
<li>$)</li>
<li>$\012</li>
<li>$\x0A</li>
<li>$\n</li>
</ul></td>
</tr>
<tr class="even">
<td><p>字串</p></td>
<td><p>Erlang將字串視同一列整數列表。</p>
<ol>
<li>以雙引號包含任意多個文字，即為字串。</li>
<li>以一列整數列表表達，使其中每個整數項目都落在合理的字元的值範圍，此列也是字串。</li>
</ol></td>
<td><ul>
<li>"Hello, World!"</li>
<li>[65,66,67]</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>二進位資料</p></td>
<td><p>以左邊 &lt;&lt; 、右邊 &gt;&gt; 符號，包含由<a href="http://www.erlang.org/doc/reference_manual/expressions.html#bit_syntax">位元語法</a>表示的資料。</p></td>
<td><ul>
<li>&lt;&lt;"Hello, World!"&gt;&gt;</li>
<li>&lt;&lt;65:8,66:8,67:8&gt;&gt;</li>
</ul></td>
</tr>
<tr class="even">
<td><p>函數識別項</p></td>
<td><p>Erlang容許用文字表示函數識別項，使程式中可以對指定函數做函數呼叫，或者當做資料傳遞。函數識別項格式為：</p>
<ul>
<li>fun 函數名稱/參數數目</li>
</ul></td>
<td><ul>
<li>fun a_function/3</li>
</ul>
<p>用途見以下「函數式程式設計」小節。</p></td>
</tr>
<tr class="odd">
<td><p>程序代號</p></td>
<td><p>Erlang容許以內建函數erlang:spawn/3、erlang:spawn/4、erlang:spawn/1、erlang:spawn/2等等，將指定函數啟動為一個程序。程序啟動之後，Erlang以左邊 &lt; 、右邊 &gt; ，包含一個數字和點號組成的編號，表示此程序代號。</p></td>
<td><p>見以下「平行式程式設計」小節。</p></td>
</tr>
<tr class="even">
<td><p>模組</p></td>
<td><p>Erlang容許將一些程式整理為一個模組。模組的設定，是在源碼檔案開頭書寫模組標記，格式為：</p>
<p><code>-module(模組名稱).</code><br />
<code>-export( [ 函數名稱/參數數目 , 函數名稱/參數數目 , ... ] ).</code><br />
<code>-import( 模組名稱, [ 函數名稱/參數數目 , 函數名稱/參數數目 , ... ] ).</code></p>
<p>模組名稱和函數名稱都是原子。 -module(模組名稱) 定義模組的名字，要與檔名相同。 -export( ... ) 定義模組釋出的函數，模組內的任何函數必須要釋出才能讓外部透過模組呼叫該函數。 -import( ... ) 定義本模組要從其他模組匯入哪些函數，以便本模組自己使用。另外，為了方便程式的撰寫並測試，還容許 -compile(export_all) 定義本模組的所有函數全部對外釋出。</p>
<p><code>-compile(export_all).</code></p></td>
<td><p>(略)</p></td>
</tr>
<tr class="odd">
<td><p>巨集</p></td>
<td><p>巨集是將一項資料以另一個文字做為代名。</p>
<ul>
<li>定義巨集的語法是：</li>
</ul>
<p><code>-define ( 代名 , 資料 ).</code></p>
<ul>
<li>使用巨集的語法是：</li>
</ul>
<p><code>? 代名</code></p>
<ul>
<li>Erlang有一些內定語法，例如模組名稱為</li>
</ul>
<p><code>?MODULE</code></p></td>
<td><ul>
<li>-define(hello, world).</li>
</ul>
<dl>
<dt></dt>
<dd>test() -&gt; ?hello.
</dd>
</dl></td>
</tr>
</tbody>
</table>

### 表達式格式

<table>
<thead>
<tr class="header">
<th><p>類型</p></th>
<th><p>構詞規則</p></th>
<th><p>例子</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>變數</p></td>
<td><p>變數是一種提供與資料綁定、賦值的詞彙。Erlang的變數是單一賦值，一個變數只能賦值一次。</p>
<ol>
<li>以大寫英文字元開頭的任意連續文字，是具名變數。</li>
<li>以 _ 開頭的任意連續文字，是匿名變數，用於變數必須使用、但相對的值可以忽略的場合。</li>
</ol></td>
<td><ul>
<li>Number1</li>
<li>_</li>
<li>_nothing</li>
</ul></td>
</tr>
<tr class="even">
<td><p>樣式匹配</p></td>
<td><ol>
<li>樣式是指以原子、列表或值組表達的結構，結構中可能包含一些未賦值的變數。</li>
<li>給二個樣式 A 和 B ，樣式匹配是用 A = B 表示法，表示要讓 A 對 B 匹配。如果匹配成功， A 包含的未賦值變數都會賦值，並且傳回 B 的值。</li>
</ol></td>
<td><ul>
<li>A = 42</li>
<li>{ok, Node} = {ok, 'Wikipedia'}</li>
<li>[H|T] = [1,2,3]</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>函數</p></td>
<td><p>函數是由一或多項對應規則組成。每一項規則是將一部份匹配樣式的輸入映射到相對的輸出。</p>
<ul>
<li>規則：格式為</li>
</ul>
<p><code>  原子 ( 變數 , 變數 , ... ) -&gt; 表達式 , 表達式 , ...</code><br />
<code>在 -&gt; 左邊是函數名稱及搭配的參數列，右邊為函數本體。</code></p>
<ul>
<li>函數：格式為</li>
</ul>
<p><code>  規則 ; 規則 ; ... ; 規則 .</code><br />
<code>以分號分隔一或多項規則，並最後以句號結束。</code><br />
<code>同一函數的每一規則必須以相同的原子開頭，並接受相同數量的</code><br />
<code>參數列。</code></p>
<p>函數被呼叫時，會讓呼叫方依序對被呼叫方的每一條函數規則做樣式匹配，比對函數名稱、參數數目、參數樣式等等。首先完成匹配的函數規則會被執行，並且後面的函數規則會被忽略。</p></td>
<td><p>見以下「函數式程式設計」小節</p></td>
</tr>
<tr class="even">
<td><p>函數呼叫</p></td>
<td><p>格式為</p>
<p><code>  原子 ( 資料 , 資料 , ... )</code><br />
<code>表示函數名稱及搭配的參數列。呼叫符合函數名稱及</code><br />
<code>相同參數數目的函數。</code></p>
<p>函數呼叫時，所給予的參數可能是已賦值的變數。並且，如果參數是變數，必須是已賦值的變數。</p></td>
<td><p>見以下「函數式程式設計」小節</p></td>
</tr>
<tr class="odd">
<td><p>真值比較</p></td>
<td><ul>
<li>比較運算：</li>
</ul>
<dl>
<dt></dt>
<dd>{|
</dd>
</dl></td>
<td></td>
</tr>
<tr class="even">
<td><p>==</p></td>
<td><p>相等</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>/=</p></td>
<td><p>不相等</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>=&lt;</p></td>
<td><p>小於或等於</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>&lt;</p></td>
<td><p>小於</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>&gt;=</p></td>
<td><p>大於或等於</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>&gt;</p></td>
<td><p>大於</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>=:=</p></td>
<td><p>確實相等</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>=/=</p></td>
<td><p>確實不相等</p></td>
<td></td>
</tr>
</tbody>
</table>

  - 真值運算：

`:{|`
`|-`
`| not`
`| 非`
`|-`
`| and`
`| 且`
`|-`
`| or`
`| 或`
`|-`
`| xor`
`| 非此即彼`
`|-`
`| orelse`
`| 或 (`[`捷徑求值`](../Page/短路求值.md "wikilink")`)`
`|-`
`| andalso`
`| 且 (捷徑求值)`
`|}`

真值比較的結果，如果成功則傳回true原子，失敗則傳回false原子。

請記得，Erlang是以true和false表示[布林資料類型](https://zh.wikipedia.org/wiki/布尔型 "wikilink")。
| (略) |- | 運算子 | Erlang提供常用的運算子方便基本運算。運算子是用在**中序**的表達式裏，包含 + - \* /
div(商) rem(餘) 等。位元算算有 bnot, band, bor, bxor, bsl(算術左移), bsr(算術右移)
等。用於列表有 ++(列表銜接) --(列表剔除) 等。各種運算式皆可用 ( ) 調整運算優先順序。 | (略) |- |
[防衛式](http://en.wikipedia.org/wiki/Guard_\(computing\)) |
防衛式是接在when關鍵字之後的一組表達式，藉由防衛式的真偽值做程式控制處理。
防衛式的原則如下方所述：

1.  代表true或false的變數或原子，是防衛式。
2.  任何真值運算式，包括比較算式和邏輯算式，是防衛式。
3.  傳回true或false的函數呼叫，是防衛式。
4.  以逗號分隔的多個防衛式，是防衛式。

|

  - false
  - A =\< 10
  - erlang:is_number(N), erlang:is_atom(A)

|- | 受防衛式限制的函數 | 函數對應規則格式為：

`  原子 ( 變數 , 變數 , ... ) -> 表達式 , 表達式 , ...`

若一條函數規則加上防衛式，此規則的處理範圍會多一些限制。受防衛式限制的函數對應規則格式為：

`  原子 ( 變數 , 變數 , ... ) when 防衛式 -> 表達式 , 表達式 , ...`

|

  - atom_pair(A, B) when is_atom(A), is_atom(B) -\> {A, B}.

|- | 行後註解 | 任何 % 符號開頭，往後到行尾的文字皆為註解文字。 | 'H.W.'. % Hello, World\! |- |
[λ演算式](../Page/Λ演算.md "wikilink") | λ演算式是匿名函數，在Erlang以 fun ... end
關鍵字敘述。格式為：

`fun ( 變數 , 變數 , ... ) -> 表達式 , 表達式 , ... end`

使用無參數的λ演算式，可以做出[惰性求值的效果](../Page/惰性求值.md "wikilink")。 |

  - (*fun(X)-\>X\>0 end*)(1).

<!-- end list -->

  -
    % (λ x . x \> 0) 1

<!-- end list -->

  - lists:takewhile(

<!-- end list -->

  -
    *fun(X)-\>*
    *X\>0 and X=\<10 end*,
    \[1,5,11\]).

|- | 因果式 | 使用 if ... end 關鍵字敘述條件判斷原則。格式為：

`if 防衛式 -> 表達式, 表達式, ... ;`
`   防衛式 -> 表達式, 表達式, ... ;`
`   ......`
`   防衛式 -> 表達式, 表達式, ...`
`end`

|

  - parse(A) -\>

<!-- end list -->

  -
    if
      -
        is_number(A),
        round(A) == A,
        A \>= 0 -\>
          -
            {natural, A};
        is_number(A) -\>
          -
            {real, A};
        is_atom(A) -\>
          -
            {word, A};
        true -\>
          -
            {unknown, A}
    end.

|- | 案例式 | 使用 case ... of ... end 關鍵字，根據一個變數的案例，帶往相對的處理程序。格式為：

`case 表達式 of`
`   樣式 -> 表達式, 表達式, ... ;`
`   樣式 -> 表達式, 表達式, ... ;`
`   ......`
`   樣式 -> 表達式, 表達式, ...`
`end`

  - 樣式之後可接when防衛式。

|

  - show(A) -\>

<!-- end list -->

  -
    case A of
      -
        {natural, N} -\>
          -
            io:format("Natural number \~.10B is met.\~n", \[N\]);
        {real, R} -\>
          -
            io:format("Real number \~f is met.\~n", \[R\]);
        {word, W} -\>
          -
            io:format("\\"\~w\\" is met.\~n", \[W\]);
        {unknown, U} -\>
          -
            io:format("Unknown structure \~w.\~n", \[U\])
    end.

|- | 試誤 | 使用 try ... catch ... end 關鍵字敘述試誤的情況與結果。格式為：

`try 表達式 of`
`   樣式 -> 表達式, 表達式, ... ;`
`   樣式 -> 表達式, 表達式, ... ;`
`   ......`
`   樣式 -> 表達式, 表達式, ...`
`catch`
`   樣式(例外) -> 表達式, 表達式, ... ;`
`   樣式(例外) -> 表達式, 表達式, ... ;`
`   ......`
`   樣式(例外) -> 表達式, 表達式, ...`
`after`
`   表達式, 表達式, ...`
`end`

  - 不需要使用after段落時，可省略after段落。
  - 樣式之後可接when防衛式。

| (略) |- | 接收訊息 | 每個Erlang程式執行時，都可以從自己程序的郵箱中取得由其他程序送到的訊息。可以使用 receive
... end 關鍵字接收訊息，格式為：

`receive`
`   樣式 -> 表達式, 表達式, ... ;`
`   樣式 -> 表達式, 表達式, ... ;`
`   ......`
`   樣式 -> 表達式, 表達式, ...`
`end`

  - 樣式之後可接when防衛式。

|

  - loop(FromPid, Result) -\>

<!-- end list -->

  -
    receive
      -
        {FromPid, stop} -\>
          -
            Result;
        {FromPid, Any} -\>
          -
            loop(FromPid, \[Any|Result\])
    end.

|- | 發送訊息 | Erlang容許向程序傳送訊息。使用 \! 關鍵字，格式為：

`程序代號 ! 訊息`

  - 訊息可以是各種資料格式。訊息資料格式可以是用各種表達式求出的值。

|

  - Pid = erlang:spawn(

<!-- end list -->

  -
    fun() -\>
      -
        receive
          -
            X -\> X
        end
    end)
      - 以上產生一個程序。

<!-- end list -->

  - Pid \! {hello, world}

:\* 以上對Pid送出訊息。 |- |
[列表解析](http://en.wikipedia.org/wiki/List_comprehension) |
列表解析，是提供快速建立列表的語法。語法等同於[集合建構式](http://en.wikipedia.org/wiki/Set-builder_notation)。格式為：

  - \[ 變數(表達式中的元素) || 變數(表達式中的元素) \<- 表達式 , 防衛式 \]

<!-- end list -->

  -
    若無防衛條件，列表解析中不寫防衛式。

|

  - \[ X || X \<- \[1,2,3\] \]

<!-- end list -->

  -
    運算結果為\[1,2,3\]

|}

### 內建函數

[開源電信平台包括一個Erlang直譯器](https://zh.wikipedia.org/wiki/開源電信平台 "wikilink")、一個Erlang編譯器、程序節點通訊協定、[CORBA](../Page/CORBA.md "wikilink")、一個分散式資料庫[Mnesia](http://en.wikipedia.org/wiki/Mnesia)、以及許多程式庫\[4\]。
**內建函數**涵蓋了各種方面的功能，涵蓋了系統命令、資料存取、格式轉換、網路通訊、圖形介面、 ...
等。以下列表介紹幾項常用的Erlang內建函數。(參閱[文件](http://www.erlang.org/doc/)或[索引](http://www.erlang.org/doc/man_index.html))

<table>
<thead>
<tr class="header">
<th><p>模組:函數名稱 / 參數數目</p></th>
<th><p>用途</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>c:cd / 1</p></td>
<td><p>切換到指定目錄位置。</p>
<p><code>&gt; c:cd("D:\\code").</code><br />
<code>D:/code/</code><br />
<code>ok</code></p>
<p>當指定目錄不正確時，則保持在原目錄位置。</p></td>
</tr>
<tr class="even">
<td><p>c:c / 1</p></td>
<td><p>編譯指定的程式碼，之後載入新編譯好的程式。</p>
<p><code>&gt; c:c(test). % test.erl 必須存在於目錄位置</code><br />
<code>{ok, test}</code><br />
<code>&gt; c:c(test1).</code><br />
<code>./test1.erl:none: ...</code><br />
<code>error</code></p></td>
</tr>
<tr class="odd">
<td><p>io:format / 2</p></td>
<td><p>按照指定的格式文字將資料印在標準輸出埠。</p>
<p><code>&gt; io:format("~.8B, ~c, ~s, ~.2f~n", [32, $a, "hello", 3.1416]).</code><br />
<code>40, a, hello, 3.14</code><br />
<code>ok</code></p></td>
</tr>
<tr class="even">
<td><p>lists:sublist / 3</p></td>
<td><p>由列表中擷取子列表。Erlang字串是整數列表，於是本函數視同擷取子字串。</p>
<p><code>&gt; lists:sublist("Hello, World!", 2, 2).  </code><br />
<code>"el"</code></p></td>
</tr>
</tbody>
</table>

## Hello World 程式

這是輸出 Hello World 的一種方式：\[5\]

``` erlang
-module(hello).
-export([hello_world/0]).

hello_world() -> io:fwrite("hello, world\n").
```

若要編譯這個程式，將它存為一個名為 hello.erl 的文字檔，然後從 Erlang終端
進行編譯。不要忘了在每個命令的最後加上一個句號（.）。例如：

`Erlang (BEAM) emulator version 4.9.1 [source]`
`Eshell V4.9.1  (abort with ^G)`
`1> c(hello).`
`{ok,hello}`

（在 Unix系統 上，你可以通過在命令列裡輸入 "erl" 來進入 Erlang終端。在 Windows系統 上，你需要打開一個 命令提示符
視窗，然後輸入 "werl"來進入 Erlang終端，或者在程式功能表中找到 Erlang 的圖示。）從 Erlang終端 上運行這個程式：

`2> hello:hello_world().`
`hello, world`
`ok`

## 函數式程式設計

Erlang支持[函數式程式設計的一般特色](https://zh.wikipedia.org/wiki/函數程式語言 "wikilink")，特色包括[單次賦值](https://zh.wikipedia.org/wiki/單次賦值 "wikilink")、[遞迴定義](https://zh.wikipedia.org/wiki/遞歸 "wikilink")、[λ演算與](https://zh.wikipedia.org/wiki/λ演算 "wikilink")[高階函數等等](https://zh.wikipedia.org/wiki/高階函數 "wikilink")。Erlang函数大致寫法如下，以整數[階乘模組为例](../Page/階乘.md "wikilink")：

**`-module`**`(fact).`
**`-export`**`([fac/1]).`

`fac(N) `**`when`**` N > 1 ->`
`    N * fac(N-1);`
`fac(1) ->`
`    1.`

以下是[快速排序演算法的Erlang實作](../Page/快速排序.md "wikilink")：

*`%%``   ``quicksort:qsort(List)`*
*`%%``   ``Sort``   ``a``   ``list``   ``of``   ``items`*
**`-module`**`(quicksort).`
**`-export`**`([qsort/1]).`

`qsort([]) -> [];`
`qsort([Pivot|Rest]) ->`
`    qsort([ X || X <- Rest, X =< Pivot]) ++ [Pivot] ++ qsort([ Y || Y <- Rest, Y > Pivot]).`

以下是[費氏數列求解函數](https://zh.wikipedia.org/wiki/費氏數列 "wikilink")：

**`-module`**`(example).`
**`-export`**`([fibo/1]).`

`fibo(N) `**`when`**` N > 1 ->`
`    fibo(N-1) + fibo(N-2);`
`fibo(1) ->`
`    1;`
`fibo(0) ->`
`    0.`

`> c(example).`
`{ok,example}`
`> lists:map(fun(X)->`**<example:fibo>**`(X) end, lists:seq(1,10)).`
`[1,1,2,3,5,8,13,21,34,55]`

函數式程式設計難免以遞迴計算，而消耗了大量遞迴堆疊空間。為了克服這個問題，一般使用**累積參數**與**尾端遞迴**等技巧節省遞迴數目：如以下例子。

**`-module`**`(test).`
**`-export`**`([fibo_accu/1]).`

`fibo_accu(N) ->`
`    fibo(N, 0, 1).`
`fibo(N, C1, C2) `**`when`**` N > 2 ->`
`    fibo(N-1, C2, C1+C2);`
`fibo(0, _, _) ->`
`    0;`
`fibo(1, _, _) ->`
`    1;`
`fibo(_, C1, C2) ->`
`    C1+C2.`

`> c(example).`
`{ok,test}`
`> lists:map(fun(X)->`**`test:fibo_accu`**`(X) end, lists:seq(1,10)).`
`[1,1,2,3,5,8,13,21,34,55]`

函數式程式設計容許使用[高階函數求解](https://zh.wikipedia.org/wiki/高階函數 "wikilink")。以下例子說明Erlang實做[複合函數](https://zh.wikipedia.org/wiki/複合函數 "wikilink")。
( f o g ，唸作 f *after* g 。)

`'After'(F, G) ->`
`     fun(X) ->`
`         erlang:apply(F, [erlang:apply(G, [X])])`
`     end.`

:\* 請注意**after**是Erlang關鍵字。因此，以上函數命名為′*After*′避開關鍵字。

`> (`**<example:'After>**`'(fun test:show/1, fun test:parse/1))(3.1416).`
`Real number 3.141600 is met.`
`ok`

## 平行式程式設計

Erlang最主要的特色是**平行導向程式設計**，強調多程序平行運作，並且以訊息對彼此溝通。Erlang提供了**spawn**函數和
**\!** 、 **receive** ... **end**
等關鍵字，可以描述在Erlang/開源電信平台中的如何啟動一些程序、並且如何讓程序傳遞訊息。此外，**平行導向程式設計**的精神還強調程序的容錯處理，藉由程序發生錯誤時的訊息傳遞，使其他程序可以得知錯誤的發生，使方便於後續處理。以下分別介紹平行導向程式設計的一般程式撰寫方式，以及錯誤處理的使用方式。

### 平行導向程式設計

基本的平行程式示範如下：

  - 以下啟動一個程序。

*`%``   ``create``   ``process``   ``and``   ``call``   ``the``
 ``function``   ``web:start_server(Port,``   ``MaxConnections)`*
`ServerProcess = `**`spawn`**`(web, start_server, [Port, MaxConnections]),`

  - 以下是在任何程式中，對先前起動的程序送一則訊息 {*pause*, *10*} 。

*`%``   ``send``   ``the``   ``{pause,``   ``10}``   ``message``
 ``(a``   ``tuple``   ``with``   ``an``   ``atom``   ``"pause"``
 ``and``   ``a``   ``number``   ``"10")`*
*`%``   ``to``   ``ServerProcess``   ``(asynchronously)`*
`ServerProcess ! {pause, 10},`

  - 以下是一段接收訊息的程式。每個程序都擁有一份郵箱，可佇留收到的訊息； receive ... end
    程式片斷是從程序的郵箱中取出最早佇留的訊息。

*`%``   ``receive``   ``messages``   ``sent``   ``to``   ``this``
 ``process`*
**`receive`**`       `
`        a_message -> do_something; `
`        {data, DataContent} -> handle(DataContent);`
`        {hello, Text} -> io:format("Got hello message: ~s", [Text]);`
`        {goodbye, Text} -> io:format("Got goodbye message: ~s", [Text])`
**`end`**`.`

`收到 `*`a_message`*` 結果就是 `*`do_something`*` ；收到 {`*`data`*`, `*`DataContent`*`} 結果會呼叫 handle(DataContent) ；`
`收到 {`*`hello`*`, `*`Text`*`} 結果教是印出 "Got hello message: ..." ，收到 {`*`goodbye`*`, `*`Text`*`} 結果是印出`
`"Got goodbye message: ..." 。`

以下程式，示範產生一組環狀傳遞訊息的程序。

`ring_proc(Funs) ->`
`    Ns = lists:seq(1, length(Funs)),`
`    [P|Pids] = [ `**`spawn`**`(`*`?MODULE`*`, lists:nth(Nth,Funs),[]) || Nth <- Ns ],`
`    [ Pid ! ToPid || {Pid, ToPid} <- lists:zip([P|Pids], Pids++[P]) ]. `

`func() ->`
`    `**`receive`**
`   ToPid ->`
`       func_msg_(ToPid)`
`    `**`end`**`.`

`func_msg_(ToPid) ->`
`    `**`receive`**
`   stop ->`
`       io:format("Stop process ~w~n", [self()]),`
`       ToPid ! stop;`
`   Message ->`
`       io:format("~w: transmit message to ~w~n", [self(), ToPid]),`
`       ToPid ! Message,`
`       func_msg_(ToPid)`
`    `**`end`**`.`

`接收`*`stop`*`訊息，就對下一個程序送`*`stop`*`訊息；接收到其他任何訊息，就對下一個程序送同樣的訊息。`

如果傳送任何其他訊息，就會讓所有的程序不斷對下一個程序傳遞訊息。而以下是測試傳送*stop*訊息的執行結果。

`> [`**`P`**`|_] = `**<example:ring_proc>**`([func,func,func]).`
`[<0.233.0>,<0.234.0>,<0.232.0>]`
`> `**`P``   ``!``   ``stop.`**
`Stop process <0.233.0>`
`stop`
`Stop process <0.234.0>`
`> Stop process <0.232.0>`
`>`

### 容錯處理

Erlang容錯處理機制，由二個步驟實現：一是將二個程序連接起來，二者之間存在一道通訊管道，可提供錯誤訊息的傳遞 ──
在此使用**link**/**1**函數；二是將程序回報錯誤的機制打開 ──
在此使用**process_flag**/**2**函數。

  - 使用link(*Pid*)讓程序連接到另一個程序。

`-`**`module`**`(example).`
`-`**`compile`**`(export_all).`
`hello() ->`
`    `*`Pid`*` = spawn(?MODULE, world, []),`
`    link(`*`Pid`*`),`
`    ... .`

`執行時，以 Pid = `**`spawn`**`(`*`example`*`, `*`hello`*`, []) 啟動程序，此程序將啟動另一個程序，並且與它連接。`

  -
    但以上程式還不會有錯誤訊息的傳遞機制，因為回報錯誤的開關還沒有打開。

<!-- end list -->

  - 開啟程序回報錯誤機制。

`以上 hello/0 函數前段使用`**`process_flag`**`/`**`2`**`函數，將`*`trap_exit`*`標籤打開，即可開啟程序回報錯誤機制。`

`hello() ->`
`    `**`process_flag`**`(`*`trap_exit`*`, `*`true`*`),`
`    Pid = spawn(?MODULE, world, []),`
`    link(Pid),`
`    ... .`

於是，當程序結束時，會送出{'EXIT', *From*, *Reason*}資料。程序正常結束時，*Reason*為*normal*。

另外，**spawn**函數另外有程序連接版本，**spawn_link**函數，同時啟動並連接到新程序。

## 分散式程式設計

Erlang提供分散式機制，能在另一台電腦啟動一些Erlang程序，並由本機電腦對其他電腦的Erlang程序傳遞訊息。

  - 當啟動Erlang環境時，加上一個網路節點名稱，就進入分散式Erlang模式。節點可以使用埠號與其他節點通訊。

`$> `**`erl`**` -name node_1`

  - 在同一個網域中，網路節點名稱可以使用短名。

`$> `**`erl`**` -sname node_1`

啟動新的網路節點時，Erlang使用**epmd** (Erlang埠號對應管理系統) 指派埠號，提供節點使用。

當知道一個網路節點名稱時，可以在該節點產生新程序。

  - 在指定節點*RemoteNode*啟動一個程序，**spawn**啟動參數依序為節點名稱、模組名稱、函數名稱、函數的參數列。

*`%``   ``create``   ``a``   ``remote``   ``process``   ``and``
 ``call``   ``the``   ``function``   ``web:start_server(Port,``
 ``MaxConnections)`*
*`%``   ``on``   ``machine``   ``RemoteNode`*
`RemoteProcess = `**`spawn`**`(`*`RemoteNode`*`, web, start_server, [Port, MaxConnections]),`

`在遠端節點產生新程序之後，可以使用平行式程式設計的技巧，與遠端程序通訊。`

**Erlang /
開源電信平台**提供的程式庫，於分散式程式設計可以使用*net_adm*、*net_kernel*、*slave*、...
等模組，做網路通訊\[6\]。

## 其他程式設計典範

### 惰性求值

Erlang程式員可以使用[惰性求值](../Page/惰性求值.md "wikilink")。不過，必須使用[λ演算式](https://zh.wikipedia.org/wiki/λ演算 "wikilink")，才能做到惰性求值。

`以下是惰性求值的一例：假設有個`[`剖析器程式如下`](../Page/LL剖析器.md "wikilink")`，由於及早求值特徵，本程式將不會求解。`
`expr() -> alt(then(factor(), then(literal($+), factor())),`
`              then(factor(), then(literal($-), factor()))).`
`factor() -> alt(then(term(), then(literal($*), term())),`
`                then(term(), then(literal($/), term()))).`
`term() -> alt(number(),`
`              xthen(literal($(), thenx(expr(), literal($))))).`
`此處使用λ演算式及適當使用函數名稱表示，就能進行求值。示例如下。`
`expr() ->`
`    fun () ->`
`          alt(then(fun factor/0, then(literal($+), fun factor/0)),`
`              then(fun factor/0, then(literal($-), fun factor/0)))`
`    end.`
`factor() ->`
`    fun () ->`
`            alt(then(fun term/0, then(literal($*), fun term/0)),`
`                then(fun term/0, then(literal($/), fun term/0)))`
`    end.`
`term() ->`
`    fun () ->`
`          alt(number(),`
`              xthen(literal($(), thenx(expr(), literal($)))))`
`    end.`

## 應用

  - [Wings
    3D](../Page/Wings_3D.md "wikilink")，一个用Erlang编寫的[三维計算機圖形軟體](https://zh.wikipedia.org/wiki/三维計算機圖形軟件 "wikilink")。
  - [YAWS](http://yaws.hyber.org/)，以Erlang編寫的高效HTTP伺服器。
  - [DISCO](http://discoproject.org/)，以Erlang編寫的[MapReduce架構系統](../Page/MapReduce.md "wikilink")。
  - [Apache
    CouchDB](http://couchdb.apache.org/)，以Erlang編寫的MapReduce文件式資料庫系統。
  - [RabbitMQ](http://www.rabbitmq.com/)，能搭配Erlang運作的訊息佇列系統。
  - [開放電信平台](../Page/開放電信平台.md "wikilink")
  - [WhatsApp](../Page/WhatsApp.md "wikilink")：其后端服务器应用使用了**Erlang**及[FreeBSD](../Page/FreeBSD.md "wikilink")\[7\]。支持了4.5亿的月活跃用户！
  - [ejabberd](http://www.process-one.net/en/ejabberd/),世界上最流行的[XMPP即时通讯服务器](https://zh.wikipedia.org/wiki/XMPP "wikilink")

## 社区

  - [Erlang Central](http://www.erlangcentral.org/)
  - [Erlang Resources 豆瓣小站](http://site.douban.com/204209/)
  - [Erlang中文社區 erlang-china.org](http://erlang-china.org/)
  - [Erlang中文教程 erlang-cn.com](http://www.erlang-cn.com/)
  - [Erlang中文社区 cnerlang.com](http://www.cnerlang.com/)
  - [Erlang中文
    erlang-cn.org](https://web.archive.org/web/20141014051225/http://www.erlang-cn.org/)

## 參考資料

<references/>

## 外部連結

  - [Erlang開放源碼版本](http://www.erlang.org/)

  - [Erlang愛立信授權版本](http://www.erlang.se/)

  - [因應軟體錯誤建構可靠的分散式系統](http://www.erlang.org/download/armstrong_thesis_2003.pdf)


  -
[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")
[Category:函数式编程语言](https://zh.wikipedia.org/wiki/Category:函数式编程语言 "wikilink")
[Category:宣告式編程語言](https://zh.wikipedia.org/wiki/Category:宣告式編程語言 "wikilink")
[Category:Erlang](https://zh.wikipedia.org/wiki/Category:Erlang "wikilink")
[Category:愛立信](https://zh.wikipedia.org/wiki/Category:愛立信 "wikilink")

1.
2.  見*Coders At Work*一書對Joe Armstrong的口述記錄。
3.   “*The largest user of Erlang is Ericsson. Ericsson use it to write
    software used in telecommunications systems. Many (dozens) projects
    have used it, a particularly large one is the extremely scalable
    AXD301 ATM switch.*” FAQ中列出的其他用户包括: Nortel、Deutsche
    Flugsicherung、T-Mobile等
4.  <http://en.wikipedia.org/wiki/Open_Telecom_Platform>
5.  譯自官網 <http://www.erlang.org/faq/getting_started.html>
6.  參考[分散式Erlang](http://www.erlang.org/doc/reference_manual/distributed.html)，
    <http://www.erlang.org/doc/reference_manual/distributed.html>
7.  **Erlang**及[FreeBSD](../Page/FreeBSD.md "wikilink")