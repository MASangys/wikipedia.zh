**XcodeGhost风波**，为[中国大陆](../Page/中国大陆.md "wikilink")地区[App Store中的部分](../Page/App_Store_\(iOS\).md "wikilink")[iOS應用程式被称为](https://zh.wikipedia.org/wiki/iOS "wikilink")「XCodeGhost」的第三方惡意代码注入，而产生了一系列的问题，包括可能的隐私泄漏、广告点击。

因为属于开发者端的程序污染，所以即便是未[越狱的iOS用户从苹果官方App](../Page/越獄_\(iOS\).md "wikilink") Store下载应用也可能存在风险。

根據[史諾登](https://zh.wikipedia.org/wiki/史諾登 "wikilink")（Edward Snowden）揭露文件，該手法於2012年，[美國](https://zh.wikipedia.org/wiki/美國 "wikilink")[中情局](https://zh.wikipedia.org/wiki/中情局 "wikilink")（CIA）已有相關能力，即透過偽冒Xcode，用來監控所有使用該偽冒開發工具所開發的App及後續的修改版本，而這套偽冒開發工具所開發的App，可以在[蘋果公司的官方App](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink") Store上架並販售，且不會被任何人員發覺有異常之處。\[1\]

## 事件发展

### XcodeGhost植入

[Xcode](../Page/Xcode.md "wikilink")为苹果公司所發行、供程式設計師開發[OS X](https://zh.wikipedia.org/wiki/OS_X "wikilink")、[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")、[watchOS與](https://zh.wikipedia.org/wiki/watchOS "wikilink")[tvOS應用程式的](https://zh.wikipedia.org/wiki/tvOS "wikilink")[整合開發環境](https://zh.wikipedia.org/wiki/整合開發環境 "wikilink")（IDE），在Mac App Store中免费提供。由于[网络审查导致中国大陆用户访问](../Page/中华人民共和国网络审查.md "wikilink")[Mac App Store有连接困难](../Page/Mac_App_Store.md "wikilink")，部分开发者出于方便选择了国内第三方渠道下载（如[百度云盘](https://zh.wikipedia.org/wiki/百度云盘 "wikilink")、[迅雷离线等](https://zh.wikipedia.org/wiki/迅雷离线 "wikilink")）或者从社交平台查找获得开发程序，由此带来了安全隐患。

而这部分Xcode的框架库中被加入了被称为“XcodeGhost”的框架库，导致其编译出来的App都带有后门代码，会在最终客户端运行时将隐私信息提交给第三方。 \[2\]

### 爆发

根据已经披露的文档，腾讯安全应急响应中心在跟踪某app的bug时发现异常流量，解析后上报了[国家互联网应急中心](https://zh.wikipedia.org/wiki/国家互联网应急中心 "wikilink")（CNCERT）\[3\]，后者随即在2015年9月14日发布了预警訊息\[4\]。之后也有国外信息安全组织跟进调查。

在2015年9月17日左右，[新浪微博](../Page/新浪微博.md "wikilink")用户 @唐巧_boy 发布微博声称Xcode有可能被第三方代码注入，而在社交平台上引起轩然大波。乌云网后续发布相关的知识库文章\[5\]。

### 当事人陈述

2015年9月19日凌晨4时许，新浪微博上出现一名“XcodeGhost-Author”的新用户发布一条微博訊息，声称XcodeGhost只是一个实验性质项目；随后该项目的[GitHub](../Page/GitHub.md "wikilink")页面也刊载了一致的声明\[6\]。

### 应急处理

苹果方面虽然事前缺乏对程序的安全审核，但是事件发生后火速对感染恶意代码的app进行了下架\[7\]。

部分大陆地区开发商的App因此受到影响，因此对其受污染的App使用正规渠道下载的Xcode进行编译后重新上线。

## 受感染应用

受到影响的app程序众多，据称受感染的app多达76个\[8\]，而记载着app名单的截图应该来自“360安全播报平台”，其将在2015年9月19日更新的消息中将受XcodeGhost感染的app数量上调为344款\[9\]；而截至2015年9月20日下午的通报，受感染app数量为1078款\[10\]。

知名度较高的部分app如：[微信](../Page/微信.md "wikilink")、[网易云音乐](../Page/网易云音乐.md "wikilink")、[滴滴打车](https://zh.wikipedia.org/wiki/滴滴打车 "wikilink")、[高德地图](https://zh.wikipedia.org/wiki/高德地图 "wikilink")、[12306](https://zh.wikipedia.org/wiki/12306 "wikilink")、[同花顺](https://zh.wikipedia.org/wiki/同花顺 "wikilink")、中信银行动卡空间、[简书](../Page/简书.md "wikilink")等。涉及包括即时通讯软件、地图应用甚至金融服务产品。

苹果公司對此事进行了公开声明\[11\]，並对于部分感染app进行了下架处理\[12\]；从2015年9月20日开始，部分下架程序重新编译后上架，但各厂商对此态度不同，微信的版本更新中并未说明原因，而网易云音乐则注明为“修复XcodeGhost问题”\[13\]。

## 影响

  - 事件相关

<!-- end list -->

  - 中国官方媒体的中央电视台报道了该事件\[14\]，且在节目中援引专家说法，对所谓作者的无害声明进行质疑。
  - 安全网站如乌云、腾讯安全中心，自媒体月光博客等也在该事件中作为信息发布平台提供支持。
  - 虽然苹果公司发布了声明并对感染应用做了下架处理\[15\]，然而风险仍然存在，即如果用户下载了受感染应用而没有更新，恶意代码仍然有被运行风险。苹果对此也并没有对所有用户发布推送性质的通告。
  - 腾讯科技在2015年9月21日发表了署名“梁辰”的相关评论文章\[16\]，箭头直指苹果的安全防御机制，解释相关黑色产业链的存在；然而最后段落中，对于开发者不恰当使用第三方渠道下载XCode工具采用了避重就轻的批评。结合本次受灾的[微信](../Page/微信.md "wikilink")（iOS，6.2.5版\[17\]），不免令人对其立场产生怀疑。此外，文中错误指称 [肯·汤普逊](../Page/肯·汤普逊.md "wikilink")言及『编译Unix代码的C编辑器里留有“[后门](https://zh.wikipedia.org/wiki/軟體後門 "wikilink")”』，事实为Ken在其论文《Reflections on Trusting Trust》中阐述的若不校验基于信任的信任，那么编译器出现问题时则会影响全局安全性\[18\]，与本次事件有相似度。

<!-- end list -->

  - 安全问题外延

<!-- end list -->

  - 有人在查找相应的发布源时发现其也有发布带有后门框架的知名游戏开发框架[Unity第三方发布源](../Page/Unity_\(游戏引擎\).md "wikilink")，怀疑Unity也有类似的影响。\[19\]而Unity的开发商则发布声明自查官方版本没问题并要求开发者从官方途径下载开发程序。\[20\]
  - 在2015年9月22日，虽然XcodeGhost作者声明已关闭服务器，然而有安全从业人员表示仍然有安全隐患，潜在攻击者可以通过域名解析污染等手段伪装获得敏感数据，这类手法被命名为**截胡攻击**（“截胡”为[麻将](../Page/麻将.md "wikilink")术语）\[21\]。

## 原因

  - 因为[防火长城](../Page/防火长城.md "wikilink")的存在，中国大陆访问一些境外网站存在限制，例如程序开发重要的[GitHub](../Page/GitHub.md "wikilink")一度在中国大陆遭到封禁，而苹果公司的App Store等服务在中国大陆也有访问缓慢的问题。部分开发者选择了从非正规的第三方渠道下载套件，这为恶意软件开发者散布恶意代码提供可乘之机，通过在大陆地区各大苹果开发社交网站散布自己带有后门框架的Xcode来诱使开发人员使用，从而埋下隐患。

<!-- end list -->

  - XcodeGhost作者声称这是一个实验性项目\[22\]，然而有专家对此说法表示质疑，其在事前的针对性[SEO](https://zh.wikipedia.org/wiki/SEO "wikilink")，后门代码所能产生的更大的劫持能力，以及架设在[亚马逊云上的流量费用远超出其所声称的个人能力](../Page/Amazon_EC2.md "wikilink")。

## 参见

  - [iOS应用程序审核](https://zh.wikipedia.org/wiki/iOS应用程序审核 "wikilink")
  - [Xcode](../Page/Xcode.md "wikilink")（苹果开发套件）
  - [防火长城](../Page/防火长城.md "wikilink")（中国大陆访问境外网站受限的阻挡）
  - [僵尸网络](https://zh.wikipedia.org/wiki/僵尸网络 "wikilink")
  - [2014年8月名人照片泄露事件](../Page/2014年8月名人照片泄露事件.md "wikilink")（曾经发生的iCloud泄露事件）

## 参考资料

## 外部链接

  -
  - [Greatfire組織](https://zh.wikipedia.org/wiki/Greatfire "wikilink")：\[//zh.greatfire.org/blog/2015/sep/popular-chinese-ios-apps-compromised-unprecedented-malware-attack 中国流行的iOS应用遭到前所未有的恶意软件感染\]

  - [关于使用非苹果官方XCODE存在植入恶意代码情况的预警通报](http://www.cert.org.cn/publish/main/12/2015/20150914152821158428128/20150914152821158428128_.html) 国家互联网应急中心 2015-09-14

  - [你以为这就是全部了？我们来告诉你完整的XCodeGhost事件](http://security.tencent.com/index.php/blog/msg/96) — 腾讯安全应急响应中心

  - [《针对此次XcodeGhost攻击行为的分析》](http://www.jianshu.com/p/80c8f043e91f)

  - [Novel Malware XcodeGhost Modifies Xcode, Infects Apple iOS Apps and Hits App Store](http://researchcenter.paloaltonetworks.com/2015/09/novel-malware-xcodeghost-modifies-xcode-infects-apple-ios-apps-and-hits-app-store/) 安全公司 Paloalto networks 的分析报告

  - [Solidot](../Page/Solidot.md "wikilink")：[报道称XcodeGhost开发者已被控制](http://www.solidot.org/story?sid=45643)

[分类:2015年中国网络事件](https://zh.wikipedia.org/wiki/分类:2015年中国网络事件 "wikilink")

[Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink") [Category:2015年9月](https://zh.wikipedia.org/wiki/Category:2015年9月 "wikilink")

1.

2.
3.

4.

5.

6.  [XcodeGhost](https://github.com/XcodeGhostSource/XcodeGhost) GitHub上的XcodeGhost项目

7.  [苹果App Store火线下架遭感染的软件](http://www.cnbeta.com/articles/431557.htm) — cnbeta

8.  [苹果App被置病毒全部名单 不是只有20多个而是76个](http://www.techweb.com.cn/internet/2015-09-20/2204531.shtml) — techweb

9.  [已知有后门的iOS App](http://bobao.360.cn/news/detail/2088.html)  — 360安全播报平台

10.
11.

12.
13.

14. [苹果手机多款应用程序现“后门”](http://news.cntv.cn/2015/09/20/VIDE1442722138330797.shtml) — cntv

15.
16. [《苹果遭遇信任危机：苹果APP也会被黑》](http://tech.qq.com/a/20150921/010707.htm) - 腾讯科技

17.

18.

19.

20.

21. [你以为服务器关了这事就结束了？ - XcodeGhost截胡攻击和服务端的复现，以及UnityGhost预警](http://drops.wooyun.org/papers/9024) - 乌云

22. [XcodeGhost](https://github.com/XcodeGhostSource/XcodeGhost)