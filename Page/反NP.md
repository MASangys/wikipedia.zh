在[計算複雜度理論上](https://zh.wikipedia.org/wiki/計算複雜度理論 "wikilink")，**反NP**類是[複雜度類的其中一類](https://zh.wikipedia.org/wiki/複雜度類 "wikilink")。

## 定義

一個問題\(\mathcal{X}\)是**反NP**的成員，[若且唯若](https://zh.wikipedia.org/wiki/若且唯若 "wikilink")，它的補全\(\mathcal{X}^{\rm C}\)必定是在複雜度[NP](../Page/NP_\(複雜度\).md "wikilink")；用數學符號來寫，\(\mathbf{CoNP}:=\{L | L^{\rm C}\in\mathbf{NP}\}\)。

簡單來說，**反NP**複雜度，是高效率而又可核實地證明命題為**錯**的組群，當中的佼佼者是立即找到[反例](../Page/反例.md "wikilink")存在。

其中一個[NP完全](../Page/NP完全.md "wikilink")問題的例子是[子集合加總問題](https://zh.wikipedia.org/wiki/子集合加總問題 "wikilink")：給一個整數集合，問是否存在某個非空子集中的數字和為0？ 例：給定集合{−7, −3, −2, 5, 8}，答案是**是**，因為子集合{−3, −2, 5}的數字和是0。

補全問題在**反NP**中就會要求：給有限的整數集，是否每個非空子集有一個非零總和？你的證明只要必須給出事例，敘述"沒有"指定求和到零的一個非空子集，而這證明必須可以在合理時間內驗證。

## 與其他複雜度的關係

[複雜度P](../Page/P_\(複雜度\).md "wikilink")，是[多項式時間](../Page/多項式時間.md "wikilink")可解的問題集合，是一個NP和**反NP**的子集。P通常認定是一個在此兩類別下的嚴格子集（但無法驗證是落在兩個集合的哪一邊）。NP和反NP通常認為是不相等的。如果那樣，[NP完全](../Page/NP完全.md "wikilink")問題將不會落在反NP問題中，且[反NP完全問題將不會落在NP中](https://zh.wikipedia.org/wiki/反NP完全 "wikilink")。

本問題可由下述步驟粗略證明：假設有個[NP完全](../Page/NP完全.md "wikilink")問題\(\mathcal{X}\)處於反NP問題的集合中，由於所有NP問題可被[變換成](https://zh.wikipedia.org/wiki/可變換_\(複雜度\) "wikilink")\(\mathcal{X}\)問題，因此我們可以為所有NP問題建造一個可在[多項式時間](../Page/多項式時間.md "wikilink")判定其補性質的[非確定型圖靈機](https://zh.wikipedia.org/wiki/非確定型圖靈機 "wikilink")，意即NP是**反NP**的子集。因此NP問題的補集合是一個反NP問題的補集合，意即**反NP**是NP的子集。由於我們已知NP是**反NP**的子集，因此表示這兩個集合是一樣的，這證明了**沒有反NP完全問題可在NP類之中**的性質是對稱的（Symmetrical）。

用數學符號嚴格證明：假設一個問題\(\mathcal{X}\)是[NP完全](../Page/NP完全.md "wikilink")，\(\mathbf{NP}=\mathbf{CoNP}\)，[若且唯若](https://zh.wikipedia.org/wiki/若且唯若 "wikilink")\(\mathcal{X}\in\mathbf{CoNP}\)。以下的證明是不能從以上文字直接看得出：

  -
    \(\Rightarrow\)
      -

          -
            若\(\mathbf{NP}=\mathbf{CoNP}\)，\(\mathcal{X}\in\mathbf{NP} \Rightarrow \mathcal{X}\in\mathbf{CoNP}\)

<!-- end list -->

  -
    \(\Leftarrow\)
      -

          -
            \(\mathbf{NP}\subseteq\mathbf{CoNP}\)：如果\(\mathcal{L}\in\mathbf{NP}\)。很明顯地，若\(\mathcal{X}\)是[NP完全](../Page/NP完全.md "wikilink")，自然\(\mathcal{X}\) 是[NP難](https://zh.wikipedia.org/wiki/NP-hard "wikilink")，\(\mathcal{L}\leq_p\mathcal{X}\)，所以\(\mathcal{L}^{\mathrm{C}}\leq_p\mathcal{X}^{\mathrm{C}}\)。但\(\mathcal{X}\in\mathbf{CoNP}\)亦即代表\(\mathcal{X}^{\mathrm{C}}\in\mathbf{NP}\)，所以\(\mathcal{L}^{\mathrm{C}}\in\mathbf{NP}\)，最終 \(\mathcal{L}\in\mathbf{CoNP}\)。
            \(\mathbf{NP}\supseteq\mathbf{CoNP}\)：\(\mathcal{X}\in\mathbf{CoNP} \Rightarrow \mathcal{X}^{\mathrm{C}}\in\mathbf{NP} \Rightarrow \mathcal{X}^{\mathrm{C}}\in\mathbf{CoNP} \Rightarrow (\mathcal{X}^{\mathrm{C}})^{\mathrm{C}}=\mathcal{X}\in\mathbf{NP}\)

如果一個問題可被證同時為NP與**反NP**，則通常我們將會視作**本問題不是NP完全**命題的強力假設（若非如此，則NP相等於**反NP**）。

## 應用

一個同時在NP與反NP集合的有名問題是[整數分解](../Page/整数分解.md "wikilink")：給兩個正整數m與n，決定m是否有小於n且大於1的因數。

第一個问题的方法很清晰：如果m的確存在一個滿足條件的因子，則長除法即可驗證；另一個问题的方法就困難且精妙多了：你必須將m的所有質數因子列出，並為每個因子提供質數性質的證明。

整數因子分解常與質數性質問題混淆在一起，整數因子化據信是NP或反NP，而質數問題落在類別P\[1\]。

## 文內注釋

## 參考資料

  - 複雜度類動物園：[反NP](https://web.archive.org/web/20061128071923/http://qwiki.caltech.edu/wiki/Complexity_Zoo#conp)

## 外部連結

  -
[Category:複雜度類](https://zh.wikipedia.org/wiki/Category:複雜度類 "wikilink") [Category:最優化](https://zh.wikipedia.org/wiki/Category:最優化 "wikilink") [Category:计算机科学中未解决的问题](https://zh.wikipedia.org/wiki/Category:计算机科学中未解决的问题 "wikilink")

1.  參考: <http://www.math.princeton.edu/~annals/issues/2004/Sept2004/Agrawal.pdf>