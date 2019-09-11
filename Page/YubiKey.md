[缩略图](https://zh.wikipedia.org/wiki/File:YubiKey-4-keychain-and-YubiKey-4-Nano.png "fig:缩略图") **YubiKey**是由**Yubico**生产的[身份认证设备](https://zh.wikipedia.org/wiki/安全令牌 "wikilink")，支持[一次性密码](https://zh.wikipedia.org/wiki/一次性密码 "wikilink")（OTP）、[公钥加密和身份认证](https://zh.wikipedia.org/wiki/公钥 "wikilink")，以及由[FIDO联盟](../Page/FIDO联盟.md "wikilink")（FIDO U2F）开发的[通用第二因素](../Page/通用第二因素.md "wikilink")（U2F）协议。\[1\]它讓用户可以透过提交[一次性密碼](../Page/一次性密碼.md "wikilink")或是使用设备產生的公開/私密金钥来安全地登录自己的帐户。针对不支持一次性密码的网站，YubiKey也可以存储静态密码。\[2\][Facebook](../Page/Facebook.md "wikilink")使用YubiKey作为员工凭证；\[3\][Google](../Page/Google.md "wikilink")同时为雇员和用户提供支援。\[4\]\[5\]還有一些密码管理器也支持YubiKey。\[6\]\[7\]

Yubikey实现了（HOTP）和[基于时间的一次性密码算法](https://zh.wikipedia.org/wiki/基于时间的一次性密码算法 "wikilink")（TOTP），并且將本身作为一个通过USB HID协议的键盘來提供一次性密码。YubiKey NEO和YubiKey 4还包含许多协议，如使用2048位[RSA和](../Page/RSA加密演算法.md "wikilink")[椭圆曲线加密系统](../Page/椭圆曲线密码学.md "wikilink")（ECC）p256和p384的OpenPGP卡、[近场通信](../Page/近場通訊.md "wikilink")（NFC）以及FIDO U2F。YubiKey允许用户对消息签名、加密且同时不暴露私钥。第4代YubiKey于2015年11月16日推出，支持4096位RSA密钥的OpenPGP，并有的[PKCS11支持](https://zh.wikipedia.org/wiki/PKCS11 "wikilink")，还允许对[Docker映像进行](https://zh.wikipedia.org/wiki/Docker_\(軟體\) "wikilink")[代码签名](../Page/代码签名.md "wikilink")。\[8\]\[9\]

Yubico是一家私人公司，2007年由[首席执行官](../Page/首席执行官.md "wikilink")创立，办事处位于[帕羅奧圖](https://zh.wikipedia.org/wiki/帕羅奧圖_\(加利福尼亞州\) "wikilink")、[西雅圖](../Page/西雅圖.md "wikilink")和[斯德哥尔摩](../Page/斯德哥尔摩.md "wikilink")。\[10\]Yubico[首席技术官Jakob](https://zh.wikipedia.org/wiki/首席技术官 "wikilink") Ehrensvärd是原“强认证规范”的主要作者，该规范后来演变为通用第二因素（U2F）。\[11\]

## 历史

在[CES 2017峰会上](../Page/消費電子展.md "wikilink")，YubiKey宣布推出新[USB-C设计的YubiKey](../Page/USB_Type-C.md "wikilink") 4C。YubiKey 4C于2017年2月13日发布。\[12\]在通过USB-C连接的[Android](../Page/Android.md "wikilink")上，目前仅支持一次性密码功能，而[通用第二因素](../Page/通用第二因素.md "wikilink")（U2F）之類的其他功能仍無法使用。\[13\]

## ModHex

YubiKey可以发出类十六进制字母形式的密码，目的是尽可能不受系统键盘设置的限制。这种字母表被称为ModHex或Modified Hexadecimal，由字母cbdefghijklnrtuv组成，对应于十六进制数字0123456789abcdef。\[14\]

## 对YubiKey 4的安全担忧（封闭源代码）

Yubico已使用闭源代码替换了YubiKey 4中全部开源组件，这使得独立审查安全缺陷不再可能。\[15\]Yubico宣布已经在内部和外部审查中完成缺陷审查。Yubikey NEO仍使用开源代码。\[16\]2016年5月16日，Yubico CTOJakob Ehrensvärd发布[博文对开源社区的担忧作出回复](https://zh.wikipedia.org/wiki/博客 "wikilink")\[17\]，申明公司有力的开源支持，并给出了Yubikey 4更新的理由和益处。

2017年10月，安全研究人员发现了一个安全隐患（称为），其出现在大量英飞凌（Infineon）安全芯片使用的加密[程序库中实现RSA密钥对生成的部分](https://zh.wikipedia.org/wiki/程序库 "wikilink")。这一漏洞允许攻击者使用公钥重建私钥。\[18\]\[19\]所有固件版本在4.2.6与4.3.4之间的YubiKey 4、YubiKey 4C以及YubiKey 4 nano都受到影响。\[20\]Yubico发布了一个检查工具，如果检查确认自己的Yubikey受到影响，可以免费更换。\[21\]

## 已支持的服务或平台

  - AWS

  - Bitbucket

  - Bitwarden

  - Compose

  - Dashlane

  - Digidentity/

  - Dropbox

  - Facebook（仅[Google Chrome和](../Page/Google_Chrome.md "wikilink")[Opera](https://zh.wikipedia.org/wiki/Opera電腦瀏覽器 "wikilink")）

  - [FastMail](../Page/FastMail.md "wikilink")

  - Google（仅Chrome）

  - [Gitlab](https://zh.wikipedia.org/wiki/Gitlab "wikilink")

  - [GitHub](../Page/GitHub.md "wikilink")（仅Chrome和Opera）

  -
  - [LastPass](../Page/LastPass.md "wikilink")

  - [MacOS](../Page/MacOS.md "wikilink") 10.12 Sierra或更高版本

  - Mailbox.org

  - Micro Focus

  - Nextcloud

  - Okta

  -
  -
  - Salesforce

  - Sentry

  - [Stripe](https://stripe.com/blog/u2f-restricted-keys)

  - Thexyz

  - Vanguard

  -
  - Posteo

  - [Microsoft Windows Server 2008](https://zh.wikipedia.org/wiki/Microsoft_Windows_Server_2008 "wikilink") R2或更高版本，[Microsoft Windows 7或更高版本](https://zh.wikipedia.org/wiki/Microsoft_Windows_7 "wikilink")。

  - [KeePass](../Page/KeePass.md "wikilink")

  -
  - [Termius](https://zh.wikipedia.org/wiki/Termius "wikilink")

## 另见

  -
## 参考文献

## 外部链接

  -
[Category:認證方法](https://zh.wikipedia.org/wiki/Category:認證方法 "wikilink") [Category:计算机访问控制](https://zh.wikipedia.org/wiki/Category:计算机访问控制 "wikilink") [Category:USB](https://zh.wikipedia.org/wiki/Category:USB "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.  Yubico|date=2017-01-05|work=Yubico|accessdate=2017-09-14|language=en-US}}
13.  Yubico|work=Yubico|accessdate=2017-09-14|language=en-US|archive-url=[https://web.archive.org/web/20170914215822/https://www.yubico.com/support/knowledge-base/categories/articles/can-yubikey-4c-plugged-directly-android-phones-tablets-usb-c-ports/|archive-date=2017-09-14|dead-url=yes](https://web.archive.org/web/20170914215822/https://www.yubico.com/support/knowledge-base/categories/articles/can-yubikey-4c-plugged-directly-android-phones-tablets-usb-c-ports/%7Carchive-date=2017-09-14%7Cdead-url=yes)}}
14.
15.
16.
17.
18.
19.
20.
21.