> 本文内容由[Camellia](https://zh.wikipedia.org/wiki/Camellia)转换而来。


在[密碼學中](https://zh.wikipedia.org/wiki/密碼學 "wikilink")，**Camellia**是一種為許多組織所推崇的[塊密碼](https://zh.wikipedia.org/wiki/塊密碼 "wikilink")（block cipher），包括[歐盟的](https://zh.wikipedia.org/wiki/歐盟 "wikilink")[NESSIE項目](https://zh.wikipedia.org/wiki/NESSIE "wikilink")（作為選定算法）和[日本](../Page/日本.md "wikilink")的[CRYPTREC項目](https://zh.wikipedia.org/wiki/CRYPTREC "wikilink")（作為推薦算法）。該算法由[三菱和](https://zh.wikipedia.org/wiki/三菱 "wikilink")[日本電信電話](../Page/日本電信電話.md "wikilink")（NTT）在2000年共同發明，它和早期的塊算法（[E2及](https://zh.wikipedia.org/wiki/E2_\(cipher\) "wikilink")[MISTY1](https://zh.wikipedia.org/wiki/MISTY1 "wikilink")）有相似的設計思想。

Camellia算法每塊的的長度（block size）為128[位元](../Page/位元.md "wikilink")，金鑰長度則可以使用128、192或256[位元](../Page/位元.md "wikilink")。具有與[AES同等級的安全強度及運算量](https://zh.wikipedia.org/wiki/AES "wikilink")\[1\]。

## 設計

在計算方面，Camellia採用18輪（128位元）或者24輪（192或256位元）的[Feistel cipher](https://zh.wikipedia.org/wiki/Feistel_cipher "wikilink")。每6輪就會做一個邏輯變換，即所謂的「FL-函數」或者它的反函數。這種算法也使用輸入、輸出[key whitening](https://zh.wikipedia.org/wiki/key_whitening "wikilink")。

## 專利狀態

雖然受到[專利保護](https://zh.wikipedia.org/wiki/專利 "wikilink")，但在2001年時NTT宣佈Camellia為Royalty-free license\[2\]。

## 使用情況

2008年時將Camellia被加入進[Mozilla Firefox 3](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")\[3\]。同年稍晚，[FreeBSD](../Page/FreeBSD.md "wikilink")也宣佈在6.4-RELEASE內加入Camellia。[2009年9月](../Page/2009年9月.md "wikilink")，[GnuPG](../Page/GnuPG.md "wikilink")在1.4.10版加入Camellia支援。

## 參見

  - [AES](../Page/高级加密标准.md "wikilink")
  - Kazumaro Aoki, Tetsuya Ichikawa, Masayuki Kanda, Mitsuru Matsui, Shiho Moriai, Junko Nakajima, Toshio Tokita. *Camellia: A 128-Bit Block Cipher Suitable for Multiple Platforms — Design and Analysis*. Selected Areas in Cryptography 2000, pp39–56.

## 参考文献

## 外部連結

  - [Camellia 网站](https://info.isl.ntt.co.jp/crypt/camellia/)
  - [使用Camellia的产品](https://info.isl.ntt.co.jp/crypt/camellia/product.html)
  - [参考代码](http://embeddedsw.net/Cipher_Reference_Home.html)
  - RFC 3657 — Use of the Camellia Encryption Algorithm in Cryptographic Message Syntax (CMS)
  - RFC 4312 — The Camellia Cipher Algorithm and Its Use With IPsec

[Category:分组密码](https://zh.wikipedia.org/wiki/Category:分组密码 "wikilink")

1.  [Japan's First 128-bit Block Cipher 'Camellia' Approved as a New Standard Encryption Algorithm in the Internet](http://www.physorg.com/news5315.html)
2.  [Announcement of Royalty-free Licenses for Essential Patents of NTT Encryption and Digital Signature Algorithms](http://www.ntt.co.jp/news/news01e/0104/010417.html)
3.  [Camellia cipher added to Firefox](http://blog.mozilla.com/gen/2007/07/30/camellia-cipher-added-to-firefox/)