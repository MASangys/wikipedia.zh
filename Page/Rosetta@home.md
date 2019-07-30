**Rosetta@home** 是一个基于[伯克利开放式网络计算平台](https://zh.wikipedia.org/wiki/伯克利开放式网络计算平台 "wikilink")（BOINC）的[分布式计算](../Page/分布式计算.md "wikilink")项目，由[华盛顿大学](https://zh.wikipedia.org/wiki/西雅图华盛顿大学 "wikilink")开发和维护，用于[蛋白质结构预测](../Page/蛋白质结构预测.md "wikilink")、[蛋白质-蛋白质对接和新的](https://zh.wikipedia.org/wiki/蛋白质-蛋白质对接 "wikilink")的研究。截至2015年2月12日，全球共有5万多台[计算机是这一项目的活跃志愿者](https://zh.wikipedia.org/wiki/计算机 "wikilink")，平均[每秒浮點運算次數](../Page/每秒浮點運算次數.md "wikilink")达87万亿（87.688 teraFLOPS）。\[1\]Rosetta@Home还开发了一款[电子游戏](../Page/电子游戏.md "wikilink")[Foldit](../Page/Foldit.md "wikilink")，目的是通过[众包](../Page/众包.md "wikilink")途径来实现上述研究目标。尽管这个项目很大程度上侧重于进行提高[蛋白质组学](../Page/蛋白质组学.md "wikilink")方法的精确性和稳固性的[基础研究](https://zh.wikipedia.org/wiki/基础研究 "wikilink")，它也进行一些关于[艾滋病](https://zh.wikipedia.org/wiki/艾滋病 "wikilink")、[疟疾](../Page/疟疾.md "wikilink")、[癌症](../Page/癌症.md "wikilink")、[阿兹海默病以及其他疾病的](https://zh.wikipedia.org/wiki/阿兹海默病 "wikilink")[病理学](../Page/病理学.md "wikilink")的应用研究。\[2\]

与其他BOINC项目一样，Rosetta@home使用志愿者的计算机中空闲的[进程资源来执行单独的单元计算](https://zh.wikipedia.org/wiki/进程 "wikilink")。计算结果会被发送到项目的中央[服务器](../Page/服务器.md "wikilink")，经验证後存入[数据库](../Page/数据库.md "wikilink")中。这个项目是[跨平台的](https://zh.wikipedia.org/wiki/跨平台 "wikilink")，支持多种不同的[软件](../Page/软件.md "wikilink")和[硬件](../Page/硬件.md "wikilink")环境。用户可通过Rosetta@home的[屏幕保护程序观看正在自己计算机上进行的蛋白质结构预测的情况](https://zh.wikipedia.org/wiki/屏幕保护程序 "wikilink")。

除了疾病相关研究，Rosetta@home网络还是[结构生物信息学中新方法的一个测试框架](../Page/生物信息学.md "wikilink")。这些新方法经Rosetta@home庞大且多样的用户群体使用後，若运行效果稳定，将会被用于其他基于Rosetta的应用程序，例如[RosettaDock和](https://zh.wikipedia.org/wiki/#RosettaDock "wikilink")（HPF）。新方法测试中的两个重要项目是（CASP）和（CAPRI）。这两项测试实验分别用于评估蛋白质结构预测和蛋白质-蛋白质对接预测的最前沿技术。Rosetta@home稳居最重要的对接预测器之一，并且是现有最好的蛋白质[三级结构预测器之一](https://zh.wikipedia.org/wiki/三级结构 "wikilink")。\[3\]

## 计算平台

**Rosetta@home**应用程序和[BOINC](../Page/BOINC.md "wikilink")均支持[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[Linux](../Page/Linux.md "wikilink")、[苹果机和](https://zh.wikipedia.org/wiki/苹果机 "wikilink")[Android](../Page/Android.md "wikilink")平台。（BOINC还可在更多平台上运行，如[FreeBSD](../Page/FreeBSD.md "wikilink")。）\[4\]参与Rosetta@home的客户端计算机需要有一个[时钟频率](../Page/时钟频率.md "wikilink")至少达到500[兆赫的](https://zh.wikipedia.org/wiki/兆赫 "wikilink")[中央处理器](../Page/中央处理器.md "wikilink")、400[MB空餘的](https://zh.wikipedia.org/wiki/MB "wikilink")[硬盘](../Page/硬盘.md "wikilink")空间、512MB的[物理内存](https://zh.wikipedia.org/wiki/物理内存 "wikilink")，以及[因特网连接](https://zh.wikipedia.org/wiki/因特网 "wikilink")。\[5\]截至2017年6月18日，Rosetta Mini应用程序的最新版本号是3.73，在Android平台上应用程序的最新版本号是3.83。\[6\]用户的BOINC客户端与位于华盛顿大学的Rosetta@home服务器端之间使用标准[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")（80[端口](https://zh.wikipedia.org/wiki/TCP/UDP端口列表 "wikilink")）进行通信，[HTTPS](https://zh.wikipedia.org/wiki/HTTPS "wikilink")（443端口）用于密码交换。BOINC客户端使用1043和31416端口进行远程和本地控制，这两个端口可能需要在[防火墙](../Page/防火墙.md "wikilink")中被设置为“解除封禁”才可被使用。\[7\]包含蛋白质数据的工作单元由服务器分配给志愿者的计算机（客户端），然后客户端对所分配得到的任务进行蛋白质预测运算。为了避免重复的预测，每个工作单元会得到一个初始的[随机种子](https://zh.wikipedia.org/wiki/随机种子 "wikilink")。这使得每个预测具有独一无二的沿蛋白质能量图景（energy landscape）的下降轨道。\[8\]对于给定的蛋白质能量图景，Rosetta@home的结构预测近似为[整体极小值](../Page/极值.md "wikilink")。这个整体极小值代表该蛋白质的能量最佳构造，即它的[自然态](https://zh.wikipedia.org/wiki/自然态 "wikilink")。

[R@H_v1.32_screensaver.png](https://zh.wikipedia.org/wiki/File:R@H_v1.32_screensaver.png "fig:R@H_v1.32_screensaver.png")，显示了一个合成[泛素](../Page/泛素.md "wikilink")蛋白质（PDB ID: 1ogw）的结构预测进行情况\]\] Rosetta@home的[图形用户界面](../Page/图形用户界面.md "wikilink")是一个[屏幕保护程序](https://zh.wikipedia.org/wiki/屏幕保护程序 "wikilink")，显示了当前工作单元进行[蛋白质折叠](../Page/蛋白质折叠.md "wikilink")模拟的情况。屏幕左上方为当前蛋白质链正在尝试的移动（即搜索的形状）。紧邻其右侧是最新一个被接受的移动。再往右侧分上下两个小图，上图为当前最低能量形状，下图为实验中得到的真实形状（如果已知）。屏幕中部显示的是被接受模型的[自由能变化曲线](https://zh.wikipedia.org/wiki/自由能 "wikilink")。屏幕上方最右侧是接受模型的[均方根偏差](https://zh.wikipedia.org/wiki/均方根偏差 "wikilink")（RMSD）曲线，体现了被接受模型与实验中真实模型之间的相似度。在自由能变化曲线右侧、RMSD曲线下方，使用这两项结果生成了一个能量／RMSD图，伴随着模型的不断精确。\[9\]

与所有其他BOINC项目类似，Rosetta@home利用客户端空闲资源，在后台执行。执行过程可能发生在用户登录[操作系统](../Page/操作系统.md "wikilink")之前或之后。当其他应用程序需要时，Rosetta@home会释放资源，因此不会影响用户对计算机的正常使用。为了使计算机的功耗或者放热降到最低，用户可以自行指定Rosetta@home使用CPU资源的最大比例。此外，Rosetta@home每天最多运行次数，以及更多选项也都可以通过用户的账户选项来进行设置。

Rosetta@home网络所使用的Rosetta软件最早用[Fortran](../Page/Fortran.md "wikilink")编写，后改用[C++](../Page/C++.md "wikilink")重新编写，以利于进一步的开发。新版本于2008年2月8日发布，实现了[面向对象](../Page/面向对象程序设计.md "wikilink")。\[10\]Rosetta代码由Rosetta Commons开发。\[11\]这个软件对学术使用免费，对制药公司则收取费用。\[12\]

## 项目意义

通过一系列的[基因组测序计划](https://zh.wikipedia.org/wiki/基因组测序 "wikilink")，科学家能够判定许多种在[细胞](../Page/细胞.md "wikilink")内发挥作用的蛋白质的[氨基酸](../Page/氨基酸.md "wikilink")序列或者[一级结构](https://zh.wikipedia.org/wiki/一级结构 "wikilink")。为了更好地了解蛋白质的功能，以及向[合理化药物设计提供辅助](https://zh.wikipedia.org/wiki/药物设计 "wikilink")，科学家们需要知道蛋白质的三维[三级结构](https://zh.wikipedia.org/wiki/三级结构 "wikilink")。

[T0281-bakerprediction_overlay.png](https://zh.wikipedia.org/wiki/File:T0281-bakerprediction_overlay.png "fig:T0281-bakerprediction_overlay.png")为1.5[埃](https://zh.wikipedia.org/wiki/埃格斯特朗_\(单位\) "wikilink")。\]\] [蛋白质的三维结构目前主要通过](../Page/蛋白质结构.md "wikilink")[X射线晶体学](../Page/X射线晶体学.md "wikilink")或[核磁共振](../Page/核磁共振.md "wikilink")技术来进行实验确定。这个过程十分耗时，例如可能花费数星期或者几个月才能首次研究出如何使一种蛋白质结晶；而成本又非常高，每种蛋白质耗费约10万美元。\[13\]更重要的是，发现新序列的速度远超确定结构的速度：[美国国家生物技术信息中心](../Page/美国国家生物技术信息中心.md "wikilink")非冗余蛋白质数据库中存在的超过740万个蛋白质序列中，仅有不到5.2万已被确定结构并被存入[蛋白质数据库中](https://zh.wikipedia.org/wiki/蛋白质数据库 "wikilink")。\[14\]Rosetta@home的一个主要目标是在显著降低时间和金钱成本的情况下，预测蛋白质结构，并且达到与现有实验方法同样的精度。Rosetta@home还开发了确定[膜蛋白](https://zh.wikipedia.org/wiki/膜蛋白 "wikilink")（如[G蛋白偶联受体](../Page/G蛋白偶联受体.md "wikilink")）结构和对接的方法。\[15\]膜蛋白是现代药物设计的主要目标，但通过X射线晶体学、核磁共振等传统技术却极难获得其结构。

蛋白质结构预测的进展通过两年一届的蛋白质结构预测技术的关键测试（CASP）实验来进行评估。在这项实验中，来自全球各地的研究人员尝试从氨基酸序列中得到蛋白质结构。这项实验有时竞争十分激烈，得分高的小组被认为是最高端蛋白质结构预测研究的事实上的标准制定者。Rosetta@home所基于的Rosetta程序，自1998年的CASP3实验上开始被使用。在2004年的CASP6上，Rosetta创造了历史，在它为CASP目标蛋白质T0281提供的模型中，首次生成了接近原子级精度的*[ab initio](../Page/蛋白质折叠.md "wikilink")*蛋白质结构预测。\[16\]*Ab initio*不使用的信息，而必须依赖于[序列同源信息以及蛋白质内的模拟物理交互](https://zh.wikipedia.org/wiki/多重序列比对 "wikilink")，因此被认为是一类特别难以预测的蛋白质结构。Rosetta@home自2006年CASP7上开始被使用。在CASP7上，它在每个类别的预测中都成为最好的预测器之一。\[17\]\[18\]\[19\]而高质量的预测需要来自Rosetta@home众多志愿者提供计算资源。\[20\]不断增多的计算资源使Rosetta@home能够对[构象空间](https://zh.wikipedia.org/wiki/位形空间 "wikilink")（一个蛋白质可以被假设具有的可能的形状）更多的区域进行取样，根据“[黎文索尔佯谬](https://zh.wikipedia.org/wiki/黎文索尔佯谬 "wikilink")”（Levinthal paradox），采样数量会随着蛋白质长度的增长而[呈指数增长](../Page/計算複雜性理論.md "wikilink")。

Rosetta@home也被用于[蛋白质-蛋白质对接预测](https://zh.wikipedia.org/wiki/蛋白质-蛋白质对接 "wikilink")。这项预测确定[蛋白质复合体结构或者](https://zh.wikipedia.org/wiki/蛋白质复合体 "wikilink")[四级结构](https://zh.wikipedia.org/wiki/四级结构 "wikilink")。这一类型的蛋白质交互作用影响到许多细胞功能，包括[抗原](../Page/抗原.md "wikilink")-[抗体](https://zh.wikipedia.org/wiki/抗体 "wikilink")、[酶](../Page/酶.md "wikilink")-[抑制剂捆绑等](https://zh.wikipedia.org/wiki/抑制剂 "wikilink")。确定这些交互作用在药物设计中十分关键。Rosetta被用于交互作用预测的关键测试（CAPRI）实验。这项实验评估当前最前沿的蛋白质对接技术，评估模式与CASP类似。Rosetta在这项实验中得到的结果属最精确、最完整之一，而志愿者提供的计算资源被认为是Rosetta获得成功的主要因素之一。\[21\]

2008年初，Rosetta被用来推算设计一种具有在自然界中从未被观察到功能的蛋白质。\[22\]这个灵感源自2004年一篇引起关注的、被撤稿的论文，那篇论文中描述了一种蛋白质的推算设计，这种蛋白质与天然的蛋白质相比提高了酶活力。\[23\]2008年，大卫·贝克的研究组发表了论文，描述了这种蛋白质的制造过程。论文指出Rosetta@home为其提供计算资源，作为这种蛋白质设计方法的一项重要的概念论证。\[24\]这一类型的蛋白质设计将来可能在[药物设计](https://zh.wikipedia.org/wiki/药物设计 "wikilink")、[绿色化学](../Page/绿色化学.md "wikilink")、[生物修复等领域得到应用](https://zh.wikipedia.org/wiki/生物修复 "wikilink")。\[25\]

## 疾病相关研究

除了蛋白质结构预测、对接、设计等基础研究，Rosetta@home也被用在疾病相关研究。\[26\]大卫·贝克的Rosetta@home日志上描述了许多附属的研究项目。\[27\]

### 阿兹海默病

Rosetta套装软件当中的一个组件RosettaDesign，被用来精确预测[淀粉样蛋白](https://zh.wikipedia.org/wiki/淀粉样蛋白 "wikilink")（amyloidogenic protein）的哪个区域最可能形成淀粉样纤维。\[28\]通过获取蛋白质中的六肽（6个氨基酸长度的片断），选择与一个已知能够形成纤维的六肽相匹配的最低能量结构，RosettaDesign能够识别出形成纤维可能性为随机蛋白质两倍的肽段。\[29\]在此类研究中，Rosetta@home被用于预测[β淀粉样蛋白的结构](https://zh.wikipedia.org/wiki/β淀粉样蛋白 "wikilink")。\[30\]β淀粉样蛋白是一种能够形成纤维的蛋白质，被认为会引起[阿兹海默病](https://zh.wikipedia.org/wiki/阿兹海默病 "wikilink")。RosettaDesign一项尚未发表的初步结果设计出了也许可以预防纤维形成的蛋白质，但它能否预防这种疾病尚不得而知。\[31\]

### 炭疽病

Rosetta的另一个组件RosettaDock\[32\]\[33\]\[34\]与实验方法相结合，被用于构造致死因子（lethal factor，LF）、水肿因子（edema factor，EF）和保护性抗原（protective antigen，PA）等三种蛋白质的交互作用模型。这三种蛋白质构成了[炭疽病](../Page/炭疽病.md "wikilink")[毒素](../Page/毒素.md "wikilink")。这个模型精确预测LF与PA之间的对接，帮助确定两种蛋白质分别有哪些[结构域](../Page/结构域.md "wikilink")参与到LF-PA复合体的构造中。这项成果最终被应用到改良的炭疽病[疫苗](../Page/疫苗.md "wikilink")的研制。\[35\]\[36\]

### 单纯疱疹病毒1型

RosettaDock还被用来构造一种[抗体](https://zh.wikipedia.org/wiki/抗体 "wikilink")（免疫球蛋白G）与能够使抗病毒抗体退化的[单纯疱疹病毒1型](https://zh.wikipedia.org/wiki/单纯疱疹病毒 "wikilink")（[HSV-1](https://zh.wikipedia.org/wiki/HSV-1 "wikilink")）表面蛋白之间的对接模型。RosettaDock预测的蛋白质复合体与极难得到的实验模型近乎一致。研究人员总结说，这种对接方法可望解决X射线结晶学方法构造蛋白质-蛋白质界面模型所遇到的一些问题。\[37\]

### HIV

作为一项获得[比尔与美琳达·盖茨基金会](https://zh.wikipedia.org/wiki/比尔与美琳达·盖茨基金会 "wikilink")1940万美元资助的研究项目的一部分\[38\]，Rosetta@home被用于设计[人类免疫缺陷病毒](https://zh.wikipedia.org/wiki/人类免疫缺陷病毒 "wikilink")（HIV）疫苗。\[39\]\[40\]

### 疟疾

在与“全球重大卫生挑战计划”相关的研究中\[41\]，Rosetta还被用于运算设计新型的归巢核酸内切酶蛋白质。这种蛋白质能够根除[冈比亚疟蚊或者使这种疟蚊无法传播](https://zh.wikipedia.org/wiki/冈比亚疟蚊 "wikilink")[疟疾](../Page/疟疾.md "wikilink")。\[42\]由于能够构建及改变蛋白质-DNA交互作用模型，特别是归巢核酸内切酶蛋白质等，像Rosetta这一类运算蛋白质设计方法成为[基因治疗中的一个重要角色](https://zh.wikipedia.org/wiki/基因治疗 "wikilink")。\[43\]\[44\]

## 发展历史与分支

Rosetta最初是作为*ab initio*蛋白质结构预测方法，在1998年由贝克实验室开发\[45\]；而到目前，这个项目已经形成多个分支，有各自不同的发展和服务方向。Rosetta平台得名于[罗塞塔石碑](https://zh.wikipedia.org/wiki/罗塞塔石碑 "wikilink")（被用于破译[古埃及](../Page/古埃及.md "wikilink")文字），因为该平台试图破译蛋白质的氨基酸序列的结构“含义”。\[46\]Rosetta出现7年之后，Rosetta@home项目于2005年10月6日发布。\[47\]许多参与到Rosetta起步工作的[研究生](../Page/研究生.md "wikilink")和研究人员已经搬迁到各个不同的大学和研究机构。这使Rosetta项目的不同分支也得到加强。

### RosettaDesign

[TOP7-rosetta_superposition.png](https://zh.wikipedia.org/wiki/File:TOP7-rosetta_superposition.png "fig:TOP7-rosetta_superposition.png") RosettaDesign是基于Rosetta的一个蛋白质设计工具。它始于2000年对蛋白质G的折叠路径的一项研究。\[48\]2002年，RosettaDesign被用来设计TOP7。TOP7是一种93个氨基酸长度的α/β型蛋白质，具有在自然界中尚未被发现的整体折叠结构。这一全新的结构由Rosetta预测，与X射线晶体学确定的结构的之间的[RMSD在](https://zh.wikipedia.org/wiki/RMSD "wikilink")1.2[埃范围内](https://zh.wikipedia.org/wiki/埃格斯特朗_\(单位\) "wikilink")，是一个精度极高的结构预测。\[49\]Rosetta和RosettaDesign最早设计和精确预测出这一长度的新型蛋白质，受到广泛的认可。他们2003年在《[科学](../Page/科学_\(期刊\).md "wikilink")》杂志上发表的相关论文已被270多篇论文引用。\[50\]这项研究的显著成果TOP7被选为[蛋白质数据库](https://zh.wikipedia.org/wiki/蛋白质数据库 "wikilink")2005年10月的“月度分子”（Molecule of the Month）。\[51\]这项预测与其X射线晶体学结构的叠合被包含在Rosetta@home的logo设计中。\[52\]曾在贝克实验室当[博士后](https://zh.wikipedia.org/wiki/博士后 "wikilink")、现任[北卡罗来纳大学教堂山分校](../Page/北卡罗来纳大学教堂山分校.md "wikilink")助理教授的布赖恩·库尔曼\[53\]提供了RosettaDesign的在线服务。\[54\]

### RosettaDock

RosettaDock在2002年CAPRI实验时作为贝克实验室的蛋白质-蛋白质对接预测[算法](../Page/算法.md "wikilink")被添加到Rosetta软件套装中。\[55\]在那次实验中，RosettaDock对化脓性链球菌毒素A和T细胞受体β链的对接做出了高精度预测，对一种猪的[α淀粉酶与相应骆驼抗体的复合体做出了中等精度预测](https://zh.wikipedia.org/wiki/Α-淀粉酶 "wikilink")。尽管RosettaDock方法只在七种可能中给出两种可接受精度的预测，这已经足以让它在那届CAPRI实验中名列19个预测方法中的第7位。\[56\]

RosettaDock的基础工作主要是由杰弗里·格雷在[华盛顿大学期间完成的](https://zh.wikipedia.org/wiki/西雅图华盛顿大学 "wikilink")。后来他搬到[约翰·霍普金斯大学](../Page/约翰·霍普金斯大学.md "wikilink")接受另一个工作职位。因此，RosettaDock在这之后的开发出现了两个分支。这两个分支在侧链建模、诱捕选择等方面存在细微差异。\[57\]\[58\]尽管存在这些差异，贝克和格雷的方法均在第二次CAPRI实验中表现出色，在30个小组中分列第5位和第7位。\[59\]

2006年10月，RosettaDock被整合到Rosetta@home中。这一方法首先仅用蛋白质骨架进行快速、粗略的对接建模，然后进行缓慢的全原子优化。在后一阶段中，两个互相作用的蛋白质之间的相对位置以及蛋白质-蛋白质界面的侧链交互作用同时被优化，从而得到最低能量构造。\[60\]Rosetta@home网络提供的巨大的运算能力，以及骨架灵活性和连接环建模经修订的折叠树表述，使RosettaDock在第三次CAPRI实验中名列63个预测组中的第6位。\[61\]\[62\]

### Robetta

Robetta是一个自动化的蛋白质结构预测服务，由贝克实验室提供，用于非商业性质的*ab initio*和比较建模。\[63\]它自2002年起参加CASP实验，在当届CASP5的自动化服务器预测类别中名列前茅。\[64\]此后，Robetta又参加了CASP6和CASP7，成绩比自动化服务器和人工预测组的平均水平都高。\[65\]\[66\]\[67\]

到CASP6时为止，Robetta构建蛋白质结构模型时采用的方法是，首先用[BLAST](https://zh.wikipedia.org/wiki/BLAST_\(生物资讯学\) "wikilink")、PSI-BLAST和3D-Jury搜索结构同源体，然后通过序列与Pfam数据库中的结构族的匹配，将目标序列解析为单独的[结构域](../Page/结构域.md "wikilink")或者独立的折叠单元。下一步，具有结构同源体的结构域则要遵循一个基于模板的模型（即[同源建模](https://zh.wikipedia.org/wiki/同源建模 "wikilink")）协议。在此处，贝克实验室内部的一个程序K\*sync会生成一组序列同源体，其中的每一项由Rosetta的*de novo*方法建模，产生诱捕（可能的结构）。然后，由低分辨率Rosetta能量函数确定的最低能量模型被选为最终的结构预测方案。对于未检测到结构同源体的结构域，将根据*de novo*协议，选定生成的诱捕中具有最低能量的模型作为最终的结构预测方案。这些结构域预测方案将被连接在一起，用来研究蛋白质内跨结构域、三级结构级别的交互作用。最后，根据一个[蒙特·卡罗构造搜索协议来构建侧链贡献](https://zh.wikipedia.org/wiki/蒙特·卡罗方法 "wikilink")。\[68\]

在CASP8中，由于Rosetta高分辨率全原子优化方法的引入，Robetta的性能得到提高。\[69\]而缺少这一方法被认为是Robetta在CASP7中精度低于Rosetta@home的主要原因。\[70\]

### Foldit

2008年5月9日，贝克实验室接受Rosetta@home用户关于交互式版本的建议，发布了电子游戏[Foldit](../Page/Foldit.md "wikilink")。这是一个基于Rosetta平台的在线蛋白质结构预测游戏。\[71\]截至2009年1月9日，Foldit的注册用户已经接近7.9万名。\[72\]这个游戏赋予使用者一系列的控制功能（如“摇动”、“摆动”、“重建”等），来操纵目标蛋白质的骨架和氨基酸侧链，以获得最佳能量构造。用户能够以单独或者集体的形式来进行游戏，通过改进结构预测方案来获得积分。\[73\]用户还可以通过“决斗”功能来与其他用户进行竞赛，在20个动作内得到最低能量结构的用户获胜。

## 与类似的分布式计算项目的比较

目前有多个[分布式计算](../Page/分布式计算.md "wikilink")项目与Rosetta@home具有类似的研究方向，但研究方法上存在差异。

### Folding@home

[斯坦福大学开发的](https://zh.wikipedia.org/wiki/斯坦福大学 "wikilink")[Folding@home](../Page/Folding@home.md "wikilink")是与蛋白质研究相关的主要分布式计算项目中唯一不使用[BOINC](../Page/BOINC.md "wikilink")平台的。\[74\]Rosetta@home与Folding@home都研究蛋白质错误折叠疾病（如阿兹海默病），但Rosetta@home还进行其他研究，而Folding@home则主要集中于这类研究。\[75\]Folding@home并不采用基于结构或者基于设计的方法来预测[淀粉体行为](https://zh.wikipedia.org/wiki/淀粉体 "wikilink")，而是采用[分子动力学](../Page/分子动力学.md "wikilink")方法来构建蛋白质折叠活动（以及可能的错误折叠和聚合）的模型。\[76\]换言之，Folding@home的优势在于模拟[蛋白质折叠](../Page/蛋白质折叠.md "wikilink")活动，而Rosetta@home的优势则在于蛋白质运算设计以及[蛋白质结构和](../Page/蛋白质结构预测.md "wikilink")[对接的预测](../Page/分子对接.md "wikilink")。这两个项目在计算资源和主机分布上也存在显著差异。Rosetta@home的主机群体基于[PC](../Page/个人电脑.md "wikilink")，平均执行速度为78万亿[FLOPS](https://zh.wikipedia.org/wiki/FLOPS "wikilink")\[77\]；而Folding@home的主机群体包括了[PlayStation 3和](../Page/PlayStation_3.md "wikilink")[图形处理器](https://zh.wikipedia.org/wiki/图形处理器 "wikilink")，平均执行速度达4769万亿[FLOPS](https://zh.wikipedia.org/wiki/FLOPS "wikilink")，大约是Rosetta@home的61倍\[78\]。

### 世界公共网格

[世界公共网格的子项目](https://zh.wikipedia.org/wiki/World_Community_Grid "wikilink")(HPF)1期和2期均使用Rosetta程序来为不同的[基因组添加结构和功能注解](https://zh.wikipedia.org/wiki/基因组 "wikilink")。\[79\]\[80\]人类蛋白质组折叠项目的首席科学家里夏尔·博诺在华盛顿大学贝克实验室攻读博士学位期间积极参与了Rosetta的早期开发，但他现在主要使用Rosetta来为生物学家创建数据库。\[81\]他的个人网站上设置了关于HPF1、HPF2的信息布告板。\[82\]

### Predictor@home

与Rosetta@home相似，蛋白质结构预测也是[Predictor@home的研究重点](https://zh.wikipedia.org/wiki/Predictor@home "wikilink")。Predictor@home还计划在其分布式计算平台上开发蛋白质设计与对接的新研究领域（采用分子动力学的[CHARMM](../Page/CHARMM.md "wikilink")软件包）。\[83\]这将使它与Rosetta@home更加相似。进行结构预测时，Rosetta@home使用的是Rosetta程序，而Predictor@home则使用dTASSER方法。\[84\]

### 其他

BOINC平台上其他的蛋白质相关分布式计算项目包括[QMC@Home](https://zh.wikipedia.org/wiki/QMC@Home "wikilink")、[Docking@Home](../Page/Docking@Home.md "wikilink")、[POEM@home](https://zh.wikipedia.org/wiki/POEM@home "wikilink")、[SIMAP和](https://zh.wikipedia.org/wiki/SIMAP "wikilink")[TANPAKU](https://zh.wikipedia.org/wiki/TANPAKU "wikilink")。RALPH@home是Rosetta@home的alpha版本，用来进行新应用程序、工作单元以及更新被添加到Rosetta@home之前的测试工作。RALPH@home也在BOINC平台上运行。\[85\]

## 志愿者的贡献

[Boincstats_R@H_CpD.gif](https://zh.wikipedia.org/wiki/File:Boincstats_R@H_CpD.gif "fig:Boincstats_R@H_CpD.gif") Rosetta@home的研究依赖于大量志愿者提供的计算资源。截至2014年4月18日，Rosetta@home的活跃用户超过2.69万人，分布在150个国家，总共提供了66000台计算机的空闲资源，使Rosetta@home的平均执行速度达到83万亿[FLOPS](https://zh.wikipedia.org/wiki/FLOPS "wikilink")。\[86\]

用户的贡献通过BOINC积分来度量。一个用户从某一工作单元得到的积分是他在这个工作单元上产生的“诱饵”数量与所有用户在该工作单元获得的积分均值的乘积。\[87\]Rosetta@home对CPU每秒工作所给的积分低于绝大多数其他BOINC项目。\[88\]尽管如此，Rosetta@home仍在所有BOINC项目中名列总积分值第9位。\[89\]

预测的蛋白质结构被提交到CASP实验的用户，也在相关的学术出版物中被致谢。\[90\]而预测出指定工作单元最低能量结构的用户及其所在队伍则会在Rosetta@home的主页上被列为“当日预测者”（Predictor of the Day）。\[91\]每天还有一名随机选出的用户会被列在主页上，成为“当日用户”（User of the Day）。\[92\]

## 参考文献

{{-}}

## 外部链接

  - [Rosetta@home项目官方网站](http://boinc.bakerlab.org/rosetta/)
  - [大卫·贝克的Rosetta@home日志](http://boinc.bakerlab.org/rosetta/forum_thread.php?id=1177&sort=5)
  - [伯克利开放式网络计算平台（BOINC）网站](http://boinc.berkeley.edu/)
  - [BOINC网站上关于Rosetta@home的统计数据](https://web.archive.org/web/20111007222823/http://boincstats.com/stats/project_graph.php?pr=rosetta)
  - [RALPH@home项目网站](http://ralph.bakerlab.org/)
  - [Rosetta Commons网站](http://www.rosettacommons.org/)
  - [Robetta项目](http://robetta.bakerlab.org/)
  - [RosettaDesign项目](http://rosettadesign.med.unc.edu/)
  - [RosettaDock项目](http://rosettadock.graylab.jhu.edu/)
  - [中国分布式计算论坛BOINC平台综合讨论区](http://www.equn.com/forum/forum-11-1.html)
  - [BOINC计算平台使用详解](https://equn.com/wiki/BOINC:%E4%BD%BF%E7%94%A8%E6%95%99%E7%A8%8B)

{{-}}

[Category:伯克利开放式网络计算平台](https://zh.wikipedia.org/wiki/Category:伯克利开放式网络计算平台 "wikilink") [Category:生物信息學](https://zh.wikipedia.org/wiki/Category:生物信息學 "wikilink") [Category:分散式計算計劃](https://zh.wikipedia.org/wiki/Category:分散式計算計劃 "wikilink") [Category:蛋白質結構](https://zh.wikipedia.org/wiki/Category:蛋白質結構 "wikilink") [Category:分子建模](https://zh.wikipedia.org/wiki/Category:分子建模 "wikilink")

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

34.

35.

36.

37.

38.

39.

40.

41.

42.

43.
44.

45.

46.

47.

48.

49.

50.

51.

52.
53.

54.

55.

56.
57.
58.

59.

60.

61.
62.
63.

64.

65.
66.

67.

68.

69.

70.
71.

72.

73.

74.

75.

76.

77.
78.

79.

80.

81.

82.

83.

84.

85.

86.
87.

88.

89.

90.

91.

92.