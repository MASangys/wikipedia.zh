此**GNU软件包列表**列出了由[自由软件基金会](../Page/自由软件基金会.md "wikilink")作为[GNU](../Page/GNU.md "wikilink")计划的一部分而开发或维护的重要[软件包](https://zh.wikipedia.org/wiki/软件包 "wikilink")，GNU计划目的是开发完全由[自由软件](../Page/自由软件.md "wikilink")组成的[类Unix计算机](../Page/类Unix系统.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")。其中许多的软件包与[Linux内核](../Page/Linux内核.md "wikilink")一起构建了完整的计算机[操作系统](../Page/操作系统.md "wikilink")。

## GNU软件包意味着什么

2013年，理查德·斯托曼总结了应该普遍适用于GNU软件包的九个标准，\[1\]但他同时指出，有很好的理由时也可有例外及灵活性：\[2\]

1.  它应该将自己描述为一个GNU软件包
2.  它应该通过ftp.gnu.org或其他所有人都能访问的网站分发
3.  它的主页应该在GNU网站上
4.  开发人员应注意他们的软件能与其他GNU软件包协同工作
5.  文档格式应为[Texinfo](https://zh.wikipedia.org/wiki/Texinfo "wikilink")，或应能方便地转换到Texinfo
6.  扩展语言应使用[GNU Guile](../Page/GNU_Guile.md "wikilink")，但这方面明确可以有例外
7.  不应推荐任何非自由软件，也不应将用户引导到非自由文档或非自由软件
8.  使用GNU术语，如GNU/Linux操作系统，及“自由软件”（free software），而不是“开源”（open source）
9.  维护者至少应偶尔联络，以讨论软件或修复兼容性问题

## 基本系统

[GNU操作系统并没有官方的](https://zh.wikipedia.org/wiki/GNU操作系统 "wikilink")“基本系统”。GNU设计作为一个20世纪80年代Unix操作系统的替代，使用[POSIX标准为指导](https://zh.wikipedia.org/wiki/POSIX "wikilink")，但无论哪种定义都会给出一个范围更广的“基本系统”。然而，下面的GNU软件包小列表，应该比其他软件包更为“核心”。当然，包含（如[plotutils](https://zh.wikipedia.org/wiki/plotutils "wikilink")）及排除（如[C标准函数库](https://zh.wikipedia.org/wiki/C标准函数库 "wikilink")）的软件包仍有争议。

<table>
<thead>
<tr class="header">
<th><p>名称</p></th>
<th><p>描述</p></th>
<th><p>提供</p></th>
<th><p>版本 <sup><a href="https://zh.wikipedia.org/wiki/#注释" title="wikilink">1</a></sup></p></th>
<th><p>日期 <sup><a href="https://zh.wikipedia.org/wiki/#注释" title="wikilink">1</a></sup></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>| <a href="../Page/Bash.md" title="wikilink">Bash</a></p></td>
<td><p>GNU的UNIX兼容shell</p></td>
<td><p>bash</p></td>
<td></td>
<td><p>20-02-2009</p></td>
</tr>
<tr class="even">
<td><p>| <a href="../Page/GNU核心工具组.md" title="wikilink">coreutils</a></p></td>
<td><p>基本命令</p></td>
<td><p><strong>fileutils</strong>: <a href="https://zh.wikipedia.org/wiki/chgrp" title="wikilink">chgrp</a>, <a href="https://zh.wikipedia.org/wiki/chown" title="wikilink">chown</a>, <a href="https://zh.wikipedia.org/wiki/chmod" title="wikilink">chmod</a>, <a href="https://zh.wikipedia.org/wiki/cp_(Unix)" title="wikilink">cp</a>, <a href="https://zh.wikipedia.org/wiki/dd_(Unix)" title="wikilink">dd</a>, <a href="https://zh.wikipedia.org/wiki/df_(Unix)" title="wikilink">df</a>, <a href="https://zh.wikipedia.org/wiki/dir_(Unix)" title="wikilink">dir</a>, <a href="https://zh.wikipedia.org/wiki/du_(Unix)" title="wikilink">du</a>, <a href="https://zh.wikipedia.org/wiki/ln_(Unix)" title="wikilink">ln</a>, <a href="https://zh.wikipedia.org/wiki/ls" title="wikilink">ls</a>, <a href="https://zh.wikipedia.org/wiki/mkdir" title="wikilink">mkdir</a>, <a href="https://zh.wikipedia.org/wiki/mkfifo" title="wikilink">mkfifo</a>, <a href="https://zh.wikipedia.org/wiki/mknod" title="wikilink">mknod</a>, <a href="https://zh.wikipedia.org/wiki/mv" title="wikilink">mv</a>, <a href="https://zh.wikipedia.org/wiki/rm_(Unix)" title="wikilink">rm等</a><br />
<strong>textutils</strong>: <a href="https://zh.wikipedia.org/wiki/cat_(Unix)" title="wikilink">cat</a>, <a href="https://zh.wikipedia.org/wiki/cksum" title="wikilink">cksum</a>, <a href="https://zh.wikipedia.org/wiki/head_(Unix)" title="wikilink">head</a>, <a href="https://zh.wikipedia.org/wiki/Tail_(Unix)" title="wikilink">tail</a>, <a href="https://zh.wikipedia.org/wiki/md5sum" title="wikilink">md5sum</a>, <a href="https://zh.wikipedia.org/wiki/nl_(Unix)" title="wikilink">nl</a>, <a href="https://zh.wikipedia.org/wiki/od_(Unix)" title="wikilink">od</a>, <a href="https://zh.wikipedia.org/wiki/pr_(Unix)" title="wikilink">pr</a>, <a href="https://zh.wikipedia.org/wiki/tsort_(Unix)" title="wikilink">tsort</a>, <a href="https://zh.wikipedia.org/wiki/join_(Unix)" title="wikilink">join</a>, <a href="https://zh.wikipedia.org/wiki/wc_(Unix)" title="wikilink">wc</a>, <a href="https://zh.wikipedia.org/wiki/Tac_(Unix)" title="wikilink">tac</a>, <a href="https://zh.wikipedia.org/wiki/paste_(Unix)" title="wikilink">paste等</a><br />
<strong>shellutils</strong>: <a href="https://zh.wikipedia.org/wiki/basename" title="wikilink">basename</a>, <a href="https://zh.wikipedia.org/wiki/chroot" title="wikilink">chroot</a>, <a href="https://zh.wikipedia.org/wiki/date_(Unix)" title="wikilink">date</a>, <a href="https://zh.wikipedia.org/wiki/dirname" title="wikilink">dirname</a>, <a href="https://zh.wikipedia.org/wiki/echo_(命令)" title="wikilink">echo</a>, <a href="https://zh.wikipedia.org/wiki/env_(shell)" title="wikilink">env</a>, <a href="https://zh.wikipedia.org/wiki/Group_identifier_(Unix)" title="wikilink">groups</a>, <a href="https://zh.wikipedia.org/wiki/hostname" title="wikilink">hostname</a>, <a href="https://zh.wikipedia.org/wiki/nice_(Unix)" title="wikilink">nice</a>, <a href="https://zh.wikipedia.org/wiki/nohup" title="wikilink">nohup</a>, <a href="https://zh.wikipedia.org/wiki/printf" title="wikilink">printf</a>, <a href="https://zh.wikipedia.org/wiki/sleep_(Unix)" title="wikilink">sleep等</a></p></td>
<td></td>
<td><p>12-10-2011</p></td>
</tr>
<tr class="odd">
<td><p>| <a href="https://zh.wikipedia.org/wiki/cpio" title="wikilink">cpio</a></p></td>
<td><p>归档程序</p></td>
<td><p>cpio</p></td>
<td><p>2.11</p></td>
<td><p>20-12-2004</p></td>
</tr>
<tr class="even">
<td><p>| <a href="https://zh.wikipedia.org/wiki/diff" title="wikilink">diffutils</a></p></td>
<td><p>包含文件比较实用程序</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/diff" title="wikilink">diff</a>, <a href="https://zh.wikipedia.org/wiki/cmp_(Unix)" title="wikilink">cmp</a>, <a href="https://zh.wikipedia.org/wiki/diff3" title="wikilink">diff3</a>, <a href="https://zh.wikipedia.org/wiki/sdiff" title="wikilink">sdiff</a></p></td>
<td><p>3.2</p></td>
<td><p>02-09-2011</p></td>
</tr>
<tr class="odd">
<td><p>| <a href="https://zh.wikipedia.org/wiki/findutils" title="wikilink">findutils</a></p></td>
<td><p>包含搜索实用程序</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/find" title="wikilink">find</a>, <a href="https://zh.wikipedia.org/wiki/GNU_locate" title="wikilink">locate</a>, <a href="https://zh.wikipedia.org/wiki/xargs" title="wikilink">xargs</a></p></td>
<td><p>4.2.28</p></td>
<td><p>05-8-2006</p></td>
</tr>
<tr class="even">
<td><p>| <a href="https://zh.wikipedia.org/wiki/Finger协议" title="wikilink">finger</a></p></td>
<td><p>用户信息</p></td>
<td><p>n/a</p></td>
<td><p>1.37</p></td>
<td><p>28-10-1992</p></td>
</tr>
<tr class="odd">
<td><p>| <a href="https://zh.wikipedia.org/wiki/grep" title="wikilink">grep</a></p></td>
<td><p>在文件中搜索字符串</p></td>
<td><p>grep</p></td>
<td><p>2.10</p></td>
<td><p>16-11-2011</p></td>
</tr>
<tr class="even">
<td><p>| <a href="https://zh.wikipedia.org/wiki/groff_(软件)" title="wikilink">groff</a></p></td>
<td><p>文件处理系统（groff）</p></td>
<td><p>groff</p></td>
<td><p>1.22.2</p></td>
<td><p>4-9-2005</p></td>
</tr>
<tr class="odd">
<td><p>| <a href="../Page/GNU_GRUB.md" title="wikilink">GRUB</a></p></td>
<td><p>大统一引导加载程序（GRand Unified Bootloader）</p></td>
<td><p>grub</p></td>
<td><p>2.00(GRUB2)</p></td>
<td><p>14-05-2011</p></td>
</tr>
<tr class="even">
<td><p>| <a href="https://zh.wikipedia.org/wiki/gzip" title="wikilink">gzip</a></p></td>
<td><p>压缩程序（GZIP）</p></td>
<td><p>gzip</p></td>
<td></td>
<td><p>13-4-2007</p></td>
</tr>
<tr class="odd">
<td><p>| <a href="../Page/GNU_Hurd.md" title="wikilink">hurd</a> <sup><a href="https://zh.wikipedia.org/wiki/#注释" title="wikilink">2</a></sup></p></td>
<td><p>与UNIX内核功能相同的基于<a href="https://zh.wikipedia.org/wiki/微内核" title="wikilink">微内核服务组</a></p></td>
<td><p>n/a</p></td>
<td><p>0.5</p></td>
<td><p>12-6-1997</p></td>
</tr>
<tr class="even">
<td><p>| <a href="https://zh.wikipedia.org/wiki/inetutils" title="wikilink">inetutils</a></p></td>
<td><p>网络工具组</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File_Transfer_Protocol" title="wikilink">ftp</a>, <a href="https://zh.wikipedia.org/wiki/telnet" title="wikilink">telnet</a>, <a href="https://zh.wikipedia.org/wiki/Remote_shell" title="wikilink">rsh</a>, <a href="https://zh.wikipedia.org/wiki/rlogin" title="wikilink">rlogin</a>, <a href="https://zh.wikipedia.org/wiki/tftp" title="wikilink">tftp</a></p></td>
<td><p>1.9</p></td>
<td><p>31-12-2011</p></td>
</tr>
<tr class="odd">
<td><p>| <a href="https://zh.wikipedia.org/wiki/linux-libre" title="wikilink">linux-libre</a></p></td>
<td><p>a <a href="https://zh.wikipedia.org/wiki/kernel_(computing)" title="wikilink">kernel</a> that is maintained from modified versions of the <a href="https://zh.wikipedia.org/wiki/Linux_kernel" title="wikilink">Linux kernel</a> to remove any software that does not include its <a href="https://zh.wikipedia.org/wiki/source_code" title="wikilink">source code</a>, has its source code <a href="https://zh.wikipedia.org/wiki/Obfuscated_code" title="wikilink">obfuscated</a> or released under <a href="https://zh.wikipedia.org/wiki/Proprietary_software" title="wikilink">proprietary licenses</a>.</p></td>
<td><p>n/a</p></td>
<td></td>
<td><p>20.03.2013</p></td>
</tr>
<tr class="even">
<td><p>| <a href="https://zh.wikipedia.org/wiki/plotutils" title="wikilink">plotutils</a></p></td>
<td><p>useful utils for plotting to different devices</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/GNU_graph" title="wikilink">graph</a>, <a href="https://zh.wikipedia.org/wiki/libplot" title="wikilink">libplot</a>, <a href="https://zh.wikipedia.org/wiki/libplotter" title="wikilink">libplotter</a></p></td>
<td><p>2.5</p></td>
<td><p>07-05-2006</p></td>
</tr>
<tr class="odd">
<td><p>| <a href="https://zh.wikipedia.org/wiki/GNU_readline" title="wikilink">readline</a></p></td>
<td><p>命令行读取库</p></td>
<td><p>readline</p></td>
<td><p>6.2</p></td>
<td><p>09-12-2005, 16-3-2006</p></td>
</tr>
<tr class="even">
<td><p>| <a href="../Page/GNU_Screen.md" title="wikilink">screen</a></p></td>
<td><p>终端复用器</p></td>
<td><p>screen</p></td>
<td></td>
<td><p>27-1-2004</p></td>
</tr>
<tr class="odd">
<td><p>| <a href="https://zh.wikipedia.org/wiki/GNU_sysutils" title="wikilink">sysutils</a> <sup><a href="https://zh.wikipedia.org/wiki/#注释" title="wikilink">3</a></sup></p></td>
<td><p>管理用户、组、密码、shell的系统实用程序</p></td>
<td><p>add-shell, chage, chfn, chgroup, chgrpmem, chpasswd, chsh, chuser, cppw, expiry, gpasswd, grpck, gshadow, hwclock, isosize, last, lastlog, login, lsage, lsgroup, lsuser, mkgroup, mkuser, nologin, passwd, pwck, remove-shell, rmgroup, rmuser, setpwnam, vipw, wall, write</p></td>
<td><p>0.1.6[3]</p></td>
<td><p>2009</p></td>
</tr>
<tr class="even">
<td><p>| <a href="https://zh.wikipedia.org/wiki/tar" title="wikilink">tar</a></p></td>
<td><p>能够创建和处理各种存档格式的归档器</p></td>
<td><p>tar</p></td>
<td><p>1.27</p></td>
<td><p>5-3-2009</p></td>
</tr>
<tr class="odd">
<td><p>| <a href="https://zh.wikipedia.org/wiki/texinfo" title="wikilink">texinfo</a></p></td>
<td><p>产生在线及纸质手册的文档系统</p></td>
<td><p>n/a</p></td>
<td><p>5.2</p></td>
<td><p>26-9-2006</p></td>
</tr>
<tr class="even">
<td><p>| <a href="https://zh.wikipedia.org/wiki/time_(Unix)" title="wikilink">time</a></p></td>
<td><p>确定执行特定命令所消耗时间的程序</p></td>
<td><p>time</p></td>
<td><p>1.7</p></td>
<td><p>11-7-1996</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### 注释

1.  稳定版本。注意一些发行版（如[Gentoo](../Page/Gentoo_Linux.md "wikilink")）使用了一些开发版本，因为稳定版较旧。
2.  注意，因为[HURD仍在积极开发中](../Page/GNU_Hurd.md "wikilink")，因此没有稳定版本。Hurd通过版本控制系统分发。
3.  无稳定版本。当前版本为alpha，不适合在生产环境中使用。

## 开发工具

1.  [GNU构建系统](https://zh.wikipedia.org/wiki/GNU构建系统 "wikilink") –
    包含[autoconf和](https://zh.wikipedia.org/wiki/autoconf "wikilink")[automake](https://zh.wikipedia.org/wiki/automake "wikilink")
2.  [Gnulib](https://zh.wikipedia.org/wiki/Gnulib "wikilink") –
    用于GNU编译系统的可移植运行库
3.  [GNU Binutils](../Page/GNU_Binutils.md "wikilink") –
    包含GNU汇编器（as）和GNU连接器（ld）
4.  [GNU make](https://zh.wikipedia.org/wiki/Make#GNU_make "wikilink") –
    GNU make程序
5.  [GNU编译器套裝](../Page/GCC.md "wikilink")（GNU Compiler Collection） –
    多种[编程语言](../Page/编程语言.md "wikilink")的优化[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")，包括[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")，[C++](../Page/C++.md "wikilink")，[Fortran](../Page/Fortran.md "wikilink")，[Ada](../Page/Ada.md "wikilink")，[Java](../Page/Java.md "wikilink")。
6.  [Data Display
    Debugger](https://zh.wikipedia.org/wiki/Data_Display_Debugger "wikilink")
    – 几个调试器的[前端](https://zh.wikipedia.org/wiki/调试工具#前端 "wikilink")（ddd）
7.  [GNU
    Debugger](https://zh.wikipedia.org/wiki/GNU_Debugger "wikilink") –
    高级[调试器](../Page/调试工具.md "wikilink")（gdb）
8.  [GNU C
    函数库](https://zh.wikipedia.org/wiki/GNU_C_函数库 "wikilink")（glibc）–
    符合[POSIX的](https://zh.wikipedia.org/wiki/POSIX "wikilink")[C语言库](https://zh.wikipedia.org/wiki/C标准函数库 "wikilink")
9.  [GNU
    pth](https://zh.wikipedia.org/wiki/GNU_Portable_Threads "wikilink")
    –
    [POSIX兼容操作系统的软件线程](https://zh.wikipedia.org/wiki/POSIX "wikilink")。
10. [GNU Libtool](https://zh.wikipedia.org/wiki/GNU_Libtool "wikilink")
    – 支持共享库
11. [GNU
    libmicrohttpd](https://zh.wikipedia.org/wiki/GNU_libmicrohttpd "wikilink")
    – 嵌入式[HTTP服务器](https://zh.wikipedia.org/wiki/HTTP "wikilink")
12. [GNU m4](https://zh.wikipedia.org/wiki/GNU_m4 "wikilink") – 宏处理器
13. [GNU gperf](https://zh.wikipedia.org/wiki/GNU_gperf "wikilink") -
    优秀的哈希函数发生器
14. [GNU gettext](https://zh.wikipedia.org/wiki/GNU_gettext "wikilink")
    – 国际化库
15. [GNU lightning](../Page/GNU_lightning.md "wikilink") –
    生成机器语言的[即时编译器](https://zh.wikipedia.org/wiki/即时编译 "wikilink")
16. [DotGNU](../Page/DotGNU.md "wikilink") –
    Microsoft[.NET的替代](../Page/.NET框架.md "wikilink")
17. [GNU
    Classpath](https://zh.wikipedia.org/wiki/GNU_Classpath "wikilink") –
    [Java](../Page/Java.md "wikilink")库
18. [GNU bison](https://zh.wikipedia.org/wiki/GNU_bison "wikilink") –
    作为[yacc替代的](https://zh.wikipedia.org/wiki/yacc "wikilink")[语法分析器产生程序](../Page/編譯器編譯程式.md "wikilink")
19. [GNU Guile](../Page/GNU_Guile.md "wikilink") –
    嵌入式[Scheme](../Page/Scheme.md "wikilink")[解释器](https://zh.wikipedia.org/wiki/解释器 "wikilink")（[扩展语言](../Page/脚本语言.md "wikilink")）
20. [BFD](../Page/二进制文件描述库.md "wikilink") –
    对象文件[库](../Page/函式庫.md "wikilink")
21. [GNU MDK](https://zh.wikipedia.org/wiki/GNU_MIX开发工具包 "wikilink") –
    MIX编程的开发工具包
22. [GNU
    indent](https://zh.wikipedia.org/wiki/indent_\(Unix\)#GNU_indent "wikilink")
    – C及C++源码缩进程序。
23. GNU FriBidi –
    实现[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")[双向算法的库](https://zh.wikipedia.org/wiki/双向文稿 "wikilink")
24. [MIT/GNU
    Scheme](https://zh.wikipedia.org/wiki/MIT/GNU_Scheme "wikilink") –
    [麻省理工学院](../Page/麻省理工学院.md "wikilink")[Scheme](../Page/Scheme.md "wikilink")语言的解释器、编译器及库。
25. [SmartEiffel](https://zh.wikipedia.org/wiki/SmartEiffel "wikilink")
    – GNU [Eiffel](../Page/Eiffel.md "wikilink")编译器
26. [GNU
    Smalltalk](https://zh.wikipedia.org/wiki/GNU_Smalltalk "wikilink") –
    [ANSI](https://zh.wikipedia.org/wiki/美國國家標準協會 "wikilink")
    [Smalltalk](../Page/Smalltalk.md "wikilink")-98实现（解释器和类库）。
27. [CLISP](https://zh.wikipedia.org/wiki/CLISP "wikilink") –
    [ANSI](https://zh.wikipedia.org/wiki/美國國家標準協會 "wikilink") [Common
    Lisp实现](../Page/Common_Lisp.md "wikilink")（编译器、调试器和解释器）
28. [GNU Common
    Lisp](https://zh.wikipedia.org/wiki/GNU_Common_Lisp "wikilink") –
    [Common Lisp的实现](../Page/Common_Lisp.md "wikilink")
29. [Gawk](https://zh.wikipedia.org/wiki/AWK#Versions_and_implementations "wikilink")
    – GNU awk实现
30. [GNU
    Fontutils](https://zh.wikipedia.org/wiki/GNU_Fontutils "wikilink") –
    字体管理实用程序
31. [GNU cflow](../Page/GNU_cflow.md "wikilink") –
    生成[C语言的](https://zh.wikipedia.org/wiki/C语言 "wikilink")[调用图](https://zh.wikipedia.org/wiki/调用图 "wikilink")
32. GNU AutoGen – An [active
    tier-style](https://zh.wikipedia.org/wiki/Comparison_of_code_generation_tools "wikilink")
    tool for [automated code
    generation](https://zh.wikipedia.org/wiki/Automatic_programming "wikilink").
33. GNU cppi – Indent the [C
    preprocessor](https://zh.wikipedia.org/wiki/C_preprocessor "wikilink")
    directives in files to reflect their nesting
34. [GNU Pascal](https://zh.wikipedia.org/wiki/GNU_Pascal "wikilink")

## 图形桌面

1.  [GIMP](../Page/GIMP.md "wikilink") – GNU图像处理程序（GNU Image
    Manipulation
    Program）是一个位图图像编辑器，类似于[Photoshop](https://zh.wikipedia.org/wiki/Photoshop "wikilink")
2.  [GTK+](https://zh.wikipedia.org/wiki/GTK+ "wikilink") –
    GIMP工具包，包含GTK、+GDK和一套GLib库（由GIMP和GNOME使用）
3.  [GNOME](../Page/GNOME.md "wikilink") – GNU网络对象模型环境（GNU Network
    Object Model Environment），GNU的官方桌面
4.  [Dia](https://zh.wikipedia.org/wiki/dia_\(软件\) "wikilink") –
    一个创建图表的矢量图形程序
5.  [GNUstep](../Page/GNUstep.md "wikilink") – implementation of the
    [Cocoa](https://zh.wikipedia.org/wiki/Cocoa_\(API\) "wikilink")/[OpenStep](../Page/OpenStep.md "wikilink")
    libraries and development tools for graphical applications
6.  [Window Maker](../Page/Window_Maker.md "wikilink") – GNUstep环境的窗口管理器

## 应用和实用程序

1.  [GNU Bazaar](https://zh.wikipedia.org/wiki/GNU_Bazaar "wikilink") –
    分布式版本控制系统
2.  [GNU arch](../Page/GNU_arch.md "wikilink") – 分布式版本控制系统
3.  [Gnash](../Page/Gnash.md "wikilink") – [Adobe
    Flash文件格式的播放器及](../Page/Adobe_Flash.md "wikilink")[浏览器插件](https://zh.wikipedia.org/wiki/浏览器插件 "wikilink")
4.  [GNU
    Alexandria](https://zh.wikipedia.org/wiki/GNU_Alexandria "wikilink")
    – package of the GNU system that makes use of GNU Bayonne to provide
    a means to deliver access to electronic content and services for the
    blind over the public telephone network
5.  [GNU Anubis](https://zh.wikipedia.org/wiki/GNU_Anubis "wikilink") –
    位于MUA（[邮件用户代理](https://zh.wikipedia.org/wiki/电子邮件客户端 "wikilink")）和MTA（[邮件传输代理](https://zh.wikipedia.org/wiki/邮件传输代理 "wikilink")）之间的传出邮件处理器
6.  [GNU Aspell](https://zh.wikipedia.org/wiki/GNU_Aspell "wikilink") –
    拼写检查器，设计为最终取代[Ispell](https://zh.wikipedia.org/wiki/Ispell "wikilink")
7.  GNU Accounting Utils – 用户和进程统计实用程序（last, ac, accton, lastcomm, sa,
    dump-utmp, dump-acct）
8.  [GnuCash](../Page/GnuCash.md "wikilink") – GNU财务会计应用程序
9.  [GNU
    Ddrescue](https://zh.wikipedia.org/wiki/GNU_Ddrescue "wikilink") –
    GNU数据恢复工具
10. [GNU Emacs](https://zh.wikipedia.org/wiki/GNU_Emacs "wikilink") –
    GNU操作系统的Emacs编辑器
11. [GNU fcrypt](https://zh.wikipedia.org/wiki/GNU_fcrypt "wikilink") -
    实时加密
12. [GNU Health](../Page/GNU_Health.md "wikilink") – 自由的医疗和医院信息系统
13. [GNUmed](../Page/GNUmed.md "wikilink") – 医疗实践管理软件
14. [Gnumeric](../Page/Gnumeric.md "wikilink") – GNU电子表格程序
15. [GNU
    libextractor](https://zh.wikipedia.org/wiki/GNU_libextractor "wikilink")
    – 元数据提取库及工具
16. [GNU
    LilyPond](https://zh.wikipedia.org/wiki/GNU_LilyPond "wikilink") –
    音乐排版应用
17. [GNU Mailman](../Page/GNU_Mailman.md "wikilink") – GNU项目的邮件列表管理程序
18. [GNU Parted](../Page/GNU_Parted.md "wikilink") – 分区程序
19. [GNU nano](https://zh.wikipedia.org/wiki/GNU_nano "wikilink") -
    文本编辑器
20. [GNU parallel](../Page/GNU_parallel.md "wikilink") – 从标准输入并行构建和执行命令
21. [pexec](https://zh.wikipedia.org/wiki/pexec "wikilink") –
    并行执行shell命令（在单一主机上，或使用[SSH连接多个主机](https://zh.wikipedia.org/wiki/SSH "wikilink")）
22. [GNU Privacy Guard](../Page/GnuPG.md "wikilink") –
    [PGP](../Page/PGP.md "wikilink")加密替代
23. GNU [wget](https://zh.wikipedia.org/wiki/wget "wikilink") –
    高级网络和互联网文件检索工具
24. [GNUnet](https://zh.wikipedia.org/wiki/GNUnet "wikilink") –
    反审查分布式点对点通信网络
25. GNU Robots – 程序员的游戏
26. [GnuTLS](../Page/GnuTLS.md "wikilink") –
    [TLS协议替代](https://zh.wikipedia.org/wiki/安全套接层 "wikilink")
27. [GNU Typist](https://zh.wikipedia.org/wiki/GNU_Typist "wikilink") –
    通用（多国语言）输入训练软件。\[4\]
28. [Gnuzilla](https://zh.wikipedia.org/wiki/Gnuzilla "wikilink") –
    [网络包](https://zh.wikipedia.org/wiki/网络包 "wikilink")
29. GNU Ferret – Free Entity Relationship and Reverse Engineering Tool.
    SQL database designer
30. [lsh](https://zh.wikipedia.org/wiki/lsh "wikilink") –
    安全Shell（SSH）协议第2版的实现
31. [Ocrad](https://zh.wikipedia.org/wiki/Ocrad "wikilink") – GNU光学字符识别
32. GNU Stow – 软件安装管理程序
33. GNU gcal – 日历计算及打印程序。
34. [GNU Units](https://zh.wikipedia.org/wiki/GNU_Units "wikilink") –
    单位转换程序。
35. [GNU Guix](https://zh.wikipedia.org/wiki/GNU_Guix "wikilink") –
    GNU系统软件包管理及分发器。

## 科学软件

<table>
<thead>
<tr class="header">
<th><p>名称</p></th>
<th><p>描述</p></th>
<th><p>提供</p></th>
<th><p>版本 <sup><a href="https://zh.wikipedia.org/wiki/#Notes" title="wikilink">1</a></sup></p></th>
<th><p>日期 <sup><a href="https://zh.wikipedia.org/wiki/#Notes" title="wikilink">1</a></sup></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>| <a href="../Page/GNU_Octave.md" title="wikilink">GNU Octave</a></p></td>
<td><p>数值计算程序</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>| <a href="https://zh.wikipedia.org/wiki/GNU科学库" title="wikilink">GSL</a></p></td>
<td><p>GNU科学库</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>| <a href="https://zh.wikipedia.org/wiki/GUN多重精度运算库" title="wikilink">GMP</a></p></td>
<td><p><a href="../Page/高精度计算.md" title="wikilink">任意精度数值计算</a><a href="../Page/函式庫.md" title="wikilink">库</a></p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>| <a href="https://zh.wikipedia.org/wiki/PSPP" title="wikilink">PSPP</a></p></td>
<td><p>与<a href="../Page/SPSS.md" title="wikilink">SPSS</a>竞争的一个统计程序</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>| <a href="https://zh.wikipedia.org/wiki/GNU_R" title="wikilink">GNU R</a></p></td>
<td><p>统计计算及图形的编程语言和软件环境</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>| <a href="https://zh.wikipedia.org/wiki/Electric_(软件)" title="wikilink">GNU Electric</a></p></td>
<td><p>an <a href="https://zh.wikipedia.org/wiki/electronic_design_automation" title="wikilink">EDA</a> software used to draw <a href="https://zh.wikipedia.org/wiki/schematic" title="wikilink">schematics</a> and to do <a href="https://zh.wikipedia.org/wiki/integrated_circuit" title="wikilink">integrated circuit</a> layout.</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>| <a href="https://zh.wikipedia.org/wiki/GNU_Archimedes" title="wikilink">GNU Archimedes</a></p></td>
<td><p>a <a href="https://zh.wikipedia.org/wiki/Technology_CAD" title="wikilink">TCAD</a> software for <a href="https://zh.wikipedia.org/wiki/Semiconductor_device_fabrication" title="wikilink">semiconductor device</a> simulations.</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>| <a href="https://zh.wikipedia.org/wiki/XaoS" title="wikilink">GNU XaoS</a></p></td>
<td><p>分形缩放器</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 游戏

1.  [GNU
    Backgammon](https://zh.wikipedia.org/wiki/GNU_Backgammon "wikilink")
    - [双陆棋游戏](https://zh.wikipedia.org/wiki/双陆棋 "wikilink")
2.  [GNUbik](https://zh.wikipedia.org/wiki/GNUbik "wikilink") -
    [魔方](../Page/魔方.md "wikilink")的自由软件实现
3.  [GNU Chess](../Page/GNU_Chess.md "wikilink") -
    使用[glChess](https://zh.wikipedia.org/wiki/glChess "wikilink")、[Xboard或类似的国际象棋游戏引擎](https://zh.wikipedia.org/wiki/Xboard "wikilink")
4.  [GNU Go](../Page/GNU_Go.md "wikilink") -
    [围棋](../Page/围棋.md "wikilink")的实现
5.  [GNU Jump](https://zh.wikipedia.org/wiki/GNU_Jump "wikilink") -
    目标是爬上塔，在不同平台之间跳越而不掉下
6.  [GNU Kart](https://zh.wikipedia.org/wiki/GNU_Kart "wikilink") - 赛车游戏
7.  [Liquid War](../Page/Liquid_War.md "wikilink") - 对战游戏

## 其他

[Firefox.9.0.1.shikidust.gmgup.en.png](https://zh.wikipedia.org/wiki/File:Firefox.9.0.1.shikidust.gmgup.en.png "fig:Firefox.9.0.1.shikidust.gmgup.en.png")
0.2.0的网站用户页面\]\]

1.  [GNU
    Miscfiles](https://zh.wikipedia.org/wiki/GNU_Miscfiles "wikilink") –
    一些数据文件，包含机场标准、国家及语言代码
2.  [GnowSys](https://zh.wikipedia.org/wiki/GnowSys "wikilink") – a
    kernel for semantic computing (a distributed agent oriented
    knowledge base.)
3.  [Gnucap](https://zh.wikipedia.org/wiki/GNU电路分析软件包 "wikilink") –
    GNU电路分析软件包
4.  Gnu Panorama – 光线追踪的3D框架
5.  [Gnu Sovix](https://zh.wikipedia.org/wiki/Gnu_Sovix "wikilink") –
    基于PHP的网站校订系统
6.  [Gnu Maverik](https://zh.wikipedia.org/wiki/Gnu_Maverik "wikilink")
    – 虚拟现实的微内核
7.  [3DLDF](https://zh.wikipedia.org/wiki/3DLDF "wikilink") – 图形软件包
8.  [GNU
    LibreDWG](https://zh.wikipedia.org/wiki/GNU_LibreDWG "wikilink") –
    读取写入[.dwg](../Page/.dwg.md "wikilink")文件的库
9.  GNU dbm（或GDBM）
10. [GNU
    MediaGoblin](https://zh.wikipedia.org/wiki/GNU_MediaGoblin "wikilink")
    – 分布式媒体共享

## 参见

  - [GNU计划](https://zh.wikipedia.org/wiki/GNU计划 "wikilink")
  - [自由软件运动](../Page/自由软件运动.md "wikilink")
  - [高优先级的自由软件项目](https://zh.wikipedia.org/wiki/自由软件基金会#高优先计划 "wikilink")

## 参考

## 外部链接

  - [FSF/UNESCO 自由软件目录 – 所有的GNU软件包](http://www.gnu.org/directory/GNU/)

[Category:软件列表](https://zh.wikipedia.org/wiki/Category:软件列表 "wikilink")
[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink")

1.  <https://lists.gnu.org/archive/html/emacs-devel/2013-04/msg00109.html>
2.  <https://lists.gnu.org/archive/html/emacs-devel/2013-04/msg00163.html>
3.  [subversion repository NEWS file of
    sysutils](http://svn.savannah.gnu.org/viewvc/trunk/NEWS?root=sysutils&view=markup)
    retrieved 2013-07-23
4.