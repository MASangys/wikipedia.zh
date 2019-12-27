**离子敏感场效应晶体管**，又称**ISFET** （  ），是用于测量溶液中离子浓度的[场效应晶体管](../Page/场效应管.md "wikilink") 。当离子浓度（例如[H<sup>+</sup>](https://zh.wikipedia.org/wiki/氢正离子 "wikilink") ，参见[pH值](https://zh.wikipedia.org/wiki/pH值 "wikilink") ）变化时，流经[晶体管](../Page/晶体管.md "wikilink")的电流也会相应变化。 在这里，溶液被用作栅极。 基板和[氧化物](../Page/氧化物.md "wikilink")表面之间的电压由于[离子](../Page/离子.md "wikilink")层而产生。 它与MOSFET具有相同的基本结构，是一种特殊类型的[MOSFET](https://zh.wikipedia.org/wiki/金屬氧化物半導體場效電晶體 "wikilink") （金属氧化物半导体场效应晶体管） \[1\] ，但金属栅极被离子敏感[膜](../Page/膜.md "wikilink") ， [电解质](../Page/电解质.md "wikilink")溶液和[参比电极代替](https://zh.wikipedia.org/wiki/参比电极 "wikilink")。 \[2\] ISFET于1970年发明，是第一款[生物传感器FET](https://zh.wikipedia.org/wiki/生物传感器FET "wikilink")（BioFET）。 [缩略图](https://zh.wikipedia.org/wiki/File:ISFET.jpg "fig:缩略图") PH值影响栅极材料的Si–OH基团在水溶液中的界面 [水解](../Page/水解.md "wikilink")性 。典型的栅极材料有 [SiO<sub>2</sub>](../Page/二氧化硅.md "wikilink"), [Si<sub>3</sub>N<sub>4</sub>](../Page/氮化矽.md "wikilink"), [Al<sub>2</sub>O<sub>3</sub>](../Page/氧化铝.md "wikilink") 和 [Ta<sub>2</sub>O<sub>5</sub>](../Page/五氧化二钽.md "wikilink").

可以通过[位点结合模型描述负责氧化物表面电荷的机理](https://zh.wikipedia.org/wiki/位点结合模型 "wikilink")，该模型描述了溶液中Si-OH表面位点和H<sup>+</sup>离子之间的平衡。 覆盖氧化物表面（例如SiO<sub>2</sub>）的羟基可以通过提供或接受质子而表现两性，如在氧化物-电解质界面发生的以下酸碱反应：

  -
    \-Si-OH + H<sub>2</sub>O ↔ -Si-O <sup>-</sup> + H<sub>3</sub>O<sup>+</sup>

<!-- end list -->

  -
    \-Si-OH + H<sub>3</sub>O<sup>+</sup> ↔ -Si–OH<sub>2</sub><sup>+</sup> + H<sub>2</sub>O

ISFET的源极和漏极的结构与MOSFET相同。氢离子敏感膜通过对氢离子的选择透过以改变栅极电压。即ISFET的阈值电压取决于与其离子敏感膜接触的物质的pH值。

## 参比电极的现实局限

对H<sup>+</sup>浓度敏感的ISFET电极可用作常规的玻璃电极，以测量溶液的pH值。但是，它也需要参比电极才能工作。 如果与溶液接触的参比电极是经典的[AgCl或](https://zh.wikipedia.org/wiki/AgCl "wikilink")[Hg<sub>2</sub>Cl<sub>2</sub>](../Page/氯化亚汞.md "wikilink")，则它将遭受与常规pH电极相同的局限性（在凝胶电极的情况下，结电位，KCl泄漏和甘油泄漏）。常规的参比电极也可能体积庞大且易碎，由于体积太大的限制也无法使ISFET电极小型化。电极微型化对于某些生物学或活体临床分析（一次性微型导管pH探针）是必不可少的。

因此，自20多年来以来，许多研究工作一直致力于片上嵌入式微型参比场效应晶体管（REFET）。它们的功能原理或操作模式可能会有所不同，具体取决于电极生产商，并且通常受专利保护。REFET所需的半导体改良表面也不总是与测试溶液保持热力学平衡，并且可能对侵蚀性或干扰性溶解物质或未很好表征的老化现象敏感。如果电极能够以规则的时间间隔频繁地重新校准并且在其使用寿命期间易于维护，这些问题都可以避免。但是，如果电极必须长时间保持浸入状态，或者由于测量层面有关的特定约束而无法使用，则可能会出现问题（地球化学测量在极端的环境如升高的水压下或缺氧或还原条件下容易受大气氧进入或压力变化而被干扰）。

与常规[玻璃电极一样](https://zh.wikipedia.org/wiki/玻璃电极 "wikilink")，ISFET电极的关键因素仍然是参比电极。 在对电极故障进行故障排除时，通常从参比电极入手。

## 历史

ISFET的基础是 [MOSFET](https://zh.wikipedia.org/wiki/MOSFET "wikilink") （金属氧化物半导体场效应晶体管）， \[3\]最初由埃及工程师Mohamed M. Atalla和韩国工程师Dawon Kahng于1959年发明。 \[4\] 1962年， Leland C. Clark和Champ Lyons发明了[生物传感器](../Page/生物传感器.md "wikilink") 。 \[5\] \[6\]

[特文特大学](../Page/特文特大学.md "wikilink")的荷兰工程师Piet Bergveld随后研究了MOSFET，并意识到可以将其改装为用于[电化学](../Page/电化学.md "wikilink")和[生物应用的](../Page/生物学.md "wikilink")[传感器](../Page/传感器.md "wikilink") 。 \[7\] \[8\] 这导致了Bergveld在1970年发明ISFET。 \[9\] 他将ISFET描述为“一种具有一定距离的栅极的特殊MOSFET”。 它是最早的[生物传感器FET](https://zh.wikipedia.org/wiki/生物FET "wikilink") （BioFET）。 \[10\]

ISFET传感器可以在基于 [CMOS](../Page/互補式金屬氧化物半導體.md "wikilink")（互补MOS）技术的 [集成电路](../Page/集成电路.md "wikilink") 中实现。ISFET器件广泛用于生物医学应用中，例如DNA杂交检测，血液中生物[标志物检测](../Page/生物标记.md "wikilink")，[抗体检测](https://zh.wikipedia.org/wiki/抗体 "wikilink")，[葡萄糖](../Page/葡萄糖.md "wikilink")测量和 [pH传感](../Page/PH值.md "wikilink")。ISFET也是后来的生物FET的基础，例如[遗传技术中使用的](../Page/基因工程.md "wikilink")[DNA场效应晶体管](https://zh.wikipedia.org/wiki/DNA场效应晶体管 "wikilink")（DNAFET）。\[11\]

## 参照

  - 化学场效应晶体管
  - 离子选择电极
  - [MISFET](https://zh.wikipedia.org/wiki/金屬氧化物半導體場效電晶體 "wikilink")：金属-绝缘体-半导体场效应晶体管
  - [MOSFET](https://zh.wikipedia.org/wiki/金屬氧化物半導體場效電晶體 "wikilink")：金属-氧化物-半导体场效应晶体管
  - [pH](../Page/PH值.md "wikilink")
  - [pH测量仪](../Page/PH计.md "wikilink")
  - [电位法](https://zh.wikipedia.org/wiki/电位差计 "wikilink")
  - 醌氢醌极
  - 饱和甘汞电极
  - 氯化银电极
  - [标准氢电极](../Page/标准氢电极.md "wikilink")

## 参考文献

## 参考书目

  -
  -
  - [ISFET pH传感器](http://www.iupac.org/publications/analytical_compendium/Cha08sec324.pdf)

## 进一步阅读

  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
[Category:晶体管类型](https://zh.wikipedia.org/wiki/Category:晶体管类型 "wikilink") [Category:传感器](https://zh.wikipedia.org/wiki/Category:传感器 "wikilink") [Category:电极](https://zh.wikipedia.org/wiki/Category:电极 "wikilink") [Category:电化学](https://zh.wikipedia.org/wiki/Category:电化学 "wikilink") [Category:酸碱化学](https://zh.wikipedia.org/wiki/Category:酸碱化学 "wikilink") [Category:度量仪器](https://zh.wikipedia.org/wiki/Category:度量仪器 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.