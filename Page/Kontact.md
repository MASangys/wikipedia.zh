**Kontact**是[KDE](../Page/KDE.md "wikilink")的-{zh-tw:整合個人資訊管理套件;zh-cn:整合个人信息管理套件}-。提供日曆、通訊簿、筆記、待辦事項、新聞和電子郵件的功能。使用[KPart來嵌入各種](https://zh.wikipedia.org/wiki/KPart "wikilink")[應用程式](https://zh.wikipedia.org/wiki/應用程式 "wikilink")（**[KMail](https://zh.wikipedia.org/wiki/KMail "wikilink")、[KAddressBook](https://zh.wikipedia.org/wiki/#Address_Book "wikilink")、[Akregator](../Page/Akregator.md "wikilink")**等）放入到容器應用程式。

## “Kontact” 和 “KDE PIM”之間的差異

從技術上來說，*Kontact*只是統一不同的獨立的應用程式在一個用戶界面應用程式下。*KDE PIM*
指的是的一個大的KDE開發工作項目，以一種協調的方式開發單獨的應用程式。

在流行的術語，*Kontact*往往指的是一整套的*KDE PIM*應用程式。

## 組成

Kontact嵌入程式如下：

### KMail

**KMail**的設計目標是希望成為一個企業級電子信件用戶端。

支持文件夾、郵件過濾、瀏覽[HTML](../Page/HTML.md "wikilink")電子郵件和國際字符集。

#### 垃圾郵件和過濾

KMail透過兩個特殊的過濾器來使用垃圾郵件過濾程序模塊：

  - *Send this e-mail to a program*
    使用任何提供規範的程序，當KMail過濾器被激活時，該程序將被運行並處理電子郵件的內容。
  - *Pipe this e-mail through a program*

這些模塊化的過濾器可結合文本過濾器來檢測已標示的電子郵件。

KMail允許直接在郵件伺服器上手動過濾垃圾郵件，一個撥號上網用戶非常有興趣的功能。電子郵件超過一定的大小（標準為50kB，但它可以設置為任何值）不會自動複製到本地電腦。「get,
decide later, delete」選項，KMail會列出郵件，但並不會下載整個郵件，這使得不用浪費更多時間刪除垃圾郵件。

#### 加密支持

[KMail_Encryption.png](https://zh.wikipedia.org/wiki/File:KMail_Encryption.png "fig:KMail_Encryption.png")
KMail支持[OpenPGP標準](https://zh.wikipedia.org/wiki/OpenPGP "wikilink")，可以自動加密、解密、憑証和驗證電子郵件的憑証及其經由內嵌或OpenPGP/MIME方法加密的附件。作為視覺輔助，KMail將電子郵件用綠色表示為信任憑証；黃色不可信憑証；紅色為無效憑証；和藍色的加密郵件。

KMail也支持[S/MIME郵件以及Chiasmus](https://zh.wikipedia.org/wiki/S/MIME "wikilink")\[1\]，一個德國信息安全聯邦辦公室（BSI）所創造的專有加密系統。

#### 支持的郵件協定及驗證模式

它可以接收[IMAP](https://zh.wikipedia.org/wiki/IMAP "wikilink")、[dIMAP](https://zh.wikipedia.org/wiki/dIMAP "wikilink")\[2\]、[POP3](https://zh.wikipedia.org/wiki/POP3 "wikilink")、Maildir和本地信箱收到的郵件，支持流水線下載加速技術。它可以透過[SMTP或sendmail發送郵件](https://zh.wikipedia.org/wiki/SMTP "wikilink")。支持加密方式有[SSL及](https://zh.wikipedia.org/wiki/SSL "wikilink")[TLS](https://zh.wikipedia.org/wiki/TLS "wikilink")，验证模式包含Login、Plain、Cram-MD5、Digest-MD5、NTLM、GSSAPI及APOP。

### 通訊錄

**KAddressBook** 是KDE桌面環境的通訊錄程式

#### 功能

  - 匯出和匯入[vCard格式](https://zh.wikipedia.org/wiki/vCard "wikilink")。
  - 自定分類。
  - 能搜尋地址的過濾器。

#### 描述

### 行事曆

**KOrganizer** 是[KDE](../Page/KDE.md "wikilink")桌面環境的個人事務安排助理
。提供管理行事曆、日記和一個待辦事項清單。

### Usenet 新聞閱讀器

### 其他組件

  - E-Mail：[KMail](https://zh.wikipedia.org/wiki/KMail "wikilink")
  - 消息來源聚合器：[Akregator](../Page/Akregator.md "wikilink")
  - 筆記：[KNotes](https://zh.wikipedia.org/wiki/KNotes "wikilink") - KDE
    筆記管理
  - 新聞消息:
    [KNewsTicker](https://zh.wikipedia.org/wiki/KNewsTicker "wikilink")
  - 天氣: [KWeather](https://zh.wikipedia.org/wiki/KWeather "wikilink")

### 存儲後端

## 參考資料

[Category:KDE](https://zh.wikipedia.org/wiki/Category:KDE "wikilink")

1.   BSI - Fehlerseite - Die gewünschte Seite wurde nicht gefunden.
2.  <http://www-uxsup.csx.cam.ac.uk/pub/doc/suse/suse9.2/suselinux-userguide_en/ch12s03.html>