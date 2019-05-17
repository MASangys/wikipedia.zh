**Kismet**是一款模仿人头部的机器人，由麻省理工学院的[Cynthia
Breazeal博士在](https://zh.wikipedia.org/wiki/Cynthia_Breazeal "wikilink")[二十世纪](https://zh.wikipedia.org/wiki/二十世纪 "wikilink")[九十年代制作](https://zh.wikipedia.org/wiki/九十年代 "wikilink")，是研究机器能否辨认和模仿人的[情感的一项实验](https://zh.wikipedia.org/wiki/情感 "wikilink")。
Kismet
一词来自一个[土耳其语单词](https://zh.wikipedia.org/wiki/土耳其语 "wikilink")，意为“命运”或“好运”。\[1\]
[Kismet_robot_20051016.jpg](https://zh.wikipedia.org/wiki/File:Kismet_robot_20051016.jpg "fig:Kismet_robot_20051016.jpg")[Cambridge,
Massachusetts的麻省理工学院博物馆](https://zh.wikipedia.org/wiki/Cambridge,_Massachusetts "wikilink")。\]\]

## 硬件设计和架构

为了能使Kismet与人类正常地交流互动，它具有[听觉](../Page/听觉.md "wikilink")，[视觉和](https://zh.wikipedia.org/wiki/视觉 "wikilink")[本体感受的能力输入设备](https://zh.wikipedia.org/wiki/本体感受 "wikilink")。
Kismet通过各种面部的表情，会发声和移动来模拟人类的情绪。面部表情则是通过耳朵、眉毛、眼皮、嘴唇、下巴和头部的运动产生的。这些物质材料的成本估计为25,000美元。\[2\]
此外，还有四个[摩托罗拉68332处理器](https://zh.wikipedia.org/wiki/摩托罗拉68000 "wikilink")，九个400兆赫的计算机和一个500兆赫的计算机。
\[3\]

## 软件系统

Kismet的社交智能软件系统([SNS](https://zh.wikipedia.org/wiki/SNS "wikilink"))是按人类[智能行为的模型为基础而设计的](https://zh.wikipedia.org/wiki/智能 "wikilink")。它包含如下六个[子系统](https://zh.wikipedia.org/wiki/子系统 "wikilink")。\[4\]

### 基本特征提取系统

该系统被用来处理来自相机和麦克风的原始[视觉和](https://zh.wikipedia.org/wiki/视觉 "wikilink")[听觉信息](../Page/听觉.md "wikilink")。
Kismet的视觉系统可以执行[眼睛检测](https://zh.wikipedia.org/wiki/眼睛 "wikilink")，[运动检测](https://zh.wikipedia.org/wiki/运动 "wikilink")，以及[肤色检测](https://zh.wikipedia.org/wiki/肤色 "wikilink")(尽管有争议)。当Kismet移动头时，它会暂时禁用其运动检测系统，以避免检测自身的运动。它还使用立体相机来估计物体在其视野中的距离，例如检测威胁
- 迅速移动的大而近的物体。\[5\]

Kismet的听觉系统主要是为了识别[婴幼儿讲话中的情感](https://zh.wikipedia.org/wiki/婴幼儿 "wikilink")。特别的，它可以检测五种不同类型的情感意图：[批准](../Page/批准.md "wikilink")，[禁止](https://zh.wikipedia.org/wiki/禁止 "wikilink")，[注意](../Page/注意.md "wikilink")，[安慰和](https://zh.wikipedia.org/wiki/安慰 "wikilink")[中立](https://zh.wikipedia.org/wiki/中立 "wikilink")。情感意图分类器处理步骤如下：从记录的[语音样本中提取](https://zh.wikipedia.org/wiki/语音 "wikilink")[音调平均值和](https://zh.wikipedia.org/wiki/音调 "wikilink")[能量](../Page/能量.md "wikilink")（音量）[方差等低级特征](../Page/方差.md "wikilink")。然后将情感意图的类别[建模为](https://zh.wikipedia.org/wiki/建模 "wikilink")[高斯混合模型](https://zh.wikipedia.org/wiki/高斯混合模型 "wikilink")，并使用[期望最大化算法将这些样本进行](https://zh.wikipedia.org/wiki/期望最大化 "wikilink")[分类](https://zh.wikipedia.org/wiki/分类 "wikilink")。分类是通过多个阶段完成的，首先将一个话语分为两个一般组（例如安慰/中立与禁止/关注/批准）之一，然后进行更详细的分类。这种系统架构显著提高了情感分类的性能，如“批准”（“你是一个聪明的机器人”）与“注意”（“嘿，Kismet，我在这里”）。

### 动机系统

Breazeal博士把自己与机器人的关系形容为“像幼儿与看守人的互动，我本人就是看守者，而机器人就像一个婴儿”。这概述了在一个学习框架内设置的人机关系，Breazeal博士为Kismet的发展提供了支撑。它提供了Kismet能力的展示机会，描述了情绪与表情，表达了机器人的“动机状态”，Brazeal博士说：“这是一种愤怒（笑）极度的愤怒，厌恶，兴奋，恐惧，这是幸福，这是一个兴趣，这个是悲伤，惊喜，这个是疲倦，这个在酣睡。\[6\]

在任何时候，Kismet一次只能处于一种情绪状态。然而，Breazeal指出Kismet没有意识，所以没有触觉。

\[7\]

### 语言系统

Kismet用各种各样的音素说出初始语言，类似于婴儿的咿呀声。它使用DECtalk语音合成器，改变音高，时间，发音等来表达各种情绪。语调用于在问题和陈述式的话语之间变化。嘴形同步对现实化很重要，因此开发者使用动画策略：\[8\]“简单是成功的嘴唇动画的秘诀”。因此，他们并不是完全模仿嘴唇的动作，而是“创造一个不受观众挑战的视觉short
hand”。

## 另见

  - [情感计算](https://zh.wikipedia.org/wiki/情感计算 "wikilink")
  - [人工智能](../Page/人工智能.md "wikilink")

## 参见

## 友情链接

  -
  - [Description de
    Kismet](https://web.archive.org/web/20110718160205/http://www.zonerobotique.com/article-111146-kismet-le-robot-expressif.html)


[Category:机器人](https://zh.wikipedia.org/wiki/Category:机器人 "wikilink")
[Category:美国机器人](https://zh.wikipedia.org/wiki/Category:美国机器人 "wikilink")
[Category:麻省理工学院](https://zh.wikipedia.org/wiki/Category:麻省理工学院 "wikilink")
[Category:90年代机器人](https://zh.wikipedia.org/wiki/Category:90年代机器人 "wikilink")
[Category:社交机器人](https://zh.wikipedia.org/wiki/Category:社交机器人 "wikilink")

1.
2.
3.  Peter Menzel and Faith D'Aluisio. **Robosapiens**. Cambridge: The
    MIT Press, 2000. Pg. 66

4.  Breazeal, Cynthia. *Designing Sociable Robots*. The MIT Press, 2002

5.

6.  Suchman, Lucy. "Subject Objects." Feminist Theory. 2011, pg. 127

7.  Breazeal, Cynthia. *Designing Sociable Robots*. The MIT Press, 2002,
    pg. 112

8.  Madsen, R. *Animated Film: Concepts, Methods, Uses*. Interland, New
    York, 1969