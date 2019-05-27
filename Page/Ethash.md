**Ethash**是[以太坊上的加密貨幣的](../Page/以太坊.md "wikilink")[共識算法](https://zh.wikipedia.org/wiki/共識算法 "wikilink")，使用使用[工作量証明](../Page/工作量證明.md "wikilink")。\[1\]
Ethash也使用Keccak，一種己標準化為[SHA-3的](../Page/SHA-3.md "wikilink")[散列函数](../Page/散列函數.md "wikilink")。
但Ethash與[SHA-3並不相同](../Page/SHA-3.md "wikilink")，不應將兩者混淆。

由版本1.0開始，Ethash已被設計為抵制[ASIC](../Page/特殊應用積體電路.md "wikilink")，主要方法為藉著極大量的隨機查表，加重記憶體的負載，ASIC無法再利用專用線路而加速。\[2\]

Ethash是從Dagger-Hashimoto算法改動而成的。<ref>

<div>

Vitalik Buterin的。
[匕：存储器-难以计算、存储器的容易证实大的下行压力，现在长可替代](http://www.hashcash.org/papers/dagger.html)的。
技术报告，hashcash.org 网站2013年。

</div>

</ref>\[3\]\[4\]Ethash使用一個初始值為1GB的[DAGdataset及一個初始值為](https://zh.wikipedia.org/wiki/有向无环图 "wikilink")16MB的假亂數表[cache](https://zh.wikipedia.org/wiki/cache "wikilink")，它們的內容每30000個區塊就會重新計算，這個30000區塊的間隔稱為epoch。每個epoch所產生的內容都會增大，因此1GB與16MB都只是初始值。

[礦工會存儲整個dataset和cache](https://zh.wikipedia.org/wiki/礦工_\(數位貨幣\) "wikilink")，而輕客户端只需要存儲cache。礦工挖礦時將找到的[nonce填入區塊頭](https://zh.wikipedia.org/wiki/nonce "wikilink")，並需要以[SHA-3形式不斷查表尋求MIX值以計算該區塊的解](../Page/SHA-3.md "wikilink")。\[5\]

## 抵制ASIC的原因

由於[工作量証明的核心是](../Page/工作量證明.md "wikilink")[Hash運算](../Page/散列函數.md "wikilink")，運算得愈快的[礦工將愈大機會挖掘到新的區塊而獲得更多貨幣收益](https://zh.wikipedia.org/wiki/礦工_\(數位貨幣\) "wikilink")。礦工的挖礦設備亦由CPU演變為GPU，再由GPU演變為ASIC。礦機門檻的提升導致了礦工人數下降，大多數的收益集中於少部份礦工，這種節點的集中與[區塊鏈的原意](../Page/区块链.md "wikilink")[去中心化是相違背的](https://zh.wikipedia.org/wiki/去中心化 "wikilink")。因此，Ethash的計算過程中增加了對內存的要求而抵抗ASIC礦機的優勢。

## 参考文献

<references group="">

</references>

[Category:密码学](https://zh.wikipedia.org/wiki/Category:密码学 "wikilink")
[Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.

2.

3.

4.

5.