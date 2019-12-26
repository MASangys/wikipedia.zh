[MIDI_LOGO.jpg](https://zh.wikipedia.org/wiki/File:MIDI_LOGO.jpg "fig:MIDI_LOGO.jpg")\]\] [NoteNamesFrequenciesAndMidiNumbers.svg](https://zh.wikipedia.org/wiki/File:NoteNamesFrequenciesAndMidiNumbers.svg "fig:NoteNamesFrequenciesAndMidiNumbers.svg") **音樂數位介面**（Musical Instrument Digital Interface，簡稱**MIDI**）是一個工業標準的電子[通訊協定](https://zh.wikipedia.org/wiki/通訊協定 "wikilink")，為電子樂器等演奏裝置（如[合成器](../Page/合成器.md "wikilink")）定義各種音符或彈奏碼，容許[電子樂器](https://zh.wikipedia.org/wiki/電子樂器 "wikilink")、[電腦](https://zh.wikipedia.org/wiki/電腦 "wikilink")、[手機或其它的](https://zh.wikipedia.org/wiki/手機 "wikilink")[舞台演出配備彼此連接](https://zh.wikipedia.org/wiki/舞台 "wikilink")，調整和同步，得以即時交換演奏資料。

MIDI不傳送聲音，只傳送像是音調和音樂強度的數據，音量，顫音和相位\[1\]等參數的控制訊號，還有設定節奏的時鐘信號。在不同的電腦上，輸出的聲音也因音源器不同而有差異。

MIDI演出控制協議（MSC Protocol）是為MIDI而設的工業標準，由[MIDI產業協會在](https://zh.wikipedia.org/wiki/MIDI產業協會 "wikilink")1991年制定。它允許不同種類的媒體控制裝置在相互之間的通訊，借助電腦可以現場進行[演出控制的功能與](https://zh.wikipedia.org/wiki/演出控制 "wikilink")[娛樂](../Page/娛樂.md "wikilink")應用。與音樂MIDI相同，MSC並不傳輸實際顯示的媒體－ 它只是簡單地傳輸有關[多媒體性能的指令](https://zh.wikipedia.org/wiki/多媒體 "wikilink")。

現在幾乎所有的錄音工程都將MIDI作為一項關鍵開放技術來紀錄音樂。除此之外，MIDI也用來控制包括錄音設備的硬體，如舞台燈、效果器踏板等高性能的設備。近十年，MIDI已經堂堂邁入行動電話領域。MIDI用來播放支援MIDI行動電話的[鈴聲](https://zh.wikipedia.org/wiki/鈴聲 "wikilink")。MIDI還可為某些[電子遊戲](https://zh.wikipedia.org/wiki/電子遊戲 "wikilink")、[電腦遊戲提供背景音樂](https://zh.wikipedia.org/wiki/電腦遊戲 "wikilink")。

MIDI標準是在1981年由工程師向提出的一篇論文，MIDI 1.0於1983年8月發布。

MIDI使得[電腦](https://zh.wikipedia.org/wiki/電腦 "wikilink")、[合成器](../Page/合成器.md "wikilink")、[音效卡以及](https://zh.wikipedia.org/wiki/音效卡 "wikilink")[電子樂器](https://zh.wikipedia.org/wiki/電子樂器 "wikilink")(電子鼓、電子琴等)能互相控制、交换訊息。現在電腦的音效卡都是與MIDI相容的，並能逼真地模擬樂器的聲音。

許多音樂的[文件格式](https://zh.wikipedia.org/wiki/文件格式 "wikilink")，都建構於MIDI檔之上。這些格式可說就是電子樂器在看的電子樂譜，所以通常一個文件只需幾十KB，就能夠讓電子樂器演奏出一首很完整的音樂。

## 優點

MIDI標準協定建立於1980年早期，\[2\]對音樂家、錄音樂手、音樂愛好者帶來數個顯著的優勢。

  - **共通語言及語法**：[鍵盤樂器](../Page/鍵盤樂器.md "wikilink")，[電子鼓](https://zh.wikipedia.org/wiki/電子鼓 "wikilink")，[電腦](https://zh.wikipedia.org/wiki/電腦 "wikilink")，及其他為MIDI設計出來的特殊功能電子樂器之間可以輕易的相互連結

<!-- end list -->

  - **簡化的連結**：減少了音樂設備之間導線、信號線連結的複雜性（如音量控制）

<!-- end list -->

  - **更少的演出者**：1980年代初期，音樂演出者可以僅靠一至兩人進行現場演出，同時操作數台MIDI裝置，製造出像交響樂團般的演出效果\[3\]

<!-- end list -->

  - **更低的取得門檻**：使用者可以以更少的花費創作、編輯、製作高品質的數位音樂。專業的音樂家可以在家裡自己錄音，，不用花錢租[錄音室](https://zh.wikipedia.org/wiki/錄音室 "wikilink")，也不用請一堆樂手來幫忙錄音。\[4\]同時更讓沒音樂基礎的愛好者可以利用高度擴充性進行高品質錄音\[5\]\[6\]

<!-- end list -->

  - **方便可攜的電子音樂器材**：大量減少了樂手巡迴演出時所需攜帶的樂器、器材與線材的數量，在搬運、裝載、架設器材也簡易了許多，卻仍可以製造出相當的音色與效果.\[7\]

## 技術規格

MIDI產業協會在1982年八月制定最初的MIDI技術規格MIDI1.0 \[8\]此規格提供了音樂表演與控制所需的編碼，儲存，同步及傳輸應用在軟體和電腦硬體上的標準。這個標準提供了各項電子音樂器材之間互相溝通傳輸的有效途徑，並廣泛地運用至今。

### 現代MIDI技術規格

所有MIDI相容的樂器與控制器都遵循著同一個標準技術規格MIDI 1.0，以便讓所有的MIDI訊息可以得到一致化的解讀MIDI 1.0和[General MIDI藉由使用標準指令和參數消除了所有相容性議題](../Page/General_MIDI.md "wikilink")。

  - **硬體標準介面**：使硬體之間連接的傳輸線或轉接線獲致一致規格（[硬體介面](https://zh.wikipedia.org/wiki/硬體介面 "wikilink"), MIDI介面, MIDI傳輸線）。
  - **軟體標準介面**：包含用於儲存與傳輸的數位資料編碼結構。能以很快的速度傳輸音樂表演的重要資訊，也就是MIDI編曲時常處理的*control event*中各式各樣訊息。這些訊息包含了[音符](../Page/音符.md "wikilink")，[音高](../Page/音高.md "wikilink")，速度（velocity在此廣泛翻譯為力度，輕按1～重按127），參數控制訊號（像是音量，[顫音](https://zh.wikipedia.org/wiki/顫音_\(音樂\) "wikilink")，[相位](../Page/相位.md "wikilink"), [Cue](https://zh.wikipedia.org/wiki/Cue "wikilink")，以及計時器訊號，MIDI訊息, MIDI檔案）
  - **傳輸通訊協定**：用於傳輸與同步音符與控制碼事件（[MIDI機器控制碼](https://zh.wikipedia.org/wiki/MIDI_Machine_Control "wikilink"), [MIDI演出控制](https://zh.wikipedia.org/wiki/MIDI_Show_Control "wikilink"), [MIDI時碼](https://zh.wikipedia.org/wiki/MIDI_timecode "wikilink")）。
  - **樂器分類標準**：用來界定MIDI音符演奏出的音色，專業術語叫做*[Timbre](https://zh.wikipedia.org/wiki/Timbre "wikilink"), Patch*或*Program*，支配數位音符轉換成我們聽到的音色。例如有個音符演奏出鋼琴音色，另一個音符也許會以小提琴音色同時演奏出來。而爵士鼓與打擊樂器則編在一組音色（channel 10），以便於有效率地編出仿真人演奏的節奏樂句。同時它允許演出者運用輸入裝置*觸發器*來演奏出*音源器*裡的音色。一般情况下，相較於音源檔案，也就是音色波型檔，MIDI檔案明显更小。

## 歷史

約20世紀70年代末，電子樂器設備在北美，歐洲和日本日趨普及，一般人漸漸負擔得起。如[Roland公司的DCB](https://zh.wikipedia.org/wiki/Roland公司 "wikilink")和[Yamaha的](https://zh.wikipedia.org/wiki/Yamaha "wikilink")“Keycode”系統等等專利數位介面，創造了設備間的連通性。然而，這些介面都是同一製造商做的，所以在傳輸設計上一直無法有技術上的突破。

音響工程及合成器設計師Dave Smith（所屬公司），當他在設計一樣新的鍵盤合成器時，打算開發一種數位音樂標準規格－這算是MIDI的前身。當年Smith正在開發一種創新的（隨後發展為）。在當時，模擬合成器只能播放一次一個音符（或語音）。這種鍵盤利用旋鈕，開關和其他控制儀器直接控制聲音的音色。鍵盤上的輸出是一個單一的類比訊號，通過揚聲器播放時轉換成聲波。

Smith的創新，使的類比合成器出現了*[多重發聲數](https://zh.wikipedia.org/wiki/多重發聲數 "wikilink")*的版本，能夠在同一時間演奏大量音符。事實上，用了好幾個世紀的普通的鋼琴，風琴，吉他...等等樂器早就擁有這種多重發聲的能力。但Smith的版本卻是跨時代的創新。他的想法是使用數位控制系統。這個系統可以讓每個按鍵彈出不同音色，而且每個音色的參數都可以獨立調整。不單是單一校正，假如演奏者調整總控制平台的旋鈕，參數還可以同時調整所有的音色。鍵盤不再只是控制單一個音符，而是使用一個微處理器即時掃描所有按下的鍵，然後將信息轉換為音高，分配給每個音色。在這種方式下，演奏樂器的音樂家彈起來會覺得這根本是。

這種創新意味著兩個重要的事情：因為**所有的控制數位化**，其設定可以儲存為[習慣設定](https://zh.wikipedia.org/wiki/patches "wikilink")，合成器可以內建記憶體，可以存儲並立即套用。更重要的是，鍵盤、旋鈕、踏板和其他控制器不再只是製造聲音的單一迴路，制定單音合成器與多音合成器之間**通訊協定**的迫切需求也呼之欲出。

Smith洞察先機，指出樂器間只要有傳輸線與轉接插頭，便可以讓數位樂器之間進行資料傳輸；假若製造商可以統一[通訊協定此後無數的樂器與電子器材將可以藉由數位訊號溝通彼此](https://zh.wikipedia.org/wiki/protocol "wikilink")。因此，MIDI誕生了。

經過幾個月的美國和日本製造商之間的討論，在1981年11月，史密斯在紐約展提出了他的數位樂器標準。1983年1月冬季，史密斯更突破性地展示了他的Prophet600（一個突破性的的更高版本）和Roland JP-6之間的MIDI串接。MIDI Specification 1.0在1983年8月出版。\[9\]\[10\]

MIDI為了音樂市場帶來了前所未有的一致性，使音樂人徹底擺脫了追求發燒硬體的需求。\[11\] 在1980年代初，MIDI使的前衛搖滾音樂會的**合成器機櫃牆**時代告終，[电子琴手總算能重見天日](https://zh.wikipedia.org/wiki/电子琴 "wikilink")，不用躲在笨重的效果器機櫃後面羞於見人。隨著MIDI的來臨，許多合成器紛紛發行[機櫃版本](https://zh.wikipedia.org/wiki/19-inch_rack "wikilink")，這意味著，鍵盤手可以僅靠一台[电子琴控制許多不同的樂器](https://zh.wikipedia.org/wiki/电子琴 "wikilink")（如合成器）。

在20世紀80年代，MIDI促進了硬體和電腦編曲機的發展，它可以用來記錄，編輯和重現一場表演。在1983年批准MIDI規格後短短幾年，MIDI功能馬上被引進一些早期的電腦平台，包括[Apple II](../Page/Apple_II.md "wikilink")、[Apple II Plus和](../Page/Apple_II_Plus.md "wikilink")[Apple IIe](https://zh.wikipedia.org/wiki/Apple_IIe "wikilink")，蘋果[Macintosh](https://zh.wikipedia.org/wiki/Macintosh "wikilink")，Commodore 64上的Commodore的Amiga和[PC-DOS](../Page/PC-DOS.md "wikilink")。這使得以個人電腦為基礎的MIDI編曲市場得以迅速發展出強大且價格低廉的商品。Atari ST這款配備MIDI介面端子的電腦主機也因此在1985年左右，在[錄音室中被廣泛地使用](https://zh.wikipedia.org/wiki/錄音室 "wikilink")。SMPTE時間碼標準的實施，讓我們可以透過MIDI時碼，使MIDI編曲器之間可進行同步作業，MIDI時碼從此成為[數位音樂同步的標準](https://zh.wikipedia.org/wiki/數位音樂 "wikilink")。

MIDI產業協會於1991年批准（MSC）協議（在Real Time System Exclusive子集）。MSC的協議這個行業標準，這使得所有現場和預錄（對嘴）的表演活動，得以透過電腦即時控制各種類型的燈光[音響](../Page/音響.md "wikilink")及特效等媒體設備。和MIDI音樂原理一樣，MSC並不傳輸光線，煙幕或聲波：它只傳輸數位資訊，如類型，時間或Live Show專業指令（就是所謂的[Cue](https://zh.wikipedia.org/wiki/Cue "wikilink")）。

在90年代初期到中期間，網路頻寬還不足以拿來共享MP3，受限於網路頻寬，MIDI檔成為網路上分享音樂最受歡迎的格式，因為檔案很小，許多網路搜尋業者，以及MIDI粉絲架設的分享網站，嘗試規避版權問題，在隨後幾年也讓其他形式的線上音樂共享一起遭殃。

MIDI最初沒有提供指定音色。換句話說，每一個MIDI合成器有不同解讀方法，沒有所謂標準音色。例如，生產商可能希望通過[微軟的MIDI](https://zh.wikipedia.org/wiki/微軟 "wikilink")[數位合成器](https://zh.wikipedia.org/wiki/數位合成器 "wikilink")（包括任何Windows系統）播放MIDI檔時能發出相同或至少類似的音色。但因為不同廠商製造出來的合成器音色落差可能很大；甚至有人用內建音效卡，有人用錄音室等級高檔音源機，MIDI樂曲作者根本無從確認傳到大家耳中聽到的會是怎樣的聲音。

這種慘況成為1991年推出[General MIDI標準規格的動力](../Page/General_MIDI.md "wikilink")。它創建了128個大家熟悉的聲音類型（[鋼琴](https://zh.wikipedia.org/wiki/鋼琴 "wikilink")，[電子琴](../Page/電子琴.md "wikilink")，[吉他](../Page/吉他.md "wikilink")，[弦樂等等](https://zh.wikipedia.org/wiki/弦樂 "wikilink")）的一套標準。雖然廠商仍然無法決定鋼琴音質該多好，至少有一個標準的目標，以及這些音色的被分配到位置。

在MIDI發展史的前十幾年，電腦硬體配備水準無法發揮許多取樣音色或合成的聲音。專業的硬體過於昂貴;而音效卡雖然便宜，但卻是依靠很簡陋的合成運算方法產生的音色。“MIDI音色”也因此被一些評論家所詬病​​。

近年來，隨著電腦硬體配備的成熟，軟體音源也隨著日漸普及。以[蘋果電腦的](https://zh.wikipedia.org/wiki/蘋果電腦 "wikilink")[GarageBand為例](https://zh.wikipedia.org/wiki/GarageBand "wikilink")，內建的General MIDI[軟體音源已經和真實樂器相去不遠](https://zh.wikipedia.org/wiki/軟體音源 "wikilink")，連不熟悉樂器演奏方式的初學者，也可以靠著預錄樂句的堆疊，輕易的編排出以假亂真的作品（那些音源基本上就是真實樂器演奏錄製的）。所以90年代音色窘境已逐漸消失。

MIDI科技由MIDI製造商協會（MMA）進行標準化作業和維持。所有官方MIDI標準，由MMA在洛杉磯，加州，美國，日本，音樂電子工業協會（AMEI）在東京的MIDI委員會共同開發且同步公告。

MIDI主要參考的是完整的MIDI 1.0詳細規格，文檔版本96.1，只找得到英文版MMA，或日文版AMEI。雖然以前的MMA網站提供免費下載所有MIDI規格，現在基本詳細規格連結卻已被刪除，我們只能去買實體的參考書籍。然而，大量的輔助材料可以在網站上免費取得。

## 應用

### 標準應用

  - **Electronic keyboards（電子琴）**：將[合成器和](https://zh.wikipedia.org/wiki/Synthesizer "wikilink")[取樣器內建在电子琴裡](https://zh.wikipedia.org/wiki/取樣器 "wikilink")，叫做[MIDI鍵盤](https://zh.wikipedia.org/wiki/MIDI鍵盤 "wikilink")（又叫*MIDI控制器*），或.
  - **[個人電腦](https://zh.wikipedia.org/wiki/個人電腦 "wikilink")**(PC)：裝配了內部MIDI相容裝置[音效卡](https://zh.wikipedia.org/wiki/音效卡 "wikilink")
  - **MIDI介面**：用來外接在沒有內建MIDI功能的裝置。例如應用在[USB](../Page/USB.md "wikilink")、[FireWire介面的外接音效卡](https://zh.wikipedia.org/wiki/FireWire "wikilink")。另外運用在的輸出，[麥克風的輸入](https://zh.wikipedia.org/wiki/麥克風 "wikilink")，[TOSLINK　optical audio cable等](https://zh.wikipedia.org/wiki/TOSLINK_optical_audio_cable "wikilink")。
  - ****：外觀看起來像[混音器運用在](https://zh.wikipedia.org/wiki/混音器 "wikilink")或是現場演出的混音輸出，擁有許多參數控制的旋鈕或控制器用以調整各軌道的效果器或是音量大小。
  - **[效果器](../Page/效果器.md "wikilink")**：應用在[迴音](https://zh.wikipedia.org/wiki/迴音 "wikilink"), ,合唱等等效果器，可模擬出像是大廳、川堂、浴室、單人模擬合唱團或甚至飛機起飛等特殊音效。
  - **[電子鼓](https://zh.wikipedia.org/wiki/電子鼓 "wikilink")**：在打擊板上安裝[觸發器](https://zh.wikipedia.org/wiki/觸發器 "wikilink")，對應到真實打擊樂器或打擊音效[斷音](https://zh.wikipedia.org/wiki/斷音 "wikilink")。經常會內建節奏樂句在鼓機或（又作"beat boxes"）。
  - **其他樂器**：非傳統樂器或[DIY](../Page/DIY.md "wikilink")的自製MIDI裝置，或是可以擁有MIDI轉接（轉譯）能力的裝置。例如MIDI吉他和MIDI小提琴。

## 簡介MIDI運作

### MIDI音軌訊息的運作

[Nuvola_mimetypes_midi.png](https://zh.wikipedia.org/wiki/File:Nuvola_mimetypes_midi.png "fig:Nuvola_mimetypes_midi.png") 當MIDI播放器演奏了一個音符的時候，它隨之將音符轉換成MIDI信息。一個典型的由鍵盤獲取的音符的MIDI信息的過程包括：

1.  用户以特定速率（又譯，力度-velocity）演奏中央C音符。
2.  用户改變按壓鍵盤按键的力度-這個技術稱為鍵後觸感（aftertouch）。
3.  用户釋放並停止演奏中央C音符。

MIDI信息傳輸速率達到每秒31250位。同時其它的相關參數也一起被轉換。例如，有所變化的時候，這個信息也将在MIDI信息中有所呈現。只要演奏者演奏音符，樂器就可以自主的完成這樣的數據處理工作。

樂器所演奏的所有音符根據其音名和音程的不同，都有特定的MIDI信息。例如，任何樂器演奏的中央C音符，它的MIDI信息都是一致的。使得它所生成的二進位訊號也保持一致，數位標準化的傳輸方法是MIDI標準的核心。

所有的MIDI樂器都遵循MIDI規範說明，使得其生成的MIDI信息能夠明確的指明具體的音符。借助這樣的標準與協議，所有的MIDI樂器可以相互交换信息，同時也可以和MIDI相容的電腦進行訊號交换。MIDI接口用於將當前MIDI樂器生成的MIDI訊號轉換成二進位代碼，以讓接收端的MIDI樂器或電腦識別處理。所有的MIDI樂器都有內建接頭。另外，過去電腦的音效卡通常也具有這種內建的MIDI 5pin接口，現在則逐漸被[USB](../Page/USB.md "wikilink")與[IEEE 1394介面取代](https://zh.wikipedia.org/wiki/Firewire "wikilink")。

## MIDI文件格式

MIDI訊息（包含時間資訊）會被收集和儲存在一個[電腦檔案](../Page/電腦檔案.md "wikilink")裡，而這個檔案稱為一個MIDI文件，或者更正式地說，一個標準MIDI文件（Standard MIDI File，簡稱**SMF**）。

## 參考文獻

[Category:標準](https://zh.wikipedia.org/wiki/Category:標準 "wikilink") [Category:介面_(資訊科技)](https://zh.wikipedia.org/wiki/Category:介面_\(資訊科技\) "wikilink") [Category:電子音樂](https://zh.wikipedia.org/wiki/Category:電子音樂 "wikilink") [Category:MIDI](https://zh.wikipedia.org/wiki/Category:MIDI "wikilink") [Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink") [Category:音频格式](https://zh.wikipedia.org/wiki/Category:音频格式 "wikilink") [Category:日本發明](https://zh.wikipedia.org/wiki/Category:日本發明 "wikilink")

1.  [1](http://www.rolandtaiwan.com.tw/glossary/p.htm)
2.  [History of MIDI](http://www.midi.org/aboutmidi/tut_history.php)
3.  [*Mixdown Monthly,* \#26, June 26, 1996.](http://www.pertout.com/Midi.htm)
4.  [*How Making Music with MIDI Works,* from HowStuffWorks.com](http://entertainment.howstuffworks.com/midi.htm)
5.  [*What Is Midi?* From www.homemusician.net](http://www.homemusician.net/articles/what_is_midi_page1.html)
6.  [*MIDI Multi-Track Recording Software,* from HowStuffWorks.com](http://entertainment.howstuffworks.com/midi3.htm)
7.  [*What is MIDI?* from www.wisegeek.com](http://www.wisegeek.com/what-is-midi.htm)
8.  [The Complete MIDI 1.0 Detailed Specification](http://www.midi.org/techspecs/midispec.php)
9.
10.
11.