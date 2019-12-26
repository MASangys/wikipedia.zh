**用户ID**（，一般缩写为**User ID**或**UID**），全称**用户标识符**，在[类UNIX系统中是](https://zh.wikipedia.org/wiki/类UNIX系统 "wikilink")[内核](../Page/内核.md "wikilink")用来辨识用户的一个无符号[整型数值](https://zh.wikipedia.org/wiki/整型 "wikilink")，亦是[UNIX](../Page/UNIX.md "wikilink")[文件系统](../Page/文件系统.md "wikilink")与[进程的必要组成部分之一](https://zh.wikipedia.org/wiki/进程 "wikilink")。

## 数值范围

在不同的系统中，UID的值的范围也有所不同，但一般来说UID都是由一个15位的整数表示，其范围在0～32767之内，且有如下限制：

  - [超级用户](../Page/超级用户.md "wikilink")的UID总为0；

<!-- end list -->

  - 按传统的做法，“”（类UNIX系统的一种特殊账户）与超级用户相反，总占有数值最大的PID，即32767；相对应的，现今的系统为nobody分配的UID则在系统保留范围（1～100）或是65530-65535的范围内\[1\]。

<!-- end list -->

  - 数值于1～100内的UID约定预留给系统使用，有些手册则推荐在此基础上再预留101～499（如[RHEL](https://zh.wikipedia.org/wiki/RHEL "wikilink")\[2\]）甚至是101～999（如[Debian](../Page/Debian.md "wikilink")\[3\]）的UID以作备用；而相对应的，在Linux中用useradd命令创建第一个用户时,默认为之分配的UID则为1000。

除此之外,有些特殊的系统也支持16位的UID,因而UID的数目可以扩展到65536个；现代系统支持32位的UID，这也使UID数目进一步扩充到4,294,967,296个成为可能。

## 分类

### 有效用户ID

**有效用户ID**（*Effective UID*，即EUID）与**有效用户组ID**（*Effective Group ID*，即EGID）在创建与访问[文件的时候发挥作用](https://zh.wikipedia.org/wiki/文件 "wikilink")；具体来说，创建文件时，系统内核将根据创建文件的进程的EUID与EGID设定文件的所有者/组属性，而在访问文件时，内核亦根据访问进程的EUID与EGID决定其能否访问文件。

### 真实用户ID

**真实用户ID**（*Real UID*,即RUID）与**真实用户组ID**（*Real GID*，即RGID）用于辨识进程的真正所有者，且会影响到进程发送[信号的权限](https://zh.wikipedia.org/wiki/信号_\(计算机科学\) "wikilink")。没有超级用户权限的进程仅在其RUID与目标进程的RUID相匹配时才能向目标进程发送信号，例如在父子进程间，[子进程](../Page/子进程.md "wikilink")从[父进程](../Page/父进程.md "wikilink")处继承了认证信息，使得父子进程间可以互相发送信号。

### 暂存用户ID

**暂存用户ID**（*Saved UID*，即**SUID**）于以提升权限运行的进程暂时需要做一些不需的操作时使用，这种情况下进程会暂时将自己的有效用户ID从特权用户（常为[root](../Page/超级用户.md "wikilink")）对应的UID变为某个非特权用户对应的UID，而后将原有的特权用户UID复制为SUID暂存；之后当进程完成不需特权的操作后，进程使用SUID的值重置EUID以重新获得特权。在这里需要说明的是，无特权进程的EUID值只能设为与RUID、SUID与EUID（也即不改变）之一相同的值。

### 文件系统用户ID

**文件系统用户ID**（*File System UID*，即**FSUID**）在[Linux](../Page/Linux.md "wikilink")中使用，且只用于对文件系统的[访问权限控制](https://zh.wikipedia.org/wiki/文件系统权限 "wikilink")，在没有明确设定的情况下与EUID相同（若FSUID为root的UID，则SUID、RUID与EUID必至少有一亦为root的UID），且EUID改变也会影响到FSUID。设立FSUID是为了允许程序（如[NFS服务器](https://zh.wikipedia.org/wiki/NFS "wikilink")）在不需获取向给定UID账户发送信号的情况下以给定UID的权限来限定自己的文件系统权限。

## 杂项

  - UID的数值与用户账户的对应关系存放于[/etc/passwd中](https://zh.wikipedia.org/wiki/Shadow_\(文件系统\) "wikilink")\[4\]。用于存放密码的/etc/shadow以及[网络信息服务也以UID的数值标识用户](https://zh.wikipedia.org/wiki/NIS "wikilink")，但现在Linux系统下的shadow文件已经改用账户名来标识用户。

<!-- end list -->

  - 在遵循POSIX的环境中，**id**这一命令可以给出当前用户的用户名、所属组及对应的UID、GID的值\[5\]。

## 参考文献

### 引用

### 来源

  - 《[UNIX环境高级编程](https://zh.wikipedia.org/wiki/UNIX环境高级编程 "wikilink")》, 理查德·史蒂文斯 著

## 外部链接

## 参见

  - [文件系统权限](https://zh.wikipedia.org/wiki/文件系统权限 "wikilink")

[Category:计算机科学](https://zh.wikipedia.org/wiki/Category:计算机科学 "wikilink") [Category:操作系统](https://zh.wikipedia.org/wiki/Category:操作系统 "wikilink")

1.
2.
3.
4.
5.