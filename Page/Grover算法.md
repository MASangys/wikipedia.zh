**Grover 算法**是一種量子算法，於1996年由計算機科學家 Lov Grover提出。假設現在有一個未知的函數，Grover 算法只需對此未知的函數做 \(O(\sqrt{N})\) 次測試，其中\(N\)為此未知函數的[定义域](../Page/定义域.md "wikilink")的大小，即可以很高的概率找到一特定的輸入值，此輸入值能使此未知函數輸出特定的值。

同樣的問題在經典運算下，需要至少做 \(O(N)\) 次測試 (因為在最壞的情況下，可能第\(N\)個定義域裡的值才是正確答案)。在Grover 發表他的算法前後，Bennett, Bernstein, Brassard, 和 Vazirani 在相近的時間證明了，任何量子算法解決此問題都最少需要對此未知的函數做 \(\Omega(\sqrt{N})\) 次測試，因此Grover 算法是[渐进最优的](https://zh.wikipedia.org/wiki/渐进最优 "wikilink")。\[1\]

非局域隱變量量子計算機已經被證明可以在最多 \(O(\sqrt[3]{N})\) 步內實現在N個條目的數據庫裡的搜索，這比Grover 算法的 \(O(\sqrt{N})\) 還快，然而這些搜索算法並不能使量子計算機在多項式時間內解決NP-Complete 問題。\[2\]

不像其他的量子算法可能會比相應的經典算法有指數級的加快，Grover算法二次方的加快，不過當\(N\)很大時二次方的加快也相當可觀。Grover 算法可以在大約 2<sup>64</sup>次迭代內窮舉破解一個128比特的對稱密鑰，在大約 2<sup>128</sup>次迭代內窮舉破解一個256比特的密鑰。因此，有人提倡對稱密鑰的長度應該加倍以因應未來的量子攻擊。\[3\]

像其他的量子算法一樣，Grover 算法是概率性的，意味著這個算法以小於1的概率給出正確答案。雖然實際上對於需要多少次重複才能給出正確的答案並沒有一個上界，但是期望的重複次數並不隨\(N\)成長。在Grover發表此算法的原始論文中稱此算法為數據庫搜索算法，此說法至今仍普遍。此處數據庫相當於是一張存有未知函數的所有輸出值的表，以對應的輸入值為索引。

## 應用

雖然Grover算法的用處一直被認為是數據庫搜索，但是它也可以被認為是函數取反。

## 設定

考慮一個未排序有\(N\)個條目的數據庫，此算法需要一個由*n* = log<sub>2</sub> *N* 個量子比特所組成的\(N\)維狀態空間*H*。

## 算法步驟

[Grovers_algorithm.svg](https://zh.wikipedia.org/wiki/File:Grovers_algorithm.svg "fig:Grovers_algorithm.svg")表示\]\] 下面\(|s\rangle\)代表了所有狀態的均勻態疊加

\[|s\rangle = \frac{1}{\sqrt{N}} \sum_{x=0}^{N-1} |x\rangle\]。 令

\[U_s = 2 |s\rangle \langle s| - I\] 为Grover扩散算子，

\[U_\omega = I - 2|\omega\rangle\langle \omega|\]， 其中 \(\omega\)为使 \(f(x)=1\) 的唯一值。

将 \(U_s \circ U_\omega\) 循环 \(O(\sqrt N)\)次。

## 参见

  -
  - [秀爾演算法](../Page/秀爾演算法.md "wikilink")

## 參考資料

## 外部链接

  -
  -
  -
  -
  -
  -
[Category:量子演算法](https://zh.wikipedia.org/wiki/Category:量子演算法 "wikilink") [Category:搜尋演算法](https://zh.wikipedia.org/wiki/Category:搜尋演算法 "wikilink") [Category:后量子密码学](https://zh.wikipedia.org/wiki/Category:后量子密码学 "wikilink")

1.
2.
3.