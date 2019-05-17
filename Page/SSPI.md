**安全支持提供者接口**（，缩写**SSPI**）是[Microsoft
Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[操作系统中用于执行各种安全相关操作](../Page/操作系统.md "wikilink")（如[身份验证](https://zh.wikipedia.org/wiki/身份验证 "wikilink")）的一个[Win32](../Page/Windows_API.md "wikilink")
[API](../Page/应用程序接口.md "wikilink")。

SSPI的功能是作为众多安全支持提供程序（SSP）的通用接口\[1\]：安全支持提供者（Security Support
Provider）是可以为应用程序提供一种或多种安全功能包的[动态链接库](../Page/动态链接库.md "wikilink")（[dynamic-link
library](https://zh.wikipedia.org/wiki/Dynamic-Link_Library "wikilink")）。

## Windows SSP

下列SSP已经在Windows中预装：

  - （[Windows NT
    3.51中引入](https://zh.wikipedia.org/wiki/Windows_NT_3.51 "wikilink")）(msv1_0.dll)
    - 为[Windows
    2000之前的客户端](../Page/Windows_2000.md "wikilink")-服务器域和非域身份验证（[SMB](../Page/伺服器訊息區塊.md "wikilink")/CIFS）提供质询/响应身份验证。\[2\]

  - [Kerberos](../Page/Kerberos.md "wikilink")（[Windows
    2000中引入](../Page/Windows_2000.md "wikilink")，[Windows
    Vista中更新为支持](../Page/Windows_Vista.md "wikilink")[AES](../Page/高级加密标准.md "wikilink")）\[3\]
    (kerberos.dll) - Windows 2000及更高版本中首选的客户端-服务器域相互身份验证。\[4\]

  - （Windows 2000中引入）(secur32.dll) -
    选择Kerberos，如果不可用则选择NTLM协议。协商SSP提供[單一登入能力](https://zh.wikipedia.org/wiki/單一登入 "wikilink")，有时称为（尤其是用于IIS时）。\[5\]在[Windows
    7及更高版本中](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")，NEGOExts引入了协商使用客户端和服务器上支持的已安装定制SSP进行身份验证。

  - 安全通道（也称SChannel） - [Windows
    2000中引入](../Page/Windows_2000.md "wikilink")，[Windows
    Vista中更新为支持更强的AES加密和](../Page/Windows_Vista.md "wikilink")[ECC](../Page/椭圆曲线密码学.md "wikilink")\[6\]该提供者使用SSL/TLS记录来加密数据有效载荷。(Schannel.dll)

  - （过时）和微软的[TLS/SSL](https://zh.wikipedia.org/wiki/傳輸層安全協議 "wikilink")
    - [公开密钥加密](../Page/公开密钥加密.md "wikilink")
    SSP为通过互联网的客户端和服务器进行身份验证，提供加密和安全通信。\[7\]Windows
    7中更新为支持TLS 1.2。

  - [摘要SSP](../Page/HTTP摘要认证.md "wikilink")（[Windows
    XP中引入](../Page/Windows_XP.md "wikilink")）(wdigest.dll) -
    在Windows与Kerberos不可用的非Windows系统间提供基于HTTP和[SASL身份验证的质询](../Page/简单认证与安全层.md "wikilink")/响应。\[8\]

  - 凭据 (CredSSP)（[Windows
    Vista中引入](../Page/Windows_Vista.md "wikilink")，Windows XP
    SP3上也可用）(credssp.dll) -
    为[远程桌面连接提供单点登录](https://zh.wikipedia.org/wiki/远程桌面连接 "wikilink")（SSO）和[网络级身份验证](../Page/网络级身份验证.md "wikilink")。\[9\]

  - 分布式密码验证（DPA） - （Windows 2000中引入）(msapsspc.dll) -
    提供使用[数字证书完成的互联网身份验证](../Page/公開金鑰認證.md "wikilink")。\[10\]

  - 用户对用户的公开密钥加密技术（Public Key Cryptography User-to-User，PKU2U）（[Windows
    7中引入](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")）(pku2u.dll)
    - 在不隶属域的系统之间提供使用数字证书的对等身份验证。

## 比较

SSPI是的一个专有变体，进行了扩展并具有许多特定于Windows的数据类型。最早随[Windows NT
3.51和](https://zh.wikipedia.org/wiki/Windows_NT_3.51 "wikilink")[Windows
95中的](../Page/Windows_95.md "wikilink")的（NTLMSSP）出现。在Windows
2000中，增加了一个Kerberos 5的实现，使用符合官方协议标准RFC 1964 （Kerberos 5
GSSAPI机制）的令牌格式并提供提供与其他供应商的Kerberos 5实现的线级互操作性。

SSPI生成和接受的令牌大多与GSS-API兼容，因此Windows上的SSPI客户端可能能够根据具体情况与Unix上的GSS-API服务器进行身份验证。SSPI的一个重要缺点是缺乏，这使得不可能做到一些GSSAPI的互操作性。

[互联网工程任务组](../Page/互联网工程任务组.md "wikilink")（IETF）定义的GSSAPI与微软SSPI的另一个根本区别是“”概念。在这种模式下，一个服务器可以切换成经过身份验证客户端的“完整”特权并进行操作，以便操作系统执行完整的[存取控制检查](https://zh.wikipedia.org/wiki/存取控制 "wikilink")。所持权限高于或低于原始权限全取决于哪个客户端在连接/验证。在传统（GSSAPI）模型中，当服务器运行在服务帐户下时，其不能提升自己的特权，并必须以特定客户端或应用程序的方式执行访问控制。而在Windows
Vista中通过将扮演限制在选定的服务帐户，限制了“扮演”概念带来的显著安全隐患。\[11\]

## 参考资料

## 外部链接

  - [SSPI Reference on
    MSDN](https://msdn.microsoft.com/en-us/library/aa380493.aspx)
  - [SSPI Information and Win32
    samples](https://web.archive.org/web/20071226233241/http://win32.mvps.org/security/sspi.html)
  - [Example of use of SSPI for HTTP
    authentification](http://www.dupuis.me/node/22)

[Category:Microsoft_Windows安全技术](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows安全技术 "wikilink")
[Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink")

1.  [SSP Packages Provided by
    Microsoft](https://msdn.microsoft.com/en-us/library/aa380502.aspx)
2.  [User Authentication - Security (Windows 2000 Resource Kit
    Documentation) :
    MSDN](https://technet.microsoft.com/en-us/library/cc938854.aspx)
3.  [Kerberos Enhancements in Windows Vista:
    MSDN](https://technet.microsoft.com/en-us/library/cc749438.aspx)
4.  [Windows 2000 Kerberos
    Authentication](https://technet.microsoft.com/en-us/library/bb742431.aspx)
5.  [Windows
    Authentication](https://technet.microsoft.com/en-us/library/cc755284.aspx)
6.  [TLS/SSL Cryptographic Enhancements in Windows
    Vista](https://technet.microsoft.com/en-us/library/cc766285.aspx)
7.  [Secure Channel: SSP Packages Provided by
    Microsoft](https://msdn.microsoft.com/en-us/library/aa380123.aspx)
8.  [Microsoft Digest SSP: SSP Packages provided by
    Microsoft](https://msdn.microsoft.com/en-us/library/aa378745.aspx)
9.  [Credential Security Service Provider and SSO for Terminal Services
    Logon](https://technet.microsoft.com/en-us/library/cc749211.aspx)
10. [DCOM Technical Overview: Security on the
    Internet](http://msdn.microsoft.com/en-us/library/ms809340.aspx#dcomtec_sec)
11. [Windows Service Hardening: AskPerf
    blog](http://blogs.technet.com/askperf/archive/2008/02/03/ws2008-windows-service-hardening.aspx)