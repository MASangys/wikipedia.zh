> 本文内容由[Inode](https://zh.wikipedia.org/wiki/Inode)转换而来。


**inode(index node)**是指在许多“类[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")[文件系统](../Page/文件系统.md "wikilink")”中的一种[数据结构](../Page/数据结构.md "wikilink")，用于描述 **[文件系统](../Page/文件系统.md "wikilink")对象（包括[文件](https://zh.wikipedia.org/wiki/计算机文件 "wikilink")、[目录](../Page/目录_\(文件系统\).md "wikilink")、[设备文件](https://zh.wikipedia.org/wiki/设备文件 "wikilink")、[socket](https://zh.wikipedia.org/wiki/Unix域套接字 "wikilink")、[管道](../Page/管道_\(Unix\).md "wikilink"), 等等）**。每个inode保存了 **[文件系统](../Page/文件系统.md "wikilink")对象数据** 的属性和磁盘块位置\[1\]。**[文件系统](../Page/文件系统.md "wikilink")对象属性** 包含了各种[元数据](../Page/元数据.md "wikilink")（如：最后修改时间\[2\]） ，也包含用户组（owner ）和权限数据\[3\]。

文件夹是inode的名字。一个文件夹包含自身节点，父节点和每个子节点。

## 命名

Unix先驱[丹尼斯·里奇](../Page/丹尼斯·里奇.md "wikilink")说\[4\]，inode这个命名的来源可能是文件系统的存储组织为一个扁平数组，分层目录資訊使用一个数作为文件系统这个扁平数组的索引值（index）。

## 细节

文件系统创建（格式化）时，就把存储区域分为两大连续的存储区域。一个用来保存文件系统对象的元信息数据，这是由inode组成的表，每个inode默认是256字节或者128字节。另一个用来保存“文件系统对象”的内容数据，划分为512字节的扇区，以及由8个扇区组成的4K字节的块。块是读写时的基本单位。一个文件系统的inode的总数是固定的。这限制了该文件系统所能存储的文件系统对象的总数目。典型的实现下，所有inode占用了文件系统1%左右的存储容量。

文件系统中每个“文件系统对象”对应一个“inode”数据，并用一个整数值来辨识。这个整数常被称为**inode号码**（“i-number”或“inode number”）。由于文件系统的inode表的存储位置、总条目数量都是固定的，因此可以用inode号码去索引查找inode表。

Inode存储了文件系统对象的一些元信息，如所有者、访问权限（读、写、执行）、类型（是文件还是目录）、内容修改时间、inode修改时间、上次访问时间、对应的文件系统存储块的地址，等等。知道了1个文件的inode号码，就可以在inode元数据中查出文件内容数据的存储地址。

文件名与目录名是“文件系统对象”便于使用的别名。一个文件系统对象可以有多个别名，但只能有一个inode，并用这个inode来索引文件系统对象的存储位置。

  - inode不包含文件名或目录名的字符串，只包含文件或目录的“元信息”。
  - Unix的文件系统的目录也是一种文件。打开目录，实际上就是读取“目录文件”。目录文件的结构是一系列**目录项**（dirent）的列表。每个目录项，由两部分组成：所包含文件或目录的名字，以及该文件或目录名对应的inode号码。
  - 文件系统中的一个文件是指存放在其所属目录的“目录文件”中的一个目录项，其所对应的inode的类别为“文件”；文件系统中的一个目录是指存放在其“父目录文件”中的一个目录项，其所对应的inode的类别为“目录”。可见，多个“文件”可以对应同一个inode;多个“目录”可以对应同一个inode。
  - 文件系统中如果两个文件或者两个目录具有相同的inode号码，那么就称它们是“硬链接”关系。实际上都是这个inode的别名。换句话说，一个inode对应的所有文件（或目录）中的每一个，都对应着文件系统某个“目录文件”中唯一的一个目录项。
  - 创建一个目录时，实际做了3件事：在其“父目录文件”中增加一个条目；分配一个inode；再分配一个存储块，用来保存当前被创建目录包含的文件与子目录。被创建的“目录文件”中自动生成两个子目录的条目，名称分别是：“.”和“..”。前者与该目录具有相同的inode号码，因此是该目录的一个“硬链接”。后者的inode号码就是该目录的父目录的inode号码。所以，任何一个目录的"硬链接"总数，总是等于它的子目录总数（含隐藏目录）加2。即每个“子目录文件”中的“..”条目，加上它自身的“目录文件”中的“.”条目，再加上“父目录文件”中的对应该目录的条目。
  - 通过文件名打开文件，实际上是分成三步实现：首先，操作系统找到这个文件名对应的inode号码；其次，通过inode号码，获取inode信息；最后，根据inode信息，找到文件数据所在的block，读出数据。

[Linux](../Page/Linux.md "wikilink")系统使用`struct inode`作为数据结构名称。[BSD](../Page/BSD.md "wikilink")派生的系统，使用`vnode`名称，其中**v**表示“virtual file system”。

## POSIX inode

[POSIX标准强制规范了文件系统的行为](https://zh.wikipedia.org/wiki/POSIX "wikilink")。每个“文件系统对象”必须具有：

  - 以[字节](../Page/字节.md "wikilink")为单位表示的文件大小。
  - 设备ID，标识容纳该文件的设备。
  - 文件所有者的User ID。
  - 文件的Group ID
  - 文件的模式（mode），确定了文件的类型，以及它的所有者、它的group、其它用户访问此文件的权限。
  - 额外的系统与用户标志（flag），用来保护该文件。
  - 3个[时间戳](https://zh.wikipedia.org/wiki/时间戳 "wikilink")，记录了inode自身被修改（`ctime`, *inode change time*）、文件内容被修改（`mtime`, *modification time*）、最后一次访问（`atime`, *access time*）的时间。
  - 1个链接数，表示有多少个[硬链接指向此inode](https://zh.wikipedia.org/wiki/硬链接 "wikilink")。
  - 到[文件系统](../Page/文件系统.md "wikilink")存储位置的指针。通常是1K字节或者2K字节的存储容量为基本单位。

使用[`stat`](https://zh.wikipedia.org/wiki/stat_\(Unix\) "wikilink")系统调用可以查询一个文件的inode号码及一些元信息。

## 推论

  - 一个文件系统对象可以有多个名字，这些具有硬链接关系的文件系统对象名字具有相同的inode号码，彼此是平等的。即首个被创建的文件并没有特殊的地位。这与[符号链接](../Page/符号链接.md "wikilink")不同。一个符号链接文件有自己的inode，符号链接文件的内容是它所指向的文件的名字。因此删除符号链接所指向的文件，将导致这个符号链接文件在访问时报错。
  - 删除一个文件或目录，实际上是把它的inode的链接数减1。这并不影响指向此inode的别的硬链接。
  - 一个inode如果没有硬链接，此时inode的链接数为0，文件系统将回收该inode所指向的存储块，并回收该inode自身。
  - 从一个inode，通常是无法确定是用哪个文件名查到此inode号码的。打开一个文件后，操作系统实际上就抛掉了文件名，只保留了inode号码来访问文件的内容。库函数`getcwd()`用来查询当前工作目录的绝对路径名。其实现是从当前工作目录的inode逐级查找其上级目录的inode，最后拼出整个绝对路径的名字。
  - 历史上，对目录的硬链接是可能的。这可以使目录结构成为一个[有向图](https://zh.wikipedia.org/wiki/有向图 "wikilink")，而不是通常的目录树的[有向无环图](https://zh.wikipedia.org/wiki/有向无环图 "wikilink")。一个目录甚至可以是自身的父目录。现代文件系统一般禁止这些混淆状态，只有根目录保持了特例：根目录是自身的父目录。`ls /..`就是根目录的内容。
  - 一个文件或目录在文件系统内部移动时，其inode号码不变。文件系统[碎片整理可能会改变一个文件的物理存储位置](https://zh.wikipedia.org/wiki/磁盘碎片 "wikilink")，但其inode号码不变。非UNIX的[FAT](../Page/FAT.md "wikilink")及其衍生的文件系统是无法实现inode不变这一特点。
  - inode文件系统中安装新库十分容易。当一些进程正在使用一个库时，其它进程可以替换该库文件名字的inode号码指向新创建的inode，随后对该库的访问都被自动引导到新inode所指向的新的库文件的内容。这减少了替换库时重启系统的需要。而舊的inode的链接数已经为0，在使用舊函式庫的进程结束后，舊的inode与舊函式庫文件会被系统自动回收。

## 实际考虑

系统管理员使用的很多程序往往用inode号码来替代文件名来访问文件系统。例如磁盘完整性检查程序[`fsck`](https://zh.wikipedia.org/wiki/fsck "wikilink")或[`pfiles`](https://zh.wikipedia.org/wiki/pfiles "wikilink")。因此，inode号码与文件全路径名的互查是需要的。可以用[`find`](https://zh.wikipedia.org/wiki/find "wikilink")带参数选项`-inum`，[`ls`](https://zh.wikipedia.org/wiki/ls "wikilink")带参数选项(`-i`做到。

文件系统可能会用尽inode。这导致文件系统还有空闲的存储空间，但已经没有空闲的inode可供使用了。例如，一个电子邮件服务器可能会被大量的小文件用尽所有inode，但是却没有填满文件存储空间。

现代的文件系统，如[JFS和](https://zh.wikipedia.org/wiki/JFS_\(文件系统\) "wikilink")[XFS](https://zh.wikipedia.org/wiki/XFS "wikilink")，能够动态地增加inode，因此不会用尽inode。

## 参考文献

## 外部链接

  - [Anatomy Of The Linux File System](http://www.ibm.com/developerworks/linux/library/l-linux-filesystem/)
  - [Inode definition](http://www.linfo.org/inode.html)
  - [Great and Clear Explanation on Inodes, Symlinks, Hardlinks](http://linuxgazette.net/105/pitcher.html)
  - [理解inode](http://www.ruanyifeng.com/blog/2011/12/inode.html)
  - [一天一点学习Linux之inode详解](http://www.opsers.org/base/one-day-the-little-learning-linux-inode-detailed.html)

[Category:文件系统](https://zh.wikipedia.org/wiki/Category:文件系统 "wikilink") [Category:Unix](https://zh.wikipedia.org/wiki/Category:Unix "wikilink")

1.
2.
3.
4.  [Linux Kernel list archive](http://lkml.indiana.edu/hypermail/linux/kernel/0207.2/1182.html). Retrieved on 2011-01-12.