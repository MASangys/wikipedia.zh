**V8**是一個由[Google開發的](../Page/Google.md "wikilink")[開源](../Page/開源.md "wikilink")[JavaScript引擎](../Page/JavaScript引擎.md "wikilink")，用於[Google
Chrome及](../Page/Google_Chrome.md "wikilink")[Chromium中](../Page/Chromium.md "wikilink")\[1\]。[Lars
Bak是這個項目的組長](../Page/Lars_Bak.md "wikilink")\[2\]。

## 運作方式

V8在執行之前將[JavaScript](../Page/JavaScript.md "wikilink")[編譯成了](../Page/編譯.md "wikilink")[機器碼](../Page/機器碼.md "wikilink")，而非[位元組碼或是](../Page/位元組碼.md "wikilink")[解释执行它](../Page/解释器.md "wikilink")，以此提升效能。更進一步，使用了如[內聯緩存](../Page/內聯緩存.md "wikilink")（inline
caching）等方法來提高性能。有了這些功能，[JavaScript程序與V](../Page/JavaScript.md "wikilink")8引擎的速度媲美二進制編譯。\[3\]

传统的Javascript是动态语言，又可稱之為Prototype-based
Language，JavaScript繼承方法是使用prototype，透過指定prototype屬性，便可以指定要繼承的目標。属性可以在运行时添加到或从对象中删除，引擎會为執行中的物件建立一個属性字典，新的属性都要透過字典查找属性在内存中的位置。V8為object新增属性的时候，就以上次的hidden
class为父类別，创建新属性的hidden class的子类別，如此一來属性访问不再需要动态字典查找了。

為了缩短由[垃圾回收造成的停顿](../Page/垃圾回收_\(计算机科学\).md "wikilink")，V8使用stop-the-world,
generational,
accurate的垃圾回收器\[4\]。在执行回收之时会暫時中断程序的执行，而且只处理物件堆疊。還會收集內存內所有物件的指標，可以避免内存溢位的情况。V8[組譯器是基於](../Page/汇编语言#組譯器.md "wikilink")[Strongtalk組譯器](../Page/Strongtalk.md "wikilink")\[5\]。

## 参考文献

## 外部連結

  - [Google Code project page](http://code.google.com/p/v8/)
  - [cproxyv8](http://code.google.com/p/cproxyv8/)及[v8-juice](http://code.google.com/p/v8-juice/)
    are C++ libraries for extending v8, e.g. to assist in binding
    client-side C++ classes to JavaScript.
  - [v8cgi](http://code.google.com/p/v8cgi/) is a v8-based framework for
    serving web application written in JavaScript.
  - [node.js](http://nodejs.org/)[1](http://simonwillison.net/2009/Nov/23/node/)
    is a toolkit for writing performant non-blocking event-driven
    network servers in JavaScript.
  - [Inside V8 - A Javascript Virtual
    Machine](http://channel9.msdn.com/shows/Going+Deep/Expert-to-Expert-Erik-Meijer-and-Lars-Bak-Inside-V8-A-Javascript-Virtual-Machine/)

## 參見

  - [Google Chrome](../Page/Google_Chrome.md "wikilink")
  - [Chromium (浏览器)](../Page/Chromium_\(浏览器\).md "wikilink")
  - [JavaScriptCore](../Page/WebKit#JavaScriptCore.md "wikilink")
  - [Dart](../Page/Dart.md "wikilink")
  - [SpiderMonkey](../Page/SpiderMonkey.md "wikilink")
  - [即时编译](../Page/即时编译.md "wikilink")

{{-}}

[Category:JavaScript引擎](https://zh.wikipedia.org/wiki/Category:JavaScript引擎 "wikilink")
[Category:虛擬機器](https://zh.wikipedia.org/wiki/Category:虛擬機器 "wikilink")
[Category:Google軟體](https://zh.wikipedia.org/wiki/Category:Google軟體 "wikilink")
[Category:使用BSD许可证的软件](https://zh.wikipedia.org/wiki/Category:使用BSD许可证的软件 "wikilink")

1.
2.
3.
4.
5.  [v8
    Licenses](http://code.google.com/p/v8/source/browse/trunk/LICENSE)