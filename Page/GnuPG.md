**GNU Privacy
Guard**（**GnuPG**或**GPG**）是一种[加密软件](../Page/加密.md "wikilink")，它是[PGP加密軟件的满足](../Page/PGP.md "wikilink")[GPL的替代物](../Page/GNU_General_Public_License.md "wikilink")。GnuPG依照由[IETF訂定的](../Page/互聯網工程工作小組.md "wikilink")[OpenPGP技術標準設計](../Page/OpenPGP.md "wikilink")\[1\]。GnuPG用于加密、[數位簽章及產生非對稱鑰匙对的软件](../Page/數位簽章.md "wikilink")。

[IETF正在為PGP协议进行标准化](../Page/Internet_Engineering_Task_Force.md "wikilink")，标准化的PGP稱為OpenPGP\[2\]。目前版本的PGP及Veridis'
Filecrypt與GnuPG或其他OpenPGP系統相容。

GnuPG是[自由軟件基金會的](../Page/自由軟件基金會.md "wikilink")[GNU計劃的一部份](../Page/GNU計劃.md "wikilink")，目前受[德國政府資助](../Page/德國.md "wikilink")。以[GNU通用公共许可证第三版授權](../Page/GNU通用公共许可证#GPLv3.md "wikilink")。

## 歷史

德国人于1997年9月，在一个兴趣组（BoF
session）上听了[理查德·斯托曼的请求欧洲自由软件编写者实现公开密钥软件的演讲](../Page/理查德·斯托曼.md "wikilink")。禁止在美国境内编写这样的软件，甚至在境外的美国公民也不行。Koch用[Blowfish算法代替](../Page/Blowfish_\(密码学\).md "wikilink")[IDEA算法](../Page/IDEA算法.md "wikilink")，用[Elgamal算法代替](../Page/ElGamal加密算法.md "wikilink")[RSA算法](../Page/RSA算法.md "wikilink")，实现了[流加密](../Page/流加密.md "wikilink")，增加了一些密钥管理，获得Peter
Gutmann的授权使用随机数代码（适用于没有`/dev/random`的系统）。于1998年2月24日发布了第一个版本（gnupg-0.2.8）。1998年7月，第一个几乎与OpenPGP兼容的版本。1998年底，Matthew
Skala贡献了[Twofish代码](../Page/Twofish.md "wikilink")，Michael
Roth贡献了[Triple-DES实现](../Page/三重DES.md "wikilink")。这样，OpenPGP所需的一套算法就完成了。

1.0.0版於1999年9月7日發佈。2010年9月18日发布了专利刚刚失效的[RSA的](../Page/RSA算法.md "wikilink")1.0.3版。[德國聯邦經濟及科技部於](../Page/德國聯邦經濟及科技部.md "wikilink")2000年資助31.8万马克推动把它移植至[Microsoft
Windows](../Page/Microsoft_Windows.md "wikilink")。GnuPG是按照OpenPGP標準的軟件，因此OpenPGP的歷史與GnuPG的關係密切。[電子郵件加密協定則由](../Page/電子郵件.md "wikilink")[Phil
Zimmermann開發](../Page/菲爾·齊默爾曼.md "wikilink")。2000年修改的美国出口控制条款最终允许美国公民可以参与GnuPG的开发。

德国政府于2005年资助开发[S/MIME](../Page/S/MIME.md "wikilink")。GnuPG
2.0於2006年11月13日發佈，加入了[S/MIME](../Page/S/MIME.md "wikilink")-多用途网际邮件扩充协议（Secure
Multipurpose Internet Mail Extensions. RFC 2311）。因為GnuPG
2.0的新的軟件架構不支援某些用途，所以1.x與2.0是兩個分支版本。\[3\]

## 使用

虽然基本的GnuPG程序有一个[命令行界面](../Page/命令行界面.md "wikilink")，仍然存在许多提供[图形用户界面的](../Page/图形用户界面.md "wikilink")[前端](../Page/前端.md "wikilink")。例如GnuPG加密被集成进了[Linux里流行的桌面环境](../Page/Linux.md "wikilink")[KDE和](../Page/KDE.md "wikilink")[GNOME裡的图形化](../Page/GNOME.md "wikilink")[電子郵件用戶端](../Page/電子郵件用戶端.md "wikilink")：[KMail和](../Page/KMail.md "wikilink")[Novell
Evolution](../Page/Novell_Evolution.md "wikilink")。也有GnuPG的图形化前端（GNOME裡的，[KDE裡的](../Page/KDE.md "wikilink")[KGpg](../Page/KGpg.md "wikilink")）。在[Mac
OS X上](../Page/Mac_OS_X.md "wikilink")，Mac
GPG项目提供[Aqua作为](../Page/Aqua_\(用户接口\).md "wikilink")[操作系统集成的加密](../Page/操作系统.md "wikilink")[前端和](../Page/前端.md "wikilink")[密钥管理器和GnuPG安装一样通过](../Page/密钥管理器.md "wikilink")[Installer](../Page/Installer_\(Mac_OS_X\).md "wikilink")
[packages进行安装](../Page/Software_package_\(installation\).md "wikilink")。\[4\]此外，[GPGMail项目](../Page/GPGMail.md "wikilink")\[5\]可以使[Apple
Mail使用GnuPG加密](../Page/Apple_Mail.md "wikilink")。[Instant
messaging程序](../Page/Instant_messaging.md "wikilink")，例如，当GnuPG已经安装并配置好了时，[Psi和](../Page/Psi_\(instant_messaging_client\).md "wikilink")[Fire可以自动安全的传递消息](../Page/Fire_\(instant_messaging_client\).md "wikilink")。像这类的基于互联网的软件也可以使用GnuPG。跨平台[插件](../Page/插件.md "wikilink")[Enigmail为](../Page/Enigmail.md "wikilink")[Mozilla
Thunderbird和](../Page/Mozilla_Thunderbird.md "wikilink")[SeaMonkey提供了GnuPG支持](../Page/SeaMonkey.md "wikilink")。类似的，和[FireGPG为](../Page/FireGPG.md "wikilink")[Mozilla
Firefox提供了GnuPG支持](../Page/Mozilla_Firefox.md "wikilink")。

在2005年，G10
Code和[Intevation发行了](../Page/Intevation.md "wikilink")[Gpg4win](../Page/Gpg4win.md "wikilink")，一个包含GnuPG
for Windows, [WinPT](../Page/WinPT.md "wikilink")、[Gnu Privacy
Assistant](../Page/Gnu_Privacy_Assistant.md "wikilink")，和为[Windows
Explorer和](../Page/Windows_Explorer.md "wikilink")[Outlook提供的GnuPG插件的mail软件套装](../Page/Microsoft_Outlook.md "wikilink")。这些工具被包装进了一个标准的微软安装包裡，使得它可以很容易的使GnuPG在Windows系统上安装和使用。

## 過程

GnuPG使用[使用者自行生成的](../Page/使用者.md "wikilink")[非對稱密鑰對來加密信息](../Page/非對稱密鑰對.md "wikilink")，由此產生的公鑰可以同其他使用者以各種方式交換，如[密鑰伺服器](../Page/密鑰伺服器.md "wikilink")。他們必須小心交換密鑰，以防止得到偽造的密鑰。GnuPG還可以向信息添加一個加密的[數字簽名](../Page/數字簽名.md "wikilink")，這樣，收件人可以驗證信息完整性和發件人。
GnuPG不利用專利或其他方式限制軟件或算法，就像IDEA算法一開始出現在PGP中一樣。（可以通過下載相關插件在GnuPG中使用IDEA算法，不過如果在一些IDEA算法為專利的國家中使用，可能需要一份許可）。GnuPG同樣也使用各種其他非專利的算法：

  - [分組密碼](../Page/分組密碼.md "wikilink")：、[Camellia](../Page/Camellia.md "wikilink")、[Triple
    DES](../Page/Triple_DES.md "wikilink")、[AES](../Page/高級加密標準.md "wikilink")、[Blowfish](../Page/Blowfish.md "wikilink")、[Twofish](../Page/Twofish.md "wikilink")
  - [非對稱加密密碼](../Page/非對稱加密密碼.md "wikilink")：[ElGamal](../Page/ElGamal.md "wikilink")、[RSA](../Page/RSA加密演算法.md "wikilink")
  - [加密哈希](../Page/加密哈希.md "wikilink")：[RIPEMD-160](../Page/RIPEMD-160.md "wikilink")、[MD5](../Page/MD5.md "wikilink")、[SHA-1](../Page/SHA-1.md "wikilink")、[SHA-2](../Page/SHA-2.md "wikilink")、
  - [數字簽名](../Page/數字簽名.md "wikilink")：[DSA](../Page/DSA.md "wikilink")、[RSA](../Page/RSA加密演算法.md "wikilink")

GnuPG是一個混合加密軟件程序，它使用常規對稱密鑰提高加密速度，使用公鑰便於交換。通常使用一次性的收件人公鑰用以加密會話。

## 應用程式支援

支援GPG的應用程式、前端及瀏覽器擴充套件：

  - [Claws Mail](../Page/Claws_Mail.md "wikilink")
  - [Enigform](../Page/Enigform.md "wikilink")
  - [Enigmail](../Page/Enigmail.md "wikilink")
  - [FireGPG](../Page/FireGPG.md "wikilink")\[6\]
  - [Gpg4win](../Page/Gpg4win.md "wikilink")
  - [Gpg4usb](../Page/Gpg4usb.md "wikilink")
  - [GPGMail](../Page/GPGMail.md "wikilink")
  - [GPGServices](../Page/GPGServices.md "wikilink")
  - [GPGshell](../Page/GPGshell.md "wikilink")
  - [GPGTools](../Page/GPGTools.md "wikilink")
  - [KGPG](../Page/KGPG.md "wikilink")
  - [MCabber](../Page/MCabber.md "wikilink")
  - [Mutt](../Page/Mutt.md "wikilink")
  - [Psi (軟件)](../Page/Psi_\(軟件\).md "wikilink")
  - [WinPT](../Page/WinPT.md "wikilink")

## 參見

  - [PGP](../Page/PGP.md "wikilink")
  - [加密技術](../Page/加密技術.md "wikilink")
  - [密碼學](../Page/密碼學.md "wikilink")

## 參考來源

[Category:1999年软件](https://zh.wikipedia.org/wiki/Category:1999年软件 "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")
[Category:加密软件](https://zh.wikipedia.org/wiki/Category:加密软件 "wikilink")
[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink")
[Category:隱私軟件](https://zh.wikipedia.org/wiki/Category:隱私軟件 "wikilink")

1.  RFC 4880

2.
3.  [GnuPG-2.0
    released](http://lists.gnupg.org/pipermail/gnupg-announce/2006q4/000239.html),
    Werner Koch, [2006-11-13](../Page/2006-11-13.md "wikilink")

4.

5.

6.  [getfiregpg.org](http://getfiregpg.org/)