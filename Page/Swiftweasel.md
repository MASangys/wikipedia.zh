> 本文内容由[Swiftweasel](https://zh.wikipedia.org/wiki/Swiftweasel)转换而来。


**Swiftweasel**是一個[Mozilla Firefox的衍生版本](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")，不過並未使用其標誌。它為各個硬體平台進行了優化，目前為止只在Linux上可用。

Swiftweasel在[Mozilla Public License許可協議下釋出](https://zh.wikipedia.org/wiki/Mozilla_Public_License "wikilink")，是一個[自由軟體](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")。

## 優化

Swiftweasel使用下面的方法進行優化：

**二進位代碼優化**

  - 使用相關編譯選項，優化速度，而非二進位包的尺寸。
      - Swiftweasel被編譯時使用-O3,\[1\]（最高階）
          - 導致的結果是Swiftweasel比Firefox要大。
      - Firefox被编译时使用 -Os\[2\]（为了二进制包的尺寸\[3\]）。
  - [Binaries](https://zh.wikipedia.org/wiki/Binary_file "wikilink") incorporate additional [instruction sets](https://zh.wikipedia.org/wiki/instruction_set "wikilink").\[4\]
      - [Intel](https://zh.wikipedia.org/wiki/Intel "wikilink") and [AMD](https://zh.wikipedia.org/wiki/AMD "wikilink")：[SSE](https://zh.wikipedia.org/wiki/Streaming_SIMD_Extensions "wikilink")，[SSE2](../Page/SSE2.md "wikilink")，[SSE3](../Page/SSE3.md "wikilink")，and [MMX](https://zh.wikipedia.org/wiki/MMX_\(instruction_set\) "wikilink")\[5\].
      - [AMD](https://zh.wikipedia.org/wiki/AMD "wikilink") only: [3DNow\!](../Page/3DNow!.md "wikilink")
  - 给予构建微处理器架构特别优化。\[6\]
      - [Intel](https://zh.wikipedia.org/wiki/Intel "wikilink") 32bit: [Pentium 4](https://zh.wikipedia.org/wiki/Pentium_4 "wikilink")，[Pentium 3](https://zh.wikipedia.org/wiki/Pentium_III "wikilink")，[Pentium M](https://zh.wikipedia.org/wiki/Pentium_M "wikilink")，[Pentium 3M](https://zh.wikipedia.org/wiki/Pentium_III "wikilink")，[Pentium 2](https://zh.wikipedia.org/wiki/Pentium_2 "wikilink")，[Prescott](https://zh.wikipedia.org/wiki/Pentium_4#Prescott "wikilink")。
      - [Intel](https://zh.wikipedia.org/wiki/Intel "wikilink") 64bit: [Nocona](https://zh.wikipedia.org/wiki/List_of_Intel_Xeon_microprocessors "wikilink")
      - [AMD](https://zh.wikipedia.org/wiki/AMD "wikilink")：[Athlon XP](https://zh.wikipedia.org/wiki/Athlon_XP "wikilink")，[Athlon](https://zh.wikipedia.org/wiki/Athlon "wikilink")，[K6-2](https://zh.wikipedia.org/wiki/K6-2 "wikilink")，[Athlon](https://zh.wikipedia.org/wiki/Athlon "wikilink")。
      - [AMD64](https://zh.wikipedia.org/wiki/AMD64 "wikilink")：[Athlon64](https://zh.wikipedia.org/wiki/Athlon64 "wikilink")，[Opteron](../Page/Opteron.md "wikilink")
  - 编译使用新版本的[GCC](https://zh.wikipedia.org/wiki/GNU_Compiler_Collection "wikilink")（Firefox 2.0使用3.3.2, Swiftweasel 2.0使用4.0.3）.\[7\]

**增加安全性**

  - 更好地防止[Buffer overflow攻击](https://zh.wikipedia.org/wiki/Buffer_overflow "wikilink")\[8\]（Swiftweasel 2.0使用-D_FORTIFY_SOURCE=2; Firefox 2.0使用gcc 3.x的并不支持）。\[9\]

**简化**

  - [IPv6](../Page/IPv6.md "wikilink") [DNS检查被取消](https://zh.wikipedia.org/wiki/Domain_name_system "wikilink")。\[10\]防止减速。\[11\]
  - [HTTP pipelining默认被开启](https://zh.wikipedia.org/wiki/HTTP_pipelining "wikilink")。\[12\]另外[Fasterfox提供一个](https://zh.wikipedia.org/wiki/Fasterfox "wikilink")[GUI调整这些设置](https://zh.wikipedia.org/wiki/GUI "wikilink")。
  - 为了全部的详细资料，用户可以[下载源代码包](http://sourceforge.net/project/showfiles.php?group_id=195473)附带全部修改的名单。

## 预装的扩展

Swiftweasel默认预装了几个[扩展](https://zh.wikipedia.org/wiki/扩展_\(Mozilla\) "wikilink")\[13\].

  - [XForms](../Page/XForms.md "wikilink")
  - [Adblock Plus](../Page/Adblock_Plus.md "wikilink")
  - [User Agent Switcher](http://chrispederick.com/work/user-agent-switcher/)
  - [Quick Locale Switcher](https://web.archive.org/web/20080117230837/http://www.captaincaveman.nl/default.aspx?id=firefox_extensions&subid=quick_locale_switcher)

## Swiftweasel专有的改变

Swiftweasel做的改变包括：

  - 默认的图标已经被[Kempelton](http://arvidaxelsson.se/kempelton/)图标集所替换。
  - Swiftweasel使用了它自己的设置目录。这些设置所括收藏夹，历史和扩展将在首次使用时从[Mozilla Firefox导入](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")。
  - 存储在/lib/mozilla/plugins和/lib/firefox/plugins的插件将被Swiftweasel所使用。

## Swiftdove

Swiftweasel工程同样也编译了为32和64位优化过和[Thunderbird邮件客户端](../Page/Mozilla_Thunderbird.md "wikilink")。Swiftdove默认包含了[Lightning](../Page/Lightning.md "wikilink")日历插件。

## 参阅

  - [Mozilla Firefox](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")
  - [Iceweasel](../Page/Iceweasel.md "wikilink") - Another version of Firefox which is made of entirely free, [as in speech and beer](https://zh.wikipedia.org/wiki/Gratis_versus_Libre "wikilink")，content.
  - [Swiftfox](https://zh.wikipedia.org/wiki/Swiftfox "wikilink") - Swiftfox是一个免费下载，并经过适当优化的Firefox。

## 参考列表

## 外部链接

  - [Swiftweasel site](http://swiftweasel.tuxfamily.org/)
  - [Swiftweasel on Softpedia](http://linux.softpedia.com/get/Internet/HTTP-WWW-/Swiftweasel-27709.shtml)
  - [Swiftweasel on Freshmeat](http://freshmeat.net/projects/swiftweasel/?branch_id=69657&release_id=255162)
  - [Geektank Review](http://www.geektank.net/2007/06/24/swiftweasel-2-0-0-4-1-default-branch)
  - [Software Headlines](http://www.softwareheadlines.com/modules/planet/view.article.php/241926)
  - [Installed by Automatix](https://web.archive.org/web/20080617021153/http://getautomatix.com/wiki/index.php?title=Software_and_Tweaks)

[Category:網頁瀏覽器](https://zh.wikipedia.org/wiki/Category:網頁瀏覽器 "wikilink") [Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink") [Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")

1.  Using url of *<about:buildconfig>* to check the details of the all builds
2.  Using url of *<about:buildconfig>* to check the details of the 2.0 builds
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.