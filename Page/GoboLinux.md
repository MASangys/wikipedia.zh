**GoboLinux**是一个[开源](../Page/开源.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")，其最显著的特色是重新组织的文件系统层次结构。它没有遵循以往[类UNIX](../Page/类UNIX.md "wikilink")[操作系统的](../Page/操作系统.md "wikilink")[文件系统层次结构标准](../Page/文件系统层次结构标准.md "wikilink")（FHS）。在GoboLinux下，每个软件都有自己的子目录树，其下包含它属的所有文件。因此，程序“Foo”的专属文件与库都在"
/Programs/Foo "目录下。很明显，“可执行”文件位于" /Programs/Foo
"。根据GoboLinux开发者的观点，其意义在于构建一个在文件层级上结构明晰的系统。

## 文件系统层次结构

GoboLinux的设计受一些较早操作系统的影响，如[NEXTSTEP](../Page/NEXTSTEP.md "wikilink")，[AtheOS](../Page/AtheOS.md "wikilink")
and [BeOS](../Page/BeOS.md "wikilink")，另保留原有的文件系统结构以保持对UNIX的兼容性。
GoboLinux目录树的根目录下，有6个目录：Programs, Users, System, Files, Mount and Depot.
每个目录的内容如下：

  - **/Programs/** -
    包含安装的程序。每个程序各有其文件夹，每个文件夹下包含一个或多个版本的子文件夹，亦可能有配置子文件夹。例如：/Programs/Bash/3.0/bin/bash
    与／Programs/Xorg-Server/Settings/X11/xorg.conf.

<!-- end list -->

  - **/Users/** - 包含各个用户的主目录。如账号为"harley" 的用户会有一个主目录 "/Users/harley"。

<!-- end list -->

  - **/System/** -
    包含重要的系统文件。大部分是系统应用程序（如，/System/Settings/passwd）与GoboLinux
    脚本程序（例如， /System/Links）.

<!-- end list -->

  - **/Files/** -
    包含程序使用的结构化数据，它们被程序调用但不是程序本身的组成部分。这些文件通常为单独的实体，如字体，解码器，插件。
  - **/Mount/** - 本地或远程文件系统的挂载点。常见的子目录有CD-ROM，软盘，Zip盘。
  - **/Depot/** - 用户文件存储。

## 版本

版本号使用[八进制](../Page/八进制.md "wikilink")。

  - 016－2016年12月15日。引入Runner，不需要容器的檔案系統虛擬化工具。
  - 015－2014年5月7日。
  - 014－2007年12月31日。新版的GoboLinux管理工具。
  - 013－2006年11月2日。引入Listener，文件系统事件监听工具。
  - 012－2005年6月6日。引入Manager，一个图形化系统管理工具。
  - 011－2004年6月7日。引入Compile, GoboLinux的包编译工具。
  - 010－2004年1月7日。
  - 007－2003年10月22日
  - 006－2003年5月9日。引入GoboHide

## 外部链接

  - [GoboLinux网站](http://www.gobolinux.org/)

[Category:Linux](https://zh.wikipedia.org/wiki/Category:Linux "wikilink")