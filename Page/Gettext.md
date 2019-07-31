**gettext**是[GNU](../Page/GNU.md "wikilink")[国际化与本地化](../Page/国际化与本地化.md "wikilink")（i18n）函数库。它常被用于编写多语言程序。

## 开发

程序源代码需要进行修改以响应GNU gettext请求。多数[编程语言](../Page/编程语言.md "wikilink")均已通过字符封装的方式实现了对其的支持。为了减少输入量和代码量，此功能通常以标记[别名](https://zh.wikipedia.org/wiki/别名 "wikilink")“_”的形式使用，所以例如以下[C语言代码](https://zh.wikipedia.org/wiki/C语言 "wikilink")：

``` c
printf(gettext("My name is %s.\n"), my_name);
```

应当写作：

``` c
printf(_("My name is %s.\n"), my_name);
```

gettext使用其中的字符串寻找对应的其他语言翻译，若没有可用翻译则返回原始内容。

除[C语言外](https://zh.wikipedia.org/wiki/C语言 "wikilink"), GNU gettext还支持[C++](../Page/C++.md "wikilink")，[Objective-C](../Page/Objective-C.md "wikilink")，[Pascal](https://zh.wikipedia.org/wiki/Pascal语言 "wikilink")/[Object Pascal](../Page/Object_Pascal.md "wikilink")，[sh脚本](../Page/Bourne_shell.md "wikilink")，[bash脚本](https://zh.wikipedia.org/wiki/bash "wikilink")，[Python](https://zh.wikipedia.org/wiki/Python语言 "wikilink")，GNU [CLISP](https://zh.wikipedia.org/wiki/CLISP "wikilink")，[Emacs Lisp](../Page/Emacs_Lisp.md "wikilink")，librep，GNU [Smalltalk](../Page/Smalltalk.md "wikilink")，[Java](https://zh.wikipedia.org/wiki/Java语言 "wikilink")，GNU [awk](../Page/AWK.md "wikilink")，[wxWidgets](https://zh.wikipedia.org/wiki/wxWidgets "wikilink")（通过wxLocale类），YCP（[YaST2语言](https://zh.wikipedia.org/wiki/YaST2 "wikilink")），[Tcl](../Page/Tcl.md "wikilink")，[Perl](../Page/Perl.md "wikilink")，[PHP](../Page/PHP.md "wikilink")，[Pike](https://zh.wikipedia.org/wiki/Pike语言 "wikilink")，[Ruby以及](https://zh.wikipedia.org/wiki/Ruby语言 "wikilink")[R](../Page/R语言.md "wikilink")。用法均与在[C语言上类似](https://zh.wikipedia.org/wiki/C语言 "wikilink")。

xgettext程序从源代码生成**.pot**文件，作为源代码中需翻译内容的模板。一个典型的.pot文件条目应当是这样的：

``` gettext
#: src/name.c:36
msgid "My name is %s.\n"
msgstr ""
```

[注释被直接放置在字符串前](https://zh.wikipedia.org/wiki/注释 "wikilink")，用于帮助翻译者理解待翻译内容：

``` c
/// TRANSLATORS: Please leave %s as it is, because it is needed by the program.
/// Thank you for contributing to this project.
printf(_("My name is %s.\n"), my_name);
```

本例中的注释是以 **///**开头的，其作用是用于xgettext程序生成.pot模板文件。

``` bash
xgettext --add-comments=///
```

在.pot文件中的注释应为以下形式：

``` gettext
#. TRANSLATORS: Please leave %s as it is, because it is needed by the program.
#. Thank you for contributing to this project.
#: src/name.c:36
msgid "My name is %s.\n"
msgstr ""
```

## 翻译

翻译者需要工作的对象是**.po**文件，它是由`msginit`程序从.pot模板文件生成的。例如使用`msginit`初始化法语翻译文件时，我们运行以下命令：

``` bash
msginit --locale=fr --input=name.pot
```

这将会使用指定的name.pot在当前目录创建一个fr.po，其中的一个条目应该是以下形式的：

``` gettext
#: src/name.c:36
msgid "My name is %s.\n"
msgstr ""
```

翻译者需要手工或使用类似[Poedit](../Page/Poedit.md "wikilink")、[gtranslator](https://zh.wikipedia.org/wiki/gtranslator "wikilink")、[OmegaT](../Page/OmegaT.md "wikilink")或[Emacs](../Page/Emacs.md "wikilink")等工具的相应模式编辑该文件。翻译完成后，文件应为如下的样子：

``` gettext
#: src/name.c:36
msgid "My name is %s.\n"
msgstr "Je m'appelle %s.\n"
```

最后.po文件需要使用**`msgfmt`**编译为**.mo**文件以用作发布。

## 執行

使用[Unix类型操作系统的用户只需设置](https://zh.wikipedia.org/wiki/Unix "wikilink")[环境变量](../Page/环境变量.md "wikilink")中的`LC_MESSAGES(但是ubuntu linux 是用LANG)`，程序将自动从相应的`.mo`文件中读取语言信息。

## 参考

## 另见

  - [国际化和本地化](https://zh.wikipedia.org/wiki/国际化和本地化 "wikilink")
  - [翻译工具](https://zh.wikipedia.org/wiki/翻译工具 "wikilink")

## 外部链接

  - [Gettext主页](http://www.gnu.org/software/gettext/gettext.html)
  - [使用gettext本地化PHP网站](http://mel.melaxis.com/devblog/2005/08/06/localizing-php-web-sites-using-gettext/) - 解些和示例。
  - [Gettext Commons - Java gettext工具集](http://code.google.com/p/gettext-commons/)
  - [Autotools教程](http://www.lrde.epita.fr/~adl/autotools.html)
  - [gted - GetText EDitor和工具集成](https://web.archive.org/web/20181001050711/http://www.gted.org/)
  - [Gorm PO文件编辑器](http://gorm.po.dk/)
  - \[<http://msdn.microsoft.com/en-us/library/windows/desktop/ms647486(v=vs.85>).aspx Windows 下的对应函数为 LoadString，直接读取适合当前 locale/lcid 设置的资源字符串\]

[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink") [Category:翻译](https://zh.wikipedia.org/wiki/Category:翻译 "wikilink")