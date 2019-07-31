**incr Tcl** (incr，即increase，在英文中表示"+", 這個名字是由 "[C++](../Page/C++.md "wikilink")"而來, 簡寫作 "itcl")，是[Tcl](../Page/Tcl.md "wikilink")編程語言的[面向對象編程的擴展包](https://zh.wikipedia.org/wiki/面向對象_\(編程\) "wikilink")。它被廣泛使用Tcl編程人員廣泛使用。Itcl有兩種使用方式，一是[軟體包（package）](https://zh.wikipedia.org/wiki/軟體包_\(編程\) "wikilink")，可被[Tcl](../Page/Tcl.md "wikilink")程序動態載入；一是作為單獨的語言，有自己的解譯器（standalone interpreter）。

## 概述

### 特點

#### 命名空間的支持

Itcl 允許使用命名空間（namespace）來組織的命令和變量。

例: <code>

`   package require Itcl`
`   `
`   itcl::class Toaster {`
`       variable crumbs 0`
`       method toast {nslices} {`
`           if {$crumbs > 50} {`
`               error "== FIRE! FIRE! =="`
`           }`
`           set crumbs [expr $crumbs+4*$nslices]`
`       }`
`       method clean {} {`
`           set crumbs 0`
`       }`
`   }`
`   `
`   itcl::class SmartToaster {`
`       inherit Toaster`
`       method toast {nslices} {`
`           if {$crumbs > 40} {`
`               clean`
`           }`
`           return [chain $nslices]`
`       }`
`   }`
`   `
`   set toaster [SmartToaster #auto]`
`   $toaster toast 2`

</code>

#### C代碼的整合

Itcl (跟Tcl一樣) 內置有C代碼整合支持，讓C代碼整合為Itcl類。

## 相關參考

  - [XOTcl](https://zh.wikipedia.org/wiki/XOTcl "wikilink")
  - [Snit](https://zh.wikipedia.org/wiki/Snit "wikilink")
  - [Tcl](../Page/Tcl.md "wikilink")
  - [Tcllib](../Page/Tcllib.md "wikilink")
  - [C++/Tcl](https://zh.wikipedia.org/wiki/C++/Tcl "wikilink")
  - [Itk](https://zh.wikipedia.org/wiki/Itk "wikilink")
  - [Tk](https://zh.wikipedia.org/wiki/Tk_\(編程語言\) "wikilink")

## 外部連結

  - [Itcl/incr Tcl project page](http://incrtcl.sourceforge.net/itcl/)
  - [Tcl package site](http://purl.org/tcl/package/itcl/)
  - [tclweb project](http://sf.net/projects/tclweb/) (there is a mailing list maintained at this site)

[Category:腳本語言](https://zh.wikipedia.org/wiki/Category:腳本語言 "wikilink") [Category:動態類型編程語言](https://zh.wikipedia.org/wiki/Category:動態類型編程語言 "wikilink") [Category:Tcl編程語言家族](https://zh.wikipedia.org/wiki/Category:Tcl編程語言家族 "wikilink") [Category:SourceForge項目](https://zh.wikipedia.org/wiki/Category:SourceForge項目 "wikilink")