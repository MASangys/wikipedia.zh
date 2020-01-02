> 本文内容由[资源块 \(LTE下行链路\)](https://zh.wikipedia.org/wiki/资源块_\(LTE下行链路\))转换而来。


**资源块（LTE下行链路）**是LTE下行链路分配给用户的最小单位。LTE下行链路能够分配给用户的资源包括频域资源、时域资源和空域资源，即既有频分复用，又有时分复用，还有空分复用。空域资源分配是通过[MIMO](../Page/MIMO.md "wikilink")实现的。资源块（resource block）是包含了12个子载波（频域）并且持续一个时隙slot（时域）的一个资源组合。一个时隙长0.5毫秒。\[1\]

在0.5毫秒（一个时隙）时间内，LTE下行链路能够生成7个OFDM符号，每个符号占据12个子载波。不过资源块中OFDM符号的持续时间不完全相等，第一个OFDM符号的时间稍长（通过延长OFDM符号的循环前缀CP来实现）。资源块由资源片（resource element）组成，资源片是1个子载波（频域）并且持续一个时隙slot（时域）的资源组合。

两个时隙组成一个1毫秒的子帧（subframe），10个子帧(subframe)组成一个10毫秒的帧(frame)。帧（frame）是时域资源的最大单位。

假设某个用户的信息只占用一个资源块，LTE下行链路先将用户信息数据包串并转换成12路子数据流；每个子数据流用一个子载波进行调制，一共是12个子载波；调制过程重复7次，即产生7个OFDM符号。持续的时间是0.5毫秒；最后12路子载波承载的信息通过并串转换，在空口发送出去。

## 參見

  - [无线数据标准的对比](https://zh.wikipedia.org/wiki/Comparison_of_wireless_data_standards "wikilink")
  - [eMBMS](https://zh.wikipedia.org/wiki/eMBMS "wikilink") – LTE增强型广播多播服务。
  - [E-UTRA](../Page/E-UTRA.md "wikilink") – LTE无线连接网络。
  - [Flat IP](https://zh.wikipedia.org/wiki/Flat_IP "wikilink") – 移动网络扁平IP架构。
  - [長期演進技術](../Page/長期演進技術.md "wikilink")
  - [LTE Advanced](https://zh.wikipedia.org/wiki/長期演進技術升級版 "wikilink") – LTE的昇級版。
  - [系統架構演進](https://zh.wikipedia.org/wiki/系統架構演進 "wikilink") – 是3GPP對於LTE無線通信標準的核心網路架構的升級計劃。
  - [TD-LTE](https://zh.wikipedia.org/wiki/TD-LTE "wikilink") (LTE TDD) – 由[中国所开发的一种可选的LTE标准](https://zh.wikipedia.org/wiki/中国 "wikilink")。
  - [超行動寬頻](https://zh.wikipedia.org/wiki/超行動寬頻 "wikilink") – LTE曾经的竞争对手，从未进行过商业化。
  - [WiMAX](../Page/WiMAX.md "wikilink") – 同屬4G的規格。
  - [HSPA+](https://zh.wikipedia.org/wiki/HSPA+ "wikilink") - 3GPP[HSPA标准的增强版本](https://zh.wikipedia.org/wiki/HSPA "wikilink")。
  - [Zadoff–Chu 公式](https://zh.wikipedia.org/wiki/Zadoff–Chu_公式 "wikilink")
  - [下一代網路（NGN）](https://zh.wikipedia.org/wiki/下一代網路 "wikilink")

## 註釋

## 延伸阅读

  - Erik Dahlman, Stefan Parkvall, Johan Sköld "4G – LTE/LTE-Advanced for Mobile Broadband", Academic Press, 2011, ISBN 978-0-12-385489-6
  - Stefania Sesia, Issam Toufik, and Matthew Baker, "LTE – The UMTS Long Term Evolution – From Theory to Practice", Second Edition including Release 10 for LTE-Advanced, John Wiley & Sons, 2011, ISBN 978-0-470-66025-6
  - Chris Johnson, "[LTE in BULLETS](http://www.lte-bullets.com)", CreateSpace, 2010, ISBN 978-1-4528-3464-1
  - Erik Dahlman, Stefan Parkvall, Johan Sköld, Per Beming, "3G Evolution – HSPA and LTE for Mobile Broadband", 2nd edition, Academic Press, 2008,ISBN 978-0-12-374538-5
  - Borko Furht, Syed A. Ahson, "Long Term Evolution: 3GPP LTE Radio And Cellular Technology", Crc Press, 2009, ISBN 978-1-4200-7210-5
  - F. Khan, "LTE for 4G Mobile Broadband – Air Interface Technologies and Performance", Cambridge University Press, 2009
  - Mustafa Ergen, "Mobile Broadband – Including WiMAX and LTE", Springer, NY, 2009
  - H. Ekström, A. Furuskär, J. Karlsson, M. Meyer, S. Parkvall, J. Torsner, and M. Wahlqvist, "Technical Solutions for the 3G Long-Term Evolution," *IEEE Commun. Mag.*, vol. 44, no. 3, March 2006, pp. 38–45
  - E. Dahlman, H. Ekström, A. Furuskär, Y. Jading, J. Karlsson, M. Lundevall, and S. Parkvall, "The 3G Long-Term Evolution – Radio Interface Concepts and Performance Evaluation," *IEEE Vehicular Technology Conference (VTC) 2006 Spring*, Melbourne, Australia, May 2006
  - K. Fazel and S. Kaiser, *Multi-Carrier and Spread Spectrum Systems: From OFDM and MC-CDMA to LTE and WiMAX*, 2nd Edition, John Wiley & Sons, 2008, ISBN 978-0-470-99821-2
  - Agilent Technologies, "[LTE and the Evolution to 4G Wireless: Design and Measurement Challenges](http://www.agilent.com/find/ltebook)", John Wiley & Sons, 2009 ISBN 978-0-470-68261-6
  - Sajal Kumar Das, John Wiley & Sons (April 2010): "Mobile Handset Design", ISBN 978-0-470-82467-2 .
  - Beaver, Paul, "[What is TD-LTE?](http://www.eetimes.com/design/microwave-rf-design/4228238/What-is-TD-LTE-?Ecosystem=microwave-rf-design)", RF\&Microwave Designline, September 2011.
  - Samuel C. Yang, "OFDMA System Analysis and Design", Artech House, 2010, ISBN 978-1-60807-076-3

## 外部連結

  - [LTE homepage](https://web.archive.org/web/20081207052302/http://www.3gpp.org/article/lte) from the 3GPP website
  - [LTE A-Z Description](http://sites.google.com/site/lteencyclopedia/home) 3GPP LTE Encyclopedia

### 白皮书及其他技术信息

  - [LTE Technology Overview and Tutorial Series including Webinars and Video presentations](https://web.archive.org/web/20120611084858/http://testrf.com/tag/lte-tutorial/)
  - ["The Long Term Evolution of 3G" on Ericsson Review, no. 2, 2005](http://www.ericsson.com/ericsson/corpinfo/publications/review/2005_02/07.shtml)
  - [LTE technology introduction](http://www.rohde-schwarz.com/appnote/1MA111.pdf)
  - ["3G Long-Term Evolution" by Dr. Erik Dahlman at Ericsson Research](http://www.signal.uu.se/Research/PCCWIP/Tunisia/WIP05_EAB.pdf)
  - ["Long-Term 3G Evolution – Radio Access" by Dr. Stefan Parkvall at Ericsson Research](http://www.calit2.net/events/pdfs/S3G_Stefan_Parkvall.pdf)
  - ["3GPP Long-Term Evolution / System Architecture Evolution: Overview" by Ulrich Barth at Alcatel](https://web.archive.org/web/20070927195715/http://www.ikr.uni-stuttgart.de/Content/itg/fg524/Meetings/2006-09-29-Ulm/01-3GPP_LTE-SAE_Overview_Sep06.pdf)
  - [The 3G Long-Term Evolution – Radio Interface Concepts and Performance Evaluation](https://web.archive.org/web/20131019143235/http://www.ericsson.com/res/thecompany/docs/journal_conference_papers/atsp/the_3g_long-term_evolution_radi_interface.pdf)
  - [LTE and the Evolution to 4G Wireless Design and Measurement Challenges – "LTE Security"](http://www.3g4g.co.uk/Lte/LTE_Security_WP_0907_Agilent.pdf)
  - [Role of Crypto in Mobile Communications "LTE Security"](https://www.cosic.esat.kuleuven.be/ecrypt/courses/end/slides-28/9-niemi.pdf)

<!-- end list -->

  - [LTE Uplink Interference Modeling](http://asp.eurasipjournals.com/content/pdf/1687-6180-2011-61.pdf)

[Category:協作項目](https://zh.wikipedia.org/wiki/Category:協作項目 "wikilink")

1.  Stefania Sesia, Issam Toufik and Matthew Baker, *LTE – The UMTS Long Term Evolution: From Theory to Practice*, (John Wiley & Sons, Ltd.), 2009, ISBN 978-0-470-69716-0.