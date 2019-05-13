**OSx86**是把[蘋果公司出品的](../Page/蘋果公司.md "wikilink")[macOS操作系統在](../Page/macOS.md "wikilink")[x86架构的非蘋果電腦上运行的](../Page/x86.md "wikilink")[黑客协作計劃](../Page/黑客.md "wikilink")。此計劃的構思始於2005年6月的[蘋果全球開發者大會](../Page/苹果全球开发者大会.md "wikilink")（WWDC
2005），當時蘋果宣佈他們將把其個人電腦從[PowerPC架構轉向](../Page/PowerPC.md "wikilink")[英特爾架構](../Page/英特爾.md "wikilink")。

OSx86名字源于macOS系统的原名“[OS
X](../Page/MacOS.md "wikilink")”与[英特尔处理器架构名](../Page/英特尔.md "wikilink")“[x86](../Page/x86.md "wikilink")”。此計劃有一些廣為人知的名字，比如**Hackintosh**\[1\]或**Hackint0sh**\[2\]（黑客“hack”与现苹果电脑机型名“[Macintosh](../Page/Mac系列.md "wikilink")”的[混成词](../Page/混成詞.md "wikilink")）。在[中國大陸還有很多人形象的稱其為](../Page/中國大陸.md "wikilink")“**黑蘋果**”。

蘋果公司的[最终用户许可协议](../Page/最终用户许可协议.md "wikilink")（EULA）不允許將macOS安裝在一台沒有蘋果商標的硬體上。\[3\]一些公司試圖以此計劃牟利，如和。\[4\]苹果使用[数字千年版权法](../Page/數字千年版權法.md "wikilink")，赢得对Psystar等公司的诉讼。\[5\]

## 历史

### Mac OS X 10.4 "Tiger"

2005年6月6日，在[WWDC](../Page/苹果全球开发者大会.md "wikilink")
2005上，苹果公司宣布[迁移至英特尔平台的计划](../Page/蘋果的英特爾平台遷移.md "wikilink")，并向指定开发者销售999美元的开发者过渡工具。\[6\]一些开发者尝试在非苹果电脑上运行Mac
OS X，但并没有成功。\[7\]

2005年8月10日，HardMac网站声称一匿名黑客已经完全破解开发者版本的Mac OS X 10.4.1
"Tiger"，而且该网站还收到了匿名黑客送来的两段视频，展示Mac OS X
x86系统在一台采用[Pentium M](../Page/Pentium_M.md "wikilink")
735（1.6GHz）处理器的Mitac 8050D笔记本上的运行情况。Mac OS X 10.4.1
"Tiger"是最早被黑客破解的版本。\[8\]

2006年1月10日，苹果发布了Mac OS X 10.4.4与第一代基于Intel
x86架构的Mac电脑（[iMac和](../Page/iMac.md "wikilink")[MacBook
Pro](../Page/MacBook_Pro.md "wikilink")）。这些电脑上使用了[統一可延伸韌體介面](../Page/統一可延伸韌體介面.md "wikilink")（EFI），而非传统x86主板中的老式[BIOS](../Page/BIOS.md "wikilink")。2006年2月14日，黑客maxxuss在互联网上发布了Mac
OS X 10.4.4的最初破解版本。\[9\]几小时后苹果将Mac OS
X的版本更新到10.4.5，\[10\]maxxuss在两周之内破解了它。\[11\]2006年4月3日苹果推出10.4.6更新后，\[12\]两周内又有人将其破解并能够让大多数的非苹果电脑安装，尽管其内核并没有升级到10.4.6。同年6月，黑客发布了使用10.4.4内核的Mac
OS X 10.4.7破解版本。

直到10.4.8更新发行，所有OSx86补丁用的都是10.4.4版内核，而更新的系统使用10.4.8版内核。但是，新的框架依赖于新的内核，这导致使用10.4.8内核的用户遇到一些问题。同时，苹果在硬件上更多地使用[SSE3指令集](../Page/SSE3.md "wikilink")，这也让那些只支持SSE2的CPU（如老版的[奔腾4](../Page/奔腾4.md "wikilink")）难以完全兼容。为了解决这一难题，OSx86的成员发布了使用[SSE2模拟新指令集的内核](../Page/SSE2.md "wikilink")，不过对性能有一定的影响。

### Mac OS X 10.5 "Leopard"

[Hackintosh_Laptop.jpg](https://zh.wikipedia.org/wiki/File:Hackintosh_Laptop.jpg "fig:Hackintosh_Laptop.jpg")的[联想笔记本电脑](../Page/联想.md "wikilink").\]\]
早在[Mac OS X Leopard](../Page/Mac_OS_X_Leopard.md "wikilink")
9A466编译版本发布时，OSx86社区提供一個可在非蘋果电脑上运行的10.5版本。黑客BrazilMac制作出最早能在第三方硬件上安装合法的、零售版本的蘋果Mac
OS X的补丁。尽管Boot-132愈发流行，很多人还是利用BrazilMac的补丁轻而易举地制作出Mac
OSx86的“发行版”并获得成功。五種最流行的版本依名稱顺序为JaS，[Kalyway](http://www.insanelymac.com/forum/topic/77069-kalyway-1051-dvd-release-the-official/)，[iATKOS](http://iatkos.me/)，[iPC](http://ipcosx86.wikidot.com/)和iDeneb。然而，这些“发行版”均依赖于对内核修改。这些内核由Lorem（9A466）、SynthetiX（9A499、9A527和9A559）、ToH（9A581、9B13和9B18）等破解。距离现在较近的是一个称为“StageXNU”（目前名为Voodoo）的团队破解了[Darwin](../Page/Darwin_\(操作系统\).md "wikilink")
9.4.0。正是由于他们的贡献，互联网上可以下载到各種的Mac
OSx86安裝器。他们仍在不斷改進和发布新的版本，不只是為了保持与苹果的兼容，也为了与越來越多的第三方組件兼容。

### Mac OS X 10.6 "Snow Leopard"

当[Mac OS X Snow
Leopard](../Page/Mac_OS_X_Snow_Leopard.md "wikilink")“雪豹”系统发布后，俄国黑客netkas做出一个能够启动Mac
OS X
10.6的Chameleon版本，不过由于某些特殊问题，许多人需要修改[DSDT或使用特定的](../Page/高级配置与电源接口.md "wikilink")[kext](../Page/kext.md "wikilink")。与此同时，黑客modbin和dmitrik也开发出了能够在AMD平台上启动的雪豹内核。Qoopz与Pcj发布了稳定版的雪豹[XNU内核](../Page/XNU.md "wikilink")。有很多破解版都是基于官方零售版的，如Universal（只支持Intel平台）、Hazard、Mike™
和[iAtkos](http://iatkos.me/). 自从10.6.2的Nawcom后，Qoopz和Andy
Vandijck为不支持的CPU开发传统内核（Legacy Kernel）。

### OS X 10.7 "Lion"

当苹果发布第一个开发者版本后，俄国开发者usr-sse2首先找到破解方法。在[闪存盘中部署OS](../Page/闪存盘.md "wikilink")
X Lion镜像，然后通过XPC UEFI引导来启动。Chameleon经过某些源代码的改动后，修改过的OS X
Lion的镜像也可以通过它启动。Dimtrik（Bronzovka）制作了支持AMD
CPU的内核，几个月后带AMD支持的10.7.3破解版与iAtkos L2（10.7.2，仅支持Intel）发布。\[13\]

### OS X 10.8 "Mountain Lion"

首个开发者预览版释放后，一些开发者使用稍作修改的Chameleon引导成功启动该版本的OS X。[OS X Mountain
Lion的安装方式与OS](../Page/OS_X_Mountain_Lion.md "wikilink") X
Lion基本相同，Chameleon等引导及其他工具也随之更新。至于破解版系统，Niresh的10.8（只支持Intel）率先发布，接着更新到了10.8.2（支持AMD与Intel），10.8.5（加入UEFI支持）；\[14\]iAtkos
ML2紧接着Niresh的10.8发布。

### OS X 10.9 "Mavericks"

[OS X Mavericks的安装方式与OS](../Page/OS_X_Mavericks.md "wikilink") X
Mountain
Lion基本相同，只是原镜像内核位置改变。许多为10.9设计的新内核仍在开发中，这些内核允许AMD（[K10架构等](../Page/AMD_10h.md "wikilink")）和较旧的Intel
CPU（如[Core
Duo](../Page/Core_Duo.md "wikilink")）运行，这些CPU缺乏新指令集支持（[SSSE3等](../Page/SSSE3.md "wikilink")）。开发者通过模拟的方法让缺少新指令集的CPU支持10.9，但或多或少有一些小问题。从[推土机架构开始](../Page/AMD_Bulldozer.md "wikilink")，AMD的CPU几乎包含所有新指令集，一些为AMD开发的、带有完整[SSE4支持的内核也随之发布](../Page/SSE4.md "wikilink")。\[15\]Niresh的10.9破解版支持AMD及最新的Intel
CPU，甚至还提供[英特尔Atom的内核支持](../Page/英特爾Atom.md "wikilink")。\[16\]不过，iAtkos团队选择通过接受捐赠，为特定硬件制作10.9破解版本。

### OS X 10.10 "Yosemite"及之后版本

[缩略图](https://zh.wikipedia.org/wiki/File:Hackintosh-780x495.jpg "fig:缩略图")的Hackintosh\]\]自从[OS
X
Yosemite首个公开测试版发布](../Page/OS_X_Yosemite.md "wikilink")，开发者不断更新系统引导器。Niresh（一个独立OSx86开发者）发布了Yosemite
Zone，该软件能在非苹果电脑上自动安装新系统，并附带多种实用功能。Yosemite
Zone软件通过[BT协议下载系统镜像](../Page/BitTorrent_\(协议\).md "wikilink")，并使用MacPwn部署到闪存盘进行安装。\[17\]使用InsanelyMac的Pandora
Box与tonymacx86的UniBeast也可以安装OS X
Yosemite。需要注意的是，与之前的系统版本不同，为了保证系统的稳定性，OS
X 10.10及之后版本，需要使用未修改的OS
X安装程序进行，而非互联网上的破解版，并且尽可能少使用[kext](../Page/可載入核心模組.md "wikilink")（驱动）。

从[OS X El
Capitan开始](../Page/OS_X_El_Capitan.md "wikilink")，UniBeast（和MultiBeast）将原先的Chimera引导（基于Chameleon）替换成Clover引导。

Clover、Chameleon、UniBeast、Pandora Box和MacPwn等引导与工具均已支持到[macOS
Mojave](../Page/macOS_Mojave.md "wikilink")。\[18\]\[19\]

## 破解方式

### 内核破解

当OSx86计划刚开始时，开发者发现一些处理器不能正常启动Mac OS X
Tiger。[Rosetta是一个二进制转换器](../Page/Rosetta.md "wikilink")，能让Intel处理器执行PowerPC程序（以及当时的系统内核），需要处理器支持[SSE3指令集](../Page/SSE3.md "wikilink")。为了解决这一问题，OSx86社区的开发者发布了内核补丁，允许处理器通过[SSE2指令集模拟SSE](../Page/SSE2.md "wikilink")3的指令。2005年10月，苹果向开发者提供10.4.3更新，加入了处理器[NX位的需求](../Page/NX位元.md "wikilink")。\[20\]随后社区也发布了相关破解补丁，也提供了对AMD处理器的支持。\[21\]

在Mac OS X Leopard发布后的数小时内，OSx86社区很快跟进了内核的修改，发布了AMD/Intel
SSE2/3的内核修补程序，它能从原始的[mach_kernel文件](../Page/Mach.md "wikilink")（Mac
OS核心组件之一）移除对[高精度事件计时器](../Page/高精度事件计时器.md "wikilink")（HPET）的要求。

OS X
Mavericks内核使用了[SSSE3指令](../Page/SSSE3.md "wikilink")，开发者也发布了模拟SSSE3的破解内核。

### 引导程序与EFI

[可延伸韌體介面](../Page/統一可延伸韌體介面.md "wikilink")（EFI），现名为統一可延伸韌體介面（UEFI），是一个介于操作系统与平台固件的软件接口。因为这种方法并不需要获取与修改macOS源文件，这被认为是在非苹果电脑上安装macOS的最佳合法途径。

2007年11月早期，俄罗斯黑客团体Netkas使用了David Elliot（又称作dfe）修改过的Boot-132代码，找到了一个方法
，让修改过的[Darwin启动器模拟EFI环境](../Page/Darwin_\(操作系统\).md "wikilink")，从而进入macOS。\[22\]\[23\]\[24\]这意味着一个满足最低硬件需求的普通PC，
能被操作系统当作真正的[Mac电脑](../Page/Mac系列.md "wikilink")。由于这种方式不用对内核进行修改，系统能运行地更加透明和稳定。这个创造性方法立刻在网上流传开，DigitMemo.com详细介绍了这个成就以及它的使用方法。\[25\]

完全的EFI模拟对于OSx86社区来说是一笔极大的财富。使用这些EFI补丁，Hackintosh能从未修改的内核与内核扩展中启动。这不仅允许系统进行未来的升级，同时也增强了它的稳定性。此方法还绕过了蘋果公司最終用戶許可協議中的某些部分，因为其协议指出修改其非開源部分的操作系統代碼是禁止的。\[26\]

2008年中期，一个全新的商业产品EFi-X发布，他们宣称能够完全、简单地从Mac OS X
Leopard官方安装光盘中启动安装，并且无需额外修改与补丁。但后来，EFi-X与Rebel
EFI（同期的另一个商业产品）被证实使用了经修改的开源Boot-132引导器及OSx86社区的开源软件，而非使用真实的EFI。\[27\]\[28\]

#### Boot-132与Chameleon

Boot-132由苹果发布，是一个用于加载XNU内核的开源引导程序。\[29\]\[30\]2008年年中，出现了一个新的Boot-132修改版本
。\[31\]这种方法允许用户使用从零售店里买来的Leopard光盘，将Mac OS X
Leopard直接安装在电脑上，还能直接从Apple上下载更新，而无需使用JaS与Kalyway等破解版本。Boot-132启动器会在系统上加载一个用于启动Leopard的基本环境，引导会将一些必要的文件（如[Kext文件等](../Page/Kext.md "wikilink")）放入一个本地文件夹或者转储成一个.img镜像文件。修改后的Boot-132尽管不违反数字千年版权法，但违背了macOS的[最终用户许可协议](../Page/最终用户许可协议.md "wikilink")。\[32\]

Boot-132启动器的行为类似于[Linux内核](../Page/Linux.md "wikilink")：它使用一个与mboot兼容的启动器，在找到.img文件后会使用里面的kext（或mkext）文件引导系统，这就不用替换光盘里的文件了。然而，这只能运行在那些与系统兼容的机器上。近年来，随着破解内核发布，AMD用户也能运行零售版了。\[33\]不过这些破解内核都需要在装有Boot-132启动器的安装盘上进行烧写。

从Mac OS X Snow Leopard的早期开发者版本开始，OSx86社区的成员们使用Netkas的PC
EFI或者Voodoo团队的Chameleon（变色龙）引导程序来启动新的系统。Chameleon基于David
Elliot的Boot-132开发，支持[ACPI](../Page/高级配置与电源接口.md "wikilink")、SMBIOS、[显卡和](../Page/显示卡.md "wikilink")[以太网等注入](../Page/以太网.md "wikilink")。macOS能否在PC上运行取决于其硬件是否被macOS官方驱动或者OSx86社区支持。Chameleon有很多不同的分支版本，目前官方的最新版本为2.2。\[34\]

#### DUET及UEFI BIOS

DUET启动器由[Tianocore开发](../Page/Tianocore.md "wikilink")，它能够让不支持EFI的电脑进入模拟EFI环境。一些基于DUET的启动器（如iBOOT、XPC和Clover），能让电脑在闪存中通过模拟EFI环境来启动macOS。

自2011年起，大量使用UEFI BIOS的x86兼容机与主板进入了市场并逐渐流行。OSx86社区的一些开发者通过向UEFI
BIOS加入Ozmosis引导，只使用主板的UEFI直接引导macOS，实现类似于Mac电脑的原生功能。\[35\]Clover引导器也支持直接从主板UEFI
BIOS加载并启动系统。\[36\]

### Live DVD

在Live DVD中，您可以使用和安装macOS。2007年3月，OSx86社区制作了Mac OS X 10.4.8的[Live
DVD版本](../Page/Live_CD.md "wikilink")，并成功引导运行。2009年1月2日，InsanelyMac发布了制作Live
DVD的新方法，允许用户使用光盘或USB[闪存盘启动完整的Mac](../Page/闪存盘.md "wikilink") OS X
10.5.x系统。\[37\]新方法使用了苹果的Netboot和Imageboot功能，只需一个脚本，方便制作。值得注意的是，Live
DVD也适用于Mac电脑。

### 虚拟机

使用[虚拟机软件](../Page/虛擬機器.md "wikilink")[VMware
Workstation](../Page/VMware_Workstation.md "wikilink")、[VirtualBox可以安装及运行macOS](../Page/VirtualBox.md "wikilink")，但这种方式不受官方支持。\[38\]因此使用虚拟机运行通常需要对macOS镜像文件或虚拟机软件进行修改（如VMware需要Unlock-all补丁解锁），而且虚拟机对macOS驱动支持不佳，使用模拟的显卡会无法开启[硬件加速](../Page/硬件加速.md "wikilink")。\[39\]\[40\]

## 安装方法

目前，黑苹果的安装技术已经相对成熟许多，包括中国在内的许多国家都有很多关于黑苹果的[论坛](../Page/论坛.md "wikilink")，中国大陆比较大的如[远景论坛等的网站](../Page/远景论坛.md "wikilink")。因此安装起来相对容易很多。目前使用比较多的是用Clover引导的macOS系统的安装，只需要配置合适的config文件以及kext文件就可以得到一台自己的黑苹果系统，很多情况下需要更换macOS支持的[无线网卡](../Page/无线网卡.md "wikilink")，当然使用USB无线网卡也是非常方便的。声卡可以用仿冒声卡[驱动或者万能声卡驱动](../Page/驱动程序.md "wikilink")。对于[笔记本电脑](../Page/笔记本电脑.md "wikilink")，除了某些支持sli技术的外，目前大多数只能驱动集显而无法驱动独显，因此在笔记本上面安装性能会有些低。

## 法律问题

苹果没有将macOS授权给其他x86电脑使用。从宣布迁移到英特尔平台开始，苹果就采取了一些技术手段（被误认为是[可信平台模块](../Page/可信平台模块.md "wikilink")，事实上是苹果专门开发的SMC）\[41\]，阻止非苹果电脑运行macOS。\[42\]

蘋果公司的[最终用户许可协议](../Page/最终用户许可协议.md "wikilink")（EULA）并不允許將macOS安裝在一台沒有蘋果商標的硬體上。\[43\]2008年7月3日，蘋果向Psystar公司提起诉讼，宣稱Psystar违反了[数字千年版权法](../Page/數字千年版權法.md "wikilink")（DMCA），避开苹果保护macOS的防复制技术。具体来说，苹果指控Psystar通过“避开、绕过、移除、解扰、解密、停用、破坏苹果保护机制”等途径，获取未经授权的代码等。\[44\]

2009年11月13日，法院批准苹果的简要判决。2012年蘋果公司最终贏得了對Psystar的訴訟。\[45\]\[46\]\[47\]

2008年12月1日，[连线网站的Gadget](../Page/连线.md "wikilink") Lab板块上发布了一则在MSI
Wind笔记本电脑上安装macOS的视频教程，但随后被苹果投诉，网站将视频删除。\[48\]尽管文字说明仍存在，但放上了免责声明。\[49\]

## 參見

  - [蘋果的英特爾平台遷移](../Page/蘋果的英特爾平台遷移.md "wikilink")

  -
## 参考

## 外部連結

  - [OSx86計劃主页](http://www.osx86project.org/)
  - [InsanelyMac论坛上的OSx86社区版块](https://web.archive.org/web/20170131021340/http://www.insanelymac.com/forum/forum/85-osx86-project/)
  - [tonymacx86网站](https://www.tonymacx86.com/)

[Category:MacOS](https://zh.wikipedia.org/wiki/Category:MacOS "wikilink")

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
46. [Order Re Cross Motions for Summary
    Judgement](http://www.groklaw.net/pdf2/Psystar-214.pdf), *Apple v.
    Psystar,* No. C 08-03251 WHA

47.

48.

49.