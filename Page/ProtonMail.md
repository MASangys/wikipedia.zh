[Protonmail_decentralized_hosting.png](https://zh.wikipedia.org/wiki/File:Protonmail_decentralized_hosting.png "fig:Protonmail_decentralized_hosting.png")（左）[和阿廷豪森](https://zh.wikipedia.org/wiki/Attinghausen "wikilink")
\[Attinghausen\]（右）.\]\]

**ProtonMail**（在中国被非正式地称为“**质子邮箱**”）是一個加密的 Webmail
服務，於2013年由[歐洲核子研究組織](../Page/歐洲核子研究組織.md "wikilink")（CERN）成员
Jason Stockman、Andy Yen和Wei Sun創建。ProtonMail 现由总部设在瑞士日内瓦州的 Proton
Technologies AG 经营。据 Andy Yen 称，他和公司一半的人都来自麻省理工学院（MIT），ProtonMail
的两个服务器分别设在瑞士的 Lausanne 和 Attinghausen。

## 特点

ProtonMail 账户有 protonmail.ch、protonmail.com，pm.me
三个后缀，用户可在设置中自行选择默认后缀。ProtonMail
帐户使用登录密码和邮箱密码两个用户密码。第一认证该用户进入 ProtonMail
系统，而第二解密该用户的电子邮箱。第二密码是已知的仅给用户。ProtonMail
的服务器抱以加密的形式和密码恢复用户的数据是不可能的。钉钉（DingTalk）、Snapchat 和 Telegram
也具有类似的服务。ProtonMail 还包括一个消息过期功能，允许加密的电子邮件经过一段时间后自行销毁。

ProtonMail采用了公钥加密和对称加密协议的组合，以提供终端到终端的加密。当用户创建一个ProtonMail账户，浏览器会生成一对RSA公鑰和私钥。公共密钥用于加密用户的电子邮件和其他用户数据。私钥能够解密该用户的数据的，在对称加密中使用AES-256的用户的网络浏览器的用户的邮箱密码。公开密钥和加密的私钥然后一起存储在ProtonMail服务器。ProtonMail無法解密私鑰，因此ProtonMail开发商无法检索用户的电子邮件。

从一个ProtonMail帐户发送到另一个电子邮件被自动加密与接受者的公钥。一旦加密，收件人只有私钥才能解密电子邮件。当收件人登录时，他们的邮箱密码，解密他们的私钥和解锁他们的收件箱。从ProtonMail发送到非ProtonMail的电子邮件地址的电子邮件可以自行選擇加密或不加密发送。电子邮件进行AES加密，只能用一个单独的密码进行解密。该密码必须由发送者设置，并给予通过其他通道殘給接收者。收件人只接收後链接到ProtonMail网站上，他们可以输入密码，阅读解密邮件。

在2015年9月，ProtonMail添加原生支持他们的Web界面和移动应用的[良好隐私密码](https://zh.wikipedia.org/wiki/良好隐私密码法 "wikilink")（PGP）。这允许用户将其ProtonMail
PGP编码公共密钥导出到他人ProtonMail以外，使他们能够使用该密钥对加密电子邮件。ProtonMail团队计划支持PGP加密从ProtonMail向外部用户。

### 服务器架构

[Protonmail_system_architecture_2014.png](https://zh.wikipedia.org/wiki/File:Protonmail_system_architecture_2014.png "fig:Protonmail_system_architecture_2014.png")
ProtonMail的数据中心的服务器架构由其专职管理员维护，以避免信任第三方而使用自己的服务器硬件和网络。为应对不堪重负的服务器在2014年中期ProtonMail创始人开始拓展服务器架构。该服务由位于瑞士中部和西部两个冗余的数据中心目前供电。每个数据中心使用负载跨Web，邮件和SQL服务器，冗余电源，采用全磁盘加密硬盘驱动器，并独家采用Linux和其它开放源代码软件的平衡。ProtonMail还加入了RIPE
NCC在努力有更多的直接控制周围的互联网基础设施。

數據中心位於1000米厚的花崗岩岩石內，一個嚴密守衛的地堡，可以承受核攻擊，這提供了額外的保護層確保您的加密電子郵件不容易被任何第三方訪問。

传输层安全性（TLS）用于保护和加密的用户和ProtonMail服务器之间的所有互联网流量。白皮书和源代码也即将推出，根据开发者。
Protonmail.com持有“A +”评级由Qualys公司SSL实验室評價。

## 历史事件

ProtonMail是2013年斯诺登事件后，为应对美国国家安全局的全球监测和拦截电子邮件的背景下创建，设计者们对ProtonMail的设计受到了Gmail、Lavabit和Snapchat的启发。

在2014年7月31日，ProtonMail通过Indiegogo一个集资活动从10576名捐助者那里众筹了55,0377美元资金。因集资时间处在在美国竞选期间，以怀疑ProtonMail行为的合法性为由，ProtonMail的PayPal账户被冻结，但在次日冻结即被取消。

在2015年3月18日，ProtonMail获得了美国Fondation Genevoise pour l'Innovation
Technologique（Fongit）风险投资基金200万美元。\[1\]

2015年11月3日至7日，ProtonMail受到了主要是对用户不可用几个DDoS攻击。ProtonMail认为，这实际上是受两个独立的攻击，先为首的一批黑客被称为Armada
Collective，第二个由一个未知的、类似于一个国家支持组的能力在技术上更为先进的集体。为了恢复服务，ProtonMail勉强同意向攻击者支付了价值不到6千美元的15比特币，但在缴纳了赎金之后DDoS攻击仍未停止。批评者认为向攻击者支付赎金是在鼓励对方继续攻击。在攻击中，该公司在Twitter上表示，它正在寻找在瑞士的一个新的数据中心，称：“We
are seeking a datacenter in Switzerland brave enough to host ProtonMail,
many are afraid due to the magnitude of the attack against
us.”ProtonMail正在实施一个全面的长期解决方案。11月6日，ProtonMail发布推特称，他们的ISP早上遭到再次进攻。11月7日，ProtonMail发布推特称当天有50％的机会恢复服务。

## 相关报道

  -
  -
  - ProtonMail付了6千美元赎金
    但仍然被DDoS_科技_环球网[1](http://tech.huanqiu.com/news/2015-11/7923952.html)

  - 【今日看点】ProtonMail
    ：可能是界上最安全的电邮服务|极客公园[2](http://www.geekpark.net/topics/205474)

  - Paypal冻结Protonmail账户_发现频道__中国青年网[3](http://d.youth.cn/newtech/201407/t20140702_5452410.htm)

## 參考資料

[Category:电子邮件网站](https://zh.wikipedia.org/wiki/Category:电子邮件网站 "wikilink")
[Category:2013年建立的网站](https://zh.wikipedia.org/wiki/Category:2013年建立的网站 "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")
[Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink")

1.