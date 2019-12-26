**Smarty**是一個[PHP](../Page/PHP.md "wikilink")下的[網頁模板系統](https://zh.wikipedia.org/wiki/網頁模板 "wikilink")。Smarty基本上是一種為了將不同考量的事情分離而推出的工具，這對某些應用程式是一種共通性設計策略。\[1\]\[2\]

## 簡介

Smarty以在文件中放置特殊的「Smarty標籤」來產生網頁內容。這些標籤會被處理並替換成其他的內容。

標籤是給Smarty的指令符，以模板[定界符包住](https://zh.wikipedia.org/wiki/定界符 "wikilink")。這些指令符可以是[變數](../Page/變數.md "wikilink")，以$符號代表函數、[邏輯或](https://zh.wikipedia.org/wiki/條件式語法 "wikilink") [流程控制語法](https://zh.wikipedia.org/wiki/流程控制 "wikilink")。Smarty允許PHP程式設計師以Smarty標籤去定義可存取的函數。

Smarty意圖簡化[區域化](https://zh.wikipedia.org/wiki/區域化 "wikilink")，允許PHP網頁後端邏輯與表現層（即[使用者介面](https://zh.wikipedia.org/wiki/使用者介面 "wikilink")）分離。理想的情況下，這將降低軟體維護費用和人力。在這個研發策略之下，設計師可專注於實現表現層而不用撰寫PHP程式碼，並允許PHP程式設計師抽離出表現層並專注實現後端邏輯。

Smarty支援幾個高階模板程式的特性，包含：

  - [正規表示法](https://zh.wikipedia.org/wiki/正則表達式 "wikilink")
  - [流程控制語法](https://zh.wikipedia.org/wiki/流程控制 "wikilink")，如foreach、while。
  - [if](https://zh.wikipedia.org/wiki/Control_flow#Choice "wikilink")，elseif，else
  - 可修改的變數 - 例如{$variable|nl2br}
  - 使用者自訂的函數
  - 在模板內的數學計算

以及其他特性。一些其他的[模板引擎也支援這類特性](../Page/網頁.md "wikilink")。

## 程式碼範例

因為 Smarty將 HTML碼與PHP程式碼分離，所以會有兩個檔案：

``` html4strict
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>
   <title>{$title_text}</title>
   <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
</head>

<body> {* This is a little comment that won't be visible in the HTML source *}

<p>{$body_text}</p>

</body><!-- this is a little comment that will be seen in the HTML source -->
</html>
```

在企業邏輯程式碼中，設計者能配置Smarty去使用這個模板：

``` php
define('SMARTY_DIR', 'smarty-2.6.9/' );
require_once(SMARTY_DIR . 'Smarty.class.php');

$smarty = new Smarty();
$smarty->template_dir = './templates/';
$smarty->compile_dir = './templates/compile/';
$smarty->cache_dir = './templates/cache/';
$smarty->caching = false;
$smarty->error_reporting = E_ALL; // LEAVE E_ALL DURING DEVELOPMENT
$smarty->debugging = true;

$smarty->assign('title_text', 'TITLE: This is the Smarty basic example ...');
$smarty->assign('body_text', 'BODY: This is the message set using assign()');

$smarty->display('index.tpl');
```

並且能將PHP包涵在Smarty模板裡，像是下面這樣：

``` php
{* We can use PHP syntax in smarty template inside {php} ..{/php} *}
{php}
$contentType = strpos($_SERVER['HTTP_ACCEPT']，'application/xhtml+xml') === false ? 'text/html' : 'application/xhtml+xml';
header("Content-Type: $contentType; charset=utf-8");
{/php}
<html>
<head>
<title>{$page_title}</title>
</head>
<body>
   {$body_text}
</body>
</html>
```

## 參照

## 參見

  - [內容管理系統](https://zh.wikipedia.org/wiki/內容管理系統 "wikilink")

## 外部連結

### 英文

  - [Official site](http://www.smarty.net/)
  - [*PHP Templating with Smarty*](https://web.archive.org/web/20061207024654/http://www.zend.com/zend/tut/tutorial-cezar.php) by Cezar Floroiu - Smarty tutorial
  - [*Smarty vs. XML/XSLT*](http://www.devpapers.com/article/18) - from DevPapers.com by Sergey Makogon
  - [Smarty Cheat Sheet](http://hasin.wordpress.com/2006/06/10/smarty-cheat-sheet-version-20/) Smarty Cheat Sheet for Templates Designers and Programmers
  - [Timestretch: *PHP, MySQL, and Smarty Programming*](https://web.archive.org/web/20070627161639/http://www.timestretch.com/php_intro/?page=smarty) - Also see the PHP2 page for more.
  - [PHP Smarty Tools](http://www.nusphere.com/products/php_smarty.htm) - Using Smarty in PhpED

### 中文

  - [Smarty入門](https://web.archive.org/web/20170212091000/http://jaceju.net/2005-06-08-getting-started-with-smarty/)
  - [Smarty使用手冊](http://www.ecstart.com/ebook/SMARTYTEMPLATE_BIG5/)
  - [Smarty使用教程](https://web.archive.org/web/20110215200723/http://www.leapsoul.cn/?p=405)

[Category:PHP](https://zh.wikipedia.org/wiki/Category:PHP "wikilink") [Category:網頁模板引擎](https://zh.wikipedia.org/wiki/Category:網頁模板引擎 "wikilink")

1.  Smarty將[PHP](../Page/PHP.md "wikilink")碼（）與 [HTML](../Page/HTML.md "wikilink")碼分開（通常代表）.
2.