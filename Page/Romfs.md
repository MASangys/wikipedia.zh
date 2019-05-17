{{ infobox file system | name = romfs | developer = | full_name = |
variants = | introduction_date = | introduction_os = | partition_id =
| directory_struct = | file_struct = | file_types = |
bad_blocks_struct = | bootable = | min_volume_size = |
max_volume_size = | max_file_size = | file_size_granularity = |
max_files_no = | max_filename_size = | max_dirname_size = |
max_directory_depth = | filename_character_set = | dates_recorded =
| date_range = | date_resolution = | forks_streams = | attributes = |
file_system_permissions = | compression = | encryption = |
data_deduplication = | copy_on_write = | OS =
[类Unix系统](../Page/类Unix系统.md "wikilink") | website            
    = }} **romfs**（ROM
filesystem）是一个缺乏许多功能的极为简单的[文件系统](../Page/文件系统.md "wikilink")，用途是将重要的文件存入[EEPROM](https://zh.wikipedia.org/wiki/EEPROM "wikilink")\[1\]。在[Linux和其他一些](../Page/Linux.md "wikilink")[类Unix系统上可以使用该文件系统](../Page/类Unix系统.md "wikilink")。

该文件系统非常适合用作初始化ROM内核驻留模块，具有体积小、可靠性好、读取速度快等优点\[2\]，可以在需要时才加载。

该文件系统布局的描述可以在上找到 --
[romfs.txt](http://lxr.linux.no/source/Documentation/filesystems/romfs.txt)。

Bo Brantén为[Windows
NT](../Page/Windows_NT.md "wikilink")/2000/XP操作系统创建了一个RomFS文件系统的[驱动程序](http://www.acc.umu.se/~bosse/)。

Nikolay
Aleksandrov编写了名为[romfser](http://freshmeat.net/projects/romfser)的RomFS映像提取和操作工具。这主要针对[BSD系列操作系统](../Page/BSD.md "wikilink")，它们缺乏对RomFS的支持。

## 参考来源

## 外部链接

[Category:特殊目的自由文件系统](https://zh.wikipedia.org/wiki/Category:特殊目的自由文件系统 "wikilink")
[Category:Linux内核支持的文件系统](https://zh.wikipedia.org/wiki/Category:Linux内核支持的文件系统 "wikilink")

1.  [徐菲, 胡迪青. 对ROMFS文件系统的分析和改进.
    微计算机信息, 2007, 23(35):75-77.](http://www.ixueshu.com/document/7b8902f0e5247db3.html)
2.  [刘珊珊, 徐洁. 解析ROMFS文件系统的实现机制.
    福建电脑, 2008, 24(12):31-32.](http://www.ixueshu.com/document/1c86562969ef14d8.html)