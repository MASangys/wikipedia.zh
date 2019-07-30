**FREAK缺陷**（全称：**Factoring RSA Export Keys**，）是[SSL/TLS协议中的密码学安全缺陷](https://zh.wikipedia.org/wiki/传输层安全 "wikilink")。20世纪90年代，此缺陷随着美国加密出口法规的出台而引入。

## 概要

1990年代时，美国对于货物的出口设立了一些规定，从而引入了这个缺陷。规定中指出，美国软件制造商出口的软件只能使用512位及以下的[RSA加密](../Page/RSA加密演算法.md "wikilink")（即所谓的出口级加密）。此举是为了便于[NSA破译加密](https://zh.wikipedia.org/wiki/NSA "wikilink")。时至2015年，随着计算能力的发展，破解这种加密已经不再是政府机构才能做到的事，任何人只要拥有充足的计算资源，就能通过[普通数域筛选法加上约](https://zh.wikipedia.org/wiki/普通数域筛选法 "wikilink")100美元的[云计算服务轻而易举地将其破译](https://zh.wikipedia.org/wiki/云计算 "wikilink")。这个缺陷还能和[中间人攻击](../Page/中间人攻击.md "wikilink")结合利用，只要先破译网站的512位弱加密，再发动中间人攻击，就能使任何允许使用512位出口级密钥的网站失去安全保障。此漏洞于2015年发现，但从1990年代开始就已经存在。

FREAK漏洞由IMDEA、[INRIA和](https://zh.wikipedia.org/wiki/法国国家信息与自动化研究所 "wikilink")[微软研究院的研究人员共同发现](https://zh.wikipedia.org/wiki/微软研究院 "wikilink")。\[1\] OpenSSL中存在的此漏洞在[公共漏洞和暴露系统中的编号是CVE](https://zh.wikipedia.org/wiki/通用漏洞披露 "wikilink")-2015-0204。\[2\]

受到漏洞影响的软件及设备包括[苹果的](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")[Safari](../Page/Safari.md "wikilink")、[Google](../Page/Google.md "wikilink")[安卓系统上的默认浏览器](https://zh.wikipedia.org/wiki/安卓 "wikilink")，及[OpenSSL](../Page/OpenSSL.md "wikilink")。\[3\]\[4\] [微软](../Page/微软.md "wikilink")还表示全版本的[Windows系统上的SChannel传输层加密实现都受到FREAK漏洞影响](https://zh.wikipedia.org/wiki/Windows "wikilink")。\[5\]SChannel中存在的漏洞的CVE编号是CVE-2015-1637。\[6\] 而苹果的安全传输功能中的漏洞的CVE编号是CVE-2015-1067。\[7\]

受到漏洞影响的网站包括美国联邦政府网站fbi.gov、whitehouse.gov、nsa.gov，\[8\] 一个安全团队的测试发现，36%的被测HTTPS网站都受到漏洞影响。\[9\] 根据IP2Location LITE的地理定位，35%的受影响服务器都位于美国。\[10\]

有新闻报导称此漏洞是「潜在的灾难」，\[11\]是美国政府意图控制加密技术传播的「」。\[12\]

，各软件厂商已在准备发布修复漏洞后的新版本软件。\[13\]\[14\] 2015年3月9日，苹果发布了[iOS 8及](https://zh.wikipedia.org/wiki/iOS_8 "wikilink")[OS X操作系统的漏洞补丁](https://zh.wikipedia.org/wiki/OS_X "wikilink")。\[15\]\[16\] 2015年3月10日，微软为所有仍在技术支持周期内的Windows系统（[Windows Server 2003](../Page/Windows_Server_2003.md "wikilink")、[Vista及后续版本](https://zh.wikipedia.org/wiki/Vista "wikilink")）发布了漏洞补丁。\[17\] [Google Chrome](../Page/Google_Chrome.md "wikilink") 41和[Opera](https://zh.wikipedia.org/wiki/Opera "wikilink") 28也已采取相应漏洞缓解措施。\[18\] [Mozilla Firefox不受此漏洞影响](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")。

## 参见

  -
## 参考来源

## 外部链接

  - <https://www.smacktls.com/>
  - <https://www.freakattack.com/>
  - <https://infogr.am/https_sites_that_support_rsa_export_suites>

[Category:网络安全漏洞](https://zh.wikipedia.org/wiki/Category:网络安全漏洞 "wikilink") [Category:密码学](https://zh.wikipedia.org/wiki/Category:密码学 "wikilink") [Category:密码分析](https://zh.wikipedia.org/wiki/Category:密码分析 "wikilink") [Category:2015年计算机科学](https://zh.wikipedia.org/wiki/Category:2015年计算机科学 "wikilink")

1.

2.

3.

4.
5.

6.

7.  <https://support.apple.com/en-us/HT204423>

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

18. <https://www.smacktls.com/#freak>