**Cyc**是一个致力于将各个领域的本体及常识知识综合地集成在一起，并在此基础上实现知识推理的[人工智能](../Page/人工智能.md "wikilink")项目。其目标是使人工智能的应用能够以类似人类推理的方式工作。这个项目是由[道格拉斯·萊納特在](https://zh.wikipedia.org/wiki/道格拉斯·萊納特 "wikilink")1984年设立的，由[Cycorp](http://www.cyc.com/)公司开发并维护。

该项目的一部分以**OpenCyc**形式发布，OpenCyc项目以开源许可的形式向开发者和使用者提供API，可下载的数据集（特别是为语义万维网实践者提供了OWL版本的数据集）等。

## 概述

Cyc项目始于1984年，由当时的微电子与计算机技术公司开发。该项目最开始的目标是将上百万条知识编码成机器可用的形式，用以表示人类常识。CycL是Cyc项目专有的知识表示语言，这种知识表示语言是基于一阶关系的\[1\]。 1986年[Douglas Lenat](https://web.archive.org/web/20101116081051/http://cyc.com/cyc/company/lenat)预测如果想要完成Cyc这样庞大的常识知识系统，这将涉及25万条规则，并将要花费350个人年才能完成\[2\]。1994年，Cyc项目从该公司独立出去，并以此为基础成立了[Cycorp](http://www.cyc.com/)公司。

"Cyc"名字的来源是"encyclopedia"，发音很像*syke*，是美国德克萨斯州奥斯丁的[Cycorp](http://www.cyc.com/)公司的有效注册商标，Cycorp是一家由[Douglas Lenat](https://web.archive.org/web/20101116081051/http://cyc.com/cyc/company/lenat)领导的致力于实现人工智能的公司。虽然Cyc知识库本身为Cycorp公司所有，但是该公司在开源Apache许可证的保证下提供了一个用于自动推理的公共词汇集，即[OpenCyc](https://zh.wikipedia.org/wiki/OpenCyc "wikilink")。最近，Cyc还在一个以研究为目的的许可证保证下向人工智能研究者开放，并以[ResearchCyc命名](https://zh.wikipedia.org/wiki/ResearchCyc "wikilink")。

Cyc知识库中表示的知识一般形如“每棵树都是植物”、“植物最终都会死亡”。当提出“树是否会死亡”的问题时，推理引擎可以得到正确的结论，并回答该问题。该知识库中包含了320万条人类定义的断言，涉及30万个概念，15000个谓词。这些资源都采取[CycL语言来进行描述](https://zh.wikipedia.org/wiki/CycL "wikilink")，该语言采取谓词代数描述，语法上与Lisp程序设计语言类似。

目前Cyc项目大部分的工作仍然是以知识工程为基础的。大部分的事实是通过手工添加到知识库中，并在这些知识基础上进行高效推理的。最近Cycorp正致力于使Cyc系统能够和最终用户用自然语言进行交流，并通过机器学习来辅助形成知识的工作。

Cyc公司与很多公司具有相同的梦想，即采用[Cyc自然语言理解工具](https://web.archive.org/web/20101031212903/http://cyc.com/cyc/cycrandd/areasofrandd_dir/cycrandd/nlu)解析整个互联网并从中抽取结构化数据\[3\]。

2008年，研究人员将Cyc资源被映射到许多[维基百科](../Page/维基百科.md "wikilink")的文章上\[4\]，这使得Cyc与类似于[DBpedia](https://web.archive.org/web/20101120180531/http://dbpedia.org/About)、[Freebase](http://www.freebase.com/)这样的数据集进行连接变得更为容易。

## 知识库

Cyc中的概念被称为“常量（constants）”。常量以"\#$"开头并区分大小写。常量主要分为以下几类：

  - 个体，即*individuals*：例如\#$BillClinton又如\#$France。
  - 集合，即*Collections*：例如\#$Tree-ThePlant（包含所有的树），又如\#$EquivalenceRelation（包含所有的等价关系）。集合中的个体被称为该集合的实例（*instance*）。
  - 真值函数，即*Truth Functions*：该函数可被应用于一个或多个概念，并返回“真”或“假”。例如\#$siblings表示兄弟姐妹关系，若两个参数对应的内容为兄弟姐妹关系，则该概念返回真值。约定真值函数以小写字母开头，并且可以被拆分为若干个逻辑连接词（例如\#$and、\#$or、\#$not、\#$implies）、量词（\#$forAll, \#$thereExists等等）以及谓词。
  - 函数，即*Functions*：用于以现有术语为基础产生新的术语。例如\#$FruitFn具有以下作用：若接收到用于描述一种（或一个集合）植物的声明，则会返回其果实。约定函数常量以大写字母开头，并以“Fn”作为结尾。

Cyc中的谓词最重要的是\#$isa以及\#$genls。\#$isa表示某个对象是某个集合的个体（instance），\#$genls表示某个集合是另外一个集合的子集合。由概念构成的事实采用CycL语言描述的“句子”表示。谓词则写在与其相关的对象之前，并以括号括起来： （\#$isa \#$BillClinton \#$UnitedStatesPresident） 表示“Bill Clinton属于美国总统集合”； （\#$genls \#$Tree-ThePlant \#$Plant） 表示“所有的树都是植物”； （\#$capitalCity \#$France \#$Paris） 表示“巴黎是法国的首都”。

句子中可以包含变量，变量字符串以"?"开头，这些句子被称为“规则”。与\#$isa谓词有关的一条规则如下所示：

（\#$implies

`  (#$and   `
`    (#$isa ?OBJ ?SUBSET）`

（\#$genls ?SUBSET ?SUPERSET）) （\#$isa ?OBJ ?SUPERSET）)

上面的规则可解释为："若OBJ为集合SUBSET中的一个实例，并且SUBSET是SUPERSET的子集，则OBJ是集合SUPERSET的一个实例。下面再给出另外一个典型的示例： （\#$relationAllExists \#$biologicalMother \#$ChordataPhylum \#$FemaleAnimal） 上面的规则可解释为：对于脊索动物（chordate）集合\#$ChordataPhylum中的所有实例，都存在一个母性动物（为\#$FemaleAnimal的实例）作为其母亲（通过谓词\#$biologicalMother描述）。

Cyc知识库是由许多“microtheories”（Mt）构成的，概念集合和事实集合一般与特定的Mt关联。与整体的知识库有所不同的是，每一个Mt相互之间并不矛盾，每一个Mt具有一个常量名，Mt常量约定以字符串"Mt"结尾。例如：\#$MathMt表示包含数学知识的Mt，Mt之间可以相互继承得到并组织成一个层次化的结构。例如\#$MathMt特化到更为精细的层次便包含了如\#$GeometryGMt，即有关几何的Mt。

## 推理引擎

推理引擎是从知识库中经过推理获取答案的计算机程序。Cyc推理引擎支持一般的逻辑演绎推理，包括\[5\]：

  - [肯定前件假言推理](https://zh.wikipedia.org/wiki/肯定前件 "wikilink")（Modus ponens）
  - [否定后件假言推理](https://zh.wikipedia.org/wiki/否定后件 "wikilink")（Modus tollens）
  - [全称量化](../Page/全称量化.md "wikilink")（universal quantification）
  - [存在量化](../Page/存在量化.md "wikilink")（existential quantification）。

## 发布版本

### OpenCyc

OpenCyc的最近一个版本是于2009年7月发布的OpenCyc 2.0版。OpenCyc 1.0版涵盖了完整的Cyc本体，其中包含了47000个概念、306000个事实，主要是分类断言，并不包含Cyc中的复杂规则。

OpenCyc的第一个版本发布于2002年春天，该版本仅包含6000个概念、60000条事实。该知识库是在[Apache许可证](../Page/Apache许可证.md "wikilink")保护下发布的。[Cycorp公司已表示有意采用无限制的授权形式及多种授权形式满足其用户的需求](https://zh.wikipedia.org/wiki/Cycorp "wikilink")。CycL和SubL解释器（允许用户浏览并编辑知识库、并具有推理功能）是免费发布给用户的，但是仅包含二进制文件，并不包含源代码。OpenCyc具有针对[Linux](../Page/Linux.md "wikilink")操作系统及微软[Windows操作系统的发行版](https://zh.wikipedia.org/wiki/Windows "wikilink")。开源项目Texai\[6\]项目发布了[RDF版本的OpenCyc知识库](https://zh.wikipedia.org/wiki/资源描述框架\(RDF\) "wikilink")\[7\]。

### ResearchCyc

2006年，Cycorp发布了二进制版本的ResearchCyc 1.0，这是向科研社群发布的免费版本的Cyc（ResearchCyc在2004年经过了一整年的测试开发，并于2005年2月发布了测试版）。ResearchCyc中除了包含OpenCyc中的分类信息外，还在知识库中显著增加了许多语义知识（及附加的事实），并加入了一个庞大的词汇表、英文解析与生成工具、及用于编辑、查询知识的[Java](../Page/Java.md "wikilink")接口。

## 应用

### 恐怖主义知识库项目

恐怖主义综合知识库是一个正在开发中的Cyc应用，该应用的目标是最终创建一个包含所有恐怖组织、相关成员、领袖、其世界观、创建者、赞助者、设施、地点、经费、目的、行为、战术及某次特定恐怖活动事实的知识库。该类知识以数理逻辑表示的声明形式存储\[8\]。

### Cyclopedia项目

Cyclopedia是一个正在开发的项目，它致力于用Cyc中的关键词对Wikipedia网页上的内容进行标注\[9\]\[10\]。

### 克利夫兰临床基金会项目

克利夫兰临床基金会采用Cyc开发了一个生物医学信息的自然语言查询系统\[11\]。该系统将查询通过开放变量解析为**CycL**（高阶逻辑）片断构成的集合，随后通过应用各种约束（如医学领域知识、常识、语篇语用学、语法）之后，找到将这些片断结合在一起，形成语义丰富的形式化查询的方法\[12\]。

## 对Cyc项目的批评

Cyc项目被誉为是“人工智能历史上最有争议的项目”之一\[13\]，因此难免对它有批评的意见，这些意见可以概括为：

  - 系统的复杂度 - 该系统具有创建百科全书式知识库的野心，却手动添加所有的知识到系统中；
  - 知识表示广泛的具体化引发的可扩展性问题，特别是以常量的形式进行；
  - 对物质概念的解释难以令人满意，对内在属性和外在属性区分不清晰；
  - 缺乏对Cyc推理引擎效率测试的有意义的标准测试及与其他类似系统的比较；
  - 目前该系统在深度和广度上都有待完善，然而测度该系统的完备性本身就是很困难的；
  - 缺乏文档；
  - 缺乏最新的在线培训材料，不便于初学者学习使用该系统；
  - 缺乏对普通对象构成的本体描述的断言。

## 参考文献

  - [DAML](https://zh.wikipedia.org/wiki/DAML "wikilink")
  - [语义网](../Page/语义网.md "wikilink")

## 进一步阅读建议

  - Alan Belasco et al.（2004）. ["Representing Knowledge Gaps Effectively"](http://www.springeronline.com/sgw/cda/frontpage/0,11855,1-40109-22-36983341-0,00.html). In: D. Karagiannis, U. Reimer（Eds.）: *Practical Aspects of Knowledge Management, Proceedings of PAKM 2004, Vienna, Austria, December 2–3, 2004*. Springer-Verlag, Berlin Heidelberg.
  - [Elisa Bertino](https://zh.wikipedia.org/wiki/Elisa_Bertino "wikilink"), Gian Piero & B.C. Zarria (2001). *Intelligent Database Systems*. Addison-Wesley Professional.
  - John Cabral & others (2005). ["Converting Semantic Meta-Knowledge into Inductive Bias"](https://web.archive.org/web/20070927210738/http://www.cyc.com/doc/white_papers/ilp2005-semantic-ILP.pdf). In: *Proceedings of the 15th International Conference on Inductive Logic Programming*. Bonn, Germany, August 2005.
  - Jon Curtis et al.（2005）. ["On the Effective Use of Cyc in a Question Answering System"](https://web.archive.org/web/20060325020231/http://www.cyc.com/doc/white_papers/KRAQ2005.pdf). In: *Papers from the IJCAI Workshop on Knowledge and Reasoning for Answering Questions*. Edinburgh, Scotland: 2005.
  - Chris Deaton et al.（2005）. ["The Comprehensive Terrorism Knowledge Base in Cyc"](https://web.archive.org/web/20060222085756/http://www.cyc.com/doc/white_papers/TKB-IA2005.pdf). In: Proceedings of the 2005 International Conference on Intelligence Analysis, McLean, Virginia, May 2005.
  - Kenneth Forbus et al.（2005）.["Combining analogy, intelligent information retrieval, and knowledge integration for analysis: A preliminary report"](https://web.archive.org/web/20060325020423/http://www.cyc.com/doc/white_papers/CombiningAnalogy-IA2005.pdf). In: *Proceedings of the 2005 International Conference on Intelligence Analysis*, McLean, Virginia, May 2005
  - James Masters (2002). ["Structured Knowledge Source Integration and its applications to information fusion"](https://web.archive.org/web/20060325020711/http://www.cyc.com/doc/white_papers/fusion2002.pdf). In: *Proceedings of the Fifth International Conference on Information Fusion*. Annapolis, MD, July 2002.
  - James Masters and Z. Güngördü（2003）. ["Structured Knowledge Source Integration: A Progress Report"](https://web.archive.org/web/20060325020416/http://www.cyc.com/doc/white_papers/kimas2003.pdf). In: *In Integration of Knowledge Intensive Multiagent Systems*. Cambridge, Massachusetts, USA, 2003.
  - Cynthia Matuszek et al.（2005）.["Searching for Common Sense: Populating Cyc from the Web"](https://web.archive.org/web/20060325020518/http://www.cyc.com/doc/white_papers/AAAI051MatuszekC.pdf). In: *Proceedings of the Twentieth National Conference on Artificial Intelligence*. Pittsburgh, Pennsylvania, July 2005.
  - [Douglas Lenat](https://zh.wikipedia.org/wiki/Douglas_Lenat "wikilink") and R. V. Guha.（1990）. *Building Large Knowledge-Based Systems: Representation and Inference in the Cyc Project*. Addison-Wesley. ISBN 978-0-201-51752-1.
  - Tom O'Hara et al.（2003）. ["Inducing criteria for mass noun lexical mappings using the Cyc Knowledge Base and its Extension to WordNet"](https://web.archive.org/web/20060325020408/http://www.cyc.com/doc/white_papers/inducing-criteria-for-mass.pdf). In: *Proceedings of the Fifth International Workshop on Computational Semantics*. Tilburg, 2003.
  - Kathy Panton et al.（2002）. ["Knowledge Formation and Dialogue Using the KRAKEN Toolset"](https://web.archive.org/web/20060325020252/http://www.cyc.com/doc/white_papers/iaai.pdf). In: *Eighteenth National Conference on Artificial Intelligence*. Edmonton, Canada, 2002.
  - Deepak Ramachandran P. Reagan & K. Goolsbey (2005). ["First-Orderized ResearchCyc: Expressivity and Efficiency in a Common-Sense Ontology"](https://web.archive.org/web/20101213201142/http://www.cyc.com/doc/white_papers/folification.pdf). In: *Papers from the AAAI Workshop on Contexts and Ontologies: Theory, Practice and Applications*. Pittsburgh, Pennsylvania, July 2005.
  - Stephen Reed and D. Lenat (2002). ["Mapping Ontologies into Cyc"](https://web.archive.org/web/20091122191538/http://www.cyc.com/doc/white_papers/mapping-ontologies-into-cyc_v31.pdf). In: *AAAI 2002 Conference Workshop on Ontologies For The Semantic Web*. Edmonton, Canada, July 2002.
  - Benjamin Rode et al.（2005）. ["Towards a Model of Pattern Recovery in Relational Data"](https://web.archive.org/web/20060325020543/http://www.cyc.com/doc/white_papers/PatternRecovery-IA2005.pdf). In: *Proceedings of the 2005 International Conference on Intelligence Analysis*. McLean, Virginia, May 2005.
  - Dave Schneider et al.（2005）. ["Gathering and Managing Facts for Intelligence Analysis"](https://web.archive.org/web/20060325020457/http://www.cyc.com/doc/white_papers/GatheringAndManagingFacts-IA2005.pdf). In: ''Proceedings of the 2005 International Conference on Intelligence Analysis". McLean, Virginia, May 2005.
  - Blake Shepard et al.（2005）. ["A Knowledge-Based Approach to Network Security: Applying Cyc in the Domain of Network Risk Assessment"](https://web.archive.org/web/20060325020558/http://www.cyc.com/doc/white_papers/IAAI-05-CycSecure.pdf). In: *Proceedings of the Seventeenth Innovative Applications of Artificial Intelligence Conference*. Pittsburgh, Pennsylvania, July 2005.
  - Nick Siegel et al.（2004）. ["Agent Architectures: Combining the Strengths of Software Engineering and Cognitive Systems"](https://web.archive.org/web/20060303134555/http://www.cyc.com/doc/white_papers/WS804SiegelN.pdf). In: *Papers from the AAAI Workshop on Intelligent Agent Architectures: Combining the Strengths of Software Engineering and Cognitive Systems*. Technical Report WS-04-07, pp. 74–79. Menlo Park, California: AAAI Press, 2004.
  - Nick Siegel et al.（2005）. [Hypothesis Generation and Evidence Assembly for Intelligence Analysis: Cycorp's Nooscape Application"](https://web.archive.org/web/20060325020643/http://www.cyc.com/doc/white_papers/HypothesisGeneration-IA2005.pdf). In Proceedings of the 2005 International Conference on Intelligence Analysis, McLean, Virginia, May 2005.
  - Michael Witbrock et al.（2002）. ["An Interactive Dialogue System for Knowledge Acquisition in Cyc"](https://web.archive.org/web/20060325020212/http://www.cyc.com/doc/white_papers/IJCAI-paper-v5.pdf). In: *Proceedings of the Eighteenth International Joint Conference on Artificial Intelligence*. Acapulco, Mexico, 2003.
  - Michael Witbrock et al.（2004）. ["Automated OWL Annotation Assisted by a Large Knowledge Base"](https://web.archive.org/web/20060325020304/http://www.cyc.com/doc/white_papers/SemAnnot2004-20041001.pdf). In: *Workshop Notes of the 2004 Workshop on Knowledge Markup and Semantic Annotation at the 3rd International Semantic Web Conference ISWC2004*. Hiroshima, Japan, November 2004, pp. 71–80.
  - Michael Witbrock et al.（2005）. ["Knowledge Begets Knowledge: Steps towards Assisted Knowledge Acquisition in Cyc"](https://web.archive.org/web/20101213200658/http://www.cyc.com/doc/white_papers/AAAI05-symposium-KCVC.pdf). In: *Papers from the 2005 AAAI Spring Symposium on Knowledge Collection from Volunteer Contributors (KCVC)*. pp. 99–105. Stanford, California, March 2005.

## 外部链接

  - [Cycorp主页](http://www.cyc.com/)

  - [Cycorp公司网站上维护的已发表文献列表](https://web.archive.org/web/20101030134449/http://cyc.com/cyc/technology/pubs)

  - [Opencyc.org](http://www.opencyc.org/)（包含培训材料）

  - [research.cyc.com](https://web.archive.org/web/20120207001801/http://research.cyc.com/)

  - [Cyc基金会](https://web.archive.org/web/20070112042253/http://www.cycfoundation.org/)

  - [支持浏览OpenCyc知识库的服务器](http://www.opencyc.org/public_servers)

  - ,开源发布的顶层Cyc本体（版本1.0发布于2006年7月14日）

  - [OpenCyc C API](http://www.ime.usp.br/~fr/opencyc/)

  - [David Whitten写的非官方Cyc常见问题解答](https://web.archive.org/web/20101129172223/http://robotwisdom.com/ai/cycfaq.html)

  - [能够思考的机器进展到什么程度了? 2005年4月23日, New Scientist](http://www.newscientist.com/article.ns?id=mg18624961.700)

  - [常识2006年4月15日, New Scientist](http://www.newscientist.com/channel/opinion/mg19025471.700-the-word-common-sense.html)

  - [Cyc官方博客](http://blog.cyc.com/)

  - ["Confessions of a Cyclist" - 另一个关于Cyc的博客](http://johndcyc.blogspot.com/)

  - [Cyc视频培训材料](http://videolectures.net/michael_witbrock/)

  - [采用OpenCyc实现的常识知识获取系统](https://web.archive.org/web/20110814031152/http://csacquire.appspot.com/)

[Category:人工智能](https://zh.wikipedia.org/wiki/Category:人工智能 "wikilink")

1.
2.
3.
4.
5.
6.  [The open source Texai project](http://www.texai.org)
7.  [Texai SourceForge project files](http://sourceforge.net/project/showfiles.php?group_id=176781)
8.
9.
10. [Cyclopedia Sampleshowing cyc highlighted cyc concept for family](http://www.cycfoundation.org/cyclopedia.jpg)
11. [1](http://www.w3.org/2001/sw/sweo/public/UseCases/ClevelandClinic/)
12.
13.