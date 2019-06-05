在[Unicode中](https://zh.wikipedia.org/wiki/Unicode "wikilink")，**區段**被定義為一組連續[碼位的範圍](https://zh.wikipedia.org/wiki/碼位 "wikilink")。區段會被給予唯一的名稱，且區段與區段間不會[重疊](../Page/交集.md "wikilink")。通常一個最小的區段至少包含16個碼位，即
*hhh*0到*hhh*F。

一個區塊可以明確地包含未分配的碼位和非字符。\[1\]
不屬於任何已命名區段的碼位（例如尚未正式使用的第3－第13平面），上面碼位關於區塊的值會被設為
*block="No_block".*。相反地，每個分配的代碼點都有一個「區段名稱」的屬性，表示出這個文字所在的區段。這僅由代碼點確定，儘管區段名稱具有描述性質，如「[藏語](../Page/藏語.md "wikilink")」或「」。所有已分配的碼位都有一個單獨的區段名稱。

某些名稱可能會被誤認為是區段名稱，例如收錄在U+2654到U+265F的，即是收錄在的一部份而已。「西洋棋符號」僅作為這個子群的信息編輯的補充。

截至 Unicode 12.1 已經定義了300個區段，其中：\[2\]

  - 有163個區段在**0號平面**，或稱**基本多文種平面**（the **B**asic **M**ultilingual
    **P**lane, **BMP**）
  - 有127個區段在**1號平面**，或稱**第一輔助平面**或**多文種補充平面**（the **S**upplementary
    **M**ultilingual **P**lane, **SMP**）
  - 有6個區段在**2號平面**，或稱**第二輔助平面**或**表意文字補充平面**（the **S**upplementary
    **I**deographic **P**lane, **SIP**）
  - 有2個區段在**14號平面**（在[16進制為E](https://zh.wikipedia.org/wiki/16進制 "wikilink")），或稱**第十四輔助平面**或**特別用途補充平面**（**S**upplementary
    **S**pecial-purpose **P**lane, **SSP**）
  - 各有1個區段在**15號平面**(F<sub>hex</sub>)和**16號平面**(10<sub>hex</sub>)，分別為**私人使用區（A區）**（Private
    Use Area-A, **PUA-A**）和**私人使用區（B區）**（Private Use Area-B, **PUA-B**）

## 参考资料

[Category:Unicode](https://zh.wikipedia.org/wiki/Category:Unicode "wikilink")
[Category:Unicode區段](https://zh.wikipedia.org/wiki/Category:Unicode區段 "wikilink")

1.  [Unicode glossary](http://www.unicode.org/glossary/#B)
2.  [Unicode 12.1.0
    UCD](https://www.unicode.org/Public/12.1.0/ucd/Blocks.txt)