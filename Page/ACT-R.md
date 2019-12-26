**ACT-R** （发音为/ˌæktˈɑr /，，意为“思想的适应性控制-理性”）是一种[認知架構](../Page/認知架構.md "wikilink")，主要由[卡内基·梅隆大学](../Page/卡内基·梅隆大学.md "wikilink")的[约翰·罗伯特·安德森](../Page/约翰·罗伯特·安德森.md "wikilink")和克里斯蒂安·勒比尔(Christian Lebiere)开发。如同其它認知架構，ACT-R旨在定义基本且不可簡化的认知及知觉操作，進而實現人的心智。理论上，人类所能完成的每项任务，都应該要由这一系列的离散操作所组成。

大多数ACT-R的基本假设也受到[认知神经科学進展的启发](../Page/認知神經科學.md "wikilink")，而ACT-R可以被看作是一種指定大腦如何組織的方式，使得各個處理模塊能夠產生認知。

## 启发

ACT-R的靈感受到[艾伦·纽厄尔](../Page/艾伦·纽厄尔.md "wikilink")的成果启发，尤其是他畢生支持的統一理論，纽厄尔認為這是真正揭示認知基礎的唯一途徑。\[1\]实际上，[约翰·安德森也认为](../Page/约翰·罗伯特·安德森.md "wikilink")[艾伦·纽厄尔](../Page/艾伦·纽厄尔.md "wikilink")是ACT-R理论的主要影響來源。

## ACT-R外觀

与其他有影响力的认知架構相同（包括[Soar](https://zh.wikipedia.org/wiki/Soar_\(認知架構\) "wikilink")、 [CLARION和EPIC](https://zh.wikipedia.org/wiki/CLARION "wikilink")），ACT-R理论也有計算實現，即作为特殊程式語言的直譯器。直譯器本身是用[Common Lisp编写](../Page/Common_Lisp.md "wikilink")，并且可以加载到任何Common Lisp语言发行版中。

这意味着任何研究人员都可以从ACT-R网站下载ACT-R代码，将其加载到Common Lisp发行版中，并以ACT-R直譯器的形式完全存取该理论。

而且，这使研究人员能够以ACT-R语言的脚本形式指定人类认知模型。语言基元及数据类型的設計反映了人类认知理论的假设。而这些假设是根據從[认知心理学和](https://zh.wikipedia.org/wiki/认知心理学 "wikilink")[脑成像实验中所得出的大量事实](../Page/神经成像.md "wikilink")。

如同[编程语言](../Page/编程语言.md "wikilink")，ACT-R是一个框架：对于不同的任务（例如[河内塔](https://zh.wikipedia.org/wiki/河内塔 "wikilink")、用于文本或单词列表的記憶、语言理解、信息交流和飞机控制），研究人员會在ACT-R中创建“模型”（也就是程式）。这些模型反映了建模人员以ACT-R的认知觀點对任务所做的假设。

运行模型会自动循序地模拟人类的行为，该模拟指定每个個別的认知操作（记忆编码及提取、视觉及听觉编码、运动编程及执行、心理意象操纵）。每个步骤都与延迟和准确性的定量预测相关。藉由将模型结果与行為實驗收集的數據進行比较，可以檢驗該模型。

近年来，由於[功能磁共振成像实验](https://zh.wikipedia.org/wiki/功能磁共振成像 "wikilink")，ACT-R也已扩展到对大脑激活模式的定量预测。尤其是將ACT-R加强後，用以预测几个大脑区域的[BOLD響應的形態和时程](https://zh.wikipedia.org/wiki/血氧水平依赖性 "wikilink")，包括[运动皮质](https://zh.wikipedia.org/wiki/运动皮质 "wikilink")、左前側[额叶皮质](../Page/前額葉皮質.md "wikilink")、前[扣带回皮质和](../Page/扣带皮层.md "wikilink")[基底神经节](../Page/基底核.md "wikilink")。

### 简要概述

ACT-R最重要的假设是，人类知识可分为两种不可简化的表徵：[陈述性和](https://zh.wikipedia.org/wiki/外顯記憶 "wikilink")[程序性](https://zh.wikipedia.org/wiki/程序記憶 "wikilink")。

在ACT-R代码中，陳述性知识以「意元(chunks)」的形式表示，也就是各个属性的矢量表徵，而每个属性都可以从标记的插槽存取。

意元是通过「緩衝區」来保持和存取，緩衝區是「模块」的前端，也就是专门的大脑结构,且很大程度上独立的。

模塊有两种类型：

  - 知覺運動模块，负责与現實世界的接口（即模拟真实世界）。 ACT-R中开发最完善的知覺運動模块是视觉模块和人工模块。
  - 記憶模块。ACT-R中有两种记忆模块：
      - 陈述性记忆，由诸如「华盛顿特区是美国首都」、「法国是欧洲国家」或「2 + 3 = 5」等事实组成。
      - 程序性记忆，由產出组成。 產出代表着我们如何做事的知识。例如：如何在键盘上键入字母“Q”、如何驾驶、如何执行加法。

所有模块只能通过其缓冲区來存取。在給定的時刻，緩衝區的內容表示ACT-R在該時刻的狀態。這個规则的唯一例外是程序模块。程序模块負責存储及应用程序性知识，但没有可存取的缓冲区，实际上，這個模塊是用來存取其他模块的内容。

程序性知识以「產出(productions)」的形式表示。 术语“產出”反映了ACT-R作为[產出系统的实现情形](https://zh.wikipedia.org/wiki/生產系統 "wikilink")，但是实际上，產出主要是形式化的表示法，用於指定從皮質區域（即緩衝區）到基底神經節再回到皮質的信息流。

每一時刻，内部模式匹配器都会搜索与缓冲区当前状态匹配的產出。在给定的时刻，只能执行一次產出。该產出在执行时可以修改缓冲区，从而更改系统状态。因此，在ACT-R中，认知會随着一系列的產出而觸發。

### 符號与联结主义的辩论

在[认知科学](../Page/认知科学.md "wikilink")中，通常會将不同的理论歸類為认知的“[符號方法](../Page/認知主義.md "wikilink")”或“[联结主义](../Page/联结主义.md "wikilink")方法”。 ACT-R顯然屬於“符號”領域，在标准教科书和馆藏中也是如此歸類。\[2\] ACT-R的实体（意元和產出）是离散的，且操作在語法上，也就是說，ACT-R並不是指表徵的語義內容，而是代表它們所適合參與計算的屬性。在意元插槽中以及與產出匹配的缓冲区属性中都可以清楚地看到这一点，这两者皆為标准符号变量。

ACT-R團體的成员，包括其开发人员，更喜欢将ACT-R視為一个通用框架，该框架明確說明了大腦是如何組織，以及大腦的組織是如何產生被感知的(以及在認知心理學中被研究的)心智，這框架超越了传统的符號/聯結主义之爭。当然，這些說法都不反對將ACT-R劃分為符號系統，因为所有认知的符号方法都是為了描述心智，作為大腦功能的產物，使用特定的實體和系統來達成這個目標。

一个常见的误解認為「ACT-R可能不是符號系统，因为它试图描述脑功能。」 从两个方面来看，这是不正确的：首先，因為心智就是大腦的功能，所以無論是符號的還是其他類型，所有認知的計算模型都必須在某種程度上描述大腦的功能。其次，所有这些方法，包括聯結主义方法，都是試图在认知層面來描述大脑，而不是在神经層面，因為只有在認知層面上，重要的一般性質才能被保留。 \[3\]

由于某些ACT-R特性的聯結特性，还会产生进一步的误解。例如，「意元」會互相傳播激活，或「意元和產出」的定量屬性與其選擇相關，无论这些属性在单元选择的作用，以及最终在计算中的作用如何，皆未与符号实体的基本性质相悖。

### 理论与实現以及Vanilla ACT-R

ACT-R开发人员通常會强调区分理论本身及其实現的重要性。

实际上，许多实现并没有反映理论。 例如，实际的实现方式會使用到額外的“模塊”，而這些“模塊”純粹是為了計算而存在，不在大脑中反映任何内容（例如，有的模塊包含了用于产生噪声参数的偽亂數生成器，有的拥有命名常式，用于生成可通过变量名存取的数据结构。)

同時，實際實現的目的是使研究人員能夠修改理論，例如通過修改標準參數，創建新的模塊，或部分修改現有模塊的行為。

最终，[卡内基·梅隆大学](../Page/卡内基·梅隆大学.md "wikilink")的安德森实验室维护并发布了官方版本的ACT-R代码，而该理论也有其他替代实现方式。 这些替代的实现方式包括jACT-R \[4\] （[美國海军研究实验室的Anthony](../Page/美國海軍研究實驗室.md "wikilink") M. Harrison用[Java](../Page/Java.md "wikilink")编写）和*Python ACT-R* （由加拿大[卡尔顿大学Terrence](../Page/卡爾頓大學.md "wikilink") C. Stewart和Robert L. West用[Python](../Page/Python.md "wikilink")编写）。 \[5\]

同樣地，ACT-RN(現已停止)是1993年版理論的一個成熟的神經實現。 \[6\] 所有这些版本均具有完整的功能，而這些版本的模型均已完成并运行。

由于具有这些实现上的自由度，因此，當採用其原始形式且未經修改的情况下，ACT-R團體通常将该理论的基于[Lisp的](../Page/LISP.md "wikilink")“官方”版本称为“Vanilla ACT-R”。

## 应用领域

多年来，ACT-R模型已在700多种不同的科学刊物中使用，在文献中則引用更多。

### 记忆力、注意力和执行控制

自从ACT-R陳述性記憶系统建立以来，就被用來模擬人类[記憶](../Page/記憶.md "wikilink")。 多年来，已經成功对大量已知的效應建模。 包括相关信息干扰的粉絲效应\[7\]\[8\]列表記憶的[**首因效应**和](https://zh.wikipedia.org/wiki/系列位置效应 "wikilink")[**近因效应**](https://zh.wikipedia.org/wiki/系列位置效应 "wikilink")， \[9\]和序列回憶。 \[10\]

在許多認知範式中，ACT-R被用來模擬注意力和控制歷程。 这些包括[斯特鲁普效应](../Page/斯特鲁普效应.md "wikilink")、 \[11\]\[12\] [任务切换](https://zh.wikipedia.org/wiki/任务切换（心理学） "wikilink")、 \[13\]\[14\] [心理反應回復期](https://zh.wikipedia.org/wiki/心理不应期 "wikilink")、 \[15\]和多重任務處理。 \[16\]

### 自然语言

研究人员已经使用ACT-R來模擬在自然[语言理解和產出中的多个環節](../Page/語言.md "wikilink")。 包括语法分析模型、 \[17\]语言理解模型、 \[18\]语言习得\[19\]和隐喻理解模型。 \[20\]

### 复杂的任务

ACT-R已被用于理解人类是如何解决河内塔之类的复杂问题， \[21\]或是如何解决代数方程式。 \[22\] 它也已被用来模拟人类駕駛汽車和飛机的行为。 \[23\]

随着知覺运动能力的整合，ACT-R作為人機交互的建模工具越來越受歡迎。 在此领域中，已采用它来模擬不同条件下的驾驶行为、 \[24\]\[25\]計算機應用中的菜單選擇和可視化搜索\[26\]\[27\]以及網站導航。 \[28\]

### 认知神经科学

最近，ACT-R已被用于预测成像實驗中大腦的激活模式。 \[29\] 在该领域，ACT-R模型已成功用于预测记忆提取中的前额叶和顶叶活动，\[30\]控制操作的前扣带回活动，\[31\]以及與實踐相關的大腦活動變化。 \[32\]

### 教育

ACT-R通常被用作[认知引导的基础](https://zh.wikipedia.org/wiki/认知导师 "wikilink")。 \[33\]\[34\] 这些系统使用内部的ACT-R模型来模仿学生行为，并使说明和课程變得个性化，以及试图“猜测”学生可能遇到的困难并提供重点協助。

這種“認知導師”被用作匹茲堡學習科學中心的學習研究和認知建模的平臺。如「數學認知導師」這樣的成功應用，正在美國的數千所學校中使用。

## 历史简介

### 早期：1973–1990年

由[约翰·罗伯特·安德森](../Page/约翰·罗伯特·安德森.md "wikilink")开发，這一系列愈益精確的人类认知模型中，ACT-R是當中的最终繼承者。

它的根源可以追溯到最初的HAM（人类联想记忆）记忆模型，由约翰·安德森（John R. Anderson）和[戈登·鲍尔](../Page/戈登·霍华德·鲍尔.md "wikilink") （ [Gordon Bower）在](../Page/戈登·霍华德·鲍尔.md "wikilink")1973年描述。 \[35\] HAM模型后来被扩充为ACT理论的初代版本。 \[36\] 这是首次将程序性記憶添加到原本的陳述性記憶系统中，引入了一种后来被证明可以在人脑中使用的计算机的二分法。 \[37\] 然后，该理论进一步扩展到人类认知的ACT \*模型中。 \[38\]

### 与理性分析整合：1990–1998年

八十年代后期，安德森致力于探索和概述一种認知的数学方法，他將其命名为[理性分析](https://zh.wikipedia.org/wiki/理性分析 "wikilink")。 \[39\] 理性分析的基本假设是认知具有最佳适应性，且认知功能的精确估计反映了环境的统计特性。 \[40\] 后来，他回到了ACT理论的发展阶段，将理性分析作为基础计算的统一框架。 为了强调新方法在架构设计中的重要性，将其名称更改为ACT-R，“ R”代表“ Rational” \[41\]

1993年， [安德森遇到了](../Page/约翰·罗伯特·安德森.md "wikilink")[聯結主义](../Page/联结主义.md "wikilink")[模型研究人员克里斯蒂安](../Page/联结主义.md "wikilink")·勒比耶尔（Christian Lebiere），该[模型因与](../Page/联结主义.md "wikilink")[斯科特·法尔曼](https://zh.wikipedia.org/wiki/斯科特·法爾曼 "wikilink")（ Scott Fahlman）合作开发出[串級關連式学习算法而闻名](https://zh.wikipedia.org/wiki/级联相关算法 "wikilink")。 在他们共同努力之下，最终发布了ACT-R 4.0。 \[42\] 因為Mike Byrne的貢獻，4.0版还包括可供選擇的知覺和运动功能，這主要是受到EPIC架構的启发，极大地扩展了该理论的可能应用。

### 脑成像和模块化结构：1998-2015年

ACT-R 4.0发布后，[约翰·安德森對他這個終生理論的潛在神經合理性越來越感興趣](../Page/约翰·罗伯特·安德森.md "wikilink")，并开始使用大脑成像技术來追求自身的目标，也就是理解人类思維的计算基础。

解釋大脑定位的必要性推动了对该理论的重大修改。 ACT-R 5.0引入了模块的概念，專門化了多組可以映射到已知大脑系统的程序性及陳述性表徵。 \[43\] 此外，程序性知识和陳述性知识之间的交互作用是由新引入的缓冲区（用于保存临时活动信息的特殊结构）來調節（请参见上文）。人们认为缓冲區能反映皮质的激活，隨後的一系列研究证实，皮质区域的激活可能与缓冲區的计算操作有关。

完全重写的新版本代码于2005年发布,名为ACT-R 6.0。 它还包括对ACT-R程式语言的重大改进。 这包括ACT-R產出规范中的一种称为动态模式匹配的新机制。 從前的版本要求對於缓冲区中的信息，與产出匹配的模式要包含特定插槽。與之不同，新版本的动态模式匹配則允许缓冲区内容來指定匹配的插槽。安德森在2007年的論文中，给出了ACT-R 6.0的描述和动机。 \[44\]

### ACT-R 7.0：2015年至今

在2015年的研讨会上，有人認為，這次软件改版需要将模型编号增加到ACT-R 7.0。其中一個主要的软件變更是取消了「必须根據预定义意元类型來指定意元」的要求。 意元类型机制并未移除，而是从架構的必要构造，变更为软件中的彈性语法机制。 这为需要学习新信息的建模任务提供了更大的知识表徵灵活性，並擴展了通過動態模式匹配(現在允許模型創建新的意元“類型”)提供的功能性。 由于所有动作现在都具有相同的句法形式，因此这也简化了在產出中指定动作所需的语法。 ACT-R软件也随后进行了更新，以包括基于JSON RPC 1.0的远程接口。 添加了该接口，可以更轻松地从Lisp以外的语言构建模型任务和使用ACT-R，且软件随附的教程已更新，可以为所有教程模型所执行的範例任务提供Python的实现。

### 分拆

ACT-R理论的长期发展催生了相當數目的并行相关项目。

最重要的是PUPS產出系统，它是安德森理论的最初实现，后来被放弃了。另外還有ACT-RN， \[45\]是由Christian Lebiere所开发的神经网络实现。

[卡内基·梅隆大学](../Page/卡内基·梅隆大学.md "wikilink")的[林恩·雷德也在](https://zh.wikipedia.org/wiki/琳恩·M·雷德 "wikilink")90年代初开发了激活混淆源模型（SAC)，这是一种記憶在概念和知覺方面的模型，儘管在某些假設上有所不同，它與ACT-R的核心陳述性系統有著許多共同之处。

## 注释

## 参考文獻

  - Anderson, J. R. (2007). *How can the human mind occur in the physical universe?* New York, NY: Oxford University Press. [ISBN](https://zh.wikipedia.org/wiki/:en:International_Standard_Book_Number "wikilink") [0-19-532425-0](https://zh.wikipedia.org/wiki/:en:Special:BookSources/0-19-532425-0 "wikilink").
  - Anderson, J. R., Bothell, D., Byrne, M. D., Douglass, S., Lebiere, C., & Qin, Y . (2004). An integrated theory of the mind. *Psychological Review*, 1036–1060.

## 外部链接

  - [ACT-R官方网站](http://act-r.psy.cmu.edu/)  包含大量在线资料，包括源代码，出版物列表和教程
  - [JACT-R](http://jactr.org/)  Java重写ACT-R
  - [ACT-R：Java仿真和开发环境](https://web.archive.org/web/20110719184035/http://cog.cs.drexel.edu/act-r/)  ACT-R的另一个开源Java重新实现
  - [PythonACT-R](http://sites.google.com/site/pythonactr/)  ACT-R的Python实现
  - [pyactr](https://github.com/jakdot/pyactr/)  ACT-R的另一个Python实现

[Category:認知架構](https://zh.wikipedia.org/wiki/Category:認知架構 "wikilink")

1.
2.
3.  Pylyshyn, Z. W. (1984). *Computation and Cognition: Toward a Foundation for Cognitive Science*. Cambridge, Massachusetts: MIT Press. .
4.  Harrison, A. (2002). jACT-R: Java ACT-R. *Proceedings of the 8th Annual ACT-R Workshop* [PDF](http://act-r.psy.cmu.edu/workshops/workshop-2002/talks/AnthonyHarrison.pdf)
5.  Stewart, T. C. and West, R. L. (2006) Deconstructing ACT-R. *Proceedings of the seventh international conference on cognitive modeling* [PDF](https://pdfs.semanticscholar.org/1357/6cb9ffe422e11e6042ba76f3dcefd081baf8.pdf)
6.  Lebiere, C., & Anderson, J. R. (1993). A connectionist Implementation of the ACT-R production system. In *Proceedings of the Fifteenth Annual Conference of the Cognitive Science Society* (pp. 635–640). Mahwah, NJ: Lawrence Erlbaum Associates
7.  Sohn, M.-H., & Anderson, J. R. (2001). Task preparation and task repetition: Two-component model of task switching. *Journal of Experimental Psychology: General*.
8.  Anderson, J. R. & Reder, L. M. (1999). The fan effect: New results and new theories. *Journal of Experimental Psychology: General*, *128*, 186–197.
9.  Anderson, J. R., Bothell, D., Lebiere, C. & Matessa, M. (1998). An integrated theory of list memory. *Journal of Memory and Language*, *38*, 341–380.
10. Anderson, J. R. & Matessa, M. P. (1997). A production system theory of serial memory. *Psychological Review, 104*, 728–748.
11. Lovett, M. C. (2005) A strategy-based interpretation of Stroop. *Cognitive Science, 29*, 493–524.
12. Juvina, I., & Taatgen, N. A. (2009). A repetition-suppression account of between-trial effects in a modified Stroop paradigm. *Acta Psychologica, 131(1)*, 72–84.
13. Altmann, E. M., & Gray, W. D. (2008). An integrated model of cognitive control in task switching. *Psychological Review, 115*, 602–639.
14. Sohn, M.-H., & Anderson, J. R. (2001). Task preparation and task repetition: Two-component model of task switching. *Journal of Experimental Psychology: General*.
15. Byrne, M. D., & Anderson, J. R. (2001). Serial modules in parallel: The psychological refractory period and perfect time-sharing. *Psychological Review, 108*, 847–869.
16. Salvucci, D. D., & Taatgen, N. A. (2008). Threaded cognition: An integrated theory of concurrent multitasking. *Psychological Review', 130(1)', 101–130.*
17. Lewis, R. L. & Vasishth, S. (2005). An activation-based model of sentence processing as skilled memory retrieval. *Cognitive Science, 29*, 375–419
18. Budiu, R. & Anderson, J. R. (2004). Interpretation-Based Processing: A Unified Theory of Semantic Sentence Processing. *Cognitive Science, 28*, 1–44.
19. Taatgen, N.A. & Anderson, J.R. (2002). Why do children learn to say "broke"? A model of learning the past tense without feedback. *Cognition*, *86(2)*, 123–155.
20. Budiu R., & Anderson J. R. (2002). Comprehending anaphoric metaphors. *Memory & Cognition, 30*, 158–165.
21. Altmann, E. M. & Trafton, J. G. (2002). Memory for goals: An activation-based model. *Cognitive Science*, *26*, 39–83.
22. Anderson, J. R. (2005) Human symbol manipulation within an integrated cognitive architecture. *Cognitive Science, 29(3)*, 313–341.
23. Byrne, M. D., & Kirlik, A. (2005). Using computational cognitive modeling to diagnose possible sources of aviation error. *International Journal of Aviation Psychology, 15*, 135–155.
24. Salvucci, D. D. (2006). Modeling driver behavior in a cognitive architecture. *Human Factors*, *48*, 362–380.
25. Salvucci, D. D., & Macuga, K. L. (2001). Predicting the effects of cellular-phone dialing on driver performance. In *Proceedings of the Fourth International Conference on Cognitive Modeling*, pp. 25–32. Mahwah, NJ: Lawrence Erlbaum Associates.
26. Byrne, M. D., (2001). ACT-R/PM and menu selection: Applying a cognitive architecture to HCI. *International Journal of Human-Computer Studies*, *55*, 41–84.
27. Fleetwood, M. D. & Byrne, M. D. (2002) Modeling icon search in ACT-R/PM. *Cognitive Systems Research*, *3*, 25–33.
28.
29. Anderson, J.R., Fincham, J. M., Qin, Y., & Stocco, A. (2008). A central circuit of the mind. *Trends in Cognitive Sciences*, *12(4)*, 136–143
30. Sohn, M.-H., Goode, A., Stenger, V. A, Carter, C. S., & Anderson, J. R. (2003). Competition and representation during memory retrieval: Roles of the prefrontal cortex and the posterior parietal cortex, *Proceedings of National Academy of Sciences, 100*, 7412–7417.
31. Sohn, M.-H., Albert, M. V., Stenger, V. A, Jung, K.-J., Carter, C. S., & Anderson, J. R. (2007). Anticipation of conflict monitoring in the anterior cingulate cortex and the prefrontal cortex. *Proceedings of National Academy of Science, 104*, 10330–10334.
32. Qin, Y., Sohn, M-H, Anderson, J. R., Stenger, V. A., Fissell, K., Goode, A. Carter, C. S. (2003). Predicting the practice effects on the blood oxygenation level-dependent (BOLD) function of fMRI in a symbolic manipulation task. *Proceedings of the National Academy of Sciences of the United States of America. 100(8)*: 4951–4956.
33. Lewis, M. W., Milson, R., & Anderson, J. R. (1987). The teacher's apprentice: Designing an intelligent authoring system for high school mathematics. In G. P. Kearsley (Ed.), *Artificial Intelligence and Instruction*. Reading, MA: Addison-Wesley. .
34. Anderson, J. R. & Gluck, K. (2001). What role do cognitive architectures play in intelligent tutoring systems? In D. Klahr & S. M. Carver (Eds.) *Cognition & Instruction: Twenty-five years of progress*, 227–262. Lawrence Erlbaum Associates. .
35. Anderson, J. R., & Bower, G. H. (1973). *Human associative memory*. Washington, DC: Winston and Sons.
36. Anderson, J. R. (1976) *Language, memory, and thought*. Mahwah, NJ: Lawrence Erlbaum Associates. .
37. Cohen, N. J., & Squire, L. R. (1980). Preserved learning and retention of pattern-analyzing skill in amnesia: dissociation of knowing how and knowing that. *Science*, *210(4466)*, 207–210
38. Anderson, J. R. (1983). *The architecture of cognition*. Cambridge, Massachusetts: Harvard University Press. .
39. Anderson, J. R. (1990) *The adaptive character of thought*. Mahwah, NJ: Lawrence Erlbaum Associates. .
40. Anderson, J. R., & Schooler, L. J. (1991). Reflections of the environment in memory. *Psychological Science*, *2*, 396–408.
41. Anderson, J. R. (1993). *Rules of the mind*. Hillsdale, NJ: Lawrence Erlbaum Associates. .
42. Anderson, J. R., & Lebiere, C. (1998). *The atomic components of thought*. Hillsdale, NJ: Lawrence Erlbaum Associates. .
43. Anderson, J. R., et al. (2004) An integrated theory of the mind. *Psychological Review*, *111(4)*. 1036–1060
44. Anderson, J. R. (2007). *How can the human mind occur in the physical universe?* New York, NY: Oxford University Press. .
45. Lebiere, C., & Anderson, J. R. (1993). A connectionist Implementation of the ACT-R production system. In *Proceedings of the Fifteenth Annual Conference of the Cognitive Science Society* (pp. 635–640). Mahwah, NJ: Lawrence Erlbaum Associates