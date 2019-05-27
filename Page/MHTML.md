**网页归档**（或，缩写mhtml。又稱**單一檔案網頁**或**網頁封存檔案**）為以[多用途互聯網郵件擴展格式](../Page/多用途互聯網郵件擴展.md "wikilink")，將一個[多附件網頁](https://zh.wikipedia.org/wiki/多附件網頁 "wikilink")（如包含大量[圖片](https://zh.wikipedia.org/wiki/圖片 "wikilink")、[Flash動畫](https://zh.wikipedia.org/wiki/SWF "wikilink")、[Java小程序的網頁](../Page/JavaScript.md "wikilink")）儲存為單一檔案\[1\]，可用於發送HTML[电子邮件](../Page/电子邮件.md "wikilink")，此單一檔案即稱為一網頁封存檔案，其副檔名為**.mht**。這種格式有時被簡稱為MHT。

MHTML在RFC 2110中定義，後經RFC
2557修訂。MHTML文檔的基礎是[超文本标记语言](https://zh.wikipedia.org/wiki/超文本标记语言 "wikilink")。

## 和HTML的分別

HTML頁面中的圖形和其他功能必須分開存放，也需要原始文件上引用。MHTML可以把網頁上的附件儲存為單一網頁。

## 創建及編輯

[Microsoft
Office](../Page/Microsoft_Office.md "wikilink")（[Word](https://zh.wikipedia.org/wiki/Word "wikilink")\[2\]、[Excel](https://zh.wikipedia.org/wiki/Excel "wikilink")、[PowerPoint](https://zh.wikipedia.org/wiki/PowerPoint "wikilink")、[Access](https://zh.wikipedia.org/wiki/Access "wikilink")）能夠創建及編輯MHTML檔案。

在[Linux平台上](../Page/Linux.md "wikilink")，程式[kmhtConvert可將文件轉換為MHTML格式](https://zh.wikipedia.org/wiki/kmhtConvert "wikilink")。

## 浏览器的支持

有些瀏覽器具有原生的这种把網頁保存為MHTML的方式，而有些瀏覽器可直接通過第三方的擴展支持MHTML格式。由於保存為MHTML的方式未經標準化，因此各瀏覽器讀取的效果略有不同。

### Internet Explorer

[Microsoft Internet
Explorer自](https://zh.wikipedia.org/wiki/Microsoft_Internet_Explorer "wikilink")5.0版支持MHTML格式，是第一個支持MHTML文件的瀏覽器。

### Opera

[Opera自](https://zh.wikipedia.org/wiki/Opera瀏覽器 "wikilink")9.0版支持把網頁保存為MHTML文件，或讀取MHTML文件。\[3\]但基於WebKit/Blink的Opera
15卻未提供此功能，直到Opera 16才恢復。

現時通過啟用實驗性的選項。

### Firefox

[Firefox不支援讀寫MHT文件](../Page/Firefox.md "wikilink")。\[4\]在57.0之前有兩個這樣的擴展是免費提供的，如[Mozilla
Archive
Format](https://addons.mozilla.org/firefox/addon/mozilla-archive-format/)、[UnMHT](https://addons.mozilla.org/firefox/addon/unmht/)。

### Google Chrome

在當前版本的[Chrome](../Page/Google_Chrome.md "wikilink")，原生創建MHTML文件要在啟用實驗性的選項，\[5\]另有一些擴展程式通过调用支援這一功能的代碼提供相應的界面。\[6\]\[7\]

### Safari

[Safari不提供对MHTML的支持](../Page/Safari.md "wikilink")，代之以苹果公司自创的格式，[OS
X的版本中还提供保存为](https://zh.wikipedia.org/wiki/OS_X "wikilink")[PDF选项](https://zh.wikipedia.org/wiki/PDF "wikilink")。也有人试图为Safari创建读写MHTML文件的扩展。

### Konqueror

Konqueror需要使用[mhtconv](http://sourceforge.net/projects/mhtconv)扩展以实现对MHTML的支持。

### ACCESS NetFront

[NetFront](../Page/NetFront.md "wikilink")
3.4（像是索尼爱立信[K850等设备上的](https://zh.wikipedia.org/wiki/K850 "wikilink")）可读取或保存MHTML文件。

### Pale Moon

[Pale
Moon需要安裝MHT文件讀寫的擴展](https://zh.wikipedia.org/wiki/Pale_Moon "wikilink")。有一個這樣的擴展是免費提供的，即[MozArchiver](https://addons.palemoon.org/addon/mozarchiver/)。

### GNOME Web

最近的[GNOME Web版本可以存取MHTML](../Page/GNOME_Web.md "wikilink")。

### Vivaldi

[Vivaldi可以通過](../Page/Vivaldi_\(瀏覽器\).md "wikilink")啟用實驗性的選項。

### MHT阅读器

一些商业或民间开发者设计了MHT文件阅读器，还提供转换为其它格式（如转换为[PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")）的选项。

## 格式

MHTML檔案的格式如下：

``` xml
Subject:標題
Date: Wed, 15 Dec 2004 10:05:01 +1000
Content-Type: multipart/related;
Content-Transfer-Encoding: quoted-printable
Content-Location: file://C:/fishier.html
This is a multi-part message in MIME format.

Content-Type: text/html;
<HTML>
 <HEAD>
  <TITLE>Title</TITLE>
 </HEAD>
 <BODY>
   ...
 </BODY>
</HTML>

Content-Type: image/gif
Content-Transfer-Encoding: base64
Content-Location: file://C:/image.gif
RHLJbDYX0KhHzv7yGcCgghhgHLJbDYX0KhHzv7yGcChkNdjn+Nfn+NXm98/i98rf9sfe9b/Z9L3X
87fU8qP8afL8AHzvfg7yGcChkNIwMZHLJbDYX0KhHzv37yGcChkNIw2Oj5AAAZIAlhAAACwAAAAA
er8JhHg8PhgQBrPZwG673+6CoUCv2+91gn5PGPT7fgOCg4SFhQKIiYoCAY2Oj5AAAZIAlJWXACEA
4SFh==
```

其中Subject为文档标题，Content-Type为文件的MIME属性，Content-Location为原始文件的地址，Content-Transfer-Encoding为编码格式。

## 参见

  - [Mozilla Archive
    Format](../Page/Mozilla_Archive_Format.md "wikilink")

  -
  - RFC 2397

## 參考資料

<references/>

[Category:网页归档格式](https://zh.wikipedia.org/wiki/Category:网页归档格式 "wikilink")
[Category:HTML](https://zh.wikipedia.org/wiki/Category:HTML "wikilink")

1.

2.
3.

4.

5.  [How to save a web page as MHT in
    chrome?](http://superuser.com/questions/369232/how-to-save-a-web-page-as-mht-in-chrome),
    superuser.com

6.

7.