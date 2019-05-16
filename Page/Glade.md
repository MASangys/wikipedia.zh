***'Glade**界面設計工具*'是[GTK+的視覺化使用者界面設計工具](../Page/GTK.md "wikilink"),同時也提供了[GNOME的元件](../Page/GNOME.md "wikilink")。在第三個版本裡，Glade已經與[编程语言無關](../Page/编程语言.md "wikilink")，並且不產生事件的相關代碼，但是，還是可以藉著[XML檔案來作程式碼的繫結](../Page/XML.md "wikilink")（像gtkada就是用在Ada程式語言上）。

Glade已歷經了三個版本，一個是給GTK+ 1用的，其他兩個則是給GTK+
2用的。Glade是以[GNU通用公共许可证所發行的](../Page/GNU通用公共许可证.md "wikilink")[自由软件](../Page/自由软件.md "wikilink")。

## 歷史與開發

第一版的Glade 0.1，在1998年4月18日釋出。

Glade 3則是在2006年8月12日釋出。根據Glade網站，對終端使用者來說，最大的不同有：

  - 所有動作都可以復原與重作。
  - 支援多個已開啟的專案。
  - 不再產生代碼。
  - 與Devhelp結合的語境求助系統。

更大的不同則是在內部。Glade-3完全改寫，改寫是為了要能更好地利用GTK+ 2與GObject系統 (當Glade-2還沒移植到GTK+
2時，Glade-3就開始了)。然而Glade-3的代碼庫卻來的更小，並且允許許多新的東西，這些東西包含了：

  - 可被安插的Widget型錄。意指其他的函式庫可以動態提供widget，而Glade將可以自動偵測到這些widget。

事實上，Glade 3只提供標準的GTK+ widgets；GNOME UI和DB widgets則需要安裝其他套件才會提供。

  - 多數的Glade工具（配色盤、編輯器...等）都被實作為Widget。這可以更容易地被Anjuta或Scaffold等編輯器整合，

並且也能更容易地改變Glade UI。

## GladeXML

GladeXML是Glade界面設計工具儲存文件時所使用的XML格式。這些文件之後可以與GtkBuilder物件結合，並使用GTK+ 來實體化。

## Mockups

Glade可以用來設計GUI程式模型或雛型。

## 產生程式碼骨架

程式碼骨架產生器是一種用來幫助使用者從GladeXML檔案產生原始程式碼的軟體應用程式。大部分產生器都是使用libglade和GladeXML檔案來產生GUI的程式碼。下面的表格比較了各個產生器套件的基本資訊：

| 名稱                                                                                                   | 作者                                     | 語言                                    | 許可證                                                                                   |
| ---------------------------------------------------------------------------------------------------- | -------------------------------------- | ------------------------------------- | ------------------------------------------------------------------------------------- |
| [eglade](http://efsa.sourceforge.net/archive/elphick/eglade.htm)                                     | Daniel Elphick                         | Eiffel                                | [Eiffel Forum License](https://zh.wikipedia.org/wiki/Eiffel_Forum_License "wikilink") |
| [Gladex](https://launchpad.net/gladex/)                                                              | Christopher Pax and Charles Edward Pax | Perl, Python, Ruby                    | [GPL v3](https://zh.wikipedia.org/wiki/GPL_v3 "wikilink")                             |
| [glc](http://sourceforge.net/projects/glc/)                                                          | Bill Allen                             | Python                                | [LGPL](https://zh.wikipedia.org/wiki/LGPL "wikilink")                                 |
| ruby-glade-create-template                                                                           | Masao Mutoh                            | Ruby                                  |                                                                                       |
| Tepache                                                                                              | Sandino Flores Moreno                  | Python                                | [LGPL](https://zh.wikipedia.org/wiki/LGPL "wikilink")                                 |
| [GTK+tobac2.2.0](http://www.freebasic-portal.de/downloads/ressourcencompiler/gtktobac2-2-0-131.html) | Thomas Freiherr                        | FreeBASIC（includes GTK-2.18.6 header） | [GPL v3](https://zh.wikipedia.org/wiki/GPL_v3 "wikilink")                             |
| [Glade2FB](http://www.galeon.exofire.net)                                                            | Arnel Borja                            | FreeBASIC                             | [GPL v3](https://zh.wikipedia.org/wiki/GPL_v3 "wikilink")                             |

## 參見

  - [WxGlade](https://zh.wikipedia.org/wiki/WxGlade "wikilink")

## 外部链接

  - [Glade首頁](http://glade.gnome.org/)

[Category:GNOME](https://zh.wikipedia.org/wiki/Category:GNOME "wikilink")
[Category:自由發展元件與函式庫](https://zh.wikipedia.org/wiki/Category:自由發展元件與函式庫 "wikilink")