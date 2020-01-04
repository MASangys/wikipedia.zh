> 本文内容由[TURN](https://zh.wikipedia.org/wiki/TURN)转换而来。


**TURN**（全名**Traversal Using Relay NAT**），是一種資料傳輸協議（data-transfer protocol）。允許在TCP或UDP的連線上跨越[NAT或](https://zh.wikipedia.org/wiki/NAT "wikilink")[防火牆](https://zh.wikipedia.org/wiki/防火牆 "wikilink")。

TURN是一个client-server协议。TURN的NAT穿透方法與[STUN](../Page/STUN.md "wikilink")類似，都是通過取得應用層中的公有地址達到NAT穿透。但實現TURN client的終端必須在通訊開始前與TURN server進行交互，並要求TURN server產生"relay port"，也就是relayed-transport-address。這時TURN server會建立peer，即遠端端點（remote endpoints），開始進行中繼（relay）的動作，TURN client利用relay port將資料傳送至peer，再由peer轉傳到另一方的TURN client。

## 參見

  - [NAT穿越](https://zh.wikipedia.org/wiki/NAT穿越 "wikilink")
  - [Session Traversal Utilities for NAT](../Page/STUN.md "wikilink")（STUN）
  - [Interactive Connectivity Establishment](../Page/互動式連接建立.md "wikilink")（ICE）

## 外部連結

  - RFC 5766 Traversal Using Relay NAT (TURN)
  - [Yahoo\! - Director of Engineering explaining STUN and TURN (Video)](http://www.youtube.com/watch?v=9MWYw0fltr0&eurl=http%3A%2F%2Fwww%2Evoip%2Dnews%2Ecom%2Ffeature%2Ftop%2Dvoip%2Dvideos%2D051707%2F)

### 实现

  - [Numb](http://numb.viagenie.ca/)是一種免費的STUN/TURN server.
  - [TurnServer](http://www.turnserver.org/) - OpenSource TURN server.
  - [reTurn](http://www.resiprocate.org/reTurn_Overview) - opensource STUN/TURN server and client library（C++）

[Category:网际协议](https://zh.wikipedia.org/wiki/Category:网际协议 "wikilink") [Category:网络地址转换](https://zh.wikipedia.org/wiki/Category:网络地址转换 "wikilink")