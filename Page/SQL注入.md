**SQL注入**（），也稱**SQL隱碼**或**SQL注碼**，是發生於應用程式與資料庫層的[安全漏洞](../Page/安全漏洞.md "wikilink")。簡而言之，是在輸入的字串之中夾帶[SQL指令](../Page/SQL.md "wikilink")，在設計不良的[程式當中忽略了字元檢查](../Page/计算机程序.md "wikilink")，那麼這些夾帶進去的惡意指令就會被[資料庫](../Page/資料庫.md "wikilink")[伺服器誤認為是正常的SQL指令而執行](../Page/伺服器.md "wikilink")，因此遭到破壞或是入侵。\[1\]

有部份人認為SQL注入是只針對[Microsoft SQL
Server而來](../Page/Microsoft_SQL_Server.md "wikilink")，但只要是支援批次處理SQL指令的資料庫伺服器，都有可能受到此種手法的攻擊。

## 原因

[Why_your_extension_will_not_be_enabled_on_Wikimedia_wikis_in_its_current_state_and_what_you_can_do_about_it.pdf](https://zh.wikipedia.org/wiki/File:Why_your_extension_will_not_be_enabled_on_Wikimedia_wikis_in_its_current_state_and_what_you_can_do_about_it.pdf "fig:Why_your_extension_will_not_be_enabled_on_Wikimedia_wikis_in_its_current_state_and_what_you_can_do_about_it.pdf")上的一幅漫画。该学生的姓名为“”，导致students表被删除。\[2\]\]\]
在應用程式中若有下列狀況，則可能應用程式正暴露在SQL Injection的高風險情況下：

1.  在應用程式中使用字串聯結方式或聯合查詢方式組合SQL指令。
2.  在應用程式連結資料庫時使用權限過大的帳戶（例如很多開發人員都喜歡用最高權限的系統管理員帳戶（如常见的root，sa等）連接資料庫）。
3.  在資料庫中開放了不必要但權力過大的功能（例如在[Microsoft SQL
    Server資料庫中的xp](../Page/Microsoft_SQL_Server.md "wikilink")_cmdshell延伸預存程序或是OLE
    Automation預存程序等）
4.  太過於信任使用者所輸入的資料，未限制輸入的特殊字元，以及未對使用者輸入的資料做潛在指令的檢查。

## 作用原理

1.  SQL命令可查詢、插入、更新、刪除等，命令的串接。而以分號字元為不同命令的區別。（原本的作用是用於SubQuery或作為查詢、插入、更新、刪除……等的條件式）
2.  SQL命令對於傳入的字串參數是用單引號字元所包起來。（但連續2個單引號字元，在SQL資料庫中，則視為字串中的一個單引號字元）
3.  SQL命令中，可以夾帶註解（連續2個減號字元 `--` 後的文字為註解，或“`/*`”與“`*/`”所包起來的文字為注解）
4.  因此，如果在組合SQL的命令字串時，未針對單引號字元作跳脫處理的話，將導致該字元變數在填入命令字串時，被惡意竄改原本的SQL語法的作用。

## 例子

某個網站的登入驗證的SQL查詢代碼為

``` sql
strSQL = "SELECT * FROM users WHERE (name = '" + userName + "') and (pw = '"+ passWord +"');"
```

惡意填入

``` sql
userName = "1' OR '1'='1";
```

與

``` sql
passWord = "1' OR '1'='1";
```

時，將導致原本的SQL字串被填為

``` sql
strSQL = "SELECT * FROM users WHERE (name = '1' OR '1'='1') and (pw = '1' OR '1'='1');"
```

也就是實際上运行的SQL命令會變成下面這樣的

``` sql
strSQL = "SELECT * FROM users;"
```

因此達到無帳號密碼，亦可登入網站。所以SQL注入被俗稱為駭客的填空遊戲。

## 可能造成的傷害

1.  資料表中的資料外洩，例如企業及個人機密資料，帳戶資料，密碼等。
2.  資料結構被駭客探知，得以做進一步攻擊（例如SELECT \* FROM sys.tables）。
3.  資料庫伺服器被攻擊，系統管理員帳戶被竄改（例如ALTER LOGIN sa WITH PASSWORD='xxxxxx'）。
4.  取得系統較高權限後，有可能得以在網頁加入[惡意連結](../Page/惡意連結.md "wikilink")、[惡意代碼以及](../Page/惡意代碼.md "wikilink")[Phishing等](../Page/Phishing.md "wikilink")。
5.  經由資料庫伺服器提供的作業系統支援，讓駭客得以修改或控制作業系統（例如xp_cmdshell "net stop
    iisadmin"可停止伺服器的IIS服務）。
6.  駭客經由上傳php簡單的指令至對方之主機內，PHP之強大系統命令，可以讓駭客進行全面控制系統(例如:php一句話木馬)。
7.  破壞硬碟資料，癱瘓全系統（例如xp_cmdshell "FORMAT C:"）。
8.  取得系統最高權限後，可針對企業內部的任一管理系統做大規模破壞，甚至讓其企業倒閉。
9.  企業網站首頁被竄改，門面盡失。

## 避免的方法

1.  在設計應用程式時，完全使用[參數化查詢](../Page/參數化查詢.md "wikilink")（Parameterized
    Query）來設計資料存取功能。
2.  在組合SQL字串時，先針對所傳入的參數加入其他字元（將單引號字元前加上跳脫字元）。
3.  如果使用[PHP開發網頁程式的話](../Page/PHP.md "wikilink")，需加入跳脫字元之功能（自動將所有的網頁傳入參數，將單引號字元前加上跳脫字元）。
4.  使用php開發，可寫入html特殊函式，可正確阻擋[XSS攻擊](../Page/XSS.md "wikilink")。
5.  其他，使用其他更安全的方式連接SQL資料庫。例如已修正過SQL注入問題的資料庫連接元件，例如[ASP.NET的SqlDataSource物件或是](../Page/ASP.NET.md "wikilink")
    [LINQ](../Page/语言集成查询.md "wikilink") to SQL。
6.  使用SQL防注入系统。
7.  增強的防禦力

## 参考文献

## 外部連結

  - [賽迪網-存儲過程之外：SQL注入深入防禦](https://web.archive.org/web/20120429034040/http://security.ccidnet.com/art/1099/20060918/902693_1.html)
  - [MSDN
    的SQL資料注入概述](http://msdn2.microsoft.com/zh-tw/library/ms161953.aspx)
  - [MSDN 的 SQL
    注入概述](http://msdn.microsoft.com/zh-cn/library/ms161953.aspx)
  - [Protecting yourself from SQL Injection
    Attacks](http://www.4guysfromrolla.com/ASPScripts/PrintPage.asp?REF=%2Fwebtech%2F061902-1.shtml)
    by Ross Overstreet
  - "[SQLrand: Preventing SQL Injection
    Attacks](http://citeseer.ist.psu.edu/641328.html)" by Stephen W.
    Boyd and Angelos D. Keromytis
  - "[What is SQL
    Injection?](http://www.cgisecurity.com/questions/sql.shtml)" By
    CGISecurity.com
  - "[What is Blind SQL
    Injection?](http://www.cgisecurity.com/questions/blindsql.shtml)" By
    CGISecurity.com
  - [Avoid SQL
    injection](https://web.archive.org/web/20060717225700/http://www.windowsitpro.com/Article/ArticleID/46379/46379.html)
  - [PHP and SQL
    Injections](../Page/b:en:Programming:PHP:SQL_Injection.md "wikilink")
  - [SQL Injection in Login Forms](http://www.sandaru1.com/?p=10)
  - [xkcd上以SQL注入为主题的漫画](https://xkcd.com/327/)

[Category:数据管理](https://zh.wikipedia.org/wiki/Category:数据管理 "wikilink")
[Category:SQL](https://zh.wikipedia.org/wiki/Category:SQL "wikilink")
[Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink")
[Category:注入漏洞](https://zh.wikipedia.org/wiki/Category:注入漏洞 "wikilink")

1.
2.  <https://xkcd.com/327/>