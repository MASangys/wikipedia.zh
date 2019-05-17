**VeraCrypt**是一款[开放源代码的](../Page/开放源代码.md "wikilink")（OTFE）。\[1\]它可以创建一个虚拟加密磁盘文件或加密分区\[2\]，或整个[存储设备](https://zh.wikipedia.org/wiki/存储设备 "wikilink")（除非使用了[UEFI或](https://zh.wikipedia.org/wiki/UEFI "wikilink")[GPT](../Page/GUID磁碟分割表.md "wikilink")）。\[3\]

VeraCrypt是已经停止开发的[TrueCrypt项目的一个分支](../Page/TrueCrypt.md "wikilink")\[4\]，初始版本发布于2013年6月22日，截至目前為止最新的版本為v1.23，發布於2018年9月12日\[5\]。据其开发者声称，安全方面的改进已经落实，最初TrueCrypt的[代码审计问题已得到解决](https://zh.wikipedia.org/wiki/代码审计 "wikilink")。\[6\]

## 加密方式

### 算法

与[TrueCrypt相同](../Page/TrueCrypt.md "wikilink")，VeraCrypt支持的[加密算法有](https://zh.wikipedia.org/wiki/加密算法 "wikilink")[AES](../Page/高级加密标准.md "wikilink")，[Serpent及](../Page/Serpent.md "wikilink")[Twofish](../Page/Twofish.md "wikilink")。此外，另有五种方式：AES-Twofish，AES-Twofish-Serpent，Serpent-AES，Serpent-Twofish-AES及Twofish-Serpent。\[7\]
可使用的[密码散列函数有](https://zh.wikipedia.org/wiki/密碼雜湊函數 "wikilink")[RIPEMD-160](https://zh.wikipedia.org/wiki/RIPEMD-160 "wikilink")，[SHA-256](https://zh.wikipedia.org/wiki/SHA-256 "wikilink")，[SHA-512和](https://zh.wikipedia.org/wiki/SHA-512 "wikilink")。\[8\]

### 操作模式

VeraCrypt使用[操作模式](https://zh.wikipedia.org/wiki/块密码的工作模式 "wikilink")。\[9\]

### 密匙

软件头密匙（header key）和第二头密匙（the secondary header
key（XTS模式））是使用512-[位](https://zh.wikipedia.org/wiki/bit "wikilink")[盐和](../Page/盐_\(密码学\).md "wikilink")327,661至655,331迭代的产生的，这取决于其使用的底层散列函数。\[10\]

## 安全性改进

据其开发者声称，VeraCrypt对TrueCrypt提出了一些安全方面的改进。

虽然TrueCrypt使用1000次迭代的-[RIPEMD160算法的系统分区](https://zh.wikipedia.org/wiki/RIPEMD160 "wikilink")，然而VeraCrypt使用的是327,661次迭代。对于标准储存器和其他分区，VeraCrypt使用655331次迭代的RIPEMD160和500,000次迭代SHA-2和Whirlpool。虽然这使得VeraCrypt在打开被加密分区时稍慢，但它可以让密码破解增加最少10倍和最多约300倍的的难度。“事实上，如果破解TrueCrypt的加密分区需要一个月，那么破解VeraCrypt可能需要一年。”\[11\]

Windows在[引导程序中的漏洞也是如此](https://zh.wikipedia.org/wiki/引导程序 "wikilink")。开发人员增加了对[SHA-256的系统启动加密选项](https://zh.wikipedia.org/wiki/SHA-256 "wikilink")，还修正了[Shell的安全问题](https://zh.wikipedia.org/wiki/Shell "wikilink")。[Linux和](../Page/Linux.md "wikilink")[Mac
OS
X用户受益于硬盘驱动器扇区大小大于](https://zh.wikipedia.org/wiki/OS_X "wikilink")512的支持，并且Linux得到了[NTFS格式加密扇区的支持](../Page/NTFS.md "wikilink")。

由于安全性改进，因此VeraCrypt存储格式是与TrueCrypt不兼容的。VeraCrypt开发团队认为，TrueCrypt的旧格式容易受到[美国国家安全局的攻击](../Page/美国国家安全局.md "wikilink")，因此它必须被抛弃。这是和VeraCrypt的竞争对手——[CipherShed之间的主要区别之一](https://zh.wikipedia.org/wiki/CipherShed "wikilink")，CipherShed继续使用了TrueCrypt加密格式。自版本1.0F开始，VeraCrypt开始支持打开及转换TrueCrypt的旧格式加密卷。\[12\]\[13\]

## 似是而非的否认

VeraCrypt支持一种名为“”的功能\[14\]，允许在卷内创建另一个“隐藏驱动卷”。\[15\]此外，Windows版本的VeraCrypt可以创建并运行一个隐藏的加密操作系统，其存在[可以被否认](https://zh.wikipedia.org/wiki/可否认式加密 "wikilink")。\[16\]该功能使用户在受到胁迫时通过展示无关紧要的外层卷，而使内层隐藏卷蒙混过关。

VeraCrypt帮助文档中列出多种方式写明当该功能受到影响时（例如第三方软件可能通过临时文件、缩略图等向未加密的磁盘分区泄露信息），几种可能的方法来避免这种情况。\[17\]

## 性能

VeraCrypt支持[多元处理](https://zh.wikipedia.org/wiki/多元处理 "wikilink")[并行](https://zh.wikipedia.org/wiki/数据并行 "wikilink")\[18\]加密，在Windows系统中，[流水线型读写操作](../Page/流水线_\(计算机\).md "wikilink")（异步处理的一种形式）\[19\]以提高加密解密的性能效率。该软件在较新的处理器支持AES-NI指令集，亦支持[AES硬件加速以进一步提高性能](../Page/AES指令集.md "wikilink")。\[20\]
磁盘加密对性能的影响在使用[直接内存访问](https://zh.wikipedia.org/wiki/直接存储器访问 "wikilink")（Direct
Memory Access，DMA）操作中尤其明显，因为所有数据必须通过CPU进行解密，而不是直接从磁盘复制到内存。

## 安全问题

VeraCrypt很容易受到各种已知的攻击，也影响到其他基于软件的磁盘加密软件，如[BitLocker](../Page/BitLocker.md "wikilink")。为了缓解这些攻击，VeraCrypt的帮助文档要求用户遵守各种安全防范措施。\[21\]\[22\]一些安全问题详述如下：

### 内存中的加密密匙

VeraCrypt存储其在[内存中的密匙](../Page/随机存取存储器.md "wikilink")。普通个人计算机上对[动态内存断电后的几秒钟](../Page/动态随机存取存储器.md "wikilink")（或更长，如降低温度）之后可能仍然保留着数据。即使在内存中的数据已经严重丢失，仍有各种算法可以恢复密钥。这种方法被称为[冷启动攻击](https://zh.wikipedia.org/wiki/冷启动攻击 "wikilink")，特别适用于在接入电源时，闲置或锁屏模式下的笔记本电脑，现已成功地用于攻击由TrueCrypt加密保护的文件系统。\[23\]

### 物理安全性

VeraCrypt帮助文档指出，如果攻击者物理攻击计算机中的数据，或者在受感染的电脑上使用该软件，VeraCrypt也无法保全其加密数据的完整性。当然电脑被盗，遗失或被没收这样的情况自然无能为力。\[24\]当攻击者通过物理访问电脑，例如，安装一个硬件或软件的[键盘记录器或一个](https://zh.wikipedia.org/wiki/键盘监听 "wikilink")装置捕获内存信息，或安装任何其他或[软件的攻击](../Page/恶意软件.md "wikilink")，让攻击者捕捉到未加密的数据（包括加密密钥和密码），然后以这些非法得到的加密密匙及密码进行解密。因此，物理安全是一个完善安全系统的基本前提。这种攻击方式也一般称之为“[邪恶女佣攻击](../Page/Rootkit.md "wikilink")”（Evil
Maid attack）。\[25\]

### 恶意软件

VeraCrypt帮助文档指出，VeraCrypt无法保护被感染某些[恶意软件类型的电脑上的数据](../Page/恶意软件.md "wikilink")。某些类型的恶意软件被设计用来记录键盘输入，包括键入的密码，攻击者也可以通过互联网上传或保存到未加密的本地驱动器后读取它，或者直接物理访问计算机时。\[26\]

### 可信平台模块

VeraCrypt网站上的FAQ指出，\[27\][可信平台模块](../Page/可信平台模块.md "wikilink")（Trusted
Platform Module，TPM）
的安全性并不可靠。因为如果攻击者具有对计算机的物理管理访问权限时，电脑可能被攻击者植入恶意程序，如一个简单的键盘按键记录器等，可以被用来捕捉密码或其他敏感信息。——TPM并非杀毒软件，并不会防止攻击者恶意修改计算机，因此VeraCrypt将不支持TPM。

## 安全审计

VeraCrypt正在进行一次独立的代码审核，目前正处于初期规划阶段。\[28\]

VeraCrypt是基于TrueCrypt开发的，通过独立的安全审计。审计的第一阶段已于2014年4月14日完成，结果为“没有证据证明该软件有后门或恶意代码”。\[29\]审计的第二阶段完成于2015年4月2日，结果为“没有证据表明该软件有故意后门，或在大多数情况下将使软件不安全的严重设计缺陷”。\[30\]\[31\]

## 许可证

VeraCrypt从2015年6月28日起采用Apache 2.0许可证授权。\[32\]在此之前，它是以微软公共许可证（Microsoft
Public License）发布的。\[33\]VeraCrypt使用了大量从其前身TrueCrypt得到的代码，也是唯一一款使用
TrueCrypt License 3.0
的加密软件。\[34\]\[35\]然而这并不是一个广泛使用的[开源软件许可证](https://zh.wikipedia.org/wiki/开源软件许可证 "wikilink")，也不是[自由软件基金会定义的](../Page/自由软件基金会.md "wikilink")[自由软件许可证](https://zh.wikipedia.org/wiki/自由软件许可证 "wikilink")，因为它包含分销和版权责任的限制。\[36\]

## 计划中的功能

计划中的功能包括增加加密GPT系统分区的功能等。\[37\]

## 参见

  - [TrueCrypt](../Page/TrueCrypt.md "wikilink")

  -
  -
## 参考文献

## 外部链接

  - [VeraCrypt 网站](https://www.veracrypt.fr)
  - [TrueCrypt 网站](http://truecrypt.sourceforge.net/)

[Category:2014年软件](https://zh.wikipedia.org/wiki/Category:2014年软件 "wikilink")
[Category:跨平台软件](https://zh.wikipedia.org/wiki/Category:跨平台软件 "wikilink")
[Category:加密软件](https://zh.wikipedia.org/wiki/Category:加密软件 "wikilink")
[Category:磁盘加密](https://zh.wikipedia.org/wiki/Category:磁盘加密 "wikilink")
[Category:Linux安全软件](https://zh.wikipedia.org/wiki/Category:Linux安全软件 "wikilink")
[Category:Windows安全软件](https://zh.wikipedia.org/wiki/Category:Windows安全软件 "wikilink")
[Category:使用wxWidgets的软件](https://zh.wikipedia.org/wiki/Category:使用wxWidgets的软件 "wikilink")
[Category:MacOS安全软件](https://zh.wikipedia.org/wiki/Category:MacOS安全软件 "wikilink")

1.  ["VeraCrypt Official Site"](https://veracrypt.codeplex.com/)

2.

3.

4.

5.  ["VeraCrypt
    Downloads"](https://veracrypt.codeplex.com/releases/view/616110)

6.

7.

8.

9.

10.

11.
12. ["VeraCrypt Release
    Notes"](https:/acrypt.codeplex.com/wikipage?title=Release%20Notes)

13. Castle, Alex (March, 2015). "Where Are We At With TrueCrypt?".
    MaximumPC, p. 59.

14.

15.

16.

17.

18.

19.
20.
21.
22.

23.

24.

25.

26.

27.

28.

29.

30.

31.

32.

33.

34. [TrueCrypt License](http://www.truecrypt.org/legal/license).
    Accessed on: May 21, 2012

35. [TrueCrypt Collective
    License](https://www.ohloh.net/licenses/TrueCrypt_Collective_License).
    Accessed on: June 4, 2014

36.

37.