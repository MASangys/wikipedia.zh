《**Linux From
Scratch**》（**LFS**）是等人编写的安装[Linux的教科书](../Page/Linux.md "wikilink")，描述了从[源代码编译Linux系统的方法](../Page/源代码.md "wikilink")。这本书可以从在Linux
From Scratch网站上免费下载到，当前最新的版本为8.3\[1\]。

为了保持LFS的基本性和专注性，另一本书《[Beyond Linux From
Scratch](https://zh.wikipedia.org/wiki/BLFS "wikilink")》（BLFS）提供了在LFS的基础上，进一步完善Linux基本系统的指引。在BLFS中，读者可以学习到如何为系统增加网络、[X桌面](https://zh.wikipedia.org/wiki/X_Window系统 "wikilink")、声音、打印机和扫描仪支持。从5.0版开始，BLFS开始与LFS的版本号保持同步。\[2\]

除了LFS和BLFS，还有描述[交叉编译的](https://zh.wikipedia.org/wiki/交叉编译 "wikilink")《[Cross
Linux from
Scratch](https://zh.wikipedia.org/wiki/CLFS "wikilink")》（CLFS）以及专注于安全的《[Hardened
Linux From
Scratch](https://zh.wikipedia.org/wiki/HLFS "wikilink")》（HLFS）。

## 步骤

尽管目标是安装一个与现有发行版毫无关系的系统，安装LFS仍然不能无中生有，而必须要有一个可以编译软件包的运行中的Linux系统。这个系统一般称为**宿主**系统。对于新机器，可以选用Linux发行版提供的光盘操作系统（LiveCD）作为宿主。LFS工程曾提供LiveCD但当前不提供。在宿主操作系统上安装LFS，需要的步骤如下：

1.  对硬盘分区，添加用于安装LFS的用户和组（LFS教科书第2章）
2.  下载所有需要的软件包源代码（LFS教科书第3章）
3.  准备开发环境（LFS教科书第4章）
4.  构造一个基本开发环境（称为工具链）（LFS教科书第5章）
5.  构造完整的目标系统（LFS教科书第6章）
6.  配置系统启动脚本（LFS教科书第7章）
7.  启动系统（LFS教科书第8章）

## 相关项目

该项目有很多相关子项目：

  - Beyond Linux From
    Scratch（BLFS）:标准LFS仅仅安装了足够让系统启动的基本软件，以及使新系统能够编译新软件包的开发工具。BLFS包括了更多的软件包，且都有相应指导。
    Crosss Linux From
    Scratch（CLFS）:为需要进行交叉编译（即在一个平台上编译另一个平台的代码）的用户提供指导，正式版本为1.0，另有两个变种

:\*CLFS Sysroot
采用Sysroot的方法来进行编译，好处是软件包的编译次数可以减少，坏处是不能支持在编译后对软件进行测试，必须要启动到目标平台上才能测试。

:\*CLFS Embedded
一般用于极小系统以及嵌入式系统。为此，它使用[uclibc而不是一般LFS使用的](https://zh.wikipedia.org/wiki/uclibc "wikilink")[glibc](https://zh.wikipedia.org/wiki/glibc "wikilink")。

:\*该项目已停止维护，其官网已无法访问

  - Automated Linux From
    Scratch（ALFS）:标准LFS只是一本书，用户需要根据书上的指引下载软件包并手动输入指令进行编译。ALFS子项目提供了把这一切自动化的脚本。
    Hardened Linux From Scratch（HLFS）:这个子项目致力于打造在安全性上无懈可击的Linux系统。
    Hints:收集一些解释性、增强性的文档，以协助用户
    LiveCD:利用LFS的方法生成可以自行启动并安装了足够软件的CD，可以用来在空机器上安装LFS，或者直接在其上运行应用，已经停止维护
    \[3\]
    Patches:由于软件之间的依赖关系，在升级软件包之后可能会导致LFS的过程出现故障。Patch项目致力于研究最新版本的软件之间的互动，并提供一些补丁修复这些故障。

除此之外，该项目另有一个名为CBLFS（Community Driven
BLFS）的项目，该项目实际是一个Wiki网站，依靠网友的自发贡献来提交各种软件包的安装方式。

## LFS 6.2 軟體列表

<div class="references-small">

<table>
<tbody>
<tr class="odd">
<td><ul>
<li><a href="../Page/Autoconf.md" title="wikilink">Autoconf</a> 2.59</li>
<li><a href="../Page/Automake.md" title="wikilink">Automake</a> 1.9.6</li>
<li><a href="../Page/Bash.md" title="wikilink">Bash</a> 3.1</li>
<li><a href="../Page/Bash.md" title="wikilink">Bash</a> Documentation 3.1</li>
<li><a href="../Page/Berkeley_DB.md" title="wikilink">Berkeley DB</a> 4.4.20</li>
<li><a href="https://zh.wikipedia.org/wiki/Binutils" title="wikilink">Binutils</a> 2.16.1</li>
<li><a href="https://zh.wikipedia.org/wiki/GNU_Bison" title="wikilink">Bison</a> 2.2</li>
<li><a href="../Page/Bzip2.md" title="wikilink">Bzip2</a> 1.0.3</li>
<li><a href="https://zh.wikipedia.org/wiki/Coreutils" title="wikilink">Coreutils</a> 5.96</li>
<li><a href="https://zh.wikipedia.org/wiki/DejaGnu" title="wikilink">DejaGNU</a> 1.4.4</li>
<li><a href="https://zh.wikipedia.org/wiki/Diff" title="wikilink">Diffutils</a> 2.8.1</li>
<li><a href="../Page/E2fsprogs.md" title="wikilink">E2fsprogs</a> 1.39</li>
<li><a href="../Page/Expect.md" title="wikilink">Expect</a> 5.43.0</li>
<li><a href="https://zh.wikipedia.org/wiki/file_(Unix)" title="wikilink">File</a> 4.17</li>
<li><a href="https://zh.wikipedia.org/wiki/Find" title="wikilink">Findutils</a> 4.2.27</li>
<li><a href="https://zh.wikipedia.org/wiki/Flex_lexical_analyser" title="wikilink">Flex</a> 2.5.33</li>
<li><a href="https://zh.wikipedia.org/wiki/Gawk" title="wikilink">Gawk</a> 3.1.5</li>
<li><a href="https://zh.wikipedia.org/wiki/GNUコンパイラコレクション" title="wikilink">GCC</a> 4.0.3</li>
<li><a href="../Page/Gettext.md" title="wikilink">Gettext</a> 0.14.5</li>
</ul></td>
<td><ul>
<li><a href="https://zh.wikipedia.org/wiki/Glibc" title="wikilink">Glibc</a> 2.3.6</li>
<li>Glibc LibIDN add-on 2.3.6</li>
<li><a href="../Page/Grep.md" title="wikilink">Grep</a> 2.5.1a</li>
<li><a href="https://zh.wikipedia.org/wiki/Groff_(software)" title="wikilink">Groff</a> 1.18.1.1</li>
<li><a href="https://zh.wikipedia.org/wiki/GRUB" title="wikilink">GRUB</a> 0.97</li>
<li><a href="../Page/Gzip.md" title="wikilink">Gzip</a> 1.3.5</li>
<li>Iana-Etc 2.10</li>
<li>Inetutils 1.4.2</li>
<li><a href="https://zh.wikipedia.org/wiki/iproute2" title="wikilink">IPRoute2</a> 2.6.16-060323</li>
<li>Kbd 1.12</li>
<li><a href="https://zh.wikipedia.org/wiki/Less" title="wikilink">Less</a> 394</li>
<li>LFS-Bootscripts 6.2</li>
<li><a href="../Page/Libtool.md" title="wikilink">Libtool</a> 1.5.22</li>
<li><a href="https://zh.wikipedia.org/wiki/Linux_kernel" title="wikilink">Linux</a> 2.6.16.27</li>
<li>Linux-Libc-Headers 2.6.12.0</li>
<li><a href="https://zh.wikipedia.org/wiki/M4" title="wikilink">M4</a> 1.4.4</li>
<li><a href="https://zh.wikipedia.org/wiki/make_(software)" title="wikilink">Make</a> 3.80</li>
<li>Man-DB 2.4.3</li>
<li><a href="https://zh.wikipedia.org/wiki/Man_pages" title="wikilink">Man-pages</a> 2.34</li>
</ul></td>
<td><ul>
<li>Mktemp 1.5</li>
<li>Module-Init-Tools 3.2.2</li>
<li><a href="../Page/Ncurses.md" title="wikilink">Ncurses</a> 5.5</li>
<li><a href="https://zh.wikipedia.org/wiki/Patch" title="wikilink">Patch</a> 2.5.4</li>
<li><a href="../Page/Perl.md" title="wikilink">Perl</a> 5.8.8</li>
<li>Procps 3.2.6</li>
<li>Psmisc 22.2</li>
<li><a href="https://zh.wikipedia.org/wiki/Readline" title="wikilink">Readline</a> 5.1</li>
<li><a href="../Page/Sed.md" title="wikilink">Sed</a> 4.1.5</li>
<li><a href="https://zh.wikipedia.org/wiki/Shadow" title="wikilink">Shadow</a> 4.0.15</li>
<li>Sysklogd 1.4.1</li>
<li><a href="https://zh.wikipedia.org/wiki/Sysvinit" title="wikilink">Sysvinit</a> 2.86</li>
<li><a href="https://zh.wikipedia.org/wiki/tar" title="wikilink">tar</a> 1.15.1</li>
<li><a href="../Page/Tcl.md" title="wikilink">Tcl</a> 8.4.13</li>
<li><a href="https://zh.wikipedia.org/wiki/Texinfo" title="wikilink">Texinfo</a> 4.8</li>
<li><a href="../Page/Udev.md" title="wikilink">Udev</a> 096</li>
<li><a href="../Page/Udev.md" title="wikilink">Udev</a> Configuration Tarball</li>
<li><a href="../Page/Util-linux.md" title="wikilink">Util-linux</a> 2.12r</li>
<li><a href="../Page/Vim.md" title="wikilink">Vim</a> 7.0</li>
<li><a href="../Page/Vim.md" title="wikilink">Vim</a> 7.0 <a href="https://zh.wikipedia.org/wiki/language" title="wikilink">language</a> files (optional)</li>
<li><a href="../Page/Zlib.md" title="wikilink">Zlib</a> 1.2.3</li>
</ul></td>
</tr>
</tbody>
</table>

</div>

## 参考文献

## 外部链接

  - [LFS官方网站](http://www.linuxfromscratch.org/)

  - [LinuxSir
    LFS论坛，链接已失效](https://web.archive.org/web/20080405084307/http://linuxsir.org/bbs/forum58.html)

  - [LFS中文版6.1文档](https://web.archive.org/web/20110709131945/http://oss.org.cn/man/linux/lfs/LFS-6.1.1/)

  - [LFS中文版6.2文档](https://web.archive.org/web/20080408191537/http://lamp.linux.gov.cn/Linux/LFS-6.2/index.html)

  - [LFS中文版6.6文档](http://www.ha97.com/book/lfs-book-6.6/)

  - [LFSCN简体中文文档，与原工程同步，未完成](https://github.com/downloads/davidgao/LFSCN/LFS-BOOK.html)

[Category:自由軟體](https://zh.wikipedia.org/wiki/Category:自由軟體 "wikilink")
[Category:Linux](https://zh.wikipedia.org/wiki/Category:Linux "wikilink")

1.
2.  Gerard Beekmans: Beyond Linux From Scratch, Version 6.3 (August
    2008)
3.  。