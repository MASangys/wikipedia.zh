**pkg-config** 是一个在[源代码](../Page/源代码.md "wikilink")[编译时查询已安装的](https://zh.wikipedia.org/wiki/编译 "wikilink")[库的使用接口的计算机工具](https://zh.wikipedia.org/wiki/库 "wikilink")[软件](../Page/软件.md "wikilink")。pkg-config原本是设计用于[Linux](../Page/Linux.md "wikilink")的，但现在在各个版本的[BSD](../Page/BSD.md "wikilink")、[windows](https://zh.wikipedia.org/wiki/windows "wikilink")、[Mac OS X和](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[Solaris](../Page/Solaris.md "wikilink")上都有着可用的版本。

它输出已安装的库的相关信息，包括：

  - [C](../Page/C.md "wikilink")/[C++](../Page/C++.md "wikilink")[编译器需要的输入参数](https://zh.wikipedia.org/wiki/编译器 "wikilink")
  - [链接器](../Page/链接器.md "wikilink")需要的输入参数
  - 已安装软件包的版本信息

## 工作原理

当安装一个库时（例如从[RPM](../Page/RPM套件管理員.md "wikilink")，[deb或其他二进制包管理系统](https://zh.wikipedia.org/wiki/deb "wikilink")），会包括一个后缀名为pc的文件，它会放入某个文件夹下（依赖于你的系统设置）。例如，在Linux为该软件的库文件所在文件夹lib之下的子文件夹pkgconfig。并把该子文件夹加入pkg-config的环境变量PKG_CONFIG_PATH作为搜索路径，例如在bash配置文件中加入一行：

`` $ export PKG_CONFIG_PATH=/usr/local/`库的名字`/lib/pkgconfig:$PKG_CONFIG_PATH``

在这个.pc文件里包含有数个条目。这些条目通常包含用于其他使用这个库的程序编译时需要的库设置，以及[头文件](../Page/头文件.md "wikilink")的位置，版本信息和一个简介。

这是一个用于[libpng的](https://zh.wikipedia.org/wiki/libpng "wikilink").pc文件的样例: <poem> prefix=/usr/local

`exec_prefix=${prefix}`
`libdir=${exec_prefix}/lib`
`includedir=${exec_prefix}/include`
` `
`Name: libpng12 `
`Description: Loads and saves PNG files`
`Version: 1.2.8`
`Libs: -L${libdir} -lpng12 -lz`
`Cflags: -I${includedir}/libpng12`

</poem> 这个文件告诉我们这些库可以在/usr/local/lib找到，头文件可以在/usr/local/include里找到，库的名字是libpng12并且版本号是1.2.8。它也提供了用于编译依赖于libpng的源代码时需要的链接器参数。

这儿是一个编译时使用pkg-config的样例:

``` bash
gcc -o test test.c $(pkg-config --libs --cflags libpng)
```

## 参考链接

  - [pkg-config项目位于freedesktop.org的主页](http://pkg-config.freedesktop.org/)
  - [pkg-config的手册](http://www.die.net/doc/linux/man/man1/pkg-config.1.html)

[Category:Freedesktop.org](https://zh.wikipedia.org/wiki/Category:Freedesktop.org "wikilink") [Category:Computer_libraries](https://zh.wikipedia.org/wiki/Category:Computer_libraries "wikilink")