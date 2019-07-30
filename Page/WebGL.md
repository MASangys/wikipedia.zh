**WebGL**是一種[JavaScript](../Page/JavaScript.md "wikilink") [API](https://zh.wikipedia.org/wiki/API "wikilink")，用於在不使用[外掛程式的情況下在任何相容的](https://zh.wikipedia.org/wiki/外掛程式 "wikilink")[網頁瀏覽器中呈現交互式](https://zh.wikipedia.org/wiki/網頁瀏覽器 "wikilink")2D和3D圖形\[1\]。WebGL完全整合到瀏覽器的所有網頁標準中，可將影像處理和效果的GPU加速使用方式當做網頁Canvas的一部分。WebGL元素可以加入其他HTML元素之中並與網頁或網頁背景的其他部分混合\[2\]。WebGL程序由JavaScript編寫的控制代碼和[OpenGL Shading Language](https://zh.wikipedia.org/wiki/OpenGL_Shading_Language "wikilink")（GLSL）編寫的[著色器代碼組成](https://zh.wikipedia.org/wiki/著色器 "wikilink")，該語言類似於[C或](https://zh.wikipedia.org/wiki/C語言 "wikilink")[C++](../Page/C++.md "wikilink")，並在電腦的[圖形處理器](../Page/圖形處理器.md "wikilink")（GPU）上執行。WebGL由[非營利](https://zh.wikipedia.org/wiki/非營利 "wikilink")[Khronos Group設計和維護](https://zh.wikipedia.org/wiki/Khronos_Group "wikilink")\[3\]。

## 設計

WebGL 1.0基于[OpenGL ES 2.0](../Page/OpenGL_ES.md "wikilink")，並提供了3D圖形的[API](https://zh.wikipedia.org/wiki/API "wikilink")\[4\]。它使用[HTML5](../Page/HTML5.md "wikilink") [Canvas并允许利用](../Page/Canvas_\(HTML元素\).md "wikilink")[文档对象模型](../Page/文档对象模型.md "wikilink")接口。WebGL 2.0基于[OpenGL ES 3.0](../Page/OpenGL_ES.md "wikilink")，確保了提供許多選擇性的WebGL 1.0擴充功能，並引入新的API\[5\]。可利用部分[Javascript实现](https://zh.wikipedia.org/wiki/Javascript "wikilink")[自动記憶體管理](https://zh.wikipedia.org/wiki/垃圾回收_\(计算机科学\) "wikilink")\[6\]。

## 歷史

WebGL起源於Mozilla員工[弗拉基米爾·弗基西維奇](../Page/弗拉基米爾·弗基西維奇.md "wikilink")的一項稱為Canvas 3D實驗計畫。2006年，弗基西維奇首次展示了Canvas 3D的原型。2007年底在Firefox\[7\]和Opera\[8\]被實作。

在2009年初，[非營利技術](https://zh.wikipedia.org/wiki/非營利 "wikilink")[聯盟Khronos](https://zh.wikipedia.org/wiki/聯盟 "wikilink") Group啟動了WebGL的工作組，最初的工作成員包括[Apple](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")、[Google](../Page/Google.md "wikilink")、[Mozilla](../Page/Mozilla基金會.md "wikilink")、[Opera等](https://zh.wikipedia.org/wiki/Opera "wikilink")\[9\]\[10\]。2011年3月發布WebGL 1.0規範\[11\]。截至2012年3月，工作組的主席由肯·羅素（Ken Russell，全名「Kenneth Bradley Russell」）擔任。

WebGL的早期應用包括[Zygote Body](https://zh.wikipedia.org/wiki/Zygote_Body "wikilink")\[12\]\[13\]。

WebGL 2規範的發展始於2013年，並於2017年1月完成\[14\]。該規範基於OpenGL ES 3.0\[15\]。首度實作在Firefox 51、Chrome 56和Opera 43中\[16\]。

## 支援

目前，WebGL在最新的瀏覽器中被廣泛支援。然而，其可用性取決於其他因素，如GPU支援。WebGL官方網站提供了一個簡單的測試頁\[17\]。而第三方網站提供了更詳細的訊息（如瀏覽器使用的渲染器以及可用的擴展）\[18\]\[19\]。

### 桌面瀏覽器

  - [Google Chrome](../Page/Google_Chrome.md "wikilink") – 從9.0開始支援預設啟用\[20\]\[21\]。
  - [Internet Explorer](../Page/Internet_Explorer.md "wikilink") – 从[11开始支持](../Page/Internet_Explorer_11.md "wikilink")\[22\]。較舊的版本可以安裝第三方外掛程式來支援，如IEWebGL\[23\]。
  - [Mozilla Firefox](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink") – 從4.0開始支援預設啟用\[24\]。
  - [Safari](../Page/Safari.md "wikilink") – 在[Mac OS X Snow Leopard上的Safari](../Page/Mac_OS_X_Snow_Leopard.md "wikilink") 5.1、[OS X Mountain Lion](../Page/OS_X_Mountain_Lion.md "wikilink")、[Mac OS X Lion上的Safari](../Page/Mac_OS_X_Lion.md "wikilink")6.0或較新版本開始支援WebGL，預設情況下禁用\[25\]\[26\]\[27\]\[28\]\[29\]。
  - [Opera](https://zh.wikipedia.org/wiki/Opera "wikilink") – 需自行啟用\[30\]\[31\]。

### 行動瀏覽器

  - [Firefox OS](../Page/Firefox_OS.md "wikilink")\[32\]
  - [Firefox for mobile](https://zh.wikipedia.org/wiki/Firefox_for_mobile "wikilink")\[33\]\[34\]
  - [Google Chrome](../Page/Google_Chrome.md "wikilink")\[35\]
  - [Opera Mobile](https://zh.wikipedia.org/wiki/Opera_Mobile "wikilink")\[36\]
  - [Tizen](../Page/Tizen.md "wikilink")\[37\]
  - [Ubuntu Touch](../Page/Ubuntu_Touch.md "wikilink")
  - [WebOS](https://zh.wikipedia.org/wiki/WebOS "wikilink")
  - [iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")\[38\]

## 参考文献

## 外部链接

  -
  - [WebGL](http://developer.mozilla.org/en/WebGL)於[MDN Web Docs](../Page/MDN_Web_Docs.md "wikilink")

## 參見

  - [HTML5](../Page/HTML5.md "wikilink")
  - [OpenGL](../Page/OpenGL.md "wikilink")
  - [WebGPU](../Page/WebGPU.md "wikilink")
  - [WebVR](../Page/WebVR.md "wikilink"){{-}}

[Category:網站開發](https://zh.wikipedia.org/wiki/Category:網站開發 "wikilink") [Category:網頁技術](https://zh.wikipedia.org/wiki/Category:網頁技術 "wikilink") [Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink") [Category:繪圖函式庫](https://zh.wikipedia.org/wiki/Category:繪圖函式庫 "wikilink") [Category:OpenGL](https://zh.wikipedia.org/wiki/Category:OpenGL "wikilink")

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

13.

14.

15. <https://www.khronos.org/registry/webgl/specs/latest/2.0/>

16. <https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API>

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

31.

32.
33.

34.

35.

36.

37.

38.