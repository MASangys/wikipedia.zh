TrueSkill系统是基于[贝叶斯推断](../Page/贝叶斯推断.md "wikilink")的评分系统，由[微软研究院开发以代替传统](https://zh.wikipedia.org/wiki/微软研究院 "wikilink")[Elo评分](../Page/等级分.md "wikilink")，并成功应用于[Xbox Live自动匹配系统](../Page/Xbox_Live.md "wikilink")。TrueSkill评分系统是评分系统的衍伸，主要用于多人游戏中\[1\]\[2\]。TrueSkill评分系统考虑到了你水平的不确定性，综合考虑了玩家的胜率和可能的水平涨落。当玩家进行了更多的游戏后，即使你的胜率不变，系统也会因为对你的水平更加了解而改变对你的评分。

## Rank值的计算公式

[Skilldia.jpg](https://zh.wikipedia.org/wiki/File:Skilldia.jpg "fig:Skilldia.jpg") TrueSkill假设玩家的水平可以用一个正态分布来表示，而正态分布可以用两个参数：平均值和方差来完全描述。设Rank值为R，代表玩家水平的正态分布的两个参数平均值和方差分别为\(\mu\)和\(\sigma\)，则系统对玩家的评分即Rank值为

\[R = \mu - k \times \sigma\] *k*值越大则系统的评分越保守。

## 输赢对Rank值的影响

下面这张表格来自微软研究院\[3\]，此表格给出了8个新手在参与一个8人游戏后\(\mu\)和\(\sigma\)的变化。

|         |         |            |            |             |             |
| ------- | ------- | ---------- | ---------- | ----------- | ----------- |
| Name    | Outcome | Pre-Game μ | Pre-Game σ | Post-Game μ | Post-Game σ |
| Alice   | 1st     | 25         | 8.3        | 36.771      | 5.749       |
| Bob     | 2nd     | 25         | 8.3        | 32.242      | 5.133       |
| Chris   | 3rd     | 25         | 8.3        | 29.074      | 4.943       |
| Darren  | 4th     | 25         | 8.3        | 26.322      | 4.874       |
| Eve     | 5th     | 25         | 8.3        | 23.678      | 4.874       |
| Fabien  | 6th     | 25         | 8.3        | 20.926      | 4.943       |
| George  | 7th     | 25         | 8.3        | 17.758      | 5.133       |
| Hillary | 8th     | 25         | 8.3        | 13.229      | 5.749       |

这里有个很有意思的现象：注意第四名Darren和第五名Eve，他们的\(\sigma\)是最小的，换句话说系统认为他们能力的可能起伏是最小的。这是因为通过这场游戏我们对他们了解得最多：他们赢了3/4个人，也输给了4/3个人。而对于第一名Alice，我们只知道她赢了7个人。

如果想知道更详细的定量分析可以先考虑最简单的两人游戏情况

\[\mu_{winner}\longleftarrow\mu_{winner}+\dfrac{\sigma^{2}_{winner}}{c}*v(\dfrac{\mu_{winner}-\mu_{loser}}{c},\dfrac{\varepsilon}{c})\]

\[\mu_{loser}\longleftarrow\mu_{loser}-\dfrac{\sigma^{2}_{loser}}{c}*v(\dfrac{\mu_{winner}-\mu_{loser}}{c},\dfrac{\varepsilon}{c})\]

\[\sigma^{2}_{winner}\longleftarrow\sigma^{2}_{winner}*[1-\dfrac{\sigma^{2}_{winner}}{c}*w(\dfrac{\mu_{winner}-\mu_{loser}}{c},\dfrac{\varepsilon}{c})\]

\[\sigma^{2}_{loser}\longleftarrow\sigma^{2}_{loser}*[1-\dfrac{\sigma^{2}_{loser}}{c}*w(\dfrac{\mu_{winner}-\mu_{loser}}{c},\dfrac{\varepsilon}{c})\]

\[c^{2}=2\beta^{2}+\sigma^{2}_{winner}+\sigma^{2}_{loser}\] 系数\(\beta^{2}\)代表的是所有玩家的平均方差。\(v\)和\(w\)是两个函数，比较复杂。ε是“平局参数”。

简而言之，你赢了\(\mu\) 就增加，输了\(\mu\) 减小；但不论输赢，\(\sigma\)都是在减小，所以有可能出现输了涨分的情况。

## 如何自动匹配对手

势均力敌的对手能带来最精彩的比赛，所以当自动匹配对手时，系统会尽可能的为你安排可能与水平最为接近的玩家。TrueSkill评分系统采用了一个值域为\((0,1)\)的函数来描述两个人是否势均力敌：结果越接近0代表差距越大，越接近1代表水平越接近。

假设有两个玩家A和B，他们的参数为\((\mu_{A},\sigma_{A})\) 和 \((\mu_{B},\sigma_{B})\) ，则函数对这两个玩家的返回值为

\[e^{-\dfrac{(\mu_{A}-\mu_{B})^{2}}{2c^{2}}}\sqrt{\dfrac{2\beta^{2}}{c^{2}}}\] c的值由如下公式给出

\[c^{2}=2\beta^{2}+\mu^{2}_{A}+\mu^{2}_{B}\] 如果两人有较大几率被匹配在一起，光是平均值接近还不行（e指数上那一项），还得方差也比较接近才行（d）。

## Xbox Live上的应用

在Xbox Live上，系统为每个玩家赋予的初值是μ = 25 以及 σ = 25 / 3，k=3。所以玩家的起始Rank值为

\[R=25-3\dfrac{25}{3}=0\]

## 参考资料

## 外部链接

  - [Microsoft Research's TrueSkill homepage](http://research.microsoft.com/en-us/projects/trueskill/)
  - [Microsoft Research's TrueSkill paper](http://research.microsoft.com/apps/pubs/default.aspx?id=67956)
  - [In-depth explanation of the mathematical background](http://www.moserware.com/2010/03/computing-your-skill.html)

[Category:Rating_systems](https://zh.wikipedia.org/wiki/Category:Rating_systems "wikilink") [Category:Xbox_360](https://zh.wikipedia.org/wiki/Category:Xbox_360 "wikilink") [Category:Xbox_Live](https://zh.wikipedia.org/wiki/Category:Xbox_Live "wikilink")

1.
2.
3.