**FeliCa**是[Sony所開發出來的非接觸式](../Page/Sony.md "wikilink")[IC卡技術](../Page/IC卡.md "wikilink")。名稱由英語中代表「幸福」的「Felicity」和「Card」（卡片）組合而成，是Sony的[註冊商標](../Page/註冊商標.md "wikilink")。

## 概要

FeliCa是為了非接觸式IC卡而開發出來的通信技術。非接觸式IC卡由讀寫時送出的[載波引導而供給電力](../Page/載波.md "wikilink")，由載波的[調變與卡片讀寫溝通](../Page/調變.md "wikilink")。例如[ISO
14443](../Page/ISO_14443.md "wikilink") type
B，使用[ASK](../Page/ASK.md "wikilink")10%調變，及[NRZ編碼](../Page/NRZ編碼.md "wikilink")。與此相比，FeliCa的調變同樣是ASK10%，但不同的是採用[曼徹斯特編碼](../Page/曼徹斯特編碼.md "wikilink")。

最初被提案為ISO 14443 type C，但未獲採納。之後，FeliCa和其向後相容方式被標準化為ISO 18092（Near Field
Communication（NFC），[近距離通信](../Page/近場通訊.md "wikilink")）。在日本國內視為[JICSAP](../Page/JICSAP.md "wikilink")
IC卡規格V2.0「第四部份高速處理用IC卡」和的IC卡規格而予以標準化。

FeliCa和一般的IC卡同樣有適用於現金卡或識別卡的技術，但為了要求高速處理特性（自動充值设备、大樓進出管制等）或結帳（便利商店）等等的應用，將指令集加以特殊化。因此和ISO
7816-3的基本指令並不相容。且IC芯片內部的記憶體固定為16位元組長的紀錄，因此和ISO 7816-3規定的檔案結構亦不相容。

加密處理方面，相互認證使用[Triple
DES](../Page/Triple_DES.md "wikilink")，通訊使用[DES或](../Page/DES.md "wikilink")[Triple
DES](../Page/Triple_DES.md "wikilink")。沒有[公開密鑰加密的規格](../Page/公開密鑰加密.md "wikilink")。雙模型式（接觸／非接觸）雖然可以有[公開密鑰加密](../Page/公開密鑰加密.md "wikilink")，但只在接觸通訊時使用。

相互認証時、縮退码用作加解的密码。不是说每一个项目个别认证、而是通过复数的访问码加密生成的键称为退缩码，这个退缩码最多可供16个项目使用。縮退码生不成原来的密码。这样，不降低安全级别的情况下实现高速化处理。

## FeliCa 芯片的使用

Felica 芯片除了使用在IC卡的IC芯片上，也使用在手机或手錶上。

最初只有 Sony
生產製造，但之後亦與[英飛凌共同開發](../Page/英飛凌.md "wikilink")（2001年11月發表），[日立隨後採用](../Page/日立.md "wikilink")（2002年6月發表）等等，因而有多重來源供應商。

### IC卡上的使用

1997年9月由香港的「[八達通](../Page/八達通.md "wikilink")」首先採用。之後，2001年11月日本的「[Suica](../Page/Suica.md "wikilink")」，2002年4月新加坡的「[易通卡](../Page/易通卡.md "wikilink")」及2002年中深圳的「[深圳通](../Page/深圳通.md "wikilink")」均有採用，然而新加坡的「易通卡」及深圳的「深圳通」已先後棄用（唯深圳通與八達通聯名卡
-
「互通行」已重新使用Felica），改用了由[握奇數據生產採用](../Page/握奇數據.md "wikilink")[英飛凌芯片的IC卡](../Page/英飛凌.md "wikilink")，現時在日本國外只有香港的「八達通」（包括「互通行卡」和「嶺南通•八達通」聯名卡及「八達通•嶺南通」聯名卡之八達通部分）仍有繼續使用
FeliCa。

在日本國內，諸如 [Suica](../Page/Suica.md "wikilink")
之類的IC卡車票，[bitWallet](../Page/bitWallet.md "wikilink")
的[電子錢包服務](../Page/電子錢包.md "wikilink")
[Edy](../Page/Edy.md "wikilink")，和[新力金融公司](../Page/新力金融公司.md "wikilink")（Sony
Finance International Inc.）所發行的[信用卡](../Page/信用卡.md "wikilink")
[eLIO](../Page/eLIO.md "wikilink") 使用了 FeliCa 技術。此外，[Yodobashi
Camera](../Page/Yodobashi_Camera.md "wikilink") 附有 Edy 功能並整合點數卡的 eLIO
信用卡「Gold Point Card IC eLIO」，或是信用卡和 Suica 合一，附加Edy IC金融卡的「VIEW
Suica」，及 Bic Camera 和 Suica 合一的「Bic Camera Suica
Card」等等的結合服務也在進行中。在過去，採用 FeliCa
的有，在1999年到2003年間，[東京臨海副都心](../Page/東京臨海副都心.md "wikilink")・[青海的](../Page/青海.md "wikilink")
[palette town](../Page/palette_town.md "wikilink") 内的 [MEGA
WEB](../Page/MEGA_WEB.md "wikilink") 發行的「MEGA WEB Member's
Card」，或2000年到2002年間在[東京臨海副都心](../Page/東京臨海副都心.md "wikilink")・[お台場](../Page/お台場.md "wikilink")
Sony Entertainment 的遊樂設施 Mediage 發行的「Mediage Fan Card」等等。

### 手机上的使用

[手机所使用的](../Page/手机.md "wikilink") FeliCa 芯片稱作 **Mobile FeliCa IC
Chip**，是由 Sony 和 [NTT DoCoMo](../Page/NTT_DoCoMo.md "wikilink")
合資成立的公司 [FeliCa
Networks](../Page/FeliCa_Networks.md "wikilink") 所開發的。

2004年7月使用了 FeliCa 芯片的手机開始上市銷售。因為有 FeliCa 芯片，因此可以把手机當作 Edy 或 Suica（Mobile
Suica）使用。在使用 Mobile FeliCa Chip 的服務開始上路之前，NTT DoCoMo
就已經將[錢包手機的商標定為服務標誌](../Page/錢包手機.md "wikilink")。Mobile
FeliCa 芯片最早只有 Sony 製造，後來的 Mobile FeliCa
芯片由[東芝和](../Page/東芝.md "wikilink")[瑞薩在](../Page/瑞薩.md "wikilink")2006年5月公開加入，成為三家公司共同供應。這個新一代的
Mobile FeliCa 芯片，增加了容量且通信功能加強。使用此種芯片的手机在2006年10月公開。

  - 「[iMode FeliCa](../Page/iMode_FeliCa.md "wikilink")」（[NTT
    DoCoMo](../Page/NTT_DoCoMo.md "wikilink")）
  - 「[EZ FeliCa](../Page/EZ_FeliCa.md "wikilink")」（[au by
    KDDI](../Page/Au_\(手机\).md "wikilink")）
  - 「[S\!FeliCa](../Page/S!FeliCa.md "wikilink")（舊名為Vodafone\!FeliCa）」（[Softbank
    Mobile](../Page/Softbank_Mobile.md "wikilink")）
  - 「[Apple Pay](../Page/Apple_Pay.md "wikilink")（日本销售\[1\]的[iPhone
    7和](../Page/iPhone_7.md "wikilink")[Apple Watch Series
    2及全球](../Page/Apple_Watch_Series_2.md "wikilink")[iPhone
    8](../Page/iPhone_8.md "wikilink")、[iPhone
    X和](../Page/iPhone_X.md "wikilink")[Apple Watch Series
    3](../Page/Apple_Watch_Series_3.md "wikilink")\[2\]开始搭载Felica功能）\[3\]

在手机上的普及狀況，請參考[錢包手機條目](../Page/錢包手機.md "wikilink")。

## FeliCa芯片的安全性

使用 FeliCa 芯片的卡片，經過ISO 15408 EAL4的認證。

雖然有報導指稱FeliCa存在著安全性問題，但報導的內文中並沒有明確的事實證據\[4\]\[5\]。

## FeliCa相關規格

  - JISX6319-4:ICカード実装仕様－第4部：高速処理用ICカード（日本工業標準調査会）\[6\]
  - 特開平10-20780（相互認証·通信路暗号化）\[7\]

## 歷史

  - 1988年[索尼开始研发无线IC](../Page/索尼.md "wikilink")。
  - 1994年名称确定为 FeliCa。
  - 1994年香港的[八达通卡有限公司决定采用](../Page/八达通.md "wikilink")。这是日本以外第一次被采用。
  - 1997年[八达通卡正式發行](../Page/八达通.md "wikilink")。这是日本以外正式被使用。
  - 2001年[Suica卡正式發行](../Page/Suica.md "wikilink")。

## 參考

## 相關條目

  - [RFID](../Page/RFID.md "wikilink")
  - [おサイフケータイ](../Page/おサイフケータイ.md "wikilink")
  - ICカード乗車券
      - [Suica](../Page/Suica.md "wikilink")
      - [TOICA](../Page/TOICA.md "wikilink")
      - [ICOCA](../Page/ICOCA.md "wikilink")
      - [せたまる](../Page/せたまる.md "wikilink")
      - [PASMO](../Page/PASMO.md "wikilink")
      - [LuLuCa](../Page/LuLuCa.md "wikilink")
      - [NICE PASS](../Page/ナイスパス_\(遠州鉄道\).md "wikilink")
      - [ayuca](../Page/ayuca.md "wikilink")
      - [Passca](../Page/Passca.md "wikilink")
      - [ICa](../Page/ICa.md "wikilink")
      - [CI-CA](../Page/CI-CA.md "wikilink")
      - [NicoPa](../Page/NicoPa.md "wikilink")
      - [PiTaPa](../Page/PiTaPa.md "wikilink")
      - [Hareca](../Page/Hareca.md "wikilink")
      - [IruCa](../Page/IruCa.md "wikilink")
      - [ICい～カード](../Page/ICい～カード.md "wikilink")
      - [長崎スマートカード](../Page/長崎スマートカード.md "wikilink")
      - [宮交バスカ](../Page/宮交バスカ.md "wikilink")
      - [いわさきICカード](../Page/いわさきICカード.md "wikilink")
      - [RapiCa](../Page/RapiCa.md "wikilink")
  - [Edy](../Page/Edy.md "wikilink")
  - [nanaco](../Page/nanaco.md "wikilink")
  - [八達通](../Page/八達通.md "wikilink")
  - [深圳通](../Page/深圳通.md "wikilink")（现只有「互通行」卡有使用FeliCa）
  - [QUICPay](../Page/QUICPay.md "wikilink")（JCB）
  - [長安通](../Page/長安通.md "wikilink")

## 外部連結

  - [Sony Japan | FeliCaウェブサイト](http://www.sony.co.jp/Products/felica/)

[Category:索尼](https://zh.wikipedia.org/wiki/Category:索尼 "wikilink")
[Category:電子貨幣](https://zh.wikipedia.org/wiki/Category:電子貨幣 "wikilink")
[Category:行動支付](https://zh.wikipedia.org/wiki/Category:行動支付 "wikilink")

1.
2.
3.
4.  <http://facta.co.jp/article/200609061.html> FACTA記事2006年9月号
5.  <http://facta.co.jp/article/note/200701.shtml> FACTA記事2007年1月号
6.  <http://www.jisc.go.jp/app/pager?id=31259&%23jps.JPSH0090D:JPSO0023:/JPS/JPSO0090.jsp=&AKKNB_vJISJISNO=X6319-4>
    JISX6319-4
7.  <http://v3.espacenet.com/origdoc?DB=EPODOC&IDX=JP10020780&F=0&QPN=JP10020780>
    特開平10-20780