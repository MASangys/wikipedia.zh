**Slope One** 是一系列应用于[协同过滤的算法的统称](../Page/协同过滤.md "wikilink")。由 Daniel
Lemire和Anna Maclachlan于2005年发表的论文中提出。 \[1\]有争议的是，该算法堪称基于项目评价的non-trivial
协同过滤算法最简洁的形式。该系列算法的简洁特性使它们的实现简单而高效，而且其精确度与其它复杂费时的算法相比也不相上下。 \[2\].
该系列算法也被用来改进其它算法。\[3\]\[4\].

## 协同过滤简介及其主要优缺点

协同过滤推荐（Collaborative Filtering
recommendation）在信息过滤和信息系统中正迅速成为一项很受欢迎的技术。与传统的基于内容过滤直接分析内容进行推荐不同，协同过滤分析用户兴趣，在用户群中找到指定用户的相似（兴趣）用户，综合这些相似用户对某一信息的评价，形成系统对该指定用户对此信息的喜好程度预测。
与传统文本过滤相比，协同过滤有下列优点:

1.  能够过滤难以进行机器自动基于内容分析的信息。如艺术品、音乐。
2.  能够基于一些复杂的，难以表达的概念（信息质量、品位)进行过滤。
3.  推荐的新颖性。

尽管协同过滤技术在个性化推荐系统中获得了极大的成功，但随着站点结构、内容的复杂度和用户人数的不断增加，协同过滤技术的一些缺点逐渐暴露出来。
主要有以下三点:

1.  稀疏性(sparsity)：在许多推荐系统中，每个用户涉及的信息量相当有限，在一些大的系统如亚马逊网站中，用户最多不过就评估了上百万本书的1%\~2%。造成评估矩阵数据相当稀疏，难以找到相似用户集，导致推荐效果大大降低。
2.  扩展性(scalability)：“最近邻居”算法的计算量随着用户和项的增加而大大增加，对于上百万之巨的数目，通常的算法将遭遇到严重的扩展性问题。
3.  精确性(accuracy)：通过寻找相近用户来产生推荐集，在数量较大的情况下，推荐的可信度随之降低。

## Item-based协同过滤 和 过适

当可以对一些项目评分的时候，比如人们可以对一些东西给出1到5星的评价的时候，协同过滤意图基于一个个体过去对某些项目的评分和（庞大的）由其他用户的评价构成的数据库，来预测该用户对未评价项目的评分。
**例如**: 如果一个人给披头士的评分为5（总分5）的话，我们能否预测他对席琳狄翁新专辑的评分呢？

这种情形下, item-based 协同过滤系统\[5\]\[6\]根据其它项目的评分来预测某项目的分值，一般方法为
[线性回归](../Page/线性回归.md "wikilink") (\(f(x)=ax+b\)).
于是，需要列出x^2个线性回归方程和2x^2个回归量，例如：当有1000个项目时，需要列多达1,000,000个线性回归方程，
以及多达2,000,000个回归量。除非我们只选择某些用户共同评价过的项目对，否则协同过滤会遇到[过适](../Page/过适.md "wikilink")\[7\](过拟合)
问题。

另外一种更好的方法是使用更简单一些的式子，比如 \(f(x)=x+b\)：实验证明当使用一半的回归量的时候，该式子（称为Slope
One）的表现有时优于\[8\]线性回归方程。该简化方法也不需要那么多存储空间和延迟。

Item-based 协同过滤只是 [协同过滤的一种形式](../Page/协同过滤.md "wikilink").其它还有像
user-based 协同过滤一样研究用户间的联系的过滤系统。但是，考虑到其他用户数量庞大，item-based协同过滤更可行一些。

## 电子商务中的Item-based协同过滤

人们并不总是能给出评分，当用户只提供二进制数据（购买与否）的时候，就无法应用Slope One 和其它基于评分的算法。 二进制
item-based协同过滤应用的例子之一就是Amazon的
[item-to-item](http://doi.ieeecomputersociety.org/10.1109/MIC.2003.1167344)
专利算法\[9\]，该算法中用二进制向量表示用户-项目购买关系的矩阵，并计算二进制向量间的cosine相关系数。

有人认为Item-to-Item 算法甚至比Slope One 还简单，例如：

| 顾客   | 项目 1 | 项目 2 | 项目 3 |
| ---- | ---- | ---- | ---- |
| John | 买过   | 没买过  | 买过   |
| Mark | 没买过  | 买过   | 买过   |
| Lucy | 没买过  | 买过   | 没买过  |

购买统计样本

在本例当中，项目1和项目2间的cosine相关系数为：

\(\frac{(1,0,0)\cdot (0,1,1) }{  \Vert (1,0,0)\Vert \Vert (0,1,1)\Vert }= 0\),

项目1和项目3间的cosine相关系数为：

\(\frac{(1,0,0)\cdot (1,1,0) }{  \Vert (1,0,0)\Vert \Vert (1,1,0)\Vert }= \frac{1}{\sqrt{2}}\),

而项目2和项目3的cosine相关系数为：

\(\frac{(0,1,1)\cdot (1,1,0)}{  \Vert (0,1,1)\Vert \Vert (1,1,0)\Vert }= \frac{1}{2}\).

于是，浏览项目1的顾客会被推荐买项目3(两者相关系数最大),而浏览项目2的顾客会被推荐买项目3,浏览了项目3的会首先被推荐买项目1（再然后是项目2,因为2和3的相关系数小于1和3）。该模型只使用了每对项目间的一个参数（cosine相关系数）来产生推荐。因此，如果有n个项目，则需要计算和存储
n（n-1）/2 个cosine相关系数。

## Slope One 协同过滤

为了大大减少[过适](../Page/过适.md "wikilink")(过拟合)的发生，提升算法简化实现， **Slope One**
系列易实现的Item-based[协同过滤算法被提了出来](../Page/协同过滤.md "wikilink")。本质上，该方法运用更简单形式的回归表达式(\(f(x)=x+b\))
和单一的自由参数，而不是一个项目评分和另一个项目评分间的线性回归 (\(f(x)=ax+b\))。
该自由参数只不过就是两个项目评分间的平均差值。甚至在某些实例当中，它比线性回归的方法更准确\[10\]，而且该算法只需要一半（甚至更少）的存储量。

[Image:Simplicity_diagram.png](https://zh.wikipedia.org/wiki/File:Simplicity_diagram.png "fig:Image:Simplicity_diagram.png")

**例**:

1.  User A 对 Item I 评分为1 对Item J.评分为1.5
2.  User B 对 Item I 评分为2.
3.  你认为 User B 会给 Item J 打几分?
4.  Slope One 的答案是：2.5 (1.5-1+2=2.5).

举个更实际的例子，考虑下表：

| 顾客   | 项目 1 | 项目 2 | 项目 3 |
| ---- | ---- | ---- | ---- |
| John | 5    | 3    | 2    |
| Mark | 3    | 4    | 未评分  |
| Lucy | 未评分  | 2    | 5    |

评分数据库样本

在本例中，项目2和1之间的平均评分差值为 (2+(-1))/2=0.5.
因此，item1的评分平均比item2高0.5。同样的，项目3和1之间的平均评分差值为3。因此，如果我们试图根据Lucy
对项目2的评分来预测她对项目1的评分的时候，我们可以得到 2+0.5 =
2.5。同样，如果我们想要根据她对项目3的评分来预测她对项目1的评分的话，我们得到
5+3=8.

如果一个用户已经评价了一些项目，可以这样做出预测：简单地把各个项目的预测通过加权平均值结合起来。当用户两个项目都评价过的时候，权值就高。在上面的例子中，项目1和项目2都评价了的用户数为2,项目1和项目3
都评价了的用户数为1,因此权重分别为2和1. 我们可以这样预测Lucy对项目1的评价：

\(\frac{2 \times 2.5 + 1 \times 8 }{2+1} = \frac{13 }{3} = 4.33\)
于是，对“n”个项目，想要实现 Slope One，只需要计算并存储“n”对评分间的平均差值和评价数目即可。

## Slope One 的算法复杂度

设有“n”个项目，“m”个用户，“N”个评分。计算每对评分之间的差值需要*n(n-1)/2* 单位的存储空间，最多需要 *m
n*<sup>2</sup>步. 计算量也有可能挺悲观的:假设用户已经评价了最多 *y* 个项目,
那么计算不超过*n*<sup>2</sup>+*my*<sup>2</sup>个项目间计算差值是可能的。 .
如果一个用户已经评价过“x”个项目，预测单一的项目评分需要“x“步，而对其所有未评分项目做出评分预测需要最多
(*n-x*)*x* 步. 当一个用户已经评价过“x”个项目时，当该用户新增一个评价时，更新数据库需要 *x*步.

可以通过分割数据（参照[分割和稀疏存储](../Page/分割.md "wikilink")（没有共同评价项目的用户可以被忽略）)来降低存储要求，

## 应用Slope One的推荐系统

  - [hitflip](http://hitflip.de) DVD推荐系统
  - [How Happy](http://www.howhappy.org)
  - [inDiscover](http://www.indiscover.net) MP3推荐系统
  - [RACOFI
    Composer](https://web.archive.org/web/20090526055706/http://iit-iti.nrc-cnrc.gc.ca/projects-projets/racofi-composer_e.html)
  - [Value Investing
    News](http://www.valueinvestingnews.com/content-recommendations-upgrade)
    股票新闻网站
  - [AllTheBests](https://web.archive.org/web/20170526204918/http://allthebests.com/)
    购物推荐引擎

## 脚注

[Category:Collaboration](https://zh.wikipedia.org/wiki/Category:Collaboration "wikilink")

1.  *[Slope One Predictors for Online Rating-Based Collaborative
    Filtering](http://www.daniel-lemire.com/fr/abstracts/SDM2005.html) *

2.  Daniel Lemire, Anna Maclachlan, [Slope One Predictors for Online
    Rating-Based Collaborative
    Filtering](http://arxiv.org/abs/cs/0702144), In SIAM Data Mining
    (SDM'05), Newport Beach, California, April 21-23, 2005.

3.  Pu Wang, HongWu Ye, [A Personalized Recommendation Algorithm
    Combining Slope One Scheme and User Based Collaborative
    Filtering](http://ieeexplore.ieee.org/search/wrapper.jsp?arnumber=5116320),
    IIS '09, 2009.

4.  DeJia Zhang, [An Item-based Collaborative Filtering Recommendation
    Algorithm Using Slope One Scheme
    Smoothing](http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=5209738&isnumber=5209636),
    ISECS '09, 2009.

5.  Slobodan Vucetic, Zoran Obradovic: Collaborative Filtering Using a
    Regression-Based Approach. Knowl. Inf. Syst. 7(1): 1-22 (2005)

6.  Badrul M. Sarwar, George Karypis, Joseph A. Konstan, John Riedl:
    Item-based collaborative filtering recommendation algorithms. WWW
    2001: 285-295

7.
8.
9.  Greg Linden, Brent Smith, Jeremy York, "Amazon.com Recommendations:
    Item-to-Item Collaborative Filtering," IEEE Internet Computing, vol.
    07, no. 1, pp. 76-80, Jan/Feb, 2003

10.