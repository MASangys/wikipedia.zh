**Raft**是一個[共識演算法](https://zh.wikipedia.org/wiki/共識演算法 "wikilink")，取代[Paxos](https://zh.wikipedia.org/wiki/Paxos "wikilink")。Raft的目標是提供更好理解的演算法\[1\]\[2\]，並且證明可以提供與Paxos相同的[容錯性以及](https://zh.wikipedia.org/wiki/容錯 "wikilink")[性能](https://zh.wikipedia.org/wiki/性能 "wikilink")\[3\]\[4\]。

## 簡介

Raft透過選舉**領袖**（）的方式實做共識演算法。

在Raft叢集（）裡，伺服器可能會是這三種身份其中一個：**領袖**（）、**追隨者**（），或是**候選人**（）\[5\]。在正常情況下只會有一個領袖，其他都是追隨者\[6\]。而領袖會負責所有外部的請求，如果不是領袖的機器收到時，請求會被導到領袖\[7\]。

通常領袖會藉由固定時間發送訊息，也就是「心跳（）」\[8\]，讓追隨者知道叢集的領袖還在運作。而每個追隨者都會設計超時機制（），當超過一定時間沒有收到心跳（通常是150 ms或300 ms\[9\]），叢集就會進入選舉狀態。

Raft將問題拆成數個子問題分開解決\[10\]，讓人更容易了解：

  - 領袖選舉（）
  - 記錄複寫（）
  - 安全性（）

## 參考文獻

## 相關連結

  - [Paxos算法](../Page/Paxos算法.md "wikilink")
  - [分布式计算](../Page/分布式计算.md "wikilink")

## 外部連結

  -

[Category:分散式演算法](https://zh.wikipedia.org/wiki/Category:分散式演算法 "wikilink")

1.

2.

3.
4.
5.
6.
7.
8.
9.
10.