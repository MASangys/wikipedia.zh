> 本文内容由[Meiryo](https://zh.wikipedia.org/wiki/Meiryo)转换而来。


**Meiryo**（日語：）是一種搭載在[微软](../Page/微软.md "wikilink")[Windows Vista的](../Page/Windows_Vista.md "wikilink")[OpenType](../Page/OpenType.md "wikilink")[日語](https://zh.wikipedia.org/wiki/日語 "wikilink")[字型](../Page/计算机字体.md "wikilink")，源文件名稱為`meiryo.ttc`，屬於[無襯線字體和](https://zh.wikipedia.org/wiki/無襯線字體 "wikilink")[黑體](../Page/黑体_\(字体\).md "wikilink")（）。它的設計配合了Windows Vista的[ClearType](../Page/ClearType.md "wikilink")晶瑩畫面，並包含了字集的[漢字](https://zh.wikipedia.org/wiki/漢字 "wikilink")。

中譯為「**明瞭體**」，但不是正式的中文名稱，因為官方並沒有給予中文命名，所以在中文系統下看到的字體名稱為「Meiryo」。

## 概要

明瞭体是Windows Vista日文版的新增字体，因此Windows XP以前的各种视窗版本并没有这个字体。字体设计上属于[無襯線字體和](https://zh.wikipedia.org/wiki/無襯線字體 "wikilink")[黑體](../Page/黑体_\(字体\).md "wikilink")（）。在字形上，直线部分和曲线部分区别清晰，稍微有些膨胀感，重视横排时的可读性。[汉字](../Page/汉字.md "wikilink")和[假名的字面](https://zh.wikipedia.org/wiki/假名 "wikilink")[纵横比为](https://zh.wikipedia.org/wiki/纵横比 "wikilink")95:100，因此字形略扁。

字体套装包含“通常”和“粗体”。粗体并不是通常字体的简单加粗，而是在字形上进行了若干处理。这是考虑到在[HTML](../Page/HTML.md "wikilink")等环境中使用能加强与正文的对比突出强调。在具体处理上，通常字体横细竖粗，而粗体中粗细均一。斜体字体中，-{只}-有西文字符才有斜体，汉字和假名字符没有斜体。

明瞭体对应[日本工业标准的](https://zh.wikipedia.org/wiki/日本工业标准 "wikilink")字符集，解决了各种兼容性问题。由此，基于日本《[戶籍法](https://zh.wikipedia.org/wiki/日本戶籍法 "wikilink")》施行规则中的“[人名用漢字](../Page/人名用漢字.md "wikilink")”可以无障碍地正常使用。这些汉字的使用在其它字体，比如原来的系统-{zh-hans:默认字体; zh-hant:預設;}-[微軟哥德體](https://zh.wikipedia.org/wiki/微软哥特体 "wikilink")（）系列的三种字体和[MS 明朝系列的两种字体中](../Page/MS_明朝.md "wikilink")，需要[理光](../Page/理光.md "wikilink")公司通过补丁的形式进行支持。这个补丁也适用于Windows XP，\[1\]这样才保证了与明瞭体的兼容性。

明瞭体（日文作“”，Meirio）的名称源于汉字词汇“明瞭”（，发音为“”，Meiryō），因为其无论是屏幕显示还是印刷，都保持明瞭清晰的特点。日文表记中不直接写而改为的理由是，发音富有异国情调，而且可以少用一个假名。\[2\]

日文假名字符的设计师是[河野英一和C](https://zh.wikipedia.org/wiki/河野英一 "wikilink")\&G公司，漢字部份由C\&G公司委託台灣[文鼎科技](../Page/文鼎科技.md "wikilink")設計，西文字符的设计师是[马修·卡特](https://zh.wikipedia.org/wiki/马修·卡特 "wikilink")（Matthew Carter）。\[3\]卡特是在其设计的[Verdana](../Page/Verdana.md "wikilink")字体的基础上制作的。在汉字和假名和文字符中也保持了Verdana字体的氛围。另外，由于稍微提高了方块字的基线，使汉英字符混排文章的可读性得到了提高。

## 真正的ClearType

这个字体没有小号字体用的点阵，所有的字体描画都使用ClearType技术。对于日语字体是在Windows系统第一次尝试。

原来的等字体，在大约9pt的大小就使用点阵字体显示，这也是为了保证可读习惯的一种尝试。但是，由于没有抗锯齿、间距调整、平滑调整等效果使得字体美观受到影响，而且制作字体的成本、文件容量的增大也是一大问题。原操作系统中对于没有准备点阵的字体实施抗锯齿等调整后反而会使小字号的字体边缘崩溃，看不清楚。

对此，明瞭体为了能使9pt左右的小字体也能使用ClearType保持清晰显示，引入了大量的间距调整数据。

## 问题点

  - 小字号中，汉字的高度不一，看起来不太平衡。（如在日文Windows Vista开始選单中“”的“”字看起来比“”字要大(<span style="font-family: Meiryo;">検索</span>)，汉字“”看起来比别的字瘦长等等（<span style="font-family: Meiryo;">名</span>）。
  - 斜体字体只对西文字符有效，因此汉字和假名的部分没有办法显示为斜体。虽然有意见称，汉字和西文不同，原本并没有使用斜体的习惯，但是现在大多数主要的[网页浏览器](../Page/网页浏览器.md "wikilink")中，正文中的强调（`em`）都使用斜体表示，若使用明瞭体就根本没有办法区别了。

以下是与微软公司的其它字体比较中发现的问题。

  - 小字号中，一部分文字（如「」、「」、「」等），笔画省略得比较严重，和原来的[MS Gothic点阵字体比较有较大的区别](../Page/MS_Gothic.md "wikilink")。(<span style="font-family: Meiryo;">-{電 載 賞}-</span> <span style="font-family: MS Gothic;">-{電 載 賞}-</span>)
  - 和[MS Gothic以及其它一般日文字体相比](../Page/MS_Gothic.md "wikilink")，行距较大（這其實也是[微軟正黑體](../Page/微軟正黑體.md "wikilink")及[微軟雅黑會遇到的問題](https://zh.wikipedia.org/wiki/微軟雅黑 "wikilink")，因為它們同期推出）。另外和MS PGothic字体相比字符宽度稍大一些，假名字符、[标点符号](../Page/标点符号.md "wikilink")类似于[等幅字体处理](https://zh.wikipedia.org/wiki/等幅字体 "wikilink")（对此，也有意见说，原来MS PGothic字体的间距太小）。因此在[文本编辑器](../Page/文本编辑器.md "wikilink")、[列表中使用明瞭体](https://zh.wikipedia.org/wiki/列表 "wikilink")，比使用其它字体会占用更大面积，也就是说在同样画面中，用明瞭体显示的文字量、信息量会更少。在Vista环境中进行[网页设计](../Page/网页设计.md "wikilink")会导致整体印象完全改变。明瞭体和MS UI Gothic的差别更大。

## 注釋

<div class="references-small">

<references />

</div>

## 外部連結

  - [ClearType page at Microsoft Design](http://www.microsoft.com/resources/design/ClearType.html)
  - [Channel9 interview with Cleartype Team](http://channel9.msdn.com/Showpost.aspx?postid=146749)
  - [-{マイクロソフト「Windowsの次期バージョンWindows Vista(TM)において日本語フォント環境を一新」}-](http://www.microsoft.com/japan/presspass/detail.aspx?newsid=2353)
  - [-{aki's STOCKTAKING「メイリオMeiryo........明瞭」}-](http://landship.sub.jp/stocktaking/archives/000875.html)
  - [-{メイリオ！Windows VISTAの新フォント、Meiryoは明瞭か}-](https://web.archive.org/web/20070703115508/http://www.designgumi.com/blog/index.php?ID=39)
  - [Japanese ClearType fonts for Windows XP - 日本語](http://www.microsoft.com/downloads/details.aspx?FamilyID=f7d758d2-46ff-4c55-92f2-69ae834ac928&displaylang=ja)

## 请参阅

  - [Segoe UI](https://zh.wikipedia.org/wiki/Segoe_UI "wikilink")
  - [微软雅黑](../Page/微软雅黑.md "wikilink")
  - [微軟正黑體](../Page/微軟正黑體.md "wikilink")
  - [Malgun Gothic](../Page/Malgun_Gothic.md "wikilink")

[Category:黑体](https://zh.wikipedia.org/wiki/Category:黑体 "wikilink") [Category:東亞字體](https://zh.wikipedia.org/wiki/Category:東亞字體 "wikilink") [Category:Windows_Vista字体](https://zh.wikipedia.org/wiki/Category:Windows_Vista字体 "wikilink") [Category:2008年面世](https://zh.wikipedia.org/wiki/Category:2008年面世 "wikilink")

1.  [关于Windows XP和Windows Server 2003中对应JIS2004 MSゴシック& MS明朝字体包](http://www.microsoft.com/japan/windows/products/windowsvista/jp_font/jis04/default.mspx)，[微软](../Page/微软.md "wikilink")
2.  [耗费2年的新日文字体——明瞭体](http://www.itmedia.co.jp/news/articles/0605/16/news069.html)、ITmedia、2006年05月16日
3.