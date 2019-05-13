**SCUMM**是美國遊戲商[LucasArts用於開發圖形](../Page/LucasArts.md "wikilink")[冒險遊戲的一種](../Page/冒險遊戲.md "wikilink")[遊戲引擎](../Page/遊戲引擎.md "wikilink")，於1987年發行的《[瘋狂大樓](../Page/瘋狂大樓.md "wikilink")》是首款利用SCUMM製作的遊戲。其引擎名稱正是「Script
Creation Utility for Maniac Mansion」（瘋狂大樓專用程式腳本創建開發工具）所簡寫組成的頭字語。\[1\]

一開始SCUMM所設計的《瘋狂大樓》雖是發行在[Commodore
64與](../Page/Commodore_64.md "wikilink")[Apple
II電腦上](../Page/Apple_II.md "wikilink")，但因SCUMM[軟體可移植性好的特點](../Page/軟體可移植性.md "wikilink")，往後SCUMM有開發適用於[3DO](../Page/3DO.md "wikilink")、[DOS](../Page/DOS.md "wikilink")、[FM
Towns等各種不同平台架構的遊戲作品](../Page/FM_Towns.md "wikilink")。\[2\]

## 歷史

最初LucasArts的遊戲開發者[羅恩·吉伯特在製作冒險遊戲](../Page/羅恩·吉伯特.md "wikilink")《[瘋狂大樓](../Page/瘋狂大樓.md "wikilink")》時，因考慮到自身便是冒險類型遊戲愛好者；便想創造一個能更友善、能方便玩家遊玩的全新的遊戲引擎來設計遊戲界面。\[3\]

SCUMM的創造者除羅恩·吉伯特外，另還有契伯·莫寧史達（Chip Morningstar）與亞瑞克·威爾穆德（Aric
Wilmunder）倆人，\[4\]其中亞瑞克·威爾穆德往後有對SCUMM作了功能的強化與調整；並有獲得「SCUMM大王」（SCUMM
Lord）的稱號。

在《瘋狂大樓》以SCUMM作為開發工具後，LucasArts便將SCUMM作為往後十年間；所推出的冒險遊戲作品之主要遊戲引擎，採用的包括有《[紗之器](../Page/紗之器.md "wikilink")》、《[猴島的秘密](../Page/猴島的秘密.md "wikilink")》、《[瘋狂時代](../Page/瘋狂時代.md "wikilink")》等等。而LucasArts以SCUMM所設計的最後一款遊戲是1997年的《[猴島的詛咒](../Page/猴島的詛咒.md "wikilink")》，之後便以具[3D立體畫面表現效果的新遊戲引擎](../Page/3D.md "wikilink")「[GrimE](../Page/GrimE.md "wikilink")」取代之。\[5\]

## 方式

[Maniac_Mansion_(ScreenShot).jpg](https://zh.wikipedia.org/wiki/File:Maniac_Mansion_\(ScreenShot\).jpg "fig:Maniac_Mansion_(ScreenShot).jpg")版本的《[瘋狂大樓](../Page/瘋狂大樓.md "wikilink")》遊戲畫面，在畫面下方十來項項目即為遊戲裡的功能按鍵。\]\]
一開始的SCUMM遊戲界面是設計成在畫面下方具備著十來項動作指令按鍵，其功能按鍵包括有「打開」（Open）、「查看」（Read）、「撿起」（Pick
Up）等等，為一種將動作指令給圖形符號化的作法。\[6\]如當遊戲角色面對某一物品時；玩家按下 「撿起」的按鍵便可讓遊戲角色對該物品執行此動作。

而隨著往後遊戲的發行SCUMM也跟著在功能、界面上不斷作修正與精簡，之後在最後一款以SCUMM設計的遊戲《猴島的詛咒》中，遊戲界面簡化成取消全部指令按鍵；玩家只要透過[滑鼠右鍵便可叫出執行](../Page/滑鼠.md "wikilink")「檢視」、「對話」、「使用」三項功能的圖示；來遊完整款遊戲。

## 範例

遊戲《瘋狂大樓》中在一樓大廳場景裡，讓落地鐘鐘擺晃動的寫法：

``` javascript
script clock-tick {
    do {
        clock-state = not clock-state
        object living-room-clock state clock-state
        play-sound clock-tick
        break-here 60
    }
}
```

遊戲《瘋狂大樓》的一段過場動畫，內容是遊戲角色怪護士艾德娜（Edna）與她的兒子艾德（Ed）之間對話，該段內容是艾德娜不停聽艾德反應父親行為異常的事情；之後忍不住發牢騷說「所以你到底想要講的是什麼，艾德！！！」（WHAT'S
YOUR POINT ED\!\!\!）：

``` javascript
cut-scene {
    ...
    actor nurse-edna in-room edna-bedroom at 60,20
    camera-follow nurse-edna
    actor nurse-edna walk-to 30,20
    wait-for-actor nurse-edna
    say-line nurse-edna "WHAT'S YOUR POINT ED!!!"
    wait-for-talking nurse-edna
    ...
}
```

## 採用遊戲

| SCUMM版本 | 年份                                                                                              | 作品名                                                                                      |
| ------- | ----------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| 0       | 1987                                                                                            | [瘋狂大樓](../Page/瘋狂大樓.md "wikilink")（[Commodore 64平台](../Page/Commodore_64.md "wikilink")） |
| 1       | 1987                                                                                            | 瘋狂大樓（[Apple II平台](../Page/Apple_II.md "wikilink")）                                       |
| 1988    | 瘋狂大樓（[DOS平台](../Page/DOS.md "wikilink")）                                                        |                                                                                          |
| 1988    | [異形大進擊](../Page/異形大進擊.md "wikilink")                                                            |                                                                                          |
| 1.5     | 1990                                                                                            | 瘋狂大樓（[FC平台](../Page/FC.md "wikilink")）                                                   |
| 2       | 1989                                                                                            | 瘋狂大樓（[Amiga](../Page/Amiga.md "wikilink")、[雅達利ST平台](../Page/雅達利ST.md "wikilink")、DOS加強版） |
| 1988    | 異形大進擊（Amiga平台）                                                                                  |                                                                                          |
| 1989    | 異形大進擊（雅達利ST平台、PC加強版）                                                                            |                                                                                          |
| 3       | 1989                                                                                            | [聖戰奇兵](../Page/聖戰奇兵_\(遊戲\).md "wikilink")（Amiga、雅達利ST、DOS平台）                             |
| 1990    | 聖戰奇兵（PC加強版、[Mac OS](../Page/Mac_OS.md "wikilink")、[FM Towns平台](../Page/FM_Towns.md "wikilink")） |                                                                                          |
| 1990    | [紗之器](../Page/紗之器.md "wikilink")（Amiga、雅達利ST、DOS、Mac OS平台）                                      |                                                                                          |
| 1991    | 異形大進擊（FM Towns平台）                                                                               |                                                                                          |
| 1992    | 聖戰奇兵（[CDTV平台](../Page/CDTV.md "wikilink")）                                                      |                                                                                          |
| 4       | 1990                                                                                            | [猴島的秘密](../Page/猴島的秘密.md "wikilink")（Amiga、雅達利ST、DOS、Mac OS平台）                           |
| 1991    | 紗之器（FM Towns、[PC Engine平台](../Page/PC_Engine.md "wikilink")、DOS[光碟版](../Page/光碟.md "wikilink")） |                                                                                          |
| 5       | 1991                                                                                            | [猴島小英雄2：老查克的復仇](../Page/猴島小英雄2：老查克的復仇.md "wikilink")（DOS、Mac OS平台）                       |
| 1992    | 猴島小英雄2：老查克的復仇（Amiga平台）                                                                          |                                                                                          |
| 1992    | [亞特蘭提斯之謎](../Page/亞特蘭提斯之謎.md "wikilink")（Amiga、DOS、Mac OS平台）                                    |                                                                                          |
| 1992    | 猴島的秘密（FM Towns、PC光碟版）                                                                           |                                                                                          |
| 1993    | 猴島的秘密（[Sega CD平台](../Page/Sega_CD.md "wikilink")）                                               |                                                                                          |
| 1994    | 猴島小英雄2：老查克的復仇（FM Towns平台）                                                                       |                                                                                          |
| 1994    | 亞特蘭提斯之謎（FM Towns平台）                                                                             |                                                                                          |
| 6       | 1993                                                                                            | [瘋狂時代](../Page/瘋狂時代.md "wikilink")（DOS、Mac OS平台）                                         |
| 1993    | [妙探闖通關 大腳之謎](../Page/妙探闖通關_大腳之謎.md "wikilink")（DOS平台）                                           |                                                                                          |
| 7       | 1993                                                                                            | 妙探闖通關 大腳之謎（DOS光碟版）                                                                       |
| 1995    | [極速天龍](../Page/極速天龍.md "wikilink")（DOS平台）                                                       |                                                                                          |
| 1995    | [異星搜奇](../Page/異星搜奇.md "wikilink")（DOS平台）                                                       |                                                                                          |
| 1996    | 極速天龍（Mac OS平台）                                                                                  |                                                                                          |
| 1996    | 異星搜奇（Mac OS平台）                                                                                  |                                                                                          |
| 8       | 1997                                                                                            | [猴島的詛咒](../Page/猴島的詛咒.md "wikilink")（Windows平台）                                          |
|         |                                                                                                 |                                                                                          |

## 相關軟體

2004年一位名叫艾爾班·貝戴爾（Alban
Bedel）的人士開發出名為「ScummC」之[編譯器](../Page/編譯器.md "wikilink")，該編輯軟體可以用類似[JavaScrips程式語法](../Page/JavaScrips.md "wikilink")；來編輯設計出SCUMM架構的遊戲，而ScummC是以對應SCUMM第6版為主。\[7\]其它類似ScummC功能的編輯器工具則有「ScummGEN」。\[8\]

而網路上所流傳俱有[反編譯及編譯SCUMM遊戲功能的軟體則有Scummbler和ScummPacker](../Page/反編譯器.md "wikilink")，這些軟體可將由SCUMM製作遊戲的內容還原成初始[原始碼](../Page/原始碼.md "wikilink")，讓使用者可在原始碼中依自己的喜好添加額外的內容、或是將原內容改翻譯成其它在地語言的版本後，重新編譯成更版的遊戲。\[9\]\[10\]

其它像名為ScummSpeaks的工具，則可讓使用者自行錄製對白的語音檔案；給添加在遊戲當中。\[11\]

由瑞典程式設計師Ludvig
Strigeus在2001年開發的[ScummVM是可用於](../Page/ScummVM.md "wikilink")[Windows](../Page/Windows.md "wikilink")、[Linux](../Page/Linux.md "wikilink")、[OS
X等作業系統平台上執行SCUMM架構遊戲的](../Page/OS_X.md "wikilink")[直譯器軟體](../Page/直譯器.md "wikilink")，另外以ScummC開發的個人遊戲作品也可在ScummVM運行。\[12\]

## 參考資料

[Category:遊戲引擎](https://zh.wikipedia.org/wiki/Category:遊戲引擎 "wikilink")
[Category:電子遊戲研發](https://zh.wikipedia.org/wiki/Category:電子遊戲研發 "wikilink")

1.

2.

3.

4.
5.

6.
7.

8.

9.

10.

11.

12.