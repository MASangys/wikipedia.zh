**PunkBuster**是一套防止玩家作弊的軟體，被應用於眾多[第一人稱射擊遊戲的線上](https://zh.wikipedia.org/wiki/第一人稱射擊遊戲 "wikilink")[多人遊戲模式中](https://zh.wikipedia.org/wiki/多人遊戲 "wikilink")。PunkBuster常被玩家簡稱為**PB**。

## 歷史

原作者Tony Ray在經歷過[絕地要塞的作弊玩家破壞遊戲樂趣之後](../Page/絕地要塞.md "wikilink")，成立了Even
Balance公司開發PunkBuster反作弊軟體。\[1\]

PunkBuster的第一個測試版本發佈於2000年9月21日，應用在第一人稱射擊遊戲[戰慄時空上](https://zh.wikipedia.org/wiki/戰慄時空 "wikilink")。自從該遊戲發售以來，開發商[Valve便為了對抗作弊而長期苦戰](https://zh.wikipedia.org/wiki/Valve "wikilink")。第一個正式整合並採用PunkBuster反作弊機制的遊戲是[id
Software的](https://zh.wikipedia.org/wiki/id_Software "wikilink")[重返德軍總部](https://zh.wikipedia.org/wiki/重返德軍總部 "wikilink")。

## 功能

  - 藉由放置一個PunkBuster Client的程序來實時掃描用戶的記憶體，並藉由內建資料庫來識別已知的作弊或破解行為。
  - 藉由多個網際網路上的主伺服器，實作一個兩階式可調速的背景更新系統，確保終端用戶不會安裝到假的或被修改的更新檔。
  - 從PunkBuster的主伺服器定期地回傳狀態報告給賽局內的所有玩家。必要時，PunkBuster主伺服器能夠宣告某個玩家違規並踢出賽局，同時賽局內其他玩家都能獲知此違規行為。
  - PunkBuster管理員可以手動地從賽局暫時或永久地移除某玩家。
  - PunkBuster伺服器可以設定成會去隨機地檢查玩家的設定來確認是否有利用遊戲的已知[漏洞](https://zh.wikipedia.org/wiki/漏洞 "wikilink")。
  - PunkBuster伺服器可以設定成去檢查用戶端的遊戲安裝目錄內的檔案[MD5](../Page/MD5.md "wikilink")[雜湊值](https://zh.wikipedia.org/wiki/雜湊值 "wikilink")，並且可以選擇在發現到與紀錄上不一致時踢出此玩家。
  - PunkBuster管理員可以請求某特定玩家的實時螢幕截圖，同時可以設定PunkBuster伺服器在遊戲進行時隨機地攫取隨機玩家的螢幕截圖。惟破解程式有辦法攔截並阻擋截圖、回傳破碎的截圖或者把截圖上關於作弊的資訊移除，使此功能失去效用。
  - 可選的「壞名稱」功能可以讓PunkBuster管理員避免使用冒犯名稱的玩家加入遊戲。
  - 提供PunkBuster管理員一個搜尋功能來查找玩家可能會利用遊戲漏洞的按鍵配置或腳本。
  - 稱作「PunkBuster權力部門」的功能可以讓玩家在賽局管理員缺席時仍擁有一些管理權力，例如發起踢出某玩家的投票。
  - PunkBuster伺服器有一個可選的迷你[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")[網頁伺服器介面來讓管理員使用](../Page/網頁伺服器.md "wikilink")[網頁瀏覽器從任何裝置去管理賽局](https://zh.wikipedia.org/wiki/網頁瀏覽器 "wikilink")。
  - PunkBuster管理員可以把他們的伺服器紀錄實時地串流到另一個任意地方。
  - PunkBuster設有「PunkBuster硬體黑名單」，能夠禁止那些曾經被偵測到干擾或繞過PunkBuster的作弊者的硬體設備。這個禁止意味者那些被記載入的玩家再也不能使用該硬體進入遊戲。

## 不相容

一些遊戲像是[Crysis或者](https://zh.wikipedia.org/wiki/Crysis "wikilink")[BioShock
2並未載有](https://zh.wikipedia.org/wiki/BioShock_2 "wikilink")64位元的PunkBuster。因為如此，上述遊戲的玩家除非執行32位元版本，否則無法加入開啟了PunkBuster的遊戲伺服器。
PunkBuster也禁止未擁有管理員權限的Windows用戶連接到任何賽局。當試圖連接時，玩家會立刻收到關於OS權限不足的警告並被踢出遊戲。從v1.700版本開始，PunkBuster使用一個擁有管理員權限的[Windows服務](https://zh.wikipedia.org/wiki/Windows服務 "wikilink")，來進行更新而不需用戶專程授權。但是，有一些遊戲依然要求管理者權限來確保PunkBuster正常運作。\[2\]

## 程式元件

| 名稱           | 說明                                   |
| ------------ | ------------------------------------ |
| pbsvc.exe    | PunkBuster Services（Windows系統服務）安裝程式 |
| PnkBstrA.exe | PunkBuster Services系統服務元件A，不得被防火牆阻擋  |
| PnkBstrB.exe | PunkBuster Services系統服務元件B，不得被防火牆阻擋  |
| pbsetup.exe  | PunkBuster手動更新程式                     |

*PunkBuster可能會被部分防毒軟體誤判或是遭防火牆封鎖，導致其無法正常運作。*

## 採用PunkBuster保護的遊戲

已經停止支援的遊戲以刪除線表示。</s>

  - <s>*[All Points
    Bulletin](https://zh.wikipedia.org/wiki/All_Points_Bulletin_\(video_game\) "wikilink")*</s>
  - *[APB:
    Reloaded](https://zh.wikipedia.org/wiki/APB:_Reloaded "wikilink")*
  - *[America's Army: Proving Grounds
    Beta](https://zh.wikipedia.org/wiki/America's_Army:_Proving_Grounds_Beta "wikilink")*
  - *[刺客教條：兄弟會](../Page/刺客教條：兄弟會.md "wikilink")*\[3\]
  - *[美國陸軍](https://zh.wikipedia.org/wiki/美國陸軍_\(遊戲\) "wikilink")*
  - <s>*[戰地風雲1942](../Page/戰地風雲1942.md "wikilink")*</s>
  - *[戰地風雲2](https://zh.wikipedia.org/wiki/戰地風雲2 "wikilink")*
  - *[戰地風雲2142](../Page/戰地風雲2142.md "wikilink")*
  - *[戰地風雲3](../Page/戰地風雲3.md "wikilink")*\[4\]
  - *[戰地風雲4](../Page/戰地風雲4.md "wikilink")*
  - *[戰地風雲：惡名昭彰2](https://zh.wikipedia.org/wiki/戰地風雲：惡名昭彰2 "wikilink")*
  - *[戰地風雲：英雄](../Page/戰地風雲：英雄.md "wikilink")*\[5\]
  - *[戰地風雲Play4Free](https://zh.wikipedia.org/wiki/戰地風雲Play4Free "wikilink")*
  - *[戰地風雲：越南](../Page/戰地風雲：越南.md "wikilink")*
  - *[決勝時刻](https://zh.wikipedia.org/wiki/決勝時刻 "wikilink")*
  - *[決勝時刻2](../Page/決勝時刻2.md "wikilink")*
  - *[決勝時刻4：現代戰爭](../Page/決勝時刻4：現代戰爭.md "wikilink")* \[6\]
  - *[決勝時刻：戰爭世界](../Page/決勝時刻：戰爭世界.md "wikilink")*\[7\]
  - <s>*[末日之戰](https://zh.wikipedia.org/wiki/末日之戰 "wikilink")*</s>
  - <s>*[末日之戰：戰火](https://zh.wikipedia.org/wiki/末日之戰#多人遊戲 "wikilink")*</s>
  - <s>*[毀滅戰士3](https://zh.wikipedia.org/wiki/毀滅戰士3 "wikilink")*</s>
  - <s>*[Enemy Territory: Quake
    Wars](https://zh.wikipedia.org/wiki/Enemy_Territory:_Quake_Wars "wikilink")*</s>
  - <s>*[極地戰嚎](https://zh.wikipedia.org/wiki/極地戰嚎 "wikilink")*</s>
  - <s>*[極地戰嚎2](../Page/極地戰嚎2.md "wikilink")*</s>
  - <s>*[戰慄突擊](https://zh.wikipedia.org/wiki/戰慄突擊 "wikilink")*</s>
  - <s>*[F.E.A.R. Extraction
    Point](https://zh.wikipedia.org/wiki/F.E.A.R._Extraction_Point "wikilink")*</s>
  - *[F.E.A.R. Perseus
    Mandate](https://zh.wikipedia.org/wiki/F.E.A.R._Perseus_Mandate "wikilink")*
  - <s>*[FIFA
    Online](https://zh.wikipedia.org/wiki/FIFA_Online "wikilink")*</s>
  - <s>*[Frontlines: Fuel of
    War](https://zh.wikipedia.org/wiki/Frontlines:_Fuel_of_War "wikilink")*</s>
  - <s>*[Joint Operations: Typhoon
    Rising](https://zh.wikipedia.org/wiki/Joint_Operations:_Typhoon_Rising "wikilink")*</s>
  - <s>*[Joint Operations:
    Escalation](https://zh.wikipedia.org/wiki/Joint_Operations:_Escalation "wikilink")*</s>
  - <s>*[Knight
    Online](https://zh.wikipedia.org/wiki/Knight_Online "wikilink")*</s>
  - *[榮譽勳章](https://zh.wikipedia.org/wiki/榮譽勳章_\(2010\) "wikilink")*
  - <s>*[榮譽勳章：空降神兵](https://zh.wikipedia.org/wiki/榮譽勳章：空降神兵 "wikilink")*</s>
  - <s>*[極速快感：職業街頭](../Page/極速快感：職業街頭.md "wikilink")*</s>
  - *[極速快感：臥底風雲](https://zh.wikipedia.org/wiki/極速快感：臥底風雲 "wikilink")*
  - <s>*[獵魂](https://zh.wikipedia.org/wiki/獵魂 "wikilink")*</s>
  - <s>*[Quake III
    Arena](https://zh.wikipedia.org/wiki/Quake_III_Arena "wikilink")*</s>
  - *[Quake 4](https://zh.wikipedia.org/wiki/Quake_4 "wikilink")*
  - <s>*[Quake Live](../Page/Quake_Live.md "wikilink")*</s>
  - *[Red Orchestra 2: Heroes of
    Stalingrad](https://zh.wikipedia.org/wiki/Red_Orchestra_2:_Heroes_of_Stalingrad "wikilink")*
  - <s>*[Return to Castle
    Wolfenstein](https://zh.wikipedia.org/wiki/Return_to_Castle_Wolfenstein "wikilink")*</s>
  - *[Soldier of Fortune II: Double
    Helix](https://zh.wikipedia.org/wiki/Soldier_of_Fortune_II:_Double_Helix "wikilink")*
  - <s>*[Tom Clancy's Rainbow Six 3: Raven
    Shield](https://zh.wikipedia.org/wiki/Tom_Clancy's_Rainbow_Six_3:_Raven_Shield "wikilink")*</s>
  - <s>*[Tom Clancy's Rainbow Six:
    Vegas](https://zh.wikipedia.org/wiki/Tom_Clancy's_Rainbow_Six:_Vegas "wikilink")*</s>
  - <s>*[Tom Clancy's Rainbow Six: Vegas
    2](https://zh.wikipedia.org/wiki/Tom_Clancy's_Rainbow_Six:_Vegas_2 "wikilink")*</s>
  - *[Tom Clancy's Ghost Recon
    Phantoms](https://zh.wikipedia.org/wiki/Tom_Clancy's_Ghost_Recon_Phantoms "wikilink")*
  - <s>*[War
    Rock](https://zh.wikipedia.org/wiki/War_Rock "wikilink")*</s>
  - <s>*[Wolfenstein: Enemy
    Territory](https://zh.wikipedia.org/wiki/Wolfenstein:_Enemy_Territory "wikilink")*</s>
  - *[德軍總部：黑曜陰謀](../Page/德軍總部：黑曜陰謀.md "wikilink")*
  - <s>*[Warhammer Online: Age of
    Reckoning](https://zh.wikipedia.org/wiki/Warhammer_Online:_Age_of_Reckoning "wikilink")*</s>

## 參見

  - [HackShield](../Page/HackShield.md "wikilink")
  - [GameGuard](https://zh.wikipedia.org/wiki/GameGuard "wikilink")

## 參考資料

## 外部連結

  - [PunkBuster
    手動更新程式下載頁面](http://www.evenbalance.com/index.php?page=pbsetup.php)
  - [戰地秘境 - PunkBuster 反作弊程式討論區](http://bfx.tw/index.php?showforum=65)
  - [PBBans 和 PB 的不同](http://bfx.tw/index.php?showtopic=39846)

[Category:反作弊软件](https://zh.wikipedia.org/wiki/Category:反作弊软件 "wikilink")

1.
2.
3.
4.
5.
6.
7.