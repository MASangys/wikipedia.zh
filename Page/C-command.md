在[語法學上](https://zh.wikipedia.org/wiki/語法學 "wikilink")，**c-command**是一種剖析樹(parse
tree)節點間的關係。最早此關係由[譚雅‧萊茵哈特](https://zh.wikipedia.org/wiki/譚雅‧萊茵哈特 "wikilink")(Tanya
Reinhart)於其1976年和1983年的文章中定義。\[1\]

此觀念與[家族樹中](https://zh.wikipedia.org/wiki/家族樹 "wikilink")「兄弟姐妹及兄弟姐妹的所有後代」這個觀念類似。

## 定義與範例

[C-command.png](https://zh.wikipedia.org/wiki/File:C-command.png "fig:C-command.png")

c-command的定義，在某些部份是基於「統領」(dominance)的關係的。若一個節點X在另一個節點Y之上(X與Y的關係如「父母」、「祖父母」之類的)，則X「統領」Y。

根據此定義，A對B進行c-command，[當且僅當以下的幾點成立](https://zh.wikipedia.org/wiki/當且僅當 "wikilink")：

  - A不「統領」B
  - B不「統領」A
  - 「統領」A的「第一分支節點」
    (即最接近A且「統領」A的分支節點，不分支的節點不考慮，分支節點即同時統領兩個節點的節點)也「統領」B\[2\]\[3\]

故根據此定義，在右圖的語法樹中，

  - *M*不對任何節點進行c-command，因為它「統領」其他的節點。
  - *A*對*B*、*C*、*D*、*E*、*F*與*G*進行c-command
  - *B*對*A*進行c-command
  - *C*對*D*、*F*與*G*進行c-command
  - *D*對*C*與*E*進行c-command
  - *E*對*D*、*F*與*G*進行c-command
  - *F*對*G*進行c-command
  - *G*對*F*進行c-command

## 此名稱的來源

c-command這個術語最早源自萊茵哈特在1976年在[麻省理工学院寫的論文的第](../Page/麻省理工学院.md "wikilink")32頁，而這詞本身是「constituent
command」一詞的縮寫，萊茵哈特感謝[尼克‧克雷門特](https://zh.wikipedia.org/wiki/尼克‧克雷門特 "wikilink")(Nick
Clements)建議她使用此縮寫一事。

[安德魯‧卡爾尼](https://zh.wikipedia.org/wiki/安德魯‧卡爾尼 "wikilink")(Andrew
Carnie)\[4\]認為「c-command」這詞或許是被提出來，以和[霍華德‧拉斯尼克](https://zh.wikipedia.org/wiki/霍華德‧拉斯尼克 "wikilink")(Howard
Lasnik)在1976年所提出的、類似的詞彙「kommand(常讀作k-command)」\[5\]產生區別的。

## C-command與「第一分支節點」

上面的定義提道c-command是根據「統領」A的「第一分支節點」(即最接近A且「統領」A的分支節點)來的(因此不分支的節點不被考慮)。有時這關係又被稱作「嚴格c-command」(strict
c-command)。\[6\]如果沒有這層定義，那麼A對B的c-command的關係就會限制於第一個「統領」A的節點和第一個「統領」B的節點為相同節點的情況之上(即所有第一個統領某節點的節點都會被包含進來)
。以下的語法樹顯示出分別根據這兩種定義所造成的不同情況。

如果將所有節點彼此間的關係都考慮進來，則*A*不對任何其他的節點進行c-command，因為*B*「統領」*A*且未統領其他的節點；如果只考慮具有分支的節點的話，那麼在考慮定義中的第三個因素時，*B*的存在與否就變得不重要了，在這層定義下*A*對*D*、*E*和*F*有進行c-command。

  -
    [<File:C-command>
    02.png](https://zh.wikipedia.org/wiki/File:C-command_02.png "fig:File:C-command 02.png")

## 參見

  - [m-command](https://zh.wikipedia.org/wiki/m-command "wikilink")

## 腳註與參考資料

  - Harris, C. L. and Bates, E. A. (2002) 'Clausal backgrounding and
    pronominal reference: A functionalist approach to c-command'.
    *Language and Cognitive Processes* **17(3)**:237-269.
  - *Contemporary Linguistics* by William O'Grady, Michael Dobrovolsky,
    and Mark Aronoff. Bedford/St. Martin's. 1997 (third edition).
  - Reinhart, Tanya M. (1976). *The Syntactic Domain of Anaphora*.
    (Doctoral dissertation, Massachusetts Institute of Technology).
    (Available online at
    <https://web.archive.org/web/20111122155216/http://dspace.mit.edu/handle/1721.1/16400>).

## 外部連結

  - [c-command and
    pronouns](http://www.ling.upenn.edu/courses/Fall_1999/ling550/ch1.html)
  - [Node
    relations](http://www.ling.upenn.edu/~beatrice/syntax-textbook/box-nodes.html),
    University of Pennsylvania
  - [Some Basic Concepts in Government and Binding
    Theory](http://www.criticism.com/linguistics/govt-binding-basics1.php)

[Category:語法關係](https://zh.wikipedia.org/wiki/Category:語法關係 "wikilink")

1.  亦請見[霍華德‧拉斯尼克](https://zh.wikipedia.org/wiki/霍華德‧拉斯尼克 "wikilink")(Howard
    Lasnik)1975年之文及[诺姆·乔姆斯基](../Page/诺姆·乔姆斯基.md "wikilink")1981年之文。
2.
3.
4.
5.
6.