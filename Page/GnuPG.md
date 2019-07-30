**GNU Privacy Guard**（**GnuPG**或**GPG**）是一个[密码学](../Page/密码学.md "wikilink")软件，用于[加密](https://zh.wikipedia.org/wiki/加密 "wikilink")、[签名通信内容及管理](../Page/數位簽章.md "wikilink")[非对称密码学的密钥](../Page/公开密钥加密.md "wikilink")。GnuPG是[自由软件](../Page/自由软件.md "wikilink")，遵循[IETF訂定的](https://zh.wikipedia.org/wiki/互聯網工程工作小組 "wikilink")[OpenPGP技術標準設計](https://zh.wikipedia.org/wiki/OpenPGP "wikilink")，并与[PGP](../Page/PGP.md "wikilink")保持兼容。\[1\]

GnuPG是[自由軟件基金會的](https://zh.wikipedia.org/wiki/自由軟件基金會 "wikilink")[GNU計劃](../Page/GNU計劃.md "wikilink")的一部份，曾受[德國政府資助](https://zh.wikipedia.org/wiki/德國 "wikilink")。\[2\]

## 歷史

GnuPG的早期版本由[维尔纳·科赫开发](../Page/維爾納·科赫.md "wikilink")，经过近两年迭代后于1999年9月7日正式发布1.0.0版。软件实现遵循OpenPGP标准，兼容[菲尔·齐默尔曼开发的](../Page/菲爾·齊默爾曼.md "wikilink")[PGP](../Page/PGP.md "wikilink")。2000年，[德國聯邦經濟及科技部資助了](https://zh.wikipedia.org/wiki/德國聯邦經濟及科技部 "wikilink")31.8万马克，用于移植GnuPG到[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。\[3\]

德国政府于2005年资助开发[S/MIME](https://zh.wikipedia.org/wiki/S/MIME "wikilink")。GnuPG 2.0於2006年11月13日發佈，加入了[S/MIME](https://zh.wikipedia.org/wiki/S/MIME "wikilink")-多用途网际邮件扩充协议（Secure Multipurpose Internet Mail Extensions. RFC 2311）。因為GnuPG 2.0的新的軟件架構不支援某些用途，所以1.x與2.0是兩個分支版本。\[4\]

## 使用

虽然基本的GnuPG程序有一个[命令行界面](../Page/命令行界面.md "wikilink")，仍然存在许多提供[图形用户界面](../Page/图形用户界面.md "wikilink")的[前端](https://zh.wikipedia.org/wiki/前端 "wikilink")。例如GnuPG加密被集成进了[Linux](../Page/Linux.md "wikilink")里流行的桌面环境[KDE](../Page/KDE.md "wikilink")和[GNOME](../Page/GNOME.md "wikilink")裡的图形化[電子郵件用戶端](../Page/電子郵件用戶端.md "wikilink")：[KMail和](https://zh.wikipedia.org/wiki/KMail "wikilink")[Novell Evolution](../Page/Novell_Evolution.md "wikilink")。也有GnuPG的图形化前端（GNOME裡的，[KDE](../Page/KDE.md "wikilink")裡的[KGpg](https://zh.wikipedia.org/wiki/KGpg "wikilink")）。在[Mac OS X上](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，Mac GPG项目提供[Aqua作为](https://zh.wikipedia.org/wiki/Aqua_\(用户接口\) "wikilink")[操作系统](../Page/操作系统.md "wikilink")集成的加密[前端和](https://zh.wikipedia.org/wiki/前端 "wikilink")[密钥管理器和GnuPG安装一样通过](https://zh.wikipedia.org/wiki/密钥管理器 "wikilink")[Installer](https://zh.wikipedia.org/wiki/Installer_\(Mac_OS_X\) "wikilink") [packages进行安装](https://zh.wikipedia.org/wiki/Software_package_\(installation\) "wikilink")。\[5\]此外，[GPGMail项目](https://zh.wikipedia.org/wiki/GPGMail "wikilink")\[6\]可以使[Apple Mail使用GnuPG加密](https://zh.wikipedia.org/wiki/Apple_Mail "wikilink")。[Instant messaging程序](https://zh.wikipedia.org/wiki/Instant_messaging "wikilink")，例如，当GnuPG已经安装并配置好了时，[Psi和](https://zh.wikipedia.org/wiki/Psi_\(instant_messaging_client\) "wikilink")[Fire可以自动安全的传递消息](https://zh.wikipedia.org/wiki/Fire_\(instant_messaging_client\) "wikilink")。像这类的基于互联网的软件也可以使用GnuPG。跨平台[插件](../Page/插件.md "wikilink")[Enigmail](../Page/Enigmail.md "wikilink")为[Mozilla Thunderbird和](../Page/Mozilla_Thunderbird.md "wikilink")[SeaMonkey](../Page/SeaMonkey.md "wikilink")提供了GnuPG支持。类似的，和[FireGPG为](https://zh.wikipedia.org/wiki/FireGPG "wikilink")[Mozilla Firefox提供了GnuPG支持](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")。

在2005年，G10 Code和[Intevation发行了](https://zh.wikipedia.org/wiki/Intevation "wikilink")[Gpg4win](../Page/Gpg4win.md "wikilink")，一个包含GnuPG for Windows, [WinPT](https://zh.wikipedia.org/wiki/WinPT "wikilink")、[Gnu Privacy Assistant](https://zh.wikipedia.org/wiki/Gnu_Privacy_Assistant "wikilink")，和为[Windows Explorer和](https://zh.wikipedia.org/wiki/Windows_Explorer "wikilink")[Outlook提供的GnuPG插件的mail软件套装](../Page/Microsoft_Outlook.md "wikilink")。这些工具被包装进了一个标准的微软安装包裡，使得它可以很容易的使GnuPG在Windows系统上安装和使用。

## 過程

GnuPG使用[使用者自行生成的](https://zh.wikipedia.org/wiki/使用者 "wikilink")[非對稱密鑰對來加密信息](https://zh.wikipedia.org/wiki/非對稱密鑰對 "wikilink")，由此產生的公鑰可以同其他使用者以各種方式交換，如[密鑰伺服器](https://zh.wikipedia.org/wiki/密鑰伺服器 "wikilink")。他們必須小心交換密鑰，以防止得到偽造的密鑰。GnuPG還可以向信息添加一個加密的[數字簽名](https://zh.wikipedia.org/wiki/數字簽名 "wikilink")，這樣，收件人可以驗證信息完整性和發件人。 GnuPG不利用專利或其他方式限制軟件或算法，就像IDEA算法一開始出現在PGP中一樣。（可以通過下載相關插件在GnuPG中使用IDEA算法，不過如果在一些IDEA算法為專利的國家中使用，可能需要一份許可）。GnuPG同樣也使用各種其他非專利的算法：

  - [分組密碼](https://zh.wikipedia.org/wiki/分組密碼 "wikilink")：、[Camellia](../Page/Camellia.md "wikilink")、[Triple DES](https://zh.wikipedia.org/wiki/Triple_DES "wikilink")、[AES](https://zh.wikipedia.org/wiki/高級加密標準 "wikilink")、[Blowfish](../Page/Blowfish.md "wikilink")、[Twofish](../Page/Twofish.md "wikilink")
  - [非對稱加密密碼](https://zh.wikipedia.org/wiki/非對稱加密密碼 "wikilink")：[ElGamal](https://zh.wikipedia.org/wiki/ElGamal "wikilink")、[RSA](../Page/RSA加密演算法.md "wikilink")
  - [加密哈希](https://zh.wikipedia.org/wiki/加密哈希 "wikilink")：[RIPEMD-160](https://zh.wikipedia.org/wiki/RIPEMD-160 "wikilink")、[MD5](../Page/MD5.md "wikilink")、[SHA-1](../Page/SHA-1.md "wikilink")、[SHA-2](../Page/SHA-2.md "wikilink")、
  - [數字簽名](https://zh.wikipedia.org/wiki/數字簽名 "wikilink")：[DSA](https://zh.wikipedia.org/wiki/DSA "wikilink")、[RSA](../Page/RSA加密演算法.md "wikilink")

GnuPG是一個混合加密軟件程序，它使用常規對稱密鑰提高加密速度，使用公鑰便於交換。通常使用一次性的收件人公鑰用以加密會話。

## 應用程式支援

支援GPG的應用程式、前端及瀏覽器擴充套件：

  - [Claws Mail](../Page/Claws_Mail.md "wikilink")
  - [Enigform](https://zh.wikipedia.org/wiki/Enigform "wikilink")
  - [Enigmail](../Page/Enigmail.md "wikilink")
  - [FireGPG](https://zh.wikipedia.org/wiki/FireGPG "wikilink")\[7\]
  - [Gpg4win](../Page/Gpg4win.md "wikilink")
  - [Gpg4usb](https://zh.wikipedia.org/wiki/Gpg4usb "wikilink")
  - [GPGMail](https://zh.wikipedia.org/wiki/GPGMail "wikilink")
  - [GPGServices](https://zh.wikipedia.org/wiki/GPGServices "wikilink")
  - [GPGshell](https://zh.wikipedia.org/wiki/GPGshell "wikilink")
  - [GPGTools](https://zh.wikipedia.org/wiki/GPGTools "wikilink")
  - [KGPG](https://zh.wikipedia.org/wiki/KGPG "wikilink")
  - [MCabber](https://zh.wikipedia.org/wiki/MCabber "wikilink")
  - [Mutt](../Page/Mutt.md "wikilink")
  - [Psi (軟件)](../Page/Psi_\(軟件\).md "wikilink")
  - [WinPT](https://zh.wikipedia.org/wiki/WinPT "wikilink")

## 參見

  - [PGP](../Page/PGP.md "wikilink")
  - [加密技術](https://zh.wikipedia.org/wiki/加密技術 "wikilink")
  - [密碼學](https://zh.wikipedia.org/wiki/密碼學 "wikilink")

## 參考來源

[Category:1999年软件](https://zh.wikipedia.org/wiki/Category:1999年软件 "wikilink") [Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink") [Category:加密软件](https://zh.wikipedia.org/wiki/Category:加密软件 "wikilink") [Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink") [Category:隱私軟件](https://zh.wikipedia.org/wiki/Category:隱私軟件 "wikilink")

1.
2.
3.
4.  [GnuPG-2.0 released](http://lists.gnupg.org/pipermail/gnupg-announce/2006q4/000239.html), Werner Koch, [2006-11-13](https://zh.wikipedia.org/wiki/2006-11-13 "wikilink")
5.
6.
7.  [getfiregpg.org](http://getfiregpg.org/)