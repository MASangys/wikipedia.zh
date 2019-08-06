**BitLocker**（直译为“比特锁”）是内置于[Windows Vista及其之后系统的全](../Page/Windows_Vista.md "wikilink")[磁盘加密](../Page/磁盘加密.md "wikilink")功能，透過为整个[卷提供](https://zh.wikipedia.org/wiki/卷_\(计算机\) "wikilink")[加密来保护数据](https://zh.wikipedia.org/wiki/加密 "wikilink")。它默认在[密码块链接](https://zh.wikipedia.org/wiki/分组密码工作模式#密码块链接（CBC） "wikilink")（CBC）或[XTS模式下使用](https://zh.wikipedia.org/wiki/磁盘加密理论 "wikilink")128位或256位[密钥](../Page/密钥.md "wikilink")的[AES加密算法](../Page/高级加密标准.md "wikilink")\[1\]\[2\]\[3\]。其中CBC用于每个单独的[磁盘扇区](https://zh.wikipedia.org/wiki/磁盘扇区 "wikilink")，不在整个磁盘上使用\[4\]。

## 历史

BitLocker起源于微软2004年的[下一代安全计算基础](../Page/下一代安全计算基础.md "wikilink")架构，其临时代号为“基石”（Cornerstone）\[5\]\[6\]，功能为保护设备上的信息，尤其是在设备丢失或被盗的情况下。另一个特性为“代码完整性根检测”（Code Integrity Rooting），旨在验证Microsoft Windows引导与系统文件的完整性\[7\]。

当与兼容的[可信平台模块](../Page/可信平台模块.md "wikilink")（TPM）结合使用时，BitLocker可以在解密受保护的卷之前验证引导和系统文件的完整性，如果验证失败，会禁止用户访问受保护的系统。\[8\]\[9\]在Windows Vista发售之前，BitLocker简称安全启动（Secure Startup）\[10\]。

## 可用系统

BitLocker内置于以下系统：

  - [Windows Vista与](../Page/Windows_Vista.md "wikilink")[Windows 7旗舰版与企业版](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")
  - [Windows 8与](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")[8.1专业版与企业版](../Page/Windows_8.1.md "wikilink")\[11\]\[12\]
  - [Windows 10专业版](../Page/Windows_10.md "wikilink")、企业版与教育版\[13\]
  - [Windows Server 2008](../Page/Windows_Server_2008.md "wikilink")\[14\]及其之后系统\[15\]\[16\]

最初，Windows Vista中的BitLocker图形界面只能加密[操作系统](../Page/操作系统.md "wikilink")卷。从Windows Vista Service Pack 1和Windows Server 2008开始，图形工具可以加密操作系统卷以外的卷。然而，BitLocker的某些功能（例如打开或关闭自动锁定）必须通过名为`manage-bde.wsf`的命令行工具进行管理\[17\]。

新版BitLocker首次包含在Windows 7和Windows Server 2008 R2中，增加了加密可移动驱动器的功能。在[Windows XP或Windows](../Page/Windows_XP.md "wikilink") Vista上，BitLocker To Go Reader程序可以实现对使用[FAT](../Page/FAT.md "wikilink")16、[FAT32或](https://zh.wikipedia.org/wiki/FAT32 "wikilink")[exFAT文件系统驱动器的只读访问](https://zh.wikipedia.org/wiki/exFAT "wikilink")\[18\]。另外，新的命令行工具`manage-bde`替换了旧的`manage-bde.wsf`\[19\]。

从Windows Server 2012和Windows 8开始，微软通过硬盘加密规范完善了BitLocker，该规范允许将BitLocker的加密操作下放到存储设备的硬件中完成\[20\]\[21\]。此外，BitLocker现在可以通过[Windows PowerShell进行管理](../Page/Windows_PowerShell.md "wikilink")\[22\]。最后，Windows 8企业版引入了[Windows To Go](../Page/Windows_To_Go.md "wikilink")，可受BitLocker保护\[23\]。

### 设备加密

[Windows Mobile 6.5](https://zh.wikipedia.org/wiki/Windows_Mobile_6.5 "wikilink")、[Windows RT和Windows](../Page/Windows_RT.md "wikilink") 8.1标准版包含设备加密（Device encryption）——BitLocker的功能限制版本——用于加密整个系统\[24\]\[25\]\[26\]。使用具有管理权限的[微软帐户登录将自动启动加密过程](https://zh.wikipedia.org/wiki/微软帐户 "wikilink")。恢复密钥存储到微软帐户或[活动目录中](https://zh.wikipedia.org/wiki/活动目录 "wikilink")，允许任何计算机检索。虽然Win 8.1全版本提供了设备加密功能，但与BitLocker不同，设备加密要求设备符合（前称Connected Standby，译为联网待机）规范\[27\]，需要[固态驱动器](https://zh.wikipedia.org/wiki/固态驱动器 "wikilink")，不可拆卸RAM（防止冷启动攻击）和一个TPM 2.0芯片\[28\]\[29\]。

## 加密模式

有三种认证机制可以用来构建BitLocker加密\[30\]：

  - 透明运行模式：此模式使用TPM 1.2硬件的功能来提供透明的用户体验 - 用户正常启动并登录到Windows。用于[磁盘加密](../Page/磁盘加密.md "wikilink")的密钥由TPM芯片密封（加密），且在未检测到有对早期启动组件的修改的情况下被释放到OS加载代码中。因为其允许攻击者[启动已关闭电源的机器](../Page/啟動程式.md "wikilink")，所以这种模式很容易受到[冷启动攻击](../Page/冷启动攻击.md "wikilink")。
  - 用户认证模式：此模式要求用户以预引导[PIN或密码的形式向预引导环境提供认证](https://zh.wikipedia.org/wiki/PIN "wikilink")。
  - USB密钥模式：用户必须将包含启动密钥的USB设备插入计算机才能启动受保护的操作系统。此模式要求受保护机器上的BIOS支持在操作系统预加载阶段读取USB设备。密钥还可以通过使用[CCID](https://zh.wikipedia.org/wiki/CCID "wikilink")（芯片卡接口设备）读取加密[智能卡获得](https://zh.wikipedia.org/wiki/智能卡 "wikilink")。使用CCID比单纯将密钥文件存储在外部[U盘更安全](https://zh.wikipedia.org/wiki/U盘 "wikilink")，因为CCID协议使用嵌入在智能卡中的加密处理器隐藏私钥，防止密钥因智能卡内容泄露而被简单获取。

上述认证机制支持以下组合，全部具有可选的[托管恢复密钥](https://zh.wikipedia.org/wiki/密钥托管 "wikilink")：

  - 仅TPM\[31\]
  - TPM + PIN\[32\]
  - TPM + PIN + USB密钥\[33\]
  - TPM + USB密钥\[34\]
  - USB密钥\[35\]
  - 仅密码\[36\]

## 运行

BitLocker是一个[逻辑卷加密系统](https://zh.wikipedia.org/wiki/卷_\(计算机\) "wikilink")。（一个卷的范围可以是[硬盘驱动器的一部分](https://zh.wikipedia.org/wiki/硬盘驱动器 "wikilink")、整个驱动器或多个驱动器。）启用后，TPM和BitLocker可以确保可信引导路径（如BIOS和引导扇区）的完整性，阻止大多数离线物理攻击和引导扇区恶意软件\[37\]。

为使BitLocker加密保存操作系统卷，至少需要两个[NTFS](../Page/NTFS.md "wikilink")格式的卷：一个用于操作系统（通常为C盘），另一个大小至少为100 MB，用于操作系统[引导](../Page/啟動程式.md "wikilink")\[38\]。BitLocker需要后者保持未加密状态\[39\]——在Windows Vista上，此卷必须分配一个驱动器号，而在Windows 7上则不需要\[40\]。与以前的Windows版本不同，Vista的“diskpart”命令行工具可以缩小NTFS卷的大小，以便从已分配的空间创建此卷。微软还有一个名为BitLocker驱动器准备工具的软件，可将Windows Vista上的现有卷缩小，为新的引导卷腾出空间，并将必要的引导文件传输到卷中\[41\]。

创建备用启动分区后需要初始化TPM模块（假设正在使用此功能），之后配置所需的磁盘加密密钥保护机制，如TPM、PIN或USB密钥\[42\]。对卷的加密会在后台完成，这在大型磁盘上可能需要大量时间，因为每个逻辑扇区都要被读取、加密并重写回磁盘\[43\]。这些密钥只有在整个卷被加密后才会被保护，这时此卷被认为是安全的\[44\]。 BitLocker使用低级设备驱动程序对所有文件操作进行加密和解密，这对于在平台上与加密卷进行交互操作的应用程序是透明的\[45\]。

[加密文件系统](../Page/加密文件系统.md "wikilink")（EFS）可以与BitLocker结合使用，在操作系统运行时提供保护。要控制操作系统中的进程和用户对文件的访问，使用者只能使用运行于Windows层面的加密软件（如EFS）。因此，BitLocker和EFS提供了针对不同类别攻击的保护。\[46\]

在活动目录环境中，BitLocker支持可选密钥托管到活动目录。如果活动目录服务托管在Windows Server 2008之前的Windows版本上，则可能需要先进行架构更新\[47\]。

BitLocker和其他全磁盘加密系统可能被[恶意启动管理器攻击](../Page/Rootkit.md "wikilink")。一旦恶意引导程序获取解密用信息，它就可以解密卷主密钥（Volume Master Key，VMK），然后解密或修改加密硬盘上的任何信息。通过配置TPM来保护受信任的启动路径，包括[BIOS](../Page/BIOS.md "wikilink")和[引导扇区](https://zh.wikipedia.org/wiki/引导扇区 "wikilink")，BitLocker可以减轻此威胁。 （注意，引导路径的一些非恶意更改可能会导致[平台配置寄存器检查失败](../Page/可信平台模块.md "wikilink")，从而生成错误的警告。）\[48\]

## 安全问题

据微软透露\[49\]，BitLocker没有刻意设置[后门](https://zh.wikipedia.org/wiki/軟體後門 "wikilink")。没有后门，执法机构就无法从安全通道获取微软提供的用户驱动器上的数据。2006年，[英国内政部担心缺乏后门](../Page/英國內政部.md "wikilink")\[50\]，试图与微软谈判，微软开发人员[尼尔斯·弗格森](https://zh.wikipedia.org/wiki/尼尔斯·弗格森 "wikilink")（Niels Ferguson）和其他微软的发言人表示他们不会增加后门\[51\]。微软工程师曾表示，虽然没有正式的书面请求，[联邦调查局](../Page/联邦调查局.md "wikilink")特工也在许多会议上向他们施加压力，要求增加后门。微软的工程师最终向FBI建议，特工应该寻找BitLocker程序建议其用户创建的密钥[硬拷贝](https://zh.wikipedia.org/wiki/硬拷贝 "wikilink")\[52\]。虽然BitLocker使用的AES加密算法属[公有领域](../Page/公有领域.md "wikilink")，但它在BitLocker以及软件的其他组件中的实现都是[专有的](../Page/专有软件.md "wikilink")。该代码可供微软合作伙伴和企业审查，但须遵守[不披露协议](https://zh.wikipedia.org/wiki/不披露协议 "wikilink")。\[53\]\[54\]

BitLocker的“透明运行模式”和“用户认证模式”使用TPM硬件检测[BIOS](../Page/BIOS.md "wikilink")和[MBR预加载环境是否有未经授权的改变](../Page/主引导记录.md "wikilink")。如果检测到任何未经授权的更改，BitLocker将在USB设备上请求一个恢复密钥。该加密密钥用于解密卷主密钥，并允许继续运行[引导过程](../Page/啟動程式.md "wikilink")\[55\]。

2008年2月，一个安全研究小组发布了所谓“[冷启动攻击](../Page/冷启动攻击.md "wikilink")”的详细信息，其通过将机器从可移动介质（如USB驱动器）引导到另一个操作系统，然后[转储预引导内存中的内容来损害诸如BitLocker的全磁盘加密系统](https://zh.wikipedia.org/wiki/核心转储 "wikilink")\[56\]。攻击依赖于这样一个事实：电源关闭后，[DRAM会](https://zh.wikipedia.org/wiki/DRAM "wikilink")[保留长达数分钟的信息](https://zh.wikipedia.org/wiki/数据残留 "wikilink")（冷却后的保留时间更长）。美国专利9,514,789号描述的Bress/ Menz装置可以完成这种攻击\[57\]。单独使用TPM不会提供任何保护，因为Windows运行时密钥保存在内存中。其他供应商和操作系统（包括[Linux](../Page/Linux.md "wikilink")和[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")）的类似全磁盘加密机制也容易遭受同样的攻击。[普林斯顿大学](../Page/普林斯顿大学.md "wikilink")教授的一篇论文推荐在未取得拥有者物理控制的情况下应将计算机关闭而不是处于[睡眠模式](https://zh.wikipedia.org/wiki/睡眠模式 "wikilink")，并且把加密软件配置为需要密码才能启动机器\[58\]。

一旦受BitLocker保护的机器开始运行，其密钥就会存储在内存中，可能易受能够访问物理内存的进程的攻击，例如通过[1394或](../Page/IEEE_1394.md "wikilink")[Thunderbolt](../Page/Thunderbolt.md "wikilink") [DMA通道攻击](../Page/直接記憶體存取.md "wikilink")\[59\]。

自Windows 8和Windows Server 2012开始，微软从BitLocker方案中移除了大象扩散器（Elephant Diffuser），没有声明原因\[60\]。软件工程师丹·罗森多夫（Dan Rosendorf）的研究表明，移除大象扩散器对于抵御有针对性攻击的BitLocker加密的安全性具有“不可否认的负面影响”\[61\]。微软随后说明扩散器移除的原因是性能问题以及不遵守[联邦信息处理标准](https://zh.wikipedia.org/wiki/联邦信息处理标准 "wikilink")（FIPS）\[62\]。从Windows 10版本1511开始，微软向BitLocker添加了新的符合FIPS标准的[XTS-AES加密算法](https://zh.wikipedia.org/wiki/磁盘加密理论#XTS "wikilink")\[63\]。

2015年11月10日，微软发布了一项安全更新，修补BitLocker中的安全漏洞。漏洞使攻击者可以绕过目标计算机上的[Kerberos](../Page/Kerberos.md "wikilink")身份验证，只有在计算机已加入域，目标系统已启用BitLocker且没有[PIN或USB密钥的情况下](https://zh.wikipedia.org/wiki/PIN "wikilink")，才能利用该绕过漏洞\[64\]。

## manage-bde工具

Windows7开始，使用manage-bde.exe对硬盘分区加密或解密。其主要功能参数：

  - \-status 分区的加密/解密及其正在进展中的状态显示
  - \-on 开始加密
  - \-off 开始解密
  - \-pause 暂停加密或解密
  - \-resume 恢复加密或解密
  - \-lock 阻止对加密数据的访问
  - \-unlock 允许对加密数据的访问
  - \-autounlock 管理自动解锁数据分卷
  - \-protectors 管理加密密钥的保护方式
  - \-tpm 配置计算机的Trusted Platform Module (TPM).
  - \-SetIdentifier or -si 配置分卷的identification field
  - \-ForceRecovery or -fr 强制被BitLocker保护的操作系统在重启时恢复
  - \-changepassword 修改数据分卷的口令
  - \-changepin 修改分卷的PIN
  - \-changekey 修改分卷的启动密钥
  - \-upgrade 升级BitLocker版本
  - \-ComputerName or -cn 在另一台计算机上运行，如: "ComputerX", "127.0.0.1"
  - \-? or /? 显示帮助。如: "-ParameterSet -?"
  - \-Help or -h 显示完整帮助，如: "-ParameterSet -h"

## 参见

  - [Windows Vista新功能](../Page/Windows_Vista新功能.md "wikilink")
  - [Windows 组件列表](https://zh.wikipedia.org/wiki/Windows_组件列表 "wikilink")
  - [下一代安全计算基础](../Page/下一代安全计算基础.md "wikilink")

## 参考资料

## 外部链接

  - [BitLocker 驱动器加密概述](https://technet.microsoft.com/library/cc732774.aspx)
  - [下载BitLocker 驱动器准备工具](https://www.microsoft.com/download/details.aspx?id=7806)
  - [Windows硬件开发者中心BitLocker页面](http://www.microsoft.com/whdc/system/platform/hwsecurity/default.mspx)
  - [系统完整性团队博客](https://web.archive.org/web/20100505054504/http://blogs.msdn.com/si_team/default.aspx)
  - [攻击BitLocker引导过程](http://testlab.sit.fraunhofer.de/downloads/Publications/Attacking_the_BitLocker_Boot_Process_Trust2009.pdf)
  - [修复BitLocker无法修改密码错误](https://www.ytyzx.org/index.php?title=%E5%A6%82%E4%BD%95%E4%BF%AE%E5%A4%8DBitLocker%E6%97%A0%E6%B3%95%E4%BF%AE%E6%94%B9%E5%AF%86%E7%A0%81%E9%94%99%E8%AF%AF&variant=zh-cn)

[Category:Windows_Server_2008](https://zh.wikipedia.org/wiki/Category:Windows_Server_2008 "wikilink") [Category:Windows_7](https://zh.wikipedia.org/wiki/Category:Windows_7 "wikilink") [Category:Windows_Vista](https://zh.wikipedia.org/wiki/Category:Windows_Vista "wikilink") [Category:加密软件](https://zh.wikipedia.org/wiki/Category:加密软件 "wikilink") [Category:Microsoft_Windows安全技术](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows安全技术 "wikilink") [Category:磁盘加密](https://zh.wikipedia.org/wiki/Category:磁盘加密 "wikilink")

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

12.

13.

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

34.

35.

36.

37.

38.
39.

40.
41.

42.

43.
44.

45.
46.

47.

48.
49.

50.

51.

52.

53.

54.

55.

56.

57.

58.
59.

60.

61.

62.

63.
64.