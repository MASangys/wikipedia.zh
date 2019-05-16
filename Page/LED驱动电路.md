[LEDVICurve.PNG](https://zh.wikipedia.org/wiki/File:LEDVICurve.PNG "fig:LEDVICurve.PNG")

在[電子學領域裡](https://zh.wikipedia.org/wiki/電子學 "wikilink")，**LED驱动电路**（**LED
circuit**，又譯**發光二極管電路**），為[发光二极管灯具的核心器件](https://zh.wikipedia.org/wiki/发光二极管 "wikilink")，是一個用來使[發光二極管](../Page/發光二極管.md "wikilink")（LED）發亮的[電路](https://zh.wikipedia.org/wiki/電路 "wikilink")。

随着全球倡导绿色照明以及节能的迫切需求。越来越多的照明产品进入到发光二极管光源的时代。而作为发光二极管灯具的核心器件，LED驱动芯片扮演着越来越重要的角色。

推動LED時，其最終目的都是要控制流經LED的[電流以達到或貼近原有設計要求的數值](https://zh.wikipedia.org/wiki/電流 "wikilink")，並使其穩定而不受或減少被[電源](https://zh.wikipedia.org/wiki/電源 "wikilink")[電壓](../Page/電壓.md "wikilink")、[溫度](https://zh.wikipedia.org/wiki/溫度 "wikilink")、[順向偏壓差異等因素影響](https://zh.wikipedia.org/wiki/順向偏壓 "wikilink")，從而得到所需[光度](../Page/光度.md "wikilink")、防止LED壽命減短或被損壞。

LED工作於[直流電](../Page/直流電.md "wikilink")，其順向偏壓與電流成指數關係，因此極細小的電壓變化也會使其電流、光度有很大變化，嚴重的更會因為功耗過高而永久損壞。

## 概述

目前发光二极管驱动芯片按类型可分为：恒压式驱动芯片、恒流式驱动芯片以及脉冲式驱动芯片。其中恒压式驱动芯片一般就是我们常见的DC/DC升压芯片居多。这种方案的优点是芯片成本便宜没有复杂的外围电路。但只能恒定电压驱动LED就会造成驱动输出时电路电流的不可控。无法保证LED亮度的一致性。

恒流式驱动芯片则解决了之前恒压式驱动的电流不可控问题。目前比较好的恒流芯片可以做到1%左右的恒流精度，而且有简易的外围控制接口可灵活设置所需输出的电流大小所以倍受欢迎。但是这类芯片价格比恒压芯片价格高许多且外围电路复杂。同时因为恒定输出电流所以整个芯片的在电池作为供电的时候放电会比较快。

目前脉冲式驱动芯片是以高频率的脉冲发生器输出接口向LED灯供电。因为是脉冲信号频率很高所以人眼根本无法感觉出LED的频闪，所以这个方式即符合了视觉需要又在一方面有效节约了电能输出。而且这类型芯片的工作频率一般可由外部接口控制。但是目前该类型芯片震荡频率一般在100KHz\~500KHz范围。所以目前的驱动能力仅仅适合小功率应用。但是相信在不久的将来会提升到大功率LED驱动的场合。

## 極性

[LED
極性\[1\]](https://zh.wikipedia.org/wiki/File:+-_of_LED.svg "fig:LED 極性")
由於LED工作於直流電，連接線路時必須確保[極性方向正確才能正常工作](https://zh.wikipedia.org/wiki/極性 "wikilink")。與[二極管一樣](../Page/二極管.md "wikilink")，LED的接腳分[正極](https://zh.wikipedia.org/wiki/正極 "wikilink")（陽極、+）及[負極](https://zh.wikipedia.org/wiki/負極 "wikilink")（陰極、-），電流必须由正極流向負極，LED才能[發光](https://zh.wikipedia.org/wiki/發光 "wikilink")。

LED接腳的極性一般可以由其[封裝上看出](https://zh.wikipedia.org/wiki/封裝 "wikilink")，但不同封裝其標示方式也不同。除封裝外，也有其他途徑得知LED的極性，以下列出常見的標示方法：

<table>
<tbody>
<tr class="odd">
<td><p>rowspan=1 colspan=2 align="center|<strong>端子名稱:</strong></p></td>
<td><p><strong>陽極</strong></p></td>
<td><p><strong>陰極</strong></p></td>
</tr>
<tr class="even">
<td><p>rowspan=1 colspan=2 align="center|極性:</p></td>
<td><p>正</p></td>
<td><p>負</p></td>
</tr>
<tr class="odd">
<td><p>rowspan=1 colspan=2 align="center|符號:</p></td>
<td><p>+</p></td>
<td><p>−</p></td>
</tr>
<tr class="even">
<td><p>插入式封裝<br />
（<a href="../Page/通孔插装技术.md" title="wikilink">thru-hole</a>）</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>接腳長度</p></td>
<td><p>長</p></td>
<td><p>短</p></td>
</tr>
<tr class="even">
<td><p>內部接點外觀<br />
（部份廠商不依規范，不可盡信）</p></td>
<td><p>小</p></td>
<td><p>大而平</p></td>
</tr>
<tr class="odd">
<td><p>外殼邊緣形狀</p></td>
<td><p>圓</p></td>
<td><p>平</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/PCB" title="wikilink">PCB焊盤形狀</a></p></td>
<td><p>圓</p></td>
<td><p>方</p></td>
</tr>
<tr class="odd">
<td><p>PCB上的焊盤編號</p></td>
<td><p>2</p></td>
<td><p>1</p></td>
</tr>
<tr class="even">
<td><p>貼片封裝<br />
（<a href="https://zh.wikipedia.org/wiki/SMD" title="wikilink">SMD</a>）</p></td>
<td><p>封裝上的記號</p></td>
<td><p>無</p></td>
</tr>
<tr class="odd">
<td><p>PCB上的焊盤編號</p></td>
<td><p>2</p></td>
<td><p>1</p></td>
</tr>
</tbody>
</table>


另外也可以由以下方法找出：

  - 由[生產商資料中找出](https://zh.wikipedia.org/wiki/生產商 "wikilink")。
  - 用[萬用錶測試](https://zh.wikipedia.org/wiki/萬用錶 "wikilink")。模擬式萬用錶可以用[電阻擋測試](https://zh.wikipedia.org/wiki/電阻 "wikilink")（注意模擬式萬用錶測試針的正負極是倒轉的的）；數字式萬用錶大多有測試二極管的功能，但兩者能測的最高偏壓都有限制，模擬式萬用錶受內部電池所限，數字式萬用錶則因廠方設計而異。
  - 低壓恆流源也是理想的測試工具。例如用固定電壓電源串連一個電阻。

## 電阻推動

[LEDCircuit.PNG](https://zh.wikipedia.org/wiki/File:LEDCircuit.PNG "fig:LEDCircuit.PNG")
[LEDx2Circuit.PNG](https://zh.wikipedia.org/wiki/File:LEDx2Circuit.PNG "fig:LEDx2Circuit.PNG")
[LEDx4Circuit.PNG](https://zh.wikipedia.org/wiki/File:LEDx4Circuit.PNG "fig:LEDx4Circuit.PNG")
要推動LED就要控制流過LED的電流，基本推動方法就是將LED跟電阻串聯，以電阻限制電流在一定的範圍內。這個方法好處是簡單、成本低，但缺點是不少[能量在電阻轉化為](../Page/能量.md "wikilink")[熱能而浪費掉](https://zh.wikipedia.org/wiki/熱能 "wikilink")，而且LED的光度也隨著溫度、電壓、LED生產時的特性差異而有比較大的變化。

以電阻控制LED電流時，其電阻計算方法如下：

\[I_R={V_s-V_f \over R}\] 由於LED與電阻串聯，流經電阻之電流=流經LED之電流，因此

\[I_D={V_s-V_f \over R}\]

而需電阻值為：

\[R={V_s-V_f \over I_D}\]

當中

\[I_R\] 為流經電阻的電流，

\[I_D\] 為流經LED的電流，

\[V_s\] 為電源電原，

\[V_f\] 為LED的順向偏壓。

當多於一枚LED時，最好使用[串聯接法](https://zh.wikipedia.org/wiki/串聯 "wikilink")，這可使不同的LED都有相同的電流，總順向偏壓在串聯時就等於各LED順向偏壓的總和。LED順向偏壓的總和越接近電源電壓，電流就越不穩定。如果LED的數目多至其所需總順向偏壓接近或高於電源電壓，那就需用多個限流電阻分別對個別LED串作電流控制。

把LED[並聯非不可行](https://zh.wikipedia.org/wiki/並聯 "wikilink")，一般都盡量避免，因為生產過程做成的特性差異會使每枚LED的順向偏壓有輕微的分別，但並聯時各LED的順向偏壓一樣，流經各LED的電流就會有差異而導致光度、壽命不一致，所以需要把LED作特性配對才能保持光度接近，對零件供應、成本等造成壓力。

## 以半導體構成的恆流源推動LED

[半導體可以構成相當穩定的恆流源](https://zh.wikipedia.org/wiki/半導體 "wikilink")，較以電阻控制電流穩定得多。一枚或多枚[晶體管也可以構成簡單的恆流源](https://zh.wikipedia.org/wiki/晶體管 "wikilink")，晶體管構成的恆流源簡單、成本低，使用[運算放大器可以有更精確的電流控制](https://zh.wikipedia.org/wiki/運算放大器 "wikilink")，但線路較複雜，而且需要另加一個[參考電壓源](https://zh.wikipedia.org/wiki/參考電壓源 "wikilink")，成本大很多。這些線路的電流控制已相當精確，特別是使用運算放大器的線路，但功耗大、效率低的問題仍然是無法解決，對於大功率LED並不合適。最主要的原因是由於以線性方式控制電流，功耗消耗在電流控制元件內。

有些[集成電路專為推動LED而設計](https://zh.wikipedia.org/wiki/集成電路 "wikilink")，其檢測點做成的電壓降可以低至\~0.2V的級數，這些集成電路多數都以[開關式電源轉換](https://zh.wikipedia.org/wiki/開關式電源 "wikilink")\]以控制LED電流恆定，開關式轉換配合mV級的檢測點電壓降使整體功耗十分低，但也有集成電路採線性電路控制LED的電流，例如[安森美半導體有集成電路設計用於單一枚](https://zh.wikipedia.org/wiki/安森美半導體 "wikilink")[鋰離子電池下推動白色光LED](https://zh.wikipedia.org/wiki/鋰離子電池 "wikilink")，由於採用線性電路，因功耗問題，輸出電流不能太大。

## 光度控制

要改變LED的光度有兩種方式：直接改變流過LED的電流，或以快速開關LED以達至改變LED的平均功耗。

要設定LED光度，最直接的方法就是設定LED的電流，LED光度與電流並不成線性關係，要知道什麼的電流值才可以達到預期的光度，可以參考生產商資料提供有關電流與光度關係的資料，又或以可變電流源推動LED下找出合適電流值。
但LED光度與電流並不成線性關係，若在使用中須要調變光度，以線性電路產生所需控制訊號的改變較難達至預期相對應的光度變化。

[PWM_duty_cycle_with_label.gif](https://zh.wikipedia.org/wiki/File:PWM_duty_cycle_with_label.gif "fig:PWM_duty_cycle_with_label.gif")
另一改變LED光度的方法是快速開關LED，以[脈衝寬度調製](https://zh.wikipedia.org/wiki/脈衝寬度調製 "wikilink")（Pulse
width modulation -
PWM），在每個重複的開關週期內，改變導通與關閉的時間比例（也即是[占空比](../Page/占空比.md "wikilink")），改變流經LED的平均電流（平均功耗），從而控制LED的光度，由於LED導通時工作在較大電流，偏壓比連續導通高，因此消耗在控制元件上的功耗較少，效率略高。只要閃爍頻率高於人眼的[視覺暫留](https://zh.wikipedia.org/wiki/視覺暫留 "wikilink")，LED看起來就象連續發光一樣。而只要改變占空比，LED的光度就能在使用中調變。

在白色LED使用脈衝寬度調製控制LED光度有另一好處，白色LED的色溫隨電流強弱而轉變，在脈衝寬度調製控制下，導通電流在不同光度下都不變，因此能在不同光度保持色溫不變。

## led 供電方式

一般LED為直流供電(具極性)，但在於一般家用、商用LED電路為多種零組件組成(積體電路)，一最常見的LED燈管和LED探照燈都使用交流電，普通燈管T5
T8 皆可改裝(拆除啟動器安定器)相對應電路達到其效果。

但是這種燈管或是燈具本身並無極性之分，亦也沒有單邊、雙邊供電的問題(參照電力系統單雙邊供電\[2\])，燈管雙邊接點也不會影響其雙邊單邊供電的意義

## 参考文献

[Category:電路分析](https://zh.wikipedia.org/wiki/Category:電路分析 "wikilink")
[Category:发光二极管](https://zh.wikipedia.org/wiki/Category:发光二极管 "wikilink")
[Category:光电子学](https://zh.wikipedia.org/wiki/Category:光电子学 "wikilink")

1.
2.