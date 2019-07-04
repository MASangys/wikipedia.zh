**Ldd**（，意译为**列出动态库依赖关系**）是一款在[类Unix系统的实用工具](../Page/类Unix系统.md "wikilink")，负责在[命令行内输出](https://zh.wikipedia.org/wiki/命令行 "wikilink")[程序或](https://zh.wikipedia.org/wiki/程序 "wikilink")[共享库所依赖的](https://zh.wikipedia.org/wiki/共享库 "wikilink")[函数库](../Page/函式庫.md "wikilink")。\[1\]此工具由及开发。\[2\]
Ldd在指定的程序缺少部分函数库的情况下将无法显示结果。

## 安全性

ldd是一个将指定程序作为参数传入的[命令行脚本](../Page/Shell脚本.md "wikilink")，用户不应该使用其打开不受信的函数库。ldd的[手册页建议用户在打开不受信的二进制文件时使用](../Page/手册页.md "wikilink")[objdump及](https://zh.wikipedia.org/wiki/objdump "wikilink")[grep实用工具](https://zh.wikipedia.org/wiki/grep "wikilink")：

``` bash
user@home ~/ $ objdump -p /path/program | grep NEEDED
```

## 用法

``` console
user@home ~/ $ ldd /usr/bin/mp3blaster
        linux-vdso.so.1 =>  (0x00007fff8fdff000)
        libsidplay.so.1 => /usr/lib/libsidplay.so.1 (0x00007f4ea98ec000)
        libvorbisfile.so.3 => /usr/lib/libvorbisfile.so.3 (0x00007f4ea96e4000)
        libvorbis.so.0 => /usr/lib/libvorbis.so.0 (0x00007f4ea94b6000)
        libncurses.so.5 => /lib/libncurses.so.5 (0x00007f4ea9273000)
        libpthread.so.0 => /lib/libpthread.so.0 (0x00007f4ea9056000)
        libstdc++.so.6 => /usr/lib/libstdc++.so.6 (0x00007f4ea8d41000)
        libm.so.6 => /lib/libm.so.6 (0x00007f4ea8abe000)
        libgcc_s.so.1 => /lib/libgcc_s.so.1 (0x00007f4ea88a7000)
        libc.so.6 => /lib/libc.so.6 (0x00007f4ea8523000)
        libogg.so.0 => /usr/lib/libogg.so.0 (0x00007f4ea831c000)
        libdl.so.2 => /lib/libdl.so.2 (0x00007f4ea8118000)
        /lib64/ld-linux-x86-64.so.2 (0x00007f4ea9b59000)
```

## 参考文献

[Category:Unix软件](https://zh.wikipedia.org/wiki/Category:Unix软件 "wikilink")

1.
2.