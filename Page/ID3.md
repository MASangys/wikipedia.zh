**ID3**是一种[metadata容器](https://zh.wikipedia.org/wiki/metadata "wikilink")，多应用于MP3格式的音频文件中。它可以将相关的曲名、演唱者、专辑、音轨数等信息存储在MP3文件中，又稱作「ID3Tags」。

ID3也被[蘋果公司指定為](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[HTTP Live Streaming中的時間](../Page/HTTP_Live_Streaming.md "wikilink")[後設資料](https://zh.wikipedia.org/wiki/後設資料 "wikilink")，在主要的[傳輸流或單獨的音頻傳輸流中作為](../Page/MPEG2-TS.md "wikilink")乘載。

ID3一般位于一个mp3文件的开头或末尾的若干字节内，附加了关于该mp3的歌手，标题，专辑名称，年代，风格等信息，该信息就被称为ID3信息。ID3信息分为两个版本，v1和v2版。其中： v1版的ID3在[mp3文件的末尾](https://zh.wikipedia.org/wiki/mp3 "wikilink")128字节，以TAG三个字符开头，后面跟上歌曲信息。v1.1版將「評論」欄位縮短，增設「曲目」欄位。v2版則和v1版截然不同，其通常將一系列可擴展的資料框架（frames）儲存在檔案開頭，而每一塊資料框架都有當作辨識標籤的、大小約3到4個位元組的字串，以及其所儲存的資料。在最新的ID3v2.4版本中，總共宣告有83種資料框架，而使用者也可以自訂屬於自己的資料框架。目前總共有三種版本的ID3v2，其中每一版都有對資料框架的定義進行擴展。

ID3是mp3檔案後設資料自然而然發展出來的[事實標準](https://zh.wikipedia.org/wiki/事實標準 "wikilink")；其成品並沒有包含任何的實質規範，也沒有任何組織給予其正式的批准或認證。其與[APE tag在音樂檔案的後設資料標籤領域互相角逐](../Page/APE_tag.md "wikilink")。

## ID3v1

MP3並未預設儲存檔案後設資料的方式。在1996年，埃里克·肯普（Eric Kemp）想要在音訊檔案後方加入一小串資料，也因此解決了這個問題。這個方法就是現在的ID3v1，很快就變成了MP3檔案儲存後設資料的事實標準\[1\]。一個開發控制台遊戲系統的地下組織「傷害控制論」（Damaged Cybernetics）宣布了格式。因為所有已開發的控制台ROM都沒有任何的辨識資訊，所以他們創造了一個標籤系統來讓其更容易查找。埃里克和合作夥伴們將其帶進MP3檔案中。這種格式被應用在許多當時格式不明的檔案當中。

ID3v1標籤總共佔據128個[位元組](https://zh.wikipedia.org/wiki/位元組 "wikilink")，接在檔案的末尾以維持檔案在舊版的[媒體播放器中的兼容性](https://zh.wikipedia.org/wiki/媒體播放器 "wikilink")。有些播放器會在讀取到這些標籤時誤認為音訊檔而產生一些雜音，不過大部分的播放器和幾乎全部的現代播放器都會正確地跳過標籤。標籤有30位元組用來儲存標題、演唱者、專輯以及「評論」，4個位元組儲存年分，以及一個位元組儲存歌曲的[藝術類型](../Page/藝術類型.md "wikilink")。預設有80種藝術類型，[Winamp](../Page/Winamp.md "wikilink")後來將其擴展到總共148種。

在1997年，邁克爾·邁克塞勒對ID3v1做了一些改進。因為評論欄位實在是小到不可能寫出一些有用的東西，所以他乾脆拿掉兩個位元組來儲存「曲目」。這種標籤被稱作**ID3v1.1**\[2\]。

### 格式

字串由空格或零填充。未設置的選項會填入空字串。ID3v1總長為128個位元組\[3\]。

| 區域        | 長度         | 描述                                  |
| --------- | ---------- | ----------------------------------- |
| 開頭        | 3          | 「*TAG*」，標籤。                         |
| 標題        | 30         | 歌曲標題，最多30個英文字元。                     |
| 藝術家       | 30         | 作曲或演唱者的名字，最多30個英文字元。                |
| 專輯        | 30         | 專輯名稱，最多30個英文字元。                     |
| 年分        | 4          | 西元年分，四個數字。                          |
| 評論        | 28\[4\]或30 | 就是評論。                               |
| 零位元組\[5\] | 1          | 如果有儲存曲目，那麼這個位元組會儲存一個二進位的0。          |
| 曲目\[6\]   | 1          | 這首歌在該專輯中的曲目，或者為0。若前一個位元組非零，則此欄內容無效。 |
| 藝術類型      | 1          | 一系列藝術類型清單中的編號數，預設為255。              |

ID3v1預設了一系列的藝術類型，以數字作為索引。[Winamp](../Page/Winamp.md "wikilink")在自家的音樂播放器加入更多選項到該清單中，後來其他播放器也隨之跟進；有一部份的值沒有標準規範\[7\]。不過，並非全世界都支援Winamp的擴展清單。有時候，有些播放器只支援到125種藝術類型\[8\]。

### 擴展標籤

擴展標籤（extended tag）是位於ID3v1標籤前的額外資料區塊，其將標題、藝術家與專輯欄位各自擴展到60個位元組長度，提供可自由輸入文字的藝術類型欄位、一位元組大小的曲速（值為0到5）以及MP3檔案的起始與結束時間。如果以上的區域都沒有被使用，那麼這個資料區塊就會自動被省略。

有些支援ID3v1的程式也可以讀到擴展標籤，不過寫入時可能會在擴展區塊中留下過舊的值。擴展區塊並非官方標準，而且只有少數程式支援，不包含[XMMS](../Page/XMMS.md "wikilink")或[Winamp](../Page/Winamp.md "wikilink")。擴展標籤有時也被稱作「補強標籤」（enhanced tag）。

擴展標籤總長227個位元組，並且位於ID3v1標籤之前。

| 區域   | 長度 | 描述                        |
| ---- | -- | ------------------------- |
| 開頭   | 4  | 「*TAG+*」，代表其為擴展標籤。        |
| 標題   | 60 | 歌曲標題，最多60個英文字元。           |
| 藝術家  | 60 | 作曲或演唱者的名字，最多60個英文字元。      |
| 專輯   | 60 | 專輯名稱，最多60個英文字元。           |
| 曲速   | 1  | 0：未設置，1：慢板，2：中板，3：快板，4：極快 |
| 藝術類型 | 30 | 可自由輸入文字的藝術類型區塊。           |
| 開始時間 | 6  | 音樂開始的時間：mmm:ss            |
| 結束時間 | 6  | 音樂結束的時間：mmm:ss            |

### 藝術類型列表

| 編號  | 英文代碼              | 中文維基百科                                                                          | Winamp擴展 |
| --- | ----------------- | ------------------------------------------------------------------------------- | -------- |
| 0   | Blues             | [藍調](../Page/藍調.md "wikilink")                                                  |          |
| 1   | Classic Rock      | [古典摇滚乐](https://zh.wikipedia.org/wiki/古典摇滚乐 "wikilink")                         |          |
| 2   | Country           | [乡村音乐](../Page/乡村音乐.md "wikilink")                                              |          |
| 3   | Dance             | [舞曲](../Page/舞曲.md "wikilink")                                                  |          |
| 4   | Disco             | [迪斯科](../Page/迪斯科.md "wikilink")                                                |          |
| 5   | Funk              | [放克](../Page/放克.md "wikilink")                                                  |          |
| 6   | Grunge            | [油漬搖滾](../Page/油漬搖滾.md "wikilink")                                              |          |
| 7   | Hip-Hop           | [嘻哈](../Page/嘻哈.md "wikilink")                                                  |          |
| 8   | Jazz              | [爵士乐](../Page/爵士乐.md "wikilink")                                                |          |
| 9   | Metal             | [重金属音乐](../Page/重金属音乐.md "wikilink")                                            |          |
| 10  | New Age           | [新世紀音樂](../Page/新世紀音樂.md "wikilink")                                            |          |
| 11  | Oldies            | [Oldies](https://zh.wikipedia.org/wiki/Oldies "wikilink")                       |          |
| 12  | Other             |                                                                                 |          |
| 13  | Pop               | [流行 (音樂類型)](../Page/流行_\(音樂類型\).md "wikilink")                                  |          |
| 14  | R\&B              | [节奏布鲁斯](../Page/节奏布鲁斯.md "wikilink")                                            |          |
| 15  | Rap               | [饒舌](../Page/饒舌.md "wikilink")                                                  |          |
| 16  | Reggae            | [雷鬼音樂](../Page/雷鬼音樂.md "wikilink")                                              |          |
| 17  | Rock              | [摇滚乐](../Page/摇滚乐.md "wikilink")                                                |          |
| 18  | Techno            | [铁克诺音乐](https://zh.wikipedia.org/wiki/铁克诺音乐 "wikilink")                         |          |
| 19  | Industrial        | [Industrial](https://zh.wikipedia.org/wiki/Industrial "wikilink")               |          |
| 20  | Alternative       | [另类摇滚](../Page/另类摇滚.md "wikilink")                                              |          |
| 21  | Ska               | [斯卡曲風](https://zh.wikipedia.org/wiki/斯卡曲風 "wikilink")                           |          |
| 22  | Death Metal       | [死亡金屬音樂](../Page/死亡金屬音樂.md "wikilink")                                          |          |
| 23  | Pranks            | [Pranks](https://zh.wikipedia.org/wiki/Pranks "wikilink")                       |          |
| 24  | Soundtrack        | [原声音乐](../Page/原声音乐.md "wikilink")                                              |          |
| 25  | Euro-Techno       | [Euro-Techno](https://zh.wikipedia.org/wiki/Euro-Techno "wikilink")             |          |
| 26  | Ambient           | [氛围音乐](../Page/氛围音乐.md "wikilink")                                              |          |
| 27  | Trip-Hop          | [神遊舞曲](../Page/神遊舞曲.md "wikilink")                                              |          |
| 28  | Vocal             | [聲樂](https://zh.wikipedia.org/wiki/聲樂 "wikilink")                               |          |
| 29  | Jazz+Funk         | [爵士乐](../Page/爵士乐.md "wikilink")+[放克](../Page/放克.md "wikilink")                 |          |
| 30  | Fusion            | [融合爵士樂](https://zh.wikipedia.org/wiki/融合爵士樂 "wikilink")                         |          |
| 31  | Trance            | [出神音樂](https://zh.wikipedia.org/wiki/出神音樂 "wikilink")                           |          |
| 32  | Classical         | [古典音乐](../Page/古典音乐.md "wikilink")                                              |          |
| 33  | Instrumental      | [器樂](https://zh.wikipedia.org/wiki/器樂 "wikilink")                               |          |
| 34  | Acid              | [Acid](https://zh.wikipedia.org/wiki/Acid "wikilink")                           |          |
| 35  | House             | [浩室音乐](../Page/浩室音乐.md "wikilink")                                              |          |
| 36  | Game              | [Game](https://zh.wikipedia.org/wiki/Game "wikilink")                           |          |
| 37  | Sound Clip        | 音效及聲音片段                                                                         |          |
| 38  | Gospel            | [福音音乐](../Page/福音音乐.md "wikilink")                                              |          |
| 39  | Noise             | [噪音音樂](https://zh.wikipedia.org/wiki/噪音音樂 "wikilink")                           |          |
| 40  | AlternRock        | [AlternRock](https://zh.wikipedia.org/wiki/AlternRock "wikilink")               |          |
| 41  | Bass              | [電貝斯](../Page/電貝斯.md "wikilink")                                                |          |
| 42  | Soul              | [靈魂樂](../Page/靈魂樂.md "wikilink")                                                |          |
| 43  | Punk              | [龐克文化](../Page/龐克文化.md "wikilink")                                              |          |
| 44  | Space             | [Space](https://zh.wikipedia.org/wiki/Space "wikilink")                         |          |
| 45  | Meditative        | [冥想音樂](https://zh.wikipedia.org/wiki/冥想音樂 "wikilink")                           |          |
| 46  | Instrumental Pop  | [Instrumental Pop](https://zh.wikipedia.org/wiki/Instrumental_Pop "wikilink")   |          |
| 47  | Instrumental Rock | [Instrumental Rock](https://zh.wikipedia.org/wiki/Instrumental_Rock "wikilink") |          |
| 48  | Ethnic            | [Ethnic](https://zh.wikipedia.org/wiki/Ethnic "wikilink")                       |          |
| 49  | Gothic            | [Gothic](https://zh.wikipedia.org/wiki/Gothic "wikilink")                       |          |
| 50  | Darkwave          | [Darkwave](https://zh.wikipedia.org/wiki/Darkwave "wikilink")                   |          |
| 51  | Techno-Industrial | [Techno-Industrial](https://zh.wikipedia.org/wiki/Techno-Industrial "wikilink") |          |
| 52  | Electronic        | [電子音樂](../Page/電子音樂.md "wikilink")                                              |          |
| 53  | Pop-Folk          | [Pop-Folk](https://zh.wikipedia.org/wiki/Pop-Folk "wikilink")                   |          |
| 54  | Eurodance         | [歐陸舞曲](https://zh.wikipedia.org/wiki/歐陸舞曲 "wikilink")                           |          |
| 55  | Dream             | [Dream](https://zh.wikipedia.org/wiki/Dream "wikilink")                         |          |
| 56  | Southern Rock     | [Southern Rock](https://zh.wikipedia.org/wiki/Southern_Rock "wikilink")         |          |
| 57  | Comedy            | [喜劇](../Page/喜劇.md "wikilink")                                                  |          |
| 58  | Cult              | [Cult](https://zh.wikipedia.org/wiki/Cult "wikilink")                           |          |
| 59  | Gangsta           | [Gangsta](https://zh.wikipedia.org/wiki/Gangsta "wikilink")                     |          |
| 60  | Top 40            | [Top 40](https://zh.wikipedia.org/wiki/Top_40 "wikilink")                       |          |
| 61  | Christian Rap     | [Christian Rap](https://zh.wikipedia.org/wiki/Christian_Rap "wikilink")         |          |
| 62  | Pop/Funk          | [流行 (音樂類型)](../Page/流行_\(音樂類型\).md "wikilink")/[放克](../Page/放克.md "wikilink")   |          |
| 63  | Jungle            | [早期叢林舞曲](../Page/早期叢林舞曲.md "wikilink")                                          |          |
| 64  | Native American   | [Native American](https://zh.wikipedia.org/wiki/Native_American "wikilink")     |          |
| 65  | Cabaret           | [卡巴萊](../Page/卡巴萊.md "wikilink")                                                |          |
| 66  | New Wave          | [新浪潮](../Page/新浪潮.md "wikilink")                                                |          |
| 67  | Psychadelic       | [Psychadelic](https://zh.wikipedia.org/wiki/Psychadelic "wikilink")             |          |
| 68  | Rave              | [銳舞](../Page/銳舞.md "wikilink")                                                  |          |
| 69  | Showtunes         | [Showtunes](https://zh.wikipedia.org/wiki/Showtunes "wikilink")                 |          |
| 70  | Trailer           | [Trailer](https://zh.wikipedia.org/wiki/Trailer "wikilink")                     |          |
| 71  | Lo-Fi             | [Lo-Fi](https://zh.wikipedia.org/wiki/Lo-Fi "wikilink")                         |          |
| 72  | Tribal            | [Tribal](https://zh.wikipedia.org/wiki/Tribal "wikilink")                       |          |
| 73  | Acid Punk         | [Acid Punk](https://zh.wikipedia.org/wiki/Acid_Punk "wikilink")                 |          |
| 74  | Acid Jazz         | [酸爵士](https://zh.wikipedia.org/wiki/酸爵士 "wikilink")                             |          |
| 75  | Polka             | [波尔卡](https://zh.wikipedia.org/wiki/波尔卡 "wikilink")                             |          |
| 76  | Retro             | [Retro](https://zh.wikipedia.org/wiki/Retro "wikilink")                         |          |
| 77  | Musical           | [Musical](https://zh.wikipedia.org/wiki/Musical "wikilink")                     |          |
| 78  | Rock & Roll       | [摇滚](../Page/摇滚.md "wikilink")                                                  |          |
| 79  | Hard Rock         | [硬式搖滾](../Page/硬式搖滾.md "wikilink")                                              |          |
| 80  | Folk              | [民俗音樂](https://zh.wikipedia.org/wiki/民俗音樂 "wikilink")                           | 是        |
| 81  | Folk-Rock         | [民谣摇滚](../Page/民谣摇滚.md "wikilink")                                              | 是        |
| 82  | National Folk     | [National Folk](https://zh.wikipedia.org/wiki/National_Folk "wikilink")         | 是        |
| 83  | Swing             | [Swing](https://zh.wikipedia.org/wiki/Swing "wikilink")                         | 是        |
| 84  | Fast Fusion       | [Fast Fusion](https://zh.wikipedia.org/wiki/Fast_Fusion "wikilink")             | 是        |
| 85  | Bebob             | [咆勃爵士樂](../Page/咆勃爵士樂.md "wikilink")                                            | 是        |
| 86  | Latin             | [拉丁舞](../Page/拉丁舞.md "wikilink")                                                | 是        |
| 87  | Revival           | [Revival](https://zh.wikipedia.org/wiki/Revival "wikilink")                     | 是        |
| 88  | Celtic            | [凱爾特音樂](../Page/凱爾特音樂.md "wikilink")                                            | 是        |
| 89  | Bluegrass         | [藍草音樂](../Page/藍草音樂.md "wikilink")                                              | 是        |
| 90  | Avantgarde        | [前衛](../Page/前衛.md "wikilink")                                                  | 是        |
| 91  | Gothic Rock       | [哥德搖滾](../Page/哥德搖滾.md "wikilink")                                              | 是        |
| 92  | Progressive Rock  | [前衛搖滾](../Page/前衛搖滾.md "wikilink")                                              | 是        |
| 93  | Psychedelic Rock  | [迷幻搖滾](../Page/迷幻搖滾.md "wikilink")                                              | 是        |
| 94  | Symphonic Rock    | [前衛搖滾](../Page/前衛搖滾.md "wikilink")                                              | 是        |
| 95  | Slow Rock         | [Slow Rock](https://zh.wikipedia.org/wiki/Slow_Rock "wikilink")                 | 是        |
| 96  | Big Band          | [大樂團](../Page/大樂團.md "wikilink")                                                | 是        |
| 97  | Chorus            | [副歌](https://zh.wikipedia.org/wiki/副歌 "wikilink")                               | 是        |
| 98  | Easy Listening    | [Easy Listening](https://zh.wikipedia.org/wiki/Easy_Listening "wikilink")       | 是        |
| 99  | Acoustic          | [原音乐](https://zh.wikipedia.org/wiki/原音乐 "wikilink")                             | 是        |
| 100 | Humour            | [幽默](../Page/幽默.md "wikilink")                                                  | 是        |
| 101 | Speech            | [語音](../Page/語音.md "wikilink")                                                  | 是        |
| 102 | Chanson           | [香颂](../Page/香颂.md "wikilink")                                                  | 是        |
| 103 | Opera             | [歌剧](../Page/歌剧.md "wikilink")                                                  | 是        |
| 104 | Chamber Music     | [室内乐](../Page/室内乐.md "wikilink")                                                | 是        |
| 105 | Sonata            | [奏鸣曲](../Page/奏鸣曲.md "wikilink")                                                | 是        |
| 106 | Symphony          | [交響曲](../Page/交響曲.md "wikilink")                                                | 是        |
| 107 | Booty Bass        | [Booty Bass](https://zh.wikipedia.org/wiki/Booty_Bass "wikilink")               | 是        |
| 108 | Primus            | [讽刺](../Page/讽刺.md "wikilink")                                                  | 是        |
| 109 | Porn Groove       | [Porn Groove](https://zh.wikipedia.org/wiki/Porn_Groove "wikilink")             | 是        |
| 110 | Satire            | [Satire](https://zh.wikipedia.org/wiki/Satire "wikilink")                       | 是        |
| 111 | Slow Jam          | [Slow Jam](https://zh.wikipedia.org/wiki/Slow_Jam "wikilink")                   | 是        |
| 112 | Club              | [電子舞曲](../Page/電子舞曲.md "wikilink")                                              | 是        |
| 113 | Tango             | [探戈](../Page/探戈.md "wikilink")                                                  | 是        |
| 114 | Samba             | [桑巴](../Page/桑巴.md "wikilink")                                                  | 是        |
| 115 | Folklore          | [民俗學](../Page/民俗學.md "wikilink")                                                | 是        |
| 116 | Ballad            | [谣曲](https://zh.wikipedia.org/wiki/谣曲 "wikilink")                               | 是        |
| 117 | Power Ballad      | [Power Ballad](https://zh.wikipedia.org/wiki/Power_Ballad "wikilink")           | 是        |
| 118 | Rhythmic Soul     | [Rhythmic Soul](https://zh.wikipedia.org/wiki/Rhythmic_Soul "wikilink")         | 是        |
| 119 | Freestyle         | [Freestyle](https://zh.wikipedia.org/wiki/Freestyle "wikilink")                 | 是        |
| 120 | Duet              | [Duet](https://zh.wikipedia.org/wiki/Duet "wikilink")                           | 是        |
| 121 | Punk Rock         | [朋克搖滾](../Page/朋克搖滾.md "wikilink")                                              | 是        |
| 122 | Drum Solo         | [Drum Solo](https://zh.wikipedia.org/wiki/Drum_Solo "wikilink")                 | 是        |
| 123 | A capella         | [無伴奏合唱](../Page/無伴奏合唱.md "wikilink")                                            | 是        |
| 124 | Euro-House        | [浩室音乐](../Page/浩室音乐.md "wikilink")                                              | 是        |
| 125 | Dance Hall        | [Dance Hall](https://zh.wikipedia.org/wiki/Dance_Hall "wikilink")               | 是        |

## ID3v2

1998年，一個由許多貢獻者創造、被稱作ID3v2的新規範問世\[9\]。雖然繼承了ID3的名字，但其結構與ID3v1大相逕庭。

ID3v2標籤有各種不同的大小，而且經常位於檔案開頭，以運用於[串流媒體中](https://zh.wikipedia.org/wiki/串流媒體 "wikilink")。舉例來說，*TIT2*資料框架包含標題，而*WOAR*資料框架則包含該藝術家的網站[URL連結](https://zh.wikipedia.org/wiki/URL "wikilink")。資料框架最大可達16MB，不過標籤總大小上限為256MB。標籤也不再侷限於[西歐編碼](https://zh.wikipedia.org/wiki/ISO/IEC_8859-1 "wikilink")，而支援[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")，解決了國際化的問題。

文字框架會由一個編碼位元組標記，以得知其是由哪種編碼存入的\[10\]。

    $00 – ISO-8859-1 (LATIN-1, Identical to ASCII for values smaller than 0x80).
    $01 – UCS-2 (UTF-16 encoded Unicode with BOM), in ID3v2.2 and ID3v2.3.
    $02 – UTF-16BE encoded Unicode without BOM, in ID3v2.4.
    $03 – UTF-8 encoded Unicode, in ID3v2.4.

不過，在使用地區編碼而非萬國碼的時候，還是很容易出現[亂碼](../Page/亂碼.md "wikilink")。特別是有些使用[Shift JIS編碼的日文編輯者經常造成一些災難性的後果](../Page/Shift_JIS.md "wikilink")：因為並非標準支援，所以不管地區設定為何，都無法運用於任何符合標準的軟體；因為日本以外的地區幾乎不支援Shift JIS，所以也無法在日本以外的地區使用；甚至連日本境內也並非通用，因為其取決於軟體與設置。

在最新版ID3v2.4，總共宣告了83種資料框架\[11\]，而使用者也可以自訂屬於自己的資料框架。標準的資料框架有[量測音樂速度](../Page/速度_\(音樂\).md "wikilink")、版權、歌詞、任意文字和URL數據等等。ID3v2總共有三種版本：

  - ID3v2.2
    v2.2是ID3v2的第一個公開版本。他使用3個字元作為資料框架識別碼，而非4個（舉例來說，其使用*TT2*而非*T1T2*）。v2.3和v2.4中大多數的資料框架都在v2.2中有著相似的框架。這個標準已經被認為過時\[12\]。
  - ID3v2.3
    v2.3將資料框架識別碼擴展到4個字元，並且加入了一些新的資料框架。一個框架可以包含複數值，由[空字符](../Page/空字符.md "wikilink")分隔。這是目前最廣泛使用的ID3v2標籤\[13\]。
  - ID3v2.4
    v2.4出版於2000年11月1日，至今仍是最新的版本。其允許文字資料以早期常用（因為它比起[UTF-16而言有許多顯著的優點](https://zh.wikipedia.org/wiki/UTF-16 "wikilink")）但非標準的標籤編碼[UTF-8](../Page/UTF-8.md "wikilink")寫入。另外一項新功能是可以選擇是否在檔案末端、其他標籤前面加入標籤，就像ID3v1那樣\[14\]。
    沒有任何版本的[Windows檔案總管和](https://zh.wikipedia.org/wiki/Windows檔案總管 "wikilink")[Windows Media Player](https://zh.wikipedia.org/wiki/Windows_Media_Player "wikilink")──甚至是最新的[Windows 10和](../Page/Windows_10.md "wikilink") 12──都無法正確的解讀ID3v2.4標籤，不過依然能解讀v2.3或是更早的版本\[15\]\[16\]。

### 評分標籤的爭議

對於歌曲的評分，有一個寬鬆的事實標準。大多數應用程式會替所有歌曲展示0到5顆星的評分，而星數會以何種形式展示則各有不同。舉例來說，當你在[iTunes替歌曲評分的時候](https://zh.wikipedia.org/wiki/iTunes "wikilink")，評分並不會嵌入那個音樂檔案的標籤裡，而是會儲存在iTunes自己的後設資料數據庫中。其他的[媒體播放器可以嵌入標籤](https://zh.wikipedia.org/wiki/媒體播放器 "wikilink")，但方法不一定相同，所以在一個媒體播放器評分的音樂不一定會在其他的播放器以相同的形式展示。

不過，在新版的ID3v2中有一個「[Popularimeter](http://id3.org/id3v2.3.0#sec4.18)」資料框架用來解決這個問題。這個資料框架的識別碼是**POPM**，而Windows檔案總管、WMP、[Winamp](../Page/Winamp.md "wikilink")、[foobar2000](https://zh.wikipedia.org/wiki/foobar2000 "wikilink")、[MediaMonkey以及其他軟體都將](https://zh.wikipedia.org/wiki/MediaMonkey "wikilink")0-255這範圍內的值大致相同地分為0-5星展示。

以Windows檔案總管讀寫POPM資料框架的標準為例：

| 星數 | 讀取      | 寫入  |
| -- | ------- | --- |
| 5  | 224-225 | 255 |
| 4  | 160-223 | 196 |
| 3  | 96-159  | 128 |
| 2  | 32-95   | 64  |
| 1  | 1-31    | 1   |
| 0  | 0       | 0   |

語法則為：

`Windows Media Player 9 Series | 255 | 0`

其中0是POPM的計數器部分，不要與PCNT資料框架的播放次數混淆。不過如果有應用程式支援[粒度](https://zh.wikipedia.org/wiki/粒度 "wikilink")，一顆星的話會寫入1，而2到31則會是一顆星之下的粒度點。值得一提的是，Windows所使用的ID字串並非規範所要求的電子郵件地址。而且，直到[Windows 7和WMP](https://zh.wikipedia.org/wiki/Windows_7 "wikilink") 12的Windows檔案總管和WMP都有一個漏洞是：如果你使用以上軟體替音樂評分的話，任何有關[回放增益](../Page/回放增益.md "wikilink")的標籤都會損壞。WMP也以上述方式讀寫相同的值，除了4到5星之間有著些微莫名的不同。WMP使用221和222來區隔4、5星，[理由不明](https://msdn.microsoft.com/en-us/library/windows/desktop/dd564545%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396)。

### ID3v2章節

**ID3v2章節補遺**（ID3v2 Chapter Addendum）出版於2005年12月，不過至今尚未被廣泛支援。它讓使用者們可以簡單地跳到音訊檔案中特定的地點或樂章，並且可以在播放期間提供同步的圖片與文字的-{zh:投影片;zh-hans:幻灯片;zh-hant:投影片;zh-cn:幻灯片;zh-tw:投影片;}-。典型的應用程式包括補強[播客](../Page/播客.md "wikilink")，而且其可用於v2.3或v2.4標籤中\[17\]。

### ID3v2嵌入圖片

後設資料可以包含以下類型的圖片\[18\]：

    $00     其他
    $01     32x32 pixels 'file icon' (PNG only)
    $02     Other file icon
    $03     Cover (front)
    $04     Cover (back)
    $05     Leaflet page
    $06     Media (e.g. label side of CD)
    $07     Lead artist/lead performer/soloist
    $08     Artist/performer
    $09     Conductor
    $0A     Band/Orchestra
    $0B     Composer
    $0C     Lyricist/text writer
    $0D     Recording Location
    $0E     During recording
    $0F     During performance
    $10     Movie/video screen capture
    $11     A bright coloured fish
    $12     Illustration
    $13     Band/artist logotype
    $14     Publisher/Studio logotype

### ID3v2資料框架規範

<table>
<thead>
<tr class="header">
<th><p>英文描述</p></th>
<th><p>中文描述</p></th>
<th><p>資料框架</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Audio encryption</p></td>
<td><p>音頻加密</p></td>
<td><p>AENC</p></td>
</tr>
<tr class="odd">
<td><p>Audio seek point index</p></td>
<td><p>音頻搜索點索引</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Attached picture</p></td>
<td><p>附圖</p></td>
<td><p>APIC</p></td>
</tr>
<tr class="odd">
<td><p>Comments</p></td>
<td><p>評論</p></td>
<td><p>COMM</p></td>
</tr>
<tr class="even">
<td><p>Commercial frame</p></td>
<td><p>商業用資料框架</p></td>
<td><p>COMR</p></td>
</tr>
<tr class="odd">
<td><p>Encryption method registration</p></td>
<td><p>加密方式註冊</p></td>
<td><p>ENCR</p></td>
</tr>
<tr class="even">
<td><p>Equalization</p></td>
<td><p><a href="../Page/等化器.md" title="wikilink">等化</a></p></td>
<td><p>EQUA</p></td>
</tr>
<tr class="odd">
<td><p>Event timing codes</p></td>
<td><p>事件時間代碼</p></td>
<td><p>ETCO</p></td>
</tr>
<tr class="even">
<td><p>General encapsulated object</p></td>
<td><p>一般<a href="../Page/封裝_(物件導向程式設計).md" title="wikilink">封裝物件</a></p></td>
<td><p>GEOB</p></td>
</tr>
<tr class="odd">
<td><p>Group identification registration</p></td>
<td><p>組織識別註冊</p></td>
<td><p>GRID</p></td>
</tr>
<tr class="even">
<td><p>Involved people list</p></td>
<td><p>相關人員列表</p></td>
<td><p>IPLS</p></td>
</tr>
<tr class="odd">
<td><p>Linked information</p></td>
<td><p>連結資訊</p></td>
<td><p>LINK</p></td>
</tr>
<tr class="even">
<td><p>Music CD identifier</p></td>
<td><p>音樂光碟識別碼</p></td>
<td><p>MCDI</p></td>
</tr>
<tr class="odd">
<td><p>MPEG location lookup table</p></td>
<td><p>MPEG位置查詢表</p></td>
<td><p>MLLT</p></td>
</tr>
<tr class="even">
<td><p>Ownership frame</p></td>
<td><p>所有權</p></td>
<td><p>OWNE</p></td>
</tr>
<tr class="odd">
<td><p>Private frame</p></td>
<td><p>隱私權</p></td>
<td><p>PRIV</p></td>
</tr>
<tr class="even">
<td><p>Play counter</p></td>
<td><p>播放次數</p></td>
<td><p>PCNT</p></td>
</tr>
<tr class="odd">
<td><p>Popularimeter</p></td>
<td><p>評等</p></td>
<td><p>POPM</p></td>
</tr>
<tr class="even">
<td><p>Position synchronisation frame</p></td>
<td><p>位置同步</p></td>
<td><p>POSS</p></td>
</tr>
<tr class="odd">
<td><p>Recommended buffer size</p></td>
<td><p>推薦緩衝區大小</p></td>
<td><p>RBUF</p></td>
</tr>
<tr class="even">
<td><p>Relative volume adjustment</p></td>
<td><p>相對音量調整</p></td>
<td><p>RVAD</p></td>
</tr>
<tr class="odd">
<td><p>Reverb</p></td>
<td><p>混響</p></td>
<td><p>RVRB</p></td>
</tr>
<tr class="even">
<td><p>Seek frame</p></td>
<td><p>搜尋用</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Signature frame</p></td>
<td><p>簽名用</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Synchronized lyric/text</p></td>
<td><p>同步歌詞、文字</p></td>
<td><p>SYLT</p></td>
</tr>
<tr class="odd">
<td><p>Synchronized tempo codes</p></td>
<td><p>同步節拍代碼</p></td>
<td><p>SYTC</p></td>
</tr>
<tr class="even">
<td><p>Album/Movie/Show title</p></td>
<td><p>專輯/電影/節目標題</p></td>
<td><p>TALB</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Beats_per_minute" title="wikilink">Beats per minute</a> (BPM)</p></td>
<td><p><a href="../Page/速度_(音樂).md" title="wikilink">量度音樂速度</a></p></td>
<td><p>TBPM</p></td>
</tr>
<tr class="even">
<td><p>Composer</p></td>
<td><p>作曲者</p></td>
<td><p>TCOM</p></td>
</tr>
<tr class="odd">
<td><p>Content type</p></td>
<td><p>內容類型</p></td>
<td><p>TCON</p></td>
</tr>
<tr class="even">
<td><p>Copyright message</p></td>
<td><p>版權信息</p></td>
<td><p>TCOP</p></td>
</tr>
<tr class="odd">
<td><p>Date</p></td>
<td><p>日期</p></td>
<td><p>TDAT</p></td>
</tr>
<tr class="even">
<td><p>Encoding time</p></td>
<td><p>編碼時間</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Playlist delay</p></td>
<td><p>播放清單中的間隔時間</p></td>
<td><p>TDLY</p></td>
</tr>
<tr class="even">
<td><p>Recording time</p></td>
<td><p>音訊紀錄時間</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Release time</p></td>
<td><p>音訊發行時間</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Tagging time</p></td>
<td><p>音訊被標記時間</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Encoded by</p></td>
<td><p>編碼者</p></td>
<td><p>TENC</p></td>
</tr>
<tr class="even">
<td><p>Lyricist/Text writer</p></td>
<td><p>作詞者</p></td>
<td><p>TEXT</p></td>
</tr>
<tr class="odd">
<td><p>File type</p></td>
<td><p>檔案類型</p></td>
<td><p>TFLT</p></td>
</tr>
<tr class="even">
<td><p>Time</p></td>
<td><p>包含記錄用的時間</p></td>
<td><p>TIME</p></td>
</tr>
<tr class="odd">
<td><p>Content group description</p></td>
<td><p>群組描述</p></td>
<td><p>TIT1</p></td>
</tr>
<tr class="even">
<td><p>Title/songname/content description</p></td>
<td><p>標題</p></td>
<td><p>TIT2</p></td>
</tr>
<tr class="odd">
<td><p>Subtitle/Description refinement</p></td>
<td><p>字幕</p></td>
<td><p>TIT3</p></td>
</tr>
<tr class="even">
<td><p>Initial key</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/調" title="wikilink">初始調</a></p></td>
<td><p>TKEY</p></td>
</tr>
<tr class="odd">
<td><p>Language(s)</p></td>
<td><p>語言</p></td>
<td><p>TLAN</p></td>
</tr>
<tr class="even">
<td><p>Length</p></td>
<td><p>長度</p></td>
<td><p>TLEN</p></td>
</tr>
<tr class="odd">
<td><p>Musician credits list</p></td>
<td><p>音樂家與樂器對照</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Media type</p></td>
<td><p>屬性</p></td>
<td><p>TMED</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Mood</p></td>
<td><p>情境</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Original album/movie/show title</p></td>
<td><p>原始標題</p></td>
<td><p>TOAL</p></td>
</tr>
<tr class="even">
<td><p>Original filename</p></td>
<td><p>原始檔案名稱</p></td>
<td><p>TOFN</p></td>
</tr>
<tr class="odd">
<td><p>Original lyricist(s)/text writer(s)</p></td>
<td><p>原始作詞者</p></td>
<td><p>TOLY</p></td>
</tr>
<tr class="even">
<td><p>Original artist(s)/performer(s)</p></td>
<td><p>原始演唱者</p></td>
<td><p>TOPE</p></td>
</tr>
<tr class="odd">
<td><p>Original release year</p></td>
<td><p>年分</p></td>
<td><p>TORY</p></td>
</tr>
<tr class="even">
<td><p>File owner/licensee</p></td>
<td><p>著作權</p></td>
<td><p>TOWN</p></td>
</tr>
<tr class="odd">
<td><p>Lead performer(s)/Soloist(s)</p></td>
<td><p>指揮</p></td>
<td><p>TPE1</p></td>
</tr>
<tr class="even">
<td><p>Band/orchestra/accompaniment</p></td>
<td><p>樂團/樂隊/伴奏</p></td>
<td><p>TPE2</p></td>
</tr>
<tr class="odd">
<td><p>Conductor/performer refinement</p></td>
<td><p>詳細參與演出者</p></td>
<td><p>TPE3</p></td>
</tr>
<tr class="even">
<td><p>Interpreted, remixed, or otherwise modified by</p></td>
<td><p>後製</p></td>
<td><p>TPE4</p></td>
</tr>
<tr class="odd">
<td><p>Part of a set</p></td>
<td><p>Part of a set</p></td>
<td><p>TPOS</p></td>
</tr>
<tr class="even">
<td><p>Produced notice</p></td>
<td><p>Produced notice</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Publisher</p></td>
<td><p>發行者</p></td>
<td><p>TPUB</p></td>
</tr>
<tr class="even">
<td><p>Track number/Position in set</p></td>
<td><p>曲目</p></td>
<td><p>TRCK</p></td>
</tr>
<tr class="odd">
<td><p>Recording dates</p></td>
<td><p>建立日期</p></td>
<td><p>TRDA</p></td>
</tr>
<tr class="even">
<td><p>Internet radio station name</p></td>
<td><p>Internet radio station name</p></td>
<td><p>TRSN</p></td>
</tr>
<tr class="odd">
<td><p>Internet radio station owner</p></td>
<td><p>Internet radio station owner</p></td>
<td><p>TRSO</p></td>
</tr>
<tr class="even">
<td><p>Size</p></td>
<td><p>大小</p></td>
<td><p>TSIZ</p></td>
</tr>
<tr class="odd">
<td><p>Album sort order</p></td>
<td><p>依專輯排序</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Performer sort order</p></td>
<td><p>依演出者排序</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Title sort order</p></td>
<td><p>依標題排序</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>International Standard Recording Code (ISRC)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/國際標準音像製品編碼" title="wikilink">國際標準音像製品編碼</a></p></td>
<td><p>TSRC</p></td>
</tr>
<tr class="odd">
<td><p>Software/Hardware and settings used for encoding</p></td>
<td><p>編碼環境設置</p></td>
<td><p>TSSE</p></td>
</tr>
<tr class="even">
<td><p>Set subtitle</p></td>
<td><p>設置字幕</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Year</p></td>
<td><p>年分</p></td>
<td><p>TYER</p></td>
</tr>
<tr class="even">
<td><p>User defined text information frame</p></td>
<td><p>自訂文字</p></td>
<td><p>TXXX</p></td>
</tr>
<tr class="odd">
<td><p>Unique file identifier</p></td>
<td><p>檔案識別碼</p></td>
<td><p>UFID</p></td>
</tr>
<tr class="even">
<td><p>Terms of use</p></td>
<td><p>使用條款</p></td>
<td><p>USER</p></td>
</tr>
<tr class="odd">
<td><p>Unsynchronized lyric/text transcription</p></td>
<td><p>非同步歌詞轉錄</p></td>
<td><p>USLT</p></td>
</tr>
<tr class="even">
<td><p>Commercial information</p></td>
<td><p>商業資訊</p></td>
<td><p>WCOM</p></td>
</tr>
<tr class="odd">
<td><p>Copyright/Legal information</p></td>
<td><p>版權資訊</p></td>
<td><p>WCOP</p></td>
</tr>
<tr class="even">
<td><p>Official audio file webpage</p></td>
<td><p>官方音訊檔案網站</p></td>
<td><p>WOAF</p></td>
</tr>
<tr class="odd">
<td><p>Official artist/performer webpage</p></td>
<td><p>作者URL</p></td>
<td><p>WOAR</p></td>
</tr>
<tr class="even">
<td><p>Official audio source webpage</p></td>
<td><p>官方音源URL</p></td>
<td><p>WOAS</p></td>
</tr>
<tr class="odd">
<td><p>Official internet radio station homepage</p></td>
<td><p>Official internet radio station homepage</p></td>
<td><p>WORS</p></td>
</tr>
<tr class="even">
<td><p>Payment</p></td>
<td><p>付費URL</p></td>
<td><p>WPAY</p></td>
</tr>
<tr class="odd">
<td><p>Publishers official webpage</p></td>
<td><p>發行者官網</p></td>
<td><p>WPUB</p></td>
</tr>
<tr class="even">
<td><p>User defined URL link frame</p></td>
<td><p>自定義URL</p></td>
<td><p>WXXX</p></td>
</tr>
</tbody>
</table>

**注意：**

Version 2.4 of the specification prescribes that all text fields (the fields that start with a *T*, except for TXXX) can contain multiple values separated by a [null character](https://zh.wikipedia.org/wiki/null_character "wikilink"). The null character varies by [character encoding](https://zh.wikipedia.org/wiki/character_encoding "wikilink").

## 注释

## 参见

  - [MP3](../Page/MP3.md "wikilink")
  - [APEv2](https://zh.wikipedia.org/wiki/APEv2_tag "wikilink")
  - [Mp3tag](../Page/Mp3tag.md "wikilink")

## 外部链接

  - [ID3官方网站（英文）](http://www.id3.org/)

[Category:元数据标准](https://zh.wikipedia.org/wiki/Category:元数据标准 "wikilink") [Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")

1.  [Practical Common Lisp](https://books.google.com/books?id=Bby4FJy49QUC&pg=PA335), p. 335.

2.
3.  關於ID3v1在[Python](../Page/Python.md "wikilink")中的應用，請看[Dive Into Python, Chapter 5. Objects and Object-Orientation](http://www.diveintopython.net/object_oriented_framework/index.html)

4.  曲目會儲存在評論區的最後兩個位元組中。如果評論有29或30個字元那麼長，就無法儲存曲目。

5.
6.
7.  「Primus」是單一樂團而非藝術類型，而「Negerpunk」似乎是瑞典的種族歧視笑話

8.

9.

10.

11.

12.

13.

14.

15.

16.

17.

18.