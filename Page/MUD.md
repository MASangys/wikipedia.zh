**MUD**（），原指**多使用者迷宮**（Multi-User Dungeon），後又被稱為**多使用者空間**（Multi-User
Dimension）與**多使用者領土**（Multi-User
Domain），台灣使用者通常直接稱呼為MUD。通常將縮寫字直譯為「網路泥巴」或是簡稱「泥巴」（英文mud的意思為泥巴）。MUD是一款多人即時的虛擬世界，通常以文字描述為基礎。MUD結合了[角色扮演](../Page/角色扮演游戏.md "wikilink")、[砍殺](../Page/砍殺遊戲.md "wikilink")、[玩家與玩家對戰](../Page/玩家對戰.md "wikilink")、[互動小說與](https://zh.wikipedia.org/wiki/文字冒险游戏 "wikilink")[線上聊天等元素](https://zh.wikipedia.org/wiki/网络聊天 "wikilink")，玩家可以閱讀或檢視房間、物品、其他玩家、非玩家角色的描述，並在虛擬世界中做特定動作。玩家通常會透過輸入類似自然語言的指令來與虛擬世界中的其他玩家互動。

傳統的MUD實現了一個在幻想的世界居住著虛構的種族與怪物的角色扮演遊戲，玩家可以選擇職業來獲得特定的技能或力量。這種遊戲的目標是要殺死怪物、探索幻想的世界、完成任務、去冒險、透過角色扮演來構成故事並升級已建立的角色。許多
MUD採用了[龍與地下城系列遊戲的職骰規則做為決定人物屬性的基礎](../Page/龙与地下城.md "wikilink")。

使用幻想的背景設定對MUD來說是常見的，許多人使用了科幻小說的背景設定或以熱門的書籍、電影、動畫、歷史、居住者擬人化動物的世界等等的題材。
並非所有的MUD都是遊戲，有一部份MUD是設計做為教育用途的、有些則為純聊天的環境，並由於MUD伺服器彈性的特色使得MUD偶爾也使用者在計算機科學、地理資訊、醫療資訊、分析化學等領域。MUD吸引了來自各個領域的學術學者包含通訊、社會學、法律與經濟。同時美國的軍隊也對使用MUD來做電話會議感到興趣。

大多數的MUD都是有興趣的人士所經營並可免費遊玩，有部份會接受捐贈或允許玩家購買虛擬物品，其餘的部份則會收取月費。MUD可以透過標準的
[telnet](https://zh.wikipedia.org/wiki/telnet "wikilink")
用戶端程式來連線，或使用為了提升使用者體驗所特別設計的MUD用戶端程式。在許多網站的入口都可以取得MUD遊戲的清單，如:
The Mud Connector。

現代大型多人線上角色扮演遊戲（MMORPGs）如
"[無盡的任務](../Page/无尽的任务.md "wikilink")"、"[網路創世紀](../Page/网络创世纪.md "wikilink")"
及虛擬世界相關的遊戲，如社交虛擬世界
"[第二人生](../Page/第二人生_\(互聯網\).md "wikilink")"，都可往前追溯到MUD時代。確實，在發明
MMORPG這個名詞之前，這些風格的遊戲其實就被簡單稱呼為圖型化MUD。有許多具影響力的
MMORPG設計師也都源自於MUD的開發者或者玩家（如Raph
Koster, Brad McQuaid, Matt Firor與Brian Green）或者參與早期的MUD（如Mark Jacobs與 J.
Todd Coleman）。

## 概念

狹義的MUD指的是類似於1978年的MUD1遊戲，直接使用[終端機模擬程式](https://zh.wikipedia.org/wiki/終端機 "wikilink")（如[telnet](https://zh.wikipedia.org/wiki/telnet "wikilink")）即可進行的連線遊戲，主要利用文字敘述的方式呈現。玩家扮演[虛擬世界中的角色](https://zh.wikipedia.org/wiki/虛擬世界 "wikilink")，系統會輸出一段簡短文字描述玩家所處位置的場景，而玩家也藉由輸入英文單字（或縮寫）組成的命令與之互動。以中文MUD常見的LPMud系統為例，系統顯示：

`你來到一處森林中的空地，東邊有一株大樹，樹上垂下一條粗繩。`
`你的北邊遠處有一道炊煙升起。`
` `
`這裡明顯的出口是south和north。`

`> `

玩家可以在提示符號"\> "之後輸入各式命令，例如go
north（往北移動）。系統處理後會再次輸出該角色新的位置所處場景，以及接受下一個命令的提示符號...如此循環進行遊戲。玩家的角色在虛擬世界中進入到同一場景，也可能會遭遇到**其他玩家**所扮演的角色，並可藉由各式命令與之互動或交談。以戰鬥為導向的MUD甚至也允許玩家之間的戰鬥行為。

MUD系統主要由一個[伺服器負責處理所有虛擬世界的相關運算](https://zh.wikipedia.org/wiki/伺服器 "wikilink")，使用者在[客戶端執行的終端機模擬程式僅負責顯示伺服器傳回的訊息](https://zh.wikipedia.org/wiki/客戶端 "wikilink")，以及將玩家輸入的命令傳送至伺服器端。

由於這種允許多位使用者各自操縱虛擬角色，並且在相同的虛擬世界中進行互動（戰鬥）的概念，直接促成了二十世紀90年代末期以圖形顯示介面為訴求的[線上遊戲商業營運模式](https://zh.wikipedia.org/wiki/線上遊戲 "wikilink")（如：Meridian59,
EverQuest, Dark Age of Camelot），因此線上遊戲可視為廣義的MUD其中一種，而MUD則為現代線上遊戲的始祖與雛形。

## 發展

### AberMUD

第一套受歡迎的 MUD 程式庫為 AberMUD，由[艾倫·考克斯撰寫於](../Page/艾倫·考克斯.md "wikilink") 1987
年，以[阿伯里斯特威斯大學命名](../Page/阿伯里斯特威斯大學.md "wikilink")。[艾倫·考克斯曾玩過原始的](../Page/艾倫·考克斯.md "wikilink")[艾塞克斯大學](../Page/艾塞克斯大學.md "wikilink") MUD，該遊戲體驗影響他非常深遠。AberMUD
最初使用 B 語言所搛寫，可在 Honeywell L66 大型主機上於 GCOS3/TSS 環境下執行。於 1988 後期，將其程式改寫為 C
語言，在 1989 年釋出後使該 MUD 快速的散佈至各種 [Unix](../Page/UNIX.md "wikilink")
平台。AberMUD 受歡迎的程度啟發了 MUD 的發展，較值得一提的為 TinyMUD、LPMud 以及
DikuMUD<sup>。</sup>

### TinyMUD

Monster 是一款多人冒險遊戲由 Richard Skrenta 所使用 VMS Pascal 搛寫，可於
[VAX](../Page/VAX.md "wikilink") 上執行。該遊戲於 1998 十一月正式發佈。Monster
以磁碟為基礎，可立即對遊戲進行修改。 Monster 是第一個採用能讓玩家建立遊戲世界方法的
MUD，設定新的迷宮或建立地牢讓玩家們探索。 Monster 使用了 60,000 行程式碼撰寫，有許多功能的設計是為了讓
Colossal Cave Adventure 的功能能夠運作其中。雖然一直沒有很多可網路存取的 Monster 伺服器，但它啟發了 James
Aspnes 建立一個簡易版本的 Monster 稱為 TinyMUD。

TinyMUD 使用 C 語言所搛寫，發佈於 1989 年並衍伸了許多版本，包含 TinyMUCK 與 TinyMUSH。TinyMUCK 第
2 版大量了擴展指令介面的同時也內含了完整的稱為 MUF (Multi-User Forth) 的程式語言。為了與以戰鬥為導向的傳統 MUD
做區隔，在 TinyMUD 中的 "D" 代表多使用者 "領域" 或 "空間"，也隨著縮寫最終比其他 MUD (如
MUCK、MUSH、MUSE 等) 這類伺服器器普及，導致最終 MU\* 一詞被採用來指 TinyMUD 家族。後來的
UberMUD、UnterMUD 和 MOO 都是受到 TinyMUD 啟發所衍伸，但不屬於 TinyMUD 直系後裔。

### LPMuD

於 1989 年由 Lars Pensjö 所開發出 LPMud  (因此稱作 LPMud)。Pensjö 曾經是 TinyMUD 及
AberMUD 的玩家，並且想建立一個世界擁有 TinyMUD 的彈性以及 AberMUD
的遊戲性。為了完成這個目標他搛寫了現今被稱作虛擬機器的
LPMud 遊戲引擎，可以執行類 C 語言的 LPC 程式語言來建立遊戲世界。隨著 Pensjö 對 LPMud 的興趣減弱，後續由其他人如
Jörn "Amylaar" Rennecke, Felix "Dworkin" Croes, Tim "Beek" Hollebeek 與
Lars Düning 接續開發。

在 1990 早期時，LPMud 曾是最熱門的 MUD 程式庫之一。 衍伸自 LPMud 的包含 MudOS, DGD, SWLPC,
FluffOS 及 Pike 程式語言，最後一項長期由 LPMud 開發者 Fredrik "Profezzorn" Hübinette
所開發。

### DikuMUD

於 1990 發佈的 DikuMUD 是受到 AberMUD 的啟發所產生。導致以其程式碼為基礎的砍殺類型 MUD 虛擬爆炸，DikuMUD
啟發了許多衍伸的程式庫，包含  CircleMUD, Merc, ROM, SMAUG, 及 GodWars。 原來的 Diku 團隊由
Sebastian Hammer, Tom Madsen, Katja Nyboe, Michael Seifert, 及 Hans
Henrik Staerfeldt 組成。DikuMUD 對最早期的 MMORPG 類型遊戲發展具有關鍵的影響，EverQuest (由
DikuMUD 的狂熱玩家 Brad McQuaid 所開發) 展現現了類 Diku 的遊戲性，Verant 開發者發表聲明說明該遊戲未實際使用
DikuMUD 的程式碼。

## 遊戲方式

典型的 MUD 會透過文字描述告訴您所在的空間或區域，列出該區域的物品、玩家與 NPC 以及出口。為了要完成任務玩家會輸入文字命令如
**take apple** 或 **attack dragon**。 在遊戲的環境移動一般會輸入玩家想要移動的方向
(或者該方向的縮寫)，例如輸入 **north** 或者只輸入
**n**，會使玩家從目前區域透過該路徑移動至北方。

MUD 的用戶端程式通常含有可讓簡易完成動作的功能，例如指令按鈕可讓點用滑鼠點選的方式移動到指定方向或者撿起某樣物品。
也有些工具可以加入快速鍵到 telnet 或 MUD
用戶端，讓玩家能夠使用鍵盤的方向鍵移動。

## 風格

MUD 按照其遊戲內容，主要可分為以下類型：

  - 砍殺型 MUD
  - 玩家與玩家對戰 MUD
  - 角色扮演 MUD
  - 社交型 MUD
  - 聊天型 MUD
  - 教育型 MUD
  - 圖型化 MUD

## 相關術語及次文化

  - 大神
    MUD系統的最高管理者。這些管理者出現在MUD虛擬世界中往往冠以大神或類似的頭銜，以彰顯其地位。大神通常掌握MUD系統所有程式的原始碼、啟動或關閉MUD伺服器、以及賦予其他使用者各種權力的能力。

<!-- end list -->

  - 巫師
    MUD系統中的管理者或內容創作者。主要出現於LPMud類型的虛擬世界，在DikuMud中類似的管理者有時稱為IMM（英文Immortal的簡稱）。巫師通常能夠對虛擬世界進行有限度的修改與擴充，其權限主要視MUD系統的設計（由大神賦予）而異。較大規模的MUD通常會另外設置「大巫師」之類的身分，下轄其他巫師。

<!-- end list -->

  - PK
    即英文**Player Killing**的縮寫，或者稱為PvP（Player versus
    player），意思是[玩家對玩家戰鬥](https://zh.wikipedia.org/wiki/Player_versus_player "wikilink")。由於這類活動可能導致其中一方玩家所扮演的角色在虛擬世界中「死亡」，虛擬角色死亡時，通常會帶給玩家若干損失或時間上的浪費，因此「是否允許PK」、「PK對敗（勝）方虛擬角色造成的損失」經常成為爭議的話題。

<!-- end list -->

  - emote
    在MUD中玩家之間進行交流，爲了方便表達情感而預先定義了一系列的命令。譬如输入laugh
    tester,那麼ID是tester的玩家將在螢幕上看到：某某對著你哈哈大笑，仿佛看到了什麽世間最可笑的事情。

<!-- end list -->

  - 機器人
    英文ROBOT的縮寫。由於網絡遊戲需要很多重複工作的特點，MUD中發展出了高度智能化的機器人，以替代玩家與系統進行交互。設計機器人涉及相當複雜的電腦知識，其中的佼佼者可以實現無干預的全自動代替玩家進行遊戲。

## 中文MUD發展歷史

### 萌芽階段（1992-1993）

華文地區的MUD最早出現在1992年，由台灣的中央大學機械系學生張英豪（Aurona）所架設的**Formosa**。採用的系統是SillyMUD（衍生自DikuMUD系統）。同年稍後出現的是台灣的成功大學由麥樹翔（MSC）與金昌理（CCC）使用MERC
1.0（衍生自DikuMUD）所架設的無標題MUD。這兩個MUD都是英文顯示場景等訊息，並且只允許輸入英文。

在1993年台灣陸續又出現多個以英文顯示的MUD：較知名的有[台灣大學的](https://zh.wikipedia.org/wiki/台灣大學 "wikilink")*龍域傳奇*（DragonRealm，又稱為3000，衍生自MERC），新竹[交通大學的](https://zh.wikipedia.org/wiki/交通大學 "wikilink")*風之王國*（Realm
of Winds，又稱為4000，衍生自MERC）、**風之傳說**（Legend of
Winds，又稱為4040，衍生自MERC）。其中當時就讀於交通大學管理科學系的學生張民欣（**Annihilator**，**阿奈雷特**）開始嘗試對*風之傳說*的MERC的程式碼進行修改，並成功使MUD首度具備顯示及輸入中文的能力。*風之傳說*支援中文顯示及輸入的功能，很快吸引了大量的玩家並且成為當時同時上線人數最多的MUD站。與此同時Annihilator也對*風之傳說*原本的D\&D風格遊戲系統（MERC）進行的較大幅度的擴充，加入了包括兼職、新種族、新職業等設定，也吸引了不少歐美玩家進駐。

### 嘗試創作階段（1993-1994）

由於MERC所屬的DikuMUD系統主要以C語言開發，每當需要更新程式時，就必須關閉伺服器重新啟動。這個限制漸漸無法滿足台灣MUD愛好者的需求。而MERC內附的大量預設場景，更重複出現在所有使用MERC系統的中，也難以滿足玩家喜好新鮮的需求。

於1993年年底，Annihilator引進了新的LPMUD系統，在交通大學的伺服器上開設一個名為*東方故事*的MUD站。*東方故事*採用當時流行於歐美地區的MudOS系統以及TMI
Mudlib，Annihilator並對MudOS進行修改使其具有處理中文的功能。LPMUD和DikuMUD的主要差別在於伺服器程式區分為**mudlib**和**driver**兩部分：mudlib使用腳本式的LPC語言撰寫，主要負責與遊戲內容相關的運算，driver使用C語言撰寫，提供LPC語言的直譯器。這種架構實現了更新遊戲內容時，不需要關閉伺服器重新啟動的特性，使得MUD開發者與玩家能夠同時在線上進行活動。

此外，有別於當時其他的MUD，*東方故事*完全捨棄了TMI
Mudlib內附的遊戲內容，而是自行創作一個全新的故事背景與時空，提供原創的遊戲內容。由於遊戲內容並非翻譯自歐美的創作，*東方故事*也是第一個將中國[武俠題材納入線上遊戲內容的電腦遊戲](https://zh.wikipedia.org/wiki/武俠 "wikilink")。

於此同時，台灣DikuMUD系統的發展也方興未艾，1994年4月4日，*時空之門* MUD（The
Ages，玩家暱稱4444）出現在交通大學，為第一個有婚姻系統、支援ANSI字元色彩控制碼、使用MERC
2.0架構的DikuMUD。同年11月21日，MUD
*四度空間*（void，俗稱7777）亦在交通大學網路策進會（CCCA）的支持下於交大誕生，
其主要創作者是三位當時才大二的交大學生王建興（Qing）、麥文偉（Winwell）及曾玠郡（Gen），*四度空間*以MERC
2.2為核心，並以特有的技能樹系統取代傳統的職業系統，這在當時而言是一大創舉。

### 武俠風潮（1994-1997）

1994年Annihilator轉學到台灣大學資訊工程學系，鑒於TMI mudlib的遊戲系統對於武俠題材的呈現方式限制太多，乃捨棄TMI
mudlib而重新自行開發一個全新的mudlib系統，稱為**[東方故事2天朝帝國](https://zh.wikipedia.org/wiki/天朝帝國_\(MUD\) "wikilink")**（[1](https://web.archive.org/web/20170127050953/http://es2.muds.net/)），簡稱**ES2**。

ES2放棄了TMI
mudlib龐大複雜的物件繼承樹，改採輕薄短小的扁平式組織。這些技術上的改進大幅度提昇了LPMUD系統的運行效能，使得*東方故事2*的上線人數，超過了當時其他的DikuMUD系統（DikuMUD為C原始碼編譯而成，LPMUD則需透過LPC直譯器，理論上DikuMUD在效能上應具優勢），加上Annihilator以[開放原始碼方式釋出其mudlib](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")，造成台灣的LPMUD站如雨後春筍般紛紛誕生，而DikuMUD系統則逐漸式微。

受ES2釋出原始碼的影響所及，LPMUD在包括北美、大陸、台灣等華文地區造成流行。直到目前大多數的中文LPMUD仍直接或間接受ES2的影響，尤其是中國大陸地區。

1995年底，一群以[方舟子為首的北美中国留学生下載了ES](../Page/方舟子.md "wikilink")2
mudlib，以[金庸的小说为背景编写出了](../Page/金庸.md "wikilink")**[侠客行](https://zh.wikipedia.org/wiki/侠客行 "wikilink")**。之后很快出现了许多分站，总上线人数常有数千，风头一时无两。以侠客行源代码改编而成的中文MUD包括[西游记](https://zh.wikipedia.org/wiki/西遊記MUD "wikilink")、风云、金庸群侠传、終極地獄（doing），以及2000年建立的[香港侠客行等](https://zh.wikipedia.org/wiki/香港侠客行 "wikilink")。侠客行至今仍是用户最多的中文MUD之一。1996年5月，**[侠客行](https://zh.wikipedia.org/wiki/侠客行 "wikilink")**代碼洩露，依據這份洩露的代碼，大陸創建了大量的各式各樣改編的MUD。其中又誕生了西遊記和風雲這兩個分別取材西遊記和古龍小說背景的極其成功的分支。而在俠客行傳統體系下則誕生了諸如俠客行100，俠客行2000，北大俠客行等優秀MUD。所有這些MUD都採用LPMUD和MUDOS。

### 圖形化時代（1997\~）

1996年原在*東方故事*擔任巫師的台灣清華大學學生陈光明（Ruby）、黄于真（Onyx），以ES2
mudlib釋出的程式碼為基礎，開設了一個學術實驗性質濃厚的MUD站**[萬王之王](../Page/萬王之王_\(1996年遊戲\).md "wikilink")**，主要目的在於驗證Onyx碩士論文所研究的「高效能分散式系統」。藉由進一步的改善LPMUD與ES2
mudlib的程式技術，將LPMUD的效能又往前推進了一大步。隨著電腦硬體的進步，同時上線人數不斷提昇的結果，也開啟了線上遊戲商業化營運的可行性。

1998年四月，採用分散式系統架構的萬王之王的同時上線人數首度突破千人（同時期單一伺服器系統的*東方故事2*上線人數約250人），但伴隨而來的硬體費用、網路使用權等問題，迫使Ruby展開首度的募款活動。該次活動共募得台幣235770元，用於解決*萬王之王*伺服器所需的硬體費用。

同年十二月，圖形化的萬王之王推出Alpha測試版，並且於1999年七月由雷爵資訊股份有限公司於台灣上市。

在大陸，2000年，網易公司收购天下公司，基于《天下MUD》開發出了《大话西游》和《夢幻西遊》的圖形網遊，大獲成功，很长一段时间是網易重要的收入來源之一。原**[俠客行](../Page/俠客行.md "wikilink")**巫師-天帝董曉陽在2003年开发出图形MUD《侠客天下》，至今还在运营，仍有很多忠实老玩家。

在圖形化大行其道的今天，傳統意義上，以文字作為介面的MUD依然繁榮。根據最新的統計，在中國大陸和台灣，依然有數百個站點，總計上萬在線玩家。MUD雖然小眾化，但其魅力依然不減。有些MUD連續開放時間已經超過數十年，很多玩家也持續的玩了數十年之前。譬如著名的北大俠客行，至今依然有數百玩家在線遊戲，其中大部份都是從1996年就進入的玩家。

## 相關主題

  - [電子遊戲術語](https://zh.wikipedia.org/wiki/電子遊戲術語 "wikilink")

## 參考資料

## 外部連結

  - [臺灣泥巴列表](http://www.revivalworld.org/mud/taiwanmudlist)
  - [中文MUD列表](http://bbs.mudbuilder.net:8880/home.php?pageid=mudlist)
  - [中文MUD大全](https://mudchina.github.io/)

[Category:MUD](https://zh.wikipedia.org/wiki/Category:MUD "wikilink")
[Category:电脑游戏](https://zh.wikipedia.org/wiki/Category:电脑游戏 "wikilink")
[Category:網路遊戲](https://zh.wikipedia.org/wiki/Category:網路遊戲 "wikilink")
[Category:电子游戏类型](https://zh.wikipedia.org/wiki/Category:电子游戏类型 "wikilink")
[Category:電子角色扮演遊戲](https://zh.wikipedia.org/wiki/Category:電子角色扮演遊戲 "wikilink")
[Category:大型多人在线角色扮演游戏](https://zh.wikipedia.org/wiki/Category:大型多人在线角色扮演游戏 "wikilink")