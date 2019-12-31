> 本文内容由[Shoes](https://zh.wikipedia.org/wiki/Shoes)转换而来。


**Shoes** 是一套基于 [Ruby](../Page/Ruby.md "wikilink") 语言的 [GUI](https://zh.wikipedia.org/wiki/GUI "wikilink") 开发工具。其最初由  开发，在他停止了一切公开活动之后，社区接手了该项目并继续开发。Shoes 可以在 [Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[Mac OS X](https://zh.wikipedia.org/wiki/OS_X "wikilink") 和 [Linux](../Page/Linux.md "wikilink")（[GTK+](https://zh.wikipedia.org/wiki/GTK+ "wikilink")）上运行，底层使用了 [Cairo](https://zh.wikipedia.org/wiki/Cairo_\(繪圖\) "wikilink") 和 [Pango](../Page/Pango.md "wikilink") 函数库。

Shoes 的设计哲学是应用程序的编写越简单越好。下面是一个 Shoes 应用的范例：

``` ruby
Shoes.app :title => "Push Button" do
  @note = para "Nothing pushed so far"

  button "Push me" do
    @note.replace "Aha! The button was pushed!"
  end
end
```

Shoes 不仅提供了标准的视窗控件部件，它还能通过 [Chipmunk](https://zh.wikipedia.org/wiki/Chipmunk "wikilink") 实现基础的绘图功能。

## 版本

### 正式发行版本

  - _why：

<!-- end list -->

1.  第一版 Curious
2.  第二版 Raisins

<!-- end list -->

  - _why 离开后：

<!-- end list -->

1.  3.0-3.1 Policeman
2.  3.2 Federales

目前最新的发行版是 3.2，这些版本均由 [C](https://zh.wikipedia.org/wiki/C语言 "wikilink") 语言实现，现由社区维护。

### Shoes 4

开发中的 Shoes 4 是一个完全用 Ruby 重写的版本，不再由 C 语言实现。它使用 [JRuby](../Page/JRuby.md "wikilink") + [SWT](../Page/SWT.md "wikilink") 构筑图形界面。

### 其他开源实现

除了官方的实现版本之外，[GitHub](../Page/GitHub.md "wikilink") 上亦有各种各样的 Shoes 版本，它们的名字大多是在 Shoes 前加上特定的颜色。如 [Green Shoes](https://github.com/ashbb/green_shoes) 是由 [GTK+](https://zh.wikipedia.org/wiki/GTK+ "wikilink") 实现的版本，[Blue Shoes](https://github.com/hacketyhack/blue_shoes) 是 [Qt](../Page/Qt.md "wikilink") 的版本，[Brown Shoes](https://github.com/swerner/brown_shoes) 是 [JRuby](../Page/JRuby.md "wikilink") + [Swing](../Page/Swing_\(Java\).md "wikilink") 的版本等等。

## 外部链接

  - [Shoes 主页](http://shoesrb.com/)
  - [Shoes 3 GitHub 项目页面](https://github.com/shoes/shoes)
  - [Shoes 4 GitHub 项目页面](https://github.com/shoes/shoes4)

[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink") [Category:用Ruby编程的自由软件](https://zh.wikipedia.org/wiki/Category:用Ruby编程的自由软件 "wikilink") [Category:部件工具箱](https://zh.wikipedia.org/wiki/Category:部件工具箱 "wikilink")