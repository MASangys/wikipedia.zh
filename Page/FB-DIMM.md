**Fully Buffered
DIMM**（或**FB-DIMM**）是一種[記憶體解決方案](../Page/記憶體.md "wikilink")，用來增加記憶體系統的穩定性、速度、及容量密度。就傳統而言，[記憶體控制器上的資料線必須與每一個](../Page/記憶體控制器.md "wikilink")[DRAM模組相連接](../Page/DRAM.md "wikilink")，如此記憶體無論是拓寬存取介面的頻寬或加快存取介面的速度，都會使介面的信號轉差，如此不僅限制了速度的提升，也會限制記憶體系統的記憶空間提升，而FB-DIMM則是用不同的方式手法來解決這個問題。[JEDEC組織已經正式敲定發佈FB](../Page/JEDEC.md "wikilink")-DIMM的規範標準。

[FBDIMM.gif](https://zh.wikipedia.org/wiki/File:FBDIMM.gif "fig:FBDIMM.gif")

## 技術

Fully Buffered DIMM架構新創立了一顆先進記憶體緩衝（Advanced Memory
Buffer，AMB）晶片，這顆晶片被安插在記憶體控制器與記憶體模組間，且與「傳統DRAM所用的並列匯流排架構」不同的，FB-DIMM是以串列介面來連接AMB晶片與記憶體控制器，如此可以在不增加記憶體控制器的線路數下提升記憶體的頻寬，同時具有技術可行性。使用此架構後，記憶體控制器不需要再直接將資料寫入記憶體模組，而是透過AMB晶片來完成這項工作。此外AMB也能以緩衝方式來抵補信號劣化並重新發送信號。除此之外，AMB也能提供錯誤更正，而不需要偏勞到記憶體控制器或處理器，另外也能提供「位元通道容錯移轉校正(Bit
Lane Failover
Correction)」能力，能查出哪一條資料路徑損壞，並在運作過程中將該壞損路徑移除不用，如此能大幅減少命令資訊傳輸、位址資訊傳輸的錯誤。

此外，因為讀取及寫入都已經透過緩衝處理，所以記憶體控制器可同時執行讀取與寫入。如此不僅接線更簡化、記憶體頻寬更大，且就理論而言，記憶體控制器可以不用在意與理會所使用的是何種記憶體晶片，可以是以前的DDR2抑或是現在的DDR3，理論上可直接替換。不過，Fully
Buffered
DIMM的作法也有其不利處，特別是在功耗（）及資料存取需求的[延遲](../Page/延遲.md "wikilink")（，俗稱：[Lag](../Page/Lag.md "wikilink")）上。然而此方式應是未來最無顧慮的記憶體效能提升法。

## 外部連結

  - <http://www.jedec.org/standards-documents/docs/jesd-8-18a>
  - The Inquirer series（探究者系列）:
    [1](http://www.theinquirer.net/?article=15167)
    [2](http://www.theinquirer.net/?article=15189)
    [3](http://www.theinquirer.net/?article=15214)

[Category:電腦記憶體](https://zh.wikipedia.org/wiki/Category:電腦記憶體 "wikilink")