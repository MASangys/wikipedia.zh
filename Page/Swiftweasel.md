**Swiftweasel**是一個[Mozilla
Firefox的衍生版本](../Page/Mozilla_Firefox.md "wikilink")，不過並未使用其標誌。它為各個硬體平台進行了優化，目前為止只在Linux上可用。

Swiftweasel在[Mozilla Public
License許可協議下釋出](../Page/Mozilla_Public_License.md "wikilink")，是一個[自由軟體](../Page/自由軟體.md "wikilink")。

## 優化

Swiftweasel使用下面的方法進行優化：

**二進位代碼優化**

  - 使用相關編譯選項，優化速度，而非二進位包的尺寸。
      - Swiftweasel被編譯時使用-O3,\[1\]（最高階）
          - 導致的結果是Swiftweasel比Firefox要大。
      - Firefox被编译时使用 -Os\[2\]（为了二进制包的尺寸\[3\]）。
  - [Binaries](../Page/Binary_file.md "wikilink") incorporate additional
    [instruction sets](../Page/instruction_set.md "wikilink").\[4\]
      - [Intel](../Page/Intel.md "wikilink") and
        [AMD](../Page/AMD.md "wikilink")：[SSE](../Page/Streaming_SIMD_Extensions.md "wikilink")，[SSE2](../Page/SSE2.md "wikilink")，[SSE3](../Page/SSE3.md "wikilink")，and
        [MMX](../Page/MMX_\(instruction_set\).md "wikilink")\[5\].
      - [AMD](../Page/AMD.md "wikilink") only:
        [3DNow\!](../Page/3DNow!.md "wikilink")
  - 给予构建微处理器架构特别优化。\[6\]
      - [Intel](../Page/Intel.md "wikilink") 32bit: [Pentium
        4](../Page/Pentium_4.md "wikilink")，[Pentium
        3](../Page/Pentium_III.md "wikilink")，[Pentium
        M](../Page/Pentium_M.md "wikilink")，[Pentium
        3M](../Page/Pentium_III.md "wikilink")，[Pentium
        2](../Page/Pentium_2.md "wikilink")，[Prescott](../Page/Pentium_4#Prescott.md "wikilink")。
      - [Intel](../Page/Intel.md "wikilink") 64bit:
        [Nocona](../Page/List_of_Intel_Xeon_microprocessors.md "wikilink")
      - [AMD](../Page/AMD.md "wikilink")：[Athlon
        XP](../Page/Athlon_XP.md "wikilink")，[Athlon](../Page/Athlon.md "wikilink")，[K6-2](../Page/K6-2.md "wikilink")，[Athlon](../Page/Athlon.md "wikilink")。
      - [AMD64](../Page/AMD64.md "wikilink")：[Athlon64](../Page/Athlon64.md "wikilink")，[Opteron](../Page/Opteron.md "wikilink")
  - 编译使用新版本的[GCC](../Page/GNU_Compiler_Collection.md "wikilink")（Firefox
    2.0使用3.3.2, Swiftweasel 2.0使用4.0.3）.\[7\]

**增加安全性**

  - 更好地防止[Buffer
    overflow攻击](../Page/Buffer_overflow.md "wikilink")\[8\]（Swiftweasel
    2.0使用-D_FORTIFY_SOURCE=2; Firefox 2.0使用gcc 3.x的并不支持）。\[9\]

**简化**

  - [IPv6](../Page/IPv6.md "wikilink")
    [DNS检查被取消](../Page/Domain_name_system.md "wikilink")。\[10\]防止减速。\[11\]
  - [HTTP
    pipelining默认被开启](../Page/HTTP_pipelining.md "wikilink")。\[12\]另外[Fasterfox提供一个](../Page/Fasterfox.md "wikilink")[GUI调整这些设置](../Page/GUI.md "wikilink")。
  - 为了全部的详细资料，用户可以[下载源代码包](http://sourceforge.net/project/showfiles.php?group_id=195473)附带全部修改的名单。

## 预装的扩展

Swiftweasel默认预装了几个[扩展](../Page/扩展_\(Mozilla\).md "wikilink")\[13\].

  - [XForms](../Page/XForms.md "wikilink")
  - [Adblock Plus](../Page/Adblock_Plus.md "wikilink")
  - [User Agent
    Switcher](http://chrispederick.com/work/user-agent-switcher/)
  - [Quick Locale
    Switcher](https://web.archive.org/web/20080117230837/http://www.captaincaveman.nl/default.aspx?id=firefox_extensions&subid=quick_locale_switcher)

## Swiftweasel专有的改变

Swiftweasel做的改变包括：

  - 默认的图标已经被[Kempelton](http://arvidaxelsson.se/kempelton/)图标集所替换。
  - Swiftweasel使用了它自己的设置目录。这些设置所括收藏夹，历史和扩展将在首次使用时从[Mozilla
    Firefox导入](../Page/Mozilla_Firefox.md "wikilink")。
  - 存储在/lib/mozilla/plugins和/lib/firefox/plugins的插件将被Swiftweasel所使用。

## Swiftdove

Swiftweasel工程同样也编译了为32和64位优化过和[Thunderbird邮件客户端](../Page/Mozilla_Thunderbird.md "wikilink")。Swiftdove默认包含了[Lightning日历插件](../Page/Lightning.md "wikilink")。

## 参阅

  - [Mozilla Firefox](../Page/Mozilla_Firefox.md "wikilink")
  - [Iceweasel](../Page/Iceweasel.md "wikilink") - Another version of
    Firefox which is made of entirely free, [as in speech and
    beer](../Page/Gratis_versus_Libre.md "wikilink")，content.
  - [Swiftfox](../Page/Swiftfox.md "wikilink") -
    Swiftfox是一个免费下载，并经过适当优化的Firefox。

## 参考列表

## 外部链接

  - [Swiftweasel site](http://swiftweasel.tuxfamily.org/)
  - [Swiftweasel on
    Softpedia](http://linux.softpedia.com/get/Internet/HTTP-WWW-/Swiftweasel-27709.shtml)
  - [Swiftweasel on
    Freshmeat](http://freshmeat.net/projects/swiftweasel/?branch_id=69657&release_id=255162)
  - [Geektank
    Review](http://www.geektank.net/2007/06/24/swiftweasel-2-0-0-4-1-default-branch)
  - [Software
    Headlines](http://www.softwareheadlines.com/modules/planet/view.article.php/241926)
  - [Installed by
    Automatix](https://web.archive.org/web/20080617021153/http://getautomatix.com/wiki/index.php?title=Software_and_Tweaks)

[Category:網頁瀏覽器](https://zh.wikipedia.org/wiki/Category:網頁瀏覽器 "wikilink")
[Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink")
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")

1.  Using url of *<about:buildconfig>* to check the details of the all
    builds

2.  Using url of *<about:buildconfig>* to check the details of the 2.0
    builds

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