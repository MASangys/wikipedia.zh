> 本文内容由[FeliCa](https://zh.wikipedia.org/wiki/FeliCa)转换而来。


**FeliCa**是[Sony所開發出來的非接觸式](https://zh.wikipedia.org/wiki/Sony "wikilink")[IC卡技術](https://zh.wikipedia.org/wiki/IC卡 "wikilink")。名稱由英語中代表「幸福」的「Felicity」和「Card」（卡片）組合而成，是Sony的[註冊商標](https://zh.wikipedia.org/wiki/註冊商標 "wikilink")。

## 概要

FeliCa是為了非接觸式IC卡而開發出來的通信技術。非接觸式IC卡由讀寫時送出的[載波引導而供給電力](https://zh.wikipedia.org/wiki/載波 "wikilink")，由載波的[調變](../Page/調變.md "wikilink")與卡片讀寫溝通。例如[ISO 14443](https://zh.wikipedia.org/wiki/ISO_14443 "wikilink") type B，使用[ASK](https://zh.wikipedia.org/wiki/ASK "wikilink")10%調變，及[NRZ編碼](https://zh.wikipedia.org/wiki/NRZ編碼 "wikilink")。與此相比，FeliCa的調變同樣是ASK10%，但不同的是採用[曼徹斯特編碼](https://zh.wikipedia.org/wiki/曼徹斯特編碼 "wikilink")。

最初被提案為ISO 14443 type C，但未獲採納。之後，FeliCa和其向後相容方式被標準化為ISO 18092（Near Field Communication（NFC），[近距離通信](../Page/近場通訊.md "wikilink")）。在日本國內視為[JICSAP](https://zh.wikipedia.org/wiki/JICSAP "wikilink") IC卡規格V2.0「第四部份高速處理用IC卡」和的IC卡規格而予以標準化。

FeliCa和一般的IC卡同樣有適用於現金卡或識別卡的技術，但為了要求高速處理特性（自動充值设备、大樓進出管制等）或結帳（便利商店）等等的應用，將指令集加以特殊化。因此和ISO 7816-3的基本指令並不相容。且IC芯片內部的記憶體固定為16位元組長的紀錄，因此和ISO 7816-3規定的檔案結構亦不相容。

加密處理方面，相互認證使用[Triple DES](https://zh.wikipedia.org/wiki/Triple_DES "wikilink")，通訊使用[DES或](https://zh.wikipedia.org/wiki/DES "wikilink")[Triple DES](https://zh.wikipedia.org/wiki/Triple_DES "wikilink")。沒有[公開密鑰加密的規格](https://zh.wikipedia.org/wiki/公開密鑰加密 "wikilink")。雙模型式（接觸／非接觸）雖然可以有[公開密鑰加密](https://zh.wikipedia.org/wiki/公開密鑰加密 "wikilink")，但只在接觸通訊時使用。

相互認証時、縮退码用作加解的密码。不是说每一个项目个别认证、而是通过复数的访问码加密生成的键称为退缩码，这个退缩码最多可供16个项目使用。縮退码生不成原来的密码。这样，不降低安全级别的情况下实现高速化处理。

## FeliCa 芯片的使用

Felica 芯片除了使用在IC卡的IC芯片上，也使用在手机或手錶上。

最初只有 Sony 生產製造，但之後亦與[英飛凌共同開發](https://zh.wikipedia.org/wiki/英飛凌 "wikilink")（2001年11月發表），[日立隨後採用](https://zh.wikipedia.org/wiki/日立 "wikilink")（2002年6月發表）等等，因而有多重來源供應商。

### IC卡上的使用

1997年9月由香港的「[八達通](../Page/八達通.md "wikilink")」首先採用。之後，2001年11月日本的「[Suica](../Page/Suica.md "wikilink")」，2002年4月新加坡的「[易通卡](../Page/易通卡.md "wikilink")」及2002年中深圳的「[深圳通](../Page/深圳通.md "wikilink")」均有採用，然而新加坡的「易通卡」及深圳的「深圳通」已先後棄用（唯深圳通與八達通聯名卡 - 「互通行」已重新使用Felica），改用了由[握奇數據生產採用](https://zh.wikipedia.org/wiki/握奇數據 "wikilink")[英飛凌芯片的IC卡](https://zh.wikipedia.org/wiki/英飛凌 "wikilink")，現時在日本國外只有香港的「八達通」（包括「互通行卡」和「嶺南通•八達通」聯名卡及「八達通•嶺南通」聯名卡之八達通部分）仍有繼續使用 FeliCa。

在日本國內，諸如 [Suica](../Page/Suica.md "wikilink") 之類的IC卡車票，[bitWallet](https://zh.wikipedia.org/wiki/bitWallet "wikilink") 的[電子錢包服務](https://zh.wikipedia.org/wiki/電子錢包 "wikilink") [Edy](https://zh.wikipedia.org/wiki/Edy "wikilink")，和[新力金融公司](https://zh.wikipedia.org/wiki/新力金融公司 "wikilink")（Sony Finance International Inc.）所發行的[信用卡](../Page/信用卡.md "wikilink") [eLIO](https://zh.wikipedia.org/wiki/eLIO "wikilink") 使用了 FeliCa 技術。此外，[Yodobashi Camera](https://zh.wikipedia.org/wiki/Yodobashi_Camera "wikilink") 附有 Edy 功能並整合點數卡的 eLIO 信用卡「Gold Point Card IC eLIO」，或是信用卡和 Suica 合一，附加Edy IC金融卡的「VIEW Suica」，及 Bic Camera 和 Suica 合一的「Bic Camera Suica Card」等等的結合服務也在進行中。在過去，採用 FeliCa 的有，在1999年到2003年間，[東京臨海副都心](../Page/東京臨海副都心.md "wikilink") - [青海的](../Page/青海_\(江東區\).md "wikilink") [palette town](https://zh.wikipedia.org/wiki/palette_town "wikilink") 内的 [MEGA WEB](https://zh.wikipedia.org/wiki/MEGA_WEB "wikilink") 發行的「MEGA WEB Member's Card」，或2000年到2002年間在[東京臨海副都心](../Page/東京臨海副都心.md "wikilink") - [御台場](../Page/御台場.md "wikilink") Sony Entertainment 的遊樂設施 Mediage 發行的「Mediage Fan Card」等等。

### 手机上的使用

[手机所使用的](https://zh.wikipedia.org/wiki/手机 "wikilink") FeliCa 芯片稱作“**Mobile FeliCa IC Chip**”，是由Sony和[NTT DoCoMo合資成立的公司](https://zh.wikipedia.org/wiki/NTT_DoCoMo "wikilink")[FeliCa Networks所開發的](https://zh.wikipedia.org/wiki/FeliCa_Networks "wikilink")。

2004年7月使用了FeliCa芯片的手机開始上市銷售。因為有FeliCa芯片，因此可以把手机當作[Edy或Suica](https://zh.wikipedia.org/wiki/Edy "wikilink")（Mobile Suica）使用。在使用Mobile FeliCa Chip的服務開始上路之前，NTT DoCoMo就已經將錢包手機的商標定為服務標誌。Mobile FeliCa芯片最早只有Sony製造，後來的Mobile FeliCa芯片由[東芝和](https://zh.wikipedia.org/wiki/東芝 "wikilink")[瑞薩在](../Page/瑞薩電子.md "wikilink")2006年5月公開加入，成為三家公司共同供應。新一代的Mobile FeliCa芯片，增加了容量且通信功能加強。使用此種芯片的手机在2006年10月公開。

  - 「[iMode FeliCa](https://zh.wikipedia.org/wiki/iMode_FeliCa "wikilink")」（[NTT DoCoMo](https://zh.wikipedia.org/wiki/NTT_DoCoMo "wikilink")）
  - 「[EZ FeliCa](https://zh.wikipedia.org/wiki/EZ_FeliCa "wikilink")」（[au by KDDI](../Page/Au_\(行動電話\).md "wikilink")）
  - 「[S\!FeliCa](https://zh.wikipedia.org/wiki/S!FeliCa "wikilink")」（舊名為Vodafone\!FeliCa）（[Softbank Mobile](https://zh.wikipedia.org/wiki/Softbank_Mobile "wikilink")）
  - 「[Apple Pay](https://zh.wikipedia.org/wiki/Apple_Pay "wikilink")」（需要[iPhone 8](https://zh.wikipedia.org/wiki/iPhone_8 "wikilink")、[Apple Watch Series 3或更新机型](../Page/Apple_Watch_Series_3.md "wikilink")，以及日本销售的[iPhone 7](https://zh.wikipedia.org/wiki/iPhone_7 "wikilink")、[Apple Watch Series 2](../Page/Apple_Watch_Series_2.md "wikilink")）\[1\]

## FeliCa芯片的安全性

使用 FeliCa 芯片的卡片，經過ISO 15408 EAL4的認證。

雖然有報導指稱FeliCa存在著安全性問題，但報導的內文中並沒有明確的事實證據\[2\]\[3\]。

## FeliCa相關規格

  - JISX6319-4:ICカード実装仕様－第4部：高速処理用ICカード（日本工業標準調査会）\[4\]
  - 特開平10-20780（相互認証·通信路暗号化）\[5\]

## 歷史

  - 1988年[索尼](../Page/索尼.md "wikilink")开始研发无线IC。
  - 1994年名称确定为 FeliCa。
  - 1994年香港的[八达通卡有限公司决定采用](https://zh.wikipedia.org/wiki/八达通 "wikilink")。这是日本以外第一次被采用。
  - 1997年[八达通卡正式發行](https://zh.wikipedia.org/wiki/八达通 "wikilink")。这是日本以外正式被使用。
  - 2001年[Suica](../Page/Suica.md "wikilink")卡正式發行。

## 參考

## 相關條目

  - [RFID](https://zh.wikipedia.org/wiki/RFID "wikilink")

  - [MIFARE](https://zh.wikipedia.org/wiki/MIFARE "wikilink")

  -
  -   - [Suica](../Page/Suica.md "wikilink")

      - [TOICA](../Page/TOICA.md "wikilink")

      - [ICOCA](../Page/ICOCA.md "wikilink")

      -
      - [PASMO](../Page/PASMO.md "wikilink")

      -
      -
      -
      -
      -
      -
      -
      - [PiTaPa](../Page/PiTaPa.md "wikilink")

      -
      -
      -
      -
      -
      -
      -
  - [Edy](https://zh.wikipedia.org/wiki/Edy "wikilink")

  - [nanaco](https://zh.wikipedia.org/wiki/nanaco "wikilink")

  - [八達通](../Page/八達通.md "wikilink")

  - [深圳通](../Page/深圳通.md "wikilink")（现只有「互通行」卡有使用FeliCa）

  - （JCB）

  - [長安通](https://zh.wikipedia.org/wiki/長安通 "wikilink")

## 外部連結

  - [Sony Japan | FeliCaウェブサイト](http://www.sony.co.jp/Products/felica/)

[Category:索尼](https://zh.wikipedia.org/wiki/Category:索尼 "wikilink") [Category:電子貨幣](https://zh.wikipedia.org/wiki/Category:電子貨幣 "wikilink") [Category:行動支付](https://zh.wikipedia.org/wiki/Category:行動支付 "wikilink") [Category:日本發明](https://zh.wikipedia.org/wiki/Category:日本發明 "wikilink")

1.
2.  <http://facta.co.jp/article/200609061.html> FACTA記事2006年9月号
3.  <http://facta.co.jp/article/note/200701.shtml> FACTA記事2007年1月号
4.  <http://www.jisc.go.jp/app/pager?id=31259&%23jps.JPSH0090D:JPSO0023:/JPS/JPSO0090.jsp=&AKKNB_vJISJISNO=X6319-4> JISX6319-4
5.  <http://v3.espacenet.com/origdoc?DB=EPODOC&IDX=JP10020780&F=0&QPN=JP10020780> 特開平10-20780