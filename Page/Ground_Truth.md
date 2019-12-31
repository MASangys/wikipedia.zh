> 本文内容由[Ground Truth](https://zh.wikipedia.org/wiki/Ground_Truth)转换而来。


**基准真相**（英语：Ground Truth，又称：地面实况、上帝真相）是一个相对概念；它是指相对于新的[测量方式得到的测量值](https://zh.wikipedia.org/wiki/测量 "wikilink")，作为基准的，由已有的、可靠的测量方式得到的测量值（即[经验证据](https://zh.wikipedia.org/wiki/经验证据 "wikilink")）。人们往往会利用基准真相，对新的测量方式进行[校准](https://zh.wikipedia.org/wiki/校准 "wikilink")，以降低新测量方式的误差和提高新测量方式的准确性。

机器学习领域借用了这一概念。使用训练所得[模型对样本进行](https://zh.wikipedia.org/wiki/模型 "wikilink")[推理](../Page/推理.md "wikilink")的过程，可以当做是一种广义上的测量行为。因此，在[有监督学习中](https://zh.wikipedia.org/wiki/监督式学习 "wikilink")，Ground Truth通常指代样本集中的标签。

## 概述

在广义上，[测量是指通过恰当的方法](https://zh.wikipedia.org/wiki/测量 "wikilink")（工具和手段），用数据来描述观察到的现象，对事物作出量化描述的过程；亦即，广义上的测量是对非量化的实体进行量化的过程。在引入新的测量方法时，为了对新的测量方法的准确性进行衡量，就必须引入作为「标准答案」的基准测量方法。基准测量方法对样本的测量结果，就是基准真相。

举例来说，[目测距离是一种对距离进行测量的方式](https://zh.wikipedia.org/wiki/目测 "wikilink")。对于一些工作来说，目测是很重要的技能。为了提高目测准确度，人们必须首先有能力衡量目测距离的误差。因此，人们需要引入作为标准答案的基准测量方法，并得出基准真相。对于目测距离来说，人们可以在一块场地上，设置一个观察点，以及在不同位置和距离上放置目标物。而后，人们可以通过[激光测距等已有的](https://zh.wikipedia.org/wiki/激光测距 "wikilink")、可靠的测量方式，测量观察点和各个目标物之间的距离，作为基准真相。之后，通过不断训练、与基准真相进行比对，人们就能提高目测距离的准确度。

由于基准真相也是测量的结果，因此基准真相和实际值之间也会存在[误差](../Page/误差.md "wikilink")。因此，按照基准真相进行校准的新侧量方法也无法避免这一有基准测量方法带来的误差。

## 统计与机器学习

若将训练所得[模型对样本进行](https://zh.wikipedia.org/wiki/模型 "wikilink")[推理](../Page/推理.md "wikilink")的过程作为一种广义上的测量行为，将过程作为[校准过程](https://zh.wikipedia.org/wiki/校准 "wikilink")，则在[有监督学习中](https://zh.wikipedia.org/wiki/监督式学习 "wikilink")，基准真相即是用作优化目标的[样本集中之标签](https://zh.wikipedia.org/wiki/样本集 "wikilink")。

[分类:统计学](https://zh.wikipedia.org/wiki/分类:统计学 "wikilink") [分类:机器学习](https://zh.wikipedia.org/wiki/分类:机器学习 "wikilink") [分类:摄影测量学](https://zh.wikipedia.org/wiki/分类:摄影测量学 "wikilink")