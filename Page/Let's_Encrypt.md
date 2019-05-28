**Let's
Encrypt**是一个于2015年三季度推出的[数字证书认证机构](https://zh.wikipedia.org/wiki/数字证书认证机构 "wikilink")，旨在以自动化流程消除手动创建和安装证书的复杂流程，並推廣使[萬維網服務器的加密連接無所不在](https://zh.wikipedia.org/wiki/萬維網 "wikilink")，为安全网站提供免费的[SSL](https://zh.wikipedia.org/wiki/SSL "wikilink")/[TLS证书](https://zh.wikipedia.org/wiki/TLS "wikilink")。\[1\]\[2\]

## 介紹

Let's
Encrypt由（缩写ISRG）提供服务。主要赞助商包括[电子前哨基金会](../Page/电子前哨基金会.md "wikilink")、[Mozilla基金会](https://zh.wikipedia.org/wiki/Mozilla基金会 "wikilink")、[Akamai以及](https://zh.wikipedia.org/wiki/Akamai "wikilink")[思科](https://zh.wikipedia.org/wiki/思科 "wikilink")。2015年4月9日，ISRG与[Linux基金會宣布合作](../Page/Linux基金會.md "wikilink")。\[3\]

用以实现新的数字证书认证机构的协议被称为自动证书管理环境（ACME）。\[4\][GitHub上有这一规范的草案](../Page/GitHub.md "wikilink")，\[5\]\[6\]且提案的一个版本已作为一个[Internet草案发布](../Page/RFC.md "wikilink")。\[7\]

Let's Encrypt宣称这一过程将十分简单、自动化并且免费。\[8\]

## 歷史

2015年8月7日，该服务更新其推出计划，预计将在2015年9月7日发布首个证书，随后向列入白名单的域名发行少量证书并逐渐扩大发行量。\[9\]

2015年12月3日，服务进入公测阶段，正式面向公众。\[10\]

2016年3月8日，ISRG宣布已经签发了第一百万张证书。\[11\]

2016年4月12日，该项目正式离开Beta阶段。\[12\]

2017年6月28日，ISRG宣布，他们已经签发了一亿张证书。\[13\]\[14\]

## 技术

2015年6月，Let's
Encrypt得到了一个存储在[硬件安全模块中的离线的](../Page/硬件安全模块.md "wikilink")[RSA根证书](../Page/RSA加密演算法.md "wikilink")。这个由IdenTrust证书签发机构交叉签名的根证书，被用于签署两个证书。其中一个就是用于签发请求的证书，另一个则是保存在本地的证书，这个证书用于在上一个证书出问题时作备份证书之用。因为IdenTrust的CA根证书目前已被预置于主流浏览器中，所以Let's
Encrypt签发的证书可以从项目开始时就被识别并接受，甚至在用户的浏览器中没有信任ISRG的根证书时也没问题\[15\]。为了解决对[Windows
XP的兼容性](../Page/Windows_XP.md "wikilink")，目前Let's
Encrypt已经获取了另外两个根证书，原来的证书作为备用。\[16\]

Let's
Encrypt的开发者们本计划在2015年年末推出签发[ECDSA根证书的服务](https://zh.wikipedia.org/wiki/ECDSA "wikilink")，但该计划已经经历三次推迟，目前定于2018年3月前完成。\[17\]

2017年6月，Let's Encrypt宣布将于2018年1月启用ACME v2 API。\[18\]

2017年7月，Let's
Encrypt宣布将于2018年1月支持[通配符证书](../Page/通配符证书.md "wikilink")。\[19\]

## 参考资料

## 外部链接

  -
  - [GitHub上的](../Page/GitHub.md "wikilink")[代码库](https://github.com/letsencrypt)

  - [塞斯·舒恩 Libre Planet 2015 演讲： Let's
    Encrypt](https://media.libreplanet.org/u/libreplanet/m/seth-schoen-lets-encrypt/)

[Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink")
[Category:电子商务](https://zh.wikipedia.org/wiki/Category:电子商务 "wikilink")

1.

2.

3.

4.  [Let's Encrypt – Get Involved](https://letsencrypt.org/getinvolved/)

5.
6.  [Draft ACME specification](https://github.com/letsencrypt/acme-spec)

7.

8.

9.

10.

11.

12.

13.

14. [Solidot | Let's Encrypt
    市场份额突破 36%](http://www.solidot.org/story?sid=54572)

15.

16.
17.

18.

19.