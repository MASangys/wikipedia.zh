**数据保护API**（全称：，缩写**DPAPI**）是一个简单的[密码学](../Page/密码学.md "wikilink")[应用程序接口](../Page/应用程序接口.md "wikilink") ，作为一个组件内置在[Windows 2000及之后版本的](../Page/Windows_2000.md "wikilink")[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[操作系统](../Page/操作系统.md "wikilink")中。理论上，数据保护API可以实现任何类型的数据对称加密；在实践中，其在Windows操作系统中的主要用途是执行[非对称私钥的](https://zh.wikipedia.org/wiki/非对称加密 "wikilink")[对称加密](https://zh.wikipedia.org/wiki/对称加密 "wikilink")，使用用户或系统的秘密信息作为[熵](../Page/熵.md "wikilink")的重要来源。

对于几乎所有密码系统来说，最困难的挑战之一是“密钥管理”——其中部分即是，如何安全地存储解密密钥。如果密钥以纯文本存储，则可以访问密钥的任何用户都可以访问加密的数据。如果密钥被加密，则又需要另一个密钥，周而复始。DPAPI允许开发者使用从用户的登录私钥导出的对称密钥来加密密钥，或者在系统加密的情况下使用系统的域验证私钥来加密密钥。

用于加密用户RSA密钥的DPAPI密钥存储在`%APPDATA%\Microsoft\Protect\{SID}`目录，其中{SID}为该用户的[安全标识符](../Page/安全标识符.md "wikilink")。DPAPI密钥存储在与保护用户私钥的主密钥相同的文件中。它通常为64字节的随机数据。

2010年，和在Black Hat DC 2010提出了Reversing DPAPI and Stealing Windows Secrets Offline。\[1\]除了他们的简报，Bursztein和Picod发布了能离线解密DPAPI加密数据的DPAPIck。2012年，Passcape Software在他们的博客中发布了介绍DPAPI内部逻辑的更详细文章\[2\]及一个完全离线解密和分析DPAPI的工具\[3\]。与上一个不同，该工具利用了一些旧有Windows的缺陷（例如，你可以无需获知所有者的登录密码就解密Windows 2000的DPAPI数据体）并完全兼容Windows 8的DPAPI数据结构。在Windows 8中，微软改变了DPAPI逻辑的工作方式，现在可以使用多个用户的密钥来导出加密密钥以解密用户的主密钥，然后用于解码单个DPAPI数据体（blob）。

## 安全属性

DPAPI不为自己存储任何持久性数据。相反，它只接受明文并返回密文（反之亦然）。

DPAPI安全性依赖于Windows操作系统保护主密钥和[RSA私钥免受攻击的能力](../Page/RSA加密演算法.md "wikilink")。这在大多数攻击情形中高度依赖最终用户凭据的安全性。主加密/解密密钥通过函数从用户密码导出。\[4\]特定数据的[二進位大型物件可以添加](https://zh.wikipedia.org/wiki/二進位大型物件 "wikilink")[盐和](../Page/盐_\(密码学\).md "wikilink")/或询问外部用户提供额外密码（也称强密码保护）来加密。盐的使用由各实现的选项控制，即由应用程序开发者控制，不能由最终用户或系统管理员控制。

通过使用[COM+对象可以授予密钥的委托访问权限](../Page/组件对象模型.md "wikilink")。这使[IIS](../Page/網際網路資訊服務.md "wikilink")[網頁伺服器](../Page/網頁伺服器.md "wikilink")能够使用DPAPI。

## 微软软件对DPAPI的使用

虽然并非所有微软产品都在使用，但微软产品对DPAPI的使用随着每个Windows版本在增加。不过，出自微软或第三方开发人员的许多应用程序仍倾向于使用自己的保护方式，或者最近才切换为使用DPAPI。例如[Internet Explorer的](../Page/Internet_Explorer.md "wikilink")4.0-6.0版本、[Outlook Express和](../Page/Outlook_Express.md "wikilink")使用较旧的保护存储（PStore）API来存储保存的凭据（例如密码）。[Internet Explorer 7则开始使用DPAPI保护已存储的用户凭据](../Page/Internet_Explorer_7.md "wikilink")。\[5\]

  - [Windows 8中的图片密码](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")、PIN和指纹
  - Windows 2000及之后版本中的[加密文件系统](../Page/加密文件系统.md "wikilink")
  - SQL Server （TDE）服务的主加密密钥\[6\]
  - [Internet Explorer 7](../Page/Internet_Explorer_7.md "wikilink")，无论是适用于[Windows XP的独立版本](../Page/Windows_XP.md "wikilink")，还是[Windows Vista和](../Page/Windows_Vista.md "wikilink")[Windows Server 2008中集成的版本](../Page/Windows_Server_2008.md "wikilink")
  - [Windows Mail和](../Page/邮件_\(Windows\).md "wikilink")[Windows Live Mail](../Page/Windows_Live_Mail.md "wikilink")
  - Outlook的[S/MIME](https://zh.wikipedia.org/wiki/S/MIME "wikilink")
  - [Internet Information Services的](../Page/網際網路資訊服務.md "wikilink")[SSL/TLS](https://zh.wikipedia.org/wiki/傳輸層安全協議 "wikilink")
  - Windows 客户端v1.1及之后版本
  - [Windows 2000及之后版本对](../Page/Windows_2000.md "wikilink")[EAP/TLS](../Page/扩展认证协议.md "wikilink")（[VPN身份验证](../Page/虛擬私人網路.md "wikilink")）和802.1x（[Wi-Fi](../Page/Wi-Fi.md "wikilink")身份验证）
  - Windows XP及之后版本对存储的用户名和密码）\[7\]（也称凭据管理器）
  - [.NET Framework](../Page/.NET框架.md "wikilink") 2.0及之后版本对System.Security.Cryptography.ProtectedData\[8\]
  - Microsoft.Owin（Katana） Cookie身份验证（当自托管时）\[9\]

## 参考资料

## 外部链接

  - [Windows Data Protection API (DPAPI) white paper by NAI Labs](http://go.microsoft.com/fwlink/?LinkId=89993)
  - [Data encryption with DPAPI](http://www.codeproject.com/KB/system/protected_data.aspx)
  - [Use DPAPI to encrypt and decrypt data](http://www.obviex.com/samples/dpapi.aspx)
  - [How To: Use DPAPI (User Store) from ASP.NET 1.1 with Enterprise Services](http://msdn.microsoft.com/library/aa302404.aspx)
  - [System.Security.Cryptography.ProtectedData in .NET Framework 2.0 and later](http://msdn.microsoft.com/library/system.security.cryptography.protecteddata.aspx)
  - [Discussion of the use of MS BackupKey Remote Protocol by DPAPI to protect user secrets](http://msdn.microsoft.com/library/cc201324.aspx)
  - [The Windows PStore](http://msdn.microsoft.com/library/bb432403.aspx)
  - [DataProtectionDecryptor](http://www.nirsoft.net/utils/dpapi_data_decryptor.html)，NirSoft出品的免费软件

[Category:加密软件](https://zh.wikipedia.org/wiki/Category:加密软件 "wikilink") [Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink")

1.  <https://www.blackhat.com/html/bh-dc-10/bh-dc-10-briefings.html>
2.  <http://passcape.com/index.php?section=blog&cmd=details&id=20>
3.  <http://passcape.com/windows_password_recovery_dpapi_decoder>
4.
5.
6.  <https://msdn.microsoft.com/en-us/library/ms189586(v=sql.110>).aspx
7.  <http://technet.microsoft.com/en-us/library/bb457059.aspx>
8.  <http://msdn2.microsoft.com/en-us/library/system.security.cryptography.protecteddata.aspx>
9.