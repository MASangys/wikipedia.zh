**BD-J**（**Blu-ray Disc
Java**）為[藍光光碟](../Page/藍光光碟.md "wikilink")（[BD-Video](../Page/BDMV.md "wikilink")）之互動式內容的基盤，由
Blu-ray Disc Association 所開發。在藍光光碟中，使用 BD-J 的附加影片內容比
[DVD-Video](../Page/DVD-Video.md "wikilink")
中的更加洗練，可登入[網絡](../Page/網絡.md "wikilink")（下載最新預告、觀賞幕後花絮等）及使用子母畫面與讀取[輔助儲存裝置](../Page/儲存裝置.md "wikilink")。支援播放藍光光碟影片的藍光光碟播放機都有支援
BD-J 的義務，但初期的播放機並不支援登入網絡及讀取輔助儲存裝置與使用子母畫面的功能，（除了登入網絡之外）這些功能都稱作 "Bonus
View" ，包含登入網絡在內的功能則稱作 "BD Live" 。2007年10月31日之後發售的藍光光碟播放機都有加裝 "Bonus
View" 的義務，不過依不同機種，有些機種必須更新[韌體才可使用](../Page/韌體.md "wikilink")\[1\]。"BD
Live" 現在則為附加功能。

## 技術

BD-J 遵循 Globally Executable
[MHP](../Page/Multimedia_Home_Platform.md "wikilink")（GEM）的封包媒體標準協定，GEM
為[數位電視之應用服務標準](../Page/數字電視.md "wikilink")。多用途的播放標準協定有 [Multimedia
Home
Platform](../Page/Multimedia_Home_Platform.md "wikilink")（DVB-MHP）；北美有線電視使用的標準協定有
OpenCable Application Platform（OCAP）；在美國播放用的標準協定有 Advanced Common
Application Platform（ACAP）。GEM 為 [ETSI](../Page/歐洲電信標準協會.md "wikilink")
的標準，DVB-MHP 為 [DVB](../Page/DVB.md "wikilink") 的標準。GEM
基礎類的標準一切皆遵循[昇陽電腦公司之](../Page/昇陽.md "wikilink")
[Java](../Page/Java.md "wikilink") 技術。由於 BD-J、MHP、OCAP、ACAP 全部都是 Java
基礎類，因此相容性非常高。 。

## 內容開發

在製作上可採用各種形式。可使用類似 [NetBeans](../Page/NetBeans.md "wikilink") 或
[Eclipse](../Page/Eclipse.md "wikilink")
的[整合開發環境](../Page/整合開發環境.md "wikilink")，或是不使用程式語言的圖像式開發環境（如
Macromedia Director 之類的軟體），另外也有使用解讀 HTML/XML/SVG
等檔案格式之[排版引擎的方法](../Page/排版引擎.md "wikilink")。若將[程式語言開發環境整體加裝到藍光光碟播放機上](../Page/程式語言.md "wikilink")，將實現可編寫出前所未有的先進內容之可能性。此種情況不限於標準的
BD-J 介面，也可使用 Java 現有的[函式庫及應用服務架構](../Page/函式庫.md "wikilink")（BD-J 以 Java
1.3 版為基準）。

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
  - [-{zh-hans:后天;zh-hant:明天過後}-](../Page/明天過後.md "wikilink")
  - [衝出封鎖線](../Page/衝出封鎖線.md "wikilink")
  - [天降奇兵](../Page/天降奇兵.md "wikilink")
  - [捍衛戰警](../Page/捍衛戰警.md "wikilink")
  - [海防最前線](../Page/海防最前線.md "wikilink")
  - [四眼天雞](../Page/四眼天雞.md "wikilink")
  - [神鬼奇航：鬼盜船魔咒](../Page/神鬼奇航：鬼盜船魔咒.md "wikilink")
  - [神鬼奇航2：加勒比海盜](../Page/神鬼奇航2：加勒比海盜.md "wikilink")
  - [GHOST IN THE SHELL／攻殻機動隊](../Page/攻殼機動隊_\(電影\).md "wikilink")

## 使用 BD Live 的產品

  - [007首部曲：皇家夜總會](../Page/007首部曲：皇家夜總會.md "wikilink")（雙碟版）
  - [決勝21點](../Page/決勝21點.md "wikilink")
  - [全民超人](../Page/全民超人.md "wikilink")
  - [長江七號](../Page/長江七號.md "wikilink")（特收版）
  - [極速風暴](../Page/極速風暴.md "wikilink")
  - [舞夜驚魂](../Page/舞夜驚魂.md "wikilink")
  - [格鬥風雲](../Page/格鬥風雲.md "wikilink")
  - [等不及說愛你](../Page/等不及說愛你.md "wikilink")
  - [征服情海](../Page/征服情海.md "wikilink")
  - [極度冒險](../Page/極度冒險.md "wikilink")
  - [星艦戰將 3 : 掠奪者](../Page/星艦戰將_3_:_掠奪者.md "wikilink")
  - [致命七秒](../Page/致命七秒.md "wikilink")
  - [黑獄風雲](../Page/黑獄風雲.md "wikilink")

## 備註

## 相關條目

  - [Blu-ray Disc](../Page/Blu-ray_Disc.md "wikilink")
  - [HDi](../Page/HDi.md "wikilink") - [HD
    DVD](../Page/HD_DVD.md "wikilink") 中對抗 BD-J 的技術

## 外部連結

  - [Blu-ray Disc Association](http://www.blu-raydisc.com/) - 官方網站
  - [Official MHP
    website](https://web.archive.org/web/20060421101018/http://www.mhp.org/)
    [DVB](../Page/DVB.md "wikilink") Project Office.
      - [GEM
        specification](https://web.archive.org/web/20080509171313/http://www.mhp.org/mhp_technology/gem/)
  - [MHP tutorials](http://www.mhp-interactive.org/)
  - [MHP Knowledge
    Database](https://web.archive.org/web/20060207234749/http://www.mhp-knowledgebase.org/)
  - [OpenMHP](http://www.openmhp.org/) - MHP-開放源碼計劃
  - [Sun Microsystems' Java Micro
    Edition](http://java.sun.com/javame/index.jsp)
  - [Java TV API](http://java.sun.com/products/javatv/)
  - [xleTView](http://xletview.sourceforge.net/) -
    MHP-開放源碼模擬器（Sourceforge）
  - [Interactive-TV-Web](http://www.interactivetvweb.org) - MHP/OCAP
    Website from Steven Morris.
  - [Official java.net BD-J
    Forums](https://web.archive.org/web/20080530103102/http://forums.java.net/jive/forum.jspa?forumID=117&start=0)
    - 官方 BD-J 相關論壇
  - [bdjforum.com](https://web.archive.org/web/20071009115330/http://www.bdjforum.com/)
    - 非官方技術論壇

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")

1.