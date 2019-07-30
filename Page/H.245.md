**H.245** 是[H.323](../Page/H.323.md "wikilink")的多媒體通信控制協議，主要用於通信中的H.323 終點（endpoint）或终端（terminal）之間的H.245 訊息交换，例如加密、抖動（Jitter）。它還提供[H.225](../Page/H.225.md "wikilink")呼叫訊息穿隧（tunneled）的可能性，大大提升[防火牆的穿越](https://zh.wikipedia.org/wiki/防火牆 "wikilink")。

H.245採用[ASN.1](../Page/ASN.1.md "wikilink")（Abstract Syntax Notation 1）標準定義。數據則采用PER（Packed Encoding Rule）二進製編碼。H.245使用简单再传输协议（SRP，Simple Retransmission Protocol），或可编号选项的SRP协议（NSRP，Numbered SRP）传送H.245的消息。為了可靠度, H.245還用控制信道分段和重新裝配的協議層（CCSRL，Control Channel Segmentation and Reassembly Layer）來保證品質。

## 功能

H.245訊息分为4种类型：请求、响应、命令和指示消息。H.245 主要功能如下：

  - 主從模式决定（Master-Slave Determination）：多方通信中只有一方终端确定为主终端（Master），其他均是从终端(Slave)。
  - 能力交换 (Capability exchange)：双方交换各自能力。
  - 模式请求（Request Mode）
  - 逻辑信道（Logical Channel）
  - 多路复用表修改 (Multiplex Table Entry Modification)
  - 结束会话（End Session Command）
  - 确定环回时延(Round Trip Delay)
  - 维护迴路(Maintenance Loop)

H.245 主要信息如下：

  - 主機和次機的確認：Master-Slave Determination
  - 终端传输：Terminal Capability Set
  - 開啟邏輯通道：Open Logical Channel
  - 關閉邏輯通道：Close Logical Channel
  - 请求传输模式：Request Mode
  - 发送一個或多個命令：Send Terminal Capability Set
  - 終止H.245的發送：End Session Command

## 外部連結

  - [H.323 Tutorial](https://web.archive.org/web/20100721225210/http://voice.rutgers.edu/documentation/FAQ/H.323_Tutorial/) Includes information on the role of H.245
  - [ITU-T H.245 Recommendation](http://www.itu.int/rec/T-REC-H.245/en)

[Category:ITU-T标准](https://zh.wikipedia.org/wiki/Category:ITU-T标准 "wikilink")