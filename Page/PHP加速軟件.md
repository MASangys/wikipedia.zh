**PHP加速軟件**是一種將[PHP程式碼編譯之後所產生的bytecode暫存在](../Page/PHP.md "wikilink")[共享記憶體內供重複使用](https://zh.wikipedia.org/wiki/共享記憶體 "wikilink")，以提升執行效率的插件軟件。

## PHP加速軟件列表

### Alternative PHP Cache

**Alternative PHP
Cache**（**APC**）是一套[開放原始碼的](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[自由PHP加速軟體](https://zh.wikipedia.org/wiki/自由軟件 "wikilink")，除了可以把將PHP編譯產生的bytecode暫存在[共享記憶體內重複使用](https://zh.wikipedia.org/wiki/共享記憶體 "wikilink")，亦會把中間碼作優化。
能同所有版本的[PHP一起工作](../Page/PHP.md "wikilink")，仍在活跃维护中，并将会被内置在PHP 6中。

### Turck MMCache

**Turck MMCache**是一套最廣泛使用的PHP加速軟件，由Dmitry Stogov開發，但目前已停止任何新發展。

  - 網址：http://turck-mmcache.sourceforge.net/index_old.html

### eAccelerator

**eAccelerator**誕生於2004年12月，是一個從Turck MMCache分支出來的軟件計劃，因此其源代碼仍保留了Turck
MMCache的大部份內容。eAcceleration亦包含了PHP編碼器及其載體，但有關功能從2006年12月開始不再提供，而相關部份的發展亦因此而中斷了。支援PHP
4及所有PHP 5版本，包括5.2。在旧版中，编码器仅能与PHP
4.x.x分支版本一同工作。仍在eAccelerator将不会和任何其他PHP版本一同工作。仍在积极维护中。

  - 網址：http://eaccelerator.net/

### XCache

**XCache**是一套快速稳定的PHP代码加速器。在Linux下测试，高负载状况下表现良好，同时还支持ThreadSafe/Windows。解决了其他opcacher存在的问题，比如可以支持新的PHP版本。其中一个开发者也同时是Lighttpd的开发者。开发解决了一些限制在现有的解决方案中。支持PHP
5.x以上版本，仍在积极维护中。

  - 网址： <http://xcache.lighttpd.net/>

### Zend Optimizer

### Zend Platform

### ionCube PHP Accelerator

## 外部連結

  - [Benchmarking Drupal with PHP op-code caches: APC, eAccelerator and
    XCache (and Standard PHP)
    compared](http://2bits.com/articles/benchmarking-drupal-with-php-op-code-caches-apc-eaccelerator-and-xcache-compared.html)
    from April 2008.
  - [PHP on Fire: Five Opcode Caches
    compared](http://itst.net/654-php-on-fire-three-opcode-caches-compared)
    including a [complete
    chart](http://itst.net/wp-content/uploads/2006/10/PHP%20Bytecode%20Cacher%20Review.html)
    featuring Zend Platform, APC, XCache, eAccelerator ionCube Encoder
    and Standard PHP benchmarks. Made in October 2006.

[Category:PHP](https://zh.wikipedia.org/wiki/Category:PHP "wikilink")