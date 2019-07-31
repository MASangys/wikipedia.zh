**BD-J**（**Blu-ray Disc Java**）為[藍光光碟](../Page/藍光光碟.md "wikilink")（[BD-Video](https://zh.wikipedia.org/wiki/BDMV "wikilink")）之互動式內容的基盤，由 Blu-ray Disc Association 所開發。在藍光光碟中，使用 BD-J 的附加影片內容比 [DVD-Video](../Page/DVD-Video.md "wikilink") 中的更加洗練，可登入[網絡](https://zh.wikipedia.org/wiki/網絡 "wikilink")（下載最新預告、觀賞幕後花絮等）及使用子母畫面與讀取[輔助儲存裝置](../Page/儲存裝置.md "wikilink")。支援播放藍光光碟影片的藍光光碟播放機都有支援 BD-J 的義務，但初期的播放機並不支援登入網絡及讀取輔助儲存裝置與使用子母畫面的功能，（除了登入網絡之外）這些功能都稱作 "Bonus View" ，包含登入網絡在內的功能則稱作 "BD Live" 。2007年10月31日之後發售的藍光光碟播放機都有加裝 "Bonus View" 的義務，不過依不同機種，有些機種必須更新[韌體](../Page/韌體.md "wikilink")才可使用\[1\]。"BD Live" 現在則為附加功能。

## 技術

BD-J 遵循 Globally Executable [MHP](https://zh.wikipedia.org/wiki/Multimedia_Home_Platform "wikilink")（GEM）的封包媒體標準協定，GEM 為[數位電視之應用服務標準](https://zh.wikipedia.org/wiki/數字電視 "wikilink")。多用途的播放標準協定有 [Multimedia Home Platform](https://zh.wikipedia.org/wiki/Multimedia_Home_Platform "wikilink")（DVB-MHP）；北美有線電視使用的標準協定有 OpenCable Application Platform（OCAP）；在美國播放用的標準協定有 Advanced Common Application Platform（ACAP）。GEM 為 [ETSI](https://zh.wikipedia.org/wiki/歐洲電信標準協會 "wikilink") 的標準，DVB-MHP 為 [DVB](../Page/DVB.md "wikilink") 的標準。GEM 基礎類的標準一切皆遵循[昇陽電腦公司之](https://zh.wikipedia.org/wiki/昇陽 "wikilink") [Java](../Page/Java.md "wikilink") 技術。由於 BD-J、MHP、OCAP、ACAP 全部都是 Java 基礎類，因此相容性非常高。 。

## 內容開發

在製作上可採用各種形式。可使用類似 [NetBeans](../Page/NetBeans.md "wikilink") 或 [Eclipse](../Page/Eclipse.md "wikilink") 的[整合開發環境](https://zh.wikipedia.org/wiki/整合開發環境 "wikilink")，或是不使用程式語言的圖像式開發環境（如 Macromedia Director 之類的軟體），另外也有使用解讀 HTML/XML/SVG 等檔案格式之[排版引擎](../Page/排版引擎.md "wikilink")的方法。若將[程式語言開發環境整體加裝到藍光光碟播放機上](https://zh.wikipedia.org/wiki/程式語言 "wikilink")，將實現可編寫出前所未有的先進內容之可能性。此種情況不限於標準的 BD-J 介面，也可使用 Java 現有的[函式庫](../Page/函式庫.md "wikilink")及應用服務架構（BD-J 以 Java 1.3 版為基準）。

## 範例碼

    import javax.tv.xlet.*;

    public class BasicXlet implements Xlet {
      public BasicXlet () {}
      public void initXlet (XletContext context) throws XletStateChangeException {}
      public void startXlet () throws XletStateChangeException {}
      public void pauseXlet () {}
      public void destroyXlet (boolean unconditional) throws XletStateChangeException {}
    }

## 使用 BD-J 的產品

下列並非所有使用 BD-J 的產品。

  - [汽車總動員](../Page/汽車總動員.md "wikilink")
  - [料理鼠王](../Page/料理鼠王.md "wikilink")
  - [-{zh-hans:蜘蛛侠;zh-hant:蜘蛛人}-三部曲BOX](../Page/蜘蛛人_\(電影\).md "wikilink")
  - [-{zh-hans:大鱼;zh-hant:大智若魚}-](../Page/大智若魚.md "wikilink")
  - [神奇四俠：銀魔現身](../Page/神奇四俠：銀魔現身.md "wikilink")
  - [-{zh-hans:后天;zh-hant:明天過後}-](https://zh.wikipedia.org/wiki/明天過後 "wikilink")
  - [衝出封鎖線](../Page/衝出封鎖線.md "wikilink")
  - [天降奇兵](../Page/天降奇兵.md "wikilink")
  - [捍衛戰警](https://zh.wikipedia.org/wiki/捍衛戰警 "wikilink")
  - [海防最前線](https://zh.wikipedia.org/wiki/海防最前線 "wikilink")
  - [四眼天雞](https://zh.wikipedia.org/wiki/四眼天雞 "wikilink")
  - [神鬼奇航：鬼盜船魔咒](https://zh.wikipedia.org/wiki/神鬼奇航：鬼盜船魔咒 "wikilink")
  - [神鬼奇航2：加勒比海盜](https://zh.wikipedia.org/wiki/神鬼奇航2：加勒比海盜 "wikilink")
  - [GHOST IN THE SHELL／攻殻機動隊](../Page/攻殼機動隊_\(電影\).md "wikilink")

## 使用 BD Live 的產品

  - [007首部曲：皇家夜總會](https://zh.wikipedia.org/wiki/007首部曲：皇家夜總會 "wikilink")（雙碟版）
  - [決勝21點](../Page/決勝21點.md "wikilink")
  - [全民超人](../Page/全民超人.md "wikilink")
  - [長江七號](https://zh.wikipedia.org/wiki/長江七號 "wikilink")（特收版）
  - [極速風暴](https://zh.wikipedia.org/wiki/極速風暴 "wikilink")
  - [舞夜驚魂](https://zh.wikipedia.org/wiki/舞夜驚魂 "wikilink")
  - [格鬥風雲](https://zh.wikipedia.org/wiki/格鬥風雲 "wikilink")
  - [等不及說愛你](https://zh.wikipedia.org/wiki/等不及說愛你 "wikilink")
  - [征服情海](../Page/征服情海.md "wikilink")
  - [極度冒險](https://zh.wikipedia.org/wiki/極度冒險 "wikilink")
  - [星艦戰將 3 : 掠奪者](https://zh.wikipedia.org/wiki/星艦戰將_3_:_掠奪者 "wikilink")
  - [致命七秒](https://zh.wikipedia.org/wiki/致命七秒 "wikilink")
  - [黑獄風雲](https://zh.wikipedia.org/wiki/黑獄風雲 "wikilink")

## 備註

## 相關條目

  - [Blu-ray Disc](https://zh.wikipedia.org/wiki/Blu-ray_Disc "wikilink")
  - [HDi](https://zh.wikipedia.org/wiki/HDi "wikilink") - [HD DVD](../Page/HD_DVD.md "wikilink") 中對抗 BD-J 的技術

## 外部連結

  - [Blu-ray Disc Association](http://www.blu-raydisc.com/) - 官方網站
  - [Official MHP website](https://web.archive.org/web/20060421101018/http://www.mhp.org/) [DVB](../Page/DVB.md "wikilink") Project Office.
      - [GEM specification](https://web.archive.org/web/20080509171313/http://www.mhp.org/mhp_technology/gem/)
  - [MHP tutorials](http://www.mhp-interactive.org/)
  - [MHP Knowledge Database](https://web.archive.org/web/20060207234749/http://www.mhp-knowledgebase.org/)
  - [OpenMHP](http://www.openmhp.org/) - MHP-開放源碼計劃
  - [Sun Microsystems' Java Micro Edition](http://java.sun.com/javame/index.jsp)
  - [Java TV API](http://java.sun.com/products/javatv/)
  - [xleTView](http://xletview.sourceforge.net/) - MHP-開放源碼模擬器（Sourceforge）
  - [Interactive-TV-Web](http://www.interactivetvweb.org) - MHP/OCAP Website from Steven Morris.
  - [Official java.net BD-J Forums](https://web.archive.org/web/20080530103102/http://forums.java.net/jive/forum.jspa?forumID=117&start=0) - 官方 BD-J 相關論壇
  - [bdjforum.com](https://web.archive.org/web/20071009115330/http://www.bdjforum.com/) - 非官方技術論壇

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")

1.