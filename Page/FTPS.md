**FTPS**是一种对常用的[文件传输协议](../Page/文件传输协议.md "wikilink")（FTP）添加[传输层安全](https://zh.wikipedia.org/wiki/传输层安全 "wikilink")（TLS）和安全套接层（SSL）加密协议支持的扩展协议。

FTPS不應與基於[SSH的](../Page/Secure_Shell.md "wikilink")[SSH文件传输协议](../Page/SSH文件传输协议.md "wikilink")或是[Secure FTP协议相混淆](https://zh.wikipedia.org/wiki/Secure_FTP "wikilink")。

## 背景

在1971年的[FTP草案用於科學與研究網路](https://zh.wikipedia.org/wiki/FTP "wikilink")[ARPANET](../Page/ARPANET.md "wikilink")。\[1\]最初只有一小部分軍事用地和大學裡的少數人使用，可以使用網路的人，任何人都可以操作存取，無視於用戶的數據安全和隱私要求。

隨著ARPANET逐漸被所取代，以及之後隨著[Internet的普及](https://zh.wikipedia.org/wiki/Internet "wikilink")，上網人口越來越多。用戶端到伺服器端經過的路徑越來越長，未經授權的第三方[竊聽](../Page/竊聽.md "wikilink")數據傳輸的機會也因此增加。

1994年，瀏覽器公司[網景](../Page/網景.md "wikilink")開發與發布[安全套接层](https://zh.wikipedia.org/wiki/安全套接层 "wikilink")（SSL）的[应用层封裝](https://zh.wikipedia.org/wiki/应用层 "wikilink")\[2\]，該協議使應用程序在進行跨網路通信使用私人和安全的方式，防止竊聽、篡改、偽造消息。它可以增加安全性，使用[TCP連接](https://zh.wikipedia.org/wiki/TCP "wikilink")，使[HTTP經由SSL形成更安全的](https://zh.wikipedia.org/wiki/HTTP "wikilink")[HTTPS](https://zh.wikipedia.org/wiki/HTTPS "wikilink")。

SSL最終被應用到FTP，[RFC](../Page/RFC.md "wikilink")草案發表在1996年底。\[3\]不久之後，官方[IANA進行Port埠號註冊](https://zh.wikipedia.org/wiki/IANA "wikilink")。然而，RFC卻沒有定案，直到2005年。\[4\]

已知的Linux客户端有[curl](https://zh.wikipedia.org/wiki/curl "wikilink")、lftp、[wget](https://zh.wikipedia.org/wiki/wget "wikilink")（版本1.16以上）等。

## 使用模式

有兩種不同模式被開發出來，隱式和顯式。

### 隱式（Implicit）

隐式模式FTPS下不支持协商是否使用加密，所有的连接数据均为加密。客户端必须先使用TLS Client Hello消息向FTPS服务器进行握手来建立加密连接。如果FTPS服务器未收到此类消息，则服务器应断开连接。 为了保持与现有的非FTPS感知客户端的兼容性，隐式FTPS默认在IANA规定的端口990/TCP上监听FTPS控制通道，并在端口989/TCP上监听FTPS数据通道\[5\]。这使得管理员可以保留端口(控制通道21/TCP与数据通道20/TCP)以兼容原始的FTP。 RFC4217中未定义隐式模式。因此，它被认为是FTP协商TLS/SSL中过时的早期方法。

### 顯式（Explicit）

显式模式（也称为FTPES），FTPS客户端先与服务器建立明文连接，然后从控制通道明确请求服务端升级为加密连接（Cmd: AUTH TLS）。 控制通道与数据通道默认端口与原始FTP一样。控制通道始终加密，而数据通道是否加密则为可选项。 同时若服务器未限制明文连接，也可以使用未加密的原始FTP进行连接，也就是说服务器在相同的端口上同时提供FTP与FTPS服务。

## 參考資料

[Category:文件传输协议](https://zh.wikipedia.org/wiki/Category:文件传输协议 "wikilink") [Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink") [Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink")

1.  [RFC-265: File Transfer Protocol (FTP)](http://tools.ietf.org/html/rfc265)
2.  [The SSL Protocol, Feb. 9th, 1995](http://www.mozilla.org/projects/security/pki/nss/ssl/draft02.html)
3.  [RFC draft, Secure FTP Over SSL, revision 1996-11-26](http://tools.ietf.org/id/draft-murray-auth-ftp-ssl-00.txt)
4.  [RFC-4217: Securing FTP with TLS](http://tools.ietf.org/html/rfc4217)
5.