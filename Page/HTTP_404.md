**HTTP 404**或**Not Found**錯誤訊息是[HTTP的其中一種](https://zh.wikipedia.org/wiki/HTTP "wikilink")「標準回應訊息」（[HTTP状态码](../Page/HTTP状态码.md "wikilink")），此訊息代表客戶端在瀏覽網頁時，伺服器無法正常提供訊息，或是伺服器無法回應且不知原因。通常是因为用户所访问的对应网页已被被移动或从未存在。404也是互联网上最常见的错误之一。404錯誤訊息可能與「server not found」（無法找到伺服器）或其他類似訊息產生混淆。

## 概要

當客戶端使用HTTP瀏覽網頁時，伺服器需要針對不同的「要求」提供不同的「回應」，譬如[瀏覽器發出](https://zh.wikipedia.org/wiki/瀏覽器 "wikilink")[HTML](../Page/HTML.md "wikilink")文件（[網頁](../Page/網頁.md "wikilink")）的要求，並帶有數字回應碼和[MIME的訊息](https://zh.wikipedia.org/wiki/MIME "wikilink")。代碼404的第一個「4」代表客戶端的錯誤，如錯誤的[URL](https://zh.wikipedia.org/wiki/URL "wikilink")；後兩位數字碼則代表著特定的錯誤訊息。HTTP的三字元代碼跟早期通訊協定[FTP和](https://zh.wikipedia.org/wiki/FTP "wikilink")[NNTP的代碼相當類似](https://zh.wikipedia.org/wiki/NNTP "wikilink")。

從HTTP的層面來看，404訊息碼之後通常會有一個可讀的訊息「Not Found」\[1\]，許多網路伺服器的預設頁面也都有「404」代碼跟「Not Found」的詞彙。

404錯誤訊息通常是在目標頁面被更動或移除之後顯現的頁面。在第一种情况下，最好通过返回[301 Moved Permanently响应进行](../Page/HTTP_301.md "wikilink")[URL映射或](https://zh.wikipedia.org/wiki/Web应用框架#URL映射 "wikilink")[URL重定向](https://zh.wikipedia.org/wiki/URL重定向 "wikilink")，该响应可以在大多数服务器配置文件中配置，或者通过[URL重写](https://zh.wikipedia.org/wiki/URL重写 "wikilink") ；在第二种情况下，应返回[410 Gone](https://zh.wikipedia.org/wiki/HTTP状态码#410 "wikilink")。因為此兩種訊息需要特別架構的伺服器，許多網站並不使用。

## 软404

一些網站會以「200 OK」的回應訊息來回覆「Not Found」的錯誤，错误地报告该页面已正确加载，稱為**软404**（soft 404）。软404对于链接是否存在的判断对搜索引擎的抓取是有极大影响的，雅虎和谷歌会使用自动化工具来检测软404。\[2\]

## 客製化404頁面

[Wikimedia_error_404.png](https://zh.wikipedia.org/wiki/File:Wikimedia_error_404.png "fig:Wikimedia_error_404.png")的404錯誤訊息\]\] [网页服务器通常可以配置自定义的](https://zh.wikipedia.org/wiki/网页服务器 "wikilink")404错误页面，包括对用户更友好的描述，站点标识，有时还包括站点地图，搜索表单或404页面小部件。

[Internet Explorer版本](../Page/Internet_Explorer.md "wikilink")5以上不会显示自定义404页面，而是默认显示友好错误页面，除非页面大于512字节。\[3\]

越来越多的网站喜欢装饰404页面，如Metro UK的404页面展示了一只踩滑板的北极熊图片，Web开发机构Left Logic的404错误页面则嵌入了一个简单的绘图程序。\[4\]部分网站也利用404页面展示公益广告，如寻找失踪儿童。\[5\]

## 大众文化

2008年，[英国](https://zh.wikipedia.org/wiki/英国 "wikilink")[皇家邮政电信部门进行了一项研究发现](https://zh.wikipedia.org/wiki/皇家邮政 "wikilink")，“404”在[俚语中用来描述](https://zh.wikipedia.org/wiki/俚语 "wikilink")“愚笨、无用之人”。据俚语词典编撰者乔纳森·格林（Jonathon Green）称，“404”能作为俚语很大程度上受新世代接触互联网的年轻人推动的，但这种用法仅限于[伦敦](../Page/伦敦.md "wikilink")和其它[大城市地区](../Page/英國組合城市.md "wikilink")。\[6\]

2013年，404 Not Found成为[中国大陆](../Page/中国大陆.md "wikilink")的网络热词。\[7\]在中国，404被大部分网民普遍用作网站被[防火长城](../Page/防火长城.md "wikilink")屏蔽的代名词。\[8\]而事实上，由于防火长城一般的封锁方法是向连接两端的计算机发送RST（Reset）数据包干扰两者间正常的TCP连接，[被防火长城屏蔽的网站无法回复任何](../Page/中华人民共和国被封锁网站列表.md "wikilink")[HTTP状态码](../Page/HTTP状态码.md "wikilink")，最常见的错误信息是“连接已被重置”。

## 参考文献

## 外部連結

  -
  - [ErrorDocument Directive](http://httpd.apache.org/docs/2.0/mod/core.html#errordocument) - [Apache 2.0 web server一般錯誤訊息的處理措施](../Page/Apache_HTTP_Server.md "wikilink")

  - [The Perfect 404](http://alistapart.com/articles/perfect404/) - 建立404頁面的指南

  - [404 Research Lab](https://web.archive.org/web/20080113015923/http://www.plinko.net/404/) - 不同的404錯誤訊息頁面

[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink") [Category:计算机錯誤](https://zh.wikipedia.org/wiki/Category:计算机錯誤 "wikilink") [Category:網路術語](https://zh.wikipedia.org/wiki/Category:網路術語 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.