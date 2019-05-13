**Mercurial**是[跨平台的](../Page/跨平台.md "wikilink")[分布式版本控制软件](../Page/分布式版本控制.md "wikilink")，主要由[Python语言实现](../Page/Python.md "wikilink")，但也包含用[C语言实现的二进制比较工具](../Page/C语言.md "wikilink")。Mercurial一开始的主要运行平台是[Linux](../Page/Linux.md "wikilink")，现在Mercurial已经移植到[Windows](../Page/Windows.md "wikilink")、[Mac
OS
X和大多数的](../Page/Mac_OS_X.md "wikilink")[类Unix系统中](../Page/类Unix.md "wikilink")。Mercurial主要由[命令行程序组成](../Page/命令行界面.md "wikilink")，现在也有了[图形用户界面](../Page/图形用户界面.md "wikilink")。对Mercurial的所有操作都由用不同的关键字作为参数调用程序“hg”来实现，Hg是参考[水银的](../Page/水银.md "wikilink")[化学符号而取的名字](../Page/化学符号.md "wikilink")。

Mercurial的主要设计目标包括高性能、可扩展性、分散性、完全分布式合作开发、能同时高效地处理[纯文本和](../Page/文本.md "wikilink")[二进制文件](../Page/二进制文件.md "wikilink")，以及分支和合并功能，以此同时保持系统的简洁性\[1\]。Mercurial也包括一个集成的Web界面。

Mercurial的创建者和主要开发人员是Matt
Mackal。其[源代码采用](../Page/源代码.md "wikilink")[GNU通用公共许可证第二版为授权](../Page/GNU通用公共许可证.md "wikilink")，确保了Mercurial是一个[自由软件](../Page/自由软件.md "wikilink")。

## 技术细节

Mercurial采用[SHA-1散列算法来识别修订版本](../Page/SHA-1.md "wikilink")。Mercurial使用一个基于[HTTP的协议来接入网络中的版本库](../Page/HTTP.md "wikilink")，旨在减少往返的提交、连接数和数据传输。Mercurial也可以工作在[ssh环境下](../Page/ssh.md "wikilink")，其协议和基于HTTP的协议非常相似。

## 文档

Bryan
O'Sullivan已写作了一个全面的参考手册：*Mercurial：权威指南*\[2\]。该手册根据[开放出版许可协议免费提供](../Page/开放出版许可协议.md "wikilink")。

## 历史

Mackall在2005年4月19日第一次发布了Mercurial。\[3\]其动机是当月Bitmover公司宣布撤销其免费版本的[BitKeeper](../Page/BitKeeper.md "wikilink")。

2005年时BitKeeper已经被用于[Linux内核的项目版本控制](../Page/Linux内核.md "wikilink")。Mackall决定为Linux内核开发写一个分布式的版本控制软件来替代BitKeeper。在该项目启动数天前，[Linus
Torvalds基於類似的目的開始了另一個現在相當知名的版本控制軟體](../Page/Linus_Torvalds.md "wikilink")[Git](../Page/Git.md "wikilink")。\[4\]

Linux内核开发项目决定使用[Git而不是Mercurial](../Page/Git.md "wikilink")，但Mercurial也使用于在很多其他的项目中（见[下文](../Page/#采用Mercurial的项目.md "wikilink")）。

## 相关软件

  - Mercurial[图形用户界面有](../Page/图形用户界面.md "wikilink")：*Hgk*（Tcl／Tk）。该程序作为Mercurial的插件而开发，现在被直接包含于正式版本中。界面可以通过命令命令'hg
    view'来调用（如果安装了该扩展的话）。hgk最初来源于名为gitk的类似工具。hgk有一个名为[hgview](http://www.logilab.org/project/name/hgview)是纯Python编写的替代软件，同时提供GTK和QT界面。
  - 合并用的的工具包括*（h）gct(Qt)和[Meld](../Page/Meld.md "wikilink")*。
  - 转换插件可以将[CVS](../Page/協作版本系統.md "wikilink")、[GIT](../Page/GIT.md "wikilink")[Darcs](../Page/Darcs.md "wikilink")、[GIT](../Page/Git.md "wikilink")、[GNU
    Arch](../Page/GNU_Arch.md "wikilink")、[Monotone](../Page/Monotone.md "wikilink")、[Perforce](../Page/Perforce.md "wikilink")、[Bazaar和](../Page/Bazaar.md "wikilink")[Subversion的版本库转换为Mercurial的版本库](../Page/Subversion.md "wikilink")。
  - 从第6版Mercurial开始支持[Netbeans](../Page/Netbeans.md "wikilink")。
  - [TortoiseHg提供了一个面向Windows的基于右键菜单的友好界面](../Page/TortoiseHg.md "wikilink")，也用于GNOME的Nautilus文件管理器。

## 其他

### 代码托管

以下网站提供免费的Mercurial版本库托管：

  - [Bitbucket](../Page/Bitbucket.md "wikilink")
  - [Google Code](../Page/Google_Code.md "wikilink")\[5\]
  - [JavaForge](../Page/JavaForge.md "wikilink") \[6\]
  - [Project Kenai](../Page/Project_Kenai.md "wikilink") by [Sun
    Microsystems](../Page/Sun_Microsystems.md "wikilink")
  - [SourceForge](../Page/SourceForge.md "wikilink")
  - [GNU Savannah](../Page/GNU_Savannah.md "wikilink")
  - [Alioth](../Page/Alioth_\(Debian\).md "wikilink") by
    [Debian](../Page/Debian.md "wikilink")
  - [BerliOS](../Page/BerliOS.md "wikilink")
  - [在Mercurial
    wiki中列出的其他网站](https://web.archive.org/web/20090926153536/http://mercurial.selenic.com/wiki/MercurialHosting)
  - [CodePlex](http://www.codeplex.com)

### 采用Mercurial的项目

这些项目（部分）使用了Mercurial作为版本控制\[7\]

  - [Mozilla](../Page/Mozilla.md "wikilink")\[8\]
  - [OpenJDK](../Page/OpenJDK.md "wikilink")\[9\]
  - [OpenSolaris](../Page/OpenSolaris.md "wikilink")\[10\]
  - [Symbian OS](../Page/Symbian_OS.md "wikilink")\[11\]
  - The [Xen](../Page/Xen.md "wikilink") hypervisor\[12\]
  - [Adblock Plus](../Page/Adblock_Plus.md "wikilink")
  - [Adium](../Page/Adium.md "wikilink")
  - [Aldrin](../Page/Aldrin_\(Application\).md "wikilink")
  - [Audacious](../Page/Audacious_Media_Player.md "wikilink")
  - [CubicWeb](../Page/CubicWeb.md "wikilink")
  - [Dovecot](../Page/Dovecot_\(software\).md "wikilink") IMAP
    server\[13\]
  - [GNU Octave](../Page/GNU_Octave.md "wikilink")
  - [Growl](../Page/Growl_\(software\).md "wikilink")
  - [LinuxTV](../Page/LinuxTV.md "wikilink")/[Video4Linux](../Page/Video4Linux.md "wikilink")
  - [LuxRender](../Page/LuxRender.md "wikilink") 3D Render Engine
  - [MoinMoin](../Page/MoinMoin.md "wikilink") wiki software
  - [Mutt (email client)](../Page/Mutt_\(email_client\).md "wikilink")
  - [Netbeans](../Page/Netbeans.md "wikilink")<ref>

</ref>

  - [NxOS](../Page/NxOS.md "wikilink")
  - [Nuxeo](../Page/Nuxeo.md "wikilink")
  - [SAGE](../Page/SAGE_\(computer_algebra_system\).md "wikilink")
  - [x265](../Page/x265.md "wikilink")<ref>

</ref>
Python的开发人员宣布将从Subversion过渡到Mercurial。不过并没有确定转换的时间，因为过渡小组在等待hgsubversion的开发。\[14\]\[15\]

## 参见

  - [版本控制](../Page/版本控制.md "wikilink")
  - [分布式版本控制](../Page/分布式版本控制.md "wikilink")
  - [版本控制软件列表](../Page/版本控制软件列表.md "wikilink")
  - [版本控制软件的比较](../Page/版本控制软件的比较.md "wikilink")

## 参考文献

## 外部链接

  - [官方Mercurial项目wiki](https://web.archive.org/web/20091006231438/http://mercurial.selenic.com/wiki)

  - [非官方的Mercurial主页](http://hg-scm.org/)

  - [Mercurial：权威指南](http://hgbook.red-bean.com/)，Bryan O'Sullivan
    2009年通过O'Reilly出版，免费在网上发布

  - Mercurial: an alternative to git from LWN.net

  - [TeamWare用户](http://genunix.org/wiki/index.php/Mercurial_for_TeamWare_users)

  - [Google TechTalk on
    Mercurial](http://video.google.com/videoplay?docid=-7724296011317502612)

  - [Subversion还是CVS、Bazaar或者Mercurial？比较四个开源版本控制系统](http://javaworld.com/javaworld/jw-09-2007/jw-09-versioncontrol.html?page=1)

[Category:版本控制系统](https://zh.wikipedia.org/wiki/Category:版本控制系统 "wikilink")
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")
[Category:用Python編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Python編程的自由軟體 "wikilink")

1.  [Matt Mackall, Towards a Better SCM: Revlog and
    Mercurial](http://selenic.com/mercurial/wiki/index.cgi/Presentations?action=AttachFile&do=get&target=ols-mercurial-paper.pdf),
    Ottawa Linux Symposium Proceedings, 2006.
2.
3.
4.
5.
6.
7.  [一些使用Mercurial的项目](http://selenic.com/mercurial/wiki/index.cgi/ProjectsUsingMercurial)
8.
9.
10.
11.
12.
13.
14.
15. [Python PEP 385](http://www.python.org/dev/peps/pep-0385/#timeline)
    with Timeline TBD (