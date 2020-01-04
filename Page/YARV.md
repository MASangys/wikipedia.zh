> 本文内容由[YARV](https://zh.wikipedia.org/wiki/YARV)转换而来。


**YARV**是“[Ruby](../Page/Ruby.md "wikilink")程序语言”的一个[字节码解译器](https://zh.wikipedia.org/wiki/字节码 "wikilink")，它是由[笹田耕一领导的](https://zh.wikipedia.org/wiki/笹田耕一 "wikilink")。YARV这个名称是“Yet another Ruby VM”（又一个Ruby虚拟机器）的首字母缩写。这个项目的目标是大幅度地减少Ruby程序的运行时间。

在YARV成为Ruby 1.9的官方解译器后，人们也称它为KRI（Koichi's Ruby Interpreter，Koichi的Ruby解译器）。

## 性能

由rubychan.de給出的評分，可以看到YARV有著大幅的性能提升。\[1\] 而Antonio Cangiano 給出的評分顯示，平均起來YARV比原來的解譯器要快3倍。\[2\] 兩個評分給出的都是綜合性的結果。

據報導，在YARV上執行的Ruby on Rails 比在1.8.6上執行要快15%\[3\]。然而，啟動和ActiveRecord功能反而變慢了。

## 歷史

在2007年1月1日，YARV首次出現在Ruby下個版本的CVS庫之中。\[4\] 後来，Ruby的創造者[松本行弘](../Page/松本行弘.md "wikilink")把YARV完全放入Ruby 1.9.0（於2007年12月26日發布）\[5\] 。從這個版本起，YARV成为了官方的Ruby解释器，取代原本由[松本行弘](../Page/松本行弘.md "wikilink")製作的版本。

## 另见

  - [Parrot虚拟机](../Page/Parrot虚拟机.md "wikilink")
  - [Ruby](../Page/Ruby.md "wikilink")
  - [Rubinius](https://zh.wikipedia.org/wiki/Rubinius "wikilink")

## 引用

## 外部链接

  - [YARV home page](http://www.atdot.net/yarv/) Note: obsolete now that YARV is merged into Ruby
  - [YARV: Yet Another RubyVM ... on Rails?](http://www.atdot.net/yarv/rc2006_sasada_yarv_on_rails.pdf) - Koichi Sasada's RubyConf 2006 presentation
  - [The Great Ruby Shootout (December 2008)](http://antoniocangiano.com/2008/12/09/the-great-ruby-shootout-december-2008/) - Ruby 1.9.1 (YARV) versus other Ruby VMs
  - [YARV in The Computer Language Benchmarks Game](https://web.archive.org/web/20090218121038/http://shootout.alioth.debian.org/gp4/benchmark.php?test=all&lang=yarv) - Ruby 1.9.0(YARV) versus Ruby 1.8.6
  - [YARV in The Computer Language Benchmarks Game](https://web.archive.org/web/20101204223835/http://shootout.alioth.debian.org/u32/benchmark.php?test=all&lang=yarv&lang2=ruby) - Ruby 1.9.1 versus Ruby 1.8.7

[Category:Ruby](https://zh.wikipedia.org/wiki/Category:Ruby "wikilink")

1.  [Benchmarks: Ruby 1.8 and Ruby 1.9](http://www.rubychan.de/share/yarv_speedups.html)  (rubychan.de)
2.
3.
4.  [The Ruby VM: Episode I](http://blog.grayproductions.net/articles/the_ruby_vm_episode_i) - *Shades of Gray*
5.  [merge YARV](http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/284720) announcement by Koichi Sasada