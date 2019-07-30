**图形设备接口**（\[1\]，縮寫 GDI）是[微软视窗系统提供的](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[应用程序接口](../Page/应用程序接口.md "wikilink")，也是其用来表徵图形对象、将图形对象传送给诸如[显示器](../Page/显示器.md "wikilink")、[打印机](../Page/打印机.md "wikilink")之类[输出设备](../Page/输出设备.md "wikilink")的核心组件。GDI 是视窗操作系统（[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")）的三大核心部件（也称“子系统”）之一。**GDI+** 在 GDI 的基础上调整了编程模型，同时加入了渐变色画刷、[Alpha混合等功能](https://zh.wikipedia.org/wiki/Alpha合成#Alpha混合 "wikilink")。\[2\]

GDI用来完成一些和绘制有关的工作，像直线或曲线的绘制，文字渲染，调色板控制。它不能用来直接绘制一些界面元素，像窗口、菜单等等，这些工作由用户子系统来完成，位于[user32.dll中](https://zh.wikipedia.org/wiki/Windows系統函式庫#User32.dll "wikilink")，它是建立在GDI之上的一个软件层。其他系统也有类似GDI的东西，比如[Macintosh的Quartz](https://zh.wikipedia.org/wiki/麦金塔电脑 "wikilink")（傳統的[QuickDraw](https://zh.wikipedia.org/wiki/QuickDraw "wikilink")），和GTK的GDK/Xlib。

GDI最大的好处是它有可以直接访问硬件设备的能力。通过GDI可以非常容易的在不同类型的设备上绘制图形，像显示屏和打印机或类似的显示设备。这些能力是微软Windows系统“所见即所得”程序的核心。

简单的不需要快速图形渲染的游戏可能会用到GDI。但是GDI对一些高级的动画制作无能为力，它缺少显卡中帧的概念，还缺少3D图形硬件光栅化的支持等等。现代的游戏通常使用DirectX和OpenGL而不是GDI，因为这些技术能更好的让程序员利用硬件的特性来加速图形图像的显示。

## 簡介

在[DOS](../Page/DOS.md "wikilink")時期，應用程式如果要對於顯示裝置做輸出的話，必須使用INT 10\[3\]，或對於VGA卡直接I/O，或直接對VRAM所在的記憶体位置作填值。但[VGA卡當時日新月異](https://zh.wikipedia.org/wiki/VGA "wikilink")，各家的VGA卡在其I/O ports的定義並不一致，雖中間有推出一個名為VESA SVGA的顯示卡驅動程式的共用標準，但由於DOS時先天的64KB的分頁限制，仍有許多不便。

微軟在開發Windows時，發現這個問題，於是決定打造一個GDI子系統，將顯示裝置改以API的方式進行操作，以便將各VGA卡的差異透過各VGA卡廠商自行製作的驅動程式來銜接GDI，來打消各VGA卡在操作上的彼此差異。

但微軟很快就被其他的程式開發者告知，GDI太慢了，因此Microsoft就再出一個[WING](https://zh.wikipedia.org/wiki/WING "wikilink")\[4\]用於Windows 3.0/3.1，讓應用程式能夠直接對VRAM進行填值，以加速繪圖的相關計算。

後來，WING再改為DirectDraw成為[DirectX](../Page/DirectX.md "wikilink")的一部份，直到DirectX 7。（DirectX 8以後，DirectX中2D與3D顯示技術合併，開始進入全3D的貼圖計算方式）

微軟在推.Net Framework時，又再把GDI用.Net Framework方式進行封裝，可是由於GDI本身的限制，再加上微軟自己在MSDN Library上面的文件在實用性上欠缺實證（有些功能已有技術文件，但從未做出实际可用的功能），再加上GDI+在圖形計算與顯示不算快，以及先後飽受遠端程式碼執行的漏洞等問題之下，使得其無法成為微軟在圖形子系統的主流。

直到DirectX 10時，已經進入以DirectX的[COM為基礎](https://zh.wikipedia.org/wiki/COM "wikilink")，以.Net Framework方式進行封裝的[XNA之時代](https://zh.wikipedia.org/wiki/XNA "wikilink")。XNA身兼DirectX的效能與.Net Framework的使用便利性，目前被應用於[XBOX系列的遊戲主機上](https://zh.wikipedia.org/wiki/XBOX "wikilink")，現已成為新一代的圖形子系統的主流。

## GDI+

GDI+从[Windows XP作業系統开始引入](../Page/Windows_XP.md "wikilink")，提供二維的向量圖形，改進舊有的GDI，加強的視覺化屬性，例如邊界，漸變和透明。通過GDI+，能夠直接將BMP轉成JPG或其它格式的圖片，還能夠生成[SVG](https://zh.wikipedia.org/wiki/SVG "wikilink")、[Flash等](https://zh.wikipedia.org/wiki/Flash "wikilink")。GDI+ 使用[ARGB的值來表示顏色](https://zh.wikipedia.org/wiki/ARGB "wikilink")。GDI+的雙緩衝技術可以提高繪圖效率，可避免螢幕閃爍。

GDI+號稱提供了硬件加速功能，可以直接访问硬件。但這似乎是誇飾的說法，GDI+無法直接使用VGA卡上的GPU來加速繪圖的相關計算，因此在繪圖效能上遠遠不及DirectX，只能做到Lock記憶體進行操作。（GDI+只是一組重新封裝GDI的API，DirectX則是從COM到底層的顯示卡驅動程式的組合）

隨GDI+推出了加強型EMF，即EMF+，可以同時支持GDI和GDI+。Microsoft .NET透過System.Drawing命名空间提供對GDI+的支援。The GDI+ 的DLL可移植到舊有的Windows版本上。

GDI+ 類似Apple的Quartz 2D子系统，以及屬於開放源碼（open-source）的[libart和](https://zh.wikipedia.org/wiki/libart "wikilink")[Cairo库](https://zh.wikipedia.org/wiki/cairo_\(繪圖\) "wikilink")。

## 参考文献

<div class="references-small">

<references />

</div>

## 外部連結

  - [GDI - MSDN Library](http://msdn2.microsoft.com/en-us/library/aa286572.aspx)

[Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink") [Category:操作系统技术](https://zh.wikipedia.org/wiki/Category:操作系统技术 "wikilink")

1.
2.
3.  [INT 10 - Video BIOS Services](http://heim.ifi.uio.no/~stanisls/helppc/int_10.html)
4.  [How To Obtain Microsoft WinG SDK and General Overview of WinG](http://support.microsoft.com/?scid=kb%3Ben-us%3B125698&x=18&y=7)