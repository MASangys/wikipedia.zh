**GPU集群**是一個[計算機集群](https://zh.wikipedia.org/wiki/計算機集群 "wikilink")，其中每個節點配備有圖形處理單元（GPU）。通過圖形處理單元（GPGPU）上的通用計算來利用現代GPU的計算能力，可以使用GPU集群執行非常快速的計算。

## 硬件 (GPU)

GPU集群可以使用來自兩個主要獨立硬件供應商的硬件（[AMD和](https://zh.wikipedia.org/wiki/AMD "wikilink")[nVidia](https://zh.wikipedia.org/wiki/nVidia "wikilink")）。\[1\]

## 硬件（其他）

### 互聯

除了計算機節點及其各自的GPU之外，還需要足夠快的互連以便在節點間傳送數據。互連的類型在很大程度上取決於存在的節點數量。互連的一些例子包括[千兆以太網和](https://zh.wikipedia.org/wiki/千兆以太網 "wikilink")[無限帶寬](../Page/InfiniBand.md "wikilink")。

### 供應商

NVIDIA®（英偉達™）提供專用特斯拉首選合作夥伴（TPP）中列表，能夠使用Tesla
20系列GPGPU構建和交付完全配置的GPU集群。AMAX信息技術公司，戴爾，惠普和Silicon
Graphics是為數不多的幾家提供完整GPU集群和系統的公司之一。\[2\]是OpenCL™的一个包装，允许大多数未修改的应用程序透明地利用集群中的多个OpenCL设备，就像所有设备都在本地计算机上一样。

## 軟件

製造許多配備GPU的機器所需的軟件組件包括：

1.  操作系統\[3\]
2.  GPU驅動程序，用於每個群集節點中存在的每種類型的GPU
3.  集群API（如消息傳遞接口，MPI）
4.  VirtualCL（VCL）\[4\]集群平台是OpenCL™的一个包装，允许大多数未修改的应用程序透明地利用集群中的多个OpenCL设备，就像所有设备都在本地计算机上一样。

## 算法映射

映射算法以運行GPU群集有點類似於映射算法以在傳統計算機群集上運行。例如：不是從RAM分配數組的片段，而是在GPU群集的節點之間劃分紋理。\[5\]

## 參考資料

[Category:叢集計算](https://zh.wikipedia.org/wiki/Category:叢集計算 "wikilink")
[Category:GPGPU](https://zh.wikipedia.org/wiki/Category:GPGPU "wikilink")
[Category:图形硬件](https://zh.wikipedia.org/wiki/Category:图形硬件 "wikilink")

1.  [用於高性能計算的GPU集群](http://www.ncsa.illinois.edu/~kindr/papers/ppac09_paper.pdf)

2.

3.  [GPU核心溫度監測](http://www.gputemp.com)

4.
5.