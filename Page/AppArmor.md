**AppArmor** （“Application Armor”，意为“应用甲”） 是一个[Linux内核](../Page/Linux内核.md "wikilink")[安全模块](../Page/Linux安全模組.md "wikilink")，允许[系统管理员](../Page/系统管理员.md "wikilink")通过每个程序的配置文件限制程序的功能。如它的帮助页面所说，“AppArmor 是一个对内核的增强工具，将程序限制在一个有限的资源集合中。AppArmor 独特的安全模型将对访问属性的控制绑定到程序而非用户。”\[1\]

AppArmor 通过提供[强制访问控制](../Page/强制访问控制.md "wikilink")（MAC）来补充传统的Unix[自主访问控制](../Page/自主访问控制.md "wikilink")（DAC）模型。 从Linux内核的2.6.36版本开始，它已经被包含在主流分支中，并且自2009年它的开发得到了 [Canonical 公司的支持](../Page/Canonical.md "wikilink")。\[2\]\[3\]

## 功能特性\[4\]

AppArmor 对相关程序的约束与控制通过 apparmor_parser 加载到内核的配置文件来提供，这一般通过 /etc/init.d/apparmor 中的 SysV initscript ，如：

``` text numberLines
# /etc/init.d/apparmor start
# /etc/init.d/apparmor stop
# /etc/init.d/apparmor restart
```

AppArmor可以以两种模式运行：执行（enforcement）模式或学习（complain/learning）模式：

  - 执行模式 - 加载的配置文件中定义的策略将会被执行，并且会向 syslogd 报告违规尝试。
  - 学习 - 以“学习”模式加载的配置文件不会执行策略。 它仅仅会报告违反策略的尝试。这种模式对于开发配置文件很方便。利用这种模式可以根据各个程序针对性地生成配置文件。

AppArmor 是使用[Linux安全模块](../Page/Linux安全模組.md "wikilink")（LSM）内核接口实现的。\[5\] 在2009年，Linux 2.6.30 中包含了一个名为  的新解决方案\[6\]；像 AppArmor 一样，它也使用基于路径的访问控制。

## 同 SELinux 的异同

AppArmor 是作为 [SELinux](../Page/安全增强式Linux.md "wikilink") 的替代品出现的，因为对 SELinux 的批评者认为它难以让管理员设置和维护。\[7\]与基于将标签应用于文件的 SELinux 不同，AppArmor 使用文件路径来确认文件。 AppArmor 的支持者声称，它对普通用户而言要比 SELinux 更简单、更易学习。\[8\]\[9\] 他们还认为 AppArmor 对现有系统的要求更低：例如 SELinux 需要支持“安全标签”的[文件系统](../Page/文件系统.md "wikilink")\[10\]，因此无法为通过 [NFS](https://zh.wikipedia.org/wiki/NFS "wikilink") 挂载的文件提供访问控制。 AppArmor 则对文件系统没有要求。

但不论如何，这两个软件产品对让管理员加强系统的安全性都非常有帮助。他们都专注于访问控制，强化了标准的Linux访问控制策略。他们都生成日志，并提供审计活动的工具。他们都在应用程序层内工作。从技术上讲，他们同样地使用LSM与Linux内核进行交互。它们允许管理员使用GUI与非GUI工具。最后，它们都允许管理员在没有真正阻止访问的情况下尝试策略（而只是警告），以便仅在足够数量的测试之后才应用安全加固策略。\[11\]

SELinux 和 AppArmor 的不同主要体现在管理方式和集成方式上。例如一个重要的区别： SELinux 通过 [inode](https://zh.wikipedia.org/wiki/inode "wikilink") 编号而不是路径标识文件系统对象。\[12\]这意味着如果给一个无法访问的文件创建了，在 AppArmor 中它将可以访问，但 SELinux 通过新创建的硬链接仍然会拒绝访问——由 inode 引用的基础数据是一样的。另外，在文档数量上 AppArmor 要比 SELinux 略逊一筹，这意味着网上寻找解决方案的难易程度同样有所差异。\[13\]

## 历史

AppArmor 在1998\~2003年首先在  Linux中被使用。当时，AppArmor被称为SubDomain，\[14\]\[15\]这个名字意在将特定程序的安全配置文件分割成不同的域，而程序可以动态地在不同的域中进行切换。 AppArmor 首先在 SLES 和 [openSUSE](https://zh.wikipedia.org/wiki/openSUSE "wikilink") 中可用，并且在  10 和 openSUSE 10.1 中默认首先启用。

2005年5月，Novell 收购了 Immunix 并将 SubDomain 重新命名为 AppArmor，并开始对其 Linux 内核进行代码清理和重写。\[16\]从2005年到2007年9月，AppArmor 由 Novell 维护。从那时起，SUSE 就是商标名 AppArmor 的合法所有者。\[17\]

AppArmor 在2007年4月第一次成功移植并打包于 [Ubuntu](../Page/Ubuntu.md "wikilink")。它成为Ubuntu 7.10版本的默认软件包，并最终作为Ubuntu 8.04发行版的一部分，默认设置只保护 [CUPS](../Page/CUPS.md "wikilink")。从 Ubuntu 9.04 开始，更多的项目（如MySQL）已经安装了配置文件。在 Ubuntu 9.10 中，AppArmor 的功能不断得到改进，因为它提供了客户会话、[libvirt](https://zh.wikipedia.org/wiki/libvirt "wikilink") 虚拟机、[Evince](../Page/Evince.md "wikilink")文档查看器的配置文件。它还提供了一个可选的 [Firefox](../Page/Firefox.md "wikilink") 的配置文件。\[18\]

AppArmor 第一次被整合到 Linux 内核中是在2010年10月的2.6.36版本。\[19\]\[20\]\[21\]\[22\]

2014年，AppArmor 已经整合到了 Synology 的 DSM 5.1 Beta中。\[23\]

## 参见

  - [LIDS](https://zh.wikipedia.org/wiki/LIDS "wikilink")

  -
  -
## 参考文献

## 外部链接

  - [AppArmor Wiki （存档）](https://web.archive.org/web/20170702204500/http://wiki.apparmor.net/index.php/Main_Page)
  - [AppArmor](http://en.opensuse.org/SDB:AppArmor) openSUSE 百科中的一些评论
  - [LKML thread](https://lkml.org/lkml/2006/4/19/199) 包含一些对 AppArmor 的评论和评价
  - [Ubuntu 百科中相关条目](https://wiki.ubuntu.com/AppArmor)
  - [Arch Linux 百科中相关条目](https://wiki.archlinux.org/index.php/AppArmor)
  - [Counterpoint:](http://www.linux-magazine.com/issues/2006/69/counterpoint) 原标题：Novell and Red Hat security experts face off on AppArmor and SELinux
  - [AppArmor Application Security for Linux](http://www.novell.com/linux/security/apparmor/)

[Category:電腦安全](https://zh.wikipedia.org/wiki/Category:電腦安全 "wikilink") [Category:Linux](https://zh.wikipedia.org/wiki/Category:Linux "wikilink") [Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink")

1.  Apparmor(7) man page.

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