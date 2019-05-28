**STL** (**STereoLithography**,
立體光刻)是由創立、原本用於[立體光刻](https://zh.wikipedia.org/wiki/立體光刻 "wikilink")[電腦輔助設計](https://zh.wikipedia.org/wiki/電腦輔助設計 "wikilink")[軟體的](https://zh.wikipedia.org/wiki/軟體 "wikilink")[檔案格式](../Page/檔案格式.md "wikilink")。\[1\]\[2\]\[3\]它有一些[事後諸葛的](https://zh.wikipedia.org/wiki/後見之明偏誤 "wikilink")如「標準三角語言(Standard
Triangle
Language)」、「標準[曲面細分語言](https://zh.wikipedia.org/wiki/密鋪#在電腦圖形中 "wikilink")(Standard
Tessellation Language)」、「立體光刻語言(STereolithography
Language)」和「(立體光刻曲面細分語言)」。\[4\]許多套裝軟體支援這種格式，它被廣泛用於[快速成型](../Page/快速成型.md "wikilink")、[3D列印和](https://zh.wikipedia.org/wiki/3D列印 "wikilink")[電腦輔助製造](https://zh.wikipedia.org/wiki/電腦輔助製造 "wikilink")(CAM)。\[5\]STL檔案僅描述[三維物體的](https://zh.wikipedia.org/wiki/三維 "wikilink")[表面幾何形狀](https://zh.wikipedia.org/wiki/表面 "wikilink")，沒有[顏色](https://zh.wikipedia.org/wiki/顏色 "wikilink")、[材質貼圖或其它常見](https://zh.wikipedia.org/wiki/材質貼圖 "wikilink")[三維模型的屬性](https://zh.wikipedia.org/wiki/三維模型 "wikilink")。STL格式有[文字和](../Page/ASCII.md "wikilink")[二進碼兩種型式](https://zh.wikipedia.org/wiki/二進碼 "wikilink")。二進碼型式因較簡潔而較常見。\[6\]

STL檔描述原始非結構化由表面[單位](https://zh.wikipedia.org/wiki/單位向量 "wikilink")[法線和由](https://zh.wikipedia.org/wiki/法線 "wikilink")[右手定則排序的頂點用三維三角形](../Page/右手定則.md "wikilink")[笛卡兒座標系](https://zh.wikipedia.org/wiki/笛卡兒座標系 "wikilink")。STL座標必須是[正數](https://zh.wikipedia.org/wiki/正數 "wikilink")，沒有尺度資訊，且[計量單位為任意的](https://zh.wikipedia.org/wiki/計量單位 "wikilink")。\[7\]

## 文字(ASCII)STL

文字STL檔以下列來開始

`solid `*`name`*

*name*是個可有可無的[字串](https://zh.wikipedia.org/wiki/字串 "wikilink")。不過，即使省略了*name*，solid後的空白必須存在。這列之後跟著任意數量的以下列方式表示的三角形：

`facet normal `*`n`<sub>`i`</sub>`   ``n`<sub>`j`</sub>`
 ``n`<sub>`k`</sub>*
`    outer loop`
`        vertex `*`v`*`1`<sub>*`x`*</sub>` `*`v`*`1`<sub>*`y`*</sub>` `*`v`*`1`<sub>*`z`*</sub>
`        vertex `*`v`*`2`<sub>*`x`*</sub>` `*`v`*`2`<sub>*`y`*</sub>` `*`v`*`2`<sub>*`z`*</sub>
`        vertex `*`v`*`3`<sub>*`x`*</sub>` `*`v`*`3`<sub>*`y`*</sub>` `*`v`*`3`<sub>*`z`*</sub>
`    endloop`
`endfacet`

當中，每個*n*或*v*都是正負--"e"-正負-[冪數型式的](../Page/冪數.md "wikilink")[浮點數](https://zh.wikipedia.org/wiki/浮點數 "wikilink")，如"2.648000e-002"（注意：每個*v*都必須不是負數）。檔案以

`endsolid `*`name`*

來結束。格式結構暗示其他可能的存在（如，不只一個loop定義同一個小面()，或一個loop具有三個以上頂點）。然而在實踐中，所有小面都是簡單三角形。

除了數字或單詞內以外，檔案中任何地方都可使用(空格、tab、換列)。"facet"和"normal"以及"outer"和"loop"之間的空白是必要的。\[8\]

## 二進碼 STL

由於文字STL檔會非常大，因此有二進碼版的STL。二進碼STL檔有個80[字元的](https://zh.wikipedia.org/wiki/字元 "wikilink")[檔頭](https://zh.wikipedia.org/wiki/信頭 "wikilink")（內容通常都被忽略但絕不可用"solid"來開始！這樣會使不少軟體認為這是文字STL檔）。接著是一個4[字节](../Page/字节.md "wikilink")，它表示這檔案中的[三角形數](../Page/三角形.md "wikilink")。再來是描述每個三角形的資訊。之後就結束。

每個三角形以12個32位元浮點數來描述：3個描述法線，接著三頂點的X/Y/Z座標─正如文字STL一樣。之後是一個2[字节無號整數](../Page/字节.md "wikilink")(unsigned
short)，它代表「屬性字元數」─在標準格式中它該是0，因為多數軟體不明白其它事項。\[9\]

雖然文件內沒有說明，浮點數以[little-endian的](https://zh.wikipedia.org/wiki/位元組順序#小端序 "wikilink")[IEEE
754表示](../Page/IEEE_754.md "wikilink")。

`UINT8[80] – Header`
`UINT32 – Number of triangles`

` foreach triangle`
`REAL32[3] – Normal vector`
`REAL32[3] – Vertex 1`
`REAL32[3] – Vertex 2`
`REAL32[3] – Vertex 3`
`UINT16 – Attribute byte count`
`end`

## 二進碼STL的顏色

二進碼STL至少有兩種非標準方式來加上顏色資訊：

  - [VisCAM和](https://zh.wikipedia.org/wiki/VisCAM "wikilink")[SolidView軟體用每個三角形後的](https://zh.wikipedia.org/wiki/SolidView "wikilink")2個「屬性字元數」存放15位元[RGB色碼](https://zh.wikipedia.org/wiki/RGB "wikilink")：
      - 位元 0到 4是藍的強度(0\~31)。
      - 位元 5到 9是綠的強度(0\~31)。
      - 位元10到14是紅的強度(0\~31)。
      - 位元15是1表顏色有效；0表無效（同正常的STL檔）。

<!-- end list -->

  - [Materialise
    Magics軟體用開頭的](https://zh.wikipedia.org/wiki/Materialise_Magics "wikilink")80位元檔頭表示模型整體顏色。若有使用顏色，檔頭某處會是文字字串"COLOR="接著4[字节的](../Page/字节.md "wikilink")[RGBA](../Page/三原色光模式.md "wikilink")(透明度)，[值域為](../Page/值域.md "wikilink")0–255。這是整個模型的顏色，每個小面可以另外指定。這軟體還可以指定更詳細的表面特性，即。在"COLOR=RGBA"後可加上ASCII字串",MATERIAL="，接著3顏色(3×4位元)：

先是[漫反射的顏色](../Page/漫反射.md "wikilink")，第二個是顏色，第三是[環境光](https://zh.wikipedia.org/wiki/浓淡处理#环境光 "wikilink")。物質設置優於顏色。每個小面的顏色是用三角形後的2個「屬性字元數」以下列方式來存放：

  -   - 位元 0到 4是紅的強度(0\~31)。
      - 位元 5到 9是綠的強度(0\~31)。
      - 位元10到14是藍的強度(0\~31)。
      - 位元15是0表用小面顏色；1表用模型顏色。

上述兩種小面顏色資訊中，2位元裡的紅/綠/藍順序相反，因此，雖然這些格式容易相容，反序表示並非如此！更糟的是：通用的STL讀取器不能自動分別它們！也無法指定小面有透明度！因為沒有α值！雖然對目前的快速原型機而言，這不重要。

## 小面法線

文字(ASCII)和二進碼版的STL，**小面法線**必項是指向模型外部的[單位向量](https://zh.wikipedia.org/wiki/單位向量 "wikilink")。若設為(0,0,0)，多數軟體會自動以三角形三頂點的順序根據**右手定則**計算法線。一些STL讀取器（如：[Art
of
Illusion的STL外掛](https://zh.wikipedia.org/wiki/Art_of_Illusion "wikilink"))會檢查小面的法線與它們用右手定則算出來的相符。若不同，會警告使用者。有的軟體會完算用自己根據右手定則算的。雖然可以不使用右手定則來計算法線的情況罕見，為了完全相容，文件都應提供小面法線及正確指定頂點順序。一個出名的例外是[SolidWorks](../Page/SolidWorks.md "wikilink")，它用法線當[濃淡處理](https://zh.wikipedia.org/wiki/濃淡處理 "wikilink")。

## 歷史

立體光刻機是能用一系列切片來構建任何體積形狀的[3D列印機](https://zh.wikipedia.org/wiki/3D列印 "wikilink")。這些機器需要一系列用凝固材料填充在封閉的2D輪廓中，最後再與各層熔合在一起。對這樣的機器而言，自然的文件格式是一系列對應不同Z值的封閉的多邊形。然而，因為改變層的厚度可能會得到更快（雖然不太精確）的構建，若能以**可在必要水平切片**的**封閉[多面體](https://zh.wikipedia.org/wiki/多面體 "wikilink")**來定義模型，會更好。

STL檔案格式看似能用多邊形來定義多面體，但在實用上它只被用過三角形。這表示ASCII協定的語法是多餘的。

要能正確組成3D體，STL檔表示的表面必須是封閉同相連的,且每個邊都正好是二個三角形的一部份，且沒有交叉。
由於STL語法對此屬性不嚴緊，應用程式能忽視其封閉性。

作為切片的該軟件的封閉性僅事項只要三角形需要它以確保所得到的二維的多邊形是封閉的。對**切片三角形後須確保所得到的2D多邊形是封關閉**的軟體而言，封閉性才會重要。這類軟體有時會移動接近的頂點到同一位置，來清理小的差異。結果是不可預測的，但它往往足夠。

## 其它使用領域

STL檔案格式簡單且容易輸出。因此，許多[電腦輔助設計](https://zh.wikipedia.org/wiki/電腦輔助設計 "wikilink")(CAD)系統能輸出STL檔案格式。雖然輸出簡單產生，一些[聯結性資訊卻被丟棄](https://zh.wikipedia.org/wiki/聯結性資訊 "wikilink")！例如：A和B在CAD系統是相異、但座標恰好相同的兩點。STL只輸出點的座標，因此點A和B在STL就有同的表示。還存在其他的問題。

許多[電腦輔助製造](https://zh.wikipedia.org/wiki/電腦輔助製造 "wikilink")(CAM)系統必須是三角形化的模型。STL檔案格式不是記憶體和計算上最有效轉換資料的方法，但STL常被CAM系統用於輸入三角化的幾何。這格式隨手可得，所以CAM系統用它。為了使用資料，CAM系統可能要重建連接性。重建會導致誤差。

STL也能在CAD、CAM和計算環境（如：[Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink")）間交換資料。

## 支援STL的軟體

  - [Clara.io](https://zh.wikipedia.org/wiki/Clara.io "wikilink"),
    [線上免費STL檔案輸入](https://zh.wikipedia.org/wiki/線上 "wikilink")、編輯、輸出的3D編輯器。
  - [CloudCompare](https://zh.wikipedia.org/wiki/CloudCompare "wikilink"),
    處理STL檔的開源應用軟體。
  - [Maple
    (software)和](https://zh.wikipedia.org/wiki/Maple_\(software\) "wikilink")[Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink"),
    支援STL檔的技術計算系統。
  - [MeshLab](../Page/MeshLab.md "wikilink"),
    視覺化、處理、且轉換3D網模進/出STL的[免費](../Page/免費軟體.md "wikilink")、[開源且跨平台的應用軟體](https://zh.wikipedia.org/wiki/開源軟體 "wikilink")。
  - [FreeCAD](https://zh.wikipedia.org/wiki/FreeCAD "wikilink"),
    能輸入、輸出STL檔的CAD[開源軟體](https://zh.wikipedia.org/wiki/開源軟體 "wikilink")。
  - [OpenSCAD](https://zh.wikipedia.org/wiki/OpenSCAD "wikilink"),
    [構造實體幾何](https://zh.wikipedia.org/wiki/構造實體幾何 "wikilink")[建模且支援](https://zh.wikipedia.org/wiki/三維模型 "wikilink")[專門領域用語言](https://zh.wikipedia.org/wiki/專門領域用語言 "wikilink")，能產生及輸入STL檔。
  - [MountainsMap](https://zh.wikipedia.org/wiki/MountainsMap "wikilink"),
    能以STL輸出及細微3D表面的[微測繪學軟體](https://zh.wikipedia.org/wiki/測繪學 "wikilink")。

## 參見

  - (AMF), 一個自然支援顏色、多種物質和星座的較新標準。

  - [PLY](../Page/PLY.md "wikilink"), 一個比多數立體光刻規格提供更彈性的格式。

  - [Wavefront .obj文件](../Page/Wavefront_.obj文件.md "wikilink"),
    一個副檔名為*.obj*的3D幾何定義檔案格式。

  - [X3D](../Page/X3D.md "wikilink"), 免專利費的三維電腦圖形ISO標準。

## 參考資料

## 外部連結

  - [The StL Format](http://www.fabbers.com/tech/STL_Format):
    Fabbers的標準資料格式。
  - [File Extension STL](http://fileextension.info/file/stl):
    支援STL的軟體列表。

[分類:文件格式](https://zh.wikipedia.org/wiki/分類:文件格式 "wikilink")
[分類:3D列印](https://zh.wikipedia.org/wiki/分類:3D列印 "wikilink")
[分類:CAD文件格式](https://zh.wikipedia.org/wiki/分類:CAD文件格式 "wikilink")
[分類:三維計算機圖形學](https://zh.wikipedia.org/wiki/分類:三維計算機圖形學 "wikilink")
[分類:圖形文件格式](https://zh.wikipedia.org/wiki/分類:圖形文件格式 "wikilink")

[Category:電腦圖學](https://zh.wikipedia.org/wiki/Category:電腦圖學 "wikilink")

1.

2.

3.

4.  . 這格式有許多名字，如："Standard Triangle Language"、"STereolithography
    Language"和"Stereolithography Tesselation Language"。第55頁陳述：「立體光刻和3D
    Systems軟體公司的創立人說：『這副檔名是因為STereoLithography。』」

5.  第6章，快速原型格式(Rapid Prototyping
    Formats)。第237頁6.2節STL檔問題、6.4節STL檔修復：「STL
    (STeroLithography)檔，如事實上的標準，已被廣泛（即使不是全部）使用在快速原型系統。("The STL
    (STeroLithography) file, as the de facto standard, has been used in
    many, if not all, rapid prototyping systems.")」

6.

7.  Fabbers.com, The StL Format: Standard Data Format for Fabbers,
    reprinted from Marshall Burns, Automated Fabrication,
    <http://www.ennex.com/~fabbers/StL.asp>
    描述：「所代表的對象必須位於全正的[卦限](../Page/卦限.md "wikilink")。換言之，所有的頂點坐標必須是正數（非負且非零）。STL檔不含任何尺度信息；計量單位為任意的。(The
    object represented must be located in the all-positive octant. In
    other words, all vertex coordinates must be positive-definite
    (nonnegative and nonzero) numbers. The StL file does not contain any
    scale information; the coordinates are in arbitrary units.)

8.
9.