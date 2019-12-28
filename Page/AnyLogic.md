**AnyLogic** 是一套結合多種模擬（仿真）理論的建模開發工具，由同名的企業所開發。

## 歷史

在90年代初期，有很多人對平行處理的建模與模擬的數學方法很感興趣。這種方法可用於分析的平行處理的正確性和分佈程式。在聖彼得堡科技大學的分佈式計算網絡（DCN）的研究小組開發出這樣的軟體系統，主要用來分析程式的正確性。而新的工具被命名為COVERS（Concurrent Verification and Simulation）。此系統是用圖形化建模方式來標記系統的結構模型和行為。此工具後來被[惠普](../Page/惠普.md "wikilink")應用於研究領域。

在1998時，這項研究的成功，DCN實驗室於是組織成一家公司，背負著開發新時代模擬軟體的使命。其發展重點在於應用方法：模擬(仿真)，效能分析，隨機系統行為，最佳化（優化）及視覺化。新軟體在2000年發布，採用最新的資訊技術優勢：物件導向方法，結合UML標準的元件，使用Java語言，及新一代的GUI介面等等。 [_Different_simulation_methods_1.jpg](https://zh.wikipedia.org/wiki/File:_Different_simulation_methods_1.jpg "fig:_Different_simulation_methods_1.jpg") 此工具名為AnyLogic，因為它兼具了三個最知名的建模方法：

  - [系統動態學](https://zh.wikipedia.org/wiki/系統動態學 "wikilink")（System dynamics）
  - [離散事件仿真](https://zh.wikipedia.org/wiki/離散事件仿真 "wikilink")（Discrete event simulation）
  - [代理人基模型](https://zh.wikipedia.org/wiki/代理人基模型 "wikilink")（Agent-based modeling）\[1\]

\+ +提供可以任意結合這些方法到單一個模型中\[2\]. 而AnyLogic的第一個版本為AnyLogic 4，因為此數字是接連著COVERS 3.0的數字。

最大的變化在2003年，AnyLogic 5發布，其開發重點專注在下列商業模擬領域：

  - [行銷管理](../Page/行銷管理.md "wikilink")\[3\],

  - [醫療衛生](https://zh.wikipedia.org/wiki/醫療衛生 "wikilink")\[4\],

  - [製造業](https://zh.wikipedia.org/wiki/製造業 "wikilink")\[5\],

  - [供應鏈](https://zh.wikipedia.org/wiki/供應鏈 "wikilink")\[6\]\[7\]\[8\],

  - [後勤學](../Page/後勤學.md "wikilink")\[9\],

  - [鐵路運輸](../Page/鐵路運輸.md "wikilink")\[10\]\[11\],

  - [企業管理](https://zh.wikipedia.org/wiki/企業管理 "wikilink")\[12\],

  - [社會和](https://zh.wikipedia.org/wiki/社會 "wikilink")[生態系統動態學](https://zh.wikipedia.org/wiki/生態系統 "wikilink")，

  - [軍事](../Page/軍事.md "wikilink")，

  - [项目管理](../Page/项目管理.md "wikilink")（專案管理）和[資產](../Page/资产管理.md "wikilink")，

  - [資訊架構](../Page/資訊科技管理.md "wikilink")，

  - 動態模擬及交通模擬\[13\],

  - [航太](https://zh.wikipedia.org/wiki/航太 "wikilink")\[14\].

  - [光電](https://zh.wikipedia.org/wiki/光電 "wikilink")\[15\]

最新的主要版本是AnyLogic 8.5，它是在2019年发布的. AnyLogic 8是[跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink") [模拟软件](https://zh.wikipedia.org/wiki/模拟软件 "wikilink")，可以在[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，[Mac OS上运行](https://zh.wikipedia.org/wiki/Mac_OS "wikilink") 和[Linux](../Page/Linux.md "wikilink")平台。 \[16\]

## AnyLogic與Java

AnyLogic包含了圖形化建模語言外，也允許使用者用[Java程式碼去擴充模擬](../Page/Java平臺.md "wikilink")[模型](../Page/计算机模拟.md "wikilink")。Java是AnyLogic的原生語言，不但適合透過撰寫Java程式來客制模型的擴充，且可以用Java applets來建立模型，並可以透過任何標準的網路瀏覽器來開啟模型。這些Java applets的模型可以非常容易就分享及放置在網站上。除了專業版的Java applets可以允許建立Java runtime的應用程式，並可以被發布給使用者。這些純粹的Java應用程式，可以被用來作為決策支援的基礎工具\[17\]\[18\].

## 多重仿真方法塑模

[_Simulation_approaches_vs_abstraction_levels_CN.jpg](https://zh.wikipedia.org/wiki/File:_Simulation_approaches_vs_abstraction_levels_CN.jpg "fig:_Simulation_approaches_vs_abstraction_levels_CN.jpg")

AnyLogic的模型可以依據任何主要的模擬建模範例：離散事件或流程中心模擬[discrete event or process-centric](https://zh.wikipedia.org/wiki/离散事件仿真 "wikilink")(DE) , 系統動態[systems dynamics](../Page/系统动力学.md "wikilink") (SD), 以及 [agent-based](../Page/个体为本模型.md "wikilink") 代理人基礎(AB).

系統動態及離散事件是傳統的模擬方法，代理人基礎是最新的方法。技術上來說，系統動態方法主要是處理連續性流程，不同於 “離散事件”(所有我們所知的相關GPSS所衍生的方法都稱為流程中心模擬方法)及代理人基礎模型其作業大都是離散時間。

關於系統動態即離散事件模擬在以前各大學不同領域就已經有開過相關課程，其學生族群也不盡相同。有的是在[管理及](https://zh.wikipedia.org/wiki/管理 "wikilink")[經濟領域](https://zh.wikipedia.org/wiki/經濟 "wikilink")，有的在工業界及[作業研究工程師](../Page/運籌學.md "wikilink")。但是其結果是兩種不同的社群卻從未相互交談過。

代理人基礎建模方法直到現在還是大學課堂上的議題。然而，從全球企業最佳化需求的提升引起建模者去找尋結合方法，來深入了解洞察複雜的相互關係流程中有很不一樣的本質。

怎樣的建模方式反應到的抽象等級.系統動態處理的集合顯然是較具有交高的抽象層級。而離散模擬則屬於低等到中等的抽樣等級。而代理人基礎的建模方法則橫跨了所有抽象等級，因為代理人(Agent)可能建立物件模型是具有非常多種本質及尺度。在 “物理”層級的代理人可能被當成如：一個行人，或車子，或是機器人，在其中等的層級-客戶，在高等的層級如是-競爭公司

怎樣的建模方式反應到的抽象等級. 系統動態處理的集合顯然是較具有交高的抽象層級。 而離散模擬則屬於低等到中等的抽樣等級。而代理人基礎的建模方法則橫跨了所有抽象等級，因為代理人(Agent)可能建立物件模型是具有非常多種本質及尺度。在 “物理”層級的代理人可能被當成如：一個行人，或車子，或是機器人，在其中等的層級-客戶，在高等的層級如是-競爭公司\[19\].

AnyLogic允許這些模擬(仿真)建模方法全部結合在同一個模型。沒有固定的層次結構。因此，舉一個例子：如建立一個包裝運輸業的運輸模型，其搬運模式是單獨以代理人的活動/反應來加以建模，而其內部運輸及網路架構則是以離散模擬方式來加以建模。相同的，也可用代理人基礎方法來建立一個消費者總體行為來做為動態模型系統的投入，擷取其資訊流，如收益或成本，並不需要依賴於個別的代理人。這種混合語法是直接應用在各種不同的複雜問題之建模問題，雖然是妥協方式，但是可以透過任何一種方法來加以建模。

## 模擬（仿真）語言

[_AnyLogic_Simulation_Language_CN.jpg](https://zh.wikipedia.org/wiki/File:_AnyLogic_Simulation_Language_CN.jpg "fig:_AnyLogic_Simulation_Language_CN.jpg") AnyLogic模擬（仿真）語言包含了下列組件：\[20\]:

  - **Stock & Flow Diagrams 存貨 & 流程圖**，用於系統動態學建模。
  - **[Statecharts 狀態圖](../Page/有限状态机.md "wikilink")**，大部分是用在代理人基礎塑模，用來定義代理人行為。它們也常用在離散事件塑模，如：模擬機台失效。
  - **Action charts活動圖**，通常是定義演算法。它們可以被用在離散是建模你，如呼叫途程。或是在代理人基礎建模的代理決策邏輯。
  - **Process flowcharts流程圖**，是基本建立用在以離散事件建模中的流程。觀看此流程圖，你可以看到為何離散式建型式常被稱為以流程為中心。

此語言也包含了：低階建模架構（變數，方程式，參數，事件等等），呈現方式之圖型（線，多邊形線，橢圓形等等），分析工具（資料，柱狀圖，繪圖），連結工具，標準圖形及實驗架構。

## AnyLogic 資料庫

AnyLogic包含了下列標準資料庫\[21\]:

  - **The Process Modeling Library商業資料庫**主要支援製造業，供應鏈，後勤資源，醫療等領域之離散事件模擬。使用企業資料庫物件可以建立 現實方面之實體模型（交易，客戶，產品，零件，車輛等等），流程（典型的作業流程，包含等待，延遲，資源利用），以及資源。此流程是明確地以流程圖方式顯示。
  - **The Pedestrian Library行人資料庫**是專注在模擬行人潮在一個 “物理”環境。可以讓你建立一個行人密集地在一個建築物（如：火車站，安全檢查等等）或街道（大量的行人）上。模型支援統計收集如不同區域之行人之密度。也接受服務點之效能負載估算假設。估算帶在特定區域的時間長度，及檢查潛在內部幾何的問題-如新增太多障礙物的影響-以及其他應用。在模型建立以型兂料庫，行人可以在連續空間移動，反應不同型式之障礙物（如牆壁，不同的區域）如同其他行人斑。行人的模擬的互動是複雜行為之代理人，但是Anylogic的行人資料庫提供了一個高階使用介面，可以很快建立行人模型的流程圖風格。
  - **The Rail Yard Library**支援任何複雜及任何大小的鐵路調車建模，模擬，視覺化作業。鐵路調車模型可以結合離散事件或代理人基礎，用以模擬裝貨及卸貨，資源配置，維護及商業流程及其他運輸活動。

除了這些標準資料，使用者可以根據自己的需求來自行建立自己的資料庫及配置。

## 參見

  -
  -
  -
  - [計算機模擬](../Page/计算机模拟.md "wikilink")

## 參考資料

## 進一步讀取

  -
  -
  -
## 外部链接

  - [AnyLogic official web-site](http://www.anylogic.com)
  - [AnyLogic On-line Help](http://www.anylogic.com/anylogic/help/)
  - [AnyLogic Video Tour (How-to's, model examples etc.)](https://web.archive.org/web/20140701213547/http://www.anylogic.com/video-tour)
  - [Anylogic support at simulation123.com](http://simulation123.com/index.php?board=12.0)

[Category:Mac_OS](https://zh.wikipedia.org/wiki/Category:Mac_OS "wikilink") [Category:Linux](https://zh.wikipedia.org/wiki/Category:Linux "wikilink") [Category:Windows軟體](https://zh.wikipedia.org/wiki/Category:Windows軟體 "wikilink")

1.  Cynthia Nikolai, Gregory Madey. [Tools of the Trade: A Survey of Various Agent Based Modeling Platforms](http://jasss.soc.surrey.ac.uk/12/2/2/2.pdf), *Journal of Artificial Societies and Social Simulation vol. 12, no. 2 2*, 31 March 2009
2.  Andrei Borshchev, Alexei Filippov. [From System Dynamics and Discrete Event to Practical Agent Based Modeling: Reasons, Techniques, Tools](http://web.ics.purdue.edu/~hwan/IE680/Final%20Presentation/Po-CHing/From%20SD%20and%20DE%20to%20Practical%20Agent%20Based%20Modeling%20Reasons%20Techniques%20Tools%2004.pdf),*The 22nd International Conference of the System Dynamics Society*, July 25 - 29, 2004, Oxford, England
3.  Maxim Garifullin, Andrei Borshchev, Timofei Popkov. ["Using AnyLogic and Agent Based Approach to Model Consumer Market"](http://www.anylogic.com/articles/using-anylogic-and-agent-based-approach-to-model-consumer-market), *EUROSIM 2007*, [September](../Page/September.md "wikilink"), 2007.
4.  Kirk Solo, Mark Paich [A Modern Simulation Approach for Pharmaceutical Portfolio Management](http://www.simnexus.com/SimNexus.PharmaPortfolio.pdf) , *SimNexus LLC*
5.  Yuri G. Karpov, Rostislav I. Ivanovski, Nikolai I. Voropai, Dmitri B. Popov. [Hierarchical Modeling of Electric Power System Expansion by AnyLogic Simulation Software](http://www.sei.irk.ru/articles/2005.11.pdf), *2005 IEEE St. Petersburg PowerTech*, June 27-30, 2005, St. Petersburg, Russia
6.  Michael Gyimesi, Johannes Kropf. ["C14 Supply Chain Management - AnyLogic 4.0"](http://www.argesim.org/uploads/tx_compdb/c14_anylogic_3536_85.pdf) , *Simulation News Europe*, [December](https://zh.wikipedia.org/wiki/December "wikilink"), 2002.
7.  Ivanov D.A., Sokolov B., Kaeschel J. ["A multi-structural framework for adaptive supply chain planning and operations control with structure dynamics considerations"](http://www.tu-chemnitz.de/wirtschaft/bwl7/mitarbeiter/DMI/EJOR_Ivanov_Revised_2.pdf) , *European Journal of Operational Research*, 2009.
8.  Ivanov D.A. ["Supply chain multi-structural (re)-design."](http://www.tu-chemnitz.de/wirtschaft/bwl7/mitarbeiter/DMI/ISCM_SCD.pdf) , *International Journal of Integrated Supply Management, No. 5(1), 19-37.*, 2009.
9.  Ilmarts Dukulis, Gints Birzietis, Daina Kanaska. [Optimization models for biofuel logistic system](http://llufb.llu.lv/conference/engineering-rural/content/54_DukulisBirzietisKanaska.pdf), *Engineering for Rural Developments*, Jelvaga, 29-30 May 2008
10. Peer-Olaf Siebers, Uwe Aickelin, Helen Celia, Chris W. Clegg. ["understanding Retail Productivity by Simulating Management Practices"](http://eprints.nottingham.ac.uk/591/1/07eurosim_agents.pdf), *EUROSIM 2007*, [September](../Page/September.md "wikilink"), 2007.
11. Peer-Olaf Siebers, Uwe Aickelin, Helen Celia, Chris W. Clegg. ["A Multi-Agent Simulation of Retail Management Practices"](http://ima.ac.uk/papers/siebers2007d.pdf) , ''Proceedings of the Summer Computer Simulation Conference (SCSC 2007), 2007.
12. Arnold Greenland, David Connors, John L. Guyton, Erica Layne Morrison, Michael Sebastiani. ["IRS post-filing processes simulation modeling: a comparison of DES with econometric microsimulation in tax administration"](http://www.informs-sim.org/wsc07papers/150.pdf) , *Proceedings of the 2007 Winter Simulation Conference*, 2007, Washington D.C., USA
13. V.L. Makarov, V.A. Zitkov, A.R. Bakhtizin. ["An agent-based model of Moskow traffic jams"](http://s4.csregistry.org/tiki-download_file.php?fileId=21) , *Agent Based Spatial Simulation Workshop*, 24-25 November 2008, Paris, France
14. David Buxton, Richard Farr, Bart Maccarthy. ["The Aero-engine Value Chain Under Future Business Environments: Using Agent-based Simulation to Understand Dynamic Behaviour"](http://www.docstoc.com/docs/3617420/September-Budapest-THE-AERO-ENGINE-VALUE-CHAIN-UNDER-FUTURE-BUSINESS), *MITIP2006*, 11-12 September, Budapest.
15. Roland Sturm, Hartmut Gross, Jörg Talaga. [Material Flow Simulation of TF Production Lines –Results & Benefits (Example based on CIGS Turnkey)](http://www.acp-it.com/Portals/0/English/2009-03-05_PhotonConf_Simulation_final.pdf) , Photon equipment conference, March 2009, Munich.
16. \[[https://www.anylogic.cn/downloads/\#requirements官方网站\]上的完整系统要求清单](https://www.anylogic.cn/downloads/#requirements官方网站%5D上的完整系统要求清单).
17. Christian Wartha, Momtchil Peev, Andrei Borshchev, Alexei Filippov. [Decision Support Tool Supply Chain](http://www.informs-cs.org/wsc02papers/174.pdf) , *Proceedings of the 2002 Winter Simulation Conference*, 2002
18. Explore different probability distributions and fit your own dataset online - [interactive tool](https://www.runthemodel.com/models/340/)
19. Yuri G. Karpov. ["AnyLogic – a New Generation Professional Simulation Tool"](http://www.itlab.unn.ru/Uploads/AnyLogicNizhniNovgorod2004.pdf), *VI International Congress on Mathematical Modeling*, September 20-26th, 2004, NizniNovgorog, Russia
20. [AnyLogic on-line help on official vendor web-site](http://www.anylogic.com/anylogic/help/)
21.