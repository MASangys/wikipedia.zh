**GNU宽通用公共许可证**（，简称：）是由[自由软件基金会](../Page/自由软件基金会.md "wikilink")公布的[自由软件授权条款](https://zh.wikipedia.org/wiki/自由软件授权条款 "wikilink")。它允许企业与软件开发者使用，或将LGPL授权的软件整合至他们自己的软件内（即使该软件是私有软件也被允许），同时不会受到[Copyleft](../Page/Copyleft.md "wikilink")特性的许可证强制对软件开源的限制。该许可证常被用于一些（但不是全部）[GNU](../Page/GNU.md "wikilink")程序库。

这个许可证以前被称为**GNU程式库通用公共许可证**（）。此许可证最新版本为“第3版”，2007年6月29日发布，较早的版本有2.0和2.1版。此種授權之出現，是為了在GPL與許可式授權（如[MIT许可证及](https://zh.wikipedia.org/wiki/MIT许可证 "wikilink")[柏克萊大學的](https://zh.wikipedia.org/wiki/柏克萊大學 "wikilink")[BSD许可证](../Page/BSD许可证.md "wikilink")）間取得折衷。

採用LGPL之計畫本身雖然仍有“[Copyleft](../Page/Copyleft.md "wikilink")”之限制條件，但這些限制不感染僅僅只-{zh-hans:链接;zh-hant:聯結}-到本計畫的軟體。不過此等軟體仍會受到其他限制。

LGPL主要使用之標的為軟體函式庫（Software Libraries），但是其亦可使用於獨立存在的應用程式。比較有名的例子為[Mozilla](../Page/Mozilla.md "wikilink")跟[OpenOffice.Org](../Page/Apache_OpenOffice.md "wikilink")。

## 歷史

LGPL原本被稱爲**GNU Library General Public License**，最初於1991年發布，爲與GPLv2保持一致而採用2.0版的編號。許可證的2.1版與1999年在修訂後發布。與此同時，它被重命名爲**GNU Lesser General Public License**，以顯示FSF認爲並不是所有程式庫都應當採用該許可證的態度。LGPL的第3版於2007年發布，它以在GPL第3版之上附加應用一系列許可的方式表現。

## LGPL與GPL差異之處

LGPL有一特點是LGPL軟體可以被轉換成GPL（參見[Section 3](https://zh.wikipedia.org/wiki/:GNU通用公共许可证#%E6%A2%9D%E6%AC%BE%E5%92%8C%E6%A2%9D%E4%BB%B6 "wikilink")）。這種特性對於在GPL函式庫或應用程式中直接使用LGPL程式有一定程度之幫助。

## 编程语言要求

LGPL 协议主要是面向使用 [C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink") 以及类 C 语言。Franz Inc. 发布了 LLGPL 协议，增加了序言部分以澄清 [LISP](../Page/LISP.md "wikilink") 语言中的上下文问题。\[1\]

另外 [Ada](../Page/Ada.md "wikilink") 语言还有一个特殊的特性——泛型，所以需要使用 LGPL 的另一个变种 [GNAT Modified General Public License](../Page/GMGPL.md "wikilink")：允许代码链接一些特殊情况，以避免被 GPL 所覆盖。

[C++](../Page/C++.md "wikilink") 模板和只有头文件的库也会遇到类似于 Ada 的泛型问题。LGPL 的第三版在第三小节中专门处理了这方面的特殊情况。\[2\]

## 可闭源特性

由于许多程序员都弄不清各種許可證之間的差別，導致一些开源项目成為了小部份別有用心人士所利用的對象，較著名的例子有[DivX](../Page/DivX.md "wikilink")，早期DivX雛形是一個使用LGPL许可证的自由軟體，由大部份優秀的軟體高手義務地開發，但當軟體漸漸成形時，DivX的公司[DXN利用LGPL的漏洞對DivX進行了閉源](https://zh.wikipedia.org/wiki/DXN "wikilink")，大部分軟體愛好者都感到被出賣，所以著手開發了[XviD](https://zh.wikipedia.org/wiki/XviD "wikilink")。雖然XviD在軟體方面明顯比DivX優秀，但市場占有率卻不如DivX。

## 参见

  - [Copyleft](../Page/Copyleft.md "wikilink")
  - [GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")
  - [GNU自由文档许可证](../Page/GNU自由文档许可证.md "wikilink")
  - [BSD许可证](../Page/BSD许可证.md "wikilink")
  - [使用LGPL许可证的软件（分类）](https://zh.wikipedia.org/wiki/Category:使用LGPL许可证的软件 "wikilink")

## 參考資料

## 外部链接

  - [LGPL英文版](http://www.gnu.org/licenses/lgpl.html)
  - [LGPL v2.1非正式中译版2.1版](http://www.thebigfly.com/gnu/lgpl/)
  - [LGPL v3非正式中译版3版](http://www.thebigfly.com/gnu/lgpl/lgpl-v3.php)
  - [GNU較寬鬆公共許可證（中譯版）1999年2月，2.1版](https://web.archive.org/web/20060720083337/http://www.linux.org.tw/CLDP/OLD/doc/LGPL.html)
  - [五种开源协议的比较（BSD,Apache,GPL,LGPL,MIT） - 整理](https://awguo.com/2007/06/23/五种开源协谇的比较bsdapachegpllgplmit-整理/)

[Category:版權](https://zh.wikipedia.org/wiki/Category:版權 "wikilink") [Category:自由軟體授權](https://zh.wikipedia.org/wiki/Category:自由軟體授權 "wikilink")

1.  [Preamble to the Gnu Lesser General Public License](http://opensource.franz.com/preamble.html)
2.  [LGPLv3 for a C++ Pure Template Library ?](https://listengine.tuxfamily.org/lists.tuxfamily.org/eigen/2008/02/msg00003.html)