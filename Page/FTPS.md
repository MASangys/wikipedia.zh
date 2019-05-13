**FTPS**是一种对常用的[文件传输协议](../Page/文件传输协议.md "wikilink")（FTP）添加[传输层安全](../Page/传输层安全.md "wikilink")（TLS）和安全套接层（SSL）加密协议支持的扩展协议。

FTPS不應與基於[SSH的](../Page/Secure_Shell.md "wikilink")[SSH文件传输协议或是](../Page/SSH文件传输协议.md "wikilink")[Secure
FTP协议相混淆](../Page/Secure_FTP.md "wikilink")。

## 背景

在1971年的[FTP草案用於科學與研究網路](../Page/FTP.md "wikilink")[ARPANET](../Page/ARPANET.md "wikilink")。\[1\]最初只有一小部分軍事用地和大學裡的少數人使用，可以使用網路的人，任何人都可以操作存取，無視於用戶的數據安全和隱私要求。

隨著ARPANET逐漸被所取代，以及之後隨著[Internet的普及](../Page/Internet.md "wikilink")，上網人口越來越多。用戶端到伺服器端經過的路徑越來越長，未經授權的第三方[竊聽數據傳輸的機會也因此增加](../Page/竊聽.md "wikilink")。

1994年，瀏覽器公司[網景開發與發布](../Page/網景.md "wikilink")[安全套接层](../Page/安全套接层.md "wikilink")（SSL）的[应用层封裝](../Page/应用层.md "wikilink")\[2\]，該協議使應用程序在進行跨網路通信使用私人和安全的方式，防止竊聽、篡改、偽造消息。它可以增加安全性，使用[TCP連接](../Page/TCP.md "wikilink")，使[HTTP經由SSL形成更安全的](../Page/HTTP.md "wikilink")[HTTPS](../Page/HTTPS.md "wikilink")。

SSL最終被應用到FTP，[RFC草案發表在](../Page/RFC.md "wikilink")1996年底。\[3\]不久之後，官方[IANA進行Port埠號註冊](../Page/IANA.md "wikilink")。然而，RFC卻沒有定案，直到2005年。\[4\]

已知的Linux客户端有[curl](../Page/curl.md "wikilink")、lftp、[wget](../Page/wget.md "wikilink")（版本1.16以上）等。

## 使用模式

有兩種使用模式被開發出來，顯式或隱式。顯式是兼顧相容的作法。隱式則必需在用戶端與伺服器端都開啟設定。

### 顯式（Explicit）

### 隱式（Implicit）

伺服器端在三向交握之後預設會使用與傳統 21 port 不同的 990 port 進行 SSL 加密傳輸。

## 參考資料

[Category:文件传输协议](https://zh.wikipedia.org/wiki/Category:文件传输协议 "wikilink")
[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")
[Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink")

1.  [RFC-265: File Transfer Protocol
    (FTP)](http://tools.ietf.org/html/rfc265)
2.  [The SSL Protocol,
    Feb. 9th, 1995](http://www.mozilla.org/projects/security/pki/nss/ssl/draft02.html)
3.  [RFC draft, Secure FTP Over SSL,
    revision 1996-11-26](http://tools.ietf.org/id/draft-murray-auth-ftp-ssl-00.txt)
4.  [RFC-4217: Securing FTP with
    TLS](http://tools.ietf.org/html/rfc4217)