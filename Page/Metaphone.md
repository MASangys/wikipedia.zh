**Metaphone**是一個[語音算法](https://zh.wikipedia.org/wiki/語音算法 "wikilink")，主要是用在[英語單字或是辭彙發音的標引](https://zh.wikipedia.org/wiki/英語 "wikilink")。Metaphone是由[飛利浦](../Page/飛利浦.md "wikilink")、[羅倫斯利用](https://zh.wikipedia.org/wiki/羅倫斯 "wikilink")[Soundex的缺陷來改善的演算法](https://zh.wikipedia.org/wiki/Soundex "wikilink")。此演算法是利用較大的英語發音規則，所以比Soundex更為精準。Metaphone也可作為內建式的工具，在[PHP](../Page/PHP.md "wikilink")就有相關工具。後來原作者製作新版本的演算法「Double metaphone」，比原本的算法還更加精準。該演算法會轉換相似的發音。

## 轉換規則

`  B ----> B      unless at the end of word after "m", as in "dumb", "McComb"`

`  C ----> X      (sh) if "-cia-" or "-ch-"`
`          S      if "-ci-", "-ce-", or "-cy-"`
`                 SILENT if "-sci-", "-sce-", or "-scy-"`
`          K      otherwise, including in "-sch-"`

`  D ----> J      if in "-dge-", "-dgy-", or "-dgi-"`
`          T      otherwise`

`  F ----> F`

`  G ---->        SILENT if in "-gh-" and not at end or before a vowel`
`                           in "-gn" or "-gned"`
`                           in "-dge-" etc., as in above rule`
`          J      if before "i", or "e", or "y" if not double "gg"`
`          K      otherwise`

`  H ---->        SILENT if after vowel and no vowel follows`
`                        or after "-ch-", "-sh-", "-ph-", "-th-", "-gh-"`
`          H      otherwise`

`  J ----> J`

`  K ---->        SILENT if after "c"`
`          K      otherwise`

`  L ----> L`

`  M ----> M`

`  N ----> N`

`  P ----> F      if before "h"`
`          P      otherwise`

`  Q ----> K`

`  R ----> R`

`  S ----> X      (sh) if before "h" or in "-sio-" or "-sia-"`
`          S      otherwise`

`  T ----> X      (sh) if "-tia-" or "-tio-"`
`          0      (th) if before "h"`
`                 silent if in "-tch-"`
`          T      otherwise`

`  V ----> F`

`  W ---->        SILENT if not followed by a vowel`
`          W      if followed by a vowel`

`  X ----> KS`

`  Y ---->        SILENT if not followed by a vowel`
`          Y      if followed by a vowel`

`  Z ----> S`

## 資料來源

  - <http://aspell.net/metaphone/metaphone-kuhn.txt>

## 外部連結

  - [Open Source Spell Checker](http://aspell.net/metaphone/)
  - [Another explanation of the algorithm](http://www.wbrogden.com/java/Phonetic/index.html)
  - [Project to write a formal definition of the algorithm](http://code.google.com/p/metaphone-standards/wiki/MetaphoneEn)

[Category:語音學](https://zh.wikipedia.org/wiki/Category:語音學 "wikilink") [Category:语音算法](https://zh.wikipedia.org/wiki/Category:语音算法 "wikilink")