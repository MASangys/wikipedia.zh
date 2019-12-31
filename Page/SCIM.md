> 本文内容由[SCIM](https://zh.wikipedia.org/wiki/SCIM)转换而来。


[Scim_logo.jpg](https://zh.wikipedia.org/wiki/File:Scim_logo.jpg "fig:Scim_logo.jpg") **SCIM**（**Smart Common Input Method**）是一個支援多國語言的[輸入法平台](https://zh.wikipedia.org/wiki/輸入法平台 "wikilink")，虽然它的设计着眼于**通用性**，但是鉴于Windows之类的桌面OS有较完整的原生机制，所以SCIM更多还是用在[UNIX](../Page/UNIX.md "wikilink")／[类UNIX环境中](https://zh.wikipedia.org/wiki/类UNIX "wikilink")。它曾經作爲多數[Linux](../Page/Linux.md "wikilink")[發行版中文默認輸入法](https://zh.wikipedia.org/wiki/發行版 "wikilink")。

## 簡介

[Scim-pinyin-weijibaike.png](https://zh.wikipedia.org/wiki/File:Scim-pinyin-weijibaike.png "fig:Scim-pinyin-weijibaike.png") SCIM的目標是建造一个通用的输入法开发平台，用以简化输入法的开发和维护。它擁有極清晰的結構和容易使用但功能強大的操作介 面。并包括完整的 XFree86 窗口系统输入法应用程序

SCIM使用[C++](../Page/C++.md "wikilink")[程式語言寫成](https://zh.wikipedia.org/wiki/程式語言 "wikilink")，它將輸入平台的介面分為數個不同的等級，而這些等級是互相獨立並且容易使用的。因此，開發者可以很容易寫出新的輸入法，而且只須數行程式碼。

SCIM有著高度[模組化的特徵](https://zh.wikipedia.org/wiki/模組化 "wikilink")，大部份組件皆可編譯為動態的可載入模組，所以可以如使用者所願隨時執行程式。舉例來說，為SCIM所寫的輸入方法為IMEngine模組，使用者可以使用這個模組配搭不同的[前端程式](https://zh.wikipedia.org/wiki/前端程式 "wikilink")，如[SKIM](https://web.archive.org/web/20060211055912/http://www.scim-im.org/projects/skim)來使用，這大大的方便了使用者。

SCIM對比[XIM或](https://zh.wikipedia.org/wiki/XIM "wikilink")[IIIMF使用較高級的程式庫](https://zh.wikipedia.org/wiki/IIIMF "wikilink")，所以擁有更容易使用的介面。而且可以與XIM或IIIMF並存。SCIM亦支援客製化的輸入法介面，如[GTK](../Page/GTK.md "wikilink")+2介面模組及[qt 介面模組](https://web.archive.org/web/20051122094536/http://immodule-qt.freedesktop.org/wiki/Software_2fimmodule_2dqt)。

[Scim_zh_smart_pinyin_summary.svg](https://zh.wikipedia.org/wiki/File:Scim_zh_smart_pinyin_summary.svg "fig:Scim_zh_smart_pinyin_summary.svg")

## 特點

  - 使用C++程式語言寫成，完全支援[物件導向](https://zh.wikipedia.org/wiki/物件導向 "wikilink")。
  - 高度模組化。
  - 可塑性極高的結構。
  - 簡單的使用介面。
  - 完全[國際化及支援](https://zh.wikipedia.org/wiki/國際化 "wikilink")[UCS-4](https://zh.wikipedia.org/wiki/UCS-4 "wikilink")／[UTF-8](../Page/UTF-8.md "wikilink")編碼。
  - 圖形使用者介面具有豐富的功能。
  - 統一的設定架構。

## 目標

  - 作為一個輸入法的前端介面，它正與[uim作整合](https://zh.wikipedia.org/wiki/uim "wikilink")，並提供[m17n](https://zh.wikipedia.org/wiki/m17n "wikilink")[程序庫](https://zh.wikipedia.org/wiki/程序庫 "wikilink")。
  - 同時使用IIIMF輸入法架構，因此亦可作為輸入法引擎。
  - 提供儘可能多的原生IMEngine。
  - 支持儘可能多的輸入法介面。
  - 支持儘可能多的作業系統。

## 配置方法

**如果您使用完整的Linux发行版，不必了解这一节的内容，直接使用Linux发行版提供的配置工具即可。只有因特殊原因您你不得不亲自配置的时候才需要阅读。**

SCIM本身基本不用配置，默认参数在绝大多数情况下能够正常工作。如需配置，可以使用四个配置模块中的任意一个完成——gconf, simple, socket 和 dummy， 默认使用simple。

如果X11客户端进程需要使用SCIM输入服务，就要配置这个进程的[环境变量](../Page/环境变量.md "wikilink")**XMODIFIERS** export XMODIFIERS="@im=SCIM"

## 命令行参数

如果您使用完整的Linux发行版，不必了解这一节的内容，Linux发行版会自动按照恰当的方式启动SCIM。只有因特殊原因您你不得不亲自配置的时候才需要阅读。

| 参数                     | 目的                                                                                                        |
| ---------------------- | --------------------------------------------------------------------------------------------------------- |
| \-h,--help             | 显示简单的帮助                                                                                                   |
| \-d,--daemon           | 以后台进程形式运行                                                                                                 |
| \-l,--list             | 列出所有可用的模块                                                                                                 |
| \-f,--frontend name    | 运行指定的前端模块（缺省运行 x11 前端）                                                                                    |
| \-c,--config name      | 使用指定的配置模块（缺省使用 simple 模块）                                                                                 |
| \-e,--engines name     | 仅调入指定的输入法引擎模块（缺省调入所有输入法引擎模块），多个模块可以用逗号隔开                                                                  |
| \-ne,--no-engines name | 不调入指定的输入法引擎模块                                                                                             |
| \--no-socket           | 不启动独立的 Socket 前端进程。缺省情况下，SCIM 会首先启动一个独立的 Socket 前端守护进程来提供输入法服务，然后再启动实际的 SCIM 进程。如果已经指定使用 socket 前端，则该选项无效 |

## 參閱

  - [iBus](https://zh.wikipedia.org/wiki/iBus "wikilink")
  - [Fcitx](../Page/Fcitx.md "wikilink")

## 參考資料

  - [Multilanguage Blending SCIM Input Method System Based on Linux](http://en.cnki.com.cn/Article_en/CJFDTOTAL-DNZS200635096.htm)
  - [CJKV Information Processing](https://books.google.com.tw/books?id=SA92uQqTB-AC&pg=PA851&dq=Smart+Common+Input+Method&hl=zh-TW&sa=X&ei=k98xVfOEFaL3mQXZ3YDIDw&ved=0CCAQ6AEwAA#v=onepage&q=Smart%20Common%20Input%20Method&f=false)

## 外部連結

  - [SCIM的主頁](http://www.scim-im.org)
  - [SCIM在sourceforge.net的計劃介紹和下載頁](http://sourceforge.net/projects/scim)
  - [SCIM在freedesktop计划中的介绍网页](https://web.archive.org/web/20080723162326/http://scim.freedesktop.org/)

[Category:SourceForge专案](https://zh.wikipedia.org/wiki/Category:SourceForge专案 "wikilink") [Category:中文輸入法平台](https://zh.wikipedia.org/wiki/Category:中文輸入法平台 "wikilink")