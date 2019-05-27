**OpenGL**（，譯名：**開放圖形庫**或者“開放式圖形庫”）是用於[渲染](../Page/渲染.md "wikilink")[2D](https://zh.wikipedia.org/wiki/二維計算機圖形 "wikilink")、[3D](https://zh.wikipedia.org/wiki/三維計算機圖形 "wikilink")[矢量圖形的跨](https://zh.wikipedia.org/wiki/矢量圖形 "wikilink")[語言](https://zh.wikipedia.org/wiki/程式語言 "wikilink")、[跨平台的](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[應用程序編程接口](https://zh.wikipedia.org/wiki/應用程序編程接口 "wikilink")（API）。這個接口由近350個不同的函數调用組成，用來從簡單的圖形位元繪製複雜的三維景象。而另一种程式介面系统是仅用于[Microsoft
Windows上的](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[Direct3D](../Page/Direct3D.md "wikilink")。OpenGL常用於[CAD](https://zh.wikipedia.org/wiki/CAD "wikilink")、[虛擬實境](https://zh.wikipedia.org/wiki/虛擬實境 "wikilink")、科學視覺化程式和[電子遊戲開發](https://zh.wikipedia.org/wiki/電子遊戲開發 "wikilink")。

OpenGL的高效實現（利用了图形加速硬件）存在于[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，部分[UNIX平台和](../Page/UNIX.md "wikilink")[Mac
OS](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")。這些實現一般由顯示裝置廠商提供，而且非常依賴於該廠商提供的硬體。[開放原始碼函式庫](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[Mesa是一個純基於軟體的圖形API](https://zh.wikipedia.org/wiki/Mesa_library "wikilink")，它的代码兼容於OpenGL。但是，由于许可证的原因，它只声称是一个“非常相似”的API。

OpenGL规范由1992年成立的OpenGL架构评审委员会（ARB）维护。ARB由一些對建立一个统一的、普遍可用的API特别感兴趣的公司组成。根据OpenGL官方网站，2002年6月的ARB投票成员包括[3Dlabs](https://zh.wikipedia.org/wiki/3Dlabs "wikilink")、[Apple
Computer](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")、[ATI
Technologies](https://zh.wikipedia.org/wiki/ATI技術公司 "wikilink")、[Dell
Computer](https://zh.wikipedia.org/wiki/戴尔 "wikilink")、[Evans &
Sutherland](https://zh.wikipedia.org/wiki/Evans_&_Sutherland "wikilink")、[Hewlett-Packard](https://zh.wikipedia.org/wiki/Hewlett-Packard "wikilink")、[IBM](https://zh.wikipedia.org/wiki/International_Business_Machines "wikilink")、[Intel](https://zh.wikipedia.org/wiki/Intel "wikilink")、[Matrox](../Page/Matrox.md "wikilink")、[NVIDIA](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")、[SGI和](https://zh.wikipedia.org/wiki/Silicon_Graphics "wikilink")[Sun
Microsystems](https://zh.wikipedia.org/wiki/Sun_Microsystems "wikilink")，[Microsoft曾是创立成员之一](https://zh.wikipedia.org/wiki/Microsoft "wikilink")，但已于2003年3月-{退出}-。

## 設計

[Pipeline_OpenGL.svg](https://zh.wikipedia.org/wiki/File:Pipeline_OpenGL.svg "fig:Pipeline_OpenGL.svg")

OpenGL規範描述了繪製2D和3D圖形的抽象[API](https://zh.wikipedia.org/wiki/API "wikilink")。儘管這些API可以完全通過軟體實現，但它是為大部分或者全部使用[硬體加速而設計的](https://zh.wikipedia.org/wiki/硬體加速 "wikilink")。

OpenGL的API定義了若干可被客戶端程序調用的[函數](https://zh.wikipedia.org/wiki/函數 "wikilink")，以及一些具名[整型](https://zh.wikipedia.org/wiki/整型 "wikilink")[常數](https://zh.wikipedia.org/wiki/常數 "wikilink")（例如，常數GL_TEXTURE_2D對應的[十進制整數為](https://zh.wikipedia.org/wiki/十進制 "wikilink")3553）。雖然這些函數的定義表面上類似於[C編程語言](https://zh.wikipedia.org/wiki/C編程語言 "wikilink")，但它們是語言獨立的。因此，OpenGL有許多語言綁定，值得一提的包括：[JavaScript綁定的](../Page/JavaScript.md "wikilink")[WebGL](../Page/WebGL.md "wikilink")（基於OpenGL
ES
2.0在Web[瀏覽器中的進行](https://zh.wikipedia.org/wiki/瀏覽器 "wikilink")3D渲染的API）；C綁定的WGL、GLX和CGL；[iOS提供的C綁定](https://zh.wikipedia.org/wiki/iOS "wikilink")；[Android提供的](../Page/Android.md "wikilink")[Java和C綁定](../Page/Java.md "wikilink")。

OpenGL不僅語言無關，而且平台無關。規範隻字未提獲得和管理OpenGL上下文相關的內容，而是將這些作為細節交給底層的[窗口系統](https://zh.wikipedia.org/wiki/窗口系統 "wikilink")。出於同樣的原因，OpenGL純粹專注于渲染，而不提供輸入、音頻以及窗口相關的API。

OpenGL是一個不斷進化的API。新版OpenGL規範會定期由Khronos
Group發布，新版本通過擴展API來支持各種新功能。每個版本的細節由Khronos
Group的成員一致決定，包括[顯卡廠商](https://zh.wikipedia.org/wiki/顯卡 "wikilink")、[作業系統設計人員以及類似](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[Mozilla和](../Page/Mozilla.md "wikilink")[谷歌的一般性](https://zh.wikipedia.org/wiki/谷歌 "wikilink")[技術公司](https://zh.wikipedia.org/wiki/技術公司 "wikilink")。

除了核心API要求的功能之外，[GPU](https://zh.wikipedia.org/wiki/GPU "wikilink")[供應商可以通過擴展的形式提供額外功能](https://zh.wikipedia.org/wiki/供應商 "wikilink")。擴展可能會引入新功能和新常數，並且可能放鬆或取消現有的OpenGL函數的限制。然后一个扩展就分成两部分发布：包含扩展函数原型的头文件和作为厂商的[设备驱动](https://zh.wikipedia.org/wiki/设备驱动 "wikilink")。供應商使用擴展公開自定義的API而無需獲得其他供應商或Khronos
Group的支持，這大大增加了OpenGL的靈活性。OpenGL Registry負責所有擴展的收集和定義。

每個擴展都與一個簡短的標識符關聯，該標識符基於開發公司的名稱。例如，[英偉達](https://zh.wikipedia.org/wiki/英偉達 "wikilink")（nVidia）的標識符是**NV**。如果多個供應商同意使用相同的API來實現相同的功能，那麼就用EXT標誌符。這種情況更進一步，Khronos
Group的架構評審委員（Architecture Review
Board，ARB）正式批准該擴展，那麼這就被稱為一個“標準擴展”，標識符使用ARB。第一個ARB擴展是GL_ARB_multitexture。

OpenGL每個新版本中引入的功能，特別是ARB和EXT類型的擴展，通常由數個被廣泛實現的擴展功能組合而成。

## 文檔

OpenGL普及的部分原因是其高質量的官方文件。OpenGL架構評審委員會隨規範一同發布了一系列包含API變化更新的手冊。這些手冊因其封面顏色而眾所周知。

  - 紅寶書

Dave Shreiner, Graham Sellers, John M. Kessenich and Bill M. Licea-Kane.
2013. **OpenGL Programming Guide: The Official Guide to Learning OpenGL,
Version 4.3（8th Edition）**. Addison-Wesley Professional. ISBN
978-0321773036.

  - 橙寶書

Randi J. Rost, Bill M. Licea-Kane, Dan Ginsburg, John M. Kessenich,
Barthold Lichtenbelt, Hugh Malan and Mike Weiblen. 2009. **OpenGL
Shading Language (3rd Edition)**. Addison-Wesley Professional. ISBN
978-0321637635

## 相關程序庫

早期的 OpenGL 版本会一同发布配套的
[GLU](https://zh.wikipedia.org/wiki/GLU "wikilink")
库，提供一些同时代硬件尚不支持的简单功能。GLU
最后一次更新规格要求是在 1998 年，对[已弃用的](../Page/已弃用.md "wikilink")
OpenGL 特性有依赖。

还有几个库也建立在OpenGL之上，提供了OpenGL本身没有的功能：

  - [GLFW](../Page/GLFW.md "wikilink")

  - [GLUT](../Page/GLUT.md "wikilink")

  - 、

特别是，库——由SGI开发并可以在[IRIX](../Page/IRIX.md "wikilink")、[Linux和](../Page/Linux.md "wikilink")[Microsoft
Windows的一些版本上使用](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，构建于OpenGL，可以建立[实时可视化仿真程序](../Page/实时计算.md "wikilink")。

当开发者需要使用最新的OpenGL扩展时，他们往往需要使用庫或者是库提供的功能，可以在程序的运行期判断当前硬件是否支持相关的扩展，防止程序崩溃甚至造成硬件损坏。這類庫利用[動態加載技術](https://zh.wikipedia.org/wiki/動態加載 "wikilink")（dlsym、GetProcAddress等函數）搜尋各種擴展的信息。

### 上下文与窗口套件

OpenGL
上下文（）的创建过程相当复杂，在不同的[操作系统上也需要不同的做法](../Page/操作系统.md "wikilink")。因此很多游戏开发和用户界面库都提供了自动创建
OpenGL 上下文的功能，其中包括
[SDL](https://zh.wikipedia.org/wiki/SDL "wikilink")、[Allegro](../Page/Allegro.md "wikilink")、、[FLTK](../Page/FLTK.md "wikilink")、[Qt](../Page/Qt.md "wikilink")
等。也有一些库是专门用来创建 OpenGL 窗口的，其中最早的便是 [GLUT](../Page/GLUT.md "wikilink")，后被
[freeglut](https://zh.wikipedia.org/wiki/freeglut "wikilink") 取代，比较新的也有
[GLFW](../Page/GLFW.md "wikilink") 可以使用。\[1\]

  - 以下套件可以用来创建并管理 OpenGL 窗口，也可以管理输入，但几乎没有除此以外的其它功能：
      - [GLFW](../Page/GLFW.md "wikilink")——跨平台窗口和键盘、鼠标、手柄处理；偏向游戏
      - [freeglut](https://zh.wikipedia.org/wiki/freeglut "wikilink")——跨平台窗口和键盘、鼠标处理；API
        是 GLUT API 的超集，同时也比 GLUT 更新、更稳定
      - [GLUT](../Page/GLUT.md "wikilink")——早期的窗口处理库，已不再维护
  - 支持创建 OpenGL 窗口的还有一些「多媒体库」，同时还支持输入、声音等类似游戏的程序所需要的功能：
      - [Allegro 5](../Page/Allegro.md "wikilink")——跨平台多媒体库，提供针对游戏开发的 C
        API

      - [SDL](https://zh.wikipedia.org/wiki/SDL "wikilink")——跨平台多媒体库，提供
        C API

      - ——跨平台多媒体库，提供 C++ API；同时也提供 C\#、Java、Haskell、Go 等语言的绑定
  - 窗口套件
      - [FLTK](../Page/FLTK.md "wikilink")——小型的跨平台 C++ 窗口组件库
      - [Qt](../Page/Qt.md "wikilink")——跨平台 C++ 窗口组件库，提供了许多 OpenGL
        辅助对象，抽象掉了桌面版 OpenGL 与 OpenGL ES 之间的区别
      - [wxWidgets](https://zh.wikipedia.org/wiki/wxWidgets "wikilink")——跨平台
        C++ 窗口组件库

## 歷史

1980年代，開發可以用在各種各樣圖形硬件上的軟件是個真正的挑戰。通常，軟件開發人員為每種硬件編寫自定義的接口和驅動程序。但這非常昂貴并會導致大量工作的重複。

20世紀90年代初，[SGI成為](https://zh.wikipedia.org/wiki/SGI "wikilink")[工作站](../Page/工作站.md "wikilink")3D圖形領域的領導者。其[IRIS](https://zh.wikipedia.org/wiki/IRIS "wikilink")
GL的API被認為是最先進的科技並成為事實上的行業標準，而基於開放標準的[PHIGS則相形見絀](https://zh.wikipedia.org/wiki/PHIGS "wikilink")。IRIS
GL更容易使用，而且還支持即時模式的[渲染](../Page/渲染.md "wikilink")。相比之下，PHIGS難於使用並且功能老舊。

SGI的競爭對手（包括[Sun](https://zh.wikipedia.org/wiki/Sun "wikilink")、[惠普和](../Page/惠普.md "wikilink")[IBM](../Page/IBM.md "wikilink")）通過擴展PHIGS標準也能將3D硬件投入[市場](https://zh.wikipedia.org/wiki/市場 "wikilink")。這反過來導致SGI市場份額的削弱，因為有越來越多的3D圖形硬件供應商進入市場。爲攻佔市場，SGI決定把IRIS
GL API轉變為一項開放標準，即OpenGL。

然而，SGI擁有大量的軟件客戶，對他們來說從IRIS GL遷移到OpenGL將需要巨額投資。此外，IRIS
GL的應用程序接口擁有與3D圖形不相關的函數。例如，它包括窗口、鍵盤和鼠標的API，部分原因是由於它是在[X
Window系統和Sun公司的NeWS系統之前開發的](https://zh.wikipedia.org/wiki/X_Window "wikilink")。而且，IRIS
GL庫由於授權和[專利問題并不適合開放](https://zh.wikipedia.org/wiki/專利 "wikilink")。上述種種因素要求SGI繼續支持先進和專有的IRIS
Inventor和IRIS Performer應用程序接口。

IRIS
GL的限制之一是只能訪問由底層硬件支持的功能。如果圖形硬件不支持一項功能，那麼該應用程序將不能使用它。OpenGL通過為硬件不具備的功能提供軟件支持克服了此問題，這就允許應用程序在相對較弱的系統中使用先進的圖形技術。OpenGL標準化了訪問硬件的方式：硬件接口程序的開發（有時也稱為設備驅動程序）交由硬件製造商，而窗口功能委託給底層作業系統。讓大量不同種類的圖形硬件講同一種語言影響深遠，它為軟件開發者進行3D軟件發展提供了更高層次的平台。

1992年，SGI公司領導了OpenGL架構審查委員會（OpenGL
ARB）的創建。該委員會由若干公司組成，負責未來OpenGL規範的維護和擴充。

[微軟在](https://zh.wikipedia.org/wiki/微軟 "wikilink")1995年發布[Direct3D](../Page/Direct3D.md "wikilink")，Direct
3D最終成為OpenGL的主要競爭對手。1997年12月17日，微軟和SGI發起[華氏溫標項目](https://zh.wikipedia.org/wiki/華氏溫標項目 "wikilink")，旨在統一OpenGL和Direct3D的接口。1998年，惠普加入。後來，由於SGI的財政限制、微軟的戰略以及缺乏行業普遍支持，項目1999年遭棄。

2006年7月，OpenGL架構評審委員會投票決定將OpenGL API標準的控制權交給Khronos Group。

## 高级功能

OpenGL被設計為只有輸出的，所以它只提供[渲染功能](https://zh.wikipedia.org/wiki/計算機渲染 "wikilink")。核心[API没有](https://zh.wikipedia.org/wiki/API "wikilink")-{zh-cn:[窗口系统](https://zh.wikipedia.org/wiki/窗口系统 "wikilink");
zh-tw:[視窗系統](../Page/視窗系統.md "wikilink")}-、音频、[打印](https://zh.wikipedia.org/wiki/数字打印 "wikilink")、键盘／鼠标或其他[输入设备的概念](https://zh.wikipedia.org/wiki/输入设备 "wikilink")。雖然这一开始看起来像是一种限制，但它允许进行[渲染的代码完全独立于他运行的](https://zh.wikipedia.org/wiki/计算机渲染 "wikilink")[操作系统](../Page/操作系统.md "wikilink")，允許跨平台開發。然而，有些整合于原生-{zh-cn:窗口系统;
zh-tw:視窗系統}-的东西需要允许和宿主系统交互。这通过下列附加API實現：

  - [GLX](https://zh.wikipedia.org/wiki/GLX "wikilink") - X11（包括透明的網路）
  - [WGL](https://zh.wikipedia.org/wiki/WGL "wikilink") -
    [Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink")
    Windows

另外，[GLUT库能够以可移植的方式提供基本的](../Page/GLUT.md "wikilink")-{zh-cn:窗口;zh-tw:視窗}-功能。

## 版本

OpenGL进化自（而且风格很相似）SGI的早期3D接口[IRIS
GL](https://zh.wikipedia.org/wiki/IRIS_GL "wikilink")。IRIS
GL的一个限制是它只能访问底层硬件提供的特性。如果图形硬件不支持例如[纹理映射这样的功能](https://zh.wikipedia.org/wiki/纹理映射 "wikilink")，那么应用程序就不能使用它。OpenGL通过在软件上对硬件不支持的特性提供支持的方法克服了这个问题，允许应用程序在相对低配置的系统上使用高级的图形特性。[Fahrenheit项目是Microsoft和SGI之间的联合行动](https://zh.wikipedia.org/wiki/Fahrenheit图形API "wikilink")，为了统一OpenGL和Direct3D接口的目的。它一开始提出了一些把规则带给交互3D计算机图形API世界的承诺，但因为SGI的财政限制，这个项目后来被放弃了。

2002年微軟的DirectX
9提出了全新的Shader繪圖功能以及高階著色語言（[HLSL](https://zh.wikipedia.org/wiki/HLSL "wikilink")），OpenGL霸主地位開始被瓦解。這使得3DLabs了解到必須開發全新的OpenGL
2.0版本，但僅加入支援[GLSL的功能](../Page/GLSL.md "wikilink")。2006年Khronos接手OpenGL，立刻着手發展Longs
Peak與Mount Evans。2008年推出OpenGL 3，但評價普遍不高。

2010年3月10日,
OpenGL同時推出了3.3和4.0版本，同年7月26日又发布了4.1版本。2011年8月8日发布4.2版本。2013年發佈4.3版。

<table>
<thead>
<tr class="header">
<th><p>主要版本</p></th>
<th><p>发布日期</p></th>
<th><p>重要变更</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>1.1</p></td>
<td><p>1997年1月</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.2</p></td>
<td><p>1998年3月16日</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1.2.1</p></td>
<td><p>1998年10月14日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.3</p></td>
<td><p>2001年8月14日</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1.4</p></td>
<td><p>2002年7月24日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.5</p></td>
<td><p>2003年7月29日</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2.0</p></td>
<td><p>2004年9月7日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2.1</p></td>
<td><p>2006年7月2日</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>3.0</p></td>
<td><p>2008年8月11日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>3.1</p></td>
<td><p>2009年3月24日</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>3.2</p></td>
<td><p>2009年8月3日</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>3.3</p></td>
<td><p>2010年3月11日</p></td>
<td><p>OpenGL 3.3与4.0版一起发布。 以体现硬件支持Direct3D 10的可能性。</p></td>
</tr>
<tr class="odd">
<td><p>4.0</p></td>
<td><p>2010年3月11日</p></td>
<td><p>OpenGL 4.0与版本3.3一起发布。 它是为硬件设计的，以体现硬件支持Direct3D 11的可能性。</p>
<p>与OpenGL 3.0一样，这个版本的OpenGL包含大量相当无关紧要的扩展，旨在彻底揭示Direct3D 11级硬件的能力。</p></td>
</tr>
<tr class="even">
<td><p>4.1</p></td>
<td><p>2010年7月26日</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>4.2</p></td>
<td><p>2011年8月8日</p></td>
<td><p>支持的显卡：NVIDIA GeForce 400系列以上，AMD Radeon HD7000系列以上，<a href="../Page/Intel_HD_Graphics.md" title="wikilink">Intel HD Graphics</a> （第7代Ivy Bridge系列以上） AMD Radeon HD 6000 Series, AMD Radeon HD 7000 Series</p>
<ul>
<li>支持Shaders原子计数器和加载/存储/原子读-修改-写操作的单级纹理着色器。</li>
<li>捕捉GPU-tessellated几何变换反馈的结果绘制的多个实例，使复杂的对象进行有效的重新定位和复制。</li>
<li>支持修改任意子集的压缩纹理，而无需重新下载整个GPU的纹理，显著的性能改进。</li>
<li>支持包装成一个单一的32位值显著降低内存存储和带宽的高效着色处理多个8位和16位值。</li>
</ul></td>
</tr>
<tr class="even">
<td><p>4.3</p></td>
<td><p>2012年8月6日</p></td>
<td><p>支持的显卡：NVIDIA GeForce 400系列以上，AMD Radeon HD5000系列以上，<a href="../Page/Intel_HD_Graphics.md" title="wikilink">Intel HD Graphics</a> （第7.5代Haswell系列以上）</p>
<ul>
<li>圍內充分利用GPU的並行計算着色器的圖形管道</li>
<li>暗器的存儲緩衝區對象</li>
<li>紋理參數查詢</li>
<li>作為標準功能的高品質的紋理壓縮ETC2/EAC</li>
<li>完全兼容的OpenGL ES3.0的API</li>
<li>在應用程序開發過程中調試能力接收調試消息</li>
<li>沒有數據複製以不同的方式解釋紋理的紋理意見</li>
<li>增加了內存的安全性</li>
<li>一個多應用的健壯性擴展</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>4.4</p></td>
<td><p>2013年7月22日[2]</p></td>
<td><p>支持的顯示卡：NVIDIA GeForce 400系列以上，AMD Radeon HD5000系列以上，<a href="../Page/Intel_HD_Graphics.md" title="wikilink">Intel HD Graphics</a> （第7.5代Haswell系列以上）</p>
<ul>
<li>緩衝區位置控制</li>
<li>高效異步查詢</li>
<li>着色器可變佈局</li>
<li>高效多對象綁定</li>
<li>精簡化Direct3D應用的移植</li>
<li>非綁定的紋理擴展</li>
<li>稀疏紋理擴展</li>
</ul></td>
</tr>
<tr class="even">
<td><p>4.5</p></td>
<td><p>2014年8月11日[3]</p></td>
<td><p>支持的显卡：NVIDIA GeForce 400系列以上，AMD Radeon HD7000系列以上，<a href="../Page/Intel_HD_Graphics.md" title="wikilink">Intel HD Graphics</a> （第8代Broadwell系列以上），<a href="https://zh.wikipedia.org/wiki/Tegra_K1" title="wikilink">Tegra K1</a>, Tegra X1</p>
<ul>
<li>直接状态访问（DSA） - 对象访问器使查询和修改状态不会将对象绑定到上下文中，从而提高应用程序和中间件的效率和灵活性</li>
<li>刷新控制 - 应用程序可以在上下文切换之前控制挂起命令的刷新，实现高性能多线程应用程序</li>
<li>鲁棒性 - 为WebGL浏览器等应用程序提供安全平台，包括阻止GPU复位影响任何其他正在运行的应用程序</li>
<li>OpenGL ES 3.1 API和着色器兼容性 - 可轻松开发和执行桌面系统上最新的OpenGL ES应用程序</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>4.6</p></td>
<td><p>2017年7月31日</p></td>
<td><p>支持的显卡：NVIDIA GeForce 400系列以上（理论上可支持）</p>
<ul>
<li>SPIR-V着色器</li>
<li>各向异性过滤</li>
</ul></td>
</tr>
</tbody>
</table>

## 參見

  - [Khronos
    Group](https://zh.wikipedia.org/wiki/Khronos_Group "wikilink")
  - [OpenGL ES](../Page/OpenGL_ES.md "wikilink")

## 参考文献

## 外部链接

  - [OpenGL官方網站](http://www.opengl.org/)
  - [Khronos Group官方網站](http://www.khronos.org/)

{{-}}

[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")
[Category:计算机图形学](https://zh.wikipedia.org/wiki/Category:计算机图形学 "wikilink")
[Category:三维计算机图形学](https://zh.wikipedia.org/wiki/Category:三维计算机图形学 "wikilink")
[Category:OpenGL](https://zh.wikipedia.org/wiki/Category:OpenGL "wikilink")
[Category:繪圖函式庫](https://zh.wikipedia.org/wiki/Category:繪圖函式庫 "wikilink")

1.
2.
3.