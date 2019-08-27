**NVIDIA GeForce RTX 20系列**，是由[NVIDIA開發的圖形處理器系列](../Page/英伟达.md "wikilink")。本系列於2018年8月20日的[Gamescom](../Page/Gamescom.md "wikilink")（科隆遊戲展）上發表，是[GeForce GTX 10系列的後續版本](../Page/NVIDIA_GeForce_10系列.md "wikilink")。\[1\]\[2\]\[3\]本系列首發產品是GeForce RTX 2080及2080Ti，2018年9月20日正式發售。\[4\]

## 架构特性

RTX 20系列基于图灵(Turing)微架构，具有实时光线跟踪功能。\[5\]通过使用RT核心（光線追踪運算核心）可以加速这一过程。这些核心能够高效处理四叉树和球形层次结构，并在碰撞模拟的过程中更快地为三角面组成的立体模型进行物体碰撞模拟。

RT核心的光线追踪功能在模拟反射，折射和阴影的操作上可以取代传统立方体贴图和深度贴图的光栅技术。从光线追踪运算得到的信息可以增强阴影使画面更加逼真，尤其是关于将发生于屏幕画面以外的动作通过阴影和光线反射渲染到画面之中。

张量運算核心（Tensor Core）进一步加速了光线追踪，并用于填充部分渲染图像中的空白，这种技术被称为「降噪」。张量核心原是為深度学习而設計的，例如学习如何提高图像的分辨率。但通常消费者的张量核心主要是执行一些已经完成的深度学习模型，这些模型是在超级计算机进行分析和解决的，超级计算机确定如何实现这些目标的方法，例如学习如何提高图像的分辨率，然后由消费者的张量核心实际使用这个方法，也就是使用超级计算机找到的方法来提高图像的分辨率。

因此，圖靈架構的光線追蹤特性，實際上是舊有光線追蹤技術與近年興起的人工智慧（AI）、深度學習結合的產物，先是利用光線追蹤專用的運算單元RT core生成圖像的關鍵要素，剩餘的非關鍵要素則是交由深度學習運算單元Tensor Core來補全，而圖像中的關鍵要素，也藉由Tensor Core執行相關的深度學習程式來決定。除此以外，Tensor Core還被用於執行消除混疊的深度學習程式（深度學習超級採樣，DLSS），來柔化畫面鋸齒邊緣。\[6\]

將[深度學習](https://zh.wikipedia.org/wiki/深度學習 "wikilink")、[光線追蹤](../Page/光線追蹤.md "wikilink")用於畫面運算雖然不是首個，NVIDIA早在基於[帕斯卡](https://zh.wikipedia.org/wiki/帕斯卡_\(微架构\) "wikilink")、[伏打圖形處理微架構的GeForce](../Page/伏打微架構.md "wikilink") GTX TITAN系列上有先行鋪路，光線追蹤更是早已有之的技術，只是當時裝置的效能僅能到作生成靜態畫面之用，而本代GeForce RTX系列則是首個在畫面處理中大量使用深度學習技術、引入與深度學習相結合的光線追蹤實時動態畫面技術的圖形處理器。不過它仍然保留了效能強勁、規格龐大的傳統光柵化渲染3D畫面所需的運算組件。\[7\]

## 细节

  - 采用[台积电](https://zh.wikipedia.org/wiki/台积电 "wikilink")12nm FFN工艺打造，由伏打微架構使用的12nm FFC工艺改进（但本質上依舊是[台積電](https://zh.wikipedia.org/wiki/台積電 "wikilink")16nm FF+工藝的延伸版本），性能是后者的1.1倍，功耗只有后者的70%，核心面积则可以缩小20%
  - 為容納數量龐大的運算單元，核心面积相比帕斯卡微架構的大幅增加，由GP102（GeForce GTX 1080Ti）的471mm<sup>2</sup>增加至TU102（GeForce RTX 2080Ti）的754mm<sup>2</sup>
  - [CUDA](../Page/CUDA.md "wikilink") 7.5
  - 采用全新的SM陣列设计 : TPC包含了两个SM单元(Pascal為1个)，SM單元重新分配為64个FP32、64个INT32、8个Tensor Core 、1个RT Core ，同时添加了独立的INT数据路径，支持FP32和INT32操作的并发执行。
  - 为共享缓存、一級缓存、纹理缓存引入了统一架构，一級缓存与共享缓存大小是灵活可变的，可以根据需要在64+32KB或者32+64KB之间变换，让一級缓存更充分利用资源，也减少一級缓存延迟，并提供比Pascal GPU中使用的一級缓存更高的带宽，同时二級缓存容量提升。
  - Tensor Core（張量核心） : 負責人工智慧、神經網絡運算，增加了新的INT8和INT4精度模式，FP16半精度也能够被完整支持通常会用到[矩阵](../Page/矩阵.md "wikilink")融合乘加(FMA)运算，新的INT8精度模式的工作速率是此速率的两倍，张量核心为矩阵运算提供了显着的加速，除了新的神经图形功能外，还用于深度学习训练和推理操作。
  - NGX (Neural Graphics Acceleration)框架 : 利用张量核心，在游戏中实现深度学习功能，GeForce Experience会自动匹配Turing显卡并且下载可用的NGX Core软件包，對應如DLSS、AI InPainting、AI Super Rez、AI Slow-Mo等功能。
  - DLSS (深度学习超级采样) : 抗锯齿技术，利用张量核心实现在较低的输入样本数下更快地渲染，具有与64×超级采样画面相同质量的细节，还可以避免TAA产生的运动模糊等问题，相比TAA等其它抗锯齿技术，渲染能力得到大幅提升。
  - AI InPainting : 算法利用大量真实世界图像的训练，可以补全图片中缺失的内容，也可以移除照片的噪点、失真部分以及增强照片的清晰度等功能。
  - AI Super Rez : 将原视频的分辨率清晰地放大2倍、4倍、8倍，图像更加锐利。
  - AI Slow-Mo : 将普通常见的30fps进行智能插帧计算，可以获得240/480fps的慢动作视频，而不需要专门高帧率摄像头机。
  - RT Core : 专门为光线追踪计算，是一条特异化的专用流水线，用于加速计算边界体积层次（BVH）遍历以及光线和三角求交（光线投射）。
  - [GDDR6](../Page/GDDR6.md "wikilink")顯示記憶體的支援
  - 附有影像串流壓縮技術（Display Stream Compression，DSC）1.2版的[DisplayPort 1.4a](../Page/DisplayPort.md "wikilink")
  - 功能集J[PureVideo的硬體加速視訊解碼](https://zh.wikipedia.org/wiki/Nvidia_PureVideo "wikilink")
  - [NVLink](../Page/NVLink.md "wikilink")連接器（與伏打微架構的不相容）
  - [VirtualLink](https://zh.wikipedia.org/wiki/VirtualLink "wikilink") [VR](https://zh.wikipedia.org/wiki/Virtual_reality "wikilink")
  - GPU Boost 4\[8\]

## 設計

RTX是GeForce 20系列引入的开发平台。RTX的光线追踪示范程序中使用了微软的DXR，OptiX和[Vulkan来进行光线追踪](../Page/Vulkan_\(API\).md "wikilink")。\[9\]

## 芯片规格

<table>
<thead>
<tr class="header">
<th><p>型号</p></th>
<th><p>推出年份</p></th>
<th><p>核心代号(s)</p></th>
<th><p>制程 (<a href="../Page/纳米.md" title="wikilink">纳米</a>)</p></th>
<th><p>晶体管数量 (十亿)</p></th>
<th><p>晶粒面积 (mm<sup>2</sup>)</p></th>
<th><p>总线 接口</p></th>
<th><p>核心配置</p></th>
<th><p>二级缓存(<a href="../Page/Mebibyte.md" title="wikilink">MB</a>)</p></th>
<th><p>时钟频率配置</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Fillrate" title="wikilink">填充率</a></p></th>
<th><p>显示存储器配置</p></th>
<th><p>运算性能 (<a href="https://zh.wikipedia.org/wiki/GFLOPS" title="wikilink">GFLOPS</a>)</p></th>
<th><p>光线追踪性能</p></th>
<th><p><a href="../Page/热设计功耗.md" title="wikilink">热设计功耗</a> (W)</p></th>
<th><p><a href="../Page/NVLink.md" title="wikilink">NVLink</a> 支持</p></th>
<th><p>发售 价格</p>
<p>(<a href="../Page/美元.md" title="wikilink">美金</a>)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>SPs:TMUs:ROPs</p></td>
<td><p>Tensor core</p></td>
<td><p>RT core</p></td>
<td><p>默认 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>加速 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>存储器 (<a href="https://zh.wikipedia.org/wiki/Transfer_(computing)" title="wikilink">MT/s</a>)</p></td>
<td><p>材质 (<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)</p></td>
<td><p>像素 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)</p></td>
<td><p>容量 (<a href="https://zh.wikipedia.org/wiki/GiB" title="wikilink">GiB</a>)</p></td>
<td><p>带宽 (<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p>总线 类型</p></td>
<td><p>总线 宽度</p>
<p>(<a href="../Page/位元.md" title="wikilink">比特</a>)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/單精度浮點數" title="wikilink">单精度浮点</a> (加速)</p></td>
<td><p><a href="../Page/雙精度浮點數.md" title="wikilink">双精度浮点</a>(加速)</p></td>
<td><p><a href="../Page/半精度浮点数.md" title="wikilink">半精度浮点</a>(TFLOPS)</p></td>
<td><p>Rays/s (Billions)</p></td>
<td><p>RTX-OPS/s (Trillions)</p></td>
</tr>
<tr class="even">
<td><p>GeForce RTX 2060[10]</p></td>
<td><p>2019年1月15日</p></td>
<td><p>TU106-200A-KA-A1</p></td>
<td><p>10</p></td>
<td><p>445</p></td>
<td><p>1920</p></td>
<td><p>120</p></td>
<td><p>48</p></td>
<td><p>30</p></td>
<td><p>240</p></td>
<td><p>30</p></td>
<td><p>3</p></td>
<td><p>1365</p></td>
<td><p>1680</p></td>
<td><p>14000</p></td>
<td><p>65.52</p></td>
<td><p>163.8</p></td>
</tr>
<tr class="odd">
<td><p>style="text-align:left; |GeForce RTX 2060 Super[11][12]</p></td>
<td><p>2019年7月9日</p></td>
<td><p>TU106-410-A1</p></td>
<td><p>2176</p></td>
<td><p>136</p></td>
<td><p>64</p></td>
<td><p>34</p></td>
<td><p>272</p></td>
<td><p>34</p></td>
<td><p>4</p></td>
<td><p>1407</p></td>
<td><p>1650</p></td>
<td><p>90.05</p></td>
<td><p>191.4</p></td>
<td><p>8</p></td>
<td><p>448</p></td>
<td><p>256</p></td>
</tr>
<tr class="even">
<td><p>GeForce RTX 2070[13]</p></td>
<td><p>2018年10月17日</p></td>
<td><p>TU106-400-A1</p></td>
<td><p>2304</p></td>
<td><p>144</p></td>
<td><p>36</p></td>
<td><p>288</p></td>
<td><p>36</p></td>
<td><p>1410</p></td>
<td><p>1620</p></td>
<td><p>90.24</p></td>
<td><p>203.04</p></td>
<td><p>6497 (7465)</p></td>
<td><p>203 (233)</p></td>
<td><p>12994 (14930)</p></td>
<td><p>45</p></td>
<td><p>59.7</p></td>
</tr>
<tr class="odd">
<td><p>TU106-410-A1/TU106-400A-A1</p></td>
<td><p>1620+</p></td>
<td><p>6497 (7465+)</p></td>
<td><p>203 (233+)</p></td>
<td><p>12994 (14930+)</p></td>
<td><p>$499+</p></td>
<td><p>$599</p></td>
<td></td>
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
<td><p>style="text-align:left; |GeForce RTX 2070 Super[14][15]</p></td>
<td><p>2019年7月9日</p></td>
<td><p>TU104-410-A1</p></td>
<td><p>12</p></td>
<td><p>545</p></td>
<td><p>2560</p></td>
<td><p>160</p></td>
<td><p>40</p></td>
<td><p>320</p></td>
<td><p>40</p></td>
<td><p>1605</p></td>
<td><p>1770</p></td>
<td><p>102.72</p></td>
<td><p>256.8</p></td>
<td><p>8218 (9062)</p></td>
<td><p>257 (283)</p></td>
<td><p>16435 (18125)</p></td>
</tr>
<tr class="odd">
<td><p>GeForce RTX 2080[16]</p></td>
<td><p>2018年9月20日</p></td>
<td><p>TU104-400-A1</p></td>
<td><p>2944</p></td>
<td><p>184</p></td>
<td><p>46</p></td>
<td><p>368</p></td>
<td><p>46</p></td>
<td><p>1515</p></td>
<td><p>1710</p></td>
<td><p>96.96</p></td>
<td><p>278.76</p></td>
<td><p>8920 (10068)</p></td>
<td><p>279 (315)</p></td>
<td><p>17840 (20137)</p></td>
<td><p>8</p></td>
<td><p>60</p></td>
</tr>
<tr class="even">
<td><p>TU104-410-A1/TU104-400A-A1</p></td>
<td><p>1710+</p></td>
<td><p>8920 (10068+)</p></td>
<td><p>279 (315+)</p></td>
<td><p>17840 (20137+)</p></td>
<td><p>$699+</p></td>
<td><p>$799</p></td>
<td></td>
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
<tr class="odd">
<td><p>style="text-align:left; |GeForce RTX 2080 Super[17][18]</p></td>
<td><p>2019年7月23日</p></td>
<td><p>TU104-450-A1</p></td>
<td><p>3072</p></td>
<td><p>192</p></td>
<td><p>48</p></td>
<td><p>384</p></td>
<td><p>48</p></td>
<td><p>1650</p></td>
<td><p>1815</p></td>
<td><p>15500</p></td>
<td><p>105.6</p></td>
<td><p>316.8</p></td>
<td><p>496</p></td>
<td><p>10138 (11151)</p></td>
<td><p>317 (349)</p></td>
<td><p>20275 (22303)</p></td>
</tr>
<tr class="even">
<td><p>GeForce RTX 2080 Ti[19]</p></td>
<td><p>2018年9月27日</p></td>
<td><p>TU102-300-K1-A1</p></td>
<td><p>12</p></td>
<td><p>754</p></td>
<td><p>4352</p></td>
<td><p>272</p></td>
<td><p>88</p></td>
<td><p>68</p></td>
<td><p>544</p></td>
<td><p>68</p></td>
<td><p>5.5</p></td>
<td><p>1350</p></td>
<td><p>1545</p></td>
<td><p>14000</p></td>
<td><p>118.8</p></td>
<td><p>367.2</p></td>
</tr>
<tr class="odd">
<td><p>TU102-300A-K1-A1</p></td>
<td><p>1545+</p></td>
<td><p>11750 (13448+)</p></td>
<td><p>367 (421+)</p></td>
<td><p>23500 (26896+)</p></td>
<td><p>$999+</p></td>
<td><p>$1,199</p></td>
<td></td>
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
<td><p>NVIDIA TITAN RTX[20]</p></td>
<td><p>2018年12月18日</p></td>
<td><p>TU102-400-A1</p></td>
<td><p>4608</p></td>
<td><p>288</p></td>
<td><p>96</p></td>
<td><p>72</p></td>
<td><p>576</p></td>
<td><p>72</p></td>
<td><p>6</p></td>
<td><p>1770</p></td>
<td><p>129.6</p></td>
<td><p>388.8</p></td>
<td><p>24</p></td>
<td><p>672</p></td>
<td><p>384</p></td>
<td><p>12442 (16312)</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
</tbody>
</table>

## 另见

  - [NVIDIA GeForce 16系列](../Page/NVIDIA_GeForce_16系列.md "wikilink")
  - [NVIDIA GeForce 10系列](../Page/NVIDIA_GeForce_10系列.md "wikilink")
  - [Nvidia Quadro](../Page/NVIDIA_Quadro.md "wikilink")
  - [Nvidia Tesla](https://zh.wikipedia.org/wiki/Nvidia_Tesla "wikilink")
  - [伏打微架構](../Page/伏打微架構.md "wikilink")

## 參見

## 註釋

## 扩展链接

  -
  - [GeForce RTX Founders Edition Graphics Cards: Cool and Quiet, and Factory Overclocked](https://www.nvidia.com/en-us/geforce/news/geforce-rtx-founders-graphics-card-breakdown/)

  - [GeForce RTX 2080 Ti](https://www.nvidia.com/zh-cn/geforce/graphics-cards/rtx-2080-ti/)

  - [GeForce RTX 2080](https://www.nvidia.com/zh-cn/geforce/graphics-cards/rtx-2080/)

  - [GeForce RTX 2070](https://www.nvidia.com/zh-cn/geforce/graphics-cards/rtx-2070/)

  - [Geforce RTX 2060](https://www.nvidia.com/zh-cn/geforce/graphics-cards/rtx-2060/)

  - [Nvidia Titan RTX](https://www.nvidia.com/en-us/titan/titan-rtx/)

  - [Nvidia Nsight](http://developer.nvidia.com/nvidia-nsight-visual-studio-edition)

  -
[Category:英伟达](https://zh.wikipedia.org/wiki/Category:英伟达 "wikilink") [Category:顯示卡](https://zh.wikipedia.org/wiki/Category:顯示卡 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.
14.
15.
16.
17.
18.
19.
20.