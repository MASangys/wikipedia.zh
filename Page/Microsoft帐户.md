**Microsoft Account**（前稱為**Windows Live ID**、**Microsoft Passport
Network**與**.NET
Passport**）是一個由[微軟開發與提供的](https://zh.wikipedia.org/wiki/微軟 "wikilink")“統一登入”服務，允許使用者使用一個帳號登入許多網站。原來的定位為所有網絡商貿的[單一登入服務](../Page/單一登入.md "wikilink")。

## 產品概要

[Microosft_Passport_Network_logo.gif](https://zh.wikipedia.org/wiki/File:Microosft_Passport_Network_logo.gif "fig:Microosft_Passport_Network_logo.gif")
很多包括微軟服務的網站如[Outlook.com](../Page/Outlook.com.md "wikilink")、[MSNBC](https://zh.wikipedia.org/wiki/MSNBC "wikilink")、所有[MSN的服務](../Page/MSN.md "wikilink")、Xbox
360的[Xbox
Live](../Page/Xbox_Live.md "wikilink")、[Skype](../Page/Skype.md "wikilink")、[.NET
Messenger
Service或](https://zh.wikipedia.org/wiki/.NET_Messenger_Service "wikilink")[MSDN訂閱以及數家其他與微軟關係密切的公司如](https://zh.wikipedia.org/wiki/MSDN "wikilink")[Expedia與](https://zh.wikipedia.org/wiki/Expedia "wikilink")[Hoyts使用這個服務](../Page/Hoyts.md "wikilink")。[MSN的用戶會自動擁有一個他們帳戶的Live](../Page/MSN.md "wikilink")
ID。最近的用戶登入數據開始允許廣告客戶使用[Microsoft
adCenter來用作人口統計的目標](https://zh.wikipedia.org/wiki/Microsoft_adCenter "wikilink")。

在微軟全新的作業系統[Windows 10中](../Page/Windows_10.md "wikilink")，加入了使用Microsoft
Account登入的功能。

## 技術概要

一個進入交易伺服器的使用者會先重新導向到最接近的認證伺服器，然後透過[SSL加密連接詢問其使用者名稱與密碼](https://zh.wikipedia.org/wiki/SSL "wikilink")，除非使用者能夠提供一個正確的GLOBALAUTH-[cookie](https://zh.wikipedia.org/wiki/cookie "wikilink")。作為回應一個新認可的使用者（a）的電腦會被放置一個加密以及時限性的GLOBALAUTH-cookie並（b）接收一個於之前認可的認證伺服器與交易伺服器中的三重[DES加密身份標籤](https://zh.wikipedia.org/wiki/DES "wikilink")。然後身份標籤會在傳送到交易伺服器放置一個加密的LOCALAUTH-[cookie到使用者電腦](https://zh.wikipedia.org/wiki/cookie "wikilink")，亦為時限性的。現時那些LOCAL與GLOBAL的Cookie傳到不同商貿與認證伺服器防止在有效的時間內需要認證，就像[Kerberos協定](../Page/Kerberos.md "wikilink")。

如果使用者啓動了Passport（或Live
ID）的登出，那些Cookie會被移除；不過使用者經常被其他交易伺服器的登出功能擾亂，而並非有意留下那些Cookie原封不動。該服務同時依靠使用者容許他們的瀏覽器接受來自並非原來伺服器的Cookie。

## 數位權利

Passport被[電子前鋒基金會的專職侓師Deborah](https://zh.wikipedia.org/wiki/電子前鋒基金會 "wikilink")
Pierce批評可能會威脅到個人隱私因其顯出微軟將擁有使用者資訊的完全存取與使用權。[1](https://archive.is/20120629091209/http://news.com.com/Privacy+terms+revised+for+Microsoft+Passport/2100-1023_3-255310.html?tag=bplst)
微軟迅速地更新該穩私條款以平息使用者的恐懼。

因其在取得市場接受度上失敗，微軟最近聲明他們會停止在自己的營運外使用Passport。儘管媒體報導微軟逐漸淘汰該技術，微軟於2005年5月放出Passport服務的重大更新。2006年中微軟會放出Passport另一個更大的更新，名為“Windows
Live ID”，開發者聲稱這不只是名字上的改變而是完全的修改。Windows Live ID 會連接所有的[Windows
Live服務如Windows](../Page/Windows_Live.md "wikilink") Live
Hotmail\[MSN Hotmail）。

## 參考

  - [Liberty
    Alliance](https://zh.wikipedia.org/wiki/Liberty_Alliance "wikilink")
  - [OASIS](../Page/結構化資訊標準促進組織.md "wikilink")
  - [Xbox Live](../Page/Xbox_Live.md "wikilink")
  - [OpenID](../Page/OpenID.md "wikilink")，[Yadis](https://zh.wikipedia.org/wiki/Yadis "wikilink")，[Light-Weight
    Identity](https://zh.wikipedia.org/wiki/Light-Weight_Identity "wikilink")
    –基於URL的身份協定
  - [Windows CardSpace](../Page/Windows_CardSpace.md "wikilink")

## 外部連結

  - [Microsoft Account](https://login.live.com/)

[Category:身份認證系統](https://zh.wikipedia.org/wiki/Category:身份認證系統 "wikilink")
[Category:Windows_Live](https://zh.wikipedia.org/wiki/Category:Windows_Live "wikilink")