在電腦使用上，**cut**是一種[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")[命令行程式](../Page/命令行界面.md "wikilink")。它常用來截取每行輸入──通常是[檔案](../Page/電腦檔案.md "wikilink")──的片段。

一般截取行片段可以透過[位元](../Page/位元.md "wikilink")（`-b`）、[字符](../Page/字符.md "wikilink")、或者以分隔字符（`-d`—預設為[跳位字元](https://zh.wikipedia.org/wiki/跳位字元 "wikilink")）分隔的欄位（`-f`）達成。每次做截取都必須給定範圍，包括下面四種之一：`N`, `N-M,` `N-`（`N`到行尾），或者`-M`（行頭到`M`）。

## 範例

假設一個檔案名叫 **file** 包含下面數行：

`foo:bar:baz:qux:quux`
`one:two:three:four:five:six:seven`
`alpha:beta:gamma:delta:epsilon:zeta:eta:teta:iota:kappa:lambda:mu`

輸出每行第四到第十字元就是：

`% cut -c 4-10 file`

輸出結果：

`:bar:ba`
`:two:th`
`ha:beta`

使用冒號當欄位分隔字元輸出第五欄到每行行尾：

`% cut -d : -f 5- file`

輸出結果：

`quux`
`five:six:seven`
`epsilon:zeta:eta:teta:iota:kappa:lambda:mu`

## 參見

  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [grep](https://zh.wikipedia.org/wiki/grep "wikilink")
  - [paste](https://zh.wikipedia.org/wiki/paste_\(Unix\) "wikilink")

## 外部連結

  - [Softpanorama cut page](http://www.softpanorama.org/Tools/cut.shtml).

  -
[Category:Unix文字处理实用工具](https://zh.wikipedia.org/wiki/Category:Unix文字处理实用工具 "wikilink") [Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink") [Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")