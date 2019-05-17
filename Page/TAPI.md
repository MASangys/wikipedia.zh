**TAPI**（Telephony Application Programming
Interface）全名**電話應用程式化介面**，是微軟所提供的應用程式介面，用於傳統電話撥接的功能。TAPI可用於控制調變解調器（modem），甚至是[用戶交換機](https://zh.wikipedia.org/wiki/用戶交換機 "wikilink")（PBX）。

一些廠商提供的驅動程式可以控制多組handsets.傳統上稱之為"third-party
control".還有一些廠商的驅動程式只能允許控制單一組handset.可稱之為"first-party
control".電話系統很自然的允許瞬間多點連線.調變解調器（modem）的連線只能是first-party.

## 歷史

TAPI是1993年由微軟與[Intel共同發表](https://zh.wikipedia.org/wiki/Intel "wikilink")。第一版的TAPI版號是1.3版，首次實現於Microsoft
Windows 3.1之上。Version 1.3當時的驅動程式還只是16位元。目前Version
1.3已不再更新，但有一些MSDN開發函式庫的CDs仍保有其檔案與補丁。

TAPI 3.0於1999年與Windows 2000共同推出。這個版本可以使用IP telephony（VoIP）。TAPI
3.0是集合傳統式PSTN電話服務和IP電話服務的漸進式API。使用Windows 2000 Active
Directory服務來簡化公司內的部署，能夠結合兩部（透過[H.323](../Page/H.323.md "wikilink")）或多部（透過[IP
Multicast](https://zh.wikipedia.org/wiki/IP_Multicast "wikilink")）電腦，並存取這種結合所涵蓋的任何媒體資料流，以提高會議品質，使網路易於管理。

Windows XP支援有TAPI 3.1以及TAPI 2.2. TAPI 3.1可以支援Microsoft Component Object
Model並提供有一系列的COM objects給程式人員呼叫使用。

## TAPI 2.x vs TAPI 3.x

TAPI
2.x是以傳統的c/c++語言撰寫，並使用[指標](https://zh.wikipedia.org/wiki/指標 "wikilink")（pointer）的觀念以減輕系統負擔，但是TAPI
3.x則整合至COM object架構。

TAPI 3.x與TAPI 2.x在功能上並不完全相同，3.x版加強了整合多媒體控制（media
control）的部份。支援標準的[H.323會議和IP多點傳送](../Page/H.323.md "wikilink")（IP
Multicast）會議，H.323可當作[RTP使用](https://zh.wikipedia.org/wiki/RTP "wikilink")。但TAPI
3.x無法包含所有的TAPI 2.x功能，例如在支援Phone class方面。

## TAPI compliant hardware

電話硬體支援TAPI包含音效[調變解調器](https://zh.wikipedia.org/wiki/調變解調器 "wikilink")（voice
modems）以及電話卡（telephony cards）諸如Dialogic boards.

下列的電話系統已有支援Tapi驅動程式.但要付費使用：

Aastra（WOW Edition）

Alcatel OXO

Alcatel OXE

[Avaya](https://zh.wikipedia.org/wiki/Avaya "wikilink") Index

[Avaya](https://zh.wikipedia.org/wiki/Avaya "wikilink") IP Office

Cisco Call Manager

Cisco Call Manager Express（First-party）

Elmeg

InterTel Axxess（First-party）

LG LDK

Mitel 3300（discontinued）

NEC Aspire

NEC XN120（Topaz）

Nortel BCM

Nortel CS

Nortel Meridian

Nortel Norstar

Panasonic KX-TD

Panasonic KX-TDA

Panasonic KX-TDE

Panasonic NCP

Samsung OfficeServ

Siemens 3000（First-party）

Tadiran

Toshiba CT（First-party）

ZyXEL X6004/X2002 PBX

## 參見

  - [TSAPI](https://zh.wikipedia.org/wiki/TSAPI "wikilink")
  - [JTAPI](https://zh.wikipedia.org/wiki/Java_Telephony_API "wikilink")（Java
    Telephony API）
  - [Microsoft
    NetMeeting](https://zh.wikipedia.org/wiki/Microsoft_NetMeeting "wikilink")
  - [Telephony Service
    Provider](https://zh.wikipedia.org/wiki/Telephony_Service_Provider "wikilink")
  - [H.323](../Page/H.323.md "wikilink")

## 外部連結

  - [MSDN](https://zh.wikipedia.org/wiki/MSDN "wikilink") [Library about
    TAPI](http://msdn2.microsoft.com/en-us/library/ms950407.aspx)
  - [Andreas Marschall's TAPI and TSPI
    FAQ](http://www.i-b-a-m.de/Andreas_Marschall's_TAPI_and_TSPI_FAQ.htm)
  - [www.tapi.info Wiki Site about
    TAPI](https://web.archive.org/web/20160105200325/http://www.tapi.info/)
  - [KDTele Tools - Programming Library for TAPI from Kaed
    Systems](http://www.kaed.com/kdtele/index.html)
  - [ExceleTel TeleTools - Telephony development tools for VCL, ActiveX,
    and .NET TAPI programming](http://www.exceletel.com)
  - [TSP++ 3.0 - .NET managed Library for TAPI from Mark
    Smith](http://www.julmar.com/_Media/tspv3053.exe)
  - [nrComm Lib Delphi/C++Builder component library with TAPI
    support](http://www.deepsoftware.com/nrcomm/index.html)
  - [Former TAPI MVP Michael Dunn's TAPI
    Site](http://www.rainyjay.com/tapi/tapi.htm)
  - [RanCOM SDK for a developers of CTI
    applications](http://randersoft.com/en/RanCOM.shtml)

[Category:电话](https://zh.wikipedia.org/wiki/Category:电话 "wikilink")