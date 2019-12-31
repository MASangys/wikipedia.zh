> 本文内容由[ADFGVX密碼](https://zh.wikipedia.org/wiki/ADFGVX密碼)转换而来。


**ADFGVX密碼**是德軍在[第一次世界大戰中使用的欄塊密碼](https://zh.wikipedia.org/wiki/第一次世界大戰 "wikilink")。事實上，它是早先一種密碼 ADFGX 的增補版。1918年3月Fritz Nebel上校發明了這種密碼，並提倡使用。它結合了改良過的[Polybius方格](https://zh.wikipedia.org/wiki/Polybius方格 "wikilink")[替代密碼與單行](https://zh.wikipedia.org/wiki/替代密碼 "wikilink")[換位密碼](https://zh.wikipedia.org/wiki/換位密碼 "wikilink")。這個密碼以使用於密文當中的六個字母A、D、F、G、V、X命名。

## ADFGX 加密操作

假設我們需要發送明文訊息 "Attack at once"， 用一套秘密混雜的字母表填滿 [Polybius 方格](https://zh.wikipedia.org/wiki/Polybius_方格 "wikilink")，像是這樣：

|   | A | D | F | G | X |
| - | - | - | - | - | - |
| A | b | t | a | l | p |
| D | d | h | o | z | k |
| F | q | f | v | s | n |
| G | g | j | c | u | x |
| X | m | r | e | w | y |

i 和 j 視為同個字，使字母數量符合 5 × 5 格。之所以選擇這五個字母，是因為它們譯成[摩斯密碼時不容易混淆](https://zh.wikipedia.org/wiki/摩斯密碼 "wikilink")，可以降低傳輸錯誤的機率。使用這個方格，找出明文字母在這個方格的位置，再以那個字母所在的欄名稱和列名稱代替這個字母。可將該訊息可以轉換成處理過的分解形式。

`A  T  T  A  C  K  A  T  O  N  C  E`
`AF AD AD AF GF DX AF AD DF FX GF XF`

下一步，利用一個移位鑰匙加密。假設鑰匙字是「CARGO」，將之寫在新格子的第一列。再將上一階段的密碼文一列一列寫進新方格裡。

**`C``   ``A``   ``R``   ``G``   ``O`**
`_________`
`A F A D A`
`D A F G F`
`D X A F A`
`D D F F X`
`G F X F X`

最後，按照鑰匙字字母順序「ACGOR」依次抄下該字下整行訊息，形成新密文。如下：

`FAXDF ADDDG DGFFF AFAXX AFAFX`

在實際應用中，移位鑰匙字通常有兩打字元那麼長，且分解鑰匙和移位鑰匙都是每天更換的。

## ADFGVX

在 1918年 6月，再加入一個字 V 擴充。變成以 6 × 6 格共 36 個字元加密。這使得所有英文字母（不再將 I 和 J 視為同一個字）以及數字 0 到 9 都可混合使用。這次增改是因為以原來的加密法發送含有大量數字的簡短訊息有問題。

## 密碼分析

ADFGVX 是被[法國陸軍](https://zh.wikipedia.org/wiki/法國 "wikilink")[中尉](../Page/中尉.md "wikilink") [Georges Painvin](https://zh.wikipedia.org/wiki/Georges_Painvin "wikilink") 所破解的。以[古典密碼學的標準來說](https://zh.wikipedia.org/wiki/古典密碼學 "wikilink")，此密碼破解的工作是屬於格外困難的，在這期間，Painvin 更因此健康蒙受了嚴重損傷。他破解的方法是依靠於找到多份開頭相同的訊息，這表示說它們是被相同的分解鑰匙和移位鑰匙加密的。

這意味著只有在訊息傳輸量高時才會有這種影響，但對於密碼分析家來說幸運的是，這時恰好也是最重要的訊息發送的時刻。

## 參考資料

  - Friedman, William F. Military Cryptanalysis, Part IV: Transposition and Fractionating Systems. Laguna Hills, CA: Aegean Park Press, 1992.
  - General Solution of the ADFGVX Cipher System, J. Rives Childs, Aegean Park Press, ISBN 0-89412-284-3

[Category:古典密码](https://zh.wikipedia.org/wiki/Category:古典密码 "wikilink")