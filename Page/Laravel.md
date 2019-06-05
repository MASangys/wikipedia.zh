**Laravel** 是一個由Taylor
Otwell所建立，[免费的開源](../Page/自由软件.md "wikilink")\[1\]
PHP [Web
框架](../Page/Web应用框架.md "wikilink")，旨在實作的Web軟體的[MVC架構](../Page/MVC.md "wikilink")，並作為[CodeIgniter的替代方案](../Page/CodeIgniter.md "wikilink")。其[原始碼託管於](../Page/源代码.md "wikilink")[GitHub](../Page/GitHub.md "wikilink")，許可條款為[MIT許可證](../Page/MIT許可證.md "wikilink")。\[2\]Laravel的特色包含：支援用户[身份驗證和](https://zh.wikipedia.org/wiki/身份验证 "wikilink")[授權](../Page/授權_\(資安\).md "wikilink")，具有模組化的[套件系統且有專屬的套件庫](../Page/软件包管理系统.md "wikilink")，提供連接許多種類的[關連式資料庫的方式](../Page/关系数据库.md "wikilink")，提供工具來協助應用程式的[部署和维持](https://zh.wikipedia.org/wiki/软件部署 "wikilink")，並且發展出許多[語法糖](https://zh.wikipedia.org/wiki/語法糖 "wikilink")。\[3\]\[4\]\[5\]\[6\]

Laravel與[Symfony](../Page/Symfony.md "wikilink")、[Zend](../Page/Zend引擎.md "wikilink")、[CodeIgniter](../Page/CodeIgniter.md "wikilink")、Yii2
和其他框架一起被視為最受歡迎的 [PHP](../Page/PHP.md "wikilink") 框架之一。\[7\] \[8\]

## 歷史

  - Laravel 1
    Laravel在2011年6月9日發佈了第一個[Beta測試版本](../Page/軟件版本週期.md "wikilink")，並在一個月後發布正式版本
    Laravel 1。Laravel 1 預設提供了身份驗證、多語系、
    [Model(MVC)](../Page/MVC.md "wikilink")、view、[session](../Page/会话_\(计算机科学\).md "wikilink")、路由和其他機制，但缺少控制器，以至於無法成為一个真正的[MVC框架](../Page/MVC.md "wikilink")。\[9\]

<!-- end list -->

  - Laravel 2
    2011年9月正式發佈，並由作者與社群提供了許多優化。主要的新功能包括支持 controller，使 Laravel 2 成為真正的
    [MVC](../Page/MVC.md "wikilink") 框架，並且實現了
    [控制反轉(IoC)](../Page/控制反转.md "wikilink") ，和提供樣版引擎
    *blade*。 但同時也帶來一個缺點：移除了第三方
    [套件](https://zh.wikipedia.org/wiki/基于组件的软件工程 "wikilink")
    的支援。\[10\]

<!-- end list -->

  - Laravel 3
    於2012年發佈。帶來的新功能包括： [命令列介面(CLI)](../Page/命令行界面.md "wikilink")
    *Artisan*，支持多種 [資料庫管理系统](../Page/数据库.md "wikilink")、提供 migration
    為資料庫做 [版本控制](../Page/版本控制.md "wikilink")
    ，支援事件（event）的處理，以及封裝系统 *Bundles*。
    隨著Laravel 3 的發佈，Laravel 的使用者和受歡迎程度也隨之增加。\[11\]

<!-- end list -->

  - Laravel 4
    代號為 *Illuminate*，於2013年發佈。此版本將過去的程式碼全部重寫，並將各自分散許多的套件中，並透過
    [Composer](../Page/Composer_\(軟體\).md "wikilink") 管理（一個應用程式等級的
    [套件管理工具](../Page/软件包管理系统.md "wikilink") ）。 這樣的修改提高了Laravel
    4的可擴充性，搭配其官方的六个月的[小數點版本的發布計畫](https://zh.wikipedia.org/wiki/小數點版本 "wikilink")。其他
    Laravel 4的特點包括：資料庫的 seeding （為資料庫建置初始的資料），支持
    [佇列（queue）](../Page/消息队列.md "wikilink")，支持發送不同類型的電子郵件，並支持資料庫的
    *軟刪除*。\[12\]

<!-- end list -->

  - Laravel 5
    2015年2月發佈\[13\]。 新的特點包括：提供周期性地執行任務的排程器 *Scheduler*，提供一個抽象層
    *Flysystem* ，讓遠端與本地端的 [檔案系統](../Page/文件系统.md "wikilink")
    能有相同的操作方式，提供 *Elixir* 以管理靜態資源，並提供了可簡化串接
    OAuth 登入的套件 *Socialite* 。 Laravel 5 也同時修改了
    [目錄結構](../Page/目录_\(文件系统\).md "wikilink")
    。\[14\]

<!-- end list -->

  - Laravel 5.1
    2015年6月發佈，是 Laravel 的第一個 [長期支援版本（LTS）](../Page/長期支援.md "wikilink")
    ，並計畫提供兩年的 [錯誤修正](https://zh.wikipedia.org/wiki/修補程式 "wikilink")
    和三年的 [安全性更新](https://zh.wikipedia.org/wiki/修補程式 "wikilink") 。
    同時也預計未來每兩年會發佈一次新的 LTS 版本。\[15\]

<!-- end list -->

  - Laravel 5.3
    於2016年8月23日發佈。此版本著重在協助使用者加速開發，並提供了優化開發流程的工具。\[16\]\[17\]

<!-- end list -->

  - Laravel 5.4
    2017年1月24日發佈。此版本提供了許多新功能，像 Laravel Dusk，Laravel Mix，Components &
    Slots（Blade），Markdown Emails，自動 Facades、路由的優化，collection
    的高階函數，還有很多其他功能。\[18\]

<!-- end list -->

  - Laravel 5.5
    於2017年8月30日發佈。

<!-- end list -->

  - Laravel 5.6
    於2018年2月7日發佈。

<!-- end list -->

  - Laravel 5.7
    於2018年9月4日發佈。

<!-- end list -->

  - Laravel 5.8
    於2019年2月26日發佈。

### 版本發佈紀錄

Laravel發行版本分為兩類：**一般版本**和**LTS長期支援版本**\[19\]

  - 一般版本
    提供 6 個月的錯誤修正和 1 年的安全性更新。
  - LTS長期支援版本
    如 Laravel 5.1，提供了 2 年錯誤修正和 3 年的安全性更新，提供了長期的支援和維護。

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>發佈日期</p></th>
<th><p>PHP 版本</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>2011年6月</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>2011年9月</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2012年2月22日</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>2012年3月27日</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2012年5月22日</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>2013年5月28日</p></td>
<td><p>≥ 5.3.0</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2013年12月11日</p></td>
<td><p>≥ 5.3.0</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2014年6月1日</p></td>
<td><p>≥ 5.4.0</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2015年2月4日</p></td>
<td><p>≥ 5.4.0</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2015年6月9日</p></td>
<td><p>≥ 5.5.9</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2015年12月21日</p></td>
<td><p>≥ 5.5.9</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2016年8月23日</p></td>
<td><p>≥ 5.6.4</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2017年1月24日</p></td>
<td><p>≥ 5.6.4</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2017年8月30日</p></td>
<td><p>≥ 7.0.0</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2018年2月7日</p></td>
<td><p>≥ 7.1.3</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2018年9月4日</p></td>
<td><p>≥ 7.1.3</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2019年2月26日</p></td>
<td><p>≥ 7.1.3</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

來源: Laravel\[20\]

## 功能

以下幾點為 Laravel 的核心設計理念\[21\]

  - **Bundles**：Laravel 3 所提供的
    [套件管理系統](../Page/软件包管理系统.md "wikilink")，能讓開發者輕鬆的將一些套裝功能擴充至專案中。
    Laravel 4 再進一步的使用 Composer 管理套件之間的相依性，也因此得以從
    [Packagist](../Page/Composer_\(軟體\).md "wikilink") 上安裝泛用於各種框架或
    Laravel 專用的 PHP 套件。\[22\]
  - **Eloquent ORM** ([物件關係對映](../Page/对象关系映射.md "wikilink"))：將 [Active
    Record 模式](../Page/Active_Record.md "wikilink") 以 PHP 實作，提供一些函式來建立
    [資料庫](https://zh.wikipedia.org/wiki/資料庫 "wikilink") 物件之間的關聯。 依照
    Active Record 模式的原則，Eloquent ORM 以
    [類別](../Page/类_\(计算机科学\).md "wikilink") 代表
    [資料表](https://zh.wikipedia.org/wiki/資料表 "wikilink")，並將這些類別的物件實例與資料表中的單一筆資料做綁定。\[23\]\[24\]
  - **Query builder**：於 Laravel 3 釋出，提供一個能更直接的存取 Eloquent ORM 的管道。 與其撰寫
    [SQL 查詢語法](../Page/查询_\(SQL\).md "wikilink")，Laravel 的 query builder
    提供了一系列的類別與 [函式](../Page/方法_\(電腦科學\).md "wikilink")，得以使用程式化呼叫的方式來執行
    SQL 查詢。 同時也可以對查詢語法的執行結果做（可再被查詢的）快取。\[25\]
  - **Application logic**：在專案中將其他已開發的功能整合，顯著的案例為 Controller 的使用與路由的宣告。
    其語法與 Sinatra 框架相似。
  - **Reverse
    routing**：為專案內的超連結建立成一個一個的路由，當套用了路由的超連結被修改，便會自動更新所有使用了該路由的超連結。
    使用時需要填入要使用的路由的名稱，Laravel 會將他們轉換成對應的
    [URIs](../Page/统一资源标志符.md "wikilink")。
  - **Restful controllers**：提供一種將 [HTTP
    GET](../Page/超文本传输协议.md "wikilink") 和 POST requests
    背後的邏輯切割的方式。
  - **Class auto loading**：能自動載入 PHP 的類別，省去手動維護所有類別的引用路徑的麻煩。
    類別只會在被使用到的當下才載入，如此也能避免載入不必要的類別。
  - **[View](../Page/MVC.md "wikilink") composers**：是可自定義的一些程式碼區塊，當 view
    被載入時便會被執行。

<!-- end list -->

  - **Database
    seeding**：提供一種管道來把預設的資料用來填充到資料庫，便於進行[软件测试](../Page/软件测试.md "wikilink")，或被作為應用程式最初的建置步驟。
  - **[单元测试](../Page/单元测试.md "wikilink")** 也被整合到了
    Laravel，其包括的測試案例能夠偵測並預防框架內的[迴歸](https://zh.wikipedia.org/wiki/迴歸 "wikilink")，並可以使用
    Artisan CLI 來執行單元測試.
  - **Homestead**：
    一個[Vagrant](../Page/Vagrant.md "wikilink")[虛擬機](../Page/虛擬機器.md "wikilink")，預載了
    Laravel 開發者需要的所有開發工具，包括
    [Ubuntu](../Page/Ubuntu.md "wikilink")，Gulp，Bower
    以及其他輔助網頁開發的工具。\[26\]

### 官方提供的套件

可透過 composer 以及 packagist 安裝下列模組：

  - *Cashier* 於 Laravel 4.2 推出，可串接訂閱制付款服務如
    [Stripe](../Page/Stripe.md "wikilink")，並提供
    [优惠券](../Page/优惠券.md "wikilink") 和
    [收據](../Page/发票.md "wikilink") 等功能。
  - *SSH*，於 Laravel 4.1 推出，允許程式透過
    [SSH](../Page/Secure_Shell.md "wikilink") 在遠端伺服器執行 [CLI
    指令](../Page/命令行界面.md "wikilink") 。
  - *Scheduler*， 於 Laravel 5.0 推出，可以透過程式排程 Artisan 指令的執行
    [cronjob](../Page/Cron.md "wikilink")，但仍需依賴
    [Cron](../Page/Cron.md "wikilink") daemon。
  - *Flysystem*，於 Laravel 5.0 推出，統一了 [檔案系統](../Page/文件系统.md "wikilink")
    的函式，讓本地端和 [雲端](../Page/雲端運算.md "wikilink") 儲存空間（如 [亞馬遜
    S3](../Page/Amazon_S3.md "wikilink")、[Rackspace
    Cloud](https://zh.wikipedia.org/wiki/Rackspace_Cloud "wikilink")）的操作邏輯一致。
  - *Socialite*，於 Laravel 5.0 推出，簡化串接
    [OAuth](../Page/开放授权.md "wikilink") 的流程，提供平台如
    [Facebook](../Page/Facebook.md "wikilink"),
    [Twitter](../Page/Twitter.md "wikilink"),
    [Google上](../Page/Google.md "wikilink")，
    [GitHub](../Page/GitHub.md "wikilink") 和
    [Bitbucket](../Page/Bitbucket.md "wikilink") 等等。

### Artisan CLI

Laravel 的 [命令列介面](../Page/命令行界面.md "wikilink") (CLI)，稱為 *Artisan*，於
Laravel 3 推出時功能還相當有限。 隨後 Laravel 將架構改為以
[Composer](https://zh.wikipedia.org/wiki/Composer "wikilink") 作為基底，讓
Artisan 得以和 [Symfony](../Page/Symfony.md "wikilink") 框架的元件互補，也因此 Laravel
4 的 Artisan 提供了更多的功能。\[27\]

Artisan 的功能被分散到不同的子命令，用以協助打造與管理這些由 Laravel 建構而成的軟體。最常見的使用情境如：操作資料庫的
migration & seeding、汲取套件的靜態資源、為新建立的 controller 或 migration
產生程式碼樣板（為開發者省去重複撰寫相同程式碼的時間）。開發者也可以自行新增新的命令，來擴充
Artisan 的功能（如自動化的執行任務）。\[28\]

### 伺服器配置

Laravel 對伺服器環境有少量的要求。 然而，這些要求可以透過使用家用的虛擬機來達成，因此強烈建議使用家用作為本地的開發環境。

若不使用 Homestead，您需要確保您的伺服器滿足以下的要求，這裏以長期支援版本 Laravel 5.5 為例，如果是最新版本
Laravel 5.8 需要 PHP 版本 \>= 7.1.3 ：

  - PHP 版本 \>= 7.0.0
  - [OpenSSL](../Page/OpenSSL.md "wikilink") PHP 擴充
  - [PDO](https://zh.wikipedia.org/wiki/PDO "wikilink") PHP 擴充
  - Mbstring PHP 擴充
  - [Tokenizer](https://zh.wikipedia.org/wiki/词法分析#%E6%A0%87%E8%AE%B0%E7%94%9F%E6%88%90%E5%99%A8 "wikilink")
    PHP 擴充
  - [XML](https://zh.wikipedia.org/wiki/可延伸標記式語言 "wikilink") PHP 擴充

## 研討會

### Laracon

**Laracon**為Laravel官方舉辦的研討會，曾在[美國](https://zh.wikipedia.org/wiki/美國 "wikilink")、[歐洲和網路上舉辦](https://zh.wikipedia.org/wiki/歐洲 "wikilink")，主題囊括Laravel的開發、使用、和與其有關的[軟體開發議題](https://zh.wikipedia.org/wiki/軟體開發 "wikilink")\[29\]\[30\]。每年的會議具有各種不同的贊助者和組織成員，但
Laravel官方、Laravel News和UserScape通常是主要的組織成員。

一般來說，每一年都會在[美國和](https://zh.wikipedia.org/wiki/美國 "wikilink")[歐洲舉辦一次研討會](https://zh.wikipedia.org/wiki/歐洲 "wikilink")。而2017年Laracon也首度於網路上舉辦，未來也將會有更多活動以類似形式出現在網路上\[31\]。

目前已經舉辦了以下場次：
[Taylor_Otwell_at_Laracon_DC_2013_-_2.jpg](https://zh.wikipedia.org/wiki/File:Taylor_Otwell_at_Laracon_DC_2013_-_2.jpg "fig:Taylor_Otwell_at_Laracon_DC_2013_-_2.jpg")

| 日期             | 位置                                               |
| -------------- | ------------------------------------------------ |
| 2013年2月22\~23日 | [华盛顿特区](../Page/华盛顿哥伦比亚特区.md "wikilink")         |
| 2013年8月30\~31日 | [阿姆斯特丹](../Page/阿姆斯特丹.md "wikilink")             |
| 2014年5月15\~16日 | [纽约市](../Page/纽约.md "wikilink")                  |
| 2014年8月28\~30日 | [阿姆斯特丹](../Page/阿姆斯特丹.md "wikilink")             |
| 2015年8月11\~12日 | [肯塔基州路易斯维尔](../Page/路易維爾_\(肯塔基州\).md "wikilink") |
| 2015年8月25\~26日 | [阿姆斯特丹](../Page/阿姆斯特丹.md "wikilink")             |
| 2016年7月27\~29日 | [肯塔基州路易斯维尔](../Page/路易維爾_\(肯塔基州\).md "wikilink") |
| 2016年8月23\~24日 | [阿姆斯特丹](../Page/阿姆斯特丹.md "wikilink")             |
| 2017年8月        | 線上舉辦                                             |
| 2017年7月25\~26日 | [纽约市](../Page/纽约.md "wikilink")                  |
| 2017年8月28\~30日 | [阿姆斯特丹](../Page/阿姆斯特丹.md "wikilink")             |

### LaravelConf Taiwan

**LaravelConf
Taiwan**為Laravel道場\[32\]主辦人兼台灣的社群推廣者范聖佑發起的研討會。自2017年開始，於張榮發基金會國際會議中心舉辦。研討會議程包括技術主題、實做主題以及套件發表會等內容。\[33\]\[34\]

目前已經舉辦了以下場次：

  - LaravelConf Taiwan 2017 - 2017年7月1日
  - LaravelConf Taiwan 2018 - 2018年7月8日

## 合作伙伴

在2017年4月7日，Taylor Otwell公告出了Laravel网站的"夥伴"章節。
其目的是為了提供Laravel社群一個公司的列表，列表內所列出的公司中，每一個公司都是能夠提供Laravel最佳发展和指导的可信公司。2017年九月，Laravel的合作伙伴包括：

  - Vehikl
  - Tighten Co.
  - Kirschbaum Development Group

## 参見

  - [各網頁框架系統的比較](https://zh.wikipedia.org/wiki/各網頁框架系統的比較 "wikilink")

  -
## 註記

## 参考文献

<references />

[Category:用PHP编程的自由软件](https://zh.wikipedia.org/wiki/Category:用PHP编程的自由软件 "wikilink")
[Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink")
[Category:Web应用框架](https://zh.wikipedia.org/wiki/Category:Web应用框架 "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.

9.
10.
11.
12.

13. 原先為 Laravel 4.3，因為一些內部因素而修改版本號）

14.

15.

16.

17.

18.

19.

20.

21. 其餘未具體指出的，可以參考 Laravel 3 技術文件的功能敘述:

22.

23.

24.

25.

26.

27.

28.
29.

30.

31.

32. [Laravel道場](https://www.laravel-dojo.com/)

33.

34.