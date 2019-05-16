[Paint_by_numbers_Animation.gif](https://zh.wikipedia.org/wiki/File:Paint_by_numbers_Animation.gif "fig:Paint_by_numbers_Animation.gif")
[Paint_by_Number_Example.png](https://zh.wikipedia.org/wiki/File:Paint_by_Number_Example.png "fig:Paint_by_Number_Example.png")
[Paint_by_Number_solution.png](https://zh.wikipedia.org/wiki/File:Paint_by_Number_solution.png "fig:Paint_by_Number_solution.png")
發現小花是一種[邏輯遊戲](https://zh.wikipedia.org/wiki/邏輯遊戲 "wikilink")，以猜謎的方式繪畫[點陣圖](../Page/位图.md "wikilink")。在一個網格中，每一行和列都有一組[數](https://zh.wikipedia.org/wiki/数_\(数学\) "wikilink")，玩家需根據它們來填滿或留空格子，最後就可以由此得出一幅圖畫。例如，「4
8
3」的意思就是指該行或列上有三條獨立的線，分別佔了4、8和3格，而每條線最少要由一個空格分開。傳統上，玩家是以[黑色填滿格子](../Page/黑色.md "wikilink")，和以「×」號標記一定不需要填充的格子。就此來看，這和[踩地雷十分相似](../Page/踩地雷.md "wikilink")。但跟踩地雷不同的是，即使填錯了格子，也不會即時出局。Nonogram是一個[NP完全的問題](../Page/NP完全.md "wikilink")。

Nonogram是在1987年由[日本人](../Page/日本人.md "wikilink")[西尾徹也發明的](https://zh.wikipedia.org/wiki/西尾徹也 "wikilink")。在日本，Nonogram的名稱是「****」，意思是「繪畫邏輯」。Nonogram初見於日本的謎題[雜誌](https://zh.wikipedia.org/wiki/雜誌 "wikilink")，玩家用紙和筆來玩。隨後，[任天堂以](../Page/任天堂.md "wikilink")「[Mario's
Picross](https://zh.wikipedia.org/wiki/Mario's_Picross "wikilink")」為名推出了兩款[Game
Boy和九款](../Page/Game_Boy.md "wikilink")[超級任天堂遊戲](../Page/超級任天堂.md "wikilink")。現時[NDS上亦有名為](../Page/任天堂DS.md "wikilink")[Picross
DS的同款遊戲](https://zh.wikipedia.org/wiki/Picross_DS "wikilink")。2015年十二月，任天堂推出了名為「Pokemon
Picross」的3DS遊戲。

## 名字

Nonogram有著許多不同的名字，包括Paint by Numbers、Griddlers、Pic-a-Pix、Picross、Pixel
Puzzles、Crucipixel、Edel、FigurePic、Grafilogika、Hanjie、Illust-Logic、Japanese
Crosswords、Japanese Puzzles、Kare Karala\!、Logic Art、Logic
Square、Logicolor、Logik-Puzzles、Logimage、Zakókodované obrázky、、Oekaki
Logic、Oekaki-Mate、Paint Logic、Shchor Uftor和Tsunami。

Nonogram至今還未有正式或广泛流传的中文名称，已知的中文名有：数织、數牆、填方块、逻辑拼图等。

## 解謎技巧

### 盡量的填充

玩家可以利用數組盡量的填充格子。

如果數字等於行高或列寛的話，該行所有格仔都要填滿。

如果不是的話，玩家則可以假設每條線只有由一個空格分隔，把線組推到可移動的空間的最盡；然後，把線組推到另一個盡頭。兩者重疊的填充部份就是一定要填充的格子。

例如：

|   |  |  |  |  |  |  |  |  |  |  |
| -: |  |  |  |  |  |  |  |  |  |  |
| 8 |  |  |  |  |  |  |  |  |  |  |
| 8 |  |  |  |  |  |  |  |  |  |  |

可得出這結論：

|   |  |  |  |  |  |  |  |  |  |  |
| -: |  |  |  |  |  |  |  |  |  |  |
| 8 |  |  |  |  |  |  |  |  |  |  |

又例如：

|     |  |  |  |  |  |  |  |  |  |  |
| --: |  |  |  |  |  |  |  |  |  |  |
| 4 3 |  |  |  |  |  |  |  |  |  |  |
| 4 3 |  |  |  |  |  |  |  |  |  |  |

可得出這結論：

|     |  |  |  |  |  |  |  |  |  |  |
| --: |  |  |  |  |  |  |  |  |  |  |
| 4 3 |  |  |  |  |  |  |  |  |  |  |

### 盡量的標空

除了盡量的填充之外，玩家亦可以把一定不可能要填上的空格用「×」號標記起來，從而減少需要考慮的格子。

如果數字是零的話，該行所有格仔都需留空（玩家可用「×」號標上）。

即使不是零，玩家也可以根據已填充的格子，把線推到可移動的空間的最盡，再把線推到另一盡頭。兩者重疊的留空部份就是一定不需要填上的空格。

假設玩家因為之前的推算，現已得出以下結果：

|     |  |  |  |  |  |  |  |  |  |  |
| --: |  |  |  |  |  |  |  |  |  |  |
| 3 1 |  |  |  |  |  |  |  |  |  |  |

如果把線填滿，可以有以下兩個極端的可能性：

|     |  |  |  |  |  |  |  |  |  |  |
| --: |  |  |  |  |  |  |  |  |  |  |
| 3 1 |  |  |  |  |  |  |  |  |  |  |
| 3 1 |  |  |  |  |  |  |  |  |  |  |

因此可得出這結論：

|     |   |  |  |  |  |  |   |   |  |   |
| --: | - |  |  |  |  |  | - | - |  | - |
| 3 1 | × |  |  |  |  |  | × | × |  | × |

又如果該行或列中有些空格已經不足之放上任何一條線，那些空格也是可以標空的。例如：

|   |  |  |  |  |   |  |  |   |  |  |
| -: |  |  |  |  | - |  |  | - |  |  |
| 3 |  |  |  |  | × |  |  | × |  |  |

玩家可以不用考慮右邊的空格：

|   |  |  |  |  |   |   |   |   |   |   |
| -: |  |  |  |  | - | - | - | - | - | - |
| 3 |  |  |  |  | × | × | × | × | × | × |

### 連接或分離鄰近的線

如果兩條鄰近的線由一個空格分隔的話，玩家可以用以下的推論嘗試把它填充或標空：

  - 如果把它們連接起來，會令線條過長的話，該空格應該標空。
  - 如果把它們分隔，會令線條數目過多的話，該空格應該填充。

例子如下：

|       |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| ----: |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 5 2 2 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

經過推論後：

|       |  |  |  |  |  |  |  |  |  |  |  |   |  |  |  |
| ----: |  |  |  |  |  |  |  |  |  |  |  | - |  |  |  |
| 5 2 2 |  |  |  |  |  |  |  |  |  |  |  | × |  |  |  |

因為需要盡量的填充和標空，聰明的玩家在這例子可能會直接跳到這步：

|       |   |   |  |  |  |  |  |   |   |  |  |   |  |  |   |
| ----: | - | - |  |  |  |  |  | - | - |  |  | - |  |  | - |
| 5 2 2 | × | × |  |  |  |  |  | × | × |  |  | × |  |  | × |

### 利用矛盾推論

在一些難度較高的遊戲中，玩家可能不能利用以上簡單的推論方法來解謎。這時玩家可以先假定一個空格為需要填上的，然後繼續解答。但當遇到[矛盾的話](../Page/矛盾.md "wikilink")，玩家需要把遊戲回退到假定前的狀態，因為矛盾証明了之前的假定是錯誤的。玩家亦可把該空格標空，因為它一定不是需要填充的格了。

## 多重答案

有些Nonogram可以有多個可行的答案。不過並不是所有答案都是有意思的圖像。

一個簡單的例子就是以Nonogram記錄的[國際象棋](https://zh.wikipedia.org/wiki/國際象棋 "wikilink")[棋盤](https://zh.wikipedia.org/wiki/棋盤 "wikilink")。為了方便閱讀和編輯，以下的棋盤大小只是平常的四分之一。

答案一：

<table>
<tbody>
<tr class="odd">
<td></td>
<td><p>1<br />
1</p></td>
<td><p>1<br />
1</p></td>
<td><p>1<br />
1</p></td>
<td><p>1<br />
1</p></td>
</tr>
<tr class="even">
<td><p>1 1</p></td>
<td><p>×</p></td>
<td></td>
<td><p>×</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1 1</p></td>
<td></td>
<td><p>×</p></td>
<td></td>
<td><p>×</p></td>
</tr>
<tr class="even">
<td><p>1 1</p></td>
<td><p>×</p></td>
<td></td>
<td><p>×</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1 1</p></td>
<td></td>
<td><p>×</p></td>
<td></td>
<td><p>×</p></td>
</tr>
</tbody>
</table>

答案二：

<table>
<tbody>
<tr class="odd">
<td></td>
<td><p>1<br />
1</p></td>
<td><p>1<br />
1</p></td>
<td><p>1<br />
1</p></td>
<td><p>1<br />
1</p></td>
</tr>
<tr class="even">
<td><p>1 1</p></td>
<td></td>
<td><p>×</p></td>
<td></td>
<td><p>×</p></td>
</tr>
<tr class="odd">
<td><p>1 1</p></td>
<td><p>×</p></td>
<td></td>
<td><p>×</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>1 1</p></td>
<td></td>
<td><p>×</p></td>
<td></td>
<td><p>×</p></td>
</tr>
<tr class="odd">
<td><p>1 1</p></td>
<td><p>×</p></td>
<td></td>
<td><p>×</p></td>
<td></td>
</tr>
</tbody>
</table>

## 变种

也有一种彩色版的逻辑拼图游戏，谜题中有多种颜色的色块，并从而取消了传统黑白版（）中的空白格设计。

## 外部鏈結

  - [ArmorPicross](http://www.newgrounds.com/portal/view/304506)——線上Nonogram
  - [Paint by Numbers Home
    Page](https://web.archive.org/web/20070407005533/http://pbn.homelinux.com/pbn/)——也是線上Nonogram，在這個網站被稱作「Paint
    by numbers」
  - [Griddlers
    Net](https://web.archive.org/web/20160101173017/http://www.griddlers.net/)——除了提供中文介面外，也有彩色版、角型版等多種變化。在這個網頁，Nonogram被稱作「拼圖」。
  - [Griddlers Solver with Animator](http://jsimlo.sk/griddlers/)
  - [gameLO Griddlers Online](http://gamelo.net)
  - [Picross-Time.net](https://web.archive.org/web/20161214011622/http://www.picross-time.net/)
  - [Gemsweeper](http://www.lobstersoft.com/gemsweeper)
  - [puzzle.com](http://www.puzzle-nonograms.com)
  - [nonogram ipad style from xorigo.com](http://nonogram.xorigo.com) --
    ipad version nongram ,but new style.

[Category:數位幾何學](https://zh.wikipedia.org/wiki/Category:數位幾何學 "wikilink")
[Category:邏輯謎題](https://zh.wikipedia.org/wiki/Category:邏輯謎題 "wikilink")
[Category:NP完全问题](https://zh.wikipedia.org/wiki/Category:NP完全问题 "wikilink")