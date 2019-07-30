**R-U-Dead-Yet**，简写为**R.U.D.Y.**，是黑客用来执行慢速率[拒绝服务（DoS）攻击的工具](../Page/阻斷服務攻擊.md "wikilink")。它通过将长表单字段定向到目标服务器来进行“低速和慢速”的攻击。\[1\]众所周知，它有一个交互式控制台，因此它是一个用户友好的工具。\[2\]它减少了与目标网站的长期连接，并在可行的情况下保持会话的开放。开放会话的数量使服务器或网站超负荷，使真正的访问者无法访问它。数据用令人难以置信的慢速度以小包发送；通常每个字节之间有10秒的间隔，但这些间隔不是确定的，可能会有所不同，以避免检测。

这类攻击的受害者服务器可能会面临无法访问特定网站、连接中断、网络性能急剧下降等问题。

黑客可以针对不同的服务器或主机进行不同目的的攻击；这些目的包括但不限于[勒索](https://zh.wikipedia.org/wiki/勒索 "wikilink")、报复，有时甚至是行动主义。

RUDY攻击打开到HTTP服务器的并发POST连接，并延迟将POST请求的主体发送到服务器资源已饱和的位置。这种攻击以非常慢的速度发送大量的小数据包，以保持连接打开和服务器繁忙。与泛滥的DoS攻击相比，这种低速度的攻击行为使得检测变得相对困难，因为DoS攻击会异常地增加流量。

## 另请参阅

  - [Fork炸弹](../Page/Fork炸弹.md "wikilink")
  - 高轨道离子炮
  - [LAND攻击](../Page/LAND攻击.md "wikilink")
  - [死亡之Ping](https://zh.wikipedia.org/wiki/死亡之Ping "wikilink")
  - ReDoS
  - Slowloris
  - Zemra

## 参考文献

<references group="" responsive="">

</references>

## 外部链接

  - [Google Code上的R-U-Dead-Yet](https://code.google.com/archive/p/r-u-dead-yet/)
  - [SourceForge上的R-U-Dead-Yet](https://sourceforge.net/projects/r-u-dead-yet/)

[Category:阻斷服務攻擊](https://zh.wikipedia.org/wiki/Category:阻斷服務攻擊 "wikilink")

1.
2.