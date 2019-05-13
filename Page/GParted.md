**GParted**是硬盘分区软件[GNU
Parted的](../Page/GNU_Parted.md "wikilink")[GTK+](../Page/GTK+.md "wikilink")[图形界面](../Page/图形界面.md "wikilink")[前端](../Page/前端.md "wikilink")，是[GNOME](../Page/GNOME.md "wikilink")[桌面环境的默认分区软件](../Page/桌面环境.md "wikilink")。

GParted可以用于创建、删除、移动分区，调整分区大小，检查、复制[分区等操作](../Page/分区.md "wikilink")。可以用于调整分区以安装新[操作系统](../Page/操作系统.md "wikilink")、备份特定分区到另一块硬盘等。

GParted使用[libparted来识别](../Page/GNU_Parted.md "wikilink")、调整分区表，并有各个文件系统工具来处理分区上的文件系统。这些文件系统工具并不是必须的，但要处理一种文件系统就必须先安装相应的工具。

GParted使用[C++写成](../Page/C++.md "wikilink")，使用[gtkmm提供GTK](../Page/gtkmm.md "wikilink")+界面。

GParted项目还提供了一个包含GParted和全部文件系统工具的[Live
CD](../Page/Live_CD.md "wikilink")，也可以制作成[Live
USB或使用其他介质](../Page/Live_USB.md "wikilink")。这个Live
CD系统基于[Debian](../Page/Debian.md "wikilink")
[GNU/Linux](../Page/GNU/Linux.md "wikilink")。其它Linux Live
CD版本也大多包含GParted，如[Knoppix等](../Page/Knoppix.md "wikilink")。

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
<td><p><a href="../Page/ext2.md" title="wikilink">ext2</a></p></td>
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
<td><p><a href="../Page/ext3.md" title="wikilink">ext3</a></p></td>
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
<td><p><a href="../Page/ext4.md" title="wikilink">ext4</a></p></td>
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
<td><p><a href="../Page/File_Allocation_Table.md" title="wikilink">FAT16</a></p></td>
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
<td><p><a href="../Page/File_Allocation_Table.md" title="wikilink">FAT32</a></p></td>
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
<td><p><a href="../Page/Hierarchical_File_System.md" title="wikilink">HFS</a></p></td>
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
<td><p><a href="../Page/HFS_Plus.md" title="wikilink">HFS+</a></p></td>
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
<td><p><a href="../Page/JFS.md" title="wikilink">JFS</a></p></td>
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
<td><p><a href="../Page/交换分区.md" title="wikilink">swap</a></p></td>
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
<td><p><a href="../Page/Reiser4.md" title="wikilink">Reiser4</a></p></td>
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
<td><p><a href="../Page/Unix_File_System.md" title="wikilink">UFS</a></p></td>
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
<td><p><a href="../Page/邏輯捲軸管理.md" title="wikilink">LVM2 PV</a></p></td>
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
<td><p><a href="../Page/dm-crypt.md" title="wikilink">crypt</a> / <a href="../Page/LUKS.md" title="wikilink">LUKS</a></p></td>
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
<td><p><a href="../Page/exFAT.md" title="wikilink">exFAT</a>[2][3]</p></td>
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

  - [分区](../Page/分区.md "wikilink")
  - [硬盘分区软件列表](../Page/硬盘分区软件列表.md "wikilink")
  - [GNU Parted](../Page/GNU_Parted.md "wikilink")
  - [KDE Partition Manager](../Page/KDE_Partition_Manager.md "wikilink")

## 参考资料

## 外部链接

[de:GNU Parted\#GParted](../Page/de:GNU_Parted#GParted.md "wikilink")

[Category:GNOME应用程序](https://zh.wikipedia.org/wiki/Category:GNOME应用程序 "wikilink")
[Category:用C++編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C++編程的自由軟體 "wikilink")
[Category:自由分区软件](https://zh.wikipedia.org/wiki/Category:自由分区软件 "wikilink")

1.
2.  [Feature Requests: exFAT (aka
    FAT64)](http://gparted-forum.surf4.info/viewtopic.php?id=13428)
3.  [Bug / Enhancement 639760 - exfat / fat64
    support?](https://bugzilla.gnome.org/show_bug.cgi?id=639760)