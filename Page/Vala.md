**Vala**是一門[物件導向的](../Page/物件導向.md "wikilink")[程式語言](../Page/程式語言.md "wikilink")，由[編譯器產生](../Page/編譯器.md "wikilink")[C語言代碼和使用](../Page/C語言.md "wikilink")[GObject系統](../Page/GObject.md "wikilink")，允许在[Gnome运行时库的基础上使用一些现代的编程技巧](../Page/Gnome.md "wikilink")。通过使用[GLib和](../Page/GLib.md "wikilink")[GObject](../Page/GObject.md "wikilink")，Vala提供了动态类型系统和补助内存管理的功能。

Vala借鉴了大量的[C\#语法](../Page/C_Sharp.md "wikilink")，因此看起来非常相似。

## 示范代码

一个简单的“[Hello world](../Page/Hello_world.md "wikilink")”程序：

``` vala
void main () {
    print ("Hello World\n");
}
```

更完整的一个版本，表现了**Vala**的一些[面向对象的特性](../Page/面向对象程序设计.md "wikilink")：

``` vala
class Sample : Object {
    void run () {
        stdout.printf ("Hello World\n");
    }

    static void main (string[] args) {
        var sample = new Sample ();
        sample.run ();
    }
}
```

## 外部链接

  - [The Vala Programming Language](http://live.gnome.org/Vala), on
    GNOME Live\!
  - [Benchmark of Vala versus C\# and
    C](http://code.google.com/p/vala-benchmarks/)
  - [Val(a)IDE,一个Vala
    [集成开发环境](../Page/集成开发环境.md "wikilink")](http://www.valaide.org/)

[Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink")
[Category:C語言家族](https://zh.wikipedia.org/wiki/Category:C語言家族 "wikilink")