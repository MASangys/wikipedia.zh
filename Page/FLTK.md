> 本文内容由[FLTK](https://zh.wikipedia.org/wiki/FLTK)转换而来。


**FLTK**（**Fast Light Toolki**，读做“fulltick”）是一个[跨平台的](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[C++](../Page/C++.md "wikilink")[GUI工具集](https://zh.wikipedia.org/wiki/GUI "wikilink")，用在[UNIX](../Page/UNIX.md "wikilink")/[Linux](../Page/Linux.md "wikilink")（[X11](../Page/X_Window系統.md "wikilink")）、[微软](../Page/微软.md "wikilink")[Windows和](https://zh.wikipedia.org/wiki/Windows "wikilink")[Mac OS X上](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")。FLTK提供现代的[GUI功能](https://zh.wikipedia.org/wiki/GUI "wikilink")，除却膨胀，通过[OpenGL](../Page/OpenGL.md "wikilink")和内建的[GLUT](../Page/GLUT.md "wikilink")模拟器提供[3D图形支持](../Page/三维计算机图形.md "wikilink")。最初由Bill Spitzak开发，当前由全世界一小组开发者使用美国一个中心仓库维护。

FLTK被设计足够小和模块化以被[静态链接](../Page/静态库.md "wikilink")，但作为[共享库工作良好](https://zh.wikipedia.org/wiki/函式庫#动态链接 "wikilink")。FLTK同时包含一个优秀的称为FLUID的UI构建器，可以被用来在几分钟内创建[应用程序](../Page/应用程序.md "wikilink")。

FLTK在[GNU宽通用公共许可证](../Page/GNU宽通用公共许可证.md "wikilink")第二版下提供，除了允许[静态链接](../Page/静态库.md "wikilink")。

## FLTK的历史

## 特性

## 第一个FLTK程序

以下程序使用FLTK显示窗口:

``` cpp
#include <FL/Fl.H>
#include <FL/Fl_Window.H>
#include <FL/Fl_Box.H>

int main(int argc, char **argv) {
    Fl_Window *window = new Fl_Window(300, 180);
    Fl_Box *box = new Fl_Box(20, 40, 260, 100, "Hello, World!");
    box->box(FL_UP_BOX);
    box->labelsize(36);
    box->labelfont(FL_BOLD+FL_ITALIC);
    box->labeltype(FL_SHADOW_LABEL);

    window->end();
    window->show(argc, argv);

    return Fl::run();
}
```

结果显示为： [hello.C.gif](https://zh.wikipedia.org/wiki/File:hello.C.gif "fig:hello.C.gif")

## 外部連結

  - [Official FLTK website](http://www.fltk.org)
  - [Beginner FLTK Tutorial](http://www3.telus.net/public/robark/)
  - [Erco's FLTK Cheat Page](http://www.seriss.com/people/erco/fltk/)

[Category:部件工具箱](https://zh.wikipedia.org/wiki/Category:部件工具箱 "wikilink")