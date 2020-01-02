> 本文内容由[Git](https://zh.wikipedia.org/wiki/Git)转换而来。


**git**（\[1\]，）是一个[分散式版本控制软件](https://zh.wikipedia.org/wiki/分散式版本控制 "wikilink")，最初由[林纳斯·托瓦兹](../Page/林纳斯·托瓦兹.md "wikilink")創作，於2005年以[GPL釋出](https://zh.wikipedia.org/wiki/GPL "wikilink")。最初目的是为更好地管理[Linux核心开发而设计](../Page/Linux内核.md "wikilink")。应注意的是，这与GNU Interactive Tools\[2\]（一个类似[Norton Commander界面的](https://zh.wikipedia.org/wiki/Norton_Commander "wikilink")[文件管理器](../Page/软件包管理系统.md "wikilink")）不同。

git最初的开发动力来自于[BitKeeper](../Page/BitKeeper.md "wikilink")和[Monotone](https://zh.wikipedia.org/wiki/Monotone_\(軟體\) "wikilink")\[3\]\[4\]。git最初只是作为一个可以被其他前端（比如Cogito或Stgit\[5\]）包装的后端而开发的，但后来git内核已经成熟到可以独立地用作版本控制\[6\]。很多著名的软件都使用git进行版本控制\[7\]，其中包括[Linux核心](../Page/Linux内核.md "wikilink")、[X.Org服务器和](https://zh.wikipedia.org/wiki/X.Org服务器 "wikilink")[OLPC](../Page/OLPC.md "wikilink")内核等项目的开发流程\[8\]。

## 命名来源

“[git](https://zh.wikipedia.org/wiki/wikt:en:git "wikilink")”，該詞源自英國俚語，意思大約是「混帳」。[林纳斯·托瓦兹](../Page/林纳斯·托瓦兹.md "wikilink")自嘲地取了這個名字。\[9\]\[10\]

git的官方wiki也給出了多種關於這個名字的解释。\[11\]

## 歷史

自2002年開始，[林纳斯·托瓦兹](../Page/林纳斯·托瓦兹.md "wikilink")決定使用[BitKeeper](../Page/BitKeeper.md "wikilink")作為[Linux內核主要的版本控制系統用以维护程式碼](https://zh.wikipedia.org/wiki/Linux內核 "wikilink")。因為BitKeeper為[专有软件](../Page/专有软件.md "wikilink")，這個決定在社群中長期遭受質疑。在Linux社群中，特別是[理查德·斯托曼](../Page/理查德·斯托曼.md "wikilink")與[自由軟體基金會的成員](https://zh.wikipedia.org/wiki/自由軟體基金會 "wikilink")，主張應該使用開放原始碼的軟體來作為Linux核心的版本控制系統。[林纳斯·托瓦兹](../Page/林纳斯·托瓦兹.md "wikilink")曾考慮過採用現成軟體作为版本控制系統（例如[Monotone](../Page/Monotone.md "wikilink")），但這些軟體都存在一些問題，特別是效能不佳。現成的方案，如[CVS的架構](../Page/協作版本系統.md "wikilink")，受到林纳斯·托瓦兹的批評\[12\]。

2005年，[安德魯·垂鳩寫了一個簡單程式](https://zh.wikipedia.org/wiki/安德魯·垂鳩 "wikilink")，可以連接BitKeeper的儲存庫，BitKeeper著作權擁有者[拉里·麥沃伊認為安德魯](https://zh.wikipedia.org/wiki/拉里·麥沃伊 "wikilink")·垂鳩对BitKeeper內部使用的[协议进行](../Page/网络传输协议.md "wikilink")[逆向工程](../Page/逆向工程.md "wikilink")，決定收回无偿使用BitKeeper的授權。Linux內核開發團隊與BitMover公司進行磋商，但無法解決他們之間的歧見。林纳斯·托瓦兹決定自行開發版本控制系統替代BitKeeper，以十天的時間編寫出git第一個版本\[13\]\[14\]。

### 版本

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>最初发布日期</p></th>
<th><p>最新修订版本</p></th>
<th><p>最新修订版本发布日期</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>2005-07-11</p></td>
<td><p>0.99.9n</p></td>
<td><p>2005-12-15</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2005-12-21</p></td>
<td><p>1.0.13</p></td>
<td><p>2006-01-27</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2006-01-08</p></td>
<td><p>1.1.6</p></td>
<td><p>2006-01-30</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2006-02-12</p></td>
<td><p>1.2.6</p></td>
<td><p>2006-04-08</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2006-04-18</p></td>
<td><p>1.3.3</p></td>
<td><p>2006-05-16</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2006-06-10</p></td>
<td><p>1.4.4.5</p></td>
<td><p>2008-07-16</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2007-02-14</p></td>
<td><p>1.5.6.6</p></td>
<td><p>2008-12-17</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2008-08-17</p></td>
<td><p>1.6.6.3</p></td>
<td><p>2010-12-15</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2010-02-13</p></td>
<td><p>1.7.12.4</p></td>
<td><p>2012-10-17</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2012-10-21</p></td>
<td><p>1.8.5.6</p></td>
<td><p>2014-12-17</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2014-02-14</p></td>
<td><p>1.9.5</p></td>
<td><p>2014-12-17</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2014-05-28</p></td>
<td><p>2.0.5</p></td>
<td><p>2014-12-17</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2014-08-16</p></td>
<td><p>2.1.4</p></td>
<td><p>2014-12-17</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2014-11-26</p></td>
<td><p>2.2.3</p></td>
<td><p>2015-09-04</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2015-02-05</p></td>
<td><p>2.3.10</p></td>
<td><p>2015-09-29</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2015-04-30</p></td>
<td><p>2.4.12</p></td>
<td><p>2017-05-05</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2015-07-27</p></td>
<td><p>2.5.6</p></td>
<td><p>2017-05-05</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2015-09-28</p></td>
<td><p>2.6.7</p></td>
<td><p>2017-05-05</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2015-10-04</p></td>
<td><p>2.7.6</p></td>
<td><p>2017-07-30</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2016-03-28</p></td>
<td><p>2.8.6</p></td>
<td><p>2017-07-30</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2016-06-13</p></td>
<td><p>2.9.5</p></td>
<td><p>2017-07-30</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2016-09-02</p></td>
<td><p>2.10.5</p></td>
<td><p>2017-09-22</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2016-11-29</p></td>
<td><p>2.11.4</p></td>
<td><p>2017-09-22</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2017-02-24</p></td>
<td><p>2.12.5</p></td>
<td><p>2017-09-22</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2017-05-10</p></td>
<td><p>2.13.7</p></td>
<td><p>2018-05-22</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2017-08-04</p></td>
<td><p>2.14.5</p></td>
<td><p>2018-09-27</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2017-10-30</p></td>
<td><p>2.15.3</p></td>
<td><p>2018-09-27</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2018-01-17</p></td>
<td><p>2.16.5</p></td>
<td><p>2018-09-27</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2018-04-02</p></td>
<td><p>2.17.2</p></td>
<td><p>2018-09-27</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2018-06-21</p></td>
<td><p>2.18.1</p></td>
<td><p>2018-09-27</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2018-09-10</p></td>
<td><p>2.19.2</p></td>
<td><p>2018-11-21</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2018-12-09</p></td>
<td><p>2.20.1</p></td>
<td><p>2018-12-15</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2019-02-24</p></td>
<td><p>2.21.0</p></td>
<td><p>2019-02-24</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2019-06-07</p></td>
<td><p>2.22.0</p></td>
<td><p>2019-06-07</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2019-08-16</p></td>
<td><p>2.23.0</p></td>
<td><p>2019-08-16</p></td>
</tr>
<tr class="even">
<td><p><small></small></p></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 主要功能

**git**是用于Linux内核开发的版本控制工具。与[CVS](../Page/協作版本系統.md "wikilink")、[Subversion](../Page/Subversion.md "wikilink")一類的集中式版本控制工具不同，它采用了分布式版本库的作法，不需要服务器端软件，就可以運作版本控制，使得源代码的发布和交流极其方便。git的速度很快，这对于诸如Linux内核这样的大项目来说自然很重要。git最为出色的是它的合并追踪（merge tracing）能力。

实际上内核开发团队决定开始开发和使用git来作为内核开发的版本控制系统的时候，世界上开源社群的反对声音不少，最大的理由是git太艰涩难懂，从git的内部工作机制来说，的确是这样。但是随着开发的深入，git的正常使用都由一些友善的命令来执行，使git变得非常好用。现在，越来越多的著名项目采用git来管理项目开发，例如：[wine](https://zh.wikipedia.org/wiki/wine "wikilink")、[U-boot等](https://zh.wikipedia.org/wiki/U-boot "wikilink")\[15\]。

作为开源自由原教旨主义项目，git没有对版本库的浏览和修改做任何的权限限制，通过其他工具也可以达到有限的权限控制，比如：gitosis、CodeBeamer MR。原本git的使用范围只适用于Linux/Unix平台，但在Windows平台下的使用也日渐成熟，這主要归功于[Cygwin](../Page/Cygwin.md "wikilink")、[msysgit环境](https://zh.wikipedia.org/wiki/msysgit "wikilink")，以及[TortoiseGit](../Page/TortoiseGit.md "wikilink")这样易用的GUI工具。git的源代码中也已经加入了对Cygwin与[MinGW](../Page/MinGW.md "wikilink")编译环境的支援且逐漸完善，為Windows使用者帶來福音。

## 实现原理

git和其他[版本控制系统](https://zh.wikipedia.org/wiki/版本控制系统 "wikilink")（如[CVS](https://zh.wikipedia.org/wiki/协作版本系统 "wikilink")）有不小的差别，git本身关心檔案的整体性是否有改變，但多數的版本控制系统如CVS或[Subversion](../Page/Subversion.md "wikilink")系统則在乎檔案内容的差异。git拒绝保持每个文件的版本修订关系。因此查看一个文件的历史需要遍历各个history快照；git隐式处理文件更名，即同名文件默认为其前身，如果没有同名文件则在前一个版本中搜索具有类似内容的文件。

git更像一個檔案系统，直接在本機上取得資料，不必連線到主机端获取資料。 每个开发者都可有全部开发历史的本地副本，changes从这种本地repository复制给其他开发者。这些changes作为新增的开发分支被导入，可以与本地开发分支合并。

分支是非常轻量级的，一个分支仅是对一个commit的引用。

git是用C语言开发的，以追求最高的性能。git自动完成[垃圾回收](https://zh.wikipedia.org/wiki/垃圾回收_\(计算机科学\) "wikilink")，也可以用命令`git gc --prune`直接调用。

git存储每个新创建的object作为一个单独文件。为了压缩存储空间占用， packs操作把很多文件（启发式类似名字的文件往往具有类似内容）使用[差分压缩入一个文件中](https://zh.wikipedia.org/wiki/差分压缩 "wikilink")（packfile），并创建一个对应的索引文件，指明object在packfile中的偏移值。新创建的对象仍然作为单独文件存在。repacks操作非常费时间，git会在空闲时间自动做此操作。也可用命令`git gc`来直接启动repack。packfile与索引文件都用SHA-1作为[校验和并作为文件名](https://zh.wikipedia.org/wiki/校验和 "wikilink")。`git fsck`命令做校验和的完整性验证。

Git服务器典型的TCP 监听端口为9418。

## 庫目录

  - hooks：存儲鉤子的文件夾
  - logs：存儲日誌的文件夾
  - refs：存儲指向各個分支的指針（SHA-1标识）文件
  - objects：存放git對象
  - config：存放各種設置文檔
  - HEAD：指向當前所在分支的指針文件路徑，一般指向refs下的某文件

## 数据結構

[Git_operations.svg](https://zh.wikipedia.org/wiki/File:Git_operations.svg "fig:Git_operations.svg") Git有两种数据结构：可变的索引（index或stage或cache)用于缓冲工作目录信息与下一次提交的版本信息；不变的、仅追加的对象数据库。

对象数据库包含4类对象：

  - blob (二进制大对象)是使用zlib压缩算法对一个文件的内容压缩后的结果。Blobs没有保存文件名、时间戳或其他元数据。Git将其存储在位于隐藏的.git/objects文件夹中。文件的名称为使用SHA-1哈希函数对原文件内容生成的哈希值。这些对象文件称为Blob，每次将新文件添加到存储库时会创建Blob对象。
  - tree对象对应于文件目录。包含文件名列表以及文件的类型比特（包含许可权）、到blob（对应于文件）或tree对象的引用。tree对象是源树(source tree)的快照。用实现。
  - commit对象链接tree对象在一起而成为history，包含顶层源目录的tree对象名字、一个时间戳、log信息、0个或多个父commit对象的名字。用于保存特定版本的树型文件夹结构以及提交作者，电子邮件地址，日期和描述性提交消息。
  - tag对象是一个容器，包含了到另一个对象的引用，也可以增加关于另外对象的元数据。通常它保存需要追溯的特定版本数据的一个commit对象的数字签名。

以上4类的对象用其内容的SHA-1 hash值标识：hash值得前两个字符作为存放的目录名字，其余hash字符作为这个对象的文件名。

Git数据库中不变引用的对象将会被垃圾回收清除。Git命令可以创建、移动、删除引用。"git show-ref"列出所有引用。某些引用类型：

  - *heads*: 引用一个本地对象，是commit的指针。每个head可以指任意一个这样的指针。可以包含任意数量的heads。而"HEAD"（全部大写），仅仅指的是当前有效的head。默认情况下，在每个仓库下都有一个head，叫做master。
  - *remotes*: 引用远程repository中的一个对象
  - *stash*: 引用一个还没有committed的一个对象
  - *meta*: 例如一个bare repository中的一个配置, 用户权限; refs/meta/config命名空间等\[16\]
  - *tags*:

某些操作（例如，将提交推送到远程存储库，存储太多对象或手动运行Git的垃圾收集命令）可能会导致Git将对象重新打包为打包文件，在打包过程中，采用反向差异并进行压缩以消除多余的内容并减小尺寸。该过程将生成包含对象内容的.pack文件，每个文件都有一个对应的.idx索引文件，其中包含对打包对象及其在打包文件中位置的引用。当将分支推送到远程存储库或从远程存储库拉出分支时，这些打包文件将通过网络传输。提取或获取分支时，将打包文件解压缩以在对象存储库中创建松散对象。

## 移植性

在[Windows平台上有msysgit與](https://zh.wikipedia.org/wiki/Windows "wikilink")[TortoiseGit](../Page/TortoiseGit.md "wikilink")可資利用。TortoiseGit還提供有[GUI](https://zh.wikipedia.org/wiki/GUI "wikilink")。

现在git也提供windows版本下载。

[Visual Studio](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink") 自 2013 版本开始内置 Git 功能。

## GIT GUI客户端

  - [GitHub Desktop](https://desktop.github.com/):可用于第三方Git仓库网站\[17\]
  - [Git for Windows](http://msysgit.github.io/)
  - [TortoiseGit](../Page/TortoiseGit.md "wikilink")
  - [SourceTree](../Page/Atlassian.md "wikilink")
  - [GitEye](http://www.collab.net/giteyeapp)

## 使用

### 使用git的專案

有不少的專案目前都使用git:\[18\]

  - [Amarok](../Page/Amarok.md "wikilink")\[19\]
  - [Android](../Page/Android.md "wikilink")\[20\]
  - [Arch Linux](../Page/Arch_Linux.md "wikilink")
  - [Aquamacs Emacs](https://zh.wikipedia.org/wiki/Aquamacs_Emacs "wikilink")
  - [BlueZ](https://zh.wikipedia.org/wiki/BlueZ "wikilink")\[21\]
  - [Btrfs](../Page/Btrfs.md "wikilink")\[22\]
  - [Clojure](../Page/Clojure.md "wikilink")
  - [CakePHP](https://zh.wikipedia.org/wiki/CakePHP "wikilink")
  - [Debian](../Page/Debian.md "wikilink")\[23\]
  - [Digg](../Page/Digg.md "wikilink")\[24\]
  - [DragonFly BSD](../Page/DragonFly_BSD.md "wikilink")\[25\]
  - [Drupal](../Page/Drupal.md "wikilink")\[26\]
  - [Elinks](https://zh.wikipedia.org/wiki/Elinks "wikilink")\[27\]
  - [Fedora](../Page/Fedora.md "wikilink")
  - [FFmpeg](../Page/FFmpeg.md "wikilink") \[28\]
  - [Freenet](https://zh.wikipedia.org/wiki/Freenet "wikilink")
  - **git**\[29\]
  - [GIMP](../Page/GIMP.md "wikilink")
  - [GNOME](../Page/GNOME.md "wikilink")\[30\]\[31\]
  - [GPM](https://zh.wikipedia.org/wiki/GPM "wikilink")
  - [GStreamer](../Page/GStreamer.md "wikilink")\[32\]
  - [gThumb](https://zh.wikipedia.org/wiki/gThumb "wikilink")\[33\]
  - [GTK+](https://zh.wikipedia.org/wiki/GTK+ "wikilink")\[34\]
  - [Hurd](../Page/GNU_Hurd.md "wikilink")\[35\]
  - [jQuery](https://zh.wikipedia.org/wiki/jQuery "wikilink")\[36\]
  - [Laika (EHR testing framework)](https://zh.wikipedia.org/wiki/Laika_\(EHR_testing_framework\) "wikilink")\[37\]
  - [LilyPond](https://zh.wikipedia.org/wiki/LilyPond "wikilink") (music typesetting)\[38\]
  - [Linux kernel](https://zh.wikipedia.org/wiki/Linux_kernel "wikilink")
  - [Linux Mint](../Page/Linux_Mint.md "wikilink")\[39\]
  - [LMMS](../Page/LMMS.md "wikilink") Music Production Software \[40\]
  - [Maemo](../Page/Maemo.md "wikilink")\[41\]
  - [MeeGo](../Page/MeeGo.md "wikilink")\[42\]
  - [Merb](https://zh.wikipedia.org/wiki/Merb "wikilink")\[43\]
  - [MooTools](https://zh.wikipedia.org/wiki/MooTools "wikilink")\[44\]
  - [One Laptop Per Child](https://zh.wikipedia.org/wiki/One_Laptop_Per_Child "wikilink") (OLPC)\[45\]
  - [OpenFOAM](../Page/OpenFOAM.md "wikilink")
  - [openSUSE](https://zh.wikipedia.org/wiki/openSUSE "wikilink")\[46\]
  - [Perl](../Page/Perl.md "wikilink")\[47\]
  - [PHP](../Page/PHP.md "wikilink")\[48\]
  - [phpBB](https://zh.wikipedia.org/wiki/phpBB "wikilink")\[49\]
  - [PostgreSQL](../Page/PostgreSQL.md "wikilink")
  - [Prototype.js](https://zh.wikipedia.org/wiki/Prototype.js "wikilink")\[50\]
  - [Qt](https://zh.wikipedia.org/wiki/Qt_\(toolkit\) "wikilink")\[51\]
  - [Reddit](../Page/Reddit.md "wikilink")\[52\]
  - [rsync](https://zh.wikipedia.org/wiki/rsync "wikilink")
  - [Ruby on Rails](../Page/Ruby_on_Rails.md "wikilink")\[53\]
  - [Samba](../Page/Samba.md "wikilink")\[54\]
  - [SproutCore](https://zh.wikipedia.org/wiki/SproutCore "wikilink")\[55\]
  - [Sugar](https://zh.wikipedia.org/wiki/Sugar_\(desktop_environment\) "wikilink")\[56\]
  - [SWI-Prolog](https://zh.wikipedia.org/wiki/SWI-Prolog "wikilink")\[57\]
  - [VLC](https://zh.wikipedia.org/wiki/VLC_media_player "wikilink")\[58\]
  - [Wine](../Page/Wine.md "wikilink")\[59\]
  - [Xiph](https://zh.wikipedia.org/wiki/Xiph.Org_Foundation "wikilink")\[60\]
  - [X.org Server](https://zh.wikipedia.org/wiki/X.Org服务器 "wikilink")\[61\]
  - [x264](https://zh.wikipedia.org/wiki/x264 "wikilink")\[62\]
  - [YUI](https://zh.wikipedia.org/wiki/Yahoo!_UI_Library "wikilink")\[63\]

### 支持git的源码存取服务

以下是部分知名的支持git的源码存取服务：

  - [BerliOS](https://zh.wikipedia.org/wiki/BerliOS "wikilink")
  - [Beanstalk](https://zh.wikipedia.org/wiki/Beanstalk "wikilink")
  - [Bitbucket](../Page/Bitbucket.md "wikilink")
  - [CodePlex](../Page/CodePlex.md "wikilink")
  - [GitHub](../Page/GitHub.md "wikilink")
  - [gitorious](https://zh.wikipedia.org/wiki/gitorious "wikilink")
  - [GNU Savannah](https://zh.wikipedia.org/wiki/GNU_Savannah "wikilink")
  - [Google Code](https://zh.wikipedia.org/wiki/Google_Code "wikilink")
  - [JavaForge](https://zh.wikipedia.org/wiki/JavaForge "wikilink")
  - [Pikacode](https://web.archive.org/web/20120325042753/http://pikacode.com/)
  - [SourceForge](../Page/SourceForge.md "wikilink")
  - [码云 Gitee](https://gitee.com)
  - [CSDN CODE](https://web.archive.org/web/20180905021908/http://code.csdn.net/)
  - [Coding](https://coding.net/)
  - [gitlab](https://zh.wikipedia.org/wiki/gitlab "wikilink")

## 参见

  - [分布式版本控制](https://zh.wikipedia.org/wiki/分布式版本控制 "wikilink")

## 参考文献

## 外部链接

  - [git官方网站](http://git-scm.com/)
  - [git快速入门](https://web.archive.org/web/20081025105540/http://www.kernel.org/pub/software/scm/git/docs/v1.4.4.4/tutorial.html)
  - [git Man Page](http://www.kernel.org/pub/software/scm/git/docs/)
  - [git用户手册](http://www.kernel.org/pub/software/scm/git/docs/user-manual.html)
  - [git Community Book](http://book.git-scm.com/)
  - [使用git管理源代码](http://www.ibm.com/developerworks/cn/linux/l-git/)
  - [git\# (gitSharp)](http://www.eqqon.com/index.php/gitSharp)
  - [GNU Interactive Tools](https://www.gnu.org/software/gnuit/)
  - [git从入门到精通](https://web.archive.org/web/20141220234913/http://www.ihref.com/read-16369.html)P
  - [連猴子都能懂的Git入門指南](https://backlogtool.com/git-guide/tw/)

{{-}}

[Category:自由版本控制软件](https://zh.wikipedia.org/wiki/Category:自由版本控制软件 "wikilink") [Category:分布式版本控制系统](https://zh.wikipedia.org/wiki/Category:分布式版本控制系统 "wikilink") [Category:Perl软件](https://zh.wikipedia.org/wiki/Category:Perl软件 "wikilink") [Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink") [Category:2005年软件](https://zh.wikipedia.org/wiki/Category:2005年软件 "wikilink") [Category:Git](https://zh.wikipedia.org/wiki/Category:Git "wikilink")

1.
2.  [1](https://www.gnu.org/software/gnuit/)
3.   "Some historical background" on git's predecessors
4.
5.
6.
7.
8.
9.  （愚蠢或令人不爽的人，尤指男人）[2](http://dictionary.cambridge.org/dictionary/british/git)
10.
11. [gitFaq: Why the 'git' name?](http://git.or.cz/gitwiki/gitFaq#head-90fa13ebe170116f1586156e73b549cc2135b784)
12. [LinusTalk200705Transcript](https://git.wiki.kernel.org/index.php/LinusTalk200705Transcript)
13. [Linux-Kernel Archive: Kernel SCM saga](http://www.uwsg.iu.edu/hypermail/linux/kernel/0504.0/1540.html)
14.
15. [3](http://www.kernel.org/git)
16. [Gerrit Code Review – Project Configuration File Format](https://gerrit-review.googlesource.com/Documentation/config-project-config.html)
17. [Using GitHub for Windows with non-GitHub repositories](http://haacked.com/archive/2012/05/30/using-github-for-windows-with-non-github-repositories.aspx/)
18.
19. [Getting Started/Sources/Amarok git Tutorial - KDE TechBase](http://techbase.kde.org/Getting_Started/Sources/KDE_git-tutorial)
20. [Using Repo and git (Android Open Source Project)](http://source.android.com/download/using-repo)
21. [BlueZ » git access](http://www.bluez.org/development/git/)
22.
23. [git.debian.org git](http://git.debian.org)
24.  Digg About |access-date=2010-04-27 |archive-url=<https://web.archive.org/web/20100211025622/http://about.digg.com/blog/digggit-part-1> |archive-date=2010-02-11 |dead-url=yes }}
25. [TypicalgitUsage - dragonflywiki](http://wiki.dragonflybsd.org/index.cgi/TypicalgitUsage)
26. [4](http://wikipedia.org/wiki/Drupal)
27. [Download](http://elinks.or.cz/download.html)
28.
29.
30.
31. [git - GNOME Live\!](http://live.gnome.org/git)
32. [gstreamer Wiki - gitDeveloperGuidelines](http://gstreamer.freedesktop.org/wiki/gitDeveloperGuidelines)
33. [gthumb - GNOME Live\!](http://live.gnome.org/gthumb)
34. [GTK+ - Download](http://www.gtk.org/download.html)
35. [source repositories](http://www.gnu.org/software/hurd/rules/source_repositories.html)
36. [Downloading jQuery - jQuery JavaScript Library](http://docs.jquery.com/Downloading_jQuery#git)
37. [CCHIT's laika at master - gitHub](http://github.com/CCHIT/laika)
38.
39. [The Linux Mint Blog » Blog Archive » Mint to use Launchpad for translations, bugs, blueprints and github for code hosting and version control](http://www.linuxmint.com/blog/?p=970)
40. [LMMS - Linux MultiMedia Studio](http://lmms.sourceforge.net)
41. [Maemo - gitorious](http://maemo.gitorious.org/)
42. [MeeGo - gitorious](http://meego.gitorious.org/)
43. [Ruby on Rails: Merb](http://rubyonrails.org/merb/)
44. [MooTools - a compact javascript framework](http://mootools.net/)
45.
46.
47.
48.
49.
50. [Prototype JavaScript framework: Contribute](http://prototypejs.org/contribute)
51.
52.
53.
54. [Using git for Samba Development - SambaWiki](http://wiki.samba.org/index.php/Using_git_for_Samba_Development)
55. [SproutCore Documentation](http://www.sproutcore.com/documentation/hacking/)
56. [Sugar Labs project hosting](http://git.sugarlabs.org/)
57. [Accessing SWI-Prolog source](http://www.swi-prolog.org/git.html) via <a href="http://git-scm.com/">git</a>
58. [git - VideoLAN Wiki](http://wiki.videolan.org/git)
59. [gitWine - The Official Wine Wiki](http://wiki.winehq.org/gitWine)
60. [Xiph git](http://git.xiph.org/)
61. [X.Org Wiki - Development/git](http://www.x.org/wiki/Development/git)
62.
63.