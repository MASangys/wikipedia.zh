> 本文内容由[TrueType](https://zh.wikipedia.org/wiki/TrueType)转换而来。


**TrueType**是由[美国](../Page/美国.md "wikilink")[苹果公司和](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")[微软](../Page/微软.md "wikilink")公司共同开发的一种[电脑](https://zh.wikipedia.org/wiki/电脑 "wikilink")[轮廓](https://zh.wikipedia.org/wiki/轮廓 "wikilink")[字体](../Page/字体.md "wikilink")（[曲線描邊字](https://zh.wikipedia.org/wiki/襯線字 "wikilink")）类型标准。这种类型字体文件的[扩展名是](https://zh.wikipedia.org/wiki/扩展名 "wikilink")`.ttf`，类型代码是`tfil`。

早在1980年代末，苹果公司为了对抗[Adobe](../Page/Adobe.md "wikilink")公司的[Type 1](https://zh.wikipedia.org/wiki/Type_1 "wikilink")[PostScript](../Page/PostScript.md "wikilink")字体，设计开发了TrueType。之後[微软](../Page/微软.md "wikilink")加入了开发，[Windows操作系统的字体格式基本上都统一成TrueType](https://zh.wikipedia.org/wiki/Windows "wikilink")，而在苹果的[Mac OS却成了PostScript和TrueType对立的局面](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")。TrueType后来也被[Linux](../Page/Linux.md "wikilink")等系统使用，成为标准字体。TrueType的主要强项在于它能给开发者提供关于字体显示、不同字體大小的像素級显示等的高级控制。

在新开发的[OpenType](../Page/OpenType.md "wikilink")类型字体中，可以选择PostScript还是TrueType作为记述方式。

## 历史

### 苹果

在[麦金塔中](https://zh.wikipedia.org/wiki/麦金塔 "wikilink")，字体原先是存储为手工调整的[点阵字体文件](https://zh.wikipedia.org/wiki/点阵字体 "wikilink")，为每个字体、特殊大小分别指定一个个的[像素](../Page/像素.md "wikilink")位置。如果用户要看另一个大小的字体，字体管理器（Font Manager）找到最接近匹配，应用基本比例算法来显示。当比例放大到大字号的时候，效果就非常糟糕——因为字体是点阵式的，字形就被放大成[马赛克式的](https://zh.wikipedia.org/wiki/马赛克 "wikilink")[锯齿](../Page/鋸齒形.md "wikilink")。

与之相对的，[打印机](../Page/打印机.md "wikilink")的字体，如著名的[Apple LaserWriter是基于](https://zh.wikipedia.org/wiki/Apple_LaserWriter "wikilink")[PostScript Type 1轮廓](https://zh.wikipedia.org/wiki/PostScript_Type_1 "wikilink")，可以出色地输出任何大小的文字。轮廓字体通过一套描绘曲线的算式来创建每个字符或“字形”。使用算式，计算机可以绘制出一个“轮廓”形状，然后再“填充”进颜色（例如：黑色）从而打印出字符。这些算式可以按照比例进行缩放到任意大小，而与[显示器](../Page/显示器.md "wikilink")和打印机的解析度无关。无论是打印到胶片，还是显示在屏幕上都具有同样的质量。该技术曾经是一个重要的发明，并由Adobe公司创始人开发推行，称为[PostScript](../Page/PostScript.md "wikilink")。但另一个难点是Type 1字体是加密过的，Adobe通过发售格式认证得到了相当可观的收入，所以他们也不想向苹果免费转让这个软件。

而苹果的Sampo Kaasila决定制作一个全新的格式，代号为“Bass”。这个系统随后被开发出来，称为TrueType，并在1991年5月随[Mac OSSystem](https://zh.wikipedia.org/wiki/Mac_OS "wikilink") 7发表。这些字体均含有4种字型的套装，包括*Times Roman*, *[Helvetica](../Page/Helvetica.md "wikilink")*, *[Courier](../Page/Courier.md "wikilink")*等大量字体，代替了原麦金塔系统中原有的点阵字体。为了能保证和老系统的兼容，苹果还发布了一个TrueType扩展，和一个System Software 6使用的[Font/DA Mover](https://zh.wikipedia.org/wiki/Apple_Typography "wikilink")。

可是TrueType字型在实际的出版业界反应并不好。当时的状况是，用户已经花了大笔资金购买了Type 1字体，没有必要进行更换，而且他们仍然要使用Adobe Type Manager (ATM)。而且另外一个问题是，TrueType格式的字体数量甚少，不值得他们更新。

为了对抗Adobe，苹果将TrueType认证给了[微软](../Page/微软.md "wikilink")，并换来了[TrueImage](https://zh.wikipedia.org/wiki/TrueImage "wikilink")——微软开发的[PostScript](../Page/PostScript.md "wikilink")打印机控制语言，苹果计划使用在他们的[激光打印机](../Page/激光打印机.md "wikilink")上。不过这个打印语言最终没有在任何苹果的产品上实际使用。

尽管ATM并不是随操作系统附，而需要另外购买，但是它已经成为[桌面出版](../Page/桌面出版.md "wikilink")业界的實際标准。当TrueType发布的时候，Adobe的[John Warnock发表声明](https://zh.wikipedia.org/wiki/John_Warnock "wikilink")，声称苹果和微软在兜售“骗人的万灵油”，并随后发布了可供任何人使用的Type 1格式作为出版标准。这给TrueType更大的压力。苹果于是更新了Adobe的协议，在其打印机上使用PostScript。

苹果在1994年发表了TrueType GX拓展了TrueType，也是[QuickDraw GX智能字体技术的一部分](https://zh.wikipedia.org/wiki/QuickDraw_GX "wikilink")。这是在两个主要领域的重要拓展：首先在字体轴线（morphing变形），比如允许字体从细到粗、或从窄到宽平滑调整，与Adobe的"multiple master"技术对抗。第二就是自动替换，当字符组合为事先设计好的变体设计时可以进行自动替换，最常见的就是合字组合："fi", "ffi", "ct"，等等。但是，由于缺乏用户友好的开发工具来创建TrueType GX字体，使得GX fonts字体寥寥。TrueType GX中的多数技术，包括morphing变形和替换，现在都被囊括到[Mac OS X系统的](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[AAT](https://zh.wikipedia.org/wiki/AAT "wikilink")（Apple Advanced Typography）中。然而苹果以外的字体开发者卻很少创建AAT字体，而都转向支持[OpenType](../Page/OpenType.md "wikilink")。

### 微软

1991年微软把TrueType加入[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink") 3.1[操作系统](../Page/操作系统.md "wikilink")。在与[Monotype公司合作下](https://zh.wikipedia.org/wiki/Monotype "wikilink")，微软花了大力气制作了一批高品质TrueType字体，并使其可以与当时PostScript设备捆绑的核心字体兼容。其中包括了目前[Windows系统的一些著名字体](https://zh.wikipedia.org/wiki/Windows "wikilink")：[Times New Roman体](../Page/Times_New_Roman.md "wikilink")（与Times Roman兼容）, [Arial](../Page/Arial.md "wikilink")体（与[Helvetica](../Page/Helvetica.md "wikilink")体兼容）和Courier New体（与Courier体兼容）。

请注意，所谓“兼容”意味着两层含义：第一，相兼容字体外观非常相似；第二，也是很重要的，字体含有同样的字符宽度，以便可以用来替代相同文档的内容而不需要重新排版调整。对于字体名称的变化，除了Arial和Helvetica体；导致有人认为产生一个问题：每当一个特定的Windows字体命名之后，必须决定一个与其相当的苹果或PostScript字体，反之亦然。尽管如此，虽然字体中字符轮廓数据本身不一样，风格和字型被做的很相似，导致一般用户很难区别开来。

微软和Monotype的技术人员使用TrueType的“提示技术”（hinting technology）来解决字体在低解析度的显示模糊问题。原先的技术是在小字号时改用点阵字体。后来的技术改进首先引入了抗锯齿效果，可以平滑字体边缘；现在常用的是“次像素补偿”（微软使用这个技术，并称为[ClearType](../Page/ClearType.md "wikilink")），使用[液晶](../Page/液晶.md "wikilink")[显示器](../Page/显示器.md "wikilink")像素结构，以提高实际能显示的解析度。微软大力推广这些技术，并扩展到各种平台。

微软还开发了一个叫“智能字体”的技术，在1994年称为*TrueType Open*，然后在与[Adobe](../Page/Adobe.md "wikilink") Type 1技术合并后改名为[OpenType](../Page/OpenType.md "wikilink")。

TrueType Collections (TTC)允许将多个字体合并为一个文件，为选择的字体仅使用一些字体的不同字形创建替换间距保存。最初只在[中文](https://zh.wikipedia.org/wiki/中文 "wikilink")、[日文和](https://zh.wikipedia.org/wiki/日文 "wikilink")[韩国语版的Windows系统中使用](https://zh.wikipedia.org/wiki/韩国语 "wikilink")，之后在[Windows 2000支持所有区域](../Page/Windows_2000.md "wikilink")。

## TrueType现状

### Macintosh和Windows

在目前的[Mac OS X和](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[Windows XP系统中](../Page/Windows_XP.md "wikilink")，TrueType是最常见的字体格式。虽然二者都包含对Adobe的Type 1格式和[OpenType](../Page/OpenType.md "wikilink")拓展的本地支持。可是现在很多字体已经改用OpenType格式，但是大多数免费廉价的第三方字体仍使用纯TrueType格式。

目前的趨勢是，對屏幕補償的追求減少了對拓展TrueType提示技術（font hinting）的重要性。蘋果[Mac OS X的補償技術幾乎忽略了所有TrueType字體中的所有提示資料](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，而微軟的ClearType也忽略了很多提示資料，並與「略加提示」的字體配合使用最佳。

### Linux及其他平台

[文泉驛计划提供了很好的TrueType中文字符支持](https://zh.wikipedia.org/wiki/文泉驛 "wikilink")，而且开源提供，被很多Linux版本支持。 David Turner的[FreeType](../Page/FreeType.md "wikilink")项目期望创建一个独立执行的TrueType标准（如同Freetype 2其他字体标准）。FreeType包含很多[Linux](../Page/Linux.md "wikilink")提供者。

在FreeType中有一些专利问题因为一部分TrueType字体提示虚拟机是苹果的专利保护的，并没有在TrueType标准中提及。FreeType 2包括一个[自动提示器可以分析](https://zh.wikipedia.org/wiki/自动提示器 "wikilink")[字形](../Page/字形.md "wikilink")形状，并自动生成提示，从而跳过这些受专利保护的技术。[1](http://freetype.sourceforge.net/patents.html) 免费／廉价字体往往没有提示数据，或者任意生成，自动提示器基本上改进了这类字体的外观，但它同时降低了那些原先提示好的专业字体外观，但是对于非西文字体的效果不是很好，因此很多人还是倾向于使用专利保护的提示技术。

## 技术信息

### 轮廓

TrueType字体中的字符（或[字形](../Page/字形.md "wikilink")）轮廓由直线和二次[貝塞爾曲線](https://zh.wikipedia.org/wiki/貝塞爾曲線 "wikilink")（bézier）片段构成。这些构建在数学上比[平面设计](../Page/平面设计.md "wikilink")界PostScript使用的三次贝塞尔曲线（也被Type 1字体所使用）更容易处理。尽管如此，对于多数形状，二次要比三次贝塞尔曲线需要更多的点来描述。这个差异也意味着它不能将Type 1无损地转换为TrueType格式，可是你可以无损地将TrueType转换为Type 1。

### 提示语言

TrueType系統包含一個[虛擬機在字體內部執行程序](https://zh.wikipedia.org/wiki/虛擬機 "wikilink")，處理字形的"[提示](https://zh.wikipedia.org/wiki/提示 "wikilink")"（hints）。這些定義輪廓的控制點最主要目的是在字型顯示時減少模糊現象。每個字形的提示程序能算出顯示字形的像素大小，以及顯示環境中其他次要參數。

雖然和普通程序中的接受輸入和產品輸出一同，TrueType提示語言的確具備一些程序語言的特性：: [條件分支](https://zh.wikipedia.org/wiki/條件分支 "wikilink")（IF聲明），[控制循環一個時間的算法](https://zh.wikipedia.org/wiki/控制循環 "wikilink")（FOR- 和WHILE-型聲明），變量（雖然這些只是內存中分給字體的一個區域中的簡單編號的槽），並將代碼封裝到函數中。特別結構delta hints是最低級的控制，用來移動一個控制點或一個像素大小。

好的TrueType字形程序技術需要在一個字體中盡可能的使用一次參數定義（例如：字符頸寬、[大寫字母高度](https://zh.wikipedia.org/wiki/大寫字母高度 "wikilink")、[x字高](https://zh.wikipedia.org/wiki/x字高 "wikilink")）。這意味著盡量避免delta結構。這可以幫助字體開發者做一些重要修改（例如：要統一將字符主高改到1-2像素寬的時候）。

制作一个良好提示的TrueType字体需要大量的工作。1990年代以来，大量的添加字體提示的程序被開發出來給用戶使用；但是，很多TrueType字体只有一些很不完善的提示，或者只有根据字体编辑器自动提示，导致各种不同结果。

## 参考文献

## 外部链接

  - [TrueType规格 (微软)](http://www.microsoft.com/typography/specs/default.htm)
  - [TrueType规格 (苹果)](http://developer.apple.com/fonts/TTRefMan/index.html)
  - [TrueType字体](http://www.truetype-typography.com)

## 参见

  - [字体](../Page/字体.md "wikilink")
  - [PostScript](../Page/PostScript.md "wikilink")
  - [OpenType](../Page/OpenType.md "wikilink")
  - [万国码](https://zh.wikipedia.org/wiki/万国码 "wikilink")，[UTF-8](../Page/UTF-8.md "wikilink")，[Unicode fonts](https://zh.wikipedia.org/wiki/Unicode_typefaces "wikilink")。
  - [Uniscribe](../Page/Uniscribe.md "wikilink")（Windows multilingual text rendering engine）
  - [Apple Type Services for Unicode Imaging](https://zh.wikipedia.org/wiki/Apple_Type_Services_for_Unicode_Imaging "wikilink")（New Macintosh multilingual text rendering engine）
  - [WorldScript](https://zh.wikipedia.org/wiki/WorldScript "wikilink")（Old Macintosh multilingual text rendering engine）

[Category:數碼字體排印](https://zh.wikipedia.org/wiki/Category:數碼字體排印 "wikilink") [Category:字體格式](https://zh.wikipedia.org/wiki/Category:字體格式 "wikilink") [Category:字型](https://zh.wikipedia.org/wiki/Category:字型 "wikilink")