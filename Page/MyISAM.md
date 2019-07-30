**MyISAM**是[MySQL](../Page/MySQL.md "wikilink")的預設[資料庫引擎](https://zh.wikipedia.org/wiki/資料庫引擎 "wikilink")（5.5版之前），由早期的[ISAM所改良](https://zh.wikipedia.org/wiki/ISAM "wikilink")。雖然效能極佳，但卻有一個缺點：不支援[交易處理](https://zh.wikipedia.org/wiki/事务處理_\(數據庫\) "wikilink")（transaction）。不過，在這幾年的發展下，[MySQL](../Page/MySQL.md "wikilink")也導入了[InnoDB](https://zh.wikipedia.org/wiki/InnoDB "wikilink")（另一種資料庫引擎），以強化[參考完整性與](https://zh.wikipedia.org/wiki/參考完整性 "wikilink")[並行違規處理機制](https://zh.wikipedia.org/wiki/並行違規處理 "wikilink")，後來就逐漸取代MyISAM。

每個MyISAM資料表，皆由儲存在硬碟上的3個檔案所組成，每個檔案都以資料表名稱為主檔名，並搭配不同副檔名區分檔案類型：

1.  `.frm`－－儲存資料表定義，此檔案非MyISAM引擎的一部份。
2.  `.MYD`－－存放真正的資料。
3.  `.MYI`－－儲存索引資訊。

## 與InnoDB之比較

1.  InnoDB可藉由交易記錄檔（Transaction Log）來恢復程式崩潰（crash），或非預期結束所造成的資料錯誤；而MyISAM遇到錯誤，必須完整掃瞄後才能重建索引，或修正未寫入硬碟的錯誤。InnoDB的修復時間，大略都是固定的，但MyISAM的修復時間，則與資料量的多寡成正比。相對而言，隨著資料量的增加，InnoDB會有較佳的穩定性。
2.  MyISAM必須依靠作業系統來管理讀取與寫入的快取，而InnoDB則是有自己的讀寫快取管理機制。（InnoDB不會將被修改的資料分頁立即交給操作系統）因此在某些情況下，InnoDB的資料存取會比MyISAM更有效率。
3.  InnoDB目前並不支援MyISAM所提供的壓縮與terse row formats，所以對硬碟與快取記憶體的使用量較大。因此MySQL從5.0版開始，提供另一個負載較輕的格式，他可減少約略20%的系統負載，而壓縮功能已計畫於未來的新版中推出。
4.  當操作完全相容[ACID](../Page/ACID.md "wikilink")（交易）時，雖然InnoDB會自動合併數筆連線，但每次有交易產生時，仍至少須寫入硬碟一次，因此對於某些硬碟或磁碟陣列，會造成每秒200次的交易处理上限。若希望達到更高的效能且保持交易的完整性，就必使用磁碟快取與電池備援。當然InnoDB也提供數種對效能衝擊較低的模式，但相對的也會降低交易的完整性。而MyISAM則無此問題，但這並非因為它比較先進，這只是因為它不支援交易。

## 相關條目

  - [Falcon](https://zh.wikipedia.org/wiki/Falcon_\(storage_engine\) "wikilink")
  - [ISAM](https://zh.wikipedia.org/wiki/ISAM "wikilink")
  - [InnoDB](https://zh.wikipedia.org/wiki/InnoDB "wikilink")

## 參考連結

  - [MySQL Documentation on MyISAM Storage Engine](http://dev.mysql.com/doc/mysql/en/myisam-storage-engine.html)

[Category:MySQL](https://zh.wikipedia.org/wiki/Category:MySQL "wikilink") [Category:開放原始碼資料庫系統](https://zh.wikipedia.org/wiki/Category:開放原始碼資料庫系統 "wikilink")