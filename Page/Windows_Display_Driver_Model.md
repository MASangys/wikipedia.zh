**Windows Display Driver
Model**（），是[微軟新一代的圖形驅動程式模型](https://zh.wikipedia.org/wiki/微軟 "wikilink")。

WDDM是改良舊有的[Windows
XP上的](../Page/Windows_XP.md "wikilink")[XPDM架構](https://zh.wikipedia.org/wiki/XPDM "wikilink")，XPDM是使用2D
的[GDI](https://zh.wikipedia.org/wiki/GDI "wikilink")（Graphics Device
Interface）或
[GDI+](../Page/GDI+.md "wikilink")。與XPDM相比，WDDM是3D加速桌面，最早適用於[Windows
Vista之上](../Page/Windows_Vista.md "wikilink")\[1\] 。[Windows
7支援](https://zh.wikipedia.org/wiki/Windows_7 "wikilink") WDDM 1.1。

## 功能

WDDM 使用户能够同时运行多个 GPU 密集型应用程序。

一個[Direct3D的圖形表面](../Page/Direct3D.md "wikilink")（surface）的內存區域，包含紋理網格（textured
meshes）用於呈現2D或3D場景。WDDM允許不同的行程（process）共享整個Direct3D表面\[2\]。在WDDM推出之前，進程之間共享紋理是困難的，因為這將需要複製的數據，從顯存到系統內存，然後返回到視頻內存的新設備。

一旦某個WDDM驅動程式故障時，圖形堆疊（stack）將重新啟動驅動程式。圖形硬件故障時也會被攔截，必要時驅動程式將被重新設定。

WDDM還允許圖形硬件重置或拔出不正確的重新啟動。

## 限制

新的驅動程序模型要求有圖形硬件支持Shader Model
2.0。根據微軟2009年的調查，大約只有1-2％的硬件使用的XPDM，其餘已具備WDDM的能力。

WDDM
1.0版不支持多個驅動器在多適配器，多顯示器設置。如果一個多監控系統有多個圖形適配器供電的顯示器，無論是適配器必須使用相同的WDDM驅動程序。WDDM
1.1沒有這種限制。

## 版本歷史

### WDDM 1.0

在[Windows Vista引入了WDDM](../Page/Windows_Vista.md "wikilink")
1.0作為新的顯示驅動程序架構，旨在更好的執行並支援包括[HDCP在內的新技術](../Page/HDCP.md "wikilink")。

### WDDM 1.1

[Windows 7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink") 支援了 WDDM
1.1，最早在 [WinHEC](../Page/WinHEC.md "wikilink") 2008發布此一訊息。新功能有：\[3\]

  - [DXGI](https://zh.wikipedia.org/wiki/DXGI "wikilink") 1.1，可用GDI 支援硬體
    [2D](https://zh.wikipedia.org/wiki/2D電腦圖形 "wikilink") 加速\[4\]（無
    GDI+）以及
    [Direct2D](../Page/Direct2D.md "wikilink")/[DirectWrite](https://zh.wikipedia.org/wiki/DirectWrite "wikilink")
      - [BitBlt](https://zh.wikipedia.org/wiki/:en:Bit_blit "wikilink")、StretchBlt、TransparentBlt
      - [AlphaBlend](https://zh.wikipedia.org/wiki/:en:alpha_blending "wikilink")、ColorFill
      - [ClearType](../Page/ClearType.md "wikilink") 字型支援
  - [Direct3D 11](https://zh.wikipedia.org/wiki/Direct3D_11 "wikilink")
    裝置驅動介面
    ([DDI](https://zh.wikipedia.org/wiki/:en:Device_driver "wikilink"))
  - [DXVA-HD](https://zh.wikipedia.org/wiki/:en:DirectX_Video_Acceleration "wikilink")
    DDI \[5\]
  - [Hardware video
    overlay](https://zh.wikipedia.org/wiki/Hardware_overlay "wikilink")
    DDI \[6\]
  - 可選用 [AES 128](../Page/高级加密标准.md "wikilink") 加密
  - 可選用加密後的影像壓縮
  - 支援 multiple drivers 在於一個 multi-adapter 以及 multi-monitor 的設定之上\[7\]
    \[8\]

[DXGI](https://zh.wikipedia.org/wiki/DXGI "wikilink")
1.1、[Direct3D](../Page/Direct3D.md "wikilink")
11、[Direct2D和](../Page/Direct2D.md "wikilink")[DirectWrite也將提供與Windows](https://zh.wikipedia.org/wiki/DirectWrite "wikilink")
Vista平臺更新。GDI / GDI+ 在Vista將繼續依靠軟件渲染。

WDDM 1.1向後兼容WDDM 1.0規範，1.0和1.1的驅動程序可直接用於Windows Vista。

### WDDM 1.2

Windows 8 includes WDDM 1.2\[9\]\[10\] and DXGI 1.2.\[11\]\[12\] New
features were first previewed at the
[Build](https://zh.wikipedia.org/wiki/Build_\(developer_conference\) "wikilink")
2011 conference and include performance improvements as well as support
for [stereoscopic
3D](https://zh.wikipedia.org/wiki/stereoscopy "wikilink") rendering and
video playback.

Other major features include [preemptive
multitasking](https://zh.wikipedia.org/wiki/preemptive_multitasking "wikilink")
of the GPU with finer
[granularity](https://zh.wikipedia.org/wiki/granularity#Computing "wikilink")
(DMA buffer, primitive, triangle, pixel, or instruction-level),\[13\]
reduced memory footprint, improved resource sharing, and faster timeout
detection and recovery. 16-bit color surface formats (565, 5551, 4444)
are mandatory in Windows 8, and Direct3D 11 Video supports YUV
[4:4:4/4:2:2/4:2:0/4:1:1](https://zh.wikipedia.org/wiki/chroma_subsampling "wikilink")
video formats with 8, 10, and 16-bit precision, as well as 4 and 8-bit
palettized formats.\[14\]

WDDM 1.2 supports display-only and render-only WDDM drivers, such as
*Microsoft Basic Display Driver*\[15\] and
[WARP](https://zh.wikipedia.org/wiki/Windows_Advanced_Rasterization_Platform "wikilink")-based
*Microsoft Basic Render Driver* which replaced kernel-mode
[VGA](https://zh.wikipedia.org/wiki/VGA "wikilink") driver.

WDDM 1.0/1.1 only allows rudimentary task scheduling using "batch queue"
granularity; improvements to multitasking, as well as fast context
switching and support for [virtual
memory](https://zh.wikipedia.org/wiki/virtual_memory "wikilink"), were
initially expected in versions tentatively named WDDM 2.0 and WDDM 2.1,
which were announced at [WinHEC](../Page/WinHEC.md "wikilink")
2006.\[16\]\[17\]\[18\]

### WDDM 1.3

[Windows 8.1](../Page/Windows_8.1.md "wikilink") includes WDDM 1.3\[19\]
and DXGI 1.3.\[20\] New additions include the ability to trim DXGI
adapter memory usage, multi-plane overlays, overlapping swap chains and
swap chain scaling, select backbuffer subregion for swap chain and
lower-latency swap chain presentation. Driver feature additions include
wireless displays ([Miracast](../Page/Miracast.md "wikilink")),
[YUV](../Page/YUV.md "wikilink") format ranges, cross-adapter resources
and GPU engine enumeration capabilities.

### WDDM 2.0

2006年又有WDDM 2.0的消息，WDDM2.0版能夠解決GPU多工處理問題，但需要新一代GPU硬體支援才可以完成。
2014年，微軟於Build 2014
開發者大會公佈下一代[DirectX](../Page/DirectX.md "wikilink")
API Direct X 12。與此同時DirectX 12需要建基於WDDM 2.0上，Direct X 12及WDDM 2.0
將內建於[Windows
10內](https://zh.wikipedia.org/wiki/Windows_10 "wikilink")\[21\]
DirectX 12將廢除自動資源管理和任務管線管理，允許開發人員可低階控制顯示卡的記憶體和渲染狀態。WDDM 2.0 降低支援虛擬記憶體尋扯的
GPU
於核心模式的驅動程式工作量。\[22\]並且使用者模式的驅動程式可並列執行多執行緒，從而降低CPU使用率。\[23\]\[24\]\[25\]

### WDDM 2.1

[Windows
10周年更新中包含WDDM](https://zh.wikipedia.org/wiki/Windows_10 "wikilink")
2.1，它支援[Shader
Model](https://zh.wikipedia.org/wiki/Shader_Model "wikilink") 6.0
(mandatory for [feature
levels](https://zh.wikipedia.org/wiki/Direct3D_feature_level "wikilink")
12_0 and 12_1),\[26\] 和DXGI 1.5它支援
[HDR10](../Page/高动态范围成像.md "wikilink") - a 10-bit high
dynamic range, wide gamut format\[27\] defined by ITU-T [Rec.
2100](https://zh.wikipedia.org/wiki/Rec._2100 "wikilink")/[Rec.2020](https://zh.wikipedia.org/wiki/Rec.2020 "wikilink")
- and variable refresh rates.\[28\]

### WDDM 2.2

Windows 10 創作者更新中包含WDDM 2.2，它是為了[Windows
Holographic平臺上](https://zh.wikipedia.org/wiki/Windows_Holographic "wikilink")[VR](../Page/虚拟现实.md "wikilink")、[AR及](../Page/擴增實境.md "wikilink")[MR的](https://zh.wikipedia.org/wiki/混合现实 "wikilink")[立體渲染和DXGI](../Page/3D眼鏡.md "wikilink")
1.6\[29\]而打造。

### WDDM 2.3

在Windows 10
[秋季創作者更新中包含WDDM](https://zh.wikipedia.org/wiki/秋季創作者更新 "wikilink")
2.3。

### 預覽版本

給[Oculus Rift](../Page/Oculus_Rift.md "wikilink")
頭戴式顯示器的軟體開發者套件中包含在Windows 10上DXGI
2的預覽版本。

## 注釋

[Category:驅動程序](https://zh.wikipedia.org/wiki/Category:驅動程序 "wikilink")

1.  [Windows Vista Display Driver
    Model](https://msdn.microsoft.com/en-us/library/aa480220.aspx)

2.  [Cross Process Resource
    Sharing](https://msdn.microsoft.com/en-us/library/dd327290.aspx)

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

15. <https://msdn.microsoft.com/en-us/library/windows/hardware/dn653353(v=vs.85>).aspx

16.

17.

18.

19.

20.

21.

22. <https://msdn.microsoft.com/en-us/library/windows/hardware/dn932171(v=vs.85>).aspx

23. <https://channel9.msdn.com/Events/Build/2014/3-564> Max McMullen.
    Direct3D 12 API Preview. Build 2014, session 3-564

24.

25.

26. <https://msdn.microsoft.com/en-us/library/mt733232(v=vs.85>).aspx

27. <https://msdn.microsoft.com/en-us/library/mt742103(v=vs.85>).aspx

28. <https://msdn.microsoft.com/en-us/library/mt742104(v=vs.85>).aspx

29. <https://channel9.msdn.com/Events/WinHEC/WinHEC-December-2016/PC-Gaming>