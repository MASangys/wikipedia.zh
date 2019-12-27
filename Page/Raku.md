**Raku**是[Perl](../Page/Perl.md "wikilink")[程式語言家族的成員之一](https://zh.wikipedia.org/wiki/程式語言 "wikilink")，主要設計者為[拉里·沃尔](../Page/拉里·沃尔.md "wikilink")。作為Perl的後繼者，在2000年開始發展，由於接續在Perl 5之後，舊名**Perl 6**，在2019年10月更改為今名\[1\]。由于Raku语言语法與Perl 5不同，因此，可以把它看作一种新的[程式語言](https://zh.wikipedia.org/wiki/程式語言 "wikilink")，尽管其计划提供Perl 5的兼容模式。

Raku拥有丰富的现代语言特征，[拉里·沃尔](../Page/拉里·沃尔.md "wikilink")计划用重新定义[正規表達式和增加](https://zh.wikipedia.org/wiki/正規表達式 "wikilink")[函數式程式語言的特征](https://zh.wikipedia.org/wiki/函數式程式語言 "wikilink")，使之成为可演化的语言。为保证Raku和[Perl](../Page/Perl.md "wikilink")社区的持续稳定发展，Raku[编译器使用Raku来重写](https://zh.wikipedia.org/wiki/编译器 "wikilink")。为保证Perl语言原有[函式庫](../Page/函式庫.md "wikilink")的重用，[编译器还计划提供同Perl](https://zh.wikipedia.org/wiki/编译器 "wikilink") 5语言的兼容模式。

由于Raku语言的语法特征和要求，Raku编译器实现非常复杂，同时，[自由軟體社群](../Page/自由軟體社群.md "wikilink")的资源相对贫乏。因此，Raku编译器的开发显得相当缓慢。

[2010年7月](../Page/2010年7月.md "wikilink")，[Rakudo的Rakudo](https://zh.wikipedia.org/wiki/Rakudo "wikilink") Star，作为主要版本的[试验品发布](https://zh.wikipedia.org/wiki/试验品 "wikilink")。这一发布的目的是为了让人们有一个可基本用于实际的编译器，以方便编写程序，以及反映需求（Perl6的规范尚未冻结，以期根据人们的使用体验以及编译器的实现等来增补某些特性）。

## 歷史

在2000年時，拉里·沃尔宣告開始開發Raku。最初的目標，是移除Perl因為歷史因素而保留下來的一些功能。

## 程式範例

### Hello World

``` perl
say 'Hello, world';
```

### 巨集

``` perl
 macro hello($what) {
   quasi { say "Hello { {{{$what}}} }" };
 }
```

## 和Ruby比較

一般都是認為[Ruby](../Page/Ruby.md "wikilink") vs. [Python](../Page/Python.md "wikilink")（可能是因為同樣採取縮排的設計），但是就一些相關的討論和訪談，Ruby vs. Raku的可能性反而是最大的。[CPAN上排名第一名](https://zh.wikipedia.org/wiki/CPAN "wikilink")，同時也是Raku的開發者的[唐鳳](../Page/唐鳳.md "wikilink")（Audrey）就這麼說過：「Ruby就是『沒有到處打廣告的Perl 6（Raku）』」\[2\]。Ruby的創始者[松本行弘](../Page/松本行弘.md "wikilink")（Matz）在接受[O'Reilly的訪問時](https://zh.wikipedia.org/wiki/O'Reilly "wikilink")\[3\]，也提到「Ruby借用了很多Perl的東西……，Python遠比Perl要少……」。從Ruby的命名也可以看出Matz遠大的企圖心：「Pearl（珍珠）是六月的[誕生石](../Page/誕生石.md "wikilink")\[4\]，而Ruby是七月的誕生石，我認為Ruby這個名字作為Perl之後的一門語言的名字真是再恰當不過了。」\[5\]

Perl之父[拉里·沃尔](../Page/拉里·沃尔.md "wikilink")在《*Larry Wall On Perl, Religion, and……*》\[6\] 一文中表示：「很多方面上我還是很喜歡Ruby的，這是因為那些部分是從Perl借過去的。：-）」、「我還喜歡Ruby的C\<\*\>一元星號操作符，所以我把它加到Perl 6里面。」

但是[拉里·沃爾在文中也說](https://zh.wikipedia.org/wiki/拉里·沃爾 "wikilink")：「Ruby的主要問題在於它的最少驚訝原則可能讓人誤入歧途，就好像隱藏式詞法範圍。問題在於減少誰的驚訝？[專家和初學者對不同的事情驚訝](https://zh.wikipedia.org/wiki/專家 "wikilink")。從一個小程序寫成大程序的人和從開始就寫大程序的人可能對不同的事情感到驚訝。」

## 参考文献

## 外部連結

### 規格

  - [Synopses - The evolving summary of each Apocalypse, updated regularly](http://dev.perl.org/perl6/doc/synopsis.html)，這些文件被視為Raku正式的語言架構。
  - [Exegeses - Further explanation of each Apocalypse with code samples](http://dev.perl.org/perl6/doc/exegesis.html)
  - [Apocalypses - The first-pass drafts from Larry Wall](http://dev.perl.org/perl6/doc/apocalypse.html)
  - [Official Raku Documentation](https://web.archive.org/web/20070315214145/http://feather.perl6.nl/syn/) Raku的正式說明文件。

### 實做

  - [Raku](http://dev.perl.org/perl6/)，Raku的主要發展資訊站台。
  - [Rakudo Perl 6](http://www.rakudo.org/)，基於Parrot的Raku實作（Activated）
  - [Pugs](http://www.pugscode.org/)，以[Haskell](../Page/Haskell.md "wikilink")實做Raku的計畫。（Deactivated）
  - [v6.pm](http://search.cpan.org/dist/v6-alpha/)，純Perl的實做，based on a Raku's CPAN stack。
  - [Parrot](http://www.parrot.org/)，[Parrot的主站](https://zh.wikipedia.org/wiki/Parrot "wikilink")。
  - [compilers](http://perl6.org/), **Full List** of Raku Compilers

### 其他

  - [Planet Perl 6](https://web.archive.org/web/20070306200607/http://planetsix.perl.org/)
  - [Perl 6::Perl 5::Differences](https://web.archive.org/web/20070707003455/http://perlcabal.org/syn/Differences.html)

{{-}}

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink") [Category:Perl](https://zh.wikipedia.org/wiki/Category:Perl "wikilink") [Category:自由編譯器與直譯器](https://zh.wikipedia.org/wiki/Category:自由編譯器與直譯器 "wikilink")

1.
2.  [日本的Perl社群名人——宮川達彥專訪。](http://www.OpenFoundry.org/index.php?option=com_content&Itemid=1&id=188)
3.  [訪問Matz。](http://www.linuxforum.net/forum/showflat.php?Cat=&Board=python&Number=567208&page=18&view=collapsed&sb=5&o=&fpart=)
4.  Larry Wall在命名Perl时，曾经想过使用Pearl作为名称，但发现已经有Pearl这个语言了，于是就成为Perl。
5.  [O'Reilly訪問Matz。](http://blog.csdn.net/eiffelqiu/archive/2004/02/04/19869.aspx)
6.  [Larry Wall On Perl, Religion, and……](http://www.perlchina.org/archive/archive.php?action=archive&page=39)