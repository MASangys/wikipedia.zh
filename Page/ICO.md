**ICO**，[图标格式](https://zh.wikipedia.org/wiki/图标 "wikilink")，即指[英語的](https://zh.wikipedia.org/wiki/英語 "wikilink")「icon」，是一种用于图标显示的图片格式。除了一般图片常见的颜色外，一般还用[调色板定义了](https://zh.wikipedia.org/wiki/调色板 "wikilink")[透明色和反色](https://zh.wikipedia.org/wiki/透明色 "wikilink")。
[icon_stretch.png](https://zh.wikipedia.org/wiki/File:icon_stretch.png "fig:icon_stretch.png")

图标中包含的图片常见尺寸有16×16（小图标）、32×32、48×48，另外24×24、64×64、128×128也比较常见。256×256多见于[Windows
Vista以上版本的](../Page/Windows_Vista.md "wikilink")[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")[操作系统中](../Page/操作系统.md "wikilink")。8×8、10×10、20×20多用于工具栏的按钮。较旧的操作系统不支持超过128×128的图标，所以向用于旧的操作系统的图标文件中添加大图标没有意义。

图标中包含的图片[色阶一般有](https://zh.wikipedia.org/wiki/色阶 "wikilink")16色、256色、32位色([真彩色](../Page/真彩色.md "wikilink")+[Alpha通道](https://zh.wikipedia.org/wiki/Alpha通道 "wikilink"))三种，另外也有单色、24位色（真彩色）色阶。早期的操作系统只支持显示较少色阶的的图标格式，即使系统可以显示真彩色。

同一个大小的图像可以有多个颜色深度，同一个颜色深度也可以有多个大小，都算不同的格式。比如32×32@32bit色和32×32@256色是两个不同格式，16×16@32bit色和32×32@32bit色也是两个不同格式。一个图标文件可以同包含多个格式，因此在不同的文件视图下可能显示完全不同的图案。这些格式可以被[压缩以节约储存空间](https://zh.wikipedia.org/wiki/压缩 "wikilink")。图标被显示时，系统会自动根据要显示的大小和当前系统的颜色深度从最接近的格式中选择一个显示。如果没有匹配的格式，则会经过大小和颜色的变换后再显示出来，可能显示效果不佳。

Mac OS中使用的是[ICNS格式](https://zh.wikipedia.org/wiki/ICNS "wikilink")。

## ICO的衍生格式

  - CUR：通常用于[鼠标指针](../Page/鼠标.md "wikilink")（[光标](https://zh.wikipedia.org/wiki/光标 "wikilink")），格式和ICO相同
  - [ANI](https://zh.wikipedia.org/wiki/ANI "wikilink")：动态指针，将多幅图标连接成为[动画](../Page/动画.md "wikilink")
  - [ICL](https://zh.wikipedia.org/wiki/ICL "wikilink")：图标库，可以包含很多图标，程序可以直接调用

在Windows中，ICO文件通常被集中打包到[EXE等](https://zh.wikipedia.org/wiki/EXE "wikilink")[PE文件中](https://zh.wikipedia.org/wiki/PE "wikilink")。

## ICO支持的色阶

ICO中所有的色阶都包含透明色和反色，并且除了[真彩色和](../Page/真彩色.md "wikilink")[Windows
XP色阶外其他都需要使用调色板](../Page/Windows_XP.md "wikilink")[索引颜色](https://zh.wikipedia.org/wiki/索引颜色 "wikilink")，调色板的颜色可变，下面不再说明。

  - [单色](https://zh.wikipedia.org/wiki/单色 "wikilink")：即-{只}-有[黑](https://zh.wikipedia.org/wiki/黑 "wikilink")[白两色](https://zh.wikipedia.org/wiki/白 "wikilink")
  - [16色](https://zh.wikipedia.org/wiki/16色 "wikilink")：有16种颜色，通常情况是包含如下几种（按[红](https://zh.wikipedia.org/wiki/红 "wikilink")[绿](https://zh.wikipedia.org/wiki/绿 "wikilink")[蓝的顺序](https://zh.wikipedia.org/wiki/蓝 "wikilink")）

<!-- end list -->

  - [256色](https://zh.wikipedia.org/wiki/256色 "wikilink")：可设置的256色[调色盘](https://zh.wikipedia.org/wiki/调色盘 "wikilink")
  - [真彩色](../Page/真彩色.md "wikilink")：每个象素自成调色盘，共有256<sup>3</sup>(16777216)种颜色
  - [Windows
    XP色](https://zh.wikipedia.org/wiki/Windows_XP色 "wikilink")：在真彩色的基础上加入[透明度](https://zh.wikipedia.org/wiki/透明度 "wikilink")，即Alpha通道

[Category:扩展名](https://zh.wikipedia.org/wiki/Category:扩展名 "wikilink")
[Category:图形文件格式](https://zh.wikipedia.org/wiki/Category:图形文件格式 "wikilink")