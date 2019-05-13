**Gearman** \[1\]
是一套用來把程式需求委派給機器，提供通用的程序框架來將任務分發在機器運算。它同時具備並行工作的能力、負載均衡處理的能力，以及在不同程序語言之間溝通的能力。

## Gearman 特點

  - Open Source: 屬於開放原始碼，同時，建立社群提供問題的協助平台。
  - Multi-language: 多國語言介面。
  - Flexible: 靈活，不需要設計其他模式，可以快速將應用程序分佈運作。
  - Fast: 它有簡單的協定，減少執行沒有相關的時間。
  - Embeddable: 嵌入式，快速與輕量，處理各種應用程序。
  - No single point of failure: 不僅可以將系統模組化，也能容錯方式進行。
  - No limits on message size: 支援單一訊息 4 gig 大小。
  - Worried about scaling: 各平台行皆有使用經驗，e.g. Tumblr, Yelp, Etsy, etc.

## Gearman 運作原理

Gearman 主要分成三個部份，需求的處理過程涉及三個角色：Client -\> Job -\> Worker。

### Client

  - Client: 負責建立一個工作，發送需求 (application) 給 Job Server，而 Job Server 會去找適合的
    Worker 去轉發工作。

### Job Server

  - Job Server: 瞭解 Client 端的需求，並查看哪個機器可以處理這項要求，在系統裡它通常會是個 Daemon。

### Work

  - Worker: Worker 通過 Job Server 的分派，開始執行 Client 端的工作。

### Message Queue

  - 執行 Message Queue \[2\]服務的 Job Server 可以是多台伺服器組成，也就是分散式架構，在 Job
    Server 上執行 Worker 程式。
  - 這些 Worker 程式會一直循環地等候，直到 Job Server 呼叫它執行工作。
  - Client 端發送出需求之後，會將需要的資料及動作記錄在 Job Server 上，這時 Job Server
    會查看是否有空閒並符合需求的 Worker。
  - 在 Worker 結束工作後，會發送通知給 Job Server ，這時 Job Server 就會視狀況把結果回傳給 Client。
  - Client 端不需等候需求的執行結果，可以直接繼續執行其他動作。

## Job Server 負載方式

  - 當 Client 可能同時發出多個需求給 Job Server，由 Message Queue 接手進行佇列。
  - 而 Job Server 開始處理多個需求，若其中一個發生問題，可以 Failover 到其他的機器。
  - 同時，Worker 會將多個需求一起進行運算，再看是同步或非同步模式，回傳結果給 Client。

### 同步 (Synchronous)

  - 同步(Synchronous) 是指 Client 將需求 (Application) 丟給 Gearmand。
  - 由 Gearmand 分派 Job 給各 Worker 去處理。
  - 並同步 Response 回傳給 Gearmand 告訴 Client 現在進度。

### 非同步 (Asynchronous)

  - 非同步 (Asynchronous) 是指 Client 將需求 (Application) 丟給 Gearmand。
  - 由 Gearmand 分派 Job 給各 Worker 去處理。
  - Worker 處理完畢後，才會將結果回傳給 Gearmand 告訴 Client 現在進度。

## 参考资料

  - [Instant Parallel Processing with
    Gearman](http://books.google.com.tw/books?id=f3LE1eq48-MC&pg=PT14&dq=Gearman&hl=zh-TW&sa=X&ei=A5oEU_CHArCwiQe-j4CQCw&ved=0CC4Q6AEwAA#v=onepage&q=Gearman&f=false)

[Category:伺服器](https://zh.wikipedia.org/wiki/Category:伺服器 "wikilink")
[Category:網路管理](https://zh.wikipedia.org/wiki/Category:網路管理 "wikilink")
[Category:系統軟體](https://zh.wikipedia.org/wiki/Category:系統軟體 "wikilink")
[Category:網路軟體](https://zh.wikipedia.org/wiki/Category:網路軟體 "wikilink")

1.  [What is Gearman](http://gearman.org/)
2.  [Message Queue](http://www.jaceju.net/blog/archives/1211/)