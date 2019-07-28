**画布**（）[元素是](../Page/HTML元素.md "wikilink")[HTML5](../Page/HTML5.md "wikilink")的一部分，允許[脚本语言](../Page/脚本语言.md "wikilink")（scripting
languages）動態[渲染](../Page/渲染.md "wikilink")[點陣圖像](https://zh.wikipedia.org/wiki/點陣圖像 "wikilink")。

## 歷史

它最初由[苹果內部使用自己](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")[Mac OS
X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")
[WebKit](../Page/WebKit.md "wikilink")推出\[1\]，供應用程序使用像儀表盤的構件和Safari瀏覽器使用。後來，有人利用[Gecko](../Page/Gecko.md "wikilink")核心的瀏覽器（尤其是[Mozilla
Firefox](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")），[Opera](https://zh.wikipedia.org/wiki/Opera電腦瀏覽器 "wikilink")\[2\]和[Chrome](../Page/Google_Chrome.md "wikilink")，和[網頁超文本應用技術工作小組](../Page/網頁超文本應用技術工作小組.md "wikilink")建議為下一代的網絡技術使用該元素。在介紹Canvas給不同的Web标准社区時，他們有不同的反應。有些人抱怨蘋果公司建設了一個新的專有標準而不是支援未被網絡開發商廣泛接受的SVG標準\[3\]。

## 範例

Canvas是由HTML代碼配合高度和寬度屬性而定義出的可繪製區域。JavaScript代碼可以訪問該區域，類似於其他通用的二維API，通過一套完整的繪圖函數來動態生成圖形。一些可能的用途，包括使用Canvas構造圖形，動畫，遊戲和圖片。如果您要在HTML中加入canvas元素，请将以下代码加入到\<body\>部分中：

``` html5
<canvas id="canvas" width="寬度" height="高度">
  您的瀏覽器不支援canvas元素（此訊息在瀏覽器不支援canvas元素時顯示）
</canvas>
```

## 参考文献

{{-}}

[Category:HTML元素](https://zh.wikipedia.org/wiki/Category:HTML元素 "wikilink")
[Category:HTML5](https://zh.wikipedia.org/wiki/Category:HTML5 "wikilink")

1.
2.  [Opera 9.0
    changelog](http://www.opera.com/docs/changelogs/windows/900/)
3.  [Ian Hickson remarks regarding canvas and other Apple extensions to
    HTML](http://ln.hixie.ch/?start=1089635050&count=1)