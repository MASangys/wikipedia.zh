**CryptoLocker**是一種於2013年下半年出現的[特洛伊木馬](../Page/特洛伊木马_\(电脑\).md "wikilink")，以[勒索軟體](../Page/勒索軟體.md "wikilink")的形式出現的[惡意軟體](https://zh.wikipedia.org/wiki/惡意軟體 "wikilink")，以[Microsoft
Windows作業系統為主要攻擊目標](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，所衍生的變種也向[Linux](../Page/Linux.md "wikilink")等作業系統及特定廠牌的[網路儲存設備](https://zh.wikipedia.org/wiki/網路儲存設備 "wikilink")（NAS）攻擊。CryptoLocker會偽裝成一個合法的電子郵件附件或[.exe格式檔案](https://zh.wikipedia.org/wiki/.exe "wikilink")；如果被活化，該惡意軟體就會使用[RSA](../Page/RSA加密演算法.md "wikilink")[公鑰加密與](https://zh.wikipedia.org/wiki/公钥加密 "wikilink")[AES](../Page/高级加密标准.md "wikilink")[秘鑰的形式](../Page/公开密钥加密.md "wikilink")，加密本地與內部網路的特定類型檔案；而私人金鑰則把持在惡意軟體所控制的伺服器上。該蠕蟲會顯示一則訊息，表示如果在規定的期限進行付款（經由[比特幣或其他儲值管道](../Page/比特币.md "wikilink")），就能夠解密這些檔案，否則私人金鑰將會被銷毀，再也不能打開這些檔案。如果在期限之內，該惡意軟體還會提供一個由惡意軟體控制的線上服務提供解密，但要付出高額的比特幣。

即使CryptoLocker本身很容易清除，但是這些已經被加密的檔案，對於研究者而言是無法被解開的。部分研究者認為如果不付款給勒索者，就沒有其他方法能夠解密這些檔案；另外的研究者則說付款給勒索者是唯一能在未備份的情形下，讓檔案解密的方法。

## 運作

CryptoLocker通常會以[電子郵件附件的型態](https://zh.wikipedia.org/wiki/電子郵件附件 "wikilink")，包裝成一個看似無害的電子郵件（通常使用合法公司的電子郵件外觀）進行傳送，或是經由[殭屍網路發送](https://zh.wikipedia.org/wiki/殭屍網路 "wikilink")。所附上的ZIP檔案格式包含了一個可執行的檔案，通常是使用偽裝的PDF文件附檔名與檔案名稱，利用Windows系統當中的文件擴展名規則，掩飾真正的[EXE副檔名形式檔案](https://zh.wikipedia.org/wiki/EXE "wikilink")。部份情況下則會實際含有[宙斯特洛伊木馬病毒](https://zh.wikipedia.org/wiki/宙斯_\(特洛伊木馬\) "wikilink")，以進行安裝CryptoLocker\[1\]\[2\]。首次啟動時，[有效負載會以隨機的名稱](https://zh.wikipedia.org/wiki/有效負載 "wikilink")，自行安裝於[我的文件](../Page/我的文件.md "wikilink")，並於登錄檔登錄一個編碼，會導致於開機時啟動。然後，該惡意軟體會嘗試連接被勒索者所控制的伺服器與指令，一旦成功連接，該伺服器就會產生一個2048位元的[RSA加密金鑰配對](https://zh.wikipedia.org/wiki/RSA "wikilink")，並且送出[公開金鑰到被感染的電腦](https://zh.wikipedia.org/wiki/公鑰加密 "wikilink")\[3\]\[4\]。該伺服器可能是一個本地代理伺服器或其他的代理伺服器，會頻繁地在不同國家間進行重定位，增加追蹤的困難度\[5\]\[6\]。

該有效負載會將整個硬碟與相連結的網路硬碟中的檔案，利用公開金鑰進行加密，並將檔案加密的紀錄送入一個登錄碼。這個過程中，僅會將特定附檔名的資料檔案進行加密，例如[Microsoft
Office](../Page/Microsoft_Office.md "wikilink")、[OpenDocument與其他的文件](https://zh.wikipedia.org/wiki/OpenDocument "wikilink")、圖像與[AutoCAD](../Page/AutoCAD.md "wikilink")檔案\[7\]。有效負載接者會顯示一則訊息，告知用戶檔案已經被加密，並必須經由預儲值管道（如MoneyPak或Ukash）支付300美元或歐元，或是2[比特幣](https://zh.wikipedia.org/wiki/比特幣 "wikilink")，才能解開這些檔案。付款動作必須在72至100小時內完成，否則私人金鑰將會在伺服器端摧毀，並且「將永遠沒有人能打開這些檔案\[8\]\[9\]。」勒索付款後，會允許用戶下載一個解密程式，然後預載用戶的私人金鑰\[10\]。

2013年11月，CryptoLocker的操作者開放了一個線上服務，允許用戶不用CryptoLocker程式就能解密檔案，並且必須於截止時間前下載解密金鑰；這個過程包含了將解密檔案樣本上傳到惡意軟體的網站，然後在24小時內，網站會依據請求，尋找匹配的金鑰。一旦匹配成功，用戶就能夠進行線上付款；如果72小時的期限已過，付款價格將會增長到10比特幣（在2013年11月上旬，換算匯率為超過3500美元）\[11\]\[12\]\[13\]。

## 防災與解災

安全軟體可能無法偵測到CryptoLocker，或只能在解密進行或完成後才會被偵測到。如果該攻擊能在早期被起疑或偵測到，該惡意軟體有時只會加密一小部分的檔案；立即清除該惡意軟體（這本身就是一個相對簡單的程序）理論上可以降低資料的傷害數量\[14\]\[15\]。專家建議的預防方式，包含使用軟體或其他安全策略，阻擋CryptoLocker的有效負荷完全被佔據\[16\]\[17\]\[18\]\[19\]\[20\]。平常勤於備份重要檔案，並離線、異地儲存，使得檔案遭勒索軟體加密後，尚有機會可從備份還原。

由於該檔案的操作性質，一些專家坦承支付給勒索者是在缺乏備份還原（尤其是不經由網路連接下的離線備份，或是從[連續資料保護系統的備份進行還原](https://zh.wikipedia.org/wiki/連續資料保護 "wikilink")）下的唯一方式。由於金鑰的長度是由CryptoLocker所操縱，可以預見地，這些被加密的檔案無法[暴力破解](https://zh.wikipedia.org/wiki/暴力破解法 "wikilink")，在不付款的情況下解密檔案；相似的例子為2008年的[蠕蟲病毒Gpcode](https://zh.wikipedia.org/wiki/蠕蟲病毒 "wikilink").AK，使用的是1024位元的加密，相信這個加密程度太大，導致無法以分散式計算，或是發現漏洞的方式打破加密的內容\[21\]\[22\]\[23\]\[24\]。[賽門鐵克估計至少](https://zh.wikipedia.org/wiki/賽門鐵克 "wikilink")3%被感染的用戶會採用付款方式解決\[25\]。

2013年10月下旬，[卡巴斯基報告其DNS陷阱已經建立完成](https://zh.wikipedia.org/wiki/卡巴斯基 "wikilink")，可以在部分域名用戶接觸到CryptoLocker時進行阻擋\[26\]。

## 變種

  - [Crypt0L0cker](https://zh.wikipedia.org/wiki/Crypt0L0cker "wikilink")
    類似CryptoLocker的勒索軟體

## 參考文獻

## 外部連結

  -
[Category:勒索軟體](https://zh.wikipedia.org/wiki/Category:勒索軟體 "wikilink")
[Category:网络攻击](https://zh.wikipedia.org/wiki/Category:网络攻击 "wikilink")

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
13.

14.
15.

16.
17.
18.

19.

20.

21.
22.
23.

24.

25.
26.