[thumb組成](https://zh.wikipedia.org/wiki/image:MagicTee.jpg "wikilink")。\]\] **幻T形接頭**（）\[1\]，簡稱**幻T**，是一種或功率均分[定向耦合器](https://zh.wikipedia.org/wiki/功率分配器方向耦合器 "wikilink")，屬於一種[微波器件](https://zh.wikipedia.org/wiki/微波 "wikilink")\[2\]。它是[環形耦合器](../Page/環形耦合器.md "wikilink")的替代品，然而因為它是三維結構的，不容易在[微帶線](../Page/微帶線.md "wikilink")或中實現。

幻T最初是在[第二次世界大戰中開發的](https://zh.wikipedia.org/wiki/第二次世界大戰 "wikilink")，由[貝爾實驗室的WA](https://zh.wikipedia.org/wiki/貝爾實驗室 "wikilink") Tyrell 在1947年的IRE論文中發表。Robert L. Kyhl和Bob Dicke在同一時間獨立創造了幻T。

## 構造

幻T是T的組合。臂3形成具有臂1和2的H形平面T形臂。臂4形成具有臂1和2的E形平面T形臂。臂1和2有時被稱為側面或共線臂。端口3稱為H平面端口，也稱為Σ端口，和端口或P端口（用於“並行”）。端口4是E平面端口，也稱為Δ端口，差異端口或S端口（用於“系列”）。關於[端口編號](https://zh.wikipedia.org/wiki/端口 "wikilink")，沒有一個單一的既定設定。

為了正常運行，幻T必須包含內部匹配結構。該結構通常包括H形平面T形內部的柱和E平面肢體內的感應虹膜，儘管已經提出了許多替代結構。對匹配結構的依賴意味著魔術T卹只能在有限的頻段上工作

## 運作

幻T的名稱源於各端口之間的[功率](../Page/功率.md "wikilink")分配方式。注入H平面端口的信號將在端口1和2之間平均分配，並且[同相](https://zh.wikipedia.org/wiki/同相 "wikilink")。注入E平面端口的信號也將在端口1和2之間平均分配，但相位相差180度。如果通過端口1和2饋入信號，則H平面端口為兩者的相加；E平面端口處則是兩者相減\[3\]。因此，如圖所示編號的端口，其[散射矩陣是](https://zh.wikipedia.org/wiki/散射矩陣 "wikilink")：

\[S = \frac{1}{\sqrt{2}}
\begin{pmatrix}
  0 & 0 & 1 & 1 \\
  0 & 0 & 1 & -1 \\
  1 & 1 & 0 &  0 \\
 1 & -1 & 0 &  0
\end{pmatrix}\]

## 幻性

如果通過合適的內部結構，E平面（差）和H平面（和）端口同時匹配，那麼通過[對稱](../Page/對稱.md "wikilink")、[互易和](https://zh.wikipedia.org/wiki/互易 "wikilink")[能量守恆](https://zh.wikipedia.org/wiki/能量守恆 "wikilink")，可以顯示兩個共線端口也[匹配](https://zh.wikipedia.org/wiki/阻抗匹配 "wikilink")，並且“魔幻地”彼此隔離。

每個端口中的主導模式的[電場](../Page/電場.md "wikilink")垂直於波導的寬壁。因此，E平面和H平面端口中的信號具有正交[偏振](../Page/偏振.md "wikilink")，因此（考慮到結構的對稱性），這兩個端口之間不能進行通信。

對於進入H平面端口的信號，匹配結構將防止信號中的任何功率被反射回同一端口。由於不能與E平面端口進行通信，並且再次考慮結構的對稱性，因此該信號中的功率必須在兩個共線端口之間平均分配。

類似地，對於E平面端口，如果匹配結構消除了來自該端口的任何反射，則進入它的功率必須在兩個共線端口之間平均分配。

現在通過[互易性](https://zh.wikipedia.org/wiki/互易性 "wikilink")，任何一對端口之間的耦合在任一方向上都是相同的（[散射矩陣是對稱的](https://zh.wikipedia.org/wiki/散射矩陣 "wikilink")）。因此，如果H平面端口匹配，則進入任一個共線端口的一半功率將通過H平面端口離開。如果E平面端口也匹配，那麼E平面端口將留下一半的功率。在這種情況下，沒有剩餘電力被反射出第一共線端口或傳輸到另一個共線端口。儘管顯然是彼此直接通信，但兩個共線端口是“魔幻地”隔離的。

E平面和H平面端口之間的隔離是[寬帶的](https://zh.wikipedia.org/wiki/寬帶 "wikilink")，並且與設備的[對稱性一樣完美](https://zh.wikipedia.org/wiki/對稱性 "wikilink")。然而，共線端口之間的隔離受到匹配結構的性能的限制。

## 參考來源

[Category:电信设备](https://zh.wikipedia.org/wiki/Category:电信设备 "wikilink") [Category:微波技術](https://zh.wikipedia.org/wiki/Category:微波技術 "wikilink")

1.
2.  "Hybrid circuits for microwaves", W. A. Tyrell, [Proc. IRE](https://zh.wikipedia.org/wiki/Proc._IRE "wikilink"), vol. 35, pp. 1294-1306; November 1947.
3.  "Basic Microwave Techniques and Laboratory Manual" By M. L. Sisodia, Published by New Age International, 1987