[*Sketchy*，可攜型繪圖delta機器人 \[1\]](https://zh.wikipedia.org/wiki/File:Sketchy,_portrait-drawing_delta_robot.jpg "fig:Sketchy，可攜型繪圖delta機器人 ") **delta機器人**（delta robot）也稱為**三角式機器人**，是[工業機器人中的](https://zh.wikipedia.org/wiki/工業機器人 "wikilink")\[2\]，末端效應器在機器人的最下方，由三個機械臂連接機器人上的[万向接头](../Page/万向接头.md "wikilink")以及末端效應器。主要設計特點是在機械臂上使用[平行四边形](../Page/平行四边形.md "wikilink")結構，可以維持（end effector）的方向。這和相反，史都華平台可以調整末端效應器的方向\[3\]。

delta機器人常用在工業的檢拾及包裝作業，delta機器人非常快，有些可以快到每分鐘300次動作\[4\]。

## 歷史

[TOSY_Parallel_Robot.JPG](https://zh.wikipedia.org/wiki/File:TOSY_Parallel_Robot.JPG "fig:TOSY_Parallel_Robot.JPG")，可以撿取及擺放物品\]\] delta機器人是在1980年代初期由瑞士[洛桑联邦理工学院](../Page/洛桑联邦理工学院.md "wikilink")（EPFL）的教授所帶領的團隊所發明的\[5\]。他們在參觀巧克力工廠後，團隊的一名成員希望開發機器人，可以在巧克力上放上\[6\]。開發這種新型機器人的目的是要以非常快的速度處理小型且輕的物體，這也是當時產業的需求之一。

瑞士公司Demaurex在1987年購買了delta機器人的專利，開始製造用在[包裝](../Page/包裝.md "wikilink")產業的delta機器人。雷蒙·克拉威在1991年發表其博士論文Conception d'un robot parallèle rapide à 4 degrés de liberté（設計擁有4個自由度的快速平行機器人）\[7\] ，雷蒙·克拉威因為在delta機器人上的貢獻及發展，在1999年獲得了金機器人獎（golden robot award）。[ABB](../Page/ABB.md "wikilink")也在1999年販售delta機器人FlexPicker。在1999年底時，Sigpack Systems也開始販售delta機器人。

[哈佛大学](../Page/哈佛大学.md "wikilink")微機器人實驗室的研究員在2017年時進行delta機器人的，利用壓電效應將機器人縮小到　15 mm x 15 mm x 20 mm，重0.43克，可以在七立方公厘的空間內搬運1.3克的物體，精度到5μm，速度到0.45 m/s，加速度215 m/s²，重覆作業的頻率可以到75 Hz\[8\]。

## 設計

[DeltaRamki.gif](https://zh.wikipedia.org/wiki/File:DeltaRamki.gif "fig:DeltaRamki.gif")

[Planar_DELTA_robot.gif](https://zh.wikipedia.org/wiki/File:Planar_DELTA_robot.gif "fig:Planar_DELTA_robot.gif")

delta機器人是，其中有多個[运动链連接機器人的底部以及最下方的末端效應器](https://zh.wikipedia.org/wiki/运动链 "wikilink")。delta機器人可以視為空間中的[四杆机构](../Page/平面四杆机构.md "wikilink")\[9\]。

delta機器人的主要概念是用平行四邊形讓末端效應器平台的移動維持原移動，只能在X軸、Y軸或Z軸移動，沒有轉動。

機器人的底部固定在工作區的上方，所有的[执行器都安裝在底部](https://zh.wikipedia.org/wiki/执行器 "wikilink")。從底部開始延伸出三個機器臂，三個機器臂的末端連結到一個小的三角形平台。执行器會讓平台往任一方向移動，可能有減速，也可能沒有減速（[直驅式機構](../Page/直驅式機構.md "wikilink")）。

因為執行器安裝在機器人的底部，機器臂不需承載執行器本身的重量，因此機器臂可以用輕的[复合材料](../Page/复合材料.md "wikilink")製成。所以delta機器人的慣性很小，可以以高速進行，也可以有很大的[加速度](../Page/加速度.md "wikilink")。因為所有的機器臂都連到末端效應器，增加機器人的剛性，不過代價是減小了工作範圍。

開發的delta機器人有四個[自由度](https://zh.wikipedia.org/wiki/自由度_\(工程学\) "wikilink")\[10\]，三個平移自由度以及一個轉動自由度。其中有第四臂從底部延伸到末端效應器三角形平台的中央，因此有第四個旋轉的自由度，是繞其中心點的垂直軸旋轉。

目前有以下不同版本的delta機器人：

  - 6個自由度的delta機器人：由[发那科](../Page/发那科.md "wikilink")開發\[11\]，有串聯的運動機構，有三個旋轉自由度以及三個平移自由度。

  - 4個自由度的delta機器人：由公司開發，有四個平行四邊形連到末端效應器平台。

  - ：是由瑞士公司Asyril SA開發\[12\]。是delta機器人的三軸版本，有可撓進給系統，也可以用在其他高速高精度的應用。

  - Delta直驅機構構：3個自由度的delta機器人，其電動機直接連接機器臂。可以有很高的加速度，從30\[13\]至100[G力](../Page/G力.md "wikilink")。

  - Delta Cube：由[洛桑联邦理工学院](../Page/洛桑联邦理工学院.md "wikilink")大學實驗室LSRO開發，是單體式設計的delta機器人，有彎曲鉸鏈接頭，適用於超高精度的應用。

  - 有許多「線性Delta機器人」的配置方式，使用線性致動器來代替機器臂的轉動。線性delta機器人的工作範圍要比旋轉型的要大很多<ref>

["Gallery of robots - prof. Reymond Clavel"](http://issuu.com/epfl/docs/reymond_clavel_eng) </ref>\[14\]

大部份的delta機器人都是旋轉型的執行器。已經有垂直型的線性執行器，用在線性delta機器人中，是先進的[3D打印](../Page/3D打印.md "wikilink")機設計\[15\]\[16\]，和傳統的導螺桿3D打印機相比，可以較快的處理較大的工作空間，不過在硬體上的價格高很多。

## 應用

[Large_delta-style_3D_printer.jpg](https://zh.wikipedia.org/wiki/File:Large_delta-style_3D_printer.jpg "fig:Large_delta-style_3D_printer.jpg")

delta機器人的高速特性在包裝產業、醫療及製藥業\[17\]都有很好的應用，由於其剛性，delta機器人也可以用在手術中\[18\]。其他的應用包括在[無塵室中針對電子零件的高精度組裝](../Page/净室.md "wikilink")\[19\]。 delta機器人的結構也可以用來製作的控制器\[20\]。delta機器人也開始用在[3D打印](../Page/3D打印.md "wikilink")\[21\] 。

## 參考資料

[Category:工业机器人](https://zh.wikipedia.org/wiki/Category:工业机器人 "wikilink")

1.

2.

3.

4.

5.

6.

7.  Clavel, R. (1991) [Conception d'un robot parallèle rapide à 4 degrés de liberté](http://library.epfl.ch/theses/?nr=925). Ph.D. Thesis, EPFL, Lausanne, Switzerland

8.

9.  Merlet, J.-P., Parallel Robots, Kluwer Academic Publishers, 2000.

10.
11.

12.

13. Miller, K., "Modeling of Dynamics and Model-Based Control of DELTA Direct-Drive Parallel Robot," Journal of Robotics and Mechatronics, Vol. 17, No. 4, pp. 344-352, 1995.

14. Reymond CLAVEL. ["Robots parallèles"](http://jnrr2011.irccyn.ec-nantes.fr/presentations/ReymondClavel.pdf)

15.

16.

17.

18.

19.

20.

21.