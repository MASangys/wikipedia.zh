**AppImage**是一种在[Linux](../Page/Linux.md "wikilink")系统中用于分发[便携式软件而不需要超级用户权限来安装它们的格式](../Page/綠色軟體.md "wikilink")。\[1\] 它还试图允许Linux的上游开发者来分发他们的程序而不用考虑不同Linux发行版间的区别。  在2004年，它以**klik**的名字发布。自那时起，它就被不断地开发，并在2011年被重新命名为**PortableLinuxApps**，在2013年被重新命名为**AppImage**。

## 描述

### 目标

AppImage致力于将应用程序部署於Linux系统的目标如下：简单、兼容、无需安装、无需权限、[便携并保持基础](../Page/綠色軟體.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")不变。\[2\]

### 特性

AppImage不把Linux应用程序安装在文件系统相应的目录中。相反，它没有进行实际的安装。AppImage文件只是个压缩文件，在它运行时候挂载。

用AppImage打包的程序，一个程序就是一个文件。每一个文件都包含了该程序在其所要运行的目标平台上所需的运行库。AppImage文件是基于[ISO 9660并经过zisofs压缩的包含有一个最小化的AppDir目录和一个极小的运行环境的文件](../Page/ISO_9660.md "wikilink")。只要把这个文件添加到[live CD中](https://zh.wikipedia.org/wiki/live_CD "wikilink")，这个程序便可被轻而易举地添加进live CD中。

用AppImage文件比安装一个应用程序更加简单。它不需要解压也不需要为系统环境做调整。使用主流Linux发行版的用户可以下载它，使其可执行，并且运行即可。

## 历史

### klik

[缩略图](https://zh.wikipedia.org/wiki/File:Klik.png "fig:缩略图") *AppImage*的前身*klik*由Simon Peter在2014年设计。\[3\] 客户端软件使用[GPL许可证](../Page/GNU通用公共许可证.md "wikilink")。klik与用户的浏览器交互。用户只需在浏览器中输入以`klik://`打头的URL，便能下载一个“配方”文件，它可以用于生成.cmg文件。使用这一方式，一个“配方”文件可以用来在很广泛的平台上供应软件包。但因为Linux内核的挂载压缩文件限制，所以在使用klik时，除非使用[FUSE](../Page/FUSE.md "wikilink")，否則一次只能运行八个软件。每次运行程序时，这个文件都会被重新挂载，这意味着用户可以将.cmg文件删除来移除程序。它的下一个版本，*klik2*，正在开发中，并且可能原生地与FUSE核心模块协作，但是它从未达到测试阶段。\[4\] 在2011年前后，klik项目不再活动，并且主页在一段时间内下线了。\[5\]

### PortableLinuxApps

Simon Peter开始了一个名为*PortableLinuxApps*的后续项目。\[6\] 这项技术被例如“portablelinuxgames.org”的提供上百个开源[视频游戏的仓库所采用](https://zh.wikipedia.org/wiki/视频游戏 "wikilink")。 \[7\]

### AppImage

在2013年左右，*portableLinuxApps*被重命名为*AppImage*；许可也改为了[MIT许可证](../Page/MIT許可證.md "wikilink")。AppImage是一种格式，*AppImageKit*是一个坚实的开源工具。它的源代码被托管在GitHub仓库中。\[8\]

## 参见

  - [Autopackage](../Page/Autopackage.md "wikilink")
  - [Snappy](../Page/Snappy.md "wikilink")
  - [Flatpak](../Page/Flatpak.md "wikilink")
  - [Zero Install](https://zh.wikipedia.org/wiki/Zero_install "wikilink")
  - ROX

## 参考文献

## 外部链接

  -   - [AppImages for various applications by the AppImage developer](https://bintray.com/probono/AppImages)

  - [portablelinuxapps.org](https://web.archive.org/web/20110810070025/http://portablelinuxapps.org/) project page on [SourceForge](../Page/SourceForge.md "wikilink") (accessed August 2, 2011)

  - [klik.atekon.de](https://web.archive.org/web/20041206214533/http://klik.atekon.de/) Official klik site (archived)

      - [klik client](https://code.google.com/p/klikclient/) repository page at [Google Code](../Page/Google開發人員.md "wikilink")

[Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink") [Category:Linux软件包管理相关软件](https://zh.wikipedia.org/wiki/Category:Linux软件包管理相关软件 "wikilink") [Category:软件分发](https://zh.wikipedia.org/wiki/Category:软件分发 "wikilink")

1.
2.  [AppImage: Linux apps that run anywhere](https://www.youtube.com/watch?v=mVVP77jC8Fc) on youtube.com by Peter Simon (June 2016)
3.
4.  [Screen capture video of Klik2](https://web.archive.org/web/20110624181020/http://video.google.com/videoplay?docid=-1910211845236337938%23%23) on video.google.com (archived)
5.
6.
7.
8.