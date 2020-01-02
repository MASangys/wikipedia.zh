> 本文内容由[XMLHttpRequest](https://zh.wikipedia.org/wiki/XMLHttpRequest)转换而来。


**XMLHTTP**是一组[API函数集](https://zh.wikipedia.org/wiki/API "wikilink")，可被[JavaScript](../Page/JavaScript.md "wikilink")、JScript、[VBScript](../Page/VBScript.md "wikilink")以及其它[web浏览器内嵌的](https://zh.wikipedia.org/wiki/web浏览器 "wikilink")[脚本语言](../Page/脚本语言.md "wikilink")调用，通过[HTTP在浏览器和](https://zh.wikipedia.org/wiki/HTTP "wikilink")[web服务器之间收发](https://zh.wikipedia.org/wiki/web服务器 "wikilink")[XML](../Page/XML.md "wikilink")或其它数据。XMLHTTP最大的好处在于可以动态地更新网页，它无需重新从服务器读取整个网页，也不需要安装额外的插件。该技术被许多网站使用，以实现快速响应的动态网页应用。例如：[Google](../Page/Google.md "wikilink")的[Gmail](../Page/Gmail.md "wikilink")服务、Google Suggest动态查找界面以及[Google Map地理信息服务](../Page/Google地图.md "wikilink")。

XMLHTTP是**[AJAX](../Page/AJAX.md "wikilink")**网页开发技术的重要组成部分。

除XML之外，XMLHTTP还能用于获取其它格式的数据，如[JSON](../Page/JSON.md "wikilink")或者甚至纯文本。

## 背景知识

XMLHTTP最初是由微软公司发明的，在[Internet Explorer](../Page/Internet_Explorer.md "wikilink") 5.0中用作[ActiveX](../Page/ActiveX.md "wikilink")对象，可通过JavaScript、VBScript或其它浏览器支持的脚本语言访问。[Mozilla](../Page/Mozilla.md "wikilink")的开发人员后来在Mozilla 1.0中实现了一个兼容的版本。之后苹果电脑公司在[Safari](../Page/Safari.md "wikilink") 1.2中开始支持XMLHTTP，而[Opera从](https://zh.wikipedia.org/wiki/Opera "wikilink")8.0版开始也宣布支持XMLHTTP。

大多数使用了XMLHTTP的设计良好的网页，会使用简单的JavaScript函数，将不同浏览器之间调用XMLHTTP的差异性屏蔽，该函数会自动检测浏览器版本并隐藏不同环境的差异。

在[DOM](https://zh.wikipedia.org/wiki/DOM "wikilink") 3（文档对象模型 Level 3）的读取和保存规范（Load and Save Specification）中也有类似的功能，它已经成为[W3C推荐的方法](https://zh.wikipedia.org/wiki/W3C "wikilink")。截止2011年，大多数浏览器已经支持。

[Category:HTTP客户端](https://zh.wikipedia.org/wiki/Category:HTTP客户端 "wikilink") [Category:XML](https://zh.wikipedia.org/wiki/Category:XML "wikilink") [Category:AJAX](https://zh.wikipedia.org/wiki/Category:AJAX "wikilink")