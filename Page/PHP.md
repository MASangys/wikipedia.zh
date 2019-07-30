**PHP**（全称：**P**HP：**H**ypertext **P**reprocessor，即“PHP：超文本预处理器”）是一种[开源的通用](https://zh.wikipedia.org/wiki/开源 "wikilink")[计算机](https://zh.wikipedia.org/wiki/计算机 "wikilink")[脚本语言](../Page/脚本语言.md "wikilink")，尤其适用于[网络开发并可嵌入](https://zh.wikipedia.org/wiki/网络开发 "wikilink")[HTML](../Page/HTML.md "wikilink")中使用。PHP的语法借鉴吸收[C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[Java](../Page/Java.md "wikilink")和[Perl](../Page/Perl.md "wikilink")等流行计算机语言的特点，易于一般[程序员](../Page/程序员.md "wikilink")学习。PHP的主要目标是允许网络开发人员快速编写[动态页面](https://zh.wikipedia.org/wiki/动态页面 "wikilink")，但PHP也被用于其他很多领域。\[1\]

PHP最初是由[勒多夫在](../Page/拉斯姆斯·勒多夫.md "wikilink")1995年开始开发的；現在PHP的標準由the PHP Group\[2\]維護。PHP以PHP License作為許可協議，不過因為這個協議限制了PHP名稱的使用，所以和[開放原始碼許可協議](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[GPL不相容](https://zh.wikipedia.org/wiki/GPL "wikilink")。\[3\]

PHP的應用範圍相當廣泛，尤其是在網頁程式的開發上。一般來說PHP大多執行在網頁伺服器上，透過執行PHP程式碼來產生使用者瀏覽的網頁。PHP可以在多數的伺服器和作業系統上執行，而且使用PHP完全是免費的。根據2013年4月的統計資料，PHP已經被安裝在超過2億4400萬個網站和210萬台伺服器上\[4\]。

PHP在[Windows上有专门的官方移植编译项目](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，并且分多个VC编译器版本和[线程安全](../Page/线程安全.md "wikilink")特性来提供不同的版本支持。

## 開發歷史

[Andi_Gutmans_1.jpg](https://zh.wikipedia.org/wiki/File:Andi_Gutmans_1.jpg "fig:Andi_Gutmans_1.jpg") [Zeev_Suraski.jpg](https://zh.wikipedia.org/wiki/File:Zeev_Suraski.jpg "fig:Zeev_Suraski.jpg")

*PHP*原本的簡稱為Personal Home Page\[5\]，是[拉斯姆斯·勒多夫](../Page/拉斯姆斯·勒多夫.md "wikilink")為了要維護個人網頁，而用c語言開發的一些[CGI工具程式集](../Page/通用网关接口.md "wikilink")，來取代原先使用的[Perl](../Page/Perl.md "wikilink")程式。最初這些工具程式用來顯示拉斯姆斯·勒多夫的個人履歷，以及統計網頁流量\[6\]。他將這些程式和一些表單直譯器整合起來，稱為PHP/FI。PHP/FI可以和資料庫連接，產生簡單的動態網頁程式。拉斯姆斯·勒多夫在1995年6月8日將PHP/FI公開釋出，希望可以透過社群來加速程式開發與尋找錯誤\[7\]。這個釋出的版本命名為PHP 2，已經有今日PHP的一些雛型，像是類似[Perl](../Page/Perl.md "wikilink")的變數命名方式、表單處理功能、以及嵌入到HTML中執行的能力。程式語法上也類似Perl，有較多的限制，不過更簡單、更有彈性。\[8\]

在1997年，任職於Technion IIT公司的兩個[以色列](../Page/以色列.md "wikilink")程式設計師：Zeev Suraski和Andi Gutmans，重寫了PHP的[剖析器](../Page/語法分析器.md "wikilink")，成為PHP 3的基礎，而PHP也在這個時候改稱為*PHP: Hypertext Preprocessor*.\[9\]。經過幾個月測試，開發團隊在1997年11月釋出了PHP/FI 2，隨後就開始PHP 3的開放測試，最後在1998年6月正式釋出PHP 3。Zeev Suraski和Andi Gutmans在PHP 3釋出後開始改寫PHP的核心，這個在1999年釋出的剖析器稱為[Zend Engine](../Page/Zend引擎.md "wikilink")\[10\]，他們也在[以色列](../Page/以色列.md "wikilink")的Ramat Gan成立了Zend Technologies來管理PHP的開發。\[11\]

在2000年5月22日，以Zend Engine 1.0為基礎的PHP 4正式釋出，2004年7月13日則釋出了PHP 5，PHP 5則使用了第二代的Zend Engine\[12\]。PHP包含了許多新特色，像是強化的[物件導向功能](https://zh.wikipedia.org/wiki/物件導向 "wikilink")、引入PDO（PHP Data Objects，一個存取[資料庫的延伸函式庫](https://zh.wikipedia.org/wiki/資料庫 "wikilink")）、以及許多效能上的增強\[13\]。目前PHP 4已經不會繼續更新，以鼓勵用戶轉移到PHP 5。\[14\]\[15\]

2008年时，PHP 5成為了PHP唯一維護中的穩定版本。

PHP 7的首个版本于2015年12月3日開發完成，包含了大量性能上的改进，同时也带来了一些新特性，最值得注意的是返回值类型声明、标量类型声明（可用于参数及返回值）。

### 版本歷程

|    | 代表意義                  |
| -- | --------------------- |
| 紅色 | 过期版本；官方停止支援           |
| 黃色 | 当前版本；官方仅提供安全问题修复      |
| 綠色 | 当前版本；官方提供安全问题和一般问题的修复 |
| 藍色 | 未來版本                  |

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>釋出日期</p></th>
<th><p>结束支持日期[16]</p></th>
<th><p>說明</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>1.0</p></td>
<td><p>1995年6月8日</p></td>
<td></td>
<td><p>正式名稱為"Personal Home Page Tools (PHP Tools)"，第一次使用了"PHP"的名字。[17]</p></td>
</tr>
<tr class="even">
<td><p>2.0</p></td>
<td><p>1996年4月16日</p></td>
<td></td>
<td><p>針對PHP 1.0的改進版，速度更快、體積更小，更容易產生動態網頁。[18]</p></td>
</tr>
<tr class="odd">
<td><p>3.0</p></td>
<td><p>1998年6月6日</p></td>
<td><p>2000年10月20日</p></td>
<td><p>開發方式改成多人共同參與。Zeev Suraski和Andi Gutmans為了這個版本重寫了剖析引擎。[19]</p></td>
</tr>
<tr class="even">
<td><p>4.0</p></td>
<td><p>2000年5月22日</p></td>
<td><p>2001年6月23日</p></td>
<td><p>改成以Zend引擎作為剖析器，具有兩階段剖析/標籤剖析系統等先進功能。[20]</p></td>
</tr>
<tr class="odd">
<td><p>4.1</p></td>
<td><p>2001年12月10日</p></td>
<td><p>2002年3月2日</p></td>
<td><p>加入"超全域變數"（superglobals）功能，包含了<code>$_GET</code>、<code>$_POST</code>、<code>$_SESSION</code>等。[21]</p></td>
</tr>
<tr class="even">
<td><p>4.2</p></td>
<td><p>2002年4月22日</p></td>
<td><p>2002年9月6日</p></td>
<td><p>預設取消register_globals功能。從網路接收的資料將不會設定成全域變數，增加程式安全性。[22]</p></td>
</tr>
<tr class="odd">
<td><p>4.3</p></td>
<td><p>2002年12月27日</p></td>
<td><p>2005年3月31日</p></td>
<td><p>加入命令列執行檔，稱為CLI，用以补充CGI[23][24]</p></td>
</tr>
<tr class="even">
<td><p>4.4</p></td>
<td><p>2005年7月11日</p></td>
<td><p>2008年8月8日</p></td>
<td><p>Added man pages for <code>phpize</code> and <code>php-config</code> scripts.[25]</p></td>
</tr>
<tr class="odd">
<td><p>5.0</p></td>
<td><p>2004年7月13日</p></td>
<td><p>2005年9月5日</p></td>
<td><p>推出有着新的对象模型的Zend Engine II。[26]</p></td>
</tr>
<tr class="even">
<td><p>5.1</p></td>
<td><p>2005年11月24日</p></td>
<td><p>2006年8月24日</p></td>
<td><p>在往重新设计的PHP引擎引入编译变量时做了性能提升。[27]添加了PHP数据对象（PDO）作为访问数据库的统一接口。[28]</p></td>
</tr>
<tr class="odd">
<td><p>5.2</p></td>
<td><p>2006年11月2日</p></td>
<td><p>2011年1月6日</p></td>
<td><p>預設開啟"過濾"的擴充功能。[29]原生的JSON支援。[30]</p></td>
</tr>
<tr class="even">
<td><p>5.3</p></td>
<td><p>2009年6月30日[31]</p></td>
<td><p>2014年8月14日</p></td>
<td><p>支持<a href="../Page/命名空间.md" title="wikilink">命名空间</a>;使用XMLReader和XMLWriter增强XML支持;支持SOAP ,[32]延迟静态绑定，跳转标签（有限的<a href="https://zh.wikipedia.org/wiki/goto" title="wikilink">goto</a>）, <a href="../Page/闭包_(计算机科学).md" title="wikilink">闭包</a>，Native PHP archives。</p></td>
</tr>
<tr class="odd">
<td><p>5.4</p></td>
<td></td>
<td><p>2015年9月3日</p></td>
<td><p>支持<a href="https://zh.wikipedia.org/wiki/Trait" title="wikilink">Trait</a>、简短数组表达式。移除了<code>register_globals</code>, <code>safe_mode</code>, <code>allow_call_time_pass_reference</code>, <code>session_register()</code>, <code>session_unregister()</code>, <code>magic_quotes</code>以及<code>session_is_registered()</code>。加入了内建的Web服务器。[33]增强了性能，减小内存使用量。</p></td>
</tr>
<tr class="even">
<td><p>5.5</p></td>
<td></td>
<td><p>2016年7月10日</p></td>
<td><p>支持generators，用于异常处理的finally ，将OpCache（基于 Zend Optimizer+）加入官方发布中。</p></td>
</tr>
<tr class="odd">
<td><p>5.6</p></td>
<td></td>
<td><p>2018年12月31日</p></td>
<td><p>支持常量标量表达式、可变参数函数、指数运算符，增加phpdbg SAPI、统一的默认字符集。[34]</p></td>
</tr>
<tr class="even">
<td><p>6.x</p></td>
<td></td>
<td></td>
<td><p>取消掉的、从未正式发布的PHP版本。[35][36]</p></td>
</tr>
<tr class="odd">
<td><p>7.0</p></td>
<td><p>2015年12月3日[37]</p></td>
<td><p>2018年12月3日</p></td>
<td><p>Zend Engine 3 (性能提升[38]并在Windows上支持 64-bit 整数)，统一的变量语法， </p>
<p>基于抽象语法树编译过程。</p></td>
</tr>
<tr class="even">
<td><p>7.1</p></td>
<td><p>2016年12月1日</p></td>
<td><p>2019年12月1日</p></td>
<td><p>void返回值类型，类常量可见性修饰符</p></td>
</tr>
<tr class="odd">
<td><p>7.2</p></td>
<td><p>2017年11月30日</p></td>
<td><p>2020年11月30日</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 吉祥物

[Webysther_20160423_-_Elephpant.svg](https://zh.wikipedia.org/wiki/File:Webysther_20160423_-_Elephpant.svg "fig:Webysther_20160423_-_Elephpant.svg")

PHP計畫的吉祥物名叫「elePHPant」，PHP的logo在一頭藍象的裡面，由文森·龐蒂爾(Vincent Pontier)\[39\]在1998年\[40\]設計。其設計概念是從側面看 PHP 像隻大象\[41\]。當elePHPant被製作成[毛絨玩具時](https://zh.wikipedia.org/wiki/毛絨玩具 "wikilink")，有時顏色會有不同。

## 應用

[WebSite-PHP_Schema_MVC.png](https://zh.wikipedia.org/wiki/File:WebSite-PHP_Schema_MVC.png "fig:WebSite-PHP_Schema_MVC.png") PHP是一個應用範圍很廣的語言，特別是在網路程式開發方面。一般來說PHP大多在伺服器端執行，透過執行PHP的程式碼來產生網頁提供瀏覽器讀取，此外也可以用來開發命令列腳本程式和使用者端的GUI應用程式。PHP可以在許多的不同種的伺服器、作業系統、平台上執行，也可以和許多[資料庫系統結合](https://zh.wikipedia.org/wiki/資料庫 "wikilink")。使用PHP不需要任何費用，官方組織PHP Group提供了完整的-{zh-hans:程序源代码;zh-hant:程式原始碼;}-，允許使用者修改、編譯、擴充來使用。\[42\]

## 安全

据[National Vulnerability Database数据显示](https://zh.wikipedia.org/wiki/National_Vulnerability_Database "wikilink")，与PHP有关的数据库攻击比例为：20% 2004, 28% 2005, 43% 2006, 36% 2007, 35% 2008 and 32% 2009\[43\]。其中很多的漏洞都可以通过远程操作完成，如：[黑客](../Page/黑客.md "wikilink")可以通过网络连接攻击服务器，达到盗取或毁坏数据，发送[垃圾邮件或进行](https://zh.wikipedia.org/wiki/垃圾邮件 "wikilink")[分散式阻斷服務攻擊](https://zh.wikipedia.org/wiki/分散式阻斷服務攻擊 "wikilink")。但是随着更多的关注，PHP也变得越来越安全了。

### PHP官网被駭入事件

2010年12月17日，PHP代码“贡献者名单”中被加入“Wolegequ Gelivable”字样（中文含义“我勒个去 给力”），约半小时后被删除。\[44\]\[45\]\[46\]2011年3月19日，PHP官方发布声明\[47\]指出，黑客可能是通过wiki.php.net作为入口攻击了代码系统。并且，官方已经检查过自版本5.3.5以来釋出的代码，并没有发现恶意内容。但官方同时表示，尚未完全掌握黑客发动本次攻击的具体细节。

## 語法

PHP的語法參考了[Perl](../Page/Perl.md "wikilink")、[C語言](https://zh.wikipedia.org/wiki/C語言 "wikilink")，而且可以整合在[HTML](../Page/HTML.md "wikilink")之中，以下是一個簡單的[Hello World程式碼](../Page/Hello_World.md "wikilink")：

``` php
 <?php
     echo 'Hello World!';
 ?>
```

PHP剖析引擎只剖析'''

<?php'''到'''?>

**之間的程式碼，而不包含在**

<?php'''到'''?>

'''之間的內容則會直接送出，所以可以用以下的方式來將PHP程式碼嵌入在HTML之中：

``` php
 <?php
     //-PHP-{zh-hans:代码;zh-hant:程式碼：}-
 ?>
 html內容
 <?php
     //-PHP-{zh-hans:代码;zh-hant:程式碼：}-
 ?>
```

在HTML中嵌入PHP时，比如需要單獨输出某個變數，除了正常採用 echo 方式外，也可以直接採用下列方式：

``` php
 <?=$title?>
```

但是上述這種方式曾經引起爭議，有的人並不推薦這種方式的縮寫\[48\]（其原因為：並不是所有伺服器都支援縮寫，但在後期之後此選項為預設開啟），也有人因為採用這種方法，造成與 XML 搞混\[49\]的情況。

在判斷語句中的HTML代碼並不會被直接送出：

``` php
 <?php
 if (false) {
 ?>
 HTML Code
 <?php
 }
 ?>
```

PHP可以用三種註解的形式：C與C++所使用的「/\*...\*/」與「//」，和Perl的「\#」。

``` php
 <?php
 /* 多行註解的第一行
 多行註解的另一行 */

 // 單行註解

 # 單行註解
 ?>
```

### 類型

PHP主要有八种基本数据类型\[50\]，其中包括：

  - 四種[变量類型](https://zh.wikipedia.org/wiki/变量 "wikilink")
      - [整數型](../Page/整数_\(计算机科学\).md "wikilink")（integer）
      - [浮點數型](../Page/浮点数.md "wikilink")（float）
      - [布尔型](https://zh.wikipedia.org/wiki/布尔型 "wikilink")（boolean）
      - [字符串](../Page/字符串.md "wikilink")（string）
  - 兩種[複合類型](https://zh.wikipedia.org/wiki/複合類型 "wikilink")
      - [陣列](https://zh.wikipedia.org/wiki/陣列 "wikilink")（array）
      - [对象](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")（object）
  - 兩種特殊類型
      - [NULL](https://zh.wikipedia.org/wiki/Null_\(编程\) "wikilink")
      - 資源 （resource）

### 變數

PHP中，[變數](../Page/變數.md "wikilink")以「$」後接变量名稱來表示。 變數名稱區分大小寫。

有效的變數名稱以字母或底線開頭，後接任意數目的字母、數字或底線，PHP也支持使用多字节文字作为變數名。\[51\]

### 物件導向

PHP從PHP 3開始有了基本的[物件導向](https://zh.wikipedia.org/wiki/物件導向 "wikilink")（Object oriented）的特性，但直到PHP 5將物件導向部份重新改寫之後，PHP的物件導向功能才比較完善。現在PHP可以說是一個有完整物件導向功能的語言。

## PHP相關資源

### PHP框架

使用PHP框架可以更快更简单的部署项目並提高开发效率，但学习使用这些框架需要付出额外的学习成本。

最流行的PHP框架包括：[Symfony](../Page/Symfony.md "wikilink"), [Zend Framework](https://zh.wikipedia.org/wiki/Zend_Framework "wikilink"), [Laravel](../Page/Laravel.md "wikilink")、[Phalcon](../Page/Phalcon.md "wikilink")、[CodeIgniter](../Page/CodeIgniter.md "wikilink")、[Yii](https://zh.wikipedia.org/wiki/Yii "wikilink")、[ThinkPHP等等](https://zh.wikipedia.org/wiki/ThinkPHP "wikilink")。

### 函式庫

內建多樣化的函數是PHP主要的特點之一，這些開放程式碼的函數提供了各種不同的功能，例如-{zh-hans:文件; zh-hant:檔案;}-處理、[FTP](https://zh.wikipedia.org/wiki/FTP "wikilink")、-{zh-hans:字符串;zh-hant:字串;}-處理、等等。這些函數的使用方法和[C語言相近](https://zh.wikipedia.org/wiki/C語言 "wikilink")（例如`printf`），這也是PHP廣為流行的原因之一。

除了內建的函數之外，PHP也提供了很多-{zh-cn:扩展;zh-tw:延伸;}-函式庫（extension），像是各種[資料庫連接函數](https://zh.wikipedia.org/wiki/資料庫 "wikilink")、[資料壓縮函數](https://zh.wikipedia.org/wiki/資料壓縮 "wikilink")、圖形處理等等。有些延伸函式庫需要從[PECL](https://zh.wikipedia.org/wiki/PECL "wikilink")（PHP Extension Community Library）取得。

以下是**PHP**程式語言提供的函式庫列表

  - [Apache](../Page/Apache_HTTP_Server.md "wikilink")
  - [BCMath](https://zh.wikipedia.org/wiki/BCMath "wikilink")
  - [Bzip2](../Page/Bzip2.md "wikilink")
  - [Calendars](https://zh.wikipedia.org/wiki/Calendar "wikilink")
  - [CCVS](https://zh.wikipedia.org/wiki/CCVS "wikilink")
  - [COM](https://zh.wikipedia.org/wiki/COM "wikilink")
  - [ClibPDF](https://zh.wikipedia.org/wiki/ClibPDF "wikilink")
  - [cURL](https://zh.wikipedia.org/wiki/cURL "wikilink")
  - [Cybercash](https://zh.wikipedia.org/wiki/Cybercash "wikilink")
  - [DB2](../Page/IBM_DB2.md "wikilink")
  - [dBase](https://zh.wikipedia.org/wiki/dBase "wikilink")
  - [DBM](https://zh.wikipedia.org/wiki/DBM "wikilink")
  - [dbx](https://zh.wikipedia.org/wiki/dbx "wikilink")
  - [DB++](https://zh.wikipedia.org/wiki/DBpp "wikilink")
  - [DOM XML](https://zh.wikipedia.org/wiki/Document_Object_Model "wikilink")
  - [.NET](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")
  - [FileMaker Pro](https://zh.wikipedia.org/wiki/FileMaker_Pro "wikilink")
  - [FrontBase](https://zh.wikipedia.org/wiki/FrontBase "wikilink")
  - [filePro](https://zh.wikipedia.org/wiki/filePro "wikilink")
  - [FriBiDi](https://zh.wikipedia.org/wiki/GNU_FriBidi "wikilink")
  - [FTP](https://zh.wikipedia.org/wiki/File_transfer_protocol "wikilink")
  - [Gettext](../Page/Gettext.md "wikilink")
  - [GD Graphics Library](https://zh.wikipedia.org/wiki/GD_Graphics_Library "wikilink")
  - [GNU Multi-Precision Library](https://zh.wikipedia.org/wiki/GNU_Multi-Precision_Library "wikilink")
  - [Hyperwave](https://zh.wikipedia.org/wiki/Hyperwave "wikilink")
  - [iconv](https://zh.wikipedia.org/wiki/iconv "wikilink")
  - [IMAP](https://zh.wikipedia.org/wiki/Internet_Message_Access_Protocol "wikilink")，[POP3](https://zh.wikipedia.org/wiki/Post_Office_Protocol "wikilink") and [NNTP](https://zh.wikipedia.org/wiki/Network_News_Transfer_Protocol "wikilink")

<!-- end list -->

  - [Informix](https://zh.wikipedia.org/wiki/Informix "wikilink")
  - [Ingres](../Page/Ingres.md "wikilink") II
  - [InterBase](https://zh.wikipedia.org/wiki/InterBase "wikilink")
  - [IRC](https://zh.wikipedia.org/wiki/Internet_Relay_Chat "wikilink")

<!-- end list -->

  - [LDAP](https://zh.wikipedia.org/wiki/Lightweight_Directory_Access_Protocol "wikilink")
  - [Lotus Notes](https://zh.wikipedia.org/wiki/Lotus_Notes "wikilink")
  - [mailparse](https://zh.wikipedia.org/wiki/mailparse "wikilink")
  - [MCAL](https://zh.wikipedia.org/wiki/MCAL "wikilink")
  - [Mcrypt](https://zh.wikipedia.org/wiki/Mcrypt "wikilink")
  - [MCVE](https://zh.wikipedia.org/wiki/MCVE "wikilink")
  - [Mhash](https://zh.wikipedia.org/wiki/Mhash "wikilink")
  - [MIME](https://zh.wikipedia.org/wiki/MIME_type "wikilink") Functions
  - [MS-SQL](https://zh.wikipedia.org/wiki/MS-SQL "wikilink")
  - [Ming](https://zh.wikipedia.org/wiki/Ming_\(PHP_Module\) "wikilink")
  - [mnoGoSearch](https://zh.wikipedia.org/wiki/mnoGoSearch "wikilink")
  - [mSQL](https://zh.wikipedia.org/wiki/mSQL "wikilink")
  - [MySQL](../Page/MySQL.md "wikilink")
  - [Mowhawk](https://zh.wikipedia.org/wiki/Mowhawk "wikilink")
  - [muscat](https://zh.wikipedia.org/wiki/muscat_\(PHP\) "wikilink")
  - [Ncurses](../Page/Ncurses.md "wikilink")
  - [ODBC](https://zh.wikipedia.org/wiki/Open_Database_Connectivity "wikilink")
  - [Oracle](https://zh.wikipedia.org/wiki/Oracle_database "wikilink")
  - [OpenSSL](../Page/OpenSSL.md "wikilink")
  - [Ovrimos SQL](https://zh.wikipedia.org/wiki/Ovrimos_SQL "wikilink")
  - [PDF](https://zh.wikipedia.org/wiki/Portable_Document_Format "wikilink")
  - [PayFlow Pro](https://zh.wikipedia.org/wiki/PayFlow_Pro "wikilink")
  - [PDO](../Page/PHP_Data_Objects.md "wikilink")
  - [POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink")

<!-- end list -->

  - [PostgreSQL](../Page/PostgreSQL.md "wikilink")
  - [Printer](https://zh.wikipedia.org/wiki/Computer_printer "wikilink")
  - [Pspell](https://zh.wikipedia.org/wiki/Pspell "wikilink")
  - [GNU](../Page/GNU.md "wikilink") [Readline](https://zh.wikipedia.org/wiki/Readline "wikilink")
  - GNU [Recode](https://zh.wikipedia.org/wiki/Recode "wikilink")
  - [Regular expressions](https://zh.wikipedia.org/wiki/Regular_expressions "wikilink")
  - [QT-Dom](https://zh.wikipedia.org/wiki/QT-Dom "wikilink")
  - [Semaphores](https://zh.wikipedia.org/wiki/Semaphore_\(programming\) "wikilink")
  - [SESAM](https://zh.wikipedia.org/wiki/SESAM "wikilink")
  - [Session](https://zh.wikipedia.org/wiki/Session_\(computer_science\) "wikilink") Handling
  - [Shared memory](https://zh.wikipedia.org/wiki/Shared_memory "wikilink")
  - [SMTP](https://zh.wikipedia.org/wiki/Simple_Mail_Transfer_Protocol "wikilink")
  - [SNMP](https://zh.wikipedia.org/wiki/Simple_Network_Management_Protocol "wikilink")
  - [Sockets](https://zh.wikipedia.org/wiki/Socket "wikilink")
  - [SimpleXML](https://zh.wikipedia.org/wiki/SimpleXML "wikilink")
  - [SQLite](../Page/SQLite.md "wikilink")
  - [Streams](https://zh.wikipedia.org/wiki/Stream "wikilink")
  - [Sybase](../Page/Sybase.md "wikilink")
  - [Token](https://zh.wikipedia.org/wiki/Token "wikilink")
  - [vpopmail](https://zh.wikipedia.org/wiki/vpopmail "wikilink")
  - [WDDX](https://zh.wikipedia.org/wiki/WDDX "wikilink")
  - [Win32 API](../Page/Windows_API.md "wikilink")
  - [XML](../Page/XML.md "wikilink")（[Xpath](https://zh.wikipedia.org/wiki/Xpath "wikilink")）
  - [XML-RPC](../Page/XML-RPC.md "wikilink")
  - [XSLT](../Page/XSLT.md "wikilink")
  - [YAZ](https://zh.wikipedia.org/wiki/YAZ "wikilink")
  - [Yellow Pages](https://zh.wikipedia.org/wiki/Yellow_Page "wikilink") / [網絡資訊服務](https://zh.wikipedia.org/wiki/網絡資訊服務 "wikilink")（NIS）
  - [ZIP](https://zh.wikipedia.org/wiki/ZIP_file_format "wikilink")
  - [Zlib](../Page/Zlib.md "wikilink")

### 原始碼編碼和加速

PHP原始碼是可以直接讀取的，即使放到伺服器上執行也是一樣。雖然讓PHP多了彈性，但相對的會造成安全危機和性能下降的問題。

透過PHP編碼器，可以保護PHP的原始碼不被讀取（對商業軟體來說特別有需求），也可以提昇執行的效能。有許多公司或團體開發PHP的編碼器，將PHP程式編譯成[位元組碼](https://zh.wikipedia.org/wiki/位元組碼 "wikilink")（byte code），再透過伺服器上安裝對應的程式來執行PHP腳本。

除了透過編碼器加速之外，PHP還可以透過動態的快取機制來提昇速度，加速工具有商業版的，例如，也有開放原始碼的[加速軟體如](../Page/PHP加速軟件.md "wikilink")[eAccelerator](https://zh.wikipedia.org/wiki/eAccelerator "wikilink")、[APC](https://zh.wikipedia.org/wiki/Alternative_PHP_Cache "wikilink")、[XCache](https://zh.wikipedia.org/wiki/XCache "wikilink")。

### php包管理器

Composer是php社区用来管理依赖关系的工具，一般在php项目中通过composer.json声明依赖的外部php库，然后就可以使用Composer管理包依赖。

## PHP編譯器

PHP一直被當作[直譯器](../Page/直譯器.md "wikilink")使用。PHP編譯器則將PHP從直譯器中分離，為加快運行和改善與以其他程式語言編寫部份的互通性，例如[Phalanger將PHP編譯成](https://zh.wikipedia.org/wiki/Phalanger "wikilink")[通用中间语言](../Page/通用中间语言.md "wikilink")和[Hiphop for PHP把PHP](https://zh.wikipedia.org/wiki/Hiphop_for_PHP "wikilink")[原始碼編譯成](https://zh.wikipedia.org/wiki/原始碼 "wikilink")[C++](../Page/C++.md "wikilink")等。[Facebook](../Page/Facebook.md "wikilink")因應其網站大量的使用者，整合了HPHPc、HPHPi、HPHPd以及HHVM這四種[腳本引擎](https://zh.wikipedia.org/wiki/腳本引擎 "wikilink")，開發出[HipHop for PHP](../Page/HipHop_for_PHP.md "wikilink")，以加強網站效能。

## 未來發展

### PHP 7

  - 基于[PHPNG项目](https://zh.wikipedia.org/wiki/PHPNG "wikilink")（PHP Next-Gen），它能让透明提升PHP程序性能，使PHP7的性能和[HHVM相当](https://zh.wikipedia.org/wiki/HHVM "wikilink")
  - [JIT引擎](https://zh.wikipedia.org/wiki/JIT "wikilink")
  - 抽象语法树编译 AST: Abstract Syntax Tree
  - 异步编程

PHP 7 已发布，发布日期：2015年12月3日。目前一些更新较快的[Linux發行版](https://zh.wikipedia.org/wiki/Linux發行版 "wikilink")，如[Ubuntu](../Page/Ubuntu.md "wikilink") 16.04、[Debian](../Page/Debian.md "wikilink") Testing、[Arch Linux等已經採用新的PHP](../Page/Arch_Linux.md "wikilink") 7。

## 彩蛋

PHP含有多個[彩蛋](https://zh.wikipedia.org/wiki/彩蛋_\(視覺\) "wikilink")，可以透過在[網域名稱的後面加上特殊字串顯示彩蛋](https://zh.wikipedia.org/wiki/網域名稱 "wikilink")。例如，`?=PHPE9568F36-D428-11d2-A769-00AA001ACF42`則會出現PHP的logo，PHP版本的不同，logo也會不同；不过该特性已经在5.5版本中被移除\[52\]。

## 趣聞

PHP程式語言的官方文档中曾写过「PHP是世界上最好的語言，那其他的语言如何呢？」，因此其經常被華語圈的[程式設計師調侃为是世界上最好的语言](https://zh.wikipedia.org/wiki/程式設計師 "wikilink")\[53\]。

## 註釋

## 參考文獻

### 引用

### 来源

  - 网页

<!-- end list -->

  - [PHP手冊](https://php.net/manual/zh/index.php)
  - [函数参考](https://php.net/manual/zh/funcref.php)

## 外部連結

  -
  -
  - [PHP wiki](https://wiki.php.net)

  - [PHP参考手册](https://php.net/manual)

  - [CentOS下安装PHP7](https://www.ytyzx.org/index.php/%E5%9C%A8CentOS7%E4%B8%8B%E5%AE%89%E8%A3%85PHP7)

{{-}}

[Category:PHP](https://zh.wikipedia.org/wiki/Category:PHP "wikilink") [Category:LAMP](https://zh.wikipedia.org/wiki/Category:LAMP "wikilink") [Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")

1.

2.

3.  {{ cite web | title = GPL-Incompatible, Free Software Licenses | url = <https://www.fsf.org/licensing/licenses/index_html#GPLIncompatibleLicenses> | work = Various Licenses and Comments about Them | publisher = Free Software Foundation | accessdate = 2008-02-22 | deadurl = yes | archiveurl = <https://web.archive.org/web/20081216005913/http://www.fsf.org/licensing/licenses/index_html#GPLIncompatibleLicenses> | archivedate = 2008-12-16 }}

4.

5.  [php.net/history](https://php.net/history)

6.
7.

8.
9.

10.

11.
12.
13.

14.

15.

16.

17.
18.
19.
20.

21.
22.
23.
24.

25.
26.

27.
28.

29.
30.

31. [1](https://php.net/archive/2009.php#id2009-06-30-1)

32. [Zend Weekly Summaries Issue \#359](http://devzone.zend.com/node/view/id/2739)

33.

34. [PHP: PHP 5 Changelog](https://php.net/ChangeLog-5.php#5.6.0)

35.

36.

37.

38.

39.

40.

41.

42.

43.

44. [2](http://svn.php.net/viewvc/php/php-src/trunk/ext/standard/credits.c?r1=305420&r2=306409)

45. [PHP developer wiki server hacked](http://www.h-online.com/open/news/item/PHP-developer-wiki-server-hacked-1211874.html)

46.

47. [3](https://php.net/archive/2011.php#id2011-03-19-2)

48. [4](http://stackoverflow.com/questions/14188397/why-are-echo-short-tags-permanently-enabled-as-of-php-5-4)，Why are “echo” short tags permanently enabled as of PHP 5.4?

49. [5](http://stackoverflow.com/questions/10457409/escaping-on-php-shorthand-enabled-server-when-using-require)，Escaping \<? on php shorthand enabled server when using require

50. [Types Introduction](https://php.net/manual/en/language.types.php)，The PHP Group

51. [Language variables](https://php.net/manual/en/language.variables.php)，The PHP Group

52. [expose_php](https://php.net/manual/en/ini.core.php#ini.expose-php)

53. 原文：，