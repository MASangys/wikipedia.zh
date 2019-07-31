[HTMLHelpV1Console.png](https://zh.wikipedia.org/wiki/File:HTMLHelpV1Console.png "fig:HTMLHelpV1Console.png") [HTMLHelpV2Console.png](https://zh.wikipedia.org/wiki/File:HTMLHelpV2Console.png "fig:HTMLHelpV2Console.png") **微软HTML幫助集**，即**已編譯的HTML說明檔案**（），是[微軟继承早先的](https://zh.wikipedia.org/wiki/微軟 "wikilink")發展的一种[檔案格式](../Page/檔案格式.md "wikilink")，用来提供，是一种应用较广泛的文件格式。因为CHM檔案如一本書一樣，可以提供內容目錄、索引和搜尋等功能，所以也常被用来制作[电子书](https://zh.wikipedia.org/wiki/电子书 "wikilink")。\[1\]實際上，的`.lit`就是由CHM擴充而成。

## 歷史

  - 1996年2月，微軟宣布終止WinHelp的發展，並開始研發HTML幫助集。
  - 1997年8月，HTML幫助集 1.0與[Internet Explorer](../Page/Internet_Explorer.md "wikilink") 4.0一起發表。
  - 1998年2月，HTML幫助集 1.1a與Windows 98一起發表。
  - 2000年1月，HTML幫助集 1.3與Windows 2000一起發表。
  - 2000年7月，HTML幫助集 1.32與Internet Explorer 5.5與Windows Me一起發表。
  - 2001年10月，HTML幫助集 1.33與Internet Explorer 6與Windows XP一起發表。
  - 2001年3月，微軟在[WritersUA](http://www.winwriters.com/index.html)（舊稱WinWriters）研討會中，宣布下一代Microsoft Help 2.x的計畫，且仍然為HTML為主的說明格式。
  - 2003年1月，微軟決定不釋出Microsoft Help 2作為一般化的說明平台，並將Help 2轉入到Visual Studio Help Integration Tool中。
  - 2003年8月，Borland發表C\# Builder，其文件是使用Microsoft Help 2格式且使用DExplore (Document Explorer)顯示。
  - 2005年12月，微軟發表在Visual Studio 2005上使用的Visual Studio Help Integration工具，繼續支援Microsoft Help 2。

## 檔案格式

CHM是一種用[LZX](../Page/LZX.md "wikilink")算法壓縮的HTML文件集，除了文件本身外，也有索引資料檔以及影像檔等，在撰寫完成後，使用HTML幫助集 Compiler（內含於[HTML幫助集 Workshop](http://www.microsoft.com/downloads/details.aspx?FamilyID=00535334-c8a6-452f-9aa0-d597d16580cc&DisplayLang=en)中），編譯為一個CHM的格式檔案（此格式也可以被反編譯成原始檔案），並且跟隨應用程式或是獨立散布，應用程式可以利用內含於`shdocvw.dll`函式庫中的HTML幫助集 API來呼叫使用，目前此格式也被微軟用來散布一些獨立的開發文件（例如Silverlight 2.0 SDK中的說明檔就是CHM格式）。 由於在HTML幫助集中可以使用JavaScript來增加互動性，因此在微軟的許多說明檔中，多利用JavaScript來增加文件的可讀性（例如程式碼縮放或是導覽等）。

### 制作CHM的工具

  - 开源软件
      - [chmcreator](http://code.google.com/p/chmcreator/)强大的chm编辑软件，完全开源。

      - [xCHM](http://xchm.sourceforge.net)

      - [GnoCHM](http://gnochm.sourceforge.net/)
  - 網頁或部落格轉換成chm電子書的免費工具
      - [Scrapbook2Chm](http://www.usb20.idv.tw/ScrapbookToChmEbookConverter/)（中国大陆需翻墙）
  - Microsoft免費編譯chm工具
      - [HTML幫助集 Workshop and Documentation](http://www.microsoft.com/downloads/details.aspx?FamilyID=00535334-c8a6-452f-9aa0-d597d16580cc&DisplayLang=en)
  - Microsoft免費編譯chm教程
      - \[[http://iseeiseek.blog.sohu.com/134400291.html\]Microsoft](http://iseeiseek.blog.sohu.com/134400291.html%5DMicrosoft) HTML幫助集 Workshop全图教程
  - 付費工具
      - Microsoft Help Compiler
      - Help and Manual
  - 付費在PDA Pocket PC上閱讀CHM電子書的工具
      - [CeBook](http://www.limelink.com/big5/cebook/)
  - 在线制作
      - [MakeCHM](https://web.archive.org/web/20180224061212/http://www.makechm.com/)
  - 其它工具
      - [HugeCHM](http://www.comicer.com/stronghorse/software/index.htm#HugeCHM)直接通过ITStorage接口对CHM文件进行操作，可以把海量HTML文件打包成CHM

### 閱讀CHM的工具

  - 跨平台
      - [ChmFox](https://addons.mozilla.org/zh-CN/firefox/addon/chmfox/)
  - Windows
      - [Sumatra PDF](../Page/Sumatra_PDF.md "wikilink")
  - iOS
      - [ChmPlus阅读器](https://itunes.apple.com/cn/app/chmplus-pro-chm-reader/id441521818?ls=1&mt=8)
  - Mac OS X
      - [ChmPlus阅读器](https://itunes.apple.com/cn/app/chmplus-chm-reader/id588628901?ls=1&mt=12)

## Microsoft Help 2

（微軟幫助檔案二代）以.hxs (Microsoft Help Compiled Storage File)作为扩展名，能由Microsoft Document Explorer來瀏覽，也有一些第三方的软件，比如H2Viewer和Help Explorer Viewer支持这种格式。這種格式先后用在Microsoft Visual Studio 2002/2003/2005/2008和Office 2007中。

## 參考資料

<div class="references-small">

<references />

</div>

1.  [Visual Studio SDK - Help Authoring and Integration](http://msdn.microsoft.com/en-us/library/bb286967.aspx)
2.  \[<http://msdn.microsoft.com/en-us/library/ms670169(VS.85>).aspx Microsoft HTML幫助集 1.4\]

[Category:微軟](https://zh.wikipedia.org/wiki/Category:微軟 "wikilink") [Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")

1.  [格式](http://www.comicer.com/stronghorse/software/html/uncompile.htm#CHM)