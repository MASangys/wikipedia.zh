[缩略图](https://zh.wikipedia.org/wiki/File:Sun-crypto-accelerator-1000.jpg "fig:缩略图") **SSL加速**是一种减轻[中央处理器](../Page/中央处理器.md "wikilink")过多参与[传输层安全协议](https://zh.wikipedia.org/wiki/傳輸層安全協議 "wikilink")（TLS）的[公开密钥加密](../Page/公开密钥加密.md "wikilink")所产生负担的方法，它的前身是安全套接层（SSL）的硬件加速器。

通常来说，这是一种独立的扩展卡插入到计算机的[PCI插槽](../Page/外设组件互连标准.md "wikilink")，其中包括一个或多个[辅助处理器处理大量的SSL所需计算](../Page/輔助處理器.md "wikilink")。

SSL加速器可以使用现成的CPU，但大多数是使用[ASIC和](../Page/特殊應用積體電路.md "wikilink")[RISC板卡来完成最艰难的计算工作](../Page/精简指令集.md "wikilink")。

## 它如何运行

一个SSL会话中计算最昂贵的部分是SSL握手，SSL服务器（通常是SSL网页服务器）与SSL客户端（通常是网页浏览器）将协商一组建立安全连接所需的参数。

SSL握手的职责之一是协商安全密钥（对称密钥，用于此会话存续期间），但加密和签名SSL握手消息本身使用非对称密钥完成（包含在证书中），这要消耗更多的计算能力，相较于使用对称加密法加密/解密会话数据。

典型的SSL硬件加速器会将SSL握手的处理从服务器剥离，让服务器软件处理更多的、实际的使用[对称加密的SSL数据交换](../Page/對稱密鑰加密.md "wikilink")，但部分加速器将处理所有SSL操作和终止SSL连接，这使服务器直接看到未加密的连接。

### 中央处理器支持

现代的[x86](https://zh.wikipedia.org/wiki/x86 "wikilink") CPU支持在硬件中加密和解密[高级加密标准](../Page/高级加密标准.md "wikilink")（AES），只要使用Intel在2008年3月提出的[AES指令集](../Page/AES指令集.md "wikilink")。

[Allwinner Technology在其A](../Page/全志科技.md "wikilink")10、A20、A30和A80 [ARM](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")[系统芯片](../Page/系统芯片.md "wikilink")系列中提供一个硬件加密加速器。该加速器提供[RSA公钥算法](../Page/RSA加密演算法.md "wikilink")、几种广泛使用的[对称密钥算法](../Page/對稱密鑰加密.md "wikilink")、[密码散列函数](https://zh.wikipedia.org/wiki/密碼雜湊函數 "wikilink")，以及一个密码学安全的[伪随机数生成器](https://zh.wikipedia.org/wiki/伪随机数 "wikilink")。\[1\]

## 参见

  - [辅助处理器](../Page/輔助處理器.md "wikilink")
  - [公开密钥加密](../Page/公开密钥加密.md "wikilink")
  - [TLS](https://zh.wikipedia.org/wiki/傳輸層安全協議 "wikilink")
  - [Stunnel](https://zh.wikipedia.org/wiki/Stunnel "wikilink")

## 参考资料

## 外部链接

  - [Information Site Dedicated to SSL Acceleration](http://sslacceleration.info)
  - [SSL Acceleration and Offloading: What Are the Security Implications?](http://www.windowsecurity.com/articles/SSL-Acceleration-Offloading-Security-Implications.html)

[Category:密码学](https://zh.wikipedia.org/wiki/Category:密码学 "wikilink") [Category:傳輸層安全協議](https://zh.wikipedia.org/wiki/Category:傳輸層安全協議 "wikilink")

1.  [\[PATCH v5](http://lists.infradead.org/pipermail/linux-arm-kernel/2014-October/295267.html) crypto: Add Allwinner Security System crypto accelerator\] on Linux ARM kernel mailing list