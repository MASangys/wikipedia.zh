**Google Web Toolkit**（簡稱[GWT](https://zh.wikipedia.org/wiki/GWT "wikilink")，讀作），是一個前端使用[JavaScript](../Page/JavaScript.md "wikilink")，後端使用[Java](../Page/Java.md "wikilink")的[AJAX](../Page/AJAX.md "wikilink") framework，以[Apache許可證](https://zh.wikipedia.org/wiki/Apache許可證 "wikilink")2.0版本[開放源始碼](https://zh.wikipedia.org/wiki/開放源始碼 "wikilink")。GWT透過編譯器將Java程式碼編譯成JavaScript，可讓開發人員使用Java程式設計語言，快速建置與維護複雜但高效能的JavaScript前端應用程式，藉此減輕開發人員負擔。

2010年8月，[Google](../Page/Google.md "wikilink")買下Instantiations公司\[1\]，並免費釋出該公司旗下所有產品，當中包括[GWT Designer](https://zh.wikipedia.org/wiki/GWT_Designer "wikilink")。GWT Designer是[Eclipse](../Page/Eclipse.md "wikilink")的插件，為GWT提供[WYSIWYG](https://zh.wikipedia.org/wiki/WYSIWYG "wikilink")（[所見即所得](https://zh.wikipedia.org/wiki/所見即所得 "wikilink")）的AJAX設計介面\[2\]。Google亦正在計劃為GWT Designer增加[UiBinder支援](https://zh.wikipedia.org/wiki/UiBinder "wikilink")。

2014年10月30日，在GWT 2.7.0 RC1版本中，GWT Designer已弃用。\[3\]

2016年10月20日，GWT 2.8.0 版本正式发布。该版本支持Java 8和CSS3。同时正式支持JsInterop和GSS，前者可替换原先的JSNI，后者取代过时的CssResource。\[4\]

## 組件

Google Web Toolkit的主要組件包括：

  - GWT Developer Plugin
    提供GWT開發模式（GWT Development Mode），將Java代碼的執行結果即時反映到本機瀏覽器上，整個過程完全不需進行編譯。在此模式下，對Java代碼進行除錯，就像直接對JavaScript進行除錯一樣迅速。
  - GWT Web UI class library
    一套用於建立[控件](../Page/控件.md "wikilink")的自定介面與[函式庫](../Page/函式庫.md "wikilink")。
  - GWT Java-to-JavaScript Compiler
    將Java代碼編譯成JavaScript代碼的編譯器，編譯方式有三種：\[5\]

<!-- end list -->

1.  [Obfuscated](https://zh.wikipedia.org/wiki/Obfuscated "wikilink")：此乃預設模式。此模式將JavaScript進行[代碼混淆](https://zh.wikipedia.org/wiki/代碼混淆 "wikilink")，例如全不跳行、全刪空格、所有代碼擠在一行、變數名稱只用一兩個字母等等。讓代碼難以閱讀，減少泄露運作邏輯及被攻擊的機會，並提高網絡傳送速度。
2.  [Pretty](https://zh.wikipedia.org/wiki/Pretty "wikilink")：此模式的JavaScript代碼經過美化，例如盡量使用有意義的變數名稱，適當地跳行，易於閱讀。此模式適合在編譯後繼續對JavaScript代碼手動進行修改。
3.  [Detailed](https://zh.wikipedia.org/wiki/Detailed "wikilink")：介乎以上兩種模式之間。

## 歷史

版本歷史：

  - GWT 1.0 2006年5月17日
  - GWT 1.1 2006年8月11日
  - GWT 1.2 2006年11月16日
  - GWT 1.3 2007年2月5日
  - GWT 1.4 2007年8月28日
  - GWT 1.5 2008年8月27日
  - GWT 1.6 2009年4月7日
  - GWT 1.7 2009年7月13日
  - GWT 2.0 2009年12月8日
  - GWT 2.1.0 2010年10月19日
  - GWT 2.2.0 2011年2月11日
  - GWT 2.3.0 2011年5月3日
  - GWT 2.4.0 2011年9月8日
  - GWT 2.5.0 2012年10月
  - GWT 2.5.1 2013年3月11日
  - GWT 2.6.0 2014年1月30日
  - GWT 2.6.1 2014年5月10日
  - GWT 2.7.0 2014年11月20日
  - GWT 2.8.0 2016年10月20日
  - GWT 2.8.1 2017年4月24日

## 參見

  - [Java](../Page/Java.md "wikilink") ─ 已於2007年[開放源始碼的一種非常強大的系統語言](https://zh.wikipedia.org/wiki/開放源始碼 "wikilink")。
  - [Google Code](https://zh.wikipedia.org/wiki/Google_Code "wikilink") ─ 提供開發工具、[應用程式介面及技術資源的Google網站](https://zh.wikipedia.org/wiki/應用程式介面 "wikilink")。

## 外部連結

  - [GWT homepage on Google code](http://code.google.com/webtoolkit/)
  - [Official GWT blog](http://googlewebtoolkit.blogspot.com/)
  - [Official GWT forums](http://groups.google.com/group/Google-Web-Toolkit)
  - [GWT Tutorials](http://courses.coreservlets.com/Course-Materials/gwt.html) Tutorials with source code
  - [Google Web Toolkit Incubator](http://code.google.com/p/google-web-toolkit-incubator/)
  - [Conference on GWT organized by Addison-Wesley, Prentice Hall and Pearson Education](http://www.VoicesThatMatter.com/GWT2007)
  - [GWT-Unite is a library/framework which allows Opera Unite applications to be written using the Google Web Toolkit.](http://code.google.com/p/gwt-unite/)

## 参考文献

[Category:Google軟體](https://zh.wikipedia.org/wiki/Category:Google軟體 "wikilink") [Category:JavaScript函式庫](https://zh.wikipedia.org/wiki/Category:JavaScript函式庫 "wikilink") [Category:网络开发软件](https://zh.wikipedia.org/wiki/Category:网络开发软件 "wikilink") [Category:丰富互联网应用程序](https://zh.wikipedia.org/wiki/Category:丰富互联网应用程序 "wikilink") [Category:Java平台](https://zh.wikipedia.org/wiki/Category:Java平台 "wikilink") [Category:使用Apache许可证的软件](https://zh.wikipedia.org/wiki/Category:使用Apache许可证的软件 "wikilink")

1.  [Google Relaunches Instantiations Developer Tools - Now Available for Free](http://googlewebtoolkit.blogspot.com/2010/09/google-relaunches-instantiations.html)
2.  [GWT Designer User Guide](http://code.google.com/webtoolkit/tools/gwtdesigner/)
3.
4.
5.  [Debug and Compile - FAQ](http://code.google.com/webtoolkit/doc/latest/FAQ_DebuggingAndCompiling.html)