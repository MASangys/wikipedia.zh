> 本文内容由[Soar \(認知架構\)](https://zh.wikipedia.org/wiki/Soar_\(認知架構\))转换而来。


**Soar** \[1\]是一种[認知架構](../Page/認知架構.md "wikilink") ，\[2\]最初是由約翰·萊爾德([John Laird](https://zh.wikipedia.org/wiki/约翰E.莱尔德 "wikilink"))、[艾伦·纽厄尔](../Page/艾伦·纽厄尔.md "wikilink")和[卡内基·梅隆大学](../Page/卡内基·梅隆大学.md "wikilink")的保羅·羅森布魯姆[(Paul Rosenbloom)](http://cs.usc.edu/~rosenblo/)创建。现在由萊爾德在[密西根大学的研究小组](../Page/密歇根大学.md "wikilink")[维护和开发](https://soar.eecs.umich.edu/) 。

Soar项目的目标是开发通用[智能代理所需的固定计算構件](https://zh.wikipedia.org/wiki/智能代理 "wikilink") ，可以执行廣泛的任务，并编码、使用和学习所有类型的知识，以实现人类全部的认知能力，如决策、问题解决、计划和自然语言理解。Soar既是[认知理论](https://zh.wikipedia.org/wiki/認知 "wikilink")，也是该理论的计算实现。自1983年萊爾德發表论文以来，人工智能研究人员已經根據不同的[人类行为面向](https://zh.wikipedia.org/wiki/人的行为 "wikilink")，廣泛使用Soar来创建智能代理和[认知模型](../Page/認知模型.md "wikilink") 。目前對Soar最全面的描述是2012年出版的《Soar認知結構》。\[3\]

## 理论

Soar涵蓋了[通用智能在计算结构上的多个假设](../Page/強人工智慧.md "wikilink")，而當中有许多假設与其他认知架构是相通的，包括由[约翰·罗伯特·安德森](../Page/约翰·罗伯特·安德森.md "wikilink")创建的[ACT-R](../Page/ACT-R.md "wikilink")以及史丹·富蘭克林([Stan Franklin](https://zh.wikipedia.org/wiki/斯坦富兰克林 "wikilink"))创建的[LIDA](https://zh.wikipedia.org/wiki/LIDA（認知架構） "wikilink") 。最近，Soar著重於通用AI(功能和效率)，而ACT-R著重於[认知建模](../Page/認知模型.md "wikilink") (對人類認知的詳細建模)。

在[艾伦·纽厄尔](../Page/艾伦·纽厄尔.md "wikilink")的书“ [認知统一理论](https://zh.wikipedia.org/wiki/認知统一理論 "wikilink") ”中，描述了最早構成Soar基礎的认知理论「问题空间假设」， \[4\]這也追溯到最早期的人工智能系統之一，由[纽厄尔](../Page/艾伦·纽厄尔.md "wikilink")、[西蒙和Shaw在](../Page/司马贺.md "wikilink")1955年提出的[逻辑理论家](../Page/逻辑理论家.md "wikilink")。问题空间假设认为，在嘗試實現目標時，所有目標導向的行為都可以被看作是對可能狀態空間的搜索（[问题空间](https://zh.wikipedia.org/wiki/问题域 "wikilink")）。每個步驟都會選擇一個運算元(Operator)，將其應用到代理的當前狀態，這可能導致內部發生變化，比如從長期記憶、世界的改變或外部行為中提取知識。（Soar的名字源于狀態、運算元和結果(State、Operator And Result)的基本循环;但是，它不再被视为縮寫字。）問題空間假設的本質是，即使是像規劃這樣複雜的活動，所有行為都可以分解為一系列選擇及應用的原始運算元，而這些選擇及應用映射到人類行為上需要大約50ms的時間。

Soar理論的第二個假設是，雖然每一步只能選擇一個運算元，從而造成一個連續的瓶頸，但是選擇和應用的過程是通過並行規則觸發來實現的，因此能夠脈絡依賴地提取程序性知識。

第三個假設是，如果選擇或應用運算元的知識不夠完整或不夠確定時，就會產生僵局，結構會自動創建一個子狀態。在子狀態中，會遞迴地使用相同的問題解決過程，但是目標必須是提取或發現知識，以便決策能夠繼續。這可能會導致子狀態的堆疊，在這些子狀態中，如[规划或](https://zh.wikipedia.org/wiki/企劃 "wikilink")[分层任务分解傳統的問題方法自然會產生](https://zh.wikipedia.org/wiki/分层任务网络 "wikilink") 。當在子狀態中創建的結果解決僵局時，子狀態及其相關結構被移除。總體方法被稱為通用子目標。

這些假設導致了一個支持三層處理的的架構。最低層级是自下而上、平行和自動化的處理歷程。下一層是審議層级，在這個層級，會將從第一層獲得的知識用於提議、選擇和應用單個動作。這兩個層级實現了快速、熟練的行為，并且大致对应于[丹尼尔·卡内曼](../Page/丹尼尔·卡内曼.md "wikilink")的「系統一处理级别」。當知識不完整或不確定時，則與系統二大致對應，會通過使用子狀態的第三層處理，自動產生更複雜的行為。

Soar的第四個假設是，其底層結構是模塊化的，但是並非像計劃或語言這樣，基於任務或能力的模塊，而是作為獨立於任務的模塊，包括:決策模塊、記憶模塊(短期空間/視覺記憶、工作記憶、長期程序性記憶、陳述性記憶和情節記憶)、與所有長期記憶相關的學習機制、知覺模塊、運動模塊。關於以下所描述記憶的具體屬性還有進一步的假設，包括所有的學習都是在線的和漸進式的。

第五个假设是，记忆元素（空间/视觉记忆中的记忆元素除外）被表示为符号的关系结构。[符号系统是通用](../Page/符號人工智能.md "wikilink")[智能所必需的假设](../Page/智力.md "wikilink")，被称为[物理符號系統](../Page/物理符號系統.md "wikilink")假设 。一個Soar重要的演進是，所有符號結構都具有相關的統計元數據(例如使用頻率、近期信息或預期的未來回報)，這些統計元數據會影響符號結構的提取、維護和學習。

## 架構

### 处理周期-决策程序

Soar的主要处理周期来自[程序性記憶](https://zh.wikipedia.org/wiki/程序記憶 "wikilink")（如何操作的知识）和[工作記憶](https://zh.wikipedia.org/wiki/工作记忆 "wikilink")（當前情況的表徵）之间的交互作用，以支持運算元的选择和应用。工作記憶中的信息以一種基於狀態的[符號圖形結構表示](../Page/形式语言.md "wikilink")。程序性記憶中的知識被表示為if-then[生產規則](https://zh.wikipedia.org/wiki/生产（计算机科学） "wikilink") （條件和動作的集合），這些規則不斷地與工作記憶的內容匹配。當規則的條件與工作記憶中的結構匹配時，將觸發並執行這個動作。這種規則和工作記憶的組合也稱為產出系統。與大多數產出系統不同的是，在Soar中，所有匹配規則都是並行觸發。

與將單個規則的選擇作為決策的關鍵不同，Soar會藉由規則提出、評估和應用來選擇及採用運算元，以實現決策。運算元會由測試當前狀態的規則提出，並在工作記憶中創建運算元的表徵形式和可接受的偏好，這表明這個運算元應該被考慮選擇和採用。附加規則會去匹配提議的運算元，並比較及評估提議的其他運算元來創建附加偏好。通過決策過程分析偏好，決策過程會選擇優選的運算元，並安裝為工作記憶中的當前運算元。匹配到當前運算元的規則將觸發應用，並修改工作記憶。修改工作記憶可以是簡單的推論、查詢以提取Soar的長期語義記憶或情節記憶、對運動系統下達指令來執行環境動作，或與空間視覺系統(SVS)的交互作用(SVS是工作記憶與知覺的接口)。對工作記憶的這些修改會導致提出和評估新的運算元，然後選擇並採用。

### 强化学习

Soar有著創建數值偏好來評估運算元的規則，而Soar支援[强化学习](../Page/强化学习.md "wikilink")，可以根據獎勵來調整規則值。為了提供最大的靈活性，在工作記憶中有一個結構會創造獎勵。

### 僵局、子状态和組集

如果對運算元的偏好不足以指定選擇哪一個運算元，或者沒有足夠的規則來採用某個運算元，就會出現僵局。為了應對並化解僵局，將在工作記憶中創建子狀態。然後，附加的程序性知識可以在子狀態中建議和選擇運算元，以獲得更多的知識，並在原始狀態中創建偏好或修改該狀態來化解僵局。子狀態為隨需求應變的複雜推理提供了一種手段，包括層次任務分解、計劃和對陳述性長期記憶的觸接。一旦僵局被化解，除了結果外，子狀態中的所有結構都將被移除。導致結果的子狀態處理，Soar的組集機制會將其編譯成規則。自此之後，學習的規則會在類似的情況下自動觸發，這樣就不會出現僵局，逐步地將複雜的推理轉換為自動化/反應性處理。最近，通過目標導向和自動知識庫擴充機制，已擴展了整個通用子目標化程序，該機制允許以創新和問題導向的方式重新組合Soar代理所擁有的知識，從而解決僵局\[5\] 。

### 符号输入和输出

符號輸入及輸出是通過附加在頂部狀態的工作記憶結構(輸入-鏈接及輸出-鏈接)來產生。如果結構創建在工作記憶的輸出鏈接上，這些結構就會被轉換為外部動作的命令(例如，運動控制)。

### 空间视觉系统与心像

為了支援與視覺系統和非符號推理的交互作用，Soar擁有其空間視覺系統(SVS)。SVS內部將世界表示為場景圖(一個對象和組件子對象的集合，每個對象和組件子對像都具有諸如形狀、位置、姿態、相對位置和比例等空間屬性)。使用SVS的Soar代理可以創建過濾器，自動從其場景圖中提取特徵及關聯，然後將其添加到工作記憶中。此外，一種Soar工具可以添加結構到SVS並用於[心像](../Page/心像.md "wikilink")。例如，代理可以在給定位置創建SVS中的假想對象，並查詢它是否與任何感知對象發生衝突。

### 语义记忆

Soar中的[语义记忆](../Page/语义记忆.md "wikilink")（SMEM）被设计为事实类结构的超大型长期记忆。SMEM中的数据表示为有向循环图。可以通过在工作記憶的保留区域中创建命令的规则来存储或提取结构。提取到的结构将添加到工作記憶中。

SMEM结构具有表示每个記憶使用频率或新近度的激活值，从而实现了最初为ACT-R开发的基本级别的激活方案。在提取过程中，将提取SMEM中与查询匹配并具有最高激活值的结构。Soar还支持[擴散激發](https://zh.wikipedia.org/wiki/传播激活 "wikilink")，其中激活从已提取到工作記憶中的SMEM结构擴散到与其链接的其他长期記憶。\[6\]这些记忆又将有所衰减地擴散激發到其相鄰记忆。擴散激發是一种允许当前情境影响提取语义記憶的机制。

### 情節记忆

情節[记忆](../Page/情节记忆.md "wikilink") （EPMEM）会自动在时间流中记录工作记忆的快照。先前的情节可以通过查询提取到工作记忆中。一旦提取到情节，则可以提取下一个（或上一个）情节。代理可以使用EPMEM顺序播放过去的情节（允许它预测动作的效果）、提取特定記憶或查询具有某些記憶结构的情节。

### 学习

Soar的每一個長期記憶都與在線學習機制有關，這些機制可以創建新的結構，或者根據代理的經驗修改元數據。例如，Soar通過一個稱為組集的過程來學習新的程序性記憶規則，並使用強化學習來調整運算元的選擇規則。

## 開發代理

在Soar中開發代理的標準方法首先從編寫載入程序性記憶的規則開始，然後使用適當的陳述性知識來初始化語義性記憶。代理開發的過程在官方的Soar手冊和研究小組[网站](http://soar.eecs.umich.edu/articles/articles)提供的教程中有著詳細說明。

## 軟體

[缩略图](https://zh.wikipedia.org/wiki/File:Extending_the_Soar_Cognitive_Architecture_by_John_Laird_of_University_of_Michigan.jpg "fig:缩略图") Soar架构由密歇根大学的約翰·萊爾德研究小组维护和推廣。当前架构以C和C ++组合编写而成，這可以免费在研究小组的[网站上](http://soar.eecs.umich.edu/)获得（BSD许可证）。

Soar可以通过Soar标记语言（SML）实现与外部语言环境的接口，包括C++、Java、Tcl及Python。 SML是用於「創建Soar代理實例」及「实现其I / O链接接口」的主要机制。

JSoar是用Java编写的Soar的实现。它由AI研发公司[SoarTech](http://soartech.com/)维护。尽管JSoar通常不会反映Soar的C / C ++版本的最新发展和变化，但它紧密遵循密歇根大学的架構实現。 \[7\]

## 应用领域

以下是在Soar中实现的不同应用领域的历史列表。尽管其中绝大多数是玩具任务或拼图，但在Soar中已经实现了一百多种系统。

### 拼图和游戏

縱觀Soar的歷史，Soar已被用于实现各种经典的AI謎題和游戏，例如河内塔、水壶、井字游戏、8-拼圖問題、[傳教士和吃人惡魔問題](https://zh.wikipedia.org/wiki/傳教士和吃人惡魔問題 "wikilink")，以及[積木世界](../Page/積木世界.md "wikilink")的变体。早期Soar的成就之一，顯示出許多不同的弱方法會很自然地從它所編碼的任務知識中產生，這個屬性被稱為“通用弱方法”。\[8\]

### 电脑配置

Soar的第一个大规模应用是R1-Soar，这是由Paul Rosenbloom部分地重新实现John McDermott为配置DEC计算机而开发的R1（ [XCON](../Page/Xcon.md "wikilink") ） [专家系统](../Page/专家系统.md "wikilink")。R1-Soar展示了Soar能够扩展到中等规模的问题，使用分层任务分解和規划，以及通过組集将將深思熟慮的計劃和問題解決轉化為具反應性的執行能力。\[9\]

### 自然语言理解

NL-Soar是由Jill Fain Lehman，Rick Lewis，Nancy Green，Deryle Lonsdale和Greg Nelson以Soar开发的[自然语言理解](../Page/自然语言理解.md "wikilink")系统。包括自然語言理解、生成和對話的能力，強調實時增量解析和生成。NL-Soar被用於TacAir-Soar的實驗版本和NTD-Soar的實驗版本。\[10\]

### 模擬飛行員

Soar的第二個大規模應用涉及代理的開發，用於大規模分佈式模擬的訓練。密西根大學和南加州大學信息科學學院（ISI）共同開發了兩種用於執行美國戰術空中任務的主要系統。密西根州的系统被称为TacAir-Soar，并模拟駕駛固定翼機的美国军事战术任务（例如近空支援、打击、[CAPs](../Page/美國民間航空巡邏隊.md "wikilink")、加油和[SEAD任务](../Page/壓制敵方防空任務.md "wikilink")）。ISI系統被稱為RWA-Soar並用於模擬旋翼機(直升機)的飛行駕駛任務。TacAir-Soar和RWA-Soar具備的一些能力包括注意力、態勢感知和適應、實時計劃和動態重新計劃，以及Soar代理與人類之間的複雜溝通、協調和合作。这些系统参加了美國國防部高等研究計劃署([DARPA](../Page/國防高等研究計劃署.md "wikilink"))的综合战区 （STOW-97）先進概念技術演示驗證（ACTD），這是當時聯合戰場在48小時內合成代理的最大部署，包括現役人員的培訓。这些系统证明了使用AI代理进行大规模培训的可行性。\[11\]

### STEAM

RWA-Soar项目的重要成果之一是[Milind Tambe](https://zh.wikipedia.org/wiki/米林德·坦贝（Milind_Tambe） "wikilink")\[12\]所开发的STEAM，这是一种灵活的团队合作框架，在这种框架中，代理使用科恩&萊維斯克的聯合意圖框架，來維護他們的隊友模型。\[13\]

### NTD

NTD-Soar是NASA测试主任 （NTD）的模拟人，该负责人负责协调[NASA](../Page/美国国家航空航天局.md "wikilink")[太空梭发射前的准备工作](../Page/航天飞机.md "wikilink")。NTD-Soar是一个綜合的认知模型，整合了许多不同的复杂认知功能，包括[自然语言处理](../Page/自然语言处理.md "wikilink")、[注意](../Page/注意.md "wikilink")力、[视觉搜索以及在一個廣泛的代理模型中解決問題](https://zh.wikipedia.org/wiki/視覺探索 "wikilink")。\[14\]

### 虚拟人類

Soar已經被用來模擬虛擬人類，在南加州大學創意技術研究所開發的虛擬世界中，支援面對面的對話及協作。虛擬人類具有[知覺](../Page/感知.md "wikilink")、[自然语言理解](../Page/自然语言理解.md "wikilink")、[情绪](../Page/情绪.md "wikilink")、身體控制和動作等綜合能力。\[15\]

### 游戏AI和移动应用

在《[星際爭霸](../Page/星际争霸：母巢之战.md "wikilink")》\[16\]、《[雷神之鎚2](../Page/雷神之锤II.md "wikilink")》\[17\]、《深入絕地3》\[18\]、《[魔域幻境之浴血戰場](../Page/魔域幻境之浴血戰場.md "wikilink")》\[19\]和《[我的世界](../Page/我的世界.md "wikilink")》等遊戲中，遊戲AI代理都是使用Soar來構建的，它們的支持功能包括[空间推理](https://zh.wikipedia.org/wiki/时空推理 "wikilink") 、[实时策略和對手](../Page/即时战略游戏.md "wikilink")[预測等等](https://zh.wikipedia.org/wiki/预期（人工智能） "wikilink")。AI代理也被用於電子遊戲，包括使用強化學習的《[無限馬里奧](../Page/马里奥_\(角色\).md "wikilink")》\[20\]、《[青蛙過街2](https://zh.wikipedia.org/wiki/蛙人II "wikilink")》、《[太空侵略者](../Page/太空侵略者.md "wikilink")》和使用強化學習和心像的《Fast Eddie》\[21\]。

Soar可以在[移动设备](../Page/移动设备.md "wikilink")上運行。已針對iOS，為遊戲《吹牛骰》開發了手機[应用程序](https://itunes.apple.com/us/app/michigan-liars-dice/id562997948)，該程序直接從手機上運行Soar架構，作為對手AI的引擎。\[22\]

### 机器人技术

自1991年实現最初的Robo-Soar来控制Puma机器人手臂以来，已经使用Soar构建了许多机器人的应用程序。\[23\]從移動機器人控制到人形服務的[REEM機器人](https://zh.wikipedia.org/wiki/REEM系列 "wikilink")、\[24\]可任務的機器人騾子\[25\]和[无人水下航行器](../Page/無人水下載具.md "wikilink") 。\[26\]

### 互动式任务学习

目前，Soar社群的研究和開發重點是交互式任務學習(ITL)，即通過自然教練的互动，自動學習新任務、環境特徵、行為約束和其他規範。 \[27\]对ITL的研究已应用于桌面游戏\[28\]和多房间导航。\[29\]

### 調度

在初期，Merle-Soar演示了Soar如何学习，模仿匹茲堡附近的擋風玻璃生產工廠中的排程人員的複雜調度任務。\[30\]

## 參見

  - [认知架构](../Page/認知架構.md "wikilink")
  - [ACT-R](../Page/ACT-R.md "wikilink")

## 参考文献

## 参考书目

  - Laird, 2012 [The Soar Cognitive Architecture](https://mitpress.mit.edu/books/soar-cognitive-architecture)
  - Lehman, Laird, and Rosenbloom, 2006 [A Gentle Introduction to Soar: 2006 update](https://web.eecs.umich.edu/~soar/sitemaker/docs/misc/GentleIntroduction-2006.pdf)
  - Rosenbloom, Laird, and Newell, 1993 [The Soar Papers: Readings on Integrated Intelligence](http://www.isi.edu/soar/papers/soar-papers-book/soar-papers.html), [Information Sciences Institute](https://zh.wikipedia.org/wiki/:en:Information_Sciences_Institute "wikilink")

## 外部链接

  - [Soar Homepage](http://soar.eecs.umich.edu/) on [University of Michigan](https://zh.wikipedia.org/wiki/:en:University_of_Michigan "wikilink")
  - [Soar: Frequently Asked Questions List](http://acs.ist.psu.edu/projects/soar-faq/soar-faq.html)
  - [Soar Tech Homepage](http://soartech.com/)



1.  <cite class="citation book">Laird, John E. (2012). [*The Soar Cognitive Architecture*](https://mitpress.mit.edu/books/soar-cognitive-architecture). [MIT Press](https://zh.wikipedia.org/wiki/MIT_Press "wikilink"). [ISBN](https://zh.wikipedia.org/wiki/International_Standard_Book_Number "wikilink") [<bdi>978-0262122962</bdi>](https://zh.wikipedia.org/wiki/Special:BookSources/978-0262122962 "wikilink").</cite>
2.  <cite class="citation book">Newell, Allen (December 1990). *Unified Theories of Cognition*. Harvard University Press. [ISBN](https://zh.wikipedia.org/wiki/International_Standard_Book_Number "wikilink") [<bdi>978-0674920996</bdi>](https://zh.wikipedia.org/wiki/Special:BookSources/978-0674920996 "wikilink").</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>
3.  <cite class="citation book">Laird, John E. (2012). [*The Soar Cognitive Architecture*](https://mitpress.mit.edu/books/soar-cognitive-architecture). [MIT Press](https://zh.wikipedia.org/wiki/MIT_Press "wikilink"). [ISBN](https://zh.wikipedia.org/wiki/International_Standard_Book_Number "wikilink") [<bdi>978-0262122962</bdi>](https://zh.wikipedia.org/wiki/Special:BookSources/978-0262122962 "wikilink").</cite>
4.  <cite class="citation book">Newell, Allen (December 1990). *Unified Theories of Cognition*. Harvard University Press. [ISBN](https://zh.wikipedia.org/wiki/International_Standard_Book_Number "wikilink") [<bdi>978-0674920996</bdi>](https://zh.wikipedia.org/wiki/Special:BookSources/978-0674920996 "wikilink").</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>
5.  <cite class="citation journal">Lieto, Antonio; Perrone, Federico; Pozzato, Gian Luca; Chiodino, Eleonora (2019). ["Beyond Subgoaling: A Dynamic Knowledge Generation Framework for Creative Problem Solving in Cognitive Architectures"](https://zh.wikipedia.org/wiki/doi:10.1016/j.cogsys.2019.08.005 "wikilink"). *Cognitive Systems Research*. **58**: 305–316.</cite>
6.  <cite class="citation journal">Jones, Steven; et al. (2016). ["Efficient Computation of Spreading Activation Using Lazy Evaluation"](http://acs.ist.psu.edu/iccm2016/proceedings/jones2016iccm.pdf) <span class="cs1-format">(PDF)</span>. *ICCM*. Proceedings of the 14th International Conference on Cognitive Modeling: 182–187.</cite>
7.  [*SoarTech: JSoar*](https://github.com/soartech/jsoar)
8.  <cite class="citation journal">Laird, John; Newell, Allen (1983). ["A Universal Weak Method: Summary of results"](http://dl.acm.org/citation.cfm?id=1623558). *IJCAI*. **2**: 771–772.</cite>
9.  <cite class="citation journal">Rosenbloom, Paul; Laird, John; Mcdermott, John (27 January 2009). "R1-Soar: An Experiment in Knowledge-Intensive Programming in a Problem-Solving Architecture". *IEEE Transactions on Pattern Analysis and Machine Intelligence*. PAMI-7 (5): 561–569. [doi](https://zh.wikipedia.org/wiki/Digital_object_identifier "wikilink"):[10.1109/TPAMI.1985.4767703](https://zh.wikipedia.org/wiki/doi:10.1109/TPAMI.1985.4767703 "wikilink").</cite>
10. <cite class="citation journal">Rubinoff, Robert; Lehman, Jill (1994). ["Real-time natural language generation in NL-Soar"](http://dl.acm.org/citation.cfm?id=1641440). *INLG*. Proceedings of the Seventh International Workshop on Natural Language Generation: 199–206.</cite>
11. <cite class="citation journal">Jones; et al. (1999). ["Automated Intelligent Pilots for Combat Flight Simulation"](http://www.aaai.org/ojs/index.php/aimagazine/article/view/1438). *AAAI*. **20** (1).</cite>
12. <cite class="citation journal">Tambe, Milind (1997). ["Agent Architectures for Flexible, Practical Teamwork"](http://dl.acm.org/citation.cfm?id=1867410). *AAAI*. Proceedings of the fourteenth national conference on artificial intelligence and ninth conference on Innovative applications of artificial intelligence: 22–28.</cite>
13. <cite class="citation journal">Cohen, Philip; Levesque, Hector (1991). ["Confirmations and joint action"](http://dl.acm.org/citation.cfm?id=1631603). *IJCAI*. **2**: 951–957.</cite>
14. <cite class="citation journal">Nelson, G; Lehman, J; John, B (1994). ["Integrating cognitive capabilities in a real-time task"](https://www.bibsonomy.org/bibtex/d8033d7496b2f034268d170b45686fb7). *Proceedings of the 16th Annual Conference of the Cognitive Science Society*: 658–663.</cite>
15. <cite class="citation journal">van Lent, Mike; et al. (2001). ["ICT Mission Rehearsal Exercise"](http://web.eecs.umich.edu/~soar/sitemaker/workshop/22/vanLentMRE-S22.PDF)  <span class="cs1-format">(PDF)</span>.</cite> <span class="cs1-hidden-error error citation-comment">Cite journal requires `|journal=` ([help](https://zh.wikipedia.org/wiki/Help:CS1_errors#missing_periodical "wikilink"))</span>
16. <cite class="citation journal">Turner, Alex (2013). ["Soar-SC: A Platform for AI Research in StarCraft"](https://github.com/bluechill/Soar-SC).</cite> <span class="cs1-hidden-error error citation-comment">Cite journal requires `|journal=` ([help](https://zh.wikipedia.org/wiki/Help:CS1_errors#missing_periodical "wikilink"))</span>
17. <cite class="citation book">Laird, John (2001). *It Knows What You'Re Going to Do: Adding Anticipation to a Quakebot*. *AGENTS*. Proceedings of the Fifth International Conference on Autonomous Agents. pp. 385–392. [doi](https://zh.wikipedia.org/wiki/Digital_object_identifier "wikilink"):[10.1145/375735.376343](https://zh.wikipedia.org/wiki/doi:10.1145/375735.376343 "wikilink"). [ISBN](https://zh.wikipedia.org/wiki/International_Standard_Book_Number "wikilink") [<bdi>978-1581133264</bdi>](https://zh.wikipedia.org/wiki/Special:BookSources/978-1581133264 "wikilink").</cite>
18. <cite class="citation journal">van Lent, Michael; Laird, John (1991). ["Developing an artificial intelligence engine"](https://www.researchgate.net/publication/243763189).</cite> <span class="cs1-hidden-error error citation-comment">Cite journal requires `|journal=` ([help](https://zh.wikipedia.org/wiki/Help:CS1_errors#missing_periodical "wikilink"))</span>
19. <cite class="citation journal">Wray, Robert; et al. (December 2002). "Intelligent opponents for virtual reality trainers". *I/Itsec*. Proceedings of the Interservice/Industry Training, Simulation and Education Conference. [CiteSeerX](https://zh.wikipedia.org/wiki/CiteSeerX "wikilink") <span class="cs1-lock-free" title="Freely accessible">\[//citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.549.2187 10.1.1.549.2187\]</span>.</cite>
20. <cite class="citation journal">Mohan, Shiwali; Laird, John (2009). "Learning to Play Mario". *Technical Report*. CCA-TR-2009-03. [CiteSeerX](https://zh.wikipedia.org/wiki/CiteSeerX "wikilink") <span class="cs1-lock-free" title="Freely accessible">\[//citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.387.5972 10.1.1.387.5972\]</span>.</cite>
21. <cite class="citation journal">Wintermute (September 2012). ["Imagery in Cognitive Architecture: Representation and Control at Multiple Levels of Abstraction"](http://dl.acm.org/citation.cfm?id=2619015). *Cognitive Systems Research*. 19-20: 1–29. [CiteSeerX](https://zh.wikipedia.org/wiki/CiteSeerX "wikilink") <span class="cs1-lock-free" title="Freely accessible">\[//citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.387.5894 10.1.1.387.5894\]</span>. [doi](https://zh.wikipedia.org/wiki/Digital_object_identifier "wikilink"):[10.1016/j.cogsys.2012.02.001](https://zh.wikipedia.org/wiki/doi:10.1016/j.cogsys.2012.02.001 "wikilink").</cite>
22.
23. <cite class="citation journal">Laird, John; Yager, Eric; Hucka, Michael; Tuck, Christopher (November 1991). "Robo-Soar: An integration of external interaction, planning, and learning using Soar". *Robotics and Autonomous Systems*. **8** (1–2): 113–129. [CiteSeerX](https://zh.wikipedia.org/wiki/CiteSeerX "wikilink") <span class="cs1-lock-free" title="Freely accessible">\[//citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.726.7247 10.1.1.726.7247\]</span>. [doi](https://zh.wikipedia.org/wiki/Digital_object_identifier "wikilink"):[10.1016/0921-8890(91)90017-f](https://zh.wikipedia.org/wiki/doi:10.1016/0921-8890\(91\)90017-f "wikilink"). [hdl](https://zh.wikipedia.org/wiki/Handle_System "wikilink"):\[//hdl.handle.net/2027.42%2F29045 2027.42/29045\].</cite>
24. <cite class="citation journal">Puigbo, Jordi-Ysard; et al. (2013). "Controlling a General Purpose Service Robot By Means Of a Cognitive Architecture". *AIC*. **45**. [CiteSeerX](https://zh.wikipedia.org/wiki/CiteSeerX "wikilink") <span class="cs1-lock-free" title="Freely accessible">\[//citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.402.5541 10.1.1.402.5541\]</span>.</cite>
25. <cite class="citation journal">Talor, Glen; et al. (February 2014). "Multi-Modal Interaction for Robotic Mules". *Soar Technology Inc*.</cite>
26. <cite class="citation journal">["The Mystery of Artificial Intelligence"](https://www.onr.navy.mil/Science-Technology/Directorates/office-innovation/~/media/Files/03I/DoI-News-FEB2014-Vol11pdf). *Office of Naval Research*. **11**. February 2013.</cite>
27. <cite class="citation journal">Laird, John (2014). ["NSF Report: Interactive Task Learning"](http://web.eecs.umich.edu/~soar/sitemaker/docs/pubs/ITL_Report_NSF_1419590.pdf) <span class="cs1-format">(PDF)</span>.</cite> <span class="cs1-hidden-error error citation-comment">Cite journal requires `|journal=` ([help](https://zh.wikipedia.org/wiki/Help:CS1_errors#missing_periodical "wikilink"))</span>
28. <cite class="citation journal">Kirk, James; Laird, John (2016). ["Learning General and Efficient Representations of Novel Games Through Interactive Instruction"](http://www.cogsys.org/papers/ACS2016/Papers/Kirk_Laird-ACS-2016.pdf) <span class="cs1-format">(PDF)</span>. *Advanced Cognitive Systems*. **4**.</cite>
29. <cite class="citation journal">Mininger, Aaron; Laird, John (2016). ["Interactively Learning Strategies for Handling References to Unseen or Unknown Objects"](http://www.cogsys.org/papers/ACS2016/Papers/Mininger_Laird-ACS-2016.pdf) <span class="cs1-format">(PDF)</span>. *Advanced Cognitive Systems*.</cite>
30.