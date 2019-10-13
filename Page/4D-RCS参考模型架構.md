[4D-RCS_reference_model_architecture_for_an_individual_vehicle.jpg](https://zh.wikipedia.org/wiki/File:4D-RCS_reference_model_architecture_for_an_individual_vehicle.jpg "fig:4D-RCS_reference_model_architecture_for_an_individual_vehicle.jpg") **4D-RCS参考模型架構**（4D/RCS Reference Model Architecture）是有關[無人機](../Page/無人機.md "wikilink")的，有關其軟體如何識別及組織的模型。

4D/RCS是由[國家標準技術研究所](../Page/國家標準技術研究所.md "wikilink")（NIST）的智能系統部（ISD）自1980年代開始發展\[1\]。

此參考模型是以通用的[实时控制系统](../Page/实时控制系统.md "wikilink")（RCS）參考模型架構為基礎，應用在許多機器人控制上，包括自動車控制\[2\]。

## 簡介

4D/RCS屬於參考模型架構，提供[無人地面載具的智慧軟體設計](https://zh.wikipedia.org/wiki/無人地面載具 "wikilink")、工程以及整合的理論基礎 \[3\]。 [4D-RCS_control_loop_fundamental_structure.jpg](https://zh.wikipedia.org/wiki/File:4D-RCS_control_loop_fundamental_structure.jpg "fig:4D-RCS_control_loop_fundamental_structure.jpg")

依照Balakirsky (2003)的論點，4D/RCS是協商的例子。此架構「包括所有設計要符合未來目標的系統。一般而言，系統會依照世界的模型來進行規劃，而不是直接處理感測器信號，然後動作。來源可以是實時的[传感器](../Page/传感器.md "wikilink")信號、[先驗資訊](../Page/先驗與後驗.md "wikilink")、或是兩者的整合，因此可以產生世界的一個縮影或快照，用來更新世界模型。」\[4\]。協商代理架構的作用是以世界模型以及要執行的命令任務目的為基礎。如圖所示，目的「可能是給定的系統狀態或實際位置。為了符合目的，這類的系統會試圖在真實世界中的三維空間中計算出路徑。」\[5\]

4D/RCS中的4D是在每一層（感測處理、世界建模、行為產生）的三維空間中，再加上一個時間維度。

## 參考資料

  -
## 延伸閱讀

  - Albus, J.S (1988). *System Description and Design Architecture for Multiple Autonomous Undersea Vehicles*. NISTTN 1251, National Institute of Standards and Technology, Gaithersburg, MD, September 1988
  - James S. Albus (2002). "[4D/RCS A Reference Model Architecture for Intelligent Unmanned Ground Vehicles](https://web.archive.org/web/20040725051856/http://www.isd.mel.nist.gov/documents/albus/4DRCS.pdf)". In: *Proceedings of the SPIE 16th Annual International Symposium on Aerospace/Defense Sensing, Simulation and Controls, Orlando, FL, April 1–5, 2002*.
  - James Albus et al. (2002). [*4D/RCS: A Reference Model Architecture For Unmanned Vehicle Systems Version 2.2.*](https://web.archive.org/web/20100527162324/http://www.isd.mel.nist.gov/documents/albus/4DRCS_ver2.pdf) NIST August 2002

## 外部連結

  - [RCS The Real-time Control Systems Architecture](https://web.archive.org/web/20091010082639/http://www.isd.mel.nist.gov/projects/rcs/) NIST Homepage

[Category:控制理论](https://zh.wikipedia.org/wiki/Category:控制理论 "wikilink") [Category:工業計算](https://zh.wikipedia.org/wiki/Category:工業計算 "wikilink") [Category:无人载具](https://zh.wikipedia.org/wiki/Category:无人载具 "wikilink")

1.  Danil Prokhorov (2008) *Computational Intelligence in Automotive Applications*. p. 315

2.  Albus, J.S. et al. (2006). "[Learning in a Hierarchical Control System: 4D/RCS in the DARPA LAGR Program](https://www.nist.gov/cgi-bin//get_pdf.cgi?pub_id=822702)". NIST June 26, 2006. in: *ICINCO 06 - International Conference in Control, Automation and Robotics, Setubal, Portugal, August 2006*

3.  Douglas Whitney Gage (2004). *Mobile robots XVII: 26–28 October 2004, Philadelphia, Pennsylvania, USA*. Society of Photo-optical Instrumentation Engineers. page 35.

4.  S.B. Balakirsky (2003). *A framework for planning with incrementally created graphs in attributed problem spaces*. IOS Press. . p.10-11.

5.