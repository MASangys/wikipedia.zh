**Mirai**（\[1\]，中文直譯「**未來**」\[2\]\[3\]）是一款[恶意软件](../Page/恶意软件.md "wikilink")，它可以使运行[Linux](../Page/Linux.md "wikilink")的计算系统成为被远程操控的“[僵尸](../Page/殭屍電腦.md "wikilink")”，以达到通过[僵尸网络进行大规模网络攻击的目的](https://zh.wikipedia.org/wiki/僵尸网络 "wikilink")。Mirai的主要感染对象是可访问网络的消费级电子设备，例如[网络监控摄像机和](../Page/閉路電視.md "wikilink")[家庭路由器等](../Page/路由器.md "wikilink")\[4\]。Mirai构建的僵尸网络已经参与了几次影响广泛的大型[分布式拒绝服务攻击](../Page/阻斷服務攻擊.md "wikilink")（DDoS攻击），包括2016年9月20日针对计算机安全撰稿人个人网站的攻击、对法国网站托管商的攻击\[5\]，以及[2016年10月Dyn公司网络攻击事件](https://zh.wikipedia.org/wiki/2016年10月Dyn公司遭到网络攻击事件 "wikilink")\[6\]\[7\]\[8\]。目前已经确认上述攻击全部由Mirai作者构建的僵尸网络发起的攻击。

Mirai的[源代码](../Page/源代码.md "wikilink")已经以[开源的形式发布至黑客论坛](../Page/开源软件.md "wikilink")\[9\]，其中的技术也已被其他一些恶意软件采用\[10\]。

根据一份泄露的软件作者之聊天记录，Mirai一名来自漫画改编的2011年[日本动画](../Page/日本动画.md "wikilink")《[未来日记](https://zh.wikipedia.org/wiki/未来日记 "wikilink")》\[11\]；作者所用网名（意为“安娜前辈”）则可能与日本輕小說《[-{zh-hant:下流梗不存在的灰暗世界;zh-cn:没有黄段子的无聊世界;}-](../Page/下流梗不存在的灰暗世界.md "wikilink")》中的角色——[安娜·锦之宫有关](https://zh.wikipedia.org/wiki/下流梗不存在的灰暗世界#其他學生 "wikilink")。\[12\]\[13\]

## 行为

受Mirai感染的设备会持续地在互联网上扫描[物联网](../Page/物联网.md "wikilink")设备的[IP地址](../Page/IP地址.md "wikilink")。Mirai包含一张IP白名单表，其中包括[专用网络](../Page/专用网络.md "wikilink")的私有IP地址以及分配给[美国邮政署和](../Page/美國郵政署.md "wikilink")[美国国防部](../Page/美国国防部.md "wikilink")的IP地址，使用这些地址的设备将不会受Mirai感染。\[14\]

在扫描到IP地址之后，Mirai会通过超过60种常用默认用户名和密码辨别出易受攻击的设备，然后登录这些设备以注入Mirai软件\[15\]\[16\]\[17\]。受感染的设备会继续正常工作，不过偶尔会出现卡顿，而且[带宽](../Page/带宽.md "wikilink")消耗会增大\[18\]。设备在重新启动之前将一直保持受感染的状态。设备重启之后，除非用户立刻修改密码，几分钟之内设备很快会被再次感染\[19\]。Mirai还会在成功感染后删除设备上的同类恶意软件，并屏蔽用于远程管理的端口\[20\]。

互联网上有成千上万的物联网设备使用默认设置，这些设备都很容易受到感染。受感染的设备会监视一台下发的服务器，该服务器将指示发起攻击的目标。\[21\]

## 在DDoS攻击中的使用

2016年9月20日，攻击者通过Mirai和\[22\]对网站发动了[DDoS攻击](https://zh.wikipedia.org/wiki/DDoS "wikilink")，攻击流量达到了620 Gbps\[23\]。[Ars Technica报道称在对法国网站托管商](../Page/Ars_Technica.md "wikilink")的攻击中发现了1 Tbps的攻击流量\[24\]。

2016年10月21日，公司提供的[DNS服务遭到了数次通过Mirai发起的大型DDoS攻击](https://zh.wikipedia.org/wiki/DNS "wikilink")，牵涉到的受感染[物联网](../Page/物联网.md "wikilink")设备数量众多。这次攻击使得数个高访问量的网站无法正常打开，其中包括[GitHub](../Page/GitHub.md "wikilink")、[Twitter](../Page/Twitter.md "wikilink")、[Reddit](../Page/Reddit.md "wikilink")、[Netflix](../Page/Netflix.md "wikilink")和[Airbnb等](https://zh.wikipedia.org/wiki/Airbnb "wikilink")\[25\]。Mirai和这次攻击的关联最初是由[Level 3 通信在报告中指出的](https://zh.wikipedia.org/wiki/Level_3_通信 "wikilink")\[26\]\[27\]。

有[深度学习](../Page/深度学习.md "wikilink")方面的安全专家发现，Mirai构建的僵尸网络数量在Dyn攻击事件发生前后有稳定的上升。\[28\]

Mirai亦被用于2016年11月针对[利比里亚](../Page/利比里亚.md "wikilink")互联网基础设施的攻击\[29\]\[30\]\[31\]。计算机安全专家Kevin Beaumont认为这次攻击的发动者与Dyn攻击相同\[32\]。

## 其他事件

2016年11月末，90万台[德国电信](../Page/德国电信.md "wikilink")用户的[路由器](../Page/路由器.md "wikilink")因Mirai变种利用TR-064协议的一次失败尝试而崩溃，这些路由器由智易科技生产，受影响用户的互联网访问因此出现异常\[33\]\[34\]。尽管另一家名为TalkTalk的运营商随后更新了他们的路由器，但仍有TalkTalk路由器感染上Mirai的另一支新变种\[35\]。

## 作者

Krebs on Security网站在2017年1月发布报告，认为Mirai的作者“Anna-senpai”真名为Paras Jha，是[罗格斯大学](../Page/罗格斯大学.md "wikilink")学生和一家DDoS防御服务提供商总裁\[36\]\[37\]，但后者否认这一指控的真实性\[38\]。[美国联邦调查局之后对其进行了盘问](https://zh.wikipedia.org/wiki/美国联邦调查局 "wikilink")\[39\]。

2017年12月10日美国联邦调查局已经公布调查结果，而在此之前Mirai的作者已经被捕。该作者确实就是此前Krebs on Security研究人员认为的Paras Jha\[40\]。

## 参见

  - [拒绝服务攻击](../Page/阻斷服務攻擊.md "wikilink")
  - 其他著名物联网恶意软件
      -
      -
      -
      -
## 外部链接

  -
## 参考文献

[Category:阻斷服務攻擊](https://zh.wikipedia.org/wiki/Category:阻斷服務攻擊 "wikilink") [Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink") [Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.   crunchbase|accessdate=2016-10-23|language=en}}
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
29.
30.
31.
32.
33.
34.  Germany {{\!}} DW.COM {{\!}} 29.11.2016|url=[http://www.dw.com/en/german-leaders-angry-at-cyberattack-hint-at-russian-involvement/a-36573668|publisher=Deutsche](http://www.dw.com/en/german-leaders-angry-at-cyberattack-hint-at-russian-involvement/a-36573668%7Cpublisher=Deutsche) Welle|accessdate=2017-01-05|language=en}}
35.
36.
37.
38.  Krebs 找到 Mirai 僵尸网络可能的作者 |accessdate=2017-01-23 |work=www.solidot.org |date=2017-01-20 |language=zh-hans |archiveurl=<https://web.archive.org/web/20170123082127/http://www.solidot.org/story?sid=51153> |archivedate=2017-01-23 |deadurl=yes }}
39.
40.