> 本文内容由[Automake](https://zh.wikipedia.org/wiki/Automake)转换而来。


[Autoconf-automake-process.svg](https://zh.wikipedia.org/wiki/File:Autoconf-automake-process.svg "fig:Autoconf-automake-process.svg") **GNU Automake**是一種編程工具，可以產生供[make程式使用的Makefile](https://zh.wikipedia.org/wiki/make "wikilink")，用來編譯程式。它是[自由軟體基金會發起的](https://zh.wikipedia.org/wiki/自由軟體基金會 "wikilink")[GNU計劃](../Page/GNU計劃.md "wikilink")的其中一項，作為[GNU構建系統的一部分](https://zh.wikipedia.org/wiki/GNU构建系统 "wikilink")。automake所產生的Makefile符合GNU編程標準。

automake是由[Perl](../Page/Perl.md "wikilink")語言所寫的，必須和[GNU autoconf一併使用](https://zh.wikipedia.org/wiki/autoconf "wikilink")。automake包含了以下命令：

  - *aclocal*
  - *automake*

*aclocal*是個泛用的程式，對於autoconf使用者是相當有用的。舉例而言，[GNU Compiler Collection使用](../Page/GCC.md "wikilink")*aclocal*，即使Makefile是手寫的。

就像autoconf，automake並非完全向下相容的。舉例而言，使用automake 1.4的專案可能不能使用automake 1.9。

## 方法

Automake目標是讓使用者透過高階語言來寫makefile，而不是透過純手工的方式來寫整個makefile。在簡單的情況下，它能提供：

  - source檔案的列表;
  - 傳給[編譯器](../Page/編譯器.md "wikilink")的command-line選項列表（比如標頭檔置於哪個路徑）;
  - 傳給[連結器的command](https://zh.wikipedia.org/wiki/連結器 "wikilink")-line選項列表（程式需要哪些程式庫以及它們的路徑）。

經由這些資訊，Automake產生makefile能夠讓使用者：

  - 編譯程式;
  - clean（清除，刪除編譯過程中所產生的檔案）;
  - 將程式安裝於標準路徑;
  - 將程式反安裝（從安裝的地方移除）;
  - create a source distribution archive (commonly called a tarball);
  - test that this archive is self-sufficient, and in particular that the program can be compiled in a directory other than the one where the sources are deployed.

### 依存性資訊的產生

Automake能夠自動生成依存性的資訊，因此，當一個source文件被修改，下次呼叫make命令的時候就會知道哪些source文件需要重新編譯。如果編譯器允許，Automake會試著讓依存性系統保持動態：無論何時source文件被編譯，都會要求編譯器重新產生依存性列表更新該文件的依存性。換句話說，依存性追蹤是編譯過程的一種邊際效應。

這企圖避免一些靜態依存性系統的問題，比如依存性只會在程式員開始專案時才會被偵測到。在這種情況下，如果源文件獲得一個新的依存性（例如，如果程式員增加了一個新的＃ include指令在[C語言的source文件](https://zh.wikipedia.org/wiki/C語言 "wikilink")），這樣在真實的依存性和編譯系統所使用的依存性之間就會產生差異。程式員應該重新產生依存性，但很有可能忘了那樣做。在一般情況下，automake透過隨附的[depcomp腳本生成依存性](https://zh.wikipedia.org/wiki/depcomp "wikilink")，這會適當的呼叫編譯器或是回到[makedepend](https://zh.wikipedia.org/wiki/makedepend "wikilink")。如果gcc編譯器的版本夠新的話，automake將會inline依存性生成碼，直接呼叫gcc。

### Libtool

Automake还可用来辅助库的编译，它可以自动生成调用[Libtool](../Page/Libtool.md "wikilink")的Makefile文件，从而使程序员避免了直接调用Libtool,而项目也可以从此可移植的库生成工具获益。

## 參見

  - [CMake](../Page/CMake.md "wikilink")
  - [qmake](https://zh.wikipedia.org/wiki/qmake "wikilink")
  - [imake](https://zh.wikipedia.org/wiki/imake "wikilink")
  - [Flowtracer](https://zh.wikipedia.org/wiki/Flowtracer "wikilink")

## 參考資料

  - Gary V. Vaughan, Ben Elliston, Tom Tromey: *Gnu Autoconf, Automake, and Libtool*, Sams, ISBN 1-57870-190-2

## 外部連結

  - [Automake home page](https://web.archive.org/web/20090618143105/http://sources.redhat.com/automake/)
  - [Online version of *The Goat Book* aka Autobook](http://sources.redhat.com/autobook/)
  - [Autotoolset home page](http://autotoolset.sourceforge.net/)
  - Article "[Using Automake and Autoconf with C++](https://web.archive.org/web/20060110134958/http://www.openismus.com/documents/linux/automake/automake.shtml)" by Murray Cumming

### 教材

  - Tutorial for beginners "[Autotools Tutorial](http://www.developingprogrammers.com/index.php/2006/01/05/autotools-tutorial/)" by Sarah George
  - Tutorial "[Learning Autoconf and Automake](https://web.archive.org/web/20060321205403/http://www.amath.washington.edu/~lf/tutorials/autoconf/)" by Eleftherios Gkioulekas
  - The "[Autotools Tutorial](http://www.lrde.epita.fr/~adl/autotools.html)" by Alexandre Duret-Lutz introduces [Autoconf](../Page/Autoconf.md "wikilink"), Automake, [Libtool](../Page/Libtool.md "wikilink"), and [Gettext](../Page/Gettext.md "wikilink").
  - [Learning the GNU Development tools](http://autotoolset.sourceforge.net/tutorial.html)

[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink") [Category:自动化构建](https://zh.wikipedia.org/wiki/Category:自动化构建 "wikilink") [Category:編譯工具](https://zh.wikipedia.org/wiki/Category:編譯工具 "wikilink")