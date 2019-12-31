> 本文内容由[DNS证书颁发机构授权](https://zh.wikipedia.org/wiki/DNS证书颁发机构授权)转换而来。


**DNS证书颁发机构授权**（，[简称](https://zh.wikipedia.org/wiki/简称 "wikilink")：）是一种政策机制，允许[域名](../Page/域名.md "wikilink")持有人指定可以为其域签发证书的[证书颁发机构](../Page/证书颁发机构.md "wikilink")。该政策凭借一个新的[域名系统](../Page/域名系统.md "wikilink")[资源记录](../Page/域名伺服器記錄類型列表.md "wikilink")“CAA”来实现。

这一标准由计算机科学家和罗布·斯特拉德林（）起草，旨在应对公众对证书颁发机构安全性的担忧。它是由[互联网工程任务组](../Page/互联网工程任务组.md "wikilink")建议的一项[互联网标准](https://zh.wikipedia.org/wiki/互联网标准 "wikilink")。

## 背景

自2001年开始，曾出现一系列被错误颁发的数字证书\[1\]\[2\]。这在损害公开可信证书授权机构可信度的同时\[3\]，也加速了各种安全机制的建设，包括[证书透明度](../Page/证书透明度.md "wikilink")追踪不当签发，[HTTP公钥固定](../Page/HTTP公钥固定.md "wikilink")和在阻止不当签发的证书，以及DNS证书颁发机构授权（CAA）在证书颁发机构方面阻止不当签发。\[4\]

DNS证书颁发机构授权的第一稿由和罗布·斯特拉德林（）起草，并于2010年10月提交为[互联网工程任务组](../Page/互联网工程任务组.md "wikilink")（IETF）的[互联网标准](https://zh.wikipedia.org/wiki/互联网标准 "wikilink")（RFC）草案。\[5\]对此进行了逐步改进\[6\]，并于2013年1月向提交了名为的标准提案。\[7\]不久后[CA/浏览器论坛展开讨论](https://zh.wikipedia.org/wiki/CA/浏览器论坛 "wikilink")\[8\]，并于2017年3月形成投票，赞成于2017年9月之前强制所有证书颁发机构履行CAA\[9\]\[10\]。但至少有一家证书颁发机构（[科摩多](../Page/科摩多集团.md "wikilink")）未能在截止日期前实施CAA\[11\]。[慕尼黑工业大学](../Page/慕尼黑工业大学.md "wikilink")于2017年的一项研究发现，证书颁发机构在很多情况下未能正确施行该标准的部分内容。\[12\]

，的报告显示，在最流行且支持[TLS的前](https://zh.wikipedia.org/wiki/TLS "wikilink")15万个网站中，只有3.4%使用了CAA记录。\[13\]

## 记录

实现CAA的[证书颁发机构](../Page/证书颁发机构.md "wikilink")对CAA[资源记录执行](../Page/域名伺服器記錄類型列表.md "wikilink")[DNS查找](../Page/域名系统.md "wikilink")，并检查自己是否被列为授权方，之后再颁发[数字证书](../Page/公開金鑰認證.md "wikilink")。\[14\]每条CAA资源记录由以下三个属性组成，并以[空格](../Page/空格.md "wikilink")分隔<span data-segmentid="73" class="cx-segment">\[15\]</span>：

  - **flag**
    一个实现了信号系统的[位段](../Page/位段.md "wikilink")，以供将来使用。，它仅定义了发行者关键标志，用于指示证书颁发机构在颁发证书之前必须理解相应的属性标记。\[16\]此标志允许将来通过强制扩展对协议进行扩展\[17\]，类似于[X.509证书中的关键扩展](https://zh.wikipedia.org/wiki/X.509#证书组成结构 "wikilink")。
  - **tag**
    为下列属性之一：
      - issue
        此属性授权关联属性值中指定的域名的持有者，向包含该属性的域名颁发证书。
      - issuewild
        此属性的作用类似于上述的issue属性，但仅授权颁发[通配符证书](../Page/通配符证书.md "wikilink")。当请求为通配符证书时，这一属性优先于issue属性。
      - iodef
        此属性指定证书颁发机构使用“”（，简称：IODEF）向域名持有者报告无效证书请求的方法。，并非所有证书颁发机构都支持此标签，因此不能保证所有证书在颁发时都会被报告。
  - value
    与所选的tag属性所相关联的值。

当没有任何CAA记录时，颁发机构可以正常、不受限地进行颁发。而当存在一个空白的签发（issue）标签时，所有颁发被禁止。\[18\]\[19\]\[20\]

监视证书颁发机构行为的第三方，可能会根据域名的CAA记录检查新颁发的证书，但是他们须知道域名的CAA记录有可能在证书颁发到他们检查的期间发生过更改。客户不能将CAA作为其证书验证过程的一部分。\[21\]

## 扩展

2016年10月26日，CAA标准的首个扩展草案发布。该草案在签发（issue）属性后方提议了一个新的account-uri标识，其将一个域名绑定到一个特定的帐户。\[22\]2017年8月30日，这一草案得到修订，再引入了validation-methods（验证方法）标识，用以将一个域与一个特定的验证方法绑定。2018年6月21日，进一步的修改删除了account-uri和validation-methods的[连字符](https://zh.wikipedia.org/wiki/连字符 "wikilink")，accounturi和validationmethods取而代之。\[23\]\[24\]

## 例子

若要表明只有标识为ca.example.net的证书颁发机构有权为example.com及所有子域名颁发证书，可以使用以下CAA记录\[25\]：  若要禁止颁发任何证书，可以列出一个空的颁发者列表\[26\]：  若要标识证书颁发机构应将无效的证书请求报告给指定的[電子郵件地址](../Page/電子郵件地址.md "wikilink")和端点\[27\]：  若要使用该协议的一个未来扩展——例如，定义了一个新的future属性，需要证书颁发机构理解该属性后才能安全地继续处理——可以设置issuer critical标签\[28\]：

## 另见

  - [证书颁发机构](../Page/证书颁发机构.md "wikilink")

  - [证书透明度](../Page/证书透明度.md "wikilink")

  -
  - [HTTP公钥固定](../Page/HTTP公钥固定.md "wikilink")

  - [域名伺服器記錄類型列表](../Page/域名伺服器記錄類型列表.md "wikilink")

## 参考来源

## 外部链接

  -

[Category:DNS记录类型](https://zh.wikipedia.org/wiki/Category:DNS记录类型 "wikilink") [Category:傳輸層安全協議](https://zh.wikipedia.org/wiki/Category:傳輸層安全協議 "wikilink")

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
11.
12.
13.
14.
15.
16.
17.
18.
19.
20.
21.
22.
23.
24.
25.
26.
27.
28.