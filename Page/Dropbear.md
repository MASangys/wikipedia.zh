**Dropbear**是由Matt Johnston所開發的[Secure
Shell軟體](../Page/Secure_Shell.md "wikilink")（包括伺服器端與用戶端）。期望在記憶體與運算能力有限的情況下取代[OpenSSH](../Page/OpenSSH.md "wikilink")，尤其是[嵌入式系统](../Page/嵌入式系统.md "wikilink")\[1\]。

## 技術

Dropbear實作了[SSH協定第二版](../Page/Secure_Shell.md "wikilink")（SSH-2）。加密演算法則是採用了其他第三方的實作。

## 功能

Dropbear實作了完整的SSH-2協定（包含了伺服器端與用戶端），但因資源與安全性所以選擇不實作SSH-1協定。從2013.62版後增加了對[ECC的支援](../Page/椭圆曲线密码学.md "wikilink")\[2\]。

Dropbear支援[SCP](../Page/安全复制.md "wikilink")。SFTP則需要透過其他程式支援。

## 參考

## 外部連結

  -

  -
  - <http://packages.debian.org/dropbear>
    ([Debian](../Page/Debian.md "wikilink") package page)

  - <https://web.archive.org/web/20120121032339/https://dev.openwrt.org/browser/trunk/package/dropbear%EF%BC%88>[OpenWrt软件包页面](../Page/OpenWrt.md "wikilink")）

  - [DropBear SSH for Android on Google
    Play](https://web.archive.org/web/20130907213049/https://play.google.com/store/apps/details?id=me.shkschneider.dropbearserver#?t=W251bGwsMSwxLDEsIm1lLnNoa3NjaG5laWRlci5kcm9wYmVhcnNlcnZlciJd)

[Category:加密软件](https://zh.wikipedia.org/wiki/Category:加密软件 "wikilink")
[Category:自由網路軟體](https://zh.wikipedia.org/wiki/Category:自由網路軟體 "wikilink")
[Category:自由安全软件](https://zh.wikipedia.org/wiki/Category:自由安全软件 "wikilink")
[Category:Secure_Shell](https://zh.wikipedia.org/wiki/Category:Secure_Shell "wikilink")
[Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink")

1.  [Dropbear SSH](https://matt.ucc.asn.au/dropbear/dropbear.html)
2.  [CHANGES](https://matt.ucc.asn.au/dropbear/CHANGES)