**SLI**，全稱為「**-{zh-hans:可灵活伸缩的连接接口;zh-hk:可擴充鏈結介面;zh-tw:可擴充鏈結介面;}-**」（Scalable
Link
Interface），中文简称**速力**，是一種可把兩張或以上的[顯示卡連在一起](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")，作單一輸出使用的技術，從而達至繪圖處理效能加強的效果。該技術最初被稱為Scan
Line
Interleave，於1998年由[3dfx公司推出](https://zh.wikipedia.org/wiki/3dfx "wikilink")，應用在[Voodoo
2繪圖處理器上](https://zh.wikipedia.org/wiki/Voodoo_2 "wikilink")。至2004年，3dfx的收購者[NVIDIA再次推出此技術](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")，應用在以[PCI
Express為基礎的](../Page/PCI_Express.md "wikilink")[電腦上](https://zh.wikipedia.org/wiki/電腦 "wikilink")。

## 3dfx的SLI(Scan-Line Interleave)

Scan-Line
Interleave於1998年初推出，採用線性分割，一片顯示卡負責奇數的扫描帧线，另一片則負責偶數的扫描帧线，然後組合成一個圖面。此技術的缺點，是加速只對像素填充有效，而對三角形的建立並沒有太大的幫助。因為當時的几何运算，主要由[中央處理器負責](https://zh.wikipedia.org/wiki/中央處理器 "wikilink")。此外，利用模拟信號進行數據傳輸，信號容易被干擾，合成的畫面可能會出現問題。做成最先支援SLI技術的顯示卡是Voodoo
2。其後的主機板開始支援[AGP](../Page/AGP.md "wikilink")，而一個主機板上亦只有一個[AGP介面](../Page/AGP.md "wikilink")。由於該SLI技術是建基於PCI顯示介面，變相支援AGP介面的顯示卡，不可以支援SLI技術。之後3dfx推出了單卡多核心技術。支援該模式的顯示卡是Voodoo
4（一顆顯示核心）、Voodoo 5 5500（雙核心）和Voodoo 5
6000（四核心）。顯示核心的代號是VSA100。但是，該技術的成本高，GLIDE亦沒有成為主流，而3dfx亦被NVIDIA收購，SLI技術始落入NVIDIA手中。

## NVIDIA的SLI(Scalable Link Interface)

2004年，[PCI-E的出現](https://zh.wikipedia.org/wiki/PCI-E "wikilink")，使SLI有重生的機會。之前，[ATI的](https://zh.wikipedia.org/wiki/ATI "wikilink")[Radeon
R300系列顯示卡大敗](https://zh.wikipedia.org/wiki/Radeon_R300 "wikilink")[GeForce
FX系列顯示卡](https://zh.wikipedia.org/wiki/GeForce_FX "wikilink")。NVIDIA為了取得絕對領先的地位，所以從[GeForce
6開始重新引入SLI技術](https://zh.wikipedia.org/wiki/GeForce_6 "wikilink")。值得注意的是，NVIDIA的SLI技術與3dfx時期的有所不同。首批支援該SLI技術的顯示卡是GeForce
6800和Quadro FX4000。而首張支持NVIDIA
SLI技術的主機板則是[Intel的E](https://zh.wikipedia.org/wiki/Intel "wikilink")7525晶片組，PCI-E的模式是一條X16和一條是X8。原本，SLI技術只被6600
GT以上的顯示卡支援。為了推廣SLI技術，NVIDIA逐步開放限制，令到整個GeForce 6系列的顯示卡都支援SLI技術。

在NVIDIA
SLI技術中，兩張顯示卡的地位並不相同，而是一張主卡和一張副卡。主卡會分派運算指令給副卡，副卡會將結果透過MIO接口傳回主卡。最終的結果會由主卡合併起來。獨立的MIO接口，可以減低信號傳輸的延遲。而此SLI技術可以支援[Direct3D和](../Page/Direct3D.md "wikilink")[OpenGL](../Page/OpenGL.md "wikilink")。

  - Split Frame Rendering - 將畫面分為上下半部，並各自由一顆GPU運算，然後再組合成同一個圖面。
  - Alternate Frame Rendering - 把Frame以單雙數分給不同的GPU處理，例如VGA
    1負責（1,3,5,7,9），而VGA 2負責（2,4,6,8,10），這個方法效能最佳。
  - SLI Antialiasing - Redefining Image Quality -
    這模式能增加畫面質素，讓兩個繪圖核心同時執行AA運算，然後把結果組合。例如一同執行4x
    AA（抗鋸齒）運算，結果會是8x AA 畫質。
  - AFR of SFR -
    在2006年推出，用於7950GX2的四路SLI中。假設有兩個帧，第一個帧分為上下半部，並各自由一顆GPU運算。所以兩個帧總共要四路SLI。但此模式的效率並不高，因為受到[Windows
    XP的DirectX](../Page/Windows_XP.md "wikilink") 9.0数据缓冲限制。

用哪一個SLI模式是由驅動偵測電腦遊戲的執行檔來決定，NVIDIA驅動程式裡已有內建一組定義資料庫，沒有被定義的就會採用相容模式，即使用單顆GPU而不運行SLI。而用戶也可以從驅動程式設定介面中的「3D
Settings」，自行新增未被定義的遊戲要用哪種SLI模式，或是修改已定義的資料庫。建議定時更新顯示卡驅動程式，來增加SLI預先支援遊戲的數量。

## 原理

[ASUS_SLI_bridge_card_1.02.jpg](https://zh.wikipedia.org/wiki/File:ASUS_SLI_bridge_card_1.02.jpg "fig:ASUS_SLI_bridge_card_1.02.jpg")A8N-SLI主機板附贈的SLI橋接子卡1.02版及其固定架\]\]
兩塊顯示卡均有一個MIO接口，能連接兩顆繪圖核心。當接口連接後，兩片顯示卡就能協同運算。若使用最新驅动，可以不連接MIO接口，達成軟体SLI，但效能會下降，皆因霸佔了PCI-E
x16頻寬。

### 多核心SLI

SLI可支援兩顆、三顆或四顆繪圖核心同時運作。

以四顆繪圖核心運作的SLI稱為Quad
SLI，即一張擁有兩顆顯示核心已於內部構成普通SLI模式的顯示卡再加一張相同型號的顯示卡進行SLI，現在只有Geforce
7950 GX2、GeForce 7900GX2、Quadro FX 4500X2、GeForce 9800GX2、Geforce GTX
295支援。作業系統方面，與[AMD的](https://zh.wikipedia.org/wiki/AMD "wikilink")[CrossFire
X相似](https://zh.wikipedia.org/wiki/CrossFire "wikilink")，只有[Windows
Vista可以支援Quad](../Page/Windows_Vista.md "wikilink") SLi，而廣泛使用的Windows
XP則無緣此技術。因为Windows Vista和[Windows
XP的图形架构有一定的差別](../Page/Windows_XP.md "wikilink")，而Vista將會成為主流，顯示核心廠商為了減輕成本和節省資源，所以只會為Vista開發驅動程式\[1\]。主機板方面，需要nForce
790i Ultra SLI或者Intel Skulltrail平台。

三路SLI稱為3-way SLI，硬體要求是採用nForce 680i SLI晶片組或nForce
780i/790i系列晶片組的主機板，和三張GeForce 8800
GTX/Ultra等擁有2個MIO接口的顯示卡。官方聲稱，效能提升是單卡的2.8倍。

### 混合SLI

NVIDIA新的晶片組亦開始支援混合SLI（**Hybrid
SLI**，中文名称**混合动力**）技術。內置[晶片組中的](https://zh.wikipedia.org/wiki/晶片組 "wikilink")[顯示核心](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")，可以通過與獨立[顯示卡的顯核](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")，進行SLI運算。較低端的顯示卡可以得到較高幅度的效能提升，NVIDIA聲稱最高可達到100％。主流及性能级顯核方面，提升幅度分别有40%和20%。若果是高端的顯核，效能提升就只有約5%。混合SLI包含節能技術
Hybrid
Power，原理是當系統不用運算複雜的立體計算時，系統可以關閉獨立顯示核心，只啟動整合顯示核心作顯示輸出，從而達到節能的效果，但NVIDIA已正式宣布Hybrid
Power技術死亡，只於移動平臺仍將繼續支持。將來，所有NVIDIA推出的晶片組都會內建顯示核心，包括定位高階的晶片組，這有助推廣混合SLI技術；所有顯示輸出接口亦會連接到主機板上。而nForce
790i Ultra SLI和nForce 790i SLI晶片組將會是NVIDIA最後推出的獨立型晶片組\[2\]。

現時，模式的轉換還是需要人手調整。系統擁有愈多顯示核心，轉換的速度會愈慢。另外，由於整合式顯示核心並不可以實現雙DVI輸出，所以不支援30寸显示器\[3\]。

在硬體中，要實現混合SLI技術，最關鍵是顯示卡中含有PIC16F690和PI3C3126QE晶片。前者用來控制供電，後者用來连接或者断开顯示卡的電源。所以，某些品牌的8800GT顯示卡可以支援混合SLI\[4\]。

### 增强版SLI

nForce 790i晶片組将支持增强版SLI(enhanced SLI)。增强版SLI包括兩個技術，第一個是PW
Shortcut，另外一個是Broadcast。通過PW
Shortcut技術，兩張顯示卡的溝通可以變得更直接。在以往，顯示核心要交亙數據時，須要CPU的參與。現在，北桥會內建一条直接数据通道，顯示核心可以利用該通道交亙數據。這樣可以降低CPU的佔用率，提升SLI的性能。Broadcast技術方面，CPU向顯示核心發放數據時，就像大氣广播般，各個顯示核心都可以同时接收到該數據。這樣可以提高SLI效率\[5\]。

## 使用前注意事項

SLI不能在多重顯示器的環境下運作，使用者只能使用單一顯示器作為主顯示卡的輸出。同時，使用SLI的顯示卡在型號方面必須相同。與ATI的[FireGL不同](https://zh.wikipedia.org/wiki/FireGL "wikilink")，專業的[Quadro系列](../Page/Quadro.md "wikilink")[顯示卡亦可以支援SLI加速技術](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")。

NVIDIA的主要競爭對手[ATI](https://zh.wikipedia.org/wiki/ATI "wikilink")，也推出一種相類的多重GPU的技術，名為[CrossFire](https://zh.wikipedia.org/wiki/CrossFire "wikilink")。

### Intel晶片組支援SLI的狀況

另外，[Intel的晶片組亦開始支援SLI技術](https://zh.wikipedia.org/wiki/Intel "wikilink")，例如最新的SkullTrail平台。Intel須要向NVIDIA购买两颗nForce
100
MCP晶片，用作PCI-E與PCI-E轉接之用。這樣縱使NVIDIA並沒有授權Intel的晶片組支援SLI技術，都可以使用到SLI。該橋接晶片只支援PCI-E第一代，具體原理是將晶片組提供的PCI-E
x16插口，轉變成兩個PCI-E x16。配合過當的晶片組和兩顆橋接晶片，就可以令系統支援Quad
SLI。直到目前為止，Intel自家的晶片組就只有SkullTrail使用了該NVIDIA的橋接晶片。

X58晶片組方面，配合nForce
200晶片，就可以支援SLI技術\[6\]。NVIDIA會為支持SLI的主機板進行認証，然後將密钥存入[BIOS中](../Page/BIOS.md "wikilink")，驅動程式會檢驗系統是否存有密钥，方能啟用SLI模式\[7\]。使用後者的方法成本較低，NVIDIA表示只需要30美元左右，但功能較差，因為晶片組本身不支援全速多路SLI\[8\]。

## 參考

  - [CrossFireX](https://zh.wikipedia.org/wiki/CrossFireX "wikilink")──[AMD的解決方案](https://zh.wikipedia.org/wiki/AMD "wikilink")

## 外部連結

  - [NVIDIA SLI主頁（繁體）](http://tw.slizone.com)
  - [NVIDIA SLI主页（简体）](http://cn.slizone.com)
  - [NVIDIA的視窗[Vista相容](https://zh.wikipedia.org/wiki/Vista "wikilink")[GPU](https://zh.wikipedia.org/wiki/GPU "wikilink")](https://web.archive.org/web/20060414185718/http://www.nvidia.com/page/technology_vista_home.html)
  - 文章"[多重顯示卡技術](http://bit-tech.net/feature/47/)"
  - 文章"[NVIDIA SLI和ASUS A8N-SLI
    Deluxe效能展示](http://hothardware.com/viewarticle.aspx?articleid=612)"
  - 文章"[NVIDIA的SLI：介紹](http://www.hexus.net/content/item.php?item=916)"
  - 文章"[[Dell的Quad](https://zh.wikipedia.org/wiki/Dell "wikilink")
    SLI：圖片故事](http://theinquirer.net/?article=28839)"
  - 文章"[NVIDIA SLI支採 - 變得更好](http://hardocp.com/article.html?art=NzQ3)"
  - 文章"[SLI技術](https://web.archive.org/web/20060619005904/http://www.pcmech.com/show/internal/817/)"
  - [NVIDIA的Quad
    SLI：除去謠言](http://firingsquad.com/hardware/nvidia_quad_sli/default.asp)

## 注释及参考资料

[Category:英伟达](https://zh.wikipedia.org/wiki/Category:英伟达 "wikilink")

1.  [四路SLI也不支持Windows XP](http://news.mydrivers.com/1/102/102288.htm)
2.  [全面整合 NVIDIA即将告别独立芯片组](http://news.mydrivers.com/1/102/102238.htm)
3.  [nForce 780a
    SLI芯片组智能SLI技术实测](http://news.mydrivers.com/1/105/105293_1.htm)
4.  [不让9系专美！某88GT支持HybridPower](http://www.pcpop.com/doc/0/296/296765.shtml)
5.  [nForce 790i将支持增强版SLI](http://news.mydrivers.com/1/99/99752.htm)
6.  [华硕确认正在准备X58＋nForce 200
    SLI主板](http://news.mydrivers.com/1/114/114193.htm)
7.  [NVIDIA详解X58＋nForce 200
    SLI方案](http://news.mydrivers.com/1/115/115157.htm)
8.  [没有nForce 200！X58主板照样支持SLI](http://www.hardspell.com/doc/hard/80936.htm)