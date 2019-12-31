> 本文内容由[NVIDIA GeForce 4](https://zh.wikipedia.org/wiki/NVIDIA_GeForce_4)转换而来。


**GeForce 4**（核心代號是NV25）是[nVIDIA研發的第](https://zh.wikipedia.org/wiki/nVIDIA "wikilink")4代[繪圖處理器](https://zh.wikipedia.org/wiki/GPU "wikilink")。架构實際基於GeForce3改進而成。它擁有4条像素流水线，每条流水线包含2个材质贴图单元，即4\*2架構。[T\&L方面](https://zh.wikipedia.org/wiki/T&L "wikilink")，GeForce4采用了nfiniteFX II引擎，它是從[GeForce3的第一代發展而成](https://zh.wikipedia.org/wiki/GeForce3 "wikilink")。GeForce4 Ti配备了两个[頂點著色引擎](https://zh.wikipedia.org/wiki/頂點著色引擎 "wikilink")，比舊的GeForce3多了一个，這表示同一時間可以處理更多[頂點](../Page/頂點_\(電腦圖學\).md "wikilink")。這並不是全新的設計，皆因[Xbox](../Page/Xbox.md "wikilink")中的显核亦使用了個頂點著色引擎。縱使GeForce4架构与GeForce3分別不多，但是依然有效能提升，原因是功能的改進与微調。

GeForce4系列有三個分支，分別是高端的Ti，較低端的MX以及一款通過[HSI橋接晶片來支援](../Page/NVIDIA_BR02.md "wikilink")[PCI-E介面的PCX](https://zh.wikipedia.org/wiki/PCI-E "wikilink") 4300。膝上型輕便電腦方面，則推出了GeForce4 Go (NV17M)，它的架構與MX系列是相同的。三個家族都是於2002年頭發佈。在2002年尾，GeForce4 4200 Go (NV28M) 發佈，它的架構與Ti系列是相同的。

## 產品特性

### 頂點與像素著色引擎

nfiniteFX II引擎是從GeForce3的第一代發展而成。這是一个可程化的頂點與像素著色引擎。

#### nfiniteFX II頂點著色引擎

GeForce4 Ti配備了兩個頂點著色引擎，比舊有的GeForce3多了一个。這不是一个新設計，較早時推出的XBOX，內裏的顯核已配備兩个頂點著色引擎。兩个頂點著色引擎是可以一同運作的。NV25顯核能分配適當的指令予兩个頂點著色引擎处理。這样可確保兩个引擎正在處理不同的資料，不會造成資料重複處理，進而提升效率。總括來說，兩个更先進頂點著色引擎配合NV25效高的時脈，NV25可处理的頂點數目的GeForce3的三倍。

#### nfiniteFX II像素著色引擎

nfiniteFX II像素著色引擎能支援Pixel Shader 1.2與1.3版本

### Accuview

一種應用在GeForce4的改良型反鋸齒技術。Accuview使用了新的取樣位置來改善反鋸齒的品質，新技術可減少錯誤，效能和品質更高。另外，雖然是4XAA的品質，但效能和2XAA一样快。為此，nVidia稱這个新反鋸齒模式為「4xS」。美中不足的是此模式只支援Direct3D不支援OpenGL。

Accuview技術亦支援非等方性過濾，可以改善從前景到背景的材質品質。

### LMA II

這是GeForce4 Ti特有的顯示記憶體控制器，GeForce3擁有的是第一代。NVIDIA改進了一些算法，令到記憶體傳輸得更有效率，改善記憶體頻寬。亦改善了其像素剔除技術，剔除的過程可在顯示核心內進行，不用額外佔用記憶體頻寬。以往，在場景看不到的像素，核心依然會計算，因而浪費了其運算資源。GeForce3可以略過被遮蔽的部分，而不作運算。而GeForce4就改良了這個過程，只有通過核心的數據，才會判斷是否被遮蔽，不用理會顯示記憶體的數據，節省記憶體頻寬。LMA II的另一個技術是Lossless Z-Buffer Compression，能無損壓縮數據，壓縮比是4:1，同樣是節省記憶體頻寬。改良了的[頂點緩存](../Page/頂點_\(電腦圖學\).md "wikilink")，使頂點數據不會被重複傳輸，共用邊緣的多邊形是一個好好的例子。幾何圖形和像素快取，使處理後的頂點和像素數據，能重複利用。雙材質快取，提升GeForce4 Ti的材質過濾效能。

LMA II亦新增了自動預先充電技術。顯示記憶體在每一次讀取時，插槽需要先充電。這個技術論通過算法，能為特定的插槽預先充電，節省讀取時間。快速Z軸清除，一個在ATI Radeon時期已擁有的技術，一個場景渲染後，通過這個技術，就能快速Z軸數據清除。

### [nView](https://zh.wikipedia.org/wiki/nView "wikilink")

所有GeForce4系列顯示卡都配備了兩个350MHz [RAMDAC及](https://zh.wikipedia.org/wiki/RAMDAC "wikilink")[TDMS傳送器](https://zh.wikipedia.org/wiki/TDMS "wikilink")，可以支援雙顯示輸出。

## GeForce4 Ti

[Albatron_GeForce4_Ti_4800.jpg](https://zh.wikipedia.org/wiki/File:Albatron_GeForce4_Ti_4800.jpg "fig:Albatron_GeForce4_Ti_4800.jpg") **GeForce4 Ti**（NV25）於2002年4月發佈，但是[GeForce 3](https://zh.wikipedia.org/wiki/GeForce_3 "wikilink")（NV20）的後續產品。它的架構與上一代的[顯示核心相似](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")；主要的分別是更高的核心和顯示記憶體頻率。顯示記憶體控制器亦有改良，額外增加的頂點著色器，硬體支援反鋸齒，和[DVD播放](https://zh.wikipedia.org/wiki/DVD "wikilink")。\[1\]它亦從GeForce 2 MX繼承了雙顯示輸出。\[2\]GeForce4 Ti的性能和功能是完全勝過舊的GeForce 3。\[3\]對手ATI的[Radeon 8500](https://zh.wikipedia.org/wiki/Radeon_R200 "wikilink")，效能整體上是快過GeForce 3產品線，但就被GeForce 4 Ti追過，只是價格上有優勢。\[4\]

Ti系列原本有兩個成員，**Ti 4400**和最高端的**Ti 4600**。當它們發佈的話時候，NVIDIA的最重要的產品是主流級的[GeForce 2 MX](https://zh.wikipedia.org/wiki/GeForce_2 "wikilink")，中端的GeForce4 MX產品(與Ti 4400和Ti 4600同時發佈)，較舊但效能依然強勁的[GeForce 3](https://zh.wikipedia.org/wiki/GeForce_3 "wikilink")(降級成為中高端顯示卡)。\[5\]NVIDIA於2002年發佈了一個較平價的版本：**Ti 4200**。這張卡是用來取代GeForce 3 Ti系列，成為效能主流級產品，由於GeForce 4 Ti系列核心是一樣的，不少廠商推出了GeForce 4 Ti 4200的超頻版，效能等於GeForce 4 Ti 4600,令後者銷售情況變差。而在往後的[GeForce FX顯示卡](https://zh.wikipedia.org/wiki/GeForce_FX "wikilink")，中階級與高階級顯核架構將絕不相同。它亦比ATi的Radeon 8500快。\[6\]

2002年尾，NV25核心被新推出的NV28核心取代，原因是為了支援AGP 8X。基於此核心的有三款型號：**Ti 4200-8X**、**Ti 4800SE**、**Ti 4800**\[7\]。Ti 4800的頻率與Ti 4600相同，只是支援AGP 8X，在北美地區的早期名稱即為Ti 4600-8X，但由於售價昂貴，該晶片只有極少數的廠商推出過，如[微星](https://zh.wikipedia.org/wiki/微星 "wikilink")，[青雲](https://zh.wikipedia.org/wiki/青雲 "wikilink")，[eVGA](https://zh.wikipedia.org/wiki/eVGA "wikilink")，[PNY和](https://zh.wikipedia.org/wiki/PNY "wikilink")[Point of View等](https://zh.wikipedia.org/wiki/Point_of_View "wikilink")\[8\]。Ti 4800SE的頻率與Ti 4400相同，同樣在北美地區的早期名稱為Ti 4400-8X，效能稍遜於Ti 4600，相比Ti 4800倒是有很多廠商推出了相關產品。中階的Ti 4200-8X則非常暢銷。直到ATi於2002年尾發佈[Radeon 9500 Pro](https://zh.wikipedia.org/wiki/Radeon_R300 "wikilink")，它的地位才被取代\[9\]。Ti 4200於DirectX 8.1的環境下，效能比低端的[GeForce FX 5200和中端的FX](https://zh.wikipedia.org/wiki/GeForce_FX "wikilink") 5600強，與中端的Radeon 9600的旗鼓相當\[10\]\[11\] 。但ATi的[Radeon 9700 Pro在效能和功能上](https://zh.wikipedia.org/wiki/Radeon_R300 "wikilink")，就完全擊敗Ti 4600\[12\]。

Ti系列顯示卡唯一的流動產品就是**GeForce4 4200 Go** (NV28M)，它於2002年尾發佈。\[13\]它的功能和效能，都和以NV28為基礎的Ti 4200相似，以縱使它的核心頻率較低。它的效能遠比[Mobility Radeon 9000強](https://zh.wikipedia.org/wiki/Radeon_R200 "wikilink")，亦是NVIDIA首款支援DirectX 8的流動型顯示核心。由於它原先是應用於桌面電腦，所以功秏比較大。4200與建基於MX架構的GeForce4 4x0 Go系列和Mobility Radeon 9000不同，並沒有內建節能電路。這對膝上型輕便電腦製造商造成困擾，因為流動型產品講究節能，提高電池壽命。\[14\]

## GeForce4 MX

[Mx440-se.JPG](https://zh.wikipedia.org/wiki/File:Mx440-se.JPG "fig:Mx440-se.JPG") [NVIDIA_GeForce_PCX_4300_ES.jpg](https://zh.wikipedia.org/wiki/File:NVIDIA_GeForce_PCX_4300_ES.jpg "fig:NVIDIA_GeForce_PCX_4300_ES.jpg") 若GeForce4的能力由GeForce4 Ti去定義，那麼GeForce4 MX (NV17)就只是一個稱號。很多人批評，GeForce MX的名稱，誤導了其真正的功能，以為是[GeForce 3的低階版](https://zh.wikipedia.org/wiki/GeForce_3 "wikilink")。發佈後，人們始知道它只是[GeForce 2](https://zh.wikipedia.org/wiki/GeForce_2 "wikilink") Ti，而顯示記憶體控制器和抗鋸齒功能則屬於GF4 Ti系列、並配備兩個RAMDAC。

GeForce4 MX不同GeForce4 Ti，前者並不支援可程式化頂點和像素著色器。這不會影響它的運算速度，只是不支援新的Direct-X 8特效。雖然如此，它能很好的執行高端的[CAD軟體](https://zh.wikipedia.org/wiki/CAD "wikilink")，在非遊戲應用中，有不俗的表現。（最值得注意的例子是[AutoCAD](../Page/AutoCAD.md "wikilink")，GeForce4 MX只比Ti版本慢數個百分比，但價格就相差好幾倍。）GeForce4 MX 440能輕易勝過舊的[GeForce 2](https://zh.wikipedia.org/wiki/GeForce_2 "wikilink") Ultra和MX，而且更省電和更便宜，

MX與其餘的GeForce4產品線於2002年頭推出，[Id Software的技術主管](../Page/Id_Software.md "wikilink")[John Carmack擔心GeForce](https://zh.wikipedia.org/wiki/John_Carmack "wikilink")4 MX的潛在能力。他認為若果MX顯示卡被廣泛接受，反而會阻礙DirectX 8遊戲的發展，因為MX不支援可程式化頂點和像素著色器，他更勸告遊戲玩家不要購買MX系列顯示卡。但是在2004年中，Carmack的[Doom 3推出](https://zh.wikipedia.org/wiki/Doom_3 "wikilink")，它竟然支援GeForce4 MX；MX顯示核心是唯一的核心不支援DirectX 8，卻被[Doom 3支援](https://zh.wikipedia.org/wiki/Doom_3 "wikilink")。

儘管受到遊戲熱心者不斷的批評，GeForce4 MX依然是成功的。它的價錢比GeForce 2 MX多30%，但能提供更好的效能，所以能夠玩更多遊戲，正當那些遊戲並不相容GeForce 2。對一般人來說，這已是真正的GeForce4。較低端的GeForce4 Ti效能是比更舊更貴的GeForce 3差，而NVIDIA亦容許GeForce 3繼續售賣。GeForce 4 MX在OEM市場尤其成功，它迅速取代GeForce 2 MX，成為最受歡迎的產品。

MX系列最原先有三個形號 - MX420、MX440和MX460。MX420用來滿足低端電腦的要求，取代GeForce 2 MX100和MX200。GeForce 4 MX440用來應付OEM的大量市場，取代GeForce 2 MX和MX400。最後的形號，就是MX460，是中端市場的解決方案，並沒有明確的對手。MX460的效能並不弱，所以售價並不比GeForce4 Ti4200，GeForce 3 Ti200和Radeon 8500LE/9000（即使是完整的8500）低很多。但這裏每張卡都比MX460好，不論效能和對DirectX 8的支援度。最後，MX460不能在市場佔一席位，所以產品失敗了。

就3D效能而言，MX420的效能只比[GeForce 2 MX400稍好](https://zh.wikipedia.org/wiki/GeForce_2 "wikilink")，但就差過[GeForce 2 GTS](https://zh.wikipedia.org/wiki/GeForce_2 "wikilink")，但這不會造成問題，因為它所針對的是低端市場。與MX420最接近的對手是ATI的Radeon 7000。但實際上，它的對手更像是整合式晶片組，例如Intel的845G和NVIDIA自家的nForce 2。

而MX440的效能就合理的多，亦足以勝過它的對手 - ATI的[Radeon 7500](../Page/Radeon.md "wikilink")，和停止發售的[GeForce 2](https://zh.wikipedia.org/wiki/GeForce_2 "wikilink") Ti和Ultra。ATI於2002年9月發佈的Radeon 9000 Pro，效能與MX440相近，但就完整支援DirectX 8，而且單一材質填充率更高。但是，9000始終未能打破MX440在OEM市場的壟斷。MX440有一個分支，名為MX440-SE。它與MX 420相似，但就增加了顯示記憶體頻寬。NVIDIA利用[GeForce FX 5200去回應ATI](https://zh.wikipedia.org/wiki/GeForce_FX "wikilink") Radeon 9000，而且FX5200更支援DirectX 9。但是，5200除了支援DirectX 9外，效應卻不足以玩遊戲。

視頻播放方面，GeForce4 MX就支援了一個新的功能。它（不包括GeForce4 Ti）是GeForce系列，第一款支援NVIDIA **VPE** (video processing engine)，**硬體-iDCT** 和VLC (variable length code) 解碼的顯示卡。這些功能都比之前的*HDVP*強得多。在[MPEG-2](../Page/MPEG-2.md "wikilink")播放中，VPE終於可以與ATI出色的影像引擎競爭。所有的GeForce4 MX系列顯示卡都能夠對DVD播放提供硬體加速，所以入門級的它在視頻播放上，比高階Ti系列效果更好。這已不是新鮮事，因為ATi早就為其產品配備這樣的功能。

與Ti系列相似，MX產品線都更新到支援AGP-8X接口，成為NV18核心。新增的兩個型號是MX440-8X，它比原本的MX440稍快，使用BGA封裝記憶體，和MX440SE，配備較窄的顯示記憶體總線，用來取代MX420。MX460就不再更新，在數個月前已停止推出。另一個版本是MX 4000，於2003年尾推出。它是GeForce4 MX440SE，但核心頻率較快。**GeForce4 MX4000**代号为NV18B，用来取代MX440-8X，對手是便宜的低端Radeon9200SE。MX4000支援16MB×16bit顯存架構，显卡成本更低，MX4000是當時最廉价的高容量显存低端显卡，**部分**支持DirectX 8.1指令。

**GeForce4 Go**是MX產品線的分支，與其他的GeForce 4晶片於2002年頭同時發佈。有三個型號，分別是420 Go，440 Go和460 Go。但是，ATI已開始反擊，推出了Mobility [Radeon 7500](../Page/Radeon.md "wikilink")。（短壽命的4200 Go並不屬於這個系列，它是Ti產品線的分支。後期更新到支援AGP 8X，有兩個型號448 Go與488 Go。

## GeForce PCX

GeForce4 MX產品線於2004年仍被第三次更新，該產品同[GeForce 5系列的](https://zh.wikipedia.org/wiki/GeForce_5 "wikilink")[PCI-E版一同發表](https://zh.wikipedia.org/wiki/PCI-E "wikilink")，稱為[GeForce PCX](https://zh.wikipedia.org/wiki/GeForce_PCX "wikilink") 4300\[15\] - GeForce MX 4000的[PCI Express版本](../Page/PCI_Express.md "wikilink")，擁有更寬的顯示記憶體頻寬。儘管有了新的代號（NV19），但PCX 4300只是採用支援[AGP](../Page/AGP.md "wikilink")的NV18核心加上[HSI接橋晶片的非原生](../Page/NVIDIA_BR02.md "wikilink")[PCI-E顯示卡](https://zh.wikipedia.org/wiki/PCI-E "wikilink")。該顯示卡只供[OEM渠道使用](https://zh.wikipedia.org/wiki/OEM "wikilink")，所以非常罕見。

## 相關條目

  - [GeForce 4系列規格列表](https://zh.wikipedia.org/wiki/NVIDIA顯示核心列表#GeForce_4 "wikilink")
  - [GeForce 4 Go系列規格列表](https://zh.wikipedia.org/wiki/NVIDIA顯示核心列表#GeForce_4_Go "wikilink")
  - [Quadro 4](../Page/Quadro_4.md "wikilink")

## 參考文獻

## 外部連結

  - [NVIDIA GeForce 4主頁](http://www.nvidia.com.tw/page/geforce4.html)
  - [NVIDIA GeForce 4 Go主頁](http://www.nvidia.com.tw/page/geforce4go.html)

[Category:GeForce系列](https://zh.wikipedia.org/wiki/Category:GeForce系列 "wikilink") [Category:2002年面世的產品](https://zh.wikipedia.org/wiki/Category:2002年面世的產品 "wikilink")

1.  Lal Shimpi, Anand. [NVIDIA GeForce4 - NV17 and NV25 Come to Life](http://www.anandtech.com/video/showdoc.html?i=1583), AnandTech, February 6, 2002.
2.  Worobyew, Andrew. Medvedev, Alexander. [NVIDIA GeForce4 Ti 4400 and GeForce4 Ti 4600 (NV25) Review](http://www.digit-life.com/articles/gf4/index1.html), Digit-Life, accessed May 15, 2007.
3.
4.
5.
6.  Freeman, Vince. [NVIDIA GeForce4 Ti 4200 Review](http://www.sharkyextreme.com/hardware/videocards/article.php/1022931), Sharky Extreme, April 26, 2002.
7.  R., Jason.[MSI GeForce4 Ti4800SE 8X VIVO Video Card](http://www.extremeoverclocking.com/reviews/video/MSI_TI4800SE_1.html), Extreme Overclocking, March 30, 2003.
8.  Neoseeker.com: [MSI GF4 Ti4600 8X Review](http://www.neoseeker.com/Articles/Hardware/Reviews/msiti46008x/), Tech Report, September 16, 2002.
9.  Wasson, Scott. [ATI's Radeon 9500 Pro graphics card: DirectX 9 goes mainstream](http://www.techreport.com/reviews/2002q4/radeon-9500pro/index.x?pg=1) , Tech Report, November 27, 2002.
10. Gasior, Geoff. [ATI's Radeon 9600 Pro GPU: One step forward, two steps back?](http://www.techreport.com/reviews/2003q2/radeon-9600pro/index.x?pg=1) , Tech Report, April 16, 2003.
11. Gasior, Geoff. [NVIDIA's GeForce FX 5200 GPU: Between capability and competence](http://www.techreport.com/reviews/2003q2/geforcefx-5200/index.x?pg=1) , Tech Report, April 29, 2003.
12. Wasson, Scott. [ATI's Radeon 9700 Pro graphics card: Render farm on a stick](http://www.techreport.com/reviews/2002q3/radeon-9700pro/index.x?pg=1) , Tech Report, September 16, 2002.
13. [GeForce4 Go](http://www.nvidia.com/page/geforce4go.html), NVIDIA, accessed May 15, 2007.
14. Witheiler, Matthew. [NVIDIA GeForce4 4200 Go: Bringing mobile gaming to new heights](http://www.anandtech.com/mobile/showdoc.aspx?i=1745), AnandTech, November 14, 2002.
15.