> 本文内容由[Glicko评分系统](https://zh.wikipedia.org/wiki/Glicko评分系统)转换而来。


**Glicko评分系统**（英文：**Glicko rating system**）及**Glicko-2评分系统**（英文**：Glicko-2 rating system**）是评估选手在比赛中（如[国际象棋及](https://zh.wikipedia.org/wiki/國際象棋 "wikilink")[围棋](../Page/围棋.md "wikilink")）的技术能力方法之一。此方法由发明，原为打造，后作为[等级分](../Page/等级分.md "wikilink")评分系统的改进版本广泛应用。格里克曼在此算法中的主要贡献是“评分可靠性”（Ratings Reliability，简称RD），即评分[标准差](../Page/標準差.md "wikilink")（Ratings Deviation）。

Glicko与Glicko-2评分系统被发表至公有领域。诸多在线（如《[Pokémon Showdown](../Page/精灵宝可梦.md "wikilink")》、《》、《》、《》、《[在线围棋服务器](http://online-go.com)》\[1\]、《[反恐精英：全球攻势](../Page/反恐精英：全球攻势.md "wikilink")》、《[军团要塞2](../Page/絕地要塞2.md "wikilink")》、《[刀塔霸业](../Page/刀塔霸业.md "wikilink")》、《[激战2](../Page/激战2.md "wikilink")》、《[Splatoon 2](../Page/Splatoon_2.md "wikilink")》及《[皇舆争霸](https://zh.wikipedia.org/wiki/皇輿爭霸 "wikilink")》）和多个竞技性编程比赛都采用此种评分方法。\[2\]Glicko所使用的算法可在其网站上找到。

算法中，评分可靠性用于测量选手的评分，一评分可靠性（评分标准差）相当于一标准差。举个例子，一名评分为1500分的选手，其评分可靠性为50，表示有95%的可能性这名选手的真实实力约在1400至1600分（1500分的两个标准差）之间。选手的实力区间需增加并减去评分中的两个评分标准差来计算。在比赛结束后，选手的实力评分的波动根据评分标准差来计算：当选手的评分标准差较低（选手的评分已较为准确）或其对手的评分标准差较高时（对手的真实实力无法确定）时，选手的评分波动也较小。评分标准差将在比赛后减小，但将在一段时间不活跃后渐渐增大。

Glicko-2是Glicko评分系统的改进版本，引进了评分挥发度σ（Rating Volatility）的概念。采用稍加修改版的Glicko-2评分系统。\[3\]

## 测量

下列评分流程仅适用于Glicko评分系统，不适用于Glicko-2。

若选手没有评分，则其评分通常被设为1500，评分标准差为350。

### 测算标准差

新的评分标准差（\(RD\)）可使用旧的评分标准差（\(RD_0\)）计算：

\(RD = \min\left(\sqrt{{RD_0}^2 + c^2 t},350\right)\)

\(t\)为自上次比赛至现在的时间长度（评分期），350则是新选手的评分标准差。若选手在一个评分期间内进行了多场比赛，此算法会将进行的比赛作为一场看待。评分期根据选手进行比赛的频繁程度，可能长至七个月，短至几分钟。常数\(c\)根据选手在特定时间段内的技术不确定性计算而来，计算方法可能通过数据分析，或是估算选手的评分标准差将在什么时候达到未评分选手的评分标准差得来。若一名选手的评分标准差将在100个评分期间内达到350的不确定度，则评分标准差为50的玩家的常数\(c\)可通过解\(350 = \sqrt{50^2 +100c^2}\)的方式计算而来。\[4\]

或

\(c = \sqrt{(350^2 - 50^2)/100} \approx 34.6\)

### 测算新评分

在经过m场比赛后，选手的新评分可通过下列等式计算：

\(r = r_0 + \frac{q}{\frac{1}{RD^2} + \frac{1}{d^2}}\sum_{i=1}^{m}{g(RD_i)(s_i-E(s|r_0,r_i,RD_i))}\)

其中：

\(g(RD_i) = \frac{1}{\sqrt{1 + \frac{3 q^2 (RD_i^2)}{\pi^2} }}\)

\(E(s|r,r_i,RD_i) = \frac{1}{1+10^{\left(\frac{g(RD_i)(r_0-r_i)}{-400}\right)}}\)

\(q = \frac{\ln(10)}{400} = 0.00575646273\)

\(d^2 = \frac{1}{q^2 \sum_{i=1}^{m}{(g(RD_i))^2 E(s|r_0,r_i,RD_i) (1-E(s|r_0,r_i,RD_i))}}\)

\(r_i\)表示选手个人的评分；

\(s_i\)表示每场比赛后的结果。胜利为1，平局为\(\frac{1}{2}\)，失败为0。

### 测算新评分标准差

原先用于计算评分标准差的函数应增大标准差值，进而反应模型中一定非观察时间内，玩家的技术不确定性的增长。随后，评分标准差将在几场游戏后更新：

\(RD'=\sqrt{\left(\frac{1}{RD^2}+\frac{1}{d^2}\right)^{-1}}\)

## 另请参阅

  -
## 参考文献

<references />

## 外部链接

  - [格里克曼教授的 Glicko 网站](http://www.glicko.net/glicko.html)
  - [微软](../Page/微软.md "wikilink")借鉴Glicko中的多个理念开发出的[TrueSkill](../Page/TrueSkill评分系统.md "wikilink") \[[https://www.microsoft.com/en-us/research/publication/trueskilltm-a-bayesian-skill-rating-system/\]评分系统](https://www.microsoft.com/en-us/research/publication/trueskilltm-a-bayesian-skill-rating-system/%5D评分系统)
  - [forwardloop/glicko2s](https://github.com/forwardloop/glicko2s) Glicko-2的[JVM实现](https://zh.wikipedia.org/wiki/JVM "wikilink")
  - [RobKohr/glicko](https://github.com/RobKohr/glicko) Glicko-2的[JavaScript](../Page/JavaScript.md "wikilink")实现
  - [mmai/glicko2js](https://github.com/mmai/glicko2js) Glicko-2的客户端JavaScript及[Node.js](../Page/Node.js.md "wikilink")实现
  - [deepy/glicko2](https://github.com/deepy/glicko2) Glicko-2的[Python](../Page/Python.md "wikilink")实现
  - [sublee/glicko2](https://github.com/sublee/glicko2) Glicko-2的Python实现
  - [PlayerRatings](https://cran.r-project.org/web/packages/PlayerRatings) Glicko的[R语言](../Page/R语言.md "wikilink")实现，由亚历克·斯蒂芬森（Alec Stephenson）及杰夫·索纳斯（Jeff Sonas）撰写
  - [scala-glicko2](https://github.com/andriykuba/scala-glicko2) Glicko-2的[Scala](../Page/Scala.md "wikilink")实现

[Category:国际象棋评分系统](https://zh.wikipedia.org/wiki/Category:国际象棋评分系统 "wikilink") [Category:澳大利亚的国际象棋](https://zh.wikipedia.org/wiki/Category:澳大利亚的国际象棋 "wikilink") [Category:评分系统](https://zh.wikipedia.org/wiki/Category:评分系统 "wikilink") [Category:竞技比赛](https://zh.wikipedia.org/wiki/Category:竞技比赛 "wikilink") [Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.  <https://forums.online-go.com/t/ogs-has-a-new-glicko-2-based-rating-system/13058>
2.
3.
4.  <http://www.glicko.net/glicko.html>