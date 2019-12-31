> 本文内容由[Memcached](https://zh.wikipedia.org/wiki/Memcached)转换而来。


**memcached**是一套[分布式的高速缓存系統](https://zh.wikipedia.org/wiki/分布式 "wikilink")，由[LiveJournal的Brad](https://zh.wikipedia.org/wiki/LiveJournal "wikilink") Fitzpatrick开发，但目前被許多网站使用。這是一套[開放原始碼](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[軟體](https://zh.wikipedia.org/wiki/軟體 "wikilink")，以[BSD license授權釋出](https://zh.wikipedia.org/wiki/BSD_license "wikilink")。

memcached缺乏[認證以及](https://zh.wikipedia.org/wiki/認證 "wikilink")[安全管制](../Page/计算机安全.md "wikilink")，這代表應該將memcached伺服器放置在[防火牆後](https://zh.wikipedia.org/wiki/防火牆 "wikilink")。

memcached的[API使用三十二位元的](https://zh.wikipedia.org/wiki/API "wikilink")[循環冗余校驗](https://zh.wikipedia.org/wiki/循環冗余校驗 "wikilink")（CRC-32）計算[鍵值後](https://zh.wikipedia.org/wiki/鍵值 "wikilink")，將資料分散在不同的機器上。當表格滿了以後，接下來新增的資料會以[LRU機制替換掉](https://zh.wikipedia.org/wiki/快取文件置换机制 "wikilink")。由於memcached通常只是當作快取系統使用，所以使用memcached的應用程式在寫回較慢的系統時（像是後端的[資料庫](https://zh.wikipedia.org/wiki/資料庫 "wikilink")）需要額外的程式碼更新memcached內的資料。

## 使用單位

  - [Digg](../Page/Digg.md "wikilink")
  - [Facebook](../Page/Facebook.md "wikilink")（同時也回饋了許多程式碼）
  - Meetup.com（提供memcached對[Java](../Page/Java.md "wikilink")的連線函式庫）
  - [Slashdot](../Page/Slashdot.md "wikilink")
  - [Wikipedia](https://zh.wikipedia.org/wiki/Wikipedia "wikilink")

## 範例

將純粹使用資料庫查詢的程式碼加上memcached支援是很簡單的，假設這是原來的程式碼：

`function get_foo (int userid) {`
`   result = db_select("SELECT * FROM users WHERE userid = ?", userid);`
`   return result;`
`}`

加上memcached的快取機制後：

`function get_foo (int userid) {`
`    result = memcached_fetch("userrow:" + userid);`
`    if (!result) {`
`        result = db_select("SELECT * FROM users WHERE userid = ?", userid);`
`        memcached_add("userrow:" + userid,  result);`
`    }`
`    return result;`
`}`

上述的程式會先到memcached檢查是否有`userrow:userid`的資料，如果有則直接傳回結果，如果不存在時再去資料庫查詢，並將結果放到memcached內。

在memcached內已經有快取資訊時將資料庫的資料更新後，上述的程式會抓到舊的資料，這是屬於[Cache coherency的問題](https://zh.wikipedia.org/wiki/Cache_coherency "wikilink")。其中一種解決的方法是在更新資料庫時，同時更新memcached內的資訊：

`function update_foo(int userid, string dbUpdateString) {`
`    result = db_execute(dbUpdateString);`
`    if (result) {`
`        data = createUserDataFromDBString(dbUpdateString);`
`        memcached_set("userrow:"+userid, data);`
`    }`
`}`

## 外部連結

  - [memcached 官方站台](http://memcached.org/)
  - [memcached 通訊協定](http://github.com/memcached/memcached)，連結至 [CVS](https://zh.wikipedia.org/wiki/CVS "wikilink")。

[Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink") [Category:電腦記憶體](https://zh.wikipedia.org/wiki/Category:電腦記憶體 "wikilink") [Category:键-值数据库](https://zh.wikipedia.org/wiki/Category:键-值数据库 "wikilink")