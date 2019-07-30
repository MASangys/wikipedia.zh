**GParted**是硬盘分区软件[GNU Parted的](../Page/GNU_Parted.md "wikilink")[GTK+](https://zh.wikipedia.org/wiki/GTK+ "wikilink")[图形界面](https://zh.wikipedia.org/wiki/图形界面 "wikilink")[前端](https://zh.wikipedia.org/wiki/前端 "wikilink")，是[GNOME](../Page/GNOME.md "wikilink")[桌面环境](../Page/桌面环境.md "wikilink")的默认分区软件。

GParted可以用于创建、删除、移动分区，调整分区大小，检查、复制[分区等操作](https://zh.wikipedia.org/wiki/分区 "wikilink")。可以用于调整分区以安装新[操作系统](../Page/操作系统.md "wikilink")、备份特定分区到另一块硬盘等。

GParted使用[libparted来识别](../Page/GNU_Parted.md "wikilink")、调整分区表，并有各个文件系统工具来处理分区上的文件系统。这些文件系统工具并不是必须的，但要处理一种文件系统就必须先安装相应的工具。

GParted使用[C++](../Page/C++.md "wikilink")写成，使用[gtkmm提供GTK](https://zh.wikipedia.org/wiki/gtkmm "wikilink")+界面。

GParted项目还提供了一个包含GParted和全部文件系统工具的[Live CD](../Page/Live_CD.md "wikilink")，也可以制作成[Live USB或使用其他介质](https://zh.wikipedia.org/wiki/Live_USB "wikilink")。这个Live CD系统基于[Debian](../Page/Debian.md "wikilink") [GNU/Linux](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")。其它Linux Live CD版本也大多包含GParted，如[Knoppix](../Page/Knoppix.md "wikilink")等。

## 功能

GParted支持的功能如下表所示，支持的文件系统都需要安装相应的工具。\[1\]

<table>
<thead>
<tr class="header">
<th></th>
<th><p>识别</p></th>
<th><p>读取</p></th>
<th><p>创建</p></th>
<th><p>扩大</p></th>
<th><p>缩小</p></th>
<th><p>移动</p></th>
<th><p>复制</p></th>
<th><p>检查</p></th>
<th><p>标签</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/Btrfs.md" title="wikilink">Btrfs</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/ext2" title="wikilink">ext2</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/ext3" title="wikilink">ext3</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/ext4" title="wikilink">ext4</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/File_Allocation_Table" title="wikilink">FAT16</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/File_Allocation_Table" title="wikilink">FAT32</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Hierarchical_File_System" title="wikilink">HFS</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/HFS_Plus" title="wikilink">HFS+</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/JFS" title="wikilink">JFS</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/交换分区" title="wikilink">swap</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/NTFS.md" title="wikilink">NTFS</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Reiser4" title="wikilink">Reiser4</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/ReiserFS.md" title="wikilink">ReiserFS</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Unix_File_System" title="wikilink">UFS</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/XFS.md" title="wikilink">XFS</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/邏輯捲軸管理" title="wikilink">LVM2 PV</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/dm-crypt" title="wikilink">crypt</a> / <a href="https://zh.wikipedia.org/wiki/LUKS" title="wikilink">LUKS</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/exFAT" title="wikilink">exFAT</a>[2][3]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/ZFS.md" title="wikilink">ZFS</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/YAFFS.md" title="wikilink">YAFFS</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 参见

  - [分区](https://zh.wikipedia.org/wiki/分区 "wikilink")
  - [硬盘分区软件列表](https://zh.wikipedia.org/wiki/硬盘分区软件列表 "wikilink")
  - [GNU Parted](../Page/GNU_Parted.md "wikilink")
  - [KDE Partition Manager](../Page/KDE_Partition_Manager.md "wikilink")

## 参考资料

## 外部链接

[de:GNU Parted\#GParted](https://zh.wikipedia.org/wiki/de:GNU_Parted#GParted "wikilink")

[Category:GNOME应用程序](https://zh.wikipedia.org/wiki/Category:GNOME应用程序 "wikilink") [Category:用C++編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C++編程的自由軟體 "wikilink") [Category:自由分区软件](https://zh.wikipedia.org/wiki/Category:自由分区软件 "wikilink")

1.
2.  [Feature Requests: exFAT (aka FAT64)](http://gparted-forum.surf4.info/viewtopic.php?id=13428)
3.  [Bug / Enhancement 639760 - exfat / fat64 support?](https://bugzilla.gnome.org/show_bug.cgi?id=639760)