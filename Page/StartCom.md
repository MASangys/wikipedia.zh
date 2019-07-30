**StartCom** 是一家位于以色列[埃拉特](../Page/埃拉特.md "wikilink")的证书颁发机构，主要服务包括StartCom Linux Enterprise（[Linux发行版](../Page/Linux发行版.md "wikilink")），StartSSL（[证书颁发](https://zh.wikipedia.org/wiki/数字证书认证机构 "wikilink")）和MediaHost（[网站托管](https://zh.wikipedia.org/wiki/網頁寄存服務 "wikilink")）。StartCom在中国、香港、英国和西班牙开设有新的分支机构\[1\]。

2016年，Mozilla在讨论是否删除沃通和StartCom根证书的调查中发现\[2\]，位于中国深圳的[沃通](https://zh.wikipedia.org/wiki/沃通 "wikilink")（WoSign）已经由几个不同公司将StartCom秘密收购。在Mozilla和苹果\[3\]\[4\]的制裁影响下，位于北京的沃通母公司[奇虎360](../Page/奇虎360.md "wikilink")集团决定在2016年内重组这些公司，重组后的StartCom将从丑闻缠身的沃通分离，完全成为奇虎360的下属公司\[5\]。

2017年11月16日，StartCom宣布终止业务，自2018年1月1日起停止颁发新证书，并于2020年停止[OCSP和](https://zh.wikipedia.org/wiki/OCSP "wikilink")[CRL服务](https://zh.wikipedia.org/wiki/证书吊销列表 "wikilink")\[6\]<ref>[Termination of the certificates business of Startcom](https://groups.google.com/forum/#!topic/mozilla.dev.security.policy/LM1SpKHJ-oc),

`post in mozilla.dev.security.policy newsgroup`</ref>\[7\]`。`

## StartSSL

StartCom提供免费的Class 1 [X.509](../Page/X.509.md "wikilink") SSL证书“StartSSL Free”，可用于网站服务器（[SSL/TLS](https://zh.wikipedia.org/wiki/傳輸層安全協議 "wikilink")）和（[S/MIME](https://zh.wikipedia.org/wiki/S/MIME "wikilink")）。StartCom还提供Class 2和3的证书，以及[扩展验证证书](../Page/扩展验证证书.md "wikilink")，需要复杂的验证（收费）才能得到。

2011年6月，该公司遭受网络攻击，被迫暂停数字证书发放及相关服务数周\[8\]。攻击者无法借此机会颁发证书（在被攻击的6家机构中，只有StartCom成功阻止攻击者的颁发尝试）\[9\]。

### 可信度

StartSSL证书在以下环境中默认启用：[Mozilla Firefox](../Page/Firefox.md "wikilink") 2.x或更高版本，Apple Mac OS X [10.5 (Leopard)或更高版本](../Page/Mac_OS_X_Leopard.md "wikilink")，2009年9月24日后所有[微软](../Page/微软.md "wikilink")操作系统\[10\]\[11\]，以及2010年7月27日后的[Opera](https://zh.wikipedia.org/wiki/Opera電腦瀏覽器 "wikilink")\[12\]。因为[Google Chrome](../Page/Google_Chrome.md "wikilink")，[Apple Safari和](../Page/Safari.md "wikilink")[Internet Explorer使用操作系统的证书库](../Page/Internet_Explorer.md "wikilink")，所有主流浏览器都支持StartSSL证书。

2016年9月30日，在对沃通的调查期间，苹果宣布旗下软件不会接受2016年9月19日后由沃通CA签发的证书，并会随调查进展对WoSign/StartCom的信任锚采取进一步行动。

2016年10月24日，Mozilla在其安全博客上宣布，由于在对证书颁发机构沃通数个问题的调查中发现它收购了StartCom，而交易双方并未披露此事\[13\]，Mozilla将从Firefox 51开始，停止信任2016年10月21日后签发的证书\[14\]。2016年9月1日，Google也宣布会从Chrome 56开始停止信任上述证书\[15\]。2016年9月30日，苹果产品将阻止由沃通和StartCom根CA签发，且生效日期在2016年12月1日00:00:00 GMT/UTC或其后的证书\[16\]。

2017年7月8日，Google 宣布将完全取消对沃通和 StartCom 所有证书的信任，包括过去签发的证书。\[17\]\[18\] 2017年7月11日，Firefox也准备完全取消对沃通, Startcom 和 CNNIC 的信任。\[19\]

### StartSSL无限免费证书的限制

尽管在特定用途下是免费且可无限签发的，这些证书仍有一些限制，需付费升级才能解除：

  - 3年的证书有效期
  - 证书吊销需付费

### 对Heartbleed的应对

2014年4月13日，StartCom发布了\[20\]一个FAQ页面\[21\]，内容有关OpenSSL中的严重漏洞[Heartbleed](../Page/心脏出血漏洞.md "wikilink")，后者据估计会使互联网上17%的安全网页服务器面临数据失窃的风险。

StartCom的政策对吊销一张证书收费25美元，并且拒绝对受Heartbleed影响的证书免除这笔费用，只有部分付费客户可免费吊销一张证书\[22\]\[23\]\[24\]\[25\]，这使得很多人对StartCom是否是合格的证书颁发机构产生怀疑\[26\]。对于已被证明不可信的证书，StartCom拒绝免费吊销，而是在明知的情况下继续提供信任\[27\]。

## 批评

2016年8月，StartCom被中国证书机构沃通收购\[28\]\[29\]，对此事的最初披露文章因法律原因已被删除\[30\]，但相关转发仍然存在。尽管具体关系不明，但在沃通被发现签发约100张\[31\]不当SSL证书时似乎已在使用StartCom的技术设施，这些不当证书中包括一张签发给github.com的证书\[32\]。

## 参见

  - [密码学](../Page/密码学.md "wikilink")
  - [公钥认证](../Page/公開金鑰認證.md "wikilink")
  - [公钥基础设施](../Page/公開金鑰基礎建設.md "wikilink")
  - [Let's Encrypt](../Page/Let's_Encrypt.md "wikilink")

## 脚注

## 参考文献

## 外部链接

  -
  - [StartCom博客](https://web.archive.org/web/20100328135712/http://blog.startcom.org/)

[Category:证书颁发机构](https://zh.wikipedia.org/wiki/Category:证书颁发机构 "wikilink") [Category:1999年成立的公司](https://zh.wikipedia.org/wiki/Category:1999年成立的公司 "wikilink")

1.
2.
3.
4.
5.
6.
7.  [`国内证书颁发机构StartCom宣布将停止数字证书业务`](http://tech.sina.com.cn/i/2017-11-20/doc-ifynwxum6288539.shtml)`，新浪科技`
8.
9.
10.
11.
12.
13.
14.
15.
16.
17.  Google 将完全取消沃通和 StartCom 的信任|accessdate=2017-07-11|work=www.solidot.org}}
18.
19.  火狐准备完全取消对沃通、Startcom 和 CNNIC 的信任|accessdate=2017-07-11|work=www.solidot.org}}
20.
21.
22.
23.
24.
25.
26.
27.
28.
29.
30.
31.
32.