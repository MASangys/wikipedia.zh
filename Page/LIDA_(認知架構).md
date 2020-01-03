> 本文内容由[LIDA \(認知架構\)](https://zh.wikipedia.org/wiki/LIDA_\(認知架構\))转换而来。


**LIDA** （ **学习型智能分配代理** ） [認知架構](../Page/認知架構.md "wikilink")是一个整合人工[认知系统](../Page/人工智能.md "wikilink") ，试图從低層次的知覺動作到高層次的推理，对生物系统中「廣效的[认知](https://zh.wikipedia.org/wiki/認知 "wikilink")」進行建模。 LIDA架构以[认知科学](../Page/认知科学.md "wikilink")和[认知神经科学為經驗基礎](../Page/認知神經科學.md "wikilink")，主要由孟菲斯大学的斯坦·富蘭克林(Stan Franklin)與其同事所开发。除了提供假設來指導進一步的研究之外，該架構也支持[软件代理與机器人的控制结构](https://zh.wikipedia.org/wiki/軟體代理 "wikilink")。 LIDA概念模型为许多认知过程提供了合理的解释，同時也作为思考心智如何運作的工具。

LIDA架構及其對應的概念模型有兩個假設：

(1)人類的許多認知功能藉著「認知循環」，即在意識內容、各种記憶系統和[動作選擇之間頻繁迭代](https://zh.wikipedia.org/wiki/行動選擇 "wikilink")(\~ 10hz)的交互作用所實現。

(2)這些認知循環就像認知的“原子”，構成了更高層次的認知歷程。

## 綜述

LIDA既不是[符號方法](../Page/人工智能.md "wikilink")，也不是严格的[联結主义](../Page/联结主义.md "wikilink")，而是一种混合架構，采用了多种计算机制，而这些计算机制是根据其心理合理性而选择的。LIDA認知循環是由採用這些机制的模塊和歷程所組成。

### 计算机制

LIDA架構采用了數個從“ New AI”中提取計算机制並進行設計的模块，这些模块包括各种[Copycat架構](https://zh.wikipedia.org/wiki/模仿者（软件） "wikilink") 、\[1\]\[2\] [稀疏分布式内存](../Page/稀疏分布式存储器.md "wikilink")、\[3\]\[4\]基模机制、\[5\]\[6\] 行為網路， \[7\]\[8\]和[包容式架构](https://zh.wikipedia.org/wiki/包容體系結構 "wikilink") 。 \[9\]

### 心理学和神经生物学基础

作为一种綜合性的概念计算认知架构，LIDA架构打算为人类大部分的認知功能建模。 \[10\]\[11\]LIDA架構由各式各樣的認知模組和歷程所组成，試圖實現和具體化一些心理學和神經心理學理論，包括[全球工作空间理论](https://zh.wikipedia.org/wiki/全局工作空间理论 "wikilink") 、\[12\] [情境認知](https://zh.wikipedia.org/wiki/情境認知 "wikilink") 、\[13\]知覺符號系統、\[14\] [工作记忆](https://zh.wikipedia.org/wiki/工作记忆 "wikilink")、\[15\]按[能供性的记忆](../Page/承擔特質.md "wikilink")、\[16\]\[17\]长期工作记忆\[18\]和H-CogAff架構。 \[19\]

## LIDA的認知循環

LIDA认知循環可分为三个阶段：「理解阶段」、「注意（意识）阶段」以及「动作选择和学习阶段」。首先是從「理解阶段」開始，輸入的刺激會激活感觉记忆中的低级特征检测器，輸出則涉及到知覺聯想記憶，使得更加抽象的實體被輸入到其高級特征檢測器，如目標、類別、動作、事件等。由此產生的知覺會被移至工作空間，並在那里插入暫態的情節記憶和陳述性記憶以產生局部關聯，而這些局部關聯會與知覺相結合，生成當前的情境模型，這也就是代理對當前所發生事情的理解。「注意阶段」始于当前情境模型中最显着部分之結合，這樣的結合會去競爭一個當前意識內容中的地方「注意力」。接著，這些有意識的內容會被全域廣播，並進入「學習和動作選擇階段」。當有意識的廣播到達各种形式的記憶(知覺、情節和程序)時，新實體、新關聯以及對舊實體、關聯的強化就會出現。在進行這些學習以及使用意識內容的同時，合适的動作基模會從程序記憶中被實例化，并發送到動作選擇中，並在那里競相追求成為這個認知循環所選擇的行為。而所選定的行為會觸發感覺-運動記憶，以產生適合其執行的算法，從而完成認知循環。

## 历史

Virtual Mattie（V-Mattie）是一个[软件代理](https://zh.wikipedia.org/wiki/軟體代理 "wikilink")\[20\] ，可以从從研討會組織者那里收集信息，撰写下週研討會的公告，并且每週定期将其邮寄到持續更新的列表中，而无需人工监督。 \[21\] V-Mattie使用了多項前述的计算机制。

[巴爾斯](https://zh.wikipedia.org/wiki/伯纳德·巴尔（Bernard_Baars） "wikilink") (Baars)的[全球工作空间理论](https://zh.wikipedia.org/wiki/全局工作空间理论 "wikilink") （GWT）激发了V-Mattie，使其轉換成Conscious Mattie，Conscious Mattie是具有相同领域和任务的软件代理，其架构包括GWT意识机制。 Conscious Mattie是第一个在功能上（尽管不是很明显）具有意识的软件代理。Conscious Mattie促成了IDA。

IDA（智能分配代理）由[美国海军](../Page/美國海軍.md "wikilink") \[22\]\[23\]\[24\]所開發，用于完成被稱為「人事调配军官」的人力資源任务。在每个水手的任务结束时，将會被分配到一个新的营舍。此分配过程称为分发。海軍僱傭了近300名全職的人事调配军官來執行這些新任務。 IDA的任务是通过對人事调配军官的角色的自动化来促进此过程。 IDA经过前人事调配军官的测试，并被海军接受。各种海軍机构為IDA項目提供了大約150万美元的資助。

LIDA（學習型IDA）架構最初是通过添加几种学习风格和模式\[25\]\[26\]\[27\]从IDA衍生而来的，但此后已发展成为一个更大、更通用的软件框架。 \[28\]\[29\]

## 脚注

## 外部链接

  - LIDA architecture [Cognitive Computing Research Group](http://ccrg.cs.memphis.edu/), Memphis University
  - database of [possible neural correlates](http://ccrg.cs.memphis.edu/tutorial/correlates.html) of LIDA modules and processes
  - How Minds Work" [tutorial](http://ccrg.cs.memphis.edu/tutorial/tutorial.html)
  - mention of LIDA in [Bot shows signs of consciousness](https://www.newscientist.com/article/mg21028063.400-bot-shows-signs-of-consciousness.html?full=true) by Celeste Biever, New Scientist 1 April 2011

[Category:人工智能](https://zh.wikipedia.org/wiki/Category:人工智能 "wikilink")

1.  Hofstadter, D. (1995). Fluid Concepts and Creative Analogies: Computer Models of the Fundamental Mechanisms of Thought. New York: Basic Books.
2.  Marshall, J. (2002). [Metacat: A self-watching cognitive architecture for analogy-making](http://science.slc.edu/~jmarshall/metacat/dissertation.pdf). In W. D. Gray & C. D. Schunn (eds.), Proceedings of the 24th Annual Conference of the Cognitive Science Society, pp. 631-636. Mahwah, NJ: Lawrence Erlbaum Associates
3.  Kanerva, P. (1988). [Sparse Distributed Memory](https://www.cs.hmc.edu/~jpadgett/nnfinal/NNPrsntnJP1.pdf). Cambridge MA: The MIT Press
4.  Rao, R. P. N., & Fuentes, O. (1998). [Hierarchical Learning of Navigational Behaviors in an Autonomous Robot using a Predictive Sparse Distributed Memory](http://www.cs.utep.edu/ofuentes/raoML98.pdf). Machine Learning, 31, 87-113
5.  Drescher, G.L. (1991). [Made-up minds: A Constructivist Approach to Artificial Intelligence](https://books.google.com/books?id=jYsEzeKHLNUC&printsec=frontcover#v=onepage&q&f=false)
6.  Chaput, H. H., Kuipers, B., & Miikkulainen, R. (2003). [Constructivist Learning: A Neural Implementation of the Schema Mechanism](http://www.cs.utexas.edu/users/ai-lab/pubs/chaput.wsom03.pdf). Paper presented at the Proceedings of WSOM '03: Workshop for Self-Organizing Maps, Kitakyushu, Japan
7.  Maes, P. 1989. How to do the right thing. Connection Science 1:291-323
8.  Tyrrell, T. (1994). [An Evaluation of Maes's Bottom-Up Mechanism for Behavior Selection](http://journals.sagepub.com/doi/abs/10.1177/105971239400200401). Adaptive Behavior, 2, 307-348
9.  Brooks, R.A. Intelligence without Representation. Artificial intelligence, 1991. Elsevier
10. Franklin, S., & Patterson, F. G. J. (2006). [The LIDA Architecture: Adding New Modes of Learning to an Intelligent, Autonomous, Software Agent](https://www.researchgate.net/profile/Stan_Franklin/publication/210304626_The_LIDA_architecture_Adding_new_modes_of_learning_to_an_intelligent_autonomous_software_agent/links/00463521d049be955e000000/The-LIDA-architecture-Adding-new-modes-of-learning-to-an-intelligent-autonomous-software-agent.pdf) IDPT-2006 Proceedings (Integrated Design and Process Technology): Society for Design and Process Science
11. Franklin, S., Ramamurthy, U., D'Mello, S., McCauley, L., Negatu, A., Silva R., & Datla, V. (2007). [LIDA: A computational model of global workspace theory and developmental learning](http://ccrg.cs.memphis.edu/assets/papers/LIDA%20paper%20Fall%20AI%20Symposium%20Final.pdf). In AAAI Fall Symposium on AI and Consciousness: Theoretical Foundations and Current Approaches. Arlington, VA: AAAI
12. Baars, B. J. (1988). A cognitive theory of consciousness. Cambridge: Cambridge University Press
13. Varela, F. J., Thompson, E., & Rosch, E. (1991). The Embodied Mind. Cambridge, Massachusetts: MIT Press
14. Barsalou, L. W. 1999. Perceptual symbol systems. Behavioral and Brain Sciences 22:577–609. MA: The MIT Press
15. Baddeley, A. D., & Hitch, G. J. (1974). Working memory. In G. A. Bower (Ed.), The Psychology of Learning and Motivation (pp. 47–89). New York: Academic Press
16. Ericsson, K. A., and W. Kintsch. 1995. Long-term working memory. Psychological Review 102:21–245
17. Glenberg, A. M. 1997. What memory is for. Behavioral and Brain Sciences 20:1–19
18. Ericsson, K. A., and W. Kintsch. 1995. Long-term working memory. Psychological Review 102:21–245
19. Sloman, A. 1999. [What Sort of Architecture is Required for a Human-like Agent?](http://cogprints.org/700/2/Sloman.what.arch.ps) In Foundations of Rational Agency, ed. M. Wooldridge, and A. Rao. Dordrecht, Netherlands: Kluwer Academic Publishers
20. Franklin, S., & Graesser, A., 1997. [Is it an Agent, or just a Program?: A Taxonomy for Autonomous Agents](https://pdfs.semanticscholar.org/288d/7952b6648749fcbdcedabedf8f43cf7fda52.pdf). Proceedings of the Third International Workshop on Agent Theories, Architectures, and Languages, published as Intelligent Agents III, Springer-Verlag, 1997, 21-35
21. Franklin, S., Graesser, A., Olde, B., Song, H., & Negatu, A. (1996, Nov). Virtual Mattie—an Intelligent Clerical Agent. Paper presented at the Symposium on Embodied Cognition and Action: AAAI, Cambridge, Massachusetts.
22. Franklin, S., Kelemen, A., & McCauley, L. (1998). [IDA: A Cognitive Agent Architecture](https://www.researchgate.net/profile/Stan_Franklin/publication/2906150_IDA_A_Cognitive_Agent_Architecture/links/09e4150be4b5624009000000.pdf) IEEE Conf on Systems, Man and Cybernetics (pp. 2646–2651 ): IEEE Press
23. Franklin, S. (2003). [IDA: A Conscious Artifact?](https://www.researchgate.net/profile/Stan_Franklin/publication/233597270_IDA_A_conscious_artifact/links/0f317530ba440aabe1000000/IDA-A-conscious-artifact) Journal of Consciousness Studies, 10, 47–66
24. Franklin, S., & McCauley, L. (2003). Interacting with IDA. In H. Hexmoor, C. Castelfranchi & R. Falcone (Eds.), Agent Autonomy (pp. 159–186 ). Dordrecht: Kluwer
25. D'Mello, Sidney K., Ramamurthy, U., Negatu, A., & Franklin, S. (2006). [A Procedural Learning Mechanism for Novel Skill Acquisition](http://ccrg.cs.memphis.edu/assets/papers/dmello_aisb_wmd_06.pdf). In T. Kovacs & James A. R. Marshall (Eds.), Proceeding of Adaptation in Artificial and Biological Systems, AISB'06 (Vol. 1, pp. 184–185). Bristol, England: Society for the Study of Artificial Intelligence and the Simulation of Behaviour
26. Franklin, S. (2005, March 21–23, 2005). [Perceptual Memory and Learning: Recognizing, Categorizing, and Relating](https://cs.brynmawr.edu/DevRob05/schedule/papers/franklin.pdf). Paper presented at the Symposium on Developmental Robotics: American Association for Artificial Intelligence (AAAI), Stanford University, Palo Alto CA, USA
27. Franklin, S., & Patterson, F. G. J. (2006). [The LIDA Architecture: Adding New Modes of Learning to an Intelligent, Autonomous, Software Agent](https://www.researchgate.net/profile/Stan_Franklin/publication/210304626_The_LIDA_architecture_Adding_new_modes_of_learning_to_an_intelligent_autonomous_software_agent/links/00463521d049be955e000000/The-LIDA-architecture-Adding-new-modes-of-learning-to-an-intelligent-autonomous-software-agent.pdf) IDPT-2006 Proceedings (Integrated Design and Process Technology): Society for Design and Process Science
28. Franklin, S., & McCauley, L. (2004). [Feelings and Emotions as Motivators and Learning Facilitators](http://www.aaai.org/Papers/Symposia/Spring/2004/SS-04-02/SS04-02-009.pdf) Architectures for Modeling Emotion: Cross-Disciplinary Foundations, AAAI 2004 Spring Symposium Series (Vol. Technical Report SS-04-02 pp. 48–51). Stanford University, Palo Alto, California, USA: American Association for Artificial Intelligence
29. Negatu, A., D'Mello, Sidney K., & Franklin, S. (2007). [Cognitively Inspired Anticipation and Anticipatory Learning Mechanisms for Autonomous Agents](http://ccrg.cs.memphis.edu/assets/papers/NegatuABiALS2006.pdf). In M. V. Butz, O. Sigaud, G. Pezzulo & G. O. Baldassarre (Eds.), Proceedings of the Third Workshop on Anticipatory Behavior in Adaptive Learning Systems (ABiALS 2006) (pp. 108-127). Rome, Italy: Springer Verlag