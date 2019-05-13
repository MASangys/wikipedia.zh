**MS-CHAP**是[微软版本的](../Page/微软.md "wikilink")[挑战握手认证协议](https://zh.wikipedia.org/wiki/挑战握手认证协议 "wikilink")（CHAP）。这个协议有两个版本，MS-CHAPv1（在RFC
2433中定义）和MS-CHAPv2（在RFC 2759中定义）。MS-CHAPv2在[Windows NT
4.0](../Page/Windows_NT_4.0.md "wikilink") SP4中引入，后来被加到[Windows
98](../Page/Windows_98.md "wikilink")（通过"Windows 98 Dial-Up Networking
Security Upgrade Release"）和[Windows
95](../Page/Windows_95.md "wikilink")（通过"Dial Up Networking 1.3
Performance & Security Update for MS Windows 95"升级）中去。[Windows
Vista不再支持MS](../Page/Windows_Vista.md "wikilink")-CHAPv1。

MS-CHAP被当做一个认证选项，用在微软为[虚拟专用网络而实现的](https://zh.wikipedia.org/wiki/虚拟专用网络 "wikilink")[PPTP协议中](https://zh.wikipedia.org/wiki/PPTP "wikilink")。它还被当做用来提供[WiFi安全的](https://zh.wikipedia.org/wiki/WiFi "wikilink")[RADIUS服务器的一个认证选项](https://zh.wikipedia.org/wiki/RADIUS "wikilink")，后者使用[WPA企业版协议](../Page/WPA.md "wikilink")。此后，它更被用作[受保护可扩展身份验证协议](https://zh.wikipedia.org/wiki/受保护可扩展身份验证协议 "wikilink")（PEAP）的主要安全选项。

与CHAP相比，MS-CHAP：

  - 在LCP选项3中协商CHAP算法为0x80（MS-CHAPv2为0x81）
  - 提供了一个认证者控制的密码变更机制
  - 提供了一个认证者控制的认证重试机制
  - 定义了在失败报文消息域中返回的失败码

MS-CHAPv2通过在响应报文中携带对端挑战以及在成功报文中携带认证者响应来实现双向认证。

## 安全弱点及密码分析

目前已经在MS-CHAPv2中找到了一些弱点，其中有一些大幅降低了野蛮攻击的复杂度，使得在现代的硬件上变得可行。

  - [Cryptanalysis of Microsoft's PPTP Authentication Extensions
    (MS-CHAPv2)](http://www.schneier.com/paper-pptpv2.pdf), co-written
    by [Bruce
    Schneier](https://zh.wikipedia.org/wiki/Bruce_Schneier "wikilink")
  - [Exploiting known security holes in Microsoft's PPTP Authentication
    Extensions
    (MS-CHAPv2)](http://penguin-breeder.org/pptp/download/pptp_mschapv2.pdf),
    by Jochen Eisinger

2012年，破解MS-CHAPv2的复杂度被降低到与破解一个DES密钥相同：

  - [Divide and Conquer: Cracking MS-CHAPv2 with a 100% success
    rate](https://web.archive.org/web/20160316174007/https://www.cloudcracker.com/blog/2012/07/29/cracking-ms-chap-v2/)
    by [Moxie
    Marlinspike](https://zh.wikipedia.org/wiki/Moxie_Marlinspike "wikilink").

## 参考资料

  - RFC 1994 – PPP挑战握手认证协议（CHAP）
  - RFC 2433 – MS-CHAPv1
  - RFC 2548 – RADIUS封装的MS-CHAPv1和MS-CHAPv2
  - RFC 2759 – MS-CHAPv2
  - [Microsoft Knowledge Base Article
    KB189771](http://support.microsoft.com/kb/189771) – MS Windows 98
    Dial-Up Networking Security Upgrade Release Notes

[Category:网际协议](https://zh.wikipedia.org/wiki/Category:网际协议 "wikilink")
[Category:已攻破的密码算法](https://zh.wikipedia.org/wiki/Category:已攻破的密码算法 "wikilink")