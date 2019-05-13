**indent**是一個自[Unix時代就已經存在的](../Page/Unix.md "wikilink")[工具程式](../Page/軟體開發工具.md "wikilink")，可依使用者自行定義的[程式設計風格重新縮排成](../Page/程序风格.md "wikilink")[C和](../Page/C语言.md "wikilink")[C++程式碼的樣式](../Page/C++.md "wikilink")。至於對C++的支援則被認為是實驗性的。

## 使用範例

[命令列](../Page/命令列介面.md "wikilink")

`indent somefile.c -st -bad—blank-lines-after-procedures -bli0 -i4 -l79 \`
`-ncs -npcs -nut -npsl -fca -lc79 -fc1`

將`somefile.c`的樣式縮排成像[BSD/Allman樣式](../Page/縮排樣式#Allman樣式_\(Emacs的BSD\).md "wikilink")，然後將結果寫到[標準輸出](../Page/標準串流#標準輸出_\(stdout\).md "wikilink")。

## GNU indent

{{ infobox software | name = GNU indent | logo =
[Heckert_GNU_white.svg](https://zh.wikipedia.org/wiki/File:Heckert_GNU_white.svg "fig:Heckert_GNU_white.svg")
| caption = | author = David Ingamells, Carlo Wood, Joseph Arceneaux,
Jim Kingdon, John Bridges | released = | programming_language = C |
developer = FSF | latest_release_version = 2.2.9 |
latest_release_date = 2002年12月19日 | latest_preview_version = |
latest_preview_date = | operating_system =
[跨平台](../Page/跨平台.md "wikilink") | genre = 程式源碼樣式整理工具 |
license = [GPL](../Page/GNU通用公共許可證.md "wikilink") | website =
<http://www.gnu.org/software/indent/> | status = }}

GNU indent是indent的[GNU計畫版本](../Page/GNU計畫.md "wikilink")，不過，GNU
indent使用[GNU樣式做為樣式的預設值](../Page/縮排樣式#GNU樣式.md "wikilink")。

## 外部連結

  - [GNU indent首頁](http://www.gnu.org/software/indent/)
  - [1](http://www.linuxmanpages.com/man1/indent.1.php)
    indent的[man說明頁](../Page/man說明頁.md "wikilink")

[de:Astyle](../Page/de:Astyle.md "wikilink")

[Category:GNU](https://zh.wikipedia.org/wiki/Category:GNU "wikilink")
[Category:GNU計劃軟體](https://zh.wikipedia.org/wiki/Category:GNU計劃軟體 "wikilink")
[Category:Unix软件](https://zh.wikipedia.org/wiki/Category:Unix软件 "wikilink")