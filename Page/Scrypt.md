在[密碼學中](https://zh.wikipedia.org/wiki/密碼學 "wikilink")，**scrypt**（唸作「ess
crypt」\[1\]）是於2009年所發明的，當初設計用在他所創立的服務上\[2\]。設計時考慮到大規模的而刻意設計需要大量記憶體運算。2016年，scrypt演算法發佈在。scrypt的簡化版被用在數個[密碼貨幣的](../Page/密碼貨幣.md "wikilink")[工作量證明](../Page/工作量證明.md "wikilink")（）上。

## 概觀

scrypt需要使用大量記憶體的原因來自於產生大量[伪随机性](../Page/伪随机性.md "wikilink")（）資料作為演算法計算的基礎。一旦這些資料被產生後，演算法將會以伪随机性的順序讀取這些資料產生結果。因此最直接的實做方式將會需要大量記憶體將這些資料儲存在記憶體內供演算法計算。

另外一方面，由於伪随机性資料是透過演算法產生，在實做上也可以在需要存取時再計算以降低記憶體使用量。但由於計算成本很高，這個實做方法將大幅降低演算法的速度。

這就是scrypt設計時考慮到的，攻擊者可以使用後者的方法但計算速度很慢，或是用前者的方法但因記憶體成本而難以大規模平行化。

## 密碼貨幣上的使用

scrypt被用在數個[密碼貨幣的](../Page/密碼貨幣.md "wikilink")[工作量證明演算法上](../Page/工作量證明.md "wikilink")。首先被所使用（2011年九月)，而後被[莱特币](../Page/莱特币.md "wikilink")（）與[多吉币](../Page/多吉币.md "wikilink")（）所採用。因[GPU在計算使用scrypt的密碼貨幣較](https://zh.wikipedia.org/wiki/GPU "wikilink")[CPU有效率](https://zh.wikipedia.org/wiki/CPU "wikilink")，這導致了高階顯示卡在2013年年底的短缺\[3\]。

在2014年開始，市場上已經有使用[ASIC計算scrypt演算法的挖礦機](../Page/特殊應用積體電路.md "wikilink")\[4\]。

## 相關連結

  - [bcrypt](https://zh.wikipedia.org/wiki/bcrypt "wikilink")

## 註解

## 外部連結

  - [Tarsnap - The scrypt key derivation function and encryption
    utility](https://www.tarsnap.com/scrypt.html)

  - [STRONGER KEY DERIVATION VIA SEQUENTIAL MEMORY-HARD
    FUNCTIONS](https://www.tarsnap.com/scrypt/scrypt.pdf)

  -

[Category:密码散列函数](https://zh.wikipedia.org/wiki/Category:密码散列函数 "wikilink")

1.
2.
3.
4.