> 本文内容由[安全增强式Linux](https://zh.wikipedia.org/wiki/安全增强式Linux)转换而来。


**安全增強式Linux**（SELinux，Security-Enhanced Linux）是一个[Linux内核](../Page/Linux内核.md "wikilink")的[安全模组](https://zh.wikipedia.org/wiki/Linux安全模组 "wikilink")，其提供了访问控制安全策略机制，包括了[美国国防部](../Page/美国国防部.md "wikilink")风格的[强制访问控制](../Page/强制访问控制.md "wikilink")（Mandatory Access Control，MAC）。

SELinux是一系列添加到多个[Linux发行版](../Page/Linux发行版.md "wikilink")的内核修改与用户空间工具。其[软件架构](../Page/软件架构.md "wikilink")力图从安全策略中分离出执行安全决策并优化涉及执行安全策略的软件。\[1\]\[2\]奠基SELinux的核心概念可以追溯回[美国国家安全局](../Page/美国国家安全局.md "wikilink")（NSA）的一些早期项目。

## 概览

美国国家安全局的安全增强式Linux团队称：\[3\]

> 安全增強式Linux是一組給Linux核心的[修補程式](https://zh.wikipedia.org/wiki/修補程式 "wikilink")，並提供一些更強、更安全的強制存取控制架構來和核心的主要子系統共同運作。基於機密及完整性原則，它提供一個架構來強制資訊的分離，以對付入侵的威脅或任何企圖略過安全架構的應用程式。藉此限制惡意或設計不良的程式可能造成的破壞。它包含一組安全性原則組態設定檔的範本以符合一般的安全性目標

整合SELinux的Linux内核将执行限制用户程序和系统服务器访问文件与网络资源的强制访问控制策略。将权限限制到最小以减少或完全清除程序和[守护进程](../Page/守护进程.md "wikilink")在失效或出错的情况（如[缓存区溢出或错误配置](https://zh.wikipedia.org/wiki/缓存区溢出 "wikilink")）下对系统造成危害的可能性。此种限制机制独立与于传统的Linux[自主访问控制](../Page/自主访问控制.md "wikilink")（Discretionary Access Control, DAC）进行。SELinux没有[“root”用户的概念](../Page/超级用户.md "wikilink")，也没有传统Linux安全机制的缺点。（如依赖于[setuid](https://zh.wikipedia.org/wiki/setuid "wikilink")/库）

“未修改过的”Linux系统安全性（即未整合SELinux的系统）依赖于内核、授权应用与其配置的正确性。三者中任意一个发生问题都将有可能导致整个系统被破解。相反，“修改过的”系统安全性（基于SELinux内核）主要基于其内核和配置的正确性。虽然当应用程序的正确性或配置出现问题可能会导致独立的用户程序和系统守护进程发生有限破解，但是它们并不会对其他用户程序和系统守护进程或整个系统的安全性造成威胁。

纯粹来看，SELinux提供了一个从强制访问控制、[强制完整性控制](../Page/强制完整性控制.md "wikilink")、[以角色為基礎的存取控制](../Page/以角色為基礎的存取控制.md "wikilink")和提取出的概念与功能的混合体。第三方工具可以使开发者构建多种安全策略。

## 历史

早期工作主要指向在UNIX计算环境（准确而言是POSIX）下标准化强制和自主访问控制条款的方法。这归因于美国国家安全局受信UNIX（TRUSIX）工作组，他们在1987到1991年间接触并发布了一本 （\#020A），并制造了一个原初模型和最初未发布的关联评估证据原型（\#020B）。

SELinux最初设计向Linux社区展示强制访问控制的价值和这些控制加入Linux的方法。起初，组成SELinux的补丁只能通过明确添加在Linux内核源码中来工作；在2.6系列的[Linux内核](../Page/Linux内核.md "wikilink")中SELinux已被整合入。

作为最初SELinux的主要开发者，美国国家安全局于2000年12月22日基于[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")發行了第一版SELinux給了[開放原始碼開發社群](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")。\[4\]

SELinux随后被整合进了Linux内核2.6.0-test3版本的主分支，并在2003年8月8日发布。其他的显要贡献者有[紅帽公司](../Page/紅帽公司.md "wikilink")、[迈克菲](../Page/迈克菲.md "wikilink")、、特瑟思科技（Tresys Technology）和可信计算机解决方案（Trusted Computer Solutions）。/TE实现通过[FreeBSD](../Page/FreeBSD.md "wikilink")项目成功移植到了[FreeBSD](../Page/FreeBSD.md "wikilink")和[Darwin操作系统上](../Page/Darwin_\(操作系统\).md "wikilink")。

SELinux实现了。这种内核包含了以为原型的架构部件。这些提供给了强制执行多种强制访问控制策略许多通常支持，包括了基于、[以角色為基礎的存取控制](../Page/以角色為基礎的存取控制.md "wikilink")和概念的策略。FLASK基于马赫衍生的（Mach-derived）（DTOS）和来自对DTOS的设计和实现有着影响的的一个研究项目——受信马赫（Trusted Mach）。

## 用户、策略和安全上下文

SELinux用户和角色不需要与实际系统用户与角色相关。对每个正在进行的用户或进程，SELinux分配一个三字符串上下文，包含了用户名、角色和域（或者类型）。此系统比通常所需要的系统更灵活：作为规定之一，大多数真实用户享有着相同的SELinux用户名，且所有的访问控制都经由第三个标签——域来进行。在一个进程被允许进入域的情况下必须在策略中配置。命令`runcon`允许启动进程进入一个显性定义上下文（用户、角色和域）环境中，但如果政策中未允许的话那么SELinux可能会拒绝此请求。

文件、网络端口和其他硬件均有可能含有SELinux上下文，有一个名字、角色（不常使用）和类型组成。文件系统在文件和安全上下文之间的映射被称为标记（Labeling）。标记在策略文件中被定义但也可以在不更改策略的情况下手动调整。硬件类型十分详细，比如`bin_t`（显示/bin下的所有文件）或`postgresql_port_t`（PostgreSQL端口5432）。远程文件系统的SELinux上下文可以在被挂载时显性定义。

SELinux给Shell命令`ls`、`ps`等中添加了`-Z`开关使得文件或进程的安全上下文可见。

典型的政策规则包含了显性权限；用户必须拥有哪些域才能用给定目标进行特定的行为（读、执行，网络端口中则是绑定或连接）等等。也可以进行更多复杂的映射，包括在角色级和安全级进行。

一个典型的策略包含了一个映射文件（标记）文件、一个规则文件和一个定义域过渡的界面文件。这三个文件必须被同时使用SELinux工具编译来生成单一的策略文件。生成的策略文件可以被载入到内核中并工作。载入和卸载策略并不需要重启。策略文件既有可能是手打也可能是用容易使用的SELinux管理工具生成。它们通常先在允许模式（Permissive Mode）下测试，在此模式下违反策略的行为都将被记录但被允许。`audit2allow`工具可以随后使用来生成扩展SELinux策略以允许受限应用的合法活动的附加规则。

## 特性

SELinux特性包含了：

  - 在执行情况下将策略完全分离
  - 定义充分的策略界面
  - 支持问询策略并执行访问控制的应用程序（例如[Cron](../Page/Cron.md "wikilink")在正确的上下文环境中运行工作）
  - 独立于特定政策和策略语言
  - 独立于特定安全标签格式与内容
  - 对内核目标和服务的独立标记
  - 支持策略更改
  - 分离保护系统完整性（域名类）和数据保密（）的措施
  - 灵活的策略
  - 控制进程初始化与继承和程序执行
  - 控制文件系统、目录、文件和开放性[文件描述符](../Page/文件描述符.md "wikilink")
  - 控制套接字、信息和网络界面
  - 控制使用“容量”（Capabilities）
  - 在访问决定中通过*访问向量缓存*（Access Vector Cache, AVC）预缓存信息<ref>

</ref>

## 实现

SELinux通过[Red Hat Enterprise Linux第四版及其所有未来的发行版中的商业支持得以可用](../Page/Red_Hat_Enterprise_Linux.md "wikilink")。它的存在也在对应版本的[CentOS](../Page/CentOS.md "wikilink")和[Scientific Linux中呈现](../Page/Scientific_Linux.md "wikilink")。RHEL4中所支持的策略目标为最大化简易使用程度而并没有它能成为的那样有约束性。RHEL的未来版本准备将在目标策略中写入更多的目标，也就意味着有更多的限制策略。SELinux在[Android](../Page/Android.md "wikilink")4.3版本中就已得以实现。\[5\]

在自由社区所支持的GNU/Linux发行版中，[Fedora](../Page/Fedora.md "wikilink")是最早采用SELinux的，在Fedora Core 2中就已默认包含了对其的支持。其他发行版中，[Debian](../Page/Debian.md "wikilink")在Etch发行版中包含了对它的支持\[6\]，[Ubuntu](../Page/Ubuntu.md "wikilink")则在8.04版代号坚强的苍鹭（Hardy Heron）中加入。\[7\]截止[SUSE](../Page/SUSE.md "wikilink")版本11.1中，它包含了SELinux的“基础实现”。\[8\]  11将SELinux作为“技术预览”。\[9\]

SELinux在基于的系统中流向,比如[CoreOS](../Page/CoreOS.md "wikilink")和rkt。\[10\]其作为额外的安全控制来帮助隔离容器和它们的主机十分有用。

## 使用情形

SELinux可以潜在地通过详细的参数来控制允许系统每个用户的活动、进程以及守护进程。但是，它主要用于限制[守护进程](../Page/守护进程.md "wikilink")比如被更显著定义数据访问和活动权限的数据库引擎或者网页服务器。这限制了被破解的限制守护进程的潜在危害。普通的用户进程通常运行于受限域中，不被SELinux所限制但被经典Linux访问权限所限制。

命令行工具包含：\[11\] `chcon`,\[12\] `restorecon`,\[13\] `restorecond`,\[14\] `runcon`,\[15\] `secon`,\[16\] `fixfiles`,\[17\] `setfiles`,\[18\] `load_policy`,\[19\] `booleans`,\[20\] `getsebool`,\[21\] `setsebool`,\[22\] `togglesebool`\[23\] `setenforce`, `semodule`, `postfix-nochroot`, `check-selinux-installation`, `semodule_package`, `checkmodule`, `selinux-config-enforcing`,\[24\] `selinuxenabled`,\[25\] and `selinux-policy-upgrade`\[26\]

## 示例

将SELinux设置为强制模式（Enforcing Mode）：

  -
    `$ sudo setenforce 1`

查询SELinux状态：

  -
    `$ getenforce`

## 与AppArmor的对比

SELinux代表了多个可能解决限制安装软件活动的方法之一。另外一个受欢迎的替代品被称为[AppArmor](../Page/AppArmor.md "wikilink")，它在（SLES）、[OpenSUSE](../Page/OpenSUSE.md "wikilink")和[其他Linux平台中可用](../Page/Linux发行版列表.md "wikilink")。AppArmor原初是作为现不存在的平台组件之一开发的。由于AppArmor和SELinux大相径庭，它们产生了两种完全不同的软件访问限制软件。虽然SELinux重新提出了特定的概念以提供更丰富的策略选择表达集，但AppArmor通过扩展用于自主访问控制级的特定相同[自主访问控制](../Page/自主访问控制.md "wikilink")管理语言设计来简化其使用。

它们之间存在几个显著的不同：

  - 一个重要的区别是，AppArmor通过路径名而非索引节点，来识别文件系统目标。打个比方，这意味着，在AppArmor下，当创建了硬链接之后，一个不可访问的文件将得以访问。而SELinux下，即使新创建了硬链接，访问也会被阻止。
      - 结果，AppArmor可被称为不是一个[类型强制系统](https://zh.wikipedia.org/wiki/类型强制 "wikilink")，因为文件并没有被分配类型；相反，它们仅仅在配置文件中被引用。
  - SELinux和AppArmor在它们如何管理和整合系统的方面也存在着极大的不同。\[27\]
  - 由于其寻求使用强制访问控制级执行来重建传统的自主访问控制，AppArmor的一系列操作也认为比大多数SELinux实现要小得多。例如，AppArmor的一系列操作包含了：读、写、附加、执行、锁定和链接。\[28\]大多数的SELinux实现将支持一系列多于其的操作序列。比如，SELinux通常支持相同权限，但同时对于mknod包含了控制、绑定到网络包、隐性使用POSIX的能力、加载并卸载内核模块和多种访问共享内存的方法等。
  - AppArmor没有能明确限制POSIX功能的控制项。由于当前功能实现的方法不包含操作主题的概念（只有执行者和操作本身），防止执行者外的强制控制领域（即[沙箱](https://zh.wikipedia.org/wiki/沙箱 "wikilink")）授权文件操作通常由MAC层完成。AppArmor可以防止其策略被更改和文件系统被挂载/卸载，但不能防止用户踏出他们的控制域。
      - 例如，人们通常认为桌面员工更改他们所不拥有的特定文件（例如：部门文件共享）的所有权或权限是有益的。你绝对不会想给用户机器的root权限，所以你会给他们`CAP_FOWNER`或`CAP_DAC_OVERRIDE`。在SELinux下（或你的平台制造商下），你可以配置SELinux来禁止所有其他未受限用户的能力，然后新建一个给员工的受限域以在登陆后进行过渡。这种情况可以给员工修改权限的能力，但仅限于合适类型的文件。
  - AppArmor没有多层安全的概念，因此也没有硬性的或强制执行。
  - AppArmor的配置通过唯一常规平面文件完成。SELinux（在大多数实现中为默认）则使用平面文件组合（在编译前由管理员和开发者编写人类可读的策略）和扩展属性完成。
  - SELinux支持作为策略配置替代源的"远程策略服务器"概念（可在/etc/selinux/semanage.conf中配置）。AppArmor的中心化管理通常十分复杂，这是因为管理员必须决定策略部署工具以root权限运行（以允许策略更新）或在每台服务器上被手动配置。
  -
## 相似系统

孤立进程也可以通过类似[作業系統層虛擬化](../Page/作業系統層虛擬化.md "wikilink")的机制实现；比如在[OLPC](../Page/OLPC.md "wikilink")项目的首次实现中\[29\]它使用了[沙盒技术在轻量的](../Page/沙盒_\(電腦安全\).md "wikilink")环境中隔离独立的应用程序。同样[美国国家安全局](../Page/美国国家安全局.md "wikilink")也在安全增强型[Android](../Page/Android.md "wikilink")中采用了一些SELinux概念。\[30\]

## 参见

## 参考文献

## 外部链接

  -
  - NSA:

      - [Security-Enhanced Linux](https://www.nsa.gov/what-we-do/research/selinux/) at NSA

      - [Mailing list](https://www.nsa.gov/what-we-do/research/selinux/mailing-list.shtml)

      -
  -
  -
[Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink") [Category:Linux安全软件](https://zh.wikipedia.org/wiki/Category:Linux安全软件 "wikilink") [Category:美国国家安全局](https://zh.wikipedia.org/wiki/Category:美国国家安全局 "wikilink") [Category:红帽软件](https://zh.wikipedia.org/wiki/Category:红帽软件 "wikilink") [Category:Unix文件系统技术](https://zh.wikipedia.org/wiki/Category:Unix文件系统技术 "wikilink")

1.
2.
3.
4.  比较
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