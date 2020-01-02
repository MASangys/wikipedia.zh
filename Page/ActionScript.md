> 本文内容由[ActionScript](https://zh.wikipedia.org/wiki/ActionScript)转换而来。


{{ Infobox programming language | name = ActionScript | logo = [Farm-Fresh_page_white_actionscript.png](https://zh.wikipedia.org/wiki/File:Farm-Fresh_page_white_actionscript.png "fig:Farm-Fresh_page_white_actionscript.png") | paradigm = [多重编程范式](https://zh.wikipedia.org/wiki/多重编程范式 "wikilink")：[基於原型的](../Page/原型程式設計.md "wikilink")[物件導向程式設計](https://zh.wikipedia.org/wiki/物件導向程式設計 "wikilink")、[函數程式語言](https://zh.wikipedia.org/wiki/函數程式語言 "wikilink")、[指令式編程](../Page/指令式編程.md "wikilink")、[腳本語言](https://zh.wikipedia.org/wiki/腳本語言 "wikilink") | year = 1998年 | designer =  | developer = [Adobe Systems](https://zh.wikipedia.org/wiki/Adobe_Systems "wikilink") | latest_release_version = 3.0 | latest_release_date =  | typing = [強型別](https://zh.wikipedia.org/wiki/強型別 "wikilink")、[靜態型別](https://zh.wikipedia.org/wiki/靜態型別 "wikilink") | implementations = [Adobe Flash](../Page/Adobe_Flash.md "wikilink")、[Apache Flex](../Page/Apache_Flex.md "wikilink") | operating_system = [跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink") | influenced_by = [JavaScript](../Page/JavaScript.md "wikilink")、[Java](../Page/Java.md "wikilink") }}

**ActionScript**是原[Macromedia](../Page/Macromedia.md "wikilink")公司（后并入[Adobe](../Page/Adobe.md "wikilink")）为其[Flash产品开发的一种基于](https://zh.wikipedia.org/wiki/Flash "wikilink")[ECMAScript](../Page/ECMAScript.md "wikilink")的[面向对象编程语言](https://zh.wikipedia.org/wiki/面向对象 "wikilink")。ActionScript可用于[网页制作](https://zh.wikipedia.org/wiki/网页制作 "wikilink")、[Adobe Flash动画和](../Page/Adobe_Flash.md "wikilink")[RIA应用程序的开发](../Page/丰富互联网应用程序.md "wikilink")。

ActionScript和[JavaScript](../Page/JavaScript.md "wikilink")均基于ECMAScript语法，因而拥有类似的语法。理论上它们互相可以很流畅地从一种语言翻译到另一种。不过JavaScript的[文档对象模型](../Page/文档对象模型.md "wikilink")是以[浏览器窗口](https://zh.wikipedia.org/wiki/浏览器 "wikilink")、[文档和](https://zh.wikipedia.org/wiki/超文本标记语言 "wikilink")[表单为主的](https://zh.wikipedia.org/wiki/表单 "wikilink")，ActionScript的[文档对象模型](../Page/文档对象模型.md "wikilink")则以[SWF格式动画为主](https://zh.wikipedia.org/wiki/SWF "wikilink")，可包括动画、音频、文字和[事件处理](https://zh.wikipedia.org/wiki/事件处理 "wikilink")。

ActionScript 開發時可藉由導入 ANE 作為跨平台使用；並且官方公布之認證Starling （基於OPGL協定）開放框架，可使用GPU高速繪圖，而非傳統的CPU運算功能。

## 歷史

[OSX10-2-actionscript2.png](https://zh.wikipedia.org/wiki/File:OSX10-2-actionscript2.png "fig:OSX10-2-actionscript2.png")操作系统上的Macromedia Flash MX专业版里，这些代码可以创建一个与MAC OS X启动过程中看见的类似的动画。\]\] ActionScript 首次出现于Flash 5并实现了在Flash内编程。这个版本被命名为ActionScript 1.0。Flash 6通过增加大量的内置函数和对[动画元素更好的编程控制更进一步增强了编程环境的功能](https://zh.wikipedia.org/wiki/SWF "wikilink")。Flash 7（MX 2004）引进了ActionScript 2.0，它增加了[强类型和](https://zh.wikipedia.org/wiki/强类型 "wikilink")[面向对象特征](https://zh.wikipedia.org/wiki/面向对象 "wikilink")，如显式[类声明](../Page/类_\(计算机科学\).md "wikilink")、[继承](https://zh.wikipedia.org/wiki/继承_\(计算机科学\) "wikilink")、[接口和严格数据类型](https://zh.wikipedia.org/wiki/接口 "wikilink")。ActionScript 1.0 和 2.0 使用相同的编译形式编译成Flash [SWF文件](https://zh.wikipedia.org/wiki/SWF "wikilink")。

### 播放器發展時間表

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>發布日期</p></th>
<th><p>描述</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Flash Player 2</strong></p></td>
<td><p>1997/06/17</p></td>
<td><p>第一个支持脚本的版本，包括控制时间轴的gotoAndPlay、 gotoAndStop、nextFrame和nextScene等方法。</p></td>
</tr>
<tr class="even">
<td><p><strong>Flash Player 3</strong></p></td>
<td><p>1998/05/31</p></td>
<td><p>增强了载入外部<a href="https://zh.wikipedia.org/wiki/SWF" title="wikilink">SWF文件的基本脚本支持</a>（loadMovie）。</p></td>
</tr>
<tr class="odd">
<td><p><strong>Flash Player 4</strong></p></td>
<td><p>1999/06/15</p></td>
<td><p>第一个完全实现脚本功能（称为「动作」）的播放器。这些脚本拥有简练的语法和对循环、条件、变量和其它基本语言结构的支持。</p></td>
</tr>
<tr class="even">
<td><p><strong>Flash Player 5</strong></p></td>
<td><p>2000/08/24</p></td>
<td><p>第一个拥有真正意义上的ActionScript的版本。依据ECMAScript，[1]采用<a href="https://zh.wikipedia.org/wiki/基于原型编程" title="wikilink">基于原型编程</a>，并允许完全的<a href="https://zh.wikipedia.org/wiki/过程式编程" title="wikilink">过程式编程和</a><a href="https://zh.wikipedia.org/wiki/面向对象编程" title="wikilink">面向对象编程</a>。</p></td>
</tr>
<tr class="odd">
<td><p><strong>Flash Player 6</strong></p></td>
<td><p>2002/03/15</p></td>
<td><p>增加了事件处理模型，并且支持switch。</p></td>
</tr>
<tr class="even">
<td><p><strong>Flash Player 7</strong></p></td>
<td><p>2003/09/10</p></td>
<td><p>提供一些新特性，如支持CSS显示文本和增强显示效果。Macromedia Flash编译器和Flash Player 7同时支持基于ECMAScript 4 Netscape Proposal[2]的<a href="../Page/类_(计算机科学).md" title="wikilink">类编程语言ActionScript</a> 2.0。不过ActionScript 2.0能<a href="https://zh.wikipedia.org/wiki/交叉编译" title="wikilink">交叉编译成ActionScript</a> 1.0的<a href="https://zh.wikipedia.org/wiki/字节码" title="wikilink">字节码</a>，因此它能运行于Flash Player 6。</p></td>
</tr>
<tr class="odd">
<td><p><strong>Flash Player 8</strong></p></td>
<td><p>2005/09/13</p></td>
<td><p>增加用于运行时图象数据控制和文件上传的新类库及APIs，ActionScript 2.0功能更为完善。</p></td>
</tr>
<tr class="even">
<td><p><strong>Flash Player 9</strong></p></td>
<td><p>2006/06/22</p></td>
<td><p>原稱為Flash Player 8.5，增加ActionScript 3.0和一个称为AVM2（ActionScript Virtual Machine 2）新的虚拟机，它可以与前版本AVM1共存以便支持旧内容。增强性能是该版本的主要目标。這是adobe收購Macromedia後的第一個版本，並且也是Mac OS X上第一個Universal版本的Flash Player。</p></td>
</tr>
<tr class="odd">
<td><p><strong>Flash Player 10</strong></p></td>
<td><p>2008/10/15</p></td>
<td><p>支援多線程。</p></td>
</tr>
<tr class="even">
<td><p><strong>Flash Player 11</strong></p></td>
<td><p>2011/10/04</p></td>
<td><p>運用<a href="https://zh.wikipedia.org/wiki/Stage3D" title="wikilink">Stage3D</a> API提供的硬體加速圖像渲染，支援GPU加速。[3]</p></td>
</tr>
<tr class="odd">
<td><p><strong>Flash Player 14</strong></p></td>
<td><p>2014/06/10</p></td>
<td><p>支援AGAL2[4]</p></td>
</tr>
<tr class="even">
<td><p><strong>Flash Player 17.0.0.93（閱覽版 (Beta)）</strong></p></td>
<td><p>2015/03/12</p></td>
<td><ul>
<li>支持64位元PC全平台</li>
<li>Flash Player 17.0.0.171（正式版）</li>
</ul></td>
</tr>
<tr class="odd">
<td><p><strong>Flash Player 18（閱覽版 (Beta)）</strong></p></td>
<td><p>2015/06/09</p></td>
<td><ul>
<li>支持PC瀏覽器優化</li>
<li>支持3D支援持續擴充</li>
</ul></td>
</tr>
<tr class="even">
<td><p><strong>Flash Player 19</strong></p></td>
<td><p>2015/09/21</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>Flash Player 20</strong></p></td>
<td><p>2015/12/08</p></td>
<td><p>增強視訊處理和資訊防盜功能</p></td>
</tr>
<tr class="even">
<td><p><strong>Flash Player 21</strong></p></td>
<td><p>2016/03/10</p></td>
<td><ul>
<li>針對FLASH 與 HTML5結合運用 完善相關API</li>
<li>與火狐團隊合作 並針對火狐特殊需求增加支援</li>
<li>GPU渲染 3D 記憶體處理</li>
<li>強化MAC平台支援</li>
</ul></td>
</tr>
<tr class="odd">
<td><p><strong>Flash Player 22</strong></p></td>
<td><p>2016/06/16</p></td>
<td><ul>
<li>處理字典訊息問題</li>
<li>XML 修正</li>
<li>PPAPI 印刷修正</li>
<li>针对Chrome浏览器修正橫向模式</li>
<li>大空字符修正</li>
<li>新增 EnableLocalAppData 作為安全性功能提供</li>
<li>與 Google 合作修正視訊路線處理</li>
</ul></td>
</tr>
</tbody>
</table>

### 桌面+APP時間表

  - 2007年3月19日：發佈AIR public preview（當時稱Apollo）及軟體開發工具包（SDK）。
  - 2007年6月10日：Apollo更名為AIR及發佈AIR Public beta。
  - 2007年10月1日：發佈AIR Public beta 2。
  - 2007年12月12日：發佈AIR Public beta 3。
  - 2008年2月25日：發佈AIR 1.0版本。
  - 2008年6月17日：發佈AIR 1.1版本。
  - 2008年11月17日：發佈AIR 1.5版本。
  - 2009年2月24日：發佈AIR 1.5.1版本。
  - 2009年7月30日：發佈AIR 1.5.2版本。
  - 2009年12月8日：發佈AIR 1.5.3版本。
  - 2010年6月10日：發佈AIR 2.0版本。
  - 2010年10月24日：發佈AIR 2.5版本。
  - 2011年2月24日：發佈AIR 2.6版本。
  - 2011年6月14日：發佈AIR 2.7版本。
  - 2011年10月3日：發佈AIR 3.0版本。
  - 2011年11月11日：發佈AIR 3.1版本。
  - 2012年3月28日：發佈AIR 3.2版本。
  - 2012年6月5日：發佈AIR 3.3版本。
  - 2012年8月21日：發佈AIR 3.4版本。
  - 2012年11月6日：發佈AIR 3.5版本。
  - 2013年2月12日：發佈AIR 3.6版本。
  - 2013年4月9日：發佈AIR 3.7版本。
  - 2013年7月24日：發佈AIR 3.8版本。
  - 2013年10月8日：發佈AIR 3.9版本。
  - 2013年10月30日：發佈AIR 4.0版本。
  - 2014年4月8日：發佈AIR 13.0版本。
  - 2014年6月10日：發佈AIR 14.0版本。
  - 2014年9月9日：發佈AIR 15.0版本。
  - 2014年11月11日：發布AIR 16.0版本（Beta），全面支援win8 64位元 /android 5.0 /ios 8。
  - 2015年1月22日：發布AIR 16.0版本（正式版），全面支援win8 64位元 /android 5.0 /ios 8。
  - 2015年2月4日：發布AIR 17.0版本（Beta），強化支援3D特效與其他視訊效果，並優化效率。
  - 2015年4月14日：發布AIR 17.0.0.171版本（正式版）。
  - 2015年4月22日：發布AIR 18.0版本（Beta），3D功能擴充，優化IOS效率20%。
  - 2015年5月13日：開源團隊開啟支援linux ubuntu計畫。
  - 2015年7月8日：發佈AIR 18.0版本。
  - 2015年9月21日：發佈AIR 19.0版本，增加安全性和增加IOS支援。
  - 2015年11月18日：發佈AIR 20.0（Beta）版本。增加android TV 等跨平台 TV 支援技術研發。
  - 2016年6月16日：發佈AIR 21.0版本。強化視訊和攝影機路線規劃、高畫質處理、效能優化和移動平台相關開發。

## 語言

### 語法

在ActionScript 2.0裡，函式館物件（如影片片段、按鈕）可與類聯繫在一起。類可寫在外在文件檔案內，並且這些文件必須有**.as**後綴。類是增設部分──對ActionScrip語言來說，可讓程式員自行開發，雖然有許多內建類譬如**MovieClip**類──可被用來動態地在螢幕上畫出向量──已經滿足需求了。類檔案可使編程更加容易，並且類檔案如果需要的話可在許多專案間轉移。

Flash ActionScript實現的特點如下，JavaScript程式員也許感興趣：

  - 一切設計是非同步的；[callback是普遍存在的](https://zh.wikipedia.org/wiki/Callback_\(computer_science\) "wikilink")，但[事件對象不存在](https://zh.wikipedia.org/wiki/事件 "wikilink")。
  - [XML](../Page/XML.md "wikilink")的實現從Flash 5便存在了。Flash可送和收XML，該項功能可用來透過網路伺服器創造網上多玩者遊戲。

ActionScript代碼常常直接寫在Flash開發環境。該環境提供參考、代碼提示和句法強調。原代碼常常與電影一起存在.fla檔案裡。自外部文件檔透過\#include語法導入ActionScript代碼也相當常見。在這種情況下，外部檔案也許被Flash[整合開發環境內建編譯器](https://zh.wikipedia.org/wiki/IDE "wikilink")，或Motion Twin ActionScript2編譯器（MTASC）編譯。

### 评价

## 示例

### ActionScript 2.0樣本

下-{面}-列印[Hello World](../Page/Hello_World.md "wikilink")。值得注意的是這只能在整合環境下執行，因為trace函式只有支援整合環境。

``` actionscript
trace("Hello world!");
```

下-{面}-代碼利用onMouseMove事件當滑鼠移動時輸出現行滑鼠位置。同樣的這只有在整合環境下執行。

``` actionscript
onMouseMove = function () {
   trace("X: "+_root._xmouse);
   trace("Y: "+_root._ymouse);
};
```

這個較先進的範例創造一個包括數字與字串的陣列，並利用原形函式（prototype function）與函式遞歸給變數名`num`指定一個數，給變數`str`指定一個字串。然後，利用MovieClip應用程序介面，文字區域被顯示在屏幕上，文字區域裡頭寫入了變數值。

``` actionscript
var my_Array:Array = new Array("Hello", "ActionScript", 3, 7, 11, "Flash");
Array.prototype.pickNumber = function():Number  {
   var rand:Number = random(this.length);
   return (typeof (this[rand]) == "number") ? this[rand] : this.pickNumber();
};
Array.prototype.pickString = function():String  {
   var rand:Number = random(this.length);
   return (typeof (this[rand]) == "string") ? this[rand] : this.pickString();
};
var num:Number = my_Array.pickNumber();
var str:String = my_Array.pickString();
_root.createTextField("txt", 1, 10, 10, 530, 390);
txt.text = "Array = "+my_Array+"\nRandom Number = "+num+"\nRandom String = "+str;
```

### ActionScript 3.0樣本

下面先進的Hello World程序目前需要在Flex 2.0公開Alpha測試版整合環境中編譯。

``` actionscript
package {
   import flash.text.TextField;
   import flash.display.MovieClip;
   import flash.filters.DropShadowFilter;
   public class HelloWorld extends MovieClip {
      public function HelloWorld() {
         var shad:DropShadowFilter = new DropShadowFilter(2, 45, 0x000000, 25, 3, 3, 2, 2);
         var txt:TextField = new TextField();
         txt.textColor = 0xFFFFFF;
         txt.filters = [shad];
         txt.width = 120;
         txt.x = Math.random()*300;
         txt.y = Math.random()*300;
         txt.selectable = false;
         txt.text = "Hello World! ["+Math.round(txt.x)+","+Math.round(txt.y)+"]";
         addChild(txt);
      }
   }
}
//-----ActionScript3.0-----------------
//as3.0最重要的概念就是在效能方面的增進，平時所加入的任何事件都可以被監聽或從記憶體中移除
//以下例子就是監聽與移除記憶體占用，這是as3.0最重要的基礎概念

bt1.addEventListener(MouseEvent.CLICK,bt1_click);

function bt1_click(e:MouseEvent):void{
//觸發的事件內容;
}

//該按紐監聽不需要時則remove掉，增加效能
bt1.removeEventListener(MouseEvent.CLICK,bt1_click);
```

### Starling GPU 開發樣本

導入 SWC 或相關 SDK 以後，在建構子內加入以下這段，便可啟用 GPU 高速框架開發相關 swf 或是跨平台軟體。\[5\]\[6\]\[7\]

``` actionscript
var _starling = new Starling(MainGame, stage);
_starling.start();
```

## 參見

  - [ECMAScript](../Page/ECMAScript.md "wikilink")
  - [Lingo](https://zh.wikipedia.org/wiki/Lingo_programming_language "wikilink") for Macromedia Director
  - [Macromedia Flash](https://zh.wikipedia.org/wiki/Macromedia_Flash "wikilink")
  - [Scripting](https://zh.wikipedia.org/wiki/Scripting "wikilink")
  - [Macromedia](../Page/Macromedia.md "wikilink")

## 参考资料

## 外部連結

### 技術文件

  - [官方 API](http://help.adobe.com/zh_TW/FlashPlatform/reference/actionscript/3/index.html)
  - 官方（發行前）[ActionScript 3.0語言參考（英）](http://www.macromedia.com/go/AS3LR)
  - [Macromedia實驗室](http://labs.macromedia.com)- Macromedia發展中技術資源站（英）
  - [CodeAlloy: ActionScript 2.0常見問題](https://web.archive.org/web/20060220011422/http://codealloy.com/actionscriptfaq.htm) - 第二版變動相關資訊（英）

### 教程

  - [Macromedia Flash支援中心：使用ActionScript](https://web.archive.org/web/20060405004309/http://www.macromedia.com/support/flash/action_scripts.html) - 直接來自Macromedia的教程與文章（英）
  - [ActionScript.com](https://web.archive.org/web/20161107110658/http://actionscript.com/) - 給Flash和Flex開發者的新聞、資訊、與教程（英）。
  - [ActionScript.org](https://web.archive.org/web/20170608173948/http://actionscript.org/) - 發展者社群與教程、實用代碼片段、與影片片段相關資源（英）。
  - [Kirupa.com: ActionScript指南](http://www.kirupa.com/developer/actionscript/index.htm) - 大量教程，涵蓋許多業界技術（英）。
  - [www.actionscript.be](https://web.archive.org/web/20150801050242/http://actionscript.be/) - 荷蘭人開發者資源網頁，有教程、論壇、博客等等（荷）。
  - [Flash遊戲設計](https://web.archive.org/web/20060318180319/http://www.kaleidoscope-multimedia.com/gameDesign/gameDesign.pdf) - 按部就班的PDF介紹Flash遊戲設計的指南（英）。
  - [ActionScript編程](https://web.archive.org/web/20060318180409/http://www.kaleidoscope-multimedia.com/programming/programming.pdf) - 按部就班的PDF介紹ActionScript的指南（英）。
  - [Flashkit](http://www.flashkit.com) - 教學與可下載範例的優秀資源（英）。
  - \[ Flash遊戲編程維基\] - 有關Flash/ActionScript遊戲編程與發展的維基（英）。

### 資源

  - [纬度网ActionScript知识库](https://web.archive.org/web/20101020161410/http://www.wedoswf.com/) - 提供围绕ActionScript语言技术的问答形知识库（中文）
  - [OSFlash](http://www.osflash.org/) - 提供開放源碼Flash專案與工具的資源站點（英）
  - [MTASC](http://www.mtasc.org/) - OCaml寫的開放源碼式命令行ActionScript 2.0編譯器（英）
  - [NeoSwiff](https://web.archive.org/web/20060314133451/http://www.globfx.com/products/neoswiff/) C\#到SWF編譯器（英）
  - [KineticFusion](http://www.kinesissoftware.com/) - 用Java寫的商業版跨平台ActionScript 2.0編譯器（英）
  - [secureSWF](http://www.kindisoft.com/) - 免費的ActionScript擾亂器（英，譯按：Obfucastor指的是代碼編譯後擾亂bytecode防止反編譯的擾亂器）
  - [SWF Protector](http://www.dcomsoft.com/) - Protect SWF Flash
  - [SE|PY Actionscript編輯器](http://www.sephiroth.it/python/sepy.php) - 開放源碼的ActionScript編輯器（英）
  - [V-Cam](http://www.oreillynet.com/pub/a/javascript/2004/08/17/flashhacks.html?page=last&x-order=date) - Sham Bahngal寫的虛擬"攝影機"（英）

### 其他

  - [FlashGuru](http://www.flashguru.co.uk/) - FlashGuru給Flash開發者的參考博客（英）
  - [Newgrounds](http://www.Newgrounds.com) - 社群站，您可以在此張貼Flash遊戲，同樣這裡有[Flash論壇](http://www.newgrounds.com/bbs/forum.php?id=2)如果你需要技術協助的話（英）
  - [Gotoandplay：一些Flash範例](http://www.gotoandplay.com/)：Flash應用（英）
  - [Flashplayer](http://www.flashplayer.com/) - 一個免費站點讓使用者可以張貼Flash動畫、遊戲、或檢視其他人作品（英）
  - [UnitZeroOne](http://www.unitzeroone.com) - 一個給Flash開發相關的博客（英）
  - [Ioji.it](https://web.archive.org/web/20060303150405/http://www.ioji.it/) - 一個Flash遊戲設計師擁有的站點；該站有Flash與ActionScript專屬論壇（英）
  - [CodeDrive](http://www.codedrive.com/) - Flash/ActionScript 3 IDE
  - <https://www.facebook.com/AdobeAnimateCC/?fref=ts> (Adobe Animate CC官方臉書)
  - <https://www.facebook.com/FlashDaily/?fref=ts> (FlashDaily.net官方臉書)
  - <http://labs.adobe.com/> (Adobe Labs 實驗室)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink") [Category:脚本语言](https://zh.wikipedia.org/wiki/Category:脚本语言 "wikilink")

1.
2.
3.  [Flash Player 11 Release Notes](http://helpx.adobe.com/x-productkb/multi/release-notes-flash-player-11.html)
4.  [Flash Player 14 Release Notes](http://helpx.adobe.com/flash-player/release-note/fp_14_air_14_release_notes.html)
5.   Adobe Developer Connection|url=[https://www.adobe.com/devnet/flashplayer/articles/introducing_Starling.html|accessdate=2019-08-31|work=www.adobe.com](https://www.adobe.com/devnet/flashplayer/articles/introducing_Starling.html%7Caccessdate=2019-08-31%7Cwork=www.adobe.com)}}
6.
7.