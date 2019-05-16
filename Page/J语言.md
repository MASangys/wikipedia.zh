**J**语言是[图灵奖获得者](../Page/图灵奖.md "wikilink")[肯尼斯·艾佛森和](../Page/肯尼斯·艾佛森.md "wikilink")（Roger
Hui）（出生于[香港](../Page/香港.md "wikilink")，后前往[加拿大](../Page/加拿大.md "wikilink")）於二十世纪九十年代初發明的一种[程序设计语言](https://zh.wikipedia.org/wiki/程序设计语言 "wikilink")，是[APL语言](https://zh.wikipedia.org/wiki/APL语言 "wikilink")（亦是由艾佛森所創）、、語言的繼承者。

為了避免APL使用特別的字集而遇到的問題，J只需基本的[ASCII字集](../Page/ASCII.md "wikilink")，多用點號和冒號來擴展現有基本字元的意義。

作為一個[陣列編程語言](https://zh.wikipedia.org/wiki/陣列編程語言 "wikilink")，J非常簡潔和強大，在[數學和](https://zh.wikipedia.org/wiki/數學 "wikilink")[统计学程式設計上十分有效](../Page/统计学.md "wikilink")，特別是[矩陣分析的能力](https://zh.wikipedia.org/wiki/矩陣 "wikilink")。

如同原本的FP/FL程式語言，J透過它編程的特色，支援[函數級別編程](https://zh.wikipedia.org/wiki/函數級別編程 "wikilink")。

J並非[馮諾曼程式語言](https://zh.wikipedia.org/wiki/馮諾曼程式語言 "wikilink")，卻能容許程式員使用馮諾曼編程風格。

## 例子

J是極強大的語言，它的程式可以非常簡潔，但以人類的b
常用溝通語言而言通常會變得像密碼。以下是個[快速排序的](../Page/快速排序.md "wikilink")[單行小程kl式](https://zh.wikipedia.org/wiki/單行小程kl式 "wikilink")：

`  `**`qsort`**`` =: ]`(($:@:((}.<:{.)#}.)),{.,($:@:((}.>{.)#}.)))@.(*@#)lnhj``

但是如果我们定义一些中间记忆名称的话，（NB.为注释）:

`  id        hj=: ]                                 NB. 定义函数ugh`

`  choose    =: @.                                NB. 条件执行`
`  first     =: {.                                NB. 集合首元素`
`  rest      =: }.                                NB. 除首元素之外的其他元素`
`  o         =: @:                                NB. 函数撰写:  f o g (x)  =   f(g(x))`
`  void      =: [:`
`  sign      =: * : void                          NB. monadic only, void .my `

dyadic

`  length    =: # : void                          NB. monadic only, void dyadic`
`  selfrom   =: void : #                          NB. dyadic only, void monadic`
`  notEmpty  =: sign o length                     NB. sign 0 = 0`

然後這個J版的快速排序變得更具可讀性：

`  selLEF    =: (rest <: first) selfrom rest      NB. select Less-than or Equal to First`
`  selGTF    =: (rest >  first) selfrom rest      NB. select Greater-Than First`
` `
`  `**`qsort`**``  =: id ` (($: o ``**`selLEF`**`),first,($: o `**`selGTF`**`))  choose notEmpty`

注意这是一个**匿名递归函数**. J语言提供了**自身形参** 操作 `$:` 来匿名引用大量的封装数据。甚少語言有能力去表達它。

## 字彙

<http://www.jsoftware.com/help/dictionary/vocabul.htm>"

|                                                                    |                                                 |                                                                          |
| ------------------------------------------------------------------ | ----------------------------------------------- | ------------------------------------------------------------------------ |
| `=`自我分類 · 等於                                                       | `=.`令為（局部變數）                                    | `=:`令為（全域變數）                                                             |
| nowrap | `<`封裝 · 少於                                                | nowrap | `<.`下整數 · 取小(Min)                      | nowrap | `<:`減數 · 少於或等於                                                  |
| nowrap | `>`開封 · 大於                                                | nowrap | `>.`上整數 · 取大(Max)                      | nowrap | `>:`增數 · 大於或等於                                                  |
| nowrap | `_`負號／*[無限](https://zh.wikipedia.org/wiki/無限 "wikilink")* | nowrap | `_.`*未定數*                              | nowrap | `_:`無限                                                          |
| nowrap |                                                           |                                                 |                                                                          |
| nowrap | `+`共軛數 · 加                                                | nowrap | `+.`實數／虛數 · GCD (Or)                   | nowrap | `+:`倍數 · 非-或                                                    |
| nowrap | `*`正負號 · 乘                                                | nowrap | `*.`長度／角度 · LCM (And)                  | nowrap | `*:`平方 · 非-且                                                    |
| nowrap | `-`負 · 減                                                  | nowrap | `-.`非 · Less                           | nowrap | `-:`減半 · Match                                                  |
| nowrap | `%`倒數 · 除以                                                | nowrap | `%.`反矩陣 · 矩陣除以                         | nowrap | `%:`平方根 · 幾次開根號                                                 |
| nowrap |                                                           |                                                 |                                                                          |
| nowrap | `^`[冪](../Page/冪.md "wikilink")                           | nowrap | `^.`[自然對數](../Page/自然對數.md "wikilink") | nowrap | `^:`**Power** (`u^:n u^:v`)                                     |
| nowrap | `$`形狀 · 塑型                                                | nowrap | `$.`稀疏矩陣                               | nowrap | `$:`自我參照                                                        |
| nowrap | `~`***Reflex*** · ***Passive*** / EVOKE                   | nowrap | `~.`異元素 ·                              | nowrap | `~:`異元素篩· 非-同                                                   |
| nowrap | `\|`絕對值 · 餘數                                              | nowrap | `\|.`逆轉 · 旋轉 (Shift)                   | nowrap | `\|:`轉置                                                         |
| nowrap |                                                           |                                                 |                                                                          |
| nowrap | `.`**行列式** · **點積**                                       | nowrap | `..`**偶數**                             | nowrap | `.:`**奇數**                                                      |
| nowrap | `:`**Explicit** / **單值-雙值**                               | nowrap | `:.`**對立向**                            | nowrap | `::`**逆向**                                                      |
| nowrap | `,`攤平 · 附加                                                | nowrap | `,.`攤開各項 · 縫合                          | nowrap | `,:`單項化 · 疊加                                                    |
| nowrap | `;`夷平 · 封裝連結                                              | nowrap | `;.`**分割**                             | nowrap | `;:`割字 · Sequential Machine                                     |
| nowrap |                                                           |                                                 |                                                                          |
| nowrap | `#`計數 · Copy                                              | nowrap | `#.`以 2 為基底 · 為基底                      | nowrap | `#:`Antibase 2 · Antibase                                       |
| nowrap | `!`[階乘](../Page/階乘.md "wikilink")·Out Of                  | nowrap | `!.`**Fit (Customize)**                | nowrap | `!:`**外務詞**                                                     |
| nowrap | `/`***插入*** · ***表***                                     | nowrap | `/.`***斜向*** · ***關鍵***                | nowrap | `/:`升冪· 排序                                                      |
| nowrap | `\`***前插*** · ***內插***                                    | nowrap | `\.`***後插*** · ***反差***                | nowrap | `\:`降冪· 排序                                                      |
| nowrap |                                                           |                                                 |                                                                          |
| nowrap | `[`同左 · 左                                                 | nowrap |                                        | nowrap | `[:`罩                                                           |
| nowrap | `]`同右 · 右                                                 | nowrap |                                        | nowrap |                                                                 |
| nowrap | `{`編目 · 由                                                 | nowrap | `{.`取首 · 取                             | nowrap | `{:`取尾 ·`  {::`Map · 拿                                          |
| nowrap | `}`***單項修訂· 修訂*** (`m} u}`)                               | nowrap | `}.`去首 · 去掉                            | nowrap | `}:`去尾 ·                                                        |
| nowrap |                                                           |                                                 |                                                                          |
| nowrap | `"`**秩** (`m"n u"n m"v u"v`)                              | nowrap | `".`Do · Numbers                       | nowrap | `":`預設格式· 格式                                                    |
| nowrap | `` ` ``**繫上（動名詞）**                                        | nowrap |                                        | nowrap | `` `: ``**Evoke Gerund**                                        |
| nowrap | `@`**在上**                                                 | nowrap | `@.`**議程**                             | nowrap | `@:`**在**                                                       |
| nowrap | `&`**綁** / **組成**                                         | nowrap | `&.``&.:`**從屬（對偶）**                    | nowrap | `&:`**添附**                                                      |
| nowrap | `?`擲骰 · 發牌                                                | nowrap | `?.`擲骰 · 發牌（固定隨機種子）                    |                                                                          |
| nowrap |                                                           |                                                 |                                                                          |
| nowrap | `a.`''''                                                  | nowrap | `a:`*老么*（封裝空字元）                        | nowrap | `A.`變位指標· 迴文變位                                                  |
| nowrap | `b.`***布林數／Basic***                                       | nowrap | `C.`循環 · 排列                            | nowrap | `d.`**導數**/td\>                                                 |
| nowrap | `D.`**導數**                                                | nowrap | `D:`**Secant 斜率**                      | nowrap | `e.`屬於夷平集· 屬於 (In)                                              |
| nowrap | `E.`· 區間之元素                                               | nowrap | `f.`***Fix***                          | nowrap | `H.`**超幾何**                                                     |
| nowrap |                                                           |                                                 |                                                                          |
| nowrap | `i.`整數 · 之指標                                              | nowrap | `i:`整數 · 最後指標                          | nowrap | `I.`指標 ·                                                        |
| nowrap | `j.`虛數 · 複數                                               | nowrap | `L.`Level Of                           | nowrap | `L:`**Level At**                                                |
| nowrap | `m. n.`名詞引數代號                                             | nowrap | `NB.`注解                                | nowrap | `o.`Pi Times · Circle 函數                                        |
| nowrap | `p.`多項式                                                   | nowrap | `p..`多項式求導 · 多項式積分                     | nowrap | `p:`[素数](../Page/素数.md "wikilink")                              |
| nowrap |                                                           |                                                 |                                                                          |
| nowrap | `q:`質因數· Prime Exponents                                  | nowrap | `r.`角 · 極座標                            | nowrap | `s:`Symbol                                                      |
| nowrap | `S:`**Spread**                                            | nowrap | `t.`***Taylor展式係數***                   | nowrap | `t:`***加權Taylor***                                              |
| nowrap | `T.`**Taylor近似**                                          | nowrap | `u. v.`動詞引數代號                          | nowrap | `u:`[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink") |
| nowrap | `x. y.`引數代號                                               | nowrap | `x:`高精確值                               | nowrap | `_9:`to`9:`常數函數                                                 |

## 外部連結

  - [JSoftware](http://www.jsoftware.com)，**J**的官方網站
  - [Cliff
    Reiter](https://web.archive.org/web/20040930182641/http://ww2.lafayette.edu/~reiterc/)
    Chaos, fractals and mathematical symmetries... in **J**
  - [Ewart Shaw](http://www.ewartshaw.co.uk/) Bayesian inference,
    medical statistics, and numerical methods, using **J**
  - [Keith
    Smillie](http://www.cs.ualberta.ca/~smillie)，陣列程式語言的統計學工具，尤其是**J**
  - [John Howland](http://www.cs.trinity.edu/~jhowland) Research on
    parallelization of array programming languages, especially **J**
  - [郭平欣教授之**J**語言初步](http://faculty.ndhu.edu.tw/~pkuo/computer/Jyuyen.pdf)
  - [郭平欣教授之**J**字典](http://faculty.ndhu.edu.tw/~pkuo/computer/dicttw/main.htm)

[Category:APL編程語言家族](https://zh.wikipedia.org/wiki/Category:APL編程語言家族 "wikilink")
[Category:陣列編程語言](https://zh.wikipedia.org/wiki/Category:陣列編程語言 "wikilink")
[Category:动态类型编程语言](https://zh.wikipedia.org/wiki/Category:动态类型编程语言 "wikilink")
[Category:函数式编程语言](https://zh.wikipedia.org/wiki/Category:函数式编程语言 "wikilink")
[Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink")