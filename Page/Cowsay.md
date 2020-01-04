> 本文内容由[Cowsay](https://zh.wikipedia.org/wiki/Cowsay)转换而来。


**cowsay**是一个生成[ASCII](../Page/ASCII.md "wikilink")图片的程序，显示一头牛的消息。\[1\]它也可以使用预先制作的图像，以生成其他动物的图片，如Linux的吉祥物企鹅。由于它是用Perl编写的，它也适用于其他系统，如微软的Windows。还有一个相关的程序，名为**`cowthink`**，则为一头牛在思考，而不是说话。.cow文件能使cowsay产生不同样式的“牛”和“眼睛”等。\[2\]有时，[IRC](../Page/IRC.md "wikilink")、桌面截图和[软件文档](../Page/软件文档.md "wikilink")中会使用它。它更像[黑客文化中的玩笑](https://zh.wikipedia.org/wiki/黑客文化 "wikilink")，但一段时间后，它也较常被一般人使用。在2007年，它被选为[Debian](../Page/Debian.md "wikilink")的今日软件包。\[3\]

Cowsay和Cowthink是用[Perl](../Page/Perl.md "wikilink")[语言写成的](../Page/编程语言.md "wikilink")，正因为如此，它很容易用在[Unix系统任务上](https://zh.wikipedia.org/wiki/Unix "wikilink")，比如，告诉用户他们的主目录已满，或他们有新邮件等等。另外，它也可以适应[通用网关接口](../Page/通用网关接口.md "wikilink")。\[4\]

## 范例

Unix命令[`fortune`](https://zh.wikipedia.org/wiki/fortune_\(Unix\) "wikilink")也可用[管道重定向至](../Page/管道_\(Unix\).md "wikilink")`cowsay`命令：

    $ fortune | cowsay
     ________________________________________
    / You have Egyptian flu: you're going to \
    \ be a mummy.                            /
     ----------------------------------------
            \   ^__^
             \  (oo)_______
                (__)\       )\/\
                    ||----w |
                    ||     ||

（你得了埃及流感：变成一具木乃伊。）

使用参数`-f tux`可以把牛换成Linux吉祥物，[Tux](../Page/Tux.md "wikilink")：

    $ fortune | cowsay -f tux
     _________________________________________
    / You are only young once, but you can    \
    \ stay immature indefinitely.             /
     -----------------------------------------
       \
        \
            .--.
           |o_o |
           |:_/ |
          //   \ \
         (|     | )
        /'_   _/`\
        ___)=(___/

（年轻只有一次，但你可以永不成熟。）

## 参数

| 选项                 | 目的                                                                                                                                                                        |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| \-n                | 禁用[自动换行](../Page/自动换行.md "wikilink")，允许牛说[FIGlet](https://zh.wikipedia.org/wiki/FIGlet "wikilink")，或显示其他嵌入[ASCII艺术](../Page/ASCII艺术.md "wikilink")。列宽依最长的列，将会忽略*`-W`*'的值。 |
| \-W                | 指定[说话气球的列宽](https://zh.wikipedia.org/wiki/说话气球 "wikilink")，即等宽字体的字符数。默认值为40。                                                                                              |
|                    |                                                                                                                                                                           |
| \-b                | “[博格模式](../Page/博格_\(星际旅行\).md "wikilink")”，使用`==`代替`oo`作为牛的眼睛。                                                                                                           |
| \-d                | “死掉”的牛，使用`XX`，再加上下降的`U`代表被挤压的舌头。                                                                                                                                          |
| \-g                | “财迷”的牛，使用`$$`。                                                                                                                                                            |
| \-p                | “多疑”的牛，使用`@@`。                                                                                                                                                            |
| \-s                | “喝醉”的牛，使用`**`代表[眼红](https://zh.wikipedia.org/wiki/眼红 "wikilink")，再加上下降的`U`代表被挤压的舌头。                                                                                       |
| \-t                | “疲劳”的牛，使用`--`。                                                                                                                                                            |
| \-w                | “吃惊”的牛，使用`OO`。                                                                                                                                                            |
| \-y                | “小牛”，使用`..`代表小眼睛。                                                                                                                                                         |
|                    |                                                                                                                                                                           |
| \-e eye_string    | 手动指定牛眼形状，例如`cowsay -e ^^`（参见[颜文字](../Page/颜文字.md "wikilink")）。\[5\]                                                                                                       |
| \-T tongue_string | 手动指定牛舌形状，例如` cowsay -T  `\(\)指定一对[括号](../Page/括号.md "wikilink")。\[6\]                                                                                                     |
| \-f cowfile        | 指定一个.cow文件以加载另一种ASCII艺术。允许使用绝对路径或[环境变量](../Page/环境变量.md "wikilink")`COWPATH`的相对路径。                                                                                        |
| \-l                | 列出`COWPATH`文件夹中可用的cow文件名称，而不是显示一条信息。                                                                                                                                      |

## 参考

## 外部链接

  -
  - [Cowsay于ascii.gallery](https://web.archive.org/web/20150210173043/http://ascii.gallery/cowsay)

  - [Linux内核中的Cowsay](http://lxr.linux.no/source/arch/parisc/kernel/traps.c?v=2.6.11#L196)

  - [Cowsay的CGI前端](https://web.archive.org/web/20070116095630/http://www.linuxbox.co.uk/cowsay.php)

  - [X Window系统的图形化cowsay](http://www.doof.me.uk/xcowsay/)

  - [Cowsay for Android](https://market.android.com/details?id=ch.fixme.cowsay)

  -
  - [Pony的cowsay封装](https://github.com/erkin/ponysay)

  - [JavaScript版cowsay](http://lunicode.com/cowsay)

  - [R版cowsay](https://github.com/sckott/cowsay)

  - [pysay: cowsay in Python](https://github.com/nicolalamacchia/pysay)

[Category:ASCII艺术](https://zh.wikipedia.org/wiki/Category:ASCII艺术 "wikilink") [Category:用Perl编程的自由软件](https://zh.wikipedia.org/wiki/Category:用Perl编程的自由软件 "wikilink") [Category:自由Android软件](https://zh.wikipedia.org/wiki/Category:自由Android软件 "wikilink")

1.
2.
3.
4.
5.  在[C0控制符及基本拉丁文](https://zh.wikipedia.org/wiki/C0控制符及基本拉丁文 "wikilink")（U+0021–U+007E）外的字符将不会正确显示，因为这些参数只接受输入值的前两个字节。使用一个预定义的牛面孔将会覆盖**`-e`**和**`-T`**的任何值。
6.