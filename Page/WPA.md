[缩略图](https://zh.wikipedia.org/wiki/File:Fritz!Box_Fon_WLAN_7141_-_Typenschild-3743.jpg "fig:缩略图")
**WPA**（），意即「Wi-Fi存取保護」，是一種保護[無線網路](https://zh.wikipedia.org/wiki/無線網路 "wikilink")（[Wi-Fi](../Page/Wi-Fi.md "wikilink")）存取安全的技術標準。它是應研究者在前一代的[有線等效加密](../Page/有線等效加密.md "wikilink")（WEP）系統中找到的幾個嚴重的弱點而產生的。目前廣泛實作的有WPA、WPA2兩個標準，WPA實作了[IEEE](https://zh.wikipedia.org/wiki/IEEE "wikilink")
[802.11i標準的大部分](https://zh.wikipedia.org/wiki/802.11i "wikilink")，是在802.11i完備之前替代WEP的過渡方案。WPA的設計可以用在所有的[無線網卡上](https://zh.wikipedia.org/wiki/無線網卡 "wikilink")，但未必能用在第一代的[無線接取器上](https://zh.wikipedia.org/wiki/無線接取器 "wikilink")。WPA2具備完整的標準體系，但其不能被應用在某些舊型的網卡上。WPA和WPA2這兩個標準都提供了不錯的保全能力，但也都存在自己的問題：

  - WPA或WPA2一定要啟動並且被選來代替WEP才能生效，但是在某些旧设备的安裝指引或默认配置中，WEP标准是默认选项。
  - 在使用家中和小型辦公室最可能選用的「個人」（Personal）模式時，為了保全的完整性，所需的[密語一定要比過去用戶所設定的六到八個字元的](https://zh.wikipedia.org/wiki/passphrase "wikilink")[密碼還長](https://zh.wikipedia.org/wiki/密碼_\(認證\) "wikilink")。

目前最新版標準是2018年1月發表的WPA3。\[1\]

## 歷史

WPA是由[Wi-Fi联盟](../Page/Wi-Fi联盟.md "wikilink")（）这个业界团体创建的，他們擁有[Wi-Fi這個名詞的商標](../Page/Wi-Fi.md "wikilink")，並且會檢驗要使用Wi-Fi這個名詞的設備以核發證書。
[缩略图](https://zh.wikipedia.org/wiki/File:4-way-handshake_WPA2.png "fig:缩略图")
[缩略图](https://zh.wikipedia.org/wiki/File:Wpa_gui-screenshot.png "fig:缩略图")
對WPA标准的实际运用檢驗从[2003年4月開始](../Page/2003年4月.md "wikilink")，并於[2003年11月變成強制性](../Page/2003年11月.md "wikilink")。完整的802.11i標準是在[2004年6月通過的](../Page/2004年6月.md "wikilink")。
[缩略图](https://zh.wikipedia.org/wiki/File:BSNL_Chennai_Broadband's_Wi-Fi_modem_from_Nokia_Siemens_Networks.jpg "fig:缩略图")
在WPA的設計中要用到一個[802.1X认证服务器來分发不同的密钥給各个终端用户](https://zh.wikipedia.org/wiki/802.1X "wikilink")；不過它也可以用在較不保險的「預共享密钥模式」（pre-shared
key（PSK）），這是讓同一無線路由器底下的每個用戶都使用同一把密钥。Wi-Fi联盟把這個使用pre-shared
key的版本叫做「WPA-個人版」或「WPA2-個人版」（WPA-Personal or
WPA2-Personal），用802.1X認證的版本叫做「WPA-企業版」或「WPA2-企業版」（WPA-Enterprise or
WPA2-Enterprise）。

WPA的資料是以一把128位元的鑰匙和一個48位元的初向量（IV）的[RC4](https://zh.wikipedia.org/wiki/RC4_\(cipher\) "wikilink")
[stream
cipher來加密](https://zh.wikipedia.org/wiki/stream_cipher "wikilink")。WPA超越WEP的主要改進就是在使用中可以動態改變密钥的「臨時密钥完整性協定」（Temporal
Key Integrity
Protocol，[TKIP](https://zh.wikipedia.org/wiki/TKIP "wikilink")），加上更長的初向量，這可以擊敗知名的針對WEP的。

除了認證跟加密外，WPA對於所載資料的完整性也提供了巨大的改進。WEP所使用的CRC（[循环冗余校验](https://zh.wikipedia.org/wiki/循环冗余校验 "wikilink")）先天就不安全，在不知道WEP密钥的情況下，要篡改所載資料和對應的CRC是可能的，而WPA使用了名為“Michael”的更安全的[訊息認證碼](https://zh.wikipedia.org/wiki/訊息認證碼 "wikilink")（在WPA中叫做，MIC）。進一步地，WPA使用的MIC包含了帧計數器，以避免WEP的另一個弱點——[重放攻击](https://zh.wikipedia.org/wiki/重放攻击 "wikilink")（Replay
attack）的利用。

有兩個理由使得WPA被定位為到達較安全的802.11保全之前的過渡步驟：

1.  制定802.11i的工作比原先預期的久了很多，在大家越來越關心無線安全的同時，該標準的制定花費了四年才完成；
2.  它包含了與WEP相容的802.11i子集合，即使是最早的802.11b介面卡也能用。

許多已出貨的[無線網路介面卡都有WPA韌體更新](https://zh.wikipedia.org/wiki/無線網路介面卡 "wikilink")；在2003年之前售出的802.11
[无线接取器](https://zh.wikipedia.org/wiki/无线接取器 "wikilink")（无线路由器、无线网卡等）一般而言則必須要淘汰和更换。

藉由加長密钥和初向量、減少和密钥相關的封包個數、再加上安全訊息驗證系統，WPA使得侵入無線區域網路變得困難許多。Michael演算法是WPA設計者在大多數舊的網路卡也能使用的條件下找到的最強的演算法，然而它可能會受到偽造封包攻擊。為了降低這個風險，WPA網路每當偵測到一個企圖的攻擊行為時就會關閉30秒鐘。

## WPA2

WPA2是經由Wi-Fi聯盟驗證過的[IEEE
802.11i標準的認證形式](https://zh.wikipedia.org/wiki/IEEE_802.11i "wikilink")。WPA2实现了802.11i的強制性元素[1](https://web.archive.org/web/20050828061918/http://www.wi-fi.org/OpenSection/pdf/WPA2_Q_A.pdf)，特別是Michael演算法由公認徹底安全的[CCMP訊息認證碼所取代](https://zh.wikipedia.org/wiki/CCMP "wikilink")、而RC4也被[AES取代](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")。微軟Windows
XP對WPA2的正式支援於[2005年5月1日](https://web.archive.org/web/20051228023448/http://www.microsoft.com/downloads/details.aspx?FamilyID=662bb74d-e7c1-48d6-95ee-1459234f4483&displayLang=en)推出，但網路卡的驅動程式可能要更新。[蘋果電腦在所有配備了](https://zh.wikipedia.org/wiki/Apple_Computer "wikilink")[AirPort
Extreme的](https://zh.wikipedia.org/wiki/AirPort_Extreme "wikilink")[麥金塔](../Page/麥金塔.md "wikilink")、AirPort
Extreme基地台和[AirPort
Express上都支援WPA](https://zh.wikipedia.org/wiki/AirPort_Express "wikilink")2，所需的韌體升級已包含在2005年7月14日釋出的AirPort
4.2中。

### 預共用密鑰模式（PSK）的安全性

预共享密钥模式（pre-shared key
（PSK），又稱為"-Personal"，即「－個人模式」）是针对承担不起802.1X认证服务器的成本和复杂度的家庭或小型公司网络设计和使用的，每一個使用者必须输入预先配置好的相同的密钥來接入网络，而密钥可以是8到63個[ASCII字元](../Page/ASCII.md "wikilink")、或是64個[16進位數字](https://zh.wikipedia.org/wiki/十六進制 "wikilink")（256位元）。使用者可以自行斟酌要不要把密钥存在電腦裡以省去重複鍵入的麻煩，但密钥一定要预先配置在Wi-Fi路由器裡。

安全性是利用
來增強的，然而使用者採用的典型的弱密钥會被[密碼破解攻擊](https://zh.wikipedia.org/wiki/密碼破解 "wikilink")。WPA和WPA2可以用至少5個詞或是14個完全隨機字母當密钥來擊敗密碼破解攻擊，不過若是想要有最大強度的話，應該採用8個Diceware詞或22個隨機字母。金鑰應該要定期更換，在有人使用網路的權利被撤消、或是設定好要使用網路的裝置遺失或被攻破時，也要立刻更換。某些消費電子晶片製造商已經有辦法跳過使用者選出弱密钥的問題，而自動產生和散佈強密钥。做法是透過軟體或硬體介面以外部方法把新的Wi-Fi介面卡或家電加入網路，包括按鈕（[Broadcom](https://zh.wikipedia.org/wiki/Broadcom "wikilink")
[SecureEasySetup](https://web.archive.org/web/20070928044749/http://www.broadcom.com/products/secureeasysetup.php)和[Buffalo
AirStation One-Touch Secure
Setup](https://web.archive.org/web/20050728150149/http://www.buffalotech.com/wireless/products/AOSS.html)）和透過軟體輸入一個短的挑戰語（[Atheros](https://zh.wikipedia.org/wiki/Atheros "wikilink")
[JumpStart](https://web.archive.org/web/20050123195310/http://www.atheros.com/pt/atheros_JumpStart_for_wireless_whitepaper.pdf)）。

目前WPA加密方式尚有一漏洞，攻击者可利用spoonwpa等工具，搜索到合法用户的网卡地址，并伪装该地址对路由器进行攻击，迫使合法用户掉线重新连接，在此过程中获得一个有效的握手包，并对握手包批量猜密码，如果猜密的字典中有合法用户设置的密码，即可被破解。建议用户在加密时尽可能使用无规律的字母与数字，以提高网络的安全性。

### 密钥重装攻擊（KRACK）

2017年5月19日，比利時2位資安研究員發表了一篇WPA2弱點研究，在不久後引發喧然大波，14年來被視為安全的WPA2架構其實有攻破的方法。不論是Android手機、iOS裝置或Windows電腦、Linux設備都有可能被竊取資料。

比利時魯汶大學IMEC-DistriNet研究群教授Mathy Vanhoef及Frank
Piessens在5月中旬發表了篇針對WPA2協定CVE漏洞的重安裝鍵攻擊（Key
Reinstallation
Attacks）研究，也通報美國電腦網路危機處理中心（CERT/CC）。2017年8月24日，兩位教授在全球資安廠商和專家集聚的[黑帽駭客大會上](https://zh.wikipedia.org/wiki/黑帽駭客 "wikilink")，發表這項研究發現。\[2\]基本上是一種交握階段的重安裝GTK攻擊，該種攻擊可以在一個無線基地台的通訊範圍內發動，可說是一種旁敲側擊的攻擊手法，並非直接解開WPA2加密強制通訊，而是透過基地臺重送訊號讓接收者再次使用那些應該用過即丟的加密金鑰，進而能將封包序號計數器歸零，這就可以進一步大量重播來解碼封包，或是插入封包來竄改通訊內容，就可以綁架所有的通訊流量，尤其許多網站把資料只透過http明碼傳輸，而沒有加密，只要綁架了Wi-Fi流量，就能直接竊聽或竄改使用者接收或發送的內容。攻擊者得以竊取[信用卡](../Page/信用卡.md "wikilink")、密碼、聊天訊息、[電子郵件](https://zh.wikipedia.org/wiki/電子郵件 "wikilink")、相片等資訊，理論上任何Wi-Fi網路上的內容都會被看光甚至竄改。\[3\]

唯一受限是攻擊者必須進入基地台的訊號範圍，無法用網際網路遠端攻擊，但依然有一大隱患，各大硬體廠商也在研究軟體修正此一漏洞方法。然而目前世界上大量基地台是由不太懂電腦的使用者所控制，例如大量[超商](https://zh.wikipedia.org/wiki/超商 "wikilink")、餐館中的免費Wi-Fi或是家用裝置、商店裝置，如果修補涉及到要進入基地台後端更新軟體、韌體，對多數人恐難以關注此一問題和實現操作。

## WPA和WPA-2企業版中的EAP種類

[Wi-Fi聯盟已經發佈了在WPA及WPA](../Page/Wi-Fi联盟.md "wikilink")2企業版的認證計劃裡增加EAP（[可擴充認證協定](../Page/扩展认证协议.md "wikilink")）的消息，這是為了確保通過WPA企業版認證的產品之間可以互通。先前只有EAP-TLS（[Transport
Layer
Security](https://zh.wikipedia.org/wiki/Transport_Layer_Security "wikilink")）通過Wi-Fi聯盟的認證。

目前包含在認證計劃內的EAP有下列幾種：

  - EAP-TLS（之前就驗證過了）
  - EAP-TTLS/MSCHAPv2
  - PEAPv0/EAP-MSCHAPv2
  - PEAPv1/EAP-GTC
  - EAP-SIM

特定厂商开发的802.1X用戶端和伺服器也許會支援其他的EAP種類，这个认证是為了使流行的EAP种类之间能夠互通；目前在異質網路中之所以未能大量鋪設802.1X的主要原因就是互通性的問題。

## WPA3

2018年1月，Wi-Fi联盟宣布将于年内发布包含众多对安全性改进的**WPA3**\[4\]，它将会取代WPA2\[5\]\[6\]。新标准为每个用户使用192位元加密和单独加密。Wi-Fi联盟还称，WPA3将缓解由弱密码造成的安全问题，并简化无显示接口设备的设置流程\[7\]。该标准于2018年6月25日正式发布\[8\]。

## 參考

  - [WAPI](../Page/WAPI.md "wikilink") - 受到爭議的無線區域網路安全的中國國家標準
  - [tinyPEAP](https://zh.wikipedia.org/wiki/tinyPEAP "wikilink") -
    設計來載入無線取用點的少量記憶體RADIUS伺服器

## 參考資料

  - Wi-Fi Alliance.（2003）. Wi-Fi Protected Access: Strong,
    standards-based, interoperable security for today’s Wi-Fi networks.
    Retrieved March 1, 2004 from
    <https://web.archive.org/web/20050528103930/http://www.wifialliance.com/OpenSection/pdf/Whitepaper_Wi-Fi_Security4-29-03.pdf>
  - Wi-Fi Alliance. (2004). Wi-Fi Protected Access™ security sees strong
    adoption: Wi-Fi Alliance takes strong position by requiring WPA
    security for product certification. Retrieved January 5, 2004 from
    <https://web.archive.org/web/20040220003927/http://www.wi-fi.org/OpenSection/ReleaseDisplay.asp?TID=4&ItemID=165&StrYear=2004&strmonth=2>
  - Weakness in Passphrase Choice in WPA Interface, by Robert Moskowitz.
    Retrieved March 2, 2004 from
    <http://wifinetnews.com/archives/002452.html>
  - Press Release about new EAP types supported under WPA-Enterprise
    from
    <http://www.wi-fi.org/OpenSection/ReleaseDisplay.asp?TID=4&ItemID=205&StrYear=2005&strmonth=4>

## 外部連結

  - [Wi-Fi Alliance's WPA
    page](https://web.archive.org/web/20050818104740/http://www.wi-fi.org/OpenSection/protected_access.asp)

  - [Wi-Fi Alliance's Interoperability Certificate
    page](https://web.archive.org/web/20050828124348/http://www.wi-fi.org/opensection/certification-certificate.asp)

  - [Network Configuration with
    WPA](http://www.wi-fiplanet.com/tutorials/article.php/3552826)

  - [Apple Airport and Wi-Fi Network
    Security](http://theworld.com/~reinhold/airport.html)

  - [EAP types supported under
    WPA-Enterprise](https://web.archive.org/web/20050905003804/http://www.wi-fi.org/OpenSection/eap.asp)

  - [Linux WPA/WPA2/IEEE 802.1X
    Supplicant](http://hostap.epitest.fi/wpa_supplicant/)

  - 's [Perfect Passwords: GRC's Ultra High Security Password
    Generator](https://www.grc.com/passwords/)

[Category:加密协议](https://zh.wikipedia.org/wiki/Category:加密协议 "wikilink")
[Category:无线网络](https://zh.wikipedia.org/wiki/Category:无线网络 "wikilink")
[Category:网络访问](https://zh.wikipedia.org/wiki/Category:网络访问 "wikilink")

1.

2.  <https://www.krackattacks.com/>

3.  [symantec.com](https://www.symantec.com/connect/blogs/kracks-what-you-need-know-about-new-wi-fi-encryption-vulnerabilities)

4.   Wi-Fi
    Alliance|website=www.wi-fi.org|language=en|access-date=2018-01-09}}

5.

6.

7.
8.  [Wi-Fi Alliance® introduces Wi-Fi CERTIFIED WPA3™ security | Wi-Fi
    Alliance](https://www.wi-fi.org/news-events/newsroom/wi-fi-alliance-introduces-wi-fi-certified-wpa3-security)