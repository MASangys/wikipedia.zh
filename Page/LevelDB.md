****是一個由[Google公司所研發的](https://zh.wikipedia.org/wiki/Google公司 "wikilink")[键-值存储](../Page/键-值存储.md "wikilink")[嵌入式](https://zh.wikipedia.org/wiki/嵌入式系統 "wikilink")[數據庫管理系統編程庫](https://zh.wikipedia.org/wiki/數據庫管理系統 "wikilink")，\[1\] 以[開源的](https://zh.wikipedia.org/wiki/開源軟體 "wikilink")[BSD許可證發佈](https://zh.wikipedia.org/wiki/BSD許可證 "wikilink")。\[2\]

## 特徵

  - 高性能 \[3\]
  - 簡單的體系結構：只支持API调用，不支持[SQL](../Page/SQL.md "wikilink")語言
  - [自由軟件和](https://zh.wikipedia.org/wiki/自由軟件 "wikilink")[開放原始碼軟件](https://zh.wikipedia.org/wiki/開放原始碼軟件 "wikilink")
  - 數據支持被Snappy函式庫壓縮\[4\]，以減少Disk I/O提升效能

## 例子

儲存鍵／值對，和查詢鍵的值：

``` cpp
#include "leveldb/db.h"
#include <iostream>

using namespace std;

int main()
{
  leveldb::DB *db;
  leveldb::Options options;

  options.create_if_missing = true;

  // 開啟數據庫
  leveldb::DB::Open(options, "/tmp/testdb", &db);

  // 鍵 = MyKey29，值 = "Hello World!"
  string key = "MyKey29", value = "Hello World!", result;

  // 儲存 鍵／值對
  db->Put(leveldb::WriteOptions(), key, value);

  // 查詢 MyKey29 鍵的值
  db->Get(leveldb::ReadOptions(), key, &result);

  // 輸出值到屏幕
  cout << "result = " << result << endl;

  // 關閉數據庫
  delete db;

  return 0;
}
```

### 執行結果

(LevelDB安裝目錄為：leveldb-read-only)\[5\]

    % g++ test.cc -Ileveldb-read-only/include -Lleveldb-read-only -lleveldb -lpthread
    % ./a.out
    result = Hello World!

## RocksDB

2013年[Facebook](../Page/Facebook.md "wikilink")基於LevelDB開發出RocksDB，特別針對伺服器負載而優化。\[6\]

## 语言的绑定

  - [PHP LevelDB Extension](https://github.com/reeze/php-leveldb)
  - [Python LevelDB Binding](https://github.com/carlopires/cpy-leveldb)

## 參見

  - [Berkeley DB](../Page/Berkeley_DB.md "wikilink")
  - [Apache Derby](../Page/Apache_Derby.md "wikilink")

## 参考文献

## 外部連結

  - [LevelDB 開放原始碼計劃主頁](https://archive.is/20130426121503/http://leveldb.googlecode.com/)

{{-}}

[Category:2011年软件](https://zh.wikipedia.org/wiki/Category:2011年软件 "wikilink") [Category:Google](https://zh.wikipedia.org/wiki/Category:Google "wikilink") [Category:開源資料庫管理系統](https://zh.wikipedia.org/wiki/Category:開源資料庫管理系統 "wikilink") [Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink") [Category:键-值数据库](https://zh.wikipedia.org/wiki/Category:键-值数据库 "wikilink")

1.  [leveldb實現解析](http://rdc.taobao.com/blog/cs/wp-content/plugins/leveldb实现解析.pdf)
2.  [LevelDB: A Fast Persistent Key-Value Store](http://google-opensource.blogspot.com/2011/07/leveldb-fast-persistent-key-value-store.html)
3.  [LevelDB Benchmarks](http://leveldb.googlecode.com/svn/trunk/doc/benchmark.html)
4.  [A fast compressor/decompressor](http://code.google.com/p/snappy/)
5.  [Source Checkout - LevelDB](http://code.google.com/p/leveldb/source/checkout)
6.  [RocksDB](http://rocksdb.org/)