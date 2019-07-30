**Mali** 是一款由[ARM Holdings](https://zh.wikipedia.org/wiki/ARM_Holdings "wikilink")（ARM，安谋科技）研发设计的移动显示芯片组（[GPUs](https://zh.wikipedia.org/wiki/GPU "wikilink")）系列。该显示芯片组的电路设计和架构研发完全由ARM自主设计，ARM特别设立了[ARM Norway](https://zh.wikipedia.org/wiki/ARM_Norway "wikilink")（ARM挪威）显示处理事业部来负责研发设计ARM Mali显示芯片系列，该部门的前身是**Falanx**。

## Mali显示技术细节

和其他基于IP核心（IP cores）嵌入式技术的3D显示芯片一样，Mali显示芯片组没有提供特别用来驱动LCD显示器显示图像的[显示控制器](https://zh.wikipedia.org/wiki/显示控制器 "wikilink")（类似于[显卡](https://zh.wikipedia.org/wiki/显卡 "wikilink")），相反地，它是一个纯3D显示引擎，它将图像载入到缓存中，并且由专门负责图像显示处理的内置显示核心来显示这些图像。

其内置的那些不同渲染API，例如[OpenGL ES](../Page/OpenGL_ES.md "wikilink")、[OpenVG](../Page/OpenVG.md "wikilink")等等，都实现了[shader图像处理程序](https://zh.wikipedia.org/wiki/shader "wikilink")。ARM还提供了开发工具用来进行针对其显示芯片的处理，如**Mali GPU Shader Development Studio**和**Mali GPU User Interface Engine**。

## 型号

Mali显示芯片组改进自Falanx公司研发生产的显示技术芯片组，目前Mali显示芯片组有如下型号：

<table>
<thead>
<tr class="header">
<th><p>型号</p></th>
<th><p><a href="../Page/微架構.md" title="wikilink">微架构</a></p></th>
<th><p>发布日期</p></th>
<th><p>核心数</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/製程" title="wikilink">制程</a> (nm)</p></th>
<th><p>芯片面积(mm<sup>2</sup>)</p></th>
<th><p>时钟(<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></th>
<th><p><a href="../Page/CPU缓存.md" title="wikilink">二级缓存大小</a></p></th>
<th><p><a href="../Page/填充率.md" title="wikilink">填充率</a></p></th>
<th><p>总线带宽(<a href="../Page/字节.md" title="wikilink">字节</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/FLOPS" title="wikilink">GFLOPS</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/API" title="wikilink">API</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/乘积累加" title="wikilink">乘积累加</a></p></th>
<th><p>使用的芯片</p></th>
<th><p>/<a href="../Page/零复制.md" title="wikilink">零复制</a></p></th>
<th><p>用途</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>百万三角形/s</p></td>
<td><p>十亿<a href="../Page/像素.md" title="wikilink">像素</a>/s</p></td>
<td><p><a href="../Page/Vulkan_(API).md" title="wikilink">Vulkan</a></p></td>
<td><p><a href="../Page/OpenGL_ES.md" title="wikilink">OpenGL ES</a></p></td>
<td><p><a href="../Page/OpenVG.md" title="wikilink">OpenVG</a></p></td>
<td><p><a href="../Page/OpenCL.md" title="wikilink">OpenCL</a></p></td>
<td><p><a href="../Page/Direct3D.md" title="wikilink">Direct3D</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.ddi0421a/index.html">Mali-55</a></p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>1</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>rowspan=13 </p></td>
<td><p>1.1</p></td>
<td><p>1.0</p></td>
<td><p>rowspan=6 </p></td>
</tr>
<tr class="odd">
<td><p><a href="http://www.arm.com/products/multimedia/mali-graphics-hardware/mali-200.php?tab=Specifications">Mali-200</a></p></td>
<td><p>Utgard[1]</p></td>
<td><p>2007[2]</p></td>
<td><p>1</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>2.0</p></td>
<td><p>1.1</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://www.arm.com/products/multimedia/mali-graphics-hardware/mali-300.php?tab=Specifications">Mali-300</a></p></td>
<td><p>?</p></td>
<td><p>1</p></td>
<td><p>40<br />
28</p></td>
<td><p>?</p></td>
<td><p>500</p></td>
<td><p>8 KiB</p></td>
<td><p>55</p></td>
<td><p>0.5</p></td>
<td><p>?</p></td>
<td><p>5</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://www.arm.com/products/multimedia/mali-graphics-hardware/mali-400-mp.php?tab=Specifications">Mali-400 MP</a></p></td>
<td><p>2008</p></td>
<td><p>1-4</p></td>
<td><p>40<br />
28</p></td>
<td><p>?</p></td>
<td><p>500</p></td>
<td><p>256 KiB</p></td>
<td><p>55</p></td>
<td><p>0.5</p></td>
<td><p>?</p></td>
<td><p>5</p></td>
<td><p>Amlogic S805, Allwinner H3</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://www.arm.com/products/multimedia/mali-graphics-hardware/mali-450-mp.php">Mali-450 MP</a></p></td>
<td><p>2012</p></td>
<td><p>1-8</p></td>
<td><p>40<br />
28</p></td>
<td><p>?</p></td>
<td><p>650</p></td>
<td><p>512 KiB</p></td>
<td><p>142</p></td>
<td><p>2.6</p></td>
<td><p>?</p></td>
<td><p>14.6</p></td>
<td><p>Amlogic S905</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://www.arm.com/products/multimedia/mali-gpu/ultra-low-power/mali-470.php">Mali-470 MP</a></p></td>
<td><p>2015</p></td>
<td><p>1-4</p></td>
<td><p>40<br />
28</p></td>
<td><p>?</p></td>
<td><p>250 - 650</p></td>
<td><p>8–256 KiB</p></td>
<td><p>71</p></td>
<td><p>0.65</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>Allwinner H5</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://www.arm.com/products/multimedia/mali-graphics-plus-gpu-compute/mali-t604.php?tab=Specifications">Mali-T604</a>[3]</p></td>
<td><p>Midgard 1st gen</p></td>
<td><p>?</p></td>
<td><p>1-4</p></td>
<td><p>32<br />
28</p></td>
<td><p>?</p></td>
<td><p>533</p></td>
<td><p>32–256 KiB</p></td>
<td><p>90</p></td>
<td><p>0.533</p></td>
<td><p>?</p></td>
<td><p>17</p></td>
<td><p>3.1 + AEP[4]</p></td>
<td><p>Full Profile 1.1</p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a> 11, (<a href="../Page/Direct3D.md" title="wikilink">9_3</a>)</p></td>
<td><p>rowspan=15 </p></td>
</tr>
<tr class="odd">
<td><p><a href="http://www.arm.com/products/multimedia/mali-graphics-hardware/mali-t658.php?tab=Specifications">Mali-T658</a>[5]</p></td>
<td><p>?</p></td>
<td><p>1-8</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://www.arm.com/products/multimedia/mali-graphics-plus-gpu-compute/mali-t622.php">Mali-T622</a></p></td>
<td><p>Midgard 2nd gen</p></td>
<td><p>?</p></td>
<td><p>1-2</p></td>
<td><p>32<br />
28</p></td>
<td><p>?</p></td>
<td><p>533</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>8.5</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://www.arm.com/products/multimedia/mali-graphics-hardware/mali-t624.php">Mali-T624</a></p></td>
<td><p>Aug 2012</p></td>
<td><p>1-4</p></td>
<td><p>32<br />
28</p></td>
<td><p>?</p></td>
<td><p>533</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>17</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://www.arm.com/products/multimedia/mali-graphics-hardware/mali-t628.php">Mali-T628</a></p></td>
<td><p>Aug 2012</p></td>
<td><p>1-8</p></td>
<td><p>32<br />
28</p></td>
<td><p>?</p></td>
<td><p>533 / 695</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>17 / 23.7</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://www.arm.com/products/multimedia/mali-graphics-hardware/mali-t678.php">Mali-T678</a>[6]</p></td>
<td><p>Aug 2012</p></td>
<td><p>1-8</p></td>
<td><p>28</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://www.arm.com/products/multimedia/mali-mid-range-graphics/mali-t720.php">Mali-T720</a></p></td>
<td><p>Midgard 3rd gen</p></td>
<td><p>Oct 2013</p></td>
<td><p>1-8</p></td>
<td><p>28</p></td>
<td><p>?</p></td>
<td><p>450 / 600</p></td>
<td><p>32–256 KiB[7]</p></td>
<td><p>650</p></td>
<td><p>5.2</p></td>
<td><p>?</p></td>
<td><p>7.65 / 10.2</p></td>
<td><p>Exynos 7580, MT6735, MT6753</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://www.arm.com/products/multimedia/mali-high-end-graphics/mali-t760.php">Mali-T760</a></p></td>
<td><p>Oct 2013</p></td>
<td><p>1-16</p></td>
<td><p>28<br />
14</p></td>
<td><p>1.75 mm<sup>2</sup>(14nm)[8]</p></td>
<td><p>600</p></td>
<td><p>256–2048 KiB[9]</p></td>
<td><p>1300</p></td>
<td><p>10.4</p></td>
<td><p>?</p></td>
<td><p>20.4[10]</p></td>
<td><p>1.0[11]</p></td>
<td><p>3.2[12]</p></td>
<td><p>Full Profile 1.2</p></td>
<td><p><a href="../Page/Direct3D.md" title="wikilink">Direct3D</a> 11.1, (<a href="../Page/Direct3D.md" title="wikilink">11_1</a>)[13]</p></td>
<td><p>Exynos 7420, Exynos 5433, MT6752, MT6732</p></td>
</tr>
<tr class="even">
<td><p><a href="http://www.arm.com/products/multimedia/mali-cost-efficient-graphics/mali-T820.php">Mali-T820</a></p></td>
<td><p>Midgard 4th gen</p></td>
<td><p>Q4 2015</p></td>
<td><p>1-4</p></td>
<td><p>28</p></td>
<td><p>?</p></td>
<td><p>600</p></td>
<td><p>32–256 KiB[14]</p></td>
<td><p>400</p></td>
<td><p>2.6</p></td>
<td><p>?</p></td>
<td><p>10.2</p></td>
<td><p><a href="../Page/Direct3D.md" title="wikilink">Direct3D</a> 11.1, (<a href="../Page/Direct3D.md" title="wikilink">9_3</a>)</p></td>
<td><p>Amlogic S912</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://www.arm.com/products/multimedia/mali-cost-efficient-graphics/mali-t830.php">Mali-T830</a></p></td>
<td><p>28</p></td>
<td><p>?</p></td>
<td><p>600</p></td>
<td><p>32–256 KiB[15]</p></td>
<td><p>400</p></td>
<td><p>2.6</p></td>
<td><p>?</p></td>
<td><p>20.4</p></td>
<td><p>Exynos 7870</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://www.arm.com/products/multimedia/mali-performance-efficient-graphics/mali-t860.php">Mali-T860</a></p></td>
<td><p>1-16</p></td>
<td><p>28</p></td>
<td><p>?</p></td>
<td><p>700</p></td>
<td><p>256–2048 KiB[16]</p></td>
<td><p>1300</p></td>
<td><p>10.4</p></td>
<td><p>?</p></td>
<td><p>23.8</p></td>
<td><p><a href="../Page/Direct3D.md" title="wikilink">Direct3D</a> 11.2, (<a href="../Page/Direct3D.md" title="wikilink">11_1</a>)</p></td>
<td><p>Helio P10 (MT6755)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://www.arm.com/products/multimedia/mali-performance-efficient-graphics/mali-t880.php">Mali-T880</a></p></td>
<td><p>Q2 2016</p></td>
<td><p>1-16</p></td>
<td><p>16</p></td>
<td><p>?</p></td>
<td><p>700 / 850 / 900</p></td>
<td><p>256–2048 KiB[17]</p></td>
<td><p>1700</p></td>
<td><p>13.6</p></td>
<td><p>?</p></td>
<td><p>23.8 / 28.9 / 30.6</p></td>
<td><p><a href="../Page/Direct3D.md" title="wikilink">Direct3D</a> 11.2, (<a href="../Page/Direct3D.md" title="wikilink">11_1</a>)</p></td>
<td><p>Exynos 8890、Helio X20 (MT6797)、Kirin 950、Helio P20</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://www.arm.com/products/multimedia/mali-gpu/high-performance/mali-g71.php">Mali-G71</a></p></td>
<td><p>Bifrost</p></td>
<td><p>2016 Q4</p></td>
<td><p>1-32</p></td>
<td><p>16<br />
14<br />
10</p></td>
<td><p>?</p></td>
<td><p>850</p></td>
<td><p>256–2048 KiB</p></td>
<td><p>1850</p></td>
<td><p>27.2</p></td>
<td><p>?</p></td>
<td><p>18.56-28.9</p></td>
<td><p>Full Profile 2.0</p></td>
<td><p><a href="../Page/Direct3D.md" title="wikilink">Direct3D</a> 12.0, (<a href="../Page/Direct3D.md" title="wikilink">11_1</a>)</p></td>
<td><p>Kirin 960, Exynos7885, Exynos8895,Helio P23, Helio P30</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://developer.arm.com/products/graphics-and-multimedia/mali-gpus/mali-g72-gpu">Mali-G72</a>[18]</p></td>
<td><p>2017 Q2</p></td>
<td><p>1.36 mm <sup>2</sup> per shader core at 10 nm[19]</p></td>
<td><p>850</p></td>
<td><p>128–2048 KiB</p></td>
<td></td>
<td></td>
<td><p>30.54</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Direct3D_12" title="wikilink">12</a><br />
(<a href="https://zh.wikipedia.org/wiki/Direct3D_feature_level" title="wikilink">FL 11_1</a>)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/海思半導體#Kirin_970" title="wikilink">Kirin 970</a>、<a href="../Page/三星Exynos.md" title="wikilink">Exynos 9 9810</a>、Exynos 7 9610、<a href="../Page/聯發科技曦力.md" title="wikilink">Helio P60</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://developer.arm.com/products/graphics-and-multimedia/mali-gpus/mali-g76-gpu">Mali-G76</a></p></td>
<td><p>2018 Q2</p></td>
<td><p>4-20</p></td>
<td><p>7</p></td>
<td></td>
<td></td>
<td><p>512–4096 KiB</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>Kirin980、Exynos 9820</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://developer.arm.com/ip-products/graphics-and-multimedia/mali-gpus/mali-g77-gpu">Mali-G77</a></p></td>
<td><p>Valhall 1<sup>st</sup> gen</p></td>
<td><p>2019 Q2</p></td>
<td><p>7-16</p></td>
<td><p>7</p></td>
<td></td>
<td><p>850</p></td>
<td><p>512–4096 KiB</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## Lima FOSS 驱动

2012年1月21日，[Phoronix](../Page/Phoronix.md "wikilink")报道称Codethink最主要的开源显示技术开发商：[Luc Verhaegen已经开始尝试为Mali显示芯片组系列提供技术支持](https://zh.wikipedia.org/wiki/Luc_Verhaegen "wikilink")，特别是Mali 200 以及 Mali 400 型号。该项目称为**Lima**（利马）并且开始提供对[OpenGL ES](../Page/OpenGL_ES.md "wikilink") 2.0的全面支持。\[20\]

[FOSDEM已于](https://zh.wikipedia.org/wiki/FOSDEM "wikilink")2012年2月4日提供主要支持，\[21\]\[22\] 并且提供了 *[limadriver.org](http://limadriver.org/)* 网站用于展示新的研发进展。

2013年2月2的Verhaegen展示「[雷神之锤III竞技场](../Page/雷神之锤III竞技场.md "wikilink")」timedemo模式，于利马驱动上运行。\[23\]

## 参见

  - [PowerVR](../Page/PowerVR.md "wikilink") – [Imagination Technologies](../Page/Imagination_Technologies.md "wikilink") 研发的移动GPU，用于第三方授权。
  - [Adreno](../Page/Adreno.md "wikilink") – [Qualcomm](https://zh.wikipedia.org/wiki/Qualcomm "wikilink") 研发的移动GPU，用于第三方授权。
  - [Vivante](../Page/图芯技术.md "wikilink") – [图芯技术](../Page/图芯技术.md "wikilink") 研发的移动GPU，用于第三方授权。
  - [Tegra](https://zh.wikipedia.org/wiki/Tegra "wikilink") – [NVIDIA](https://zh.wikipedia.org/wiki/NVIDIA "wikilink") 研发的移动SoC，不向第三方授权。
  - [VideoCore](../Page/VideoCore.md "wikilink") – [Broadcom](https://zh.wikipedia.org/wiki/Broadcom "wikilink") 研发的移动GPU，允许第三方授权。
  - [Intel Atom](https://zh.wikipedia.org/wiki/Intel_Atom "wikilink") – [Intel](https://zh.wikipedia.org/wiki/Intel "wikilink") 计算机处理器产品，不向第三方授权。
  - [AMD APU](../Page/AMD加速处理器.md "wikilink") – [AMD](https://zh.wikipedia.org/wiki/AMD "wikilink") 计算机处理器产品，不向第三方授权。

## 参考

<references />

## 外部链接

  - [MALI graphics hardware](https://web.archive.org/web/20120424083955/http://www.arm.com/products/multimedia/mali-graphics-hardware/) at [ARM Holdings](https://zh.wikipedia.org/wiki/ARM_Holdings "wikilink") website
  - [Mali developer](http://www.malideveloper.com/) a developer site run by ARM
  - [Lima driver](http://limadriver.org)

[Category:ARM架构](https://zh.wikipedia.org/wiki/Category:ARM架构 "wikilink") [Category:图形处理器](https://zh.wikipedia.org/wiki/Category:图形处理器 "wikilink")

1.  [Mali Graphics Webpage; Arm Holdings.](http://www.arm.com/products/multimedia/mali-graphics-hardware/index.php)

2.  <http://www.anandtech.com/show/8234/arms-mali-midgard-architecture-explored/2>

3.  <http://www.khronos.org/assets/uploads/developers/library/2012-pan-pacific-road-show/OpenGL-and-OpenGL-ES-Taiwan_Feb-2012.pdf> Khronos Group OpenGL and OpenGL ES Taiwan Feb 2012

4.  Android Extension Pack depends on implementation of *GL_ANDROID_extension_pack_es31a* in the userspace driver. Supported as of r7p0

5.
6.  [AnandTech | ARM Announces 8-core 2nd Gen Mali-T600 GPUs](http://www.anandtech.com/show/6136/arm-announces-8core-2nd-gen-malit600-gpus)

7.  depending on number of GPU shader core groups

8.

9.  depending on number of shader core groups

10. <http://kyokojap.myweb.hinet.net/gpu_gflops/>

11.

12. Supported as of June 2016 with r12p0 userspace driver

13.

14.
15.
16.
17.
18.  Arm Mali-G72 High Performance GPU – Arm Developer|accessdate=2017-12-25|last=Ltd.|first=Arm|work=ARM Developer|language=en}}

19.

20. [Phoronix, Jan 27 2012: *Announcing The Lima Open-Source GPU Driver*](http://www.phoronix.com/scan.php?page=news_item&px=MTA0OTQ)

21. [Phoronix, Jan 21 2012: *An Open-Source, Reverse-Engineered Mali GPU Driver*](http://www.phoronix.com/scan.php?page=article&item=arm_mali_reverse)

22. [FOSDEM schedule, Jan 21 2012: *Liberating ARM's Mali GPU*](http://fosdem.org/2012/schedule/event/mali)

23. [Quake 3 Arena timedemo on top of the lima driver\!](http://libv.livejournal.com/23886.html)