在[软件开发中](https://zh.wikipedia.org/wiki/软件开发 "wikilink")，**make**是一个工具程式（Utility software），經由讀取叫做“[makefile](https://zh.wikipedia.org/wiki/makefile "wikilink")”的文件，[自動化建構軟體](https://zh.wikipedia.org/wiki/自動化建構 "wikilink")。它是一種转化文件形式的工具，转换的目标称为“target”；与此同时，它也检查文件的依赖关系，如果需要的话，它会调用一些外部软件来完成任务。它的依赖关系检查系统非常简单，主要根据依赖文件的修改时间进行判断。大多数情况下，它被用来[编译](https://zh.wikipedia.org/wiki/编译 "wikilink")[源代码](../Page/源代码.md "wikilink")，生成[结果代码](../Page/目标代码.md "wikilink")，然后把结果代码连接起来生成[可执行文件或者](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")[库文件](https://zh.wikipedia.org/wiki/库文件 "wikilink")。它使用叫做“makefile”的文件来确定一个target文件的依赖关系，然后把生成这个target的相关命令传给shell去执行。

許多現代軟體的開發中（如[Microsoft Visual Studio](../Page/Microsoft_Visual_Studio.md "wikilink")），[集成开发环境](../Page/集成开发环境.md "wikilink")已經取代make，但是在Unix環境中，仍然有許多工程師採用make來協助軟體開發。

## 起源

目前虽有众多依赖关系检查工具，但是make是应用最广泛的一个。这要归功于它被包含在[Unix系统中](https://zh.wikipedia.org/wiki/Unix "wikilink")。\[1\][斯圖亞特·費爾德曼在](https://zh.wikipedia.org/wiki/斯圖亞特·費爾德曼 "wikilink")1977年在[贝尔实验室](../Page/贝尔实验室.md "wikilink")里制作了这个软件。\[2\]\[3\]\[4\]2003年，斯圖亞特·費爾德曼因发明了这样一个重要的工具而接受了[美国计算机协会](https://zh.wikipedia.org/wiki/美国计算机协会 "wikilink")（ACM）颁发的软件系统奖。\[5\]

在make诞生之前，编译工作主要依赖于操作系统里面的类似于“make”、“install”功能的shell[脚本](https://zh.wikipedia.org/wiki/腳本語言 "wikilink")。它可以批量执行生成目标的命令，并且可以完成依赖关系的检查。这是向现代编译环境发展的重要一步。

## 不同版本

make程序已被使用者多次重/改寫，其中包括幾次用相同的文件格式和算法原理重新編寫，並且依照不同需要添加了一些不常見的改良。

### [GNU](../Page/GNU.md "wikilink") make

[GNU](../Page/GNU.md "wikilink") make仿照make的標準功能（透過clean-room工程）重新改寫，並加入作者覺得值得加入的新功能，常和[GNU](../Page/GNU.md "wikilink")編譯系統一起被使用，是大多數[GNU](../Page/GNU.md "wikilink") Linux安裝的一部分。

### [BSD](../Page/BSD.md "wikilink") make

是從Adam de Boor的製作的版本上發展成的。它編譯目標的時候有並行計算的能力。它在[FreeBSD](../Page/FreeBSD.md "wikilink")，[NetBSD](../Page/NetBSD.md "wikilink")和[OpenBSD](../Page/OpenBSD.md "wikilink")中不同程度的修改下存活了下來。

### Microsoft nmake

廣泛應用於[微軟的](https://zh.wikipedia.org/wiki/微軟 "wikilink")[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")，[微軟的nmake是](https://zh.wikipedia.org/wiki/微軟 "wikilink") Visual Studio 随附的命令行工具，不要與來自[AT\&T](../Page/AT&T.md "wikilink")和[貝爾實驗室的Unix系統nmake混淆](https://zh.wikipedia.org/wiki/貝爾實驗室 "wikilink")。

## 优点和缺点

就像其他和make有着悠久历史的软件一样，make有着很多的拥护者和反对者。它的很多问题因现代大型的软件项目的出现而暴露出来。但是很多人争论说它在常见的情况下可以很好的工作，而且使用非常的简单，功能强大，表达清楚。无论如何，make仍然被用来编译很多完整的[操作系统](../Page/操作系统.md "wikilink")，而且现在替代品们在基本的操作上与它没有太大差别。

随着现代的[集成开发环境](../Page/集成开发环境.md "wikilink")（IDE）的诞生，特别是非Unix的平台上，很多程序员不再手动管理依靠关系检查，甚至不用去管哪些文件是这个项目的一部分，而是把这些任务交给了他们的开发环境去做。类似的，很多现代的编程语言有自己特别的高效的依赖关系的设置方法。

## Makefile

### 规则

makefile的格式是：

`   # 用“#”号表明注释。`
`   target（要生成的文件）: dependencies（被依赖的文件）`
`       # 命令前面用的是“tab”而非空格。误用空格是初学者容易犯的错误！`
`   ``命令1`
`   ``命令2`
`   ``命令3`
`         .`
`         .`
`         .`
`   ``命令n`
`   # 可以使用“\”表示续行。注意，“\”之后不能有空格！`

  - target通常是我们要生成的文件的名字，摆放的顺序不重要，但第一个target是默认的target。当make不带参数时，自动执行第一个target。target也可以是要求make完成的动作，执行这种target后并不能得到和target同名的文件，因此，也称为伪target(phony target)。
  - dependencies是生成target所需的文件名列表。依赖可以为空，常用的“clean”target就常常没有依赖，只有命令。
  - 命令可以是任何一个shell能运行的命令。

### 示例

举例来说明makefile的结构和make如何运作。

``` make
editor: main.o text.o
    gcc -o editor main.o text.o
main.o: main.c def.h
    gcc -c main.c
text.o: text.c com.h
    gcc -c text.c
install:editor
    mv editor /usr/local
```

当我们输入：

    <nowiki>
    make
    或者
    make editor
    </nowiki>

当editor这个target文件不存在，或者main.o、text.o这两个依赖文件被修改，都会导致make调用其下的命令“gcc -o editor main.o text.o”；接下来，由于引用到main.o和text.o，make会检查main.o的依赖main.c、def.h有无更新，如果有，则执行其下的命令“gcc -c main.c”；同样的道理，也适用于text.o。 于是，可有几种不同的输出：

  - 第一次运行：

<!-- end list -->

    <nowiki>
    gcc -c main.c
    gcc -c text.c
    gcc -o editor main.o text.o
    </nowiki>

  - main.c或/和def.h有修改：

<!-- end list -->

    <nowiki>
    gcc -c main.c
    gcc -o editor main.o text.o
    </nowiki>

  - text.c或/和com.h有修改：

<!-- end list -->

    <nowiki>
    gcc -c text.c
    gcc -o editor main.o text.o
    </nowiki>

  - main.c和text.c均有修改：

<!-- end list -->

    <nowiki>
    gcc -c main.c
    gcc -c text.c
    gcc -o editor main.o text.o
    </nowiki>

当我们输入：

    <nowiki>
    make install
    </nowiki>

make会检查install的依赖editor是否是最新，如果是，则执行其下的命令“mv editor /usr/local”。由于这个过程并没有产生名为“install”的文件，所以，install是一个假目标。

### [巨集](../Page/巨集.md "wikilink")

“巨集”指的是用一个字符串代替另一个字符串的功能。在makefile中可以使用“=”号来定义巨集，使用“$（巨集名）”来使用巨集；还可以用“+=”追加巨集的内容。习惯上，巨集名使用大写。承接上面的例子：

``` make
OBJECTS = main.o text.o
INSTALL_PATH = /usr/local
editor: $(OBJECTS)
    gcc -o editor $(OBJECTS)
main.o: main.c
    gcc -c main.c
text.o: text.c
    gcc -c text.c
install:editor
    mv editor $(INSTALL_PATH)
```

## 参见

  - [Apache Ant](../Page/Apache_Ant.md "wikilink")
  - [CMake](../Page/CMake.md "wikilink")

## 参考资料

## 外部链接

  - [GNU Make官方网站](https://www.gnu.org/software/make/)
  - [GNU make中文手册](https://web.archive.org/web/20081205025958/http://www.linuxsir.org/main/doc/gnumake/GNUmake_v3.80-zh_CN_html/index.html)
  - [跟我一起写Makefile](https://seisman.github.io/how-to-write-makefile/index.html)

[Category:Unix软件](https://zh.wikipedia.org/wiki/Category:Unix软件 "wikilink")

[Category:程序设计工具](https://zh.wikipedia.org/wiki/Category:程序设计工具 "wikilink") [Category:自动化构建](https://zh.wikipedia.org/wiki/Category:自动化构建 "wikilink") [Category:編譯工具](https://zh.wikipedia.org/wiki/Category:編譯工具 "wikilink")

1.

2.

3.

4.
5.