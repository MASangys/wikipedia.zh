**memcached**是一套[分布式的高速缓存系統](../Page/分布式.md "wikilink")，由[LiveJournal的Brad](../Page/LiveJournal.md "wikilink")
Fitzpatrick开发，但目前被許多网站使用。這是一套[開放原始碼](../Page/開放原始碼.md "wikilink")[軟體](../Page/軟體.md "wikilink")，以[BSD
license授權釋出](../Page/BSD_license.md "wikilink")。

memcached缺乏[認證以及](../Page/認證.md "wikilink")[安全管制](../Page/计算机安全.md "wikilink")，這代表應該將memcached伺服器放置在[防火牆後](../Page/防火牆.md "wikilink")。

memcached的[API使用三十二位元的](../Page/API.md "wikilink")[循環冗余校驗](../Page/循環冗余校驗.md "wikilink")（CRC-32）計算[鍵值後](../Page/鍵值.md "wikilink")，將資料分散在不同的機器上。當表格滿了以後，接下來新增的資料會以[LRU機制替換掉](../Page/快取文件置换机制.md "wikilink")。由於memcached通常只是當作快取系統使用，所以使用memcached的應用程式在寫回較慢的系統時（像是後端的[資料庫](../Page/資料庫.md "wikilink")）需要額外的程式碼更新memcached內的資料。

## 使用單位

  - [Digg](../Page/Digg.md "wikilink")
  - [Facebook](../Page/Facebook.md "wikilink")（同時也回饋了許多程式碼）
  - Meetup.com（提供memcached對[Java的連線函式庫](../Page/Java.md "wikilink")）
  - [Slashdot](../Page/Slashdot.md "wikilink")
  - [Wikipedia](../Page/Wikipedia.md "wikilink")

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

在memcached內已經有快取資訊時將資料庫的資料更新後，上述的程式會抓到舊的資料，這是屬於[Cache
coherency的問題](../Page/Cache_coherency.md "wikilink")。其中一種解決的方法是在更新資料庫時，同時更新memcached內的資訊：

`function update_foo(int userid, string dbUpdateString) {`
`    result = db_execute(dbUpdateString);`
`    if (result) {`
`        data = createUserDataFromDBString(dbUpdateString);`
`        memcached_set("userrow:"+userid, data);`
`    }`
`}`

## 外部連結

  - [memcached 官方站台](http://memcached.org/)
  - [memcached 通訊協定](http://github.com/memcached/memcached)，連結至
    [CVS](../Page/CVS.md "wikilink")。

[Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink")
[Category:電腦記憶體](https://zh.wikipedia.org/wiki/Category:電腦記憶體 "wikilink")