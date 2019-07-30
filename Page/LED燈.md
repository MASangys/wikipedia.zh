[LED_bulbs.jpg](https://zh.wikipedia.org/wiki/File:LED_bulbs.jpg "fig:LED_bulbs.jpg") **LED燈**（）是指利用[發光二極管](../Page/發光二極管.md "wikilink")（LED）作為[光源的燈具](https://zh.wikipedia.org/wiki/光源 "wikilink")，一般使用半导体LED制成。LED灯的寿命和[发光效率可达白炽灯的几倍](https://zh.wikipedia.org/wiki/发光效率 "wikilink")，和[一体式荧光灯相比也高出不少](https://zh.wikipedia.org/wiki/一体式荧光灯 "wikilink")，\[1\]\[2\]\[3\]其中Cree等厂家更是号称能达到300[流明](../Page/流明.md "wikilink")/[瓦特](../Page/瓦特.md "wikilink")的效率。\[4\]

單顆發光二極管的[光度比傳統白炽灯和省電燈泡低很多](../Page/光通量.md "wikilink")，所以一個燈泡通常會包含多顆發光二極管。近年，二極管技術提高，高功率、高光度的發光二極管陸續上市，使得這類燈泡漸有取代其他傳統光源之勢。已有廠商推出單顆設計的照明用高功率LED晶片，只需100瓦的電力，就能發出7,527[流明](../Page/流明.md "wikilink")的光度。\[5\]。除了用於專為LED所設計的燈具外，LED也可在加裝轉換電路與相關的穩定裝置後，製成與其他光源兼容的燈泡，安裝於傳統光源的燈具中。

由於二極管是使用[直流電](../Page/直流電.md "wikilink")（DC）驅動，所以LED燈泡內通常設有電路，以將日常使用的[交流電](../Page/交流電.md "wikilink")（AC）轉為直流電，以供電給泡內的LED。此外，高溫會保護LED，故LED燈泡一般會配以[加熱片等加熱配件](https://zh.wikipedia.org/wiki/加熱片 "wikilink")。LED燈泡[壽命長](../Page/寿命.md "wikilink")、能源效益高，主要缺點在於初期的[購置成本比](https://zh.wikipedia.org/wiki/購置成本 "wikilink")[螢光燈管等傳統照明光源高](https://zh.wikipedia.org/wiki/光管 "wikilink")。

## 歷史

## 技術簡介

[LED_T-bar_ceiling_light.JPG](https://zh.wikipedia.org/wiki/File:LED_T-bar_ceiling_light.JPG "fig:LED_T-bar_ceiling_light.JPG")天花板\]\] 一般照明會使用白光，由不同[波長的光所組成](../Page/波长.md "wikilink")。但LED只能發出波長相距很少的光，故帶有顏色。不同的LED，其[半導體材料的](https://zh.wikipedia.org/wiki/半導體 "wikilink")[能隙](../Page/能隙.md "wikilink")不同，故發出不同顏色的光。要製造白光LED，有兩個方法：將紅、綠和藍三色的LED混合，或者用[磷](../Page/磷.md "wikilink")來轉變光的顏色。

第一種方法（RGB-LEDs）用多顆LED，每顆發出不同波長的光，LED間波長相距很少，所以形成了一條白[光譜](https://zh.wikipedia.org/wiki/光譜 "wikilink")。其優點是每顆LED的光度可獨立調較，造出不同顏色，但製作成本很高。

第二種方法（螢光粉轉換白光發光二極體，phosphor converted LEDs, pcLEDs），利用短波長LED（通常是藍或紫外光），磷會吸收部分藍光，發出一個闊光譜的白光。這個原理跟[螢光燈](../Page/螢光燈.md "wikilink")利用磷發出白光相似。這個方法成本較低，[演色性指數](../Page/演色性指數.md "wikilink")（Color Rendering Index, [CRI](../Page/演色性指數.md "wikilink")）高，但不能隨意改變其發光特性，而且會減低效能。這種燈具價錢低且表現中等，這種技術今常用於一般照明。

### 驅動電路

LED是一個低電壓的半導體產品，過高的電壓會導致損壞，不能直接由標準的交流電驅動，需要額外電路來控制電壓和電流供應。這個電路包括一連串的[二極管](../Page/二極管.md "wikilink")和[電阻](https://zh.wikipedia.org/wiki/電阻 "wikilink")，以控制電壓的極性和限制電流。

但這種方法會使多餘的電壓轉化為熱而流失。將多顆LED串聯可以減少[電壓](../Page/電壓.md "wikilink")損失，但一顆LED[故障則整串不會發光](../Page/故障分析.md "wikilink")。幾串的LED會並聯使用，使其更加可靠。現實中，三串或以上的LED會[並聯使用](../Page/並聯電路.md "wikilink")。

用於居家和辦公場所的照明時，一顆燈內會多顆LED，以解決單顆LED光度不足的問題。如果使用顏色混合的方法，會造成顏色分佈不均。因為調較出來的白光LED的顏色平衡並非最佳。而且，不同種類LED的[老化](../Page/老化.md "wikilink")速度均會不同，亦會導致不平均的顏色輸出。一顆燈泡裡通常包括一組LED、驅動的電子電路、一塊散熱片和光學零件（如玻璃）。

#### 基本電路

一般照明LED燈，會包含多顆LED，並以以下三種基本接法連接起來。

  - 串聯
    數顆LED[串聯起來](../Page/串聯電路.md "wikilink")，只有一個電阻限制電流。一顆LED開路故障時，整個電路就變成斷路，整串不能發光；短路故障時，其他LED的電流電壓均會增加。
  - 并联
    數顆LED並聯起來，每顆LED都需要一個電阻限制電流。每一顆LED均是獨立驅動。開路故障時，其他LED能正常發光；短路故障時，整個電路變成短路，不會發光。
  - 混合
    混合了串聯和並聯的方法，由一個串聯電路，包含了數個並聯的部分。短路故障時，即使有一顆LED發生故障，其他LED依然會維持發光；開路故障時，除了故障的並聯部分外會維持發光。

雖然上述的電路能在某些LED故障時發光，但由於故障時其他LED，均會超過額定的電流電額，會減低壽命，故最好遇到故障時整個組件換掉。

<File:LED> connections series.png|串聯 <File:LED> connections parallel.png|並聯 <File:LED> connections mixed.png|混合

#### 現實電路

#### 額定正電壓

物理條件：Ta＝25℃ If＝20mA\[6\]\[7\]。

  - 紅色LED：Vf:2.1 - 2.6V
  - 綠色LED：Vf:3.3 - 3.9V
  - 藍色LED：Vf:3.2 - 4.0V
  - 白色LED：Vf:3.1 - 4.0V

#### 電磁兼容性

### 省電

LED燈比一般家用的鎢絲燈省電高60%。

## 應用

一般和特殊照明均可使用LED燈。傳統的顏色光燈通常是在發出白光的燈上，加上濾鏡，隔走其他顏色所造成，導致能源效益低下。但LED可以發出單色光，不用濾鏡。

與螢光燈相比，LED燈不含汞、即開即亮、常開常關無損壽命，及較難打破，均比[螢光燈](../Page/螢光燈.md "wikilink")優勝。\[8\]

白光LED燈壽命長、相對用電少。LED體積小，設計燈具時不但更有彈性，而且用較小的反射鏡和透鏡，就能輕而易舉地把光分佈平均\[9\]，甚至不會減低能源效益。

LED燈沒有玻璃管，內部零件裝嵌穩妥，不易受震盪和撞擊影響。有些驅動電路的設計，可使LED燈調節光暗，而且所需電流沒有下限，也能維持燈的運作，故可調節的範圍很大。

顏色混合LED可以利用轉變不同顏色的光度比例，故可隨意調校出多種顏色，用來製造各種顏色的燈。\[10\]和其他的照明技術相比，LED的光照射角度一般較小。這種特性有好有壞，視乎需要而定。當光需要散開時，則需另外加設散光器，或用多顆LED覆蓋不同方位。

## 植物用燈

2010年，LED燈成為了園藝界和農業的熱門話題。[美國太空總署率先在太空使用LED燈栽種](https://zh.wikipedia.org/wiki/美國太空總署 "wikilink")，其後家用和商業的室內園藝也跟隨。\[11\]這些栽種專用燈經特別設計，其光波剛好是[葉綠素吸收的波長](https://zh.wikipedia.org/wiki/葉綠素 "wikilink")，促進生長之餘，亦減少植物不吸收的光波而造成的浪費。在可見光譜中，光合作用只需紅藍兩色，所以這些燈的設計都有這兩種顏色。\[12\]比起同類產品，這些LED燈能提供同樣光度、不需鎮流器、而且發熱比[氣體放電燈少得多](https://zh.wikipedia.org/wiki/氣體放電燈 "wikilink")\[13\]，用於室內栽種十分適合。發熱少能減少[蒸散作用](https://zh.wikipedia.org/wiki/蒸散作用 "wikilink")，從而減少灌溉次數。\[14\]

## 家用LED燈

### 大小與接口

### LED燈泡

很多LED燈均可取代螺旋式熱熾燈或省電燈泡，由5-40瓦特，低功率的熱熾燈，至60瓦特（只需約7瓦特電力）。截至2010年，有些燈甚至能取代更高功率的燈泡，例如一顆13瓦特的燈泡就與100瓦特熱熾燈的光度相約。（一般的熱熾燈光效標準，約為14至17流明/瓦特，視乎其大小和電壓而定。根據歐盟標準，一顆與60瓦特熱熾燈等效的「節能燈泡」，最少要能輸出806流明。）\[15\])

多數的LED燈泡都是設計成不可調暗的，但亦有些能配合調光器操作，而且光照角度較窄。由2010年起，這些燈泡開始由30至50美元的價錢下跌。LED燈泡比[省電燈泡更省電](https://zh.wikipedia.org/wiki/省電燈泡 "wikilink")\[16\]，若散熱合宜，壽命長達30000小時。熱熾燈一般都只有1000小時壽命，省電燈泡亦只有大約8000小時。\[17\]故LED燈泡能使用大約25至30年，而且光度的隨年月衰減很少。[能源之星標準訂明燈泡使用](https://zh.wikipedia.org/wiki/能源之星 "wikilink")6000小時後，光度衰減應在10%之內，最差不可超過15%。\[18\]不像螢光燈，LED燈泡都是無汞的。LED燈泡亦有不同顏色選擇。售價雖然較高，但電力和維護費用較低，可互相抵消。\[19\]

### LED燈管

將LED封裝成傳統螢光燈管型式的LED燈管近幾年也慢慢開始普及。

與傳統燈具相比，LED燈具不需要起動器與安定器，能源效率較高。

## 特殊用途

[New_torch_bulb.jpg](https://zh.wikipedia.org/wiki/File:New_torch_bulb.jpg "fig:New_torch_bulb.jpg") 白光LED燈泡具高效能，在低功耗的市場（如手電筒、太陽能花園燈和行人路燈、自行車燈等）有領導地位。單色LED燈常用來造交通燈和節日燈飾。

2010年代起，汽車與鐵路車輛的燈具也逐漸使用LED燈，一些高價車款的[頭燈也逐漸以LED燈取代傳統鹵素燈以及](https://zh.wikipedia.org/wiki/頭燈 "wikilink")[高強度氣體放電燈](../Page/高強度氣體放電燈.md "wikilink")（HID燈）。

### 先驅

## 技術比較

### 能源之星

## 研發

### 美國能源部

### 美國國家標準和科技機構

### 其他組織

## 侷限

  - 散熱需求高

<!-- end list -->

  -
    在散熱不良的情況下，LED的壽命會大幅減少。

<!-- end list -->

  - 高初期成本

<!-- end list -->

  -
    LED價格高，雖然說長期成本可能較低，但是較高的初期成本降低了LED的普及率。

<!-- end list -->

  - [演色性有待加強](https://zh.wikipedia.org/wiki/演色性 "wikilink")

<!-- end list -->

  -
    螢光燈無法完全取代[白熾燈](../Page/白熾燈.md "wikilink")的重要原因就是因為螢光燈[演色性不佳](https://zh.wikipedia.org/wiki/演色性 "wikilink")（白熾燈是連續而且平滑的[光譜](https://zh.wikipedia.org/wiki/光譜 "wikilink")，[演色性指數](../Page/演色性指數.md "wikilink")（Color Rendering Index, [CRI](../Page/演色性指數.md "wikilink")）接近100，這樣的光線也有較健康護眼的特色；其他人工光源多屬[發射光譜](../Page/發射光譜.md "wikilink")，很難取代白熾燈及[陽光](https://zh.wikipedia.org/wiki/陽光 "wikilink")）。目前中低階LED的演色性甚至還低於螢光燈。大致上需要用波長組合的方式來模擬。

<!-- end list -->

  - 無法融雪

<!-- end list -->

  -
    LED燈的發熱低於多數傳統戶外光源，在下雪、凍雨及冰霰的情況下反而會造成安全問題。

<!-- end list -->

  - 效率仍待加強

<!-- end list -->

  -
    LED在低光度下效率極佳，但是當功率提高，效率就沒那麼好，尤其是中低階的大功率LED照明，效率還是比不上T5燈管。

<!-- end list -->

  - 生產誤差大

<!-- end list -->

  -
    同一批生產的LED，每顆LED之間的特性（亮度、顏色、偏壓…等）也有相當大的差異，必須花費相當成本分出各種 LED。

<!-- end list -->

  - 光害問題

<!-- end list -->

  -
    2017年，[臺灣](../Page/臺灣.md "wikilink")[雲林縣道路兩旁的LED路燈](https://zh.wikipedia.org/wiki/雲林縣 "wikilink")，因照明過亮、時間過長，衍生[光害](../Page/光害.md "wikilink")危機，令作物誤將冬季以為夏季，以至於[稻子不結穗](https://zh.wikipedia.org/wiki/稻子 "wikilink")、[包心白菜不會包](https://zh.wikipedia.org/wiki/包心白菜 "wikilink")、[玉米](../Page/玉米.md "wikilink")又高又粗但不結果、[菠菜](../Page/菠菜.md "wikilink")莖只抽高、不長葉子\[20\]。

<!-- end list -->

  - 混亂生理時鐘

<!-- end list -->

  -
    LED街燈的色溫高（甚至是白色）、演色性較低，高色溫代表包含藍光比例越高，而非低色溫的低演色光線則藍光比例更高；反觀傳統街燈的演色性雖差，卻只是黯淡的黃光、可以說不含藍光。高色溫的藍光及白光會讓人腦誤以為現在是白天，LED街燈效率雖然高，但白光LED街燈的流行不只會改變了夜景、也提高了健康風險；若使用低色溫、高演色性的LED街燈，對生理時鐘的影響就較低。

## 標準

### 台灣

  - CNS 14115 - 安定器內藏式發光二極體燈泡(一般照明用)—安全性要求
  - CNS 15436 - 安定器內藏式發光二極體燈泡(一般照明用)—安全性要求
  - CNS 15592 - 光源及光源系統之光生物安全性
  - CNS 15630 - 一般照明用安定器內藏式LED燈泡(供應電壓大於50V)—性能要求
  - CNS 15663 - 電機電子類設備降低限用化學物質含量指引

## 參見

  - [色溫](https://zh.wikipedia.org/wiki/色溫 "wikilink")
  - [LED](https://zh.wikipedia.org/wiki/LED "wikilink")
  - [勒克斯](https://zh.wikipedia.org/wiki/勒克斯 "wikilink")
  - [街燈](../Page/街燈.md "wikilink")

## 參考資料

## 延伸閱讀

  - [Light Emitting Diodes, Second edition](http://books.google.com/books?id=0H4bWIpaXb0C&printsec=frontcover) by E. F. Schubert ([Cambridge University Press](https://zh.wikipedia.org/wiki/Cambridge_University_Press "wikilink"), 2006) ISBN 0-521-86538-7

## 外部連結

  - [e-lumen.eu](https://web.archive.org/web/20141227220442/http://ec.europa.eu/energy/lumen/index_en.htm) – a website from the European Commission about the second generation of energy-saving lightbulbs
  - [Notes on LEDs](http://www.gizmology.net/LEDs.htm), gizmology.net
  - [LED Wall Washer Lights](https://web.archive.org/web/20150502060437/http://www.wispuled.com/index.html), wispuled.com
  - U. S. Department of Energy, [Using Light Emitting Diodes](https://web.archive.org/web/20101230025217/http://www1.eere.energy.gov/buildings/ssl/using_leds.html)
  - U. S. Department of Energy, [Solid-State Lighting GATEWAY Demonstration Results](https://web.archive.org/web/20100609023159/http://www1.eere.energy.gov/buildings/ssl/gatewaydemos_results.html)
  - [Detailed spectra plots, of hundreds of LEDs etc](https://web.archive.org/web/20100204075651/http://ledmuseum.home.att.net/spectra.htm), ledmuseum.home.att.net
  - [Efficient LED lighting in conjunction with low-voltage domestic solar PV and mains](http://www.earth.org.uk/LED-lighting.html), earth.org.uk
  - ["Fans of L.E.D.'s Say This Bulb's Time Has Come"](http://www.nytimes.com/2008/07/28/technology/28led.html) [New York Times](https://zh.wikipedia.org/wiki/New_York_Times "wikilink"), July 28, 2008

[Category:電光源](https://zh.wikipedia.org/wiki/Category:電光源 "wikilink") [Category:半导体元件](https://zh.wikipedia.org/wiki/Category:半导体元件 "wikilink") [Category:节能照明](https://zh.wikipedia.org/wiki/Category:节能照明 "wikilink") [Category:发光二极管](https://zh.wikipedia.org/wiki/Category:发光二极管 "wikilink")

1.

2.

3.

4.

5.  myledlightingguide.com, "Specifications of LED high bay lights," [1](http://www.myledlightingguide.com/LED_High_Bay_Light_100W-details.aspx), Updated September 2010

6.  LED照明推進協議会『LED照明ハンドブック』日刊工業新聞社2006年7月1日初版1刷発行ISBN 4274500926

7.  谷腰欣司著『発光ダイオードの本』日刊工業新聞社2008年1月28日初版1刷発行ISBN 9784526059902

8.  Consumersearch.com, " Light Bulbs: Full Report," [LED light bulb](http://www.consumersearch.com/light-bulbs/led-light-bulbs), Updated June 2009

9.

10.

11.

12.
13.

14.
15. Sarah Lonsdale, "[Green property: energy-efficient bulbs](http://www.telegraph.co.uk/property/greenproperty/7873021/Green-property-energy-efficient-bulbs.html)," *Telegraph,* July 7, 2010

16. Elisabeth Rosenthal and Felicity Barringer, "[Green Promise Seen in Switch to LED Lighting](http://www.nytimes.com/2009/05/30/science/earth/30degrees.html?ref=lightemitting_diodes)," *New York Times*, May 29, 2009

17. Justin Maeers, [LED misrepresentations](http://www.modbs.co.uk/news/fullstory.php/aid/7779/LED_misrepresentations.html), May 2010

18.

19.

20. [雲林LED太亮變光害 蔬菜亂長](http://www.chinatimes.com/newspapers/20170102000256-260107)