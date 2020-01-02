> 本文内容由[ACE \(电子计算机\)](https://zh.wikipedia.org/wiki/ACE_\(电子计算机\))转换而来。


**自动计算机**（，）设计为一台早期的[存储程序式](../Page/冯·诺伊曼结构.md "wikilink")[电子计算机](../Page/电子计算机.md "wikilink")。 名称中使用“”一词是为了向[查尔斯·巴贝奇](../Page/查尔斯·巴贝奇.md "wikilink")的[差分机](https://zh.wikipedia.org/wiki/差分机 "wikilink")（）和[分析机](https://zh.wikipedia.org/wiki/分析机 "wikilink")（）致敬。它是[艾伦·图灵](../Page/艾伦·图灵.md "wikilink")应[英国国家物理实验室](https://zh.wikipedia.org/wiki/英国国家物理实验室 "wikilink")（NPL）数学部的监督人约翰·沃默斯利（John Womersley）的邀请而设计的。

## 设计基础

图灵关于ACE的技术设计《电子计算机计划》（）是基于他1936年的理论工作和[二战期间的工程经验](https://zh.wikipedia.org/wiki/二战 "wikilink")。

1.  图灵在他1936年发表的论文《论可计算数》（）\[1\] 中提出了[通用图灵机的概念](https://zh.wikipedia.org/wiki/通用图灵机 "wikilink")；
2.  [二战期间](https://zh.wikipedia.org/wiki/二战 "wikilink")，图灵参与设计了[Colossus电子计算机](https://zh.wikipedia.org/wiki/Colossus "wikilink")，成功破解了[德军的密码系统](../Page/德国.md "wikilink")。

## 实现

1945年2月19日，图灵向[英国国家物理实验室](https://zh.wikipedia.org/wiki/英国 "wikilink")（NPL）执行委员会提交了一份详细文档，给出了存储程序式计算机的第一份完全可行性设计。但是，图灵已签署保密协议（），该协议的长期保密条款严格禁止他透露Colossus的细节，因此他无法详细阐述怎样去实现ACE这样的电子设备。与ACE相比，[EDVAC](../Page/EDVAC.md "wikilink")受到更多的宣传。[冯·诺伊曼知晓图灵的理论工作](https://zh.wikipedia.org/wiki/冯·诺伊曼 "wikilink")，在他著名的（1945年6月30日）中描述了EDVAC的设计，但EDVAC被认为有着不完整的性质和一些过于简洁而缺乏来源的想法。\[2\]

图灵于1945年底完成了关于ACE的报告，给出了详细的[逻辑电路框图](https://zh.wikipedia.org/wiki/逻辑电路 "wikilink")，预计制造费用为11,200[英镑](../Page/英镑.md "wikilink")。他认为速度和存储器容量是关键，因此提议使用高速存储器件和大容量存储器，存储器容量预计和早期[麦金塔电脑差不多](https://zh.wikipedia.org/wiki/麦金塔电脑 "wikilink")。与EDVAC不同的的是，ACE实现了[子例程调用](https://zh.wikipedia.org/wiki/子例程 "wikilink")，而且使用微型计算指令（），这是[程序语言的一种早期形式](https://zh.wikipedia.org/wiki/程序语言 "wikilink")。ACE的制造计划原定由曾在二战中负责建造Colossus的[英国邮政研究局工程师](https://zh.wikipedia.org/wiki/英国邮政研究局 "wikilink")[汤米·佛劳斯](https://zh.wikipedia.org/wiki/汤米·佛劳斯 "wikilink")（）负责，但是因为他同样签署了保密协议，不能透露他在战时和战后的工作，所以无法负责ACE的制造。

图灵在NPL的同事不了解Colossus的成就，认为建造完整ACE的工程上太宏大。在图灵离开NPL后，[威尔金森接手整个项目](../Page/詹姆斯·哈迪·威尔金森.md "wikilink")，建造了ACE的一个简化版本，也是第一台ACE的实现——[Pilot ACE](../Page/Pilot_ACE.md "wikilink")，于1950年5月10日运行了第一个程序。它比图灵先前设计的规模要小，使用了大约800个[真空管](../Page/真空管.md "wikilink")，[存储器是](https://zh.wikipedia.org/wiki/存储器 "wikilink")[水银](https://zh.wikipedia.org/wiki/水银 "wikilink")[延迟线](https://zh.wikipedia.org/wiki/延迟线 "wikilink")，它有12个延迟线，每个包含32条32位元的[指令或数据](https://zh.wikipedia.org/wiki/指令 "wikilink")，[时钟频率](../Page/时钟频率.md "wikilink")为1[MHz](https://zh.wikipedia.org/wiki/MHz "wikilink")，这在当时的电子计算机中是最快的。

ACE的第二个实现是，由艾伦·库姆斯（Allen Coombs）和威廉·钱德勒（William Chandler）为军方建造。他们曾和佛劳斯一起在位于[多利士山](https://zh.wikipedia.org/wiki/多利士山 "wikilink")（[多利斯山](https://zh.wikipedia.org/wiki/多利斯山 "wikilink")）的[布莱切利园制造了十台Colossus](https://zh.wikipedia.org/wiki/布莱切利园 "wikilink")，因此有丰富的工程经验。MOSAIC安装在[电信科学研究院](https://zh.wikipedia.org/wiki/电信科学研究院 "wikilink")（TRE）即后来的[皇家雷达研究院](https://zh.wikipedia.org/wiki/皇家雷达研究院 "wikilink")（RRE），1952年底或1953年初第一次运行，用来从[雷达](../Page/雷达.md "wikilink")数据计算飞行器轨道，其技术细节仍是秘密。

[Bendix Corporation的](https://zh.wikipedia.org/wiki/Bendix_Corporation "wikilink")[G15计算机使用了ACE的原理](https://zh.wikipedia.org/wiki/G15计算机 "wikilink")，其工程设计由哈利·赫斯金（）完成。他曾在1947年任职于NPL的ACE部门，并且之后参与了EDVAC的硬件设计。首台G15于1955年运行，是简单的单用户机器，有时被认为是第一台[个人电脑](../Page/个人电脑.md "wikilink")。

[Pilot ACE的商业产品是英国电气的](../Page/Pilot_ACE.md "wikilink")[DEUCE](https://zh.wikipedia.org/wiki/DEUCE "wikilink")，共卖出了31台。第一台DEUCE于1955年春天交付使用。

## 脚注

## 参考

  -
<!-- end list -->

  -
<!-- end list -->

  -
<!-- end list -->

  -
<!-- end list -->

  -
<!-- end list -->

  -
## 外部链接

  - [Events in the history of NPL — ACE computer](http://webarchive.nationalarchives.gov.uk/20080710161217/http%3A//www.npl.co.uk/server.php?show%3Dnav.296)

## 参见

  - [Pilot ACE](../Page/Pilot_ACE.md "wikilink")
  - [艾伦·图灵](../Page/艾伦·图灵.md "wikilink")

[Category:图灵](https://zh.wikipedia.org/wiki/Category:图灵 "wikilink") [Category:早期电脑](https://zh.wikipedia.org/wiki/Category:早期电脑 "wikilink") [Category:计算机历史](https://zh.wikipedia.org/wiki/Category:计算机历史 "wikilink")

1.  {{ Citation | last=Turing | first=A.M. | publication-date=1937 | year=1936 | title=On Computable Numbers, with an Application to the Entscheidungsproblem | periodical=Proceedings of the London Mathematical Society | series=2 | volume=42 | pages=230-65 }} (and )
2.  [Jonathan von Neumann and EDVAC](http://www.cs.berkeley.edu/~christos/classics/paper.pdf) ，Philip Levis ,2004年11月：*…due to the incomplete and terse nature of the report…*