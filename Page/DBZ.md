> 本文内容由[DBZ](https://zh.wikipedia.org/wiki/DBZ)转换而来。


[Sturmfront_auf_Doppler-Radar-Schirm.jpg](https://zh.wikipedia.org/wiki/File:Sturmfront_auf_Doppler-Radar-Schirm.jpg "fig:Sturmfront_auf_Doppler-Radar-Schirm.jpg") **dBZ**是一個與特定參數Z值來描述[雷達](https://zh.wikipedia.org/wiki/雷達 "wikilink")[反射率之](https://zh.wikipedia.org/wiki/反射率 "wikilink")[比例](../Page/比例.md "wikilink")的[單位](../Page/计量单位.md "wikilink")，與[分貝類似](https://zh.wikipedia.org/wiki/分貝 "wikilink")，為[對數](https://zh.wikipedia.org/wiki/對數 "wikilink")[無因次量](https://zh.wikipedia.org/wiki/無因次量 "wikilink")，主要用於描述雷達迴波的強度，尤其是[氣象雷達用於度量](https://zh.wikipedia.org/wiki/氣象雷達 "wikilink")[大氣中特定區域的](https://zh.wikipedia.org/wiki/大氣 "wikilink")[降水](../Page/降水.md "wikilink")粒子（[雨](../Page/雨.md "wikilink")、[雪](../Page/雪.md "wikilink")、[冰雹](../Page/冰雹.md "wikilink")等）的多寡\[1\]，一般為比較反射自遠方物體（在每立方公尺中的mm<sup>6</sup>量）的雷達訊號之等效反射率與直徑1[毫米](../Page/毫米.md "wikilink")雨滴的反射量\[2\]。由於單位體積的[降水](../Page/降水.md "wikilink")粒子數量與降水粒子直徑的六次方成比例，因此可以用來估計雨、雪、冰雹等的降水強度\[3\]。以其他的變數來分析雷達回波的訊號則可以確定降水的類型。

## 原理

[雲層的雷達](https://zh.wikipedia.org/wiki/雲 "wikilink")[反射率](https://zh.wikipedia.org/wiki/反射率 "wikilink")（**Z**）仰賴於反射物（[降水](../Page/降水.md "wikilink")粒子）的數量（**N**）及其大小（**D**），其包括了[雲滴](../Page/霧.md "wikilink")、[雨](../Page/雨.md "wikilink")、[雪](../Page/雪.md "wikilink")、[霰](../Page/霰.md "wikilink")以及[冰雹](../Page/冰雹.md "wikilink")等。可由下面積分式子表示\[4\]：

\[Z = \int_{0}^{Dmax}  N_0 e^{-\Lambda D} D^6dD\]

如雨滴的半徑約在1[毫米](../Page/毫米.md "wikilink")的尺度，則Z的單位十分特別mm<sup>6</sup>/m<sup>3</sup> （[μm](https://zh.wikipedia.org/wiki/μm "wikilink")<sup>3</sup>）。將Z與1毫米的雨滴在一立方公尺的範圍中的等量回波值（Z<sub>0</sub>）相除，會得到其比值，但由於極小的雨滴如[雲滴和極大的冰雹或](../Page/霧.md "wikilink")[冰晶](../Page/冰晶.md "wikilink")差異懸殊，因此再將值加以取對數，即得到[無因次量dBZ](https://zh.wikipedia.org/wiki/無因次量 "wikilink")：

\[dBZ \propto  10\, \log_{10} \frac {Z}{Z_0}\]

dBZ值也可以藉由馬歇爾-帕爾默公式（）換算為時雨量\[5\]：

\[\frac{\mathrm{mm}}{\mathrm{hr}} = \left ( \frac{10^{(dBZ/10)}}{200} \right )^{5 \over 8}\]

當dBZ值小於零時表示雖有[凝結](../Page/凝結.md "wikilink")形成降水粒子，但是幾乎不降水；20以下為起霧狀態，超過二十就是感受得到的小雨，如[毛毛雨](https://zh.wikipedia.org/wiki/毛毛雨 "wikilink")，30以下都是小雨，45以上為豪雨或雷雨等級\[6\]。若是降冰雹，則其值會在55dBZ以上。 [NOAA_Doppler_DBZ_scale.jpg](https://zh.wikipedia.org/wiki/File:NOAA_Doppler_DBZ_scale.jpg "fig:NOAA_Doppler_DBZ_scale.jpg")

| dBZ | 時雨量 (mm/h) | 時雨量 (in/hr) | 強度                                                             |
| --- | ---------- | ----------- | -------------------------------------------------------------- |
| 0   | 0.036      | \< 0.01     | 難以察覺                                                           |
| 5   | 0.07       |             |                                                                |
| 10  | 0.15       | \< 0.01     | 薄霧                                                             |
| 15  | 0.32       | 0.01        | [霧](../Page/霧.md "wikilink")                                   |
| 20  | 0.65       | 0.02        | 毛毛雨                                                            |
| 25  | 1.33       | 0.05        | 小雨                                                             |
| 30  | 2.73       | 0.10        | 小到中雨                                                           |
| 35  | 5.62       | 0.22        | 中雨                                                             |
| 40  | 11.53      | 0.45        | 中雨                                                             |
| 45  | 23.68      | 0.92        | 中到大雨                                                           |
| 50  | 48.62      | 1.8963      | 大雨\[7\]                                                        |
| 55  | 99.85      | 3.89        | [暴雨](../Page/暴雨.md "wikilink")/小[冰雹](../Page/冰雹.md "wikilink") |
| 60  | 205.05     | 7.9975      | 大暴雨/中等冰雹                                                       |
| 65  | 401.07     | 15.6        | 特大暴雨/大冰雹                                                       |
| 70  | 864.68     | 33.7        | 超大暴雨                                                           |
| 75  | 1775.65    | 69.252      |                                                                |

dBZ和瞬時雨量的換算

{{-}}

## 參考文獻

[Category:计量单位](https://zh.wikipedia.org/wiki/Category:计量单位 "wikilink") [Category:比率](https://zh.wikipedia.org/wiki/Category:比率 "wikilink") [Category:无量纲](https://zh.wikipedia.org/wiki/Category:无量纲 "wikilink") [Category:降水](https://zh.wikipedia.org/wiki/Category:降水 "wikilink")

1.
2.
3.
4.
5.
6.
7.