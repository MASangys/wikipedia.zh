> 本文内容由[EFF DES破解机](https://zh.wikipedia.org/wiki/EFF_DES破解机)转换而来。


[Board300.jpg](https://zh.wikipedia.org/wiki/File:Board300.jpg "fig:Board300.jpg")这台价值250,000美元的DES破解机包含1,856个定制的芯片，能在短短几天之内暴力破解DES的密钥。图中展示了机器的双面[电路板](https://zh.wikipedia.org/wiki/电路板 "wikilink")，安装了64个“深译”芯片\]\]

**EFF DES破解机**（）是[电子前哨基金会](../Page/电子前哨基金会.md "wikilink")（EFF）在1998年建造的机器，用于[暴力破解美国政府的](https://zh.wikipedia.org/wiki/暴力破解法 "wikilink")[数据加密标准](https://zh.wikipedia.org/wiki/数据加密标准 "wikilink")，即DES加密算法，昵称“**深译**”（）。这台机器能够对DES[密钥空间中所有的](https://zh.wikipedia.org/wiki/密钥空间 "wikilink")[密钥](../Page/密钥.md "wikilink")逐一进行尝试，从而将[密文破解](https://zh.wikipedia.org/wiki/密文 "wikilink")，其目的在于证明DES的[密钥长度不足](https://zh.wikipedia.org/wiki/密钥长度 "wikilink")，不能保证安全。

## 背景

### 密钥长度争议

DES是最早的计算机加密算法之一，它在政府、金融、网络等许多领域都得到了广泛应用。并且，该加密算法是[美国联邦政府的一项标准](https://zh.wikipedia.org/wiki/美国联邦政府 "wikilink")，美国政府鼓励使用DES加密除了[国家机密](../Page/国家机密.md "wikilink")之外的任何敏感信息。\[1\]

[DES加密算法的密钥长度为](https://zh.wikipedia.org/wiki/DES "wikilink")56位\[2\]，这意味着加密时存在2<sup>56</sup>个密钥可供选择，即7.2万万亿（72,057,594,037,927,936）种可能性。但是，DES依然长期面临“密钥长度过短、安全性不足”的批评。

早在1975年算法公开之初，著名的[斯坦福大学密码学家](https://zh.wikipedia.org/wiki/斯坦福大学 "wikilink")[马丁·赫尔曼与](https://zh.wikipedia.org/wiki/马丁·赫尔曼 "wikilink")[惠特菲尔德·迪菲就批评DES算法易被暴力破解](https://zh.wikipedia.org/wiki/惠特菲尔德·迪菲 "wikilink")，因此不安全，惟有将密钥长度提升到至少128位才能保证安全。\[3\]二人还构想了一台可在一天内测试所有密钥的机器，需要的成本为2000万美元，并指出这对于[美国国家安全局](../Page/美国国家安全局.md "wikilink")（NSA）等情报机构而言并非是一笔很大的开销，并认为成本在10年后还会进一步下降到20万美元。\[4\]

在随后的20年间，芯片的价格确实不断下降、性能不断提升，使电子前哨基金会这样的小型非营利组织也具有了破解DES的能力。\[5\]

### 对密码学的管制

在20世纪，以NSA为首的美国政府以及盟友为了维护自身的利益，对密码学进行严格管制，限制密码学的传播并降低现有系统的安全性，甚至加入后门。\[6\]例如，一位在80年代曾参与过[GSM](../Page/GSM.md "wikilink")研发的专家表示，为保护手机通话不被窃听，原计划采用128位加密进行保护。但随后遭到英国政府方面的施压，使最终的加密算法被迫削弱为54位，团队中的许多专家对此十分愤怒。\[7\]时至90年代末，随着互联网与电子商务的兴起，使用密码学保护公民隐私与商业信息的诉求，与美国政府管制政策之间的矛盾逐渐升温。\[8\]媒体与公众将这段历史时期统称为。\[9\]

直到1998年DES已被两次破解后，美国联邦调查局局长依然坚持对密码学的严格管制，拒不承认DES不安全：

## DES挑战赛

由于上述原因，希望以实际行动向公众展示DES的密钥长度过短，时下已不能保证安全性，因此在1997年举办了首届DES挑战赛，成功者可获得一万美元的奖金\[10\]。第一届大赛被来自科罗拉多州洛夫兰的洛克·沃瑟所带领的团队破解成功，耗时96天\[11\]\[12\]\[13\]。接着，RSA安全公司随后举办了第二届挑战赛\[14\]，其中的初赛由互联网最早的[分布式计算](../Page/分布式计算.md "wikilink")平台的22,000名志愿者们挑战成功。他们使用自己的个人电脑参与计算，共历时39天，于1998年2月成功破解密文，\[15\]\[16\]解密后得到「机密信息为：众人拾柴火焰高」（The secret message is: Many hands make light work）的文本。

[Chip300.jpg](https://zh.wikipedia.org/wiki/File:Chip300.jpg "fig:Chip300.jpg")

如上文所述，即使在DES已被两次破解以后，联邦调查局局长路易斯·弗里依然以“破译时间过长，没有意义”为理由，拒绝承认DES已不安全。因此，RSA再次发起了第二次挑战赛的复赛。\[17\]1998年，电子前哨基金会建造了“深译”（名字来自[IBM](../Page/IBM.md "wikilink")的“[深蓝](https://zh.wikipedia.org/wiki/深蓝 "wikilink")”国际象棋电脑），总共花费不超过250,000美元。\[18\]为了响应第二届DES挑战赛的号召，“深译”加入了1998年7月15日举行的复赛，仅用56小时成功破解了DES加密的消息，获得了10,000美元奖金。破译后得到「机密信息为：是时候让128位，192位与256位密钥登场了」（The secret message is: It's time for those 128-, 192-, and 256-bit keys）的文本。\[19\]\[20\]\[21\]此次暴力破解攻击展现了破解DES是非常可行的计划，多数政府和大型企业完全有能力建造一台类似“深译”的机器。\[22\]

六个月之后，电子前哨基金会响应了RSA安全公司举办的第三届挑战赛\[23\]\[24\]\[25\]\[26\]，并与distributed.net团队合作破译了另一则DES加密的消息，再次获得了10,000美元。这次的整个破译过程不到一天，仅用22小时15分，于1999年1月19日完成破解。\[27\]\[28\]\[29\]\[30\]\[31\]

同年10月，美国政府宣布DES标准不会被废除，但推荐使用其增强版[三重DES替代](https://zh.wikipedia.org/wiki/三重DES "wikilink")。\[32\]然而，这需要将DES反复运行三次，使计算速度更加缓慢。而且与直觉相反，由于[中途相遇攻击的存在](https://zh.wikipedia.org/wiki/中途相遇攻击 "wikilink")，三重DES的安全性仅仅是原密钥长度的两倍（2<sup>112</sup>），并非三倍（2<sup>168</sup>）。\[33\]可见三重DES的安全性只有112位，离密码学界所推荐的128位仍有一定差距，而且还需要高昂的计算成本，将其应用于互联网时不能令人满意。\[34\]

2002年5月26日，[高级加密标准](../Page/高级加密标准.md "wikilink")（即AES）正式取代了DES[数据加密标准成为了新的联邦政府标准](https://zh.wikipedia.org/wiki/数据加密标准 "wikilink")。\[35\]不同于DES，AES不仅将密钥长度提升至128位与256位，还大幅提升了计算速度，\[36\]并广泛应用于今日的互联网。\[37\]\[38\]

## 技术

“深译”由、先进无线科技公司（Advanced Wireless Technologies）与电子前哨基金会联合设计，总设计师是密码学研究公司的主席。先进无线科技公司制造了1856片[定制芯片](../Page/特殊應用積體電路.md "wikilink")（代号“深译”，型号AWT-4500），分别组装在29块电路板上，每块电路板64片。这些电路板再被分别放入6个模块，然后安装在一台改裝過的的机箱中。\[39\]为了协助密钥的搜寻工作，另外还使用了一台运行[Linux](../Page/Linux.md "wikilink")操作系统的[个人电脑](../Page/个人电脑.md "wikilink")负责控制机器。\[40\]\[41\]整台机器每秒钟能尝试900亿个密钥，共需要9天时间对所有可能的密钥进行完整的搜索，但实际使用时，破解出正确的密钥往往只需要花费一半的时间。\[42\]

2006年，又一台DES加密的机器问世，名为COPACOBANA（为的缩写，意为「低成本并行密码破译机」）。該機器得益于[集成电路](../Page/集成电路.md "wikilink")技术的进步，采用[FPGA的设计](https://zh.wikipedia.org/wiki/FPGA "wikilink")，进一步降低了破解DES的成本。\[43\]\[44\]2012年7月，安全研究人员大卫·赫尔顿（David Hulton）与莫克西·马林斯佩克（Moxie Marlinspike）公布了一个通过暴力破解DES加密从而破解[MS-CHAPv2协议的](https://zh.wikipedia.org/wiki/MS-CHAPv2 "wikilink")[云计算工具](https://zh.wikipedia.org/wiki/云计算 "wikilink")，这让普通大众能够在24小时之内[利用一对已知的明文和密文破解DES密钥](https://zh.wikipedia.org/wiki/已知明文攻击 "wikilink")。\[45\]

## 参考文献

[Category:密码学](https://zh.wikipedia.org/wiki/Category:密码学 "wikilink") [Category:密码硬件](https://zh.wikipedia.org/wiki/Category:密码硬件 "wikilink") [Category:密码分析设备](https://zh.wikipedia.org/wiki/Category:密码分析设备 "wikilink") [Category:数据加密标准](https://zh.wikipedia.org/wiki/Category:数据加密标准 "wikilink") [Category:独一无二的计算机](https://zh.wikipedia.org/wiki/Category:独一无二的计算机 "wikilink")

1.
2.
3.  [迪菲, W与](https://zh.wikipedia.org/wiki/惠特菲尔德·迪菲 "wikilink")[海尔曼, M](https://zh.wikipedia.org/wiki/马丁·赫尔曼 "wikilink"), “[NBS的DES密码分析完全调查](https://www-ee.stanford.edu/~hellman/publications/27.pdf)” IEEE Computer 10 (6), June 1977, pp74–84
4.
5.
6.  *Crypto: How the Code Rebels Beat the Government—Saving Privacy in the Digital Age,* Steven Levy, Penguin, 2001
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
19. [DES-II-2 Challenge](http://gilchrist.ca/jeff/distrib-des2-2.html)
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
33.
34.
35.
36.
37.
38.
39.
40.
41.
42.
43. <http://www.sciengines.com/copacobana/faq.html>
44.
45.