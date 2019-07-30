**Direct3D**（簡稱：**D3D**）是[微軟公司在](https://zh.wikipedia.org/wiki/微軟 "wikilink")[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[作業系統上所開發的一套](https://zh.wikipedia.org/wiki/作業系統 "wikilink")3D繪圖[編程介面](https://zh.wikipedia.org/wiki/編程介面 "wikilink")，是[DirectX](../Page/DirectX.md "wikilink")的一部份，目前廣為各家[顯示卡所支援](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")。與[OpenGL](../Page/OpenGL.md "wikilink")同為電腦繪圖軟體和電腦[遊戲最常使用的兩套繪圖編程介面之一](https://zh.wikipedia.org/wiki/遊戲 "wikilink")。

1995年2月，微软收购了英国的Rendermorphics公司，將RealityLab 2.0技术發展成Direct3D标准，並整合到[Microsoft Windows中](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，Direct3D在DirectX 3.0開始出現。後來在[DirectX](../Page/DirectX.md "wikilink") 8.0發表時與[DirectDraw編程介面合併並改名為](https://zh.wikipedia.org/wiki/DirectDraw "wikilink")[DirectX Graphics](../Page/DirectX_Graphics.md "wikilink")。

## 架構

[D3D_Abs.svg](https://zh.wikipedia.org/wiki/File:D3D_Abs.svg "fig:D3D_Abs.svg") Direct3D與Windows GDI是同层级组件。Direct3D裝置有二種不同的操作模式：windowed和exclusive。在windowed模式下，必須使用back buffer。在Exclusive模式下，Direct3D直接呼叫顯示卡驅動程式，而不通过GDI。

Direct3D的抽象概念包括：devices, swap chains和resources。

有4種device type，D3DDEVTYPE定义了设备类型。

  - [HAL](https://zh.wikipedia.org/wiki/硬件抽象层 "wikilink")（hardware abstraction layer）：使硬體加速。
  - reference：應用程序請求一個reference設備。
  - null reference：當系統沒有裝SDK，但是應用程序請求一個reference設備的時候，它就返回一個null reference。
  - 可插拔的軟件（Pluggable software）；設備通過RegisterDevice設備方法提供。

[D3DDevice.svg](https://zh.wikipedia.org/wiki/File:D3DDevice.svg "fig:D3DDevice.svg") 每一個裝置至少要有一個swap chain.一個swap chain可用來產生一個或多個back buffer surfaces。渲染目标（render target）也是back buffer surface。back buffer是屬於渲染（render）的部份。所有的back buffer都是合理的render target，但是並非所有render target都是back buffer。surface是一种资源，包含一个矩形集合的像素数据，如color, alpha, depth/stencil。

资源有4個属性：

  - Type：资源的类型，如顶点缓冲区（vexert buffer），或一个渲染目标（render target）。
  - Usage：资源的用途，如纹理（texture）或渲染目标，是一系統的旗標所組成，每個旗標佔1 bits。
  - Format：資料的格式，如一个二维表面的像素格式。例如，D3DFMT_R8G8B8的值是一個24 bits的顏色深度（colour depth，8 bits是紅色，8 bits綠色以及8 bits是藍色）。
  - Pool<ref>{{

cite web

`|url         = `<http://www.toymaker.info/Games/html/d3d_resources.html#MemoryPool>
`|title       = Direct3D Resources - Memory pool`
`|deadurl     = yes`
`|archiveurl  = `<https://web.archive.org/web/20080509150221/http://www.toymaker.info/Games/html/d3d_resources.html#MemoryPool>
`|archivedate = 2008-05-09`

}}</ref>：资源所分配的内部記憶體空间类型。

## 管道

[D3D_Pipeline.svg](https://zh.wikipedia.org/wiki/File:D3D_Pipeline.svg "fig:D3D_Pipeline.svg") Direct3D 10 API定義了vertices（顶点）, textures（纹理）, buffers（缓冲区），以及state群組轉換到螢幕上的流程。這樣的流程被描述成rendering pipeline（渲染流水线），其中有著許多不同的阶段. Direct3D 10 渲染流水线的各阶段包括：\[1\] are:\[2\]

1.  输入组装（**Input Assembler**）：從程式裡讀取顶点，並將程式提供的数据装進流水线。
2.  [頂點著色引擎](https://zh.wikipedia.org/wiki/頂點著色引擎 "wikilink")（[Vertex Shader](https://zh.wikipedia.org/wiki/Vertex_Shader "wikilink")）: 每次处理一个顶点，比如变换、贴图、光照。
3.  [幾何著色器](https://zh.wikipedia.org/wiki/幾何著色器 "wikilink")（[Geometry Shader](../Page/着色器.md "wikilink")）: Shader Model 4.0引進了[幾何著色器](https://zh.wikipedia.org/wiki/幾何著色器 "wikilink")，使用Shader资源来处理點、線、面的几何坐标变换，一次最多处理六个点，快速地将模型类似的顶点结合起来进行运算。此一过程无需CPU參與。
4.  流输出（**Stream Output**）：将Vertex Shader和Pixel Shader处理完成的数据输出给使用者。
5.  光栅化（**Rasterizer**）: 把算完的顶点转成像素，再將像素（pixels）輸出給pixel shader. 这里亦可執行其他工作，像是切割非視覺性的像素，或者对顶点进行插值以得到像素数据。
6.  [像素著色引擎](../Page/像素著色引擎.md "wikilink")（[Pixel Shader](https://zh.wikipedia.org/wiki/Pixel_Shader "wikilink")）：決定最后要往渲染目标（render targe）写入的像素顏色，同时也可以计算一个准备写到深度缓冲区的深度值。
7.  输出混合（**Output Merger**）：接收來自于[pixel shader的slice](../Page/着色器.md "wikilink")，進行傳統的Stencil測試和Depth測試，整併各種不同的輸出資料，用以建立最後之結果。

## 顯示模式

Direct3D有兩種display modes:

  - 全螢幕模式（Fullscreen mode）:全螢幕是指畫面全部被Direct3D所佔據，不會再顯示其他的視窗畫面。目前市面上發展的遊戲軟體多採用此模式。
  - 視窗模式（Windowed mode）:視窗模式是指可以有多個視窗同時出現在螢幕上。

## 歷史

1992年，[Servan Keondjian開創](https://zh.wikipedia.org/wiki/Servan_Keondjian "wikilink")[RenderMorphics公司](https://zh.wikipedia.org/wiki/RenderMorphics "wikilink")，成立了一個Reality Lab實驗室，專事3D圖形技術及API技術研究。有兩種版本的API被釋出。1995年2月微軟買下RenderMorphics，由Keondjian在[Windows 95上開發](../Page/Windows_95.md "wikilink")3D圖形引擎，主持Direct3D项目的开发。

Window 95推出之時，微軟一口氣發表了**DirectX 1.0**、**DirectX 2.0**和**DirectX 3.0**。DirectX 1.0推出時，只包括[DirectDraw](https://zh.wikipedia.org/wiki/DirectDraw "wikilink")、[DirectPlay](../Page/DirectPlay.md "wikilink")、[DirectInput](https://zh.wikipedia.org/wiki/DirectInput "wikilink")、[DirectSound](../Page/DirectSound.md "wikilink")四部分，DirectX 2.0內附了Direct 3D，但功能有限，無法與[OpenGL](../Page/OpenGL.md "wikilink")、[3dfx等API函数相提並論](https://zh.wikipedia.org/wiki/3dfx "wikilink")。1996年9月发布的Direct 3.0被认为是DirectX的第一套完整版本。不久，DirectX 3.0更新3.0a、3.0b，版号从4.04.00.0068增加到了“4.04.00.0069”，僅是附加了一个被称为Direct3D的组件，這正是Keondjian的傑作。當時的Direct3D有两種模式，一是Retain模式，另一個是Immediate模式，皆以COM建構而成。1996年Westwood工作室发布以DirectX開發的即时战略游戏《红色警戒》，大賣1200万套。

**DirectX 4.0**並未推出就有**DirectX 5.0**。1997年6月推出DirectX 5.0，加入DrawPrimitive API，加入了对MMX的支援，不久微軟又推出支援D3D加速卡的DirectX 5.0a版和5.1版、5.2版。

**Direct3D 6.0**，1998年秋微軟推出，引進多重貼圖（multitxture）以及stencil buffer

**Direct3D 7.0**引進硬體座標轉換以及光影計算（Hardware Transform and Lighting），並支援.dds檔\[3\]。

**Direct3D 8.0**引進了可編程管道（Programable Function Pipeline）的概念，Direct3D在8.0版以前只能工作在固定管道（Fixed Function Pipe-line）的模式下。2001年微軟正式發表的Direct3D 8.0支援处理顶点的Vertex Shader，以及处理像素的Pixel Shader。使Direct3D的技術正式超越勁敵[OpenGL](../Page/OpenGL.md "wikilink")。DirectX 8中的著色器是用低階著色器語言（Low Level Shading Language）編寫的。

**Direct3D 9.0**使用[HLSL](https://zh.wikipedia.org/wiki/HLSL "wikilink")（全稱High Level Shading Language）编写Vertex Shader和Pixel Shader<ref>{{ cite web

`|url=`<http://www.microsoft.com/presspass/press/2003/Jan03/01-22DirectXHLSLPR.mspx>` `
`|title=HLSL in Direct3D 9.0 `
`|deadurl=yes `
`|archiveurl=`<https://web.archive.org/web/20100827232558/http://www.microsoft.com/presspass/press/2003/Jan03/01-22DirectXHLSLPR.mspx>` `
`|archivedate=2010-08-27 `

}}</ref>，有助於著色器的編寫和所產生程式碼的效率，並且大幅地縮短設計時間。Windows Vista推出DirectX的兩種新類型：Direct3D 9Ex和Direct3D 10。Direct3D 9Ex是DirectX 9的擴充版，除了Direct3D 9外，還增加了Windows Vista driver部分新功能的應用程序而設計。Direct3D 9Ex和Direct3D 10均构建於[WDDM之上](https://zh.wikipedia.org/wiki/WDDM "wikilink")。只有透過WDDM才能在Vista上使用Direct3D。

## Direct3D 10

Direct3D 10相對Direct3D 9大量代碼重新編寫，Direct3D 10著眼在高階繪圖程式，所有render都要寫shader。但本質上功能並沒有太大改變，只能算是對舊XP時代的問題重新更正，提供更高的可程式化及資源運用，以適合Vista使用。

Direct3D 10新特色：

  - 全新的graphics pipeline：
      - fixed pipeline皆改成programmable的shader，
      - 增加geometry shader、stream out，
      - culling、cliping、blending等stage合為output merger stage
  - 新的resource type: constant buffer、texture array。Texture array可容許最多512個Texture。
  - resource引進view的概念
  - guaranteed feature set
  - [GPU呈現多工](https://zh.wikipedia.org/wiki/GPU "wikilink")（multitasking）

## Direct3D 10.1

Direct3D 10.1是Direct3D 10.0的小型的更新，2007年8月微軟釋出Direct3D 10.1以及Shader Model 4.1的測試版本。Direct3D 10.1規定幾個更多圖像質量標準為圖表供營商，給予開發商對圖像質量（image quality）的更多控制\[4\]\[5\]。[XAudio 2](https://zh.wikipedia.org/wiki/XAudio_2 "wikilink") 将取代DirectSound，成为最新的跨平台音频API。

## Direct3D 11

Direct3D 11架構於Direct3D 10的基礎之上，但相較於Direct3D 10只支援Vista作業系統, Direct3D 11更可以支援[Windows 7及](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")[Windows Vista](../Page/Windows_Vista.md "wikilink")。Direct3D 11新增以下的功能：

  - [鑲嵌](../Page/密鋪.md "wikilink")（[Tessellation](https://zh.wikipedia.org/wiki/Tessellation "wikilink"), 即曲面细分）
  - 多執行緒渲染（Multithread Render）
  - 计算着色器（[Compute Shader](../Page/DirectCompute.md "wikilink")）：支援[GPGPU](https://zh.wikipedia.org/wiki/GPGPU "wikilink")，提供新版[HLSL語言](https://zh.wikipedia.org/wiki/HLSL "wikilink")，與 [nVidia](https://zh.wikipedia.org/wiki/nVidia "wikilink") 的 [CUDA](../Page/CUDA.md "wikilink") 或[OpenCL](../Page/OpenCL.md "wikilink") 功能類似。

其他還有物件導向化的Shader Model 5等功能。之前DirectX 10還是單執行緒，檔案存取與繪圖指令共用同一個執行緒，容易造成畫面遲緩的現象，與DirectX 10相比，Direct3D 11有了更好的解決方案。

DirectX 11的pipeline新增Hull Shader、Tessellator、Domain Shader來實現tessellation, 可以快速讓成像3D的小三角型快速增加。至於Computer Shader則是[GPGPU的實現](https://zh.wikipedia.org/wiki/GPGPU "wikilink")，以[GPU的平行處理能力與浮點運算能力來實現CPU的運算](https://zh.wikipedia.org/wiki/GPU "wikilink")，能夠同時支援[ATI以及](https://zh.wikipedia.org/wiki/ATI "wikilink")[Nvidia的顯示卡](https://zh.wikipedia.org/wiki/Nvidia "wikilink")，不受繪圖流程的限制。DirectX11還支持Intel的支持Ray Tracing（光線跟蹤）與Rasterization（光柵化）技术，使3D效果更真实，更加逼真。

以Direct3D開發3D圖形程序，可以採用COM inteface，也可以採用[.NET Framework的方式](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")，[WPF會使用Direct](https://zh.wikipedia.org/wiki/WPF "wikilink")3D 9與[GPU](https://zh.wikipedia.org/wiki/GPU "wikilink")。Direct3D 11技术是DX10.1的超集，支援DX11.0、DX10.1/10.0、DX9.3/9.2/9.1等。

[Windows 7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink") Desktop Windows Manager將會支持Direct3D 10.1 API。可將顯卡帶寬的佔用率降低大約50%。DirectX 11可向下相容於DirectX 10的顯示卡，同時也能夠在Windows 7與Vista上執行。

## Direct3D 12

## Direct3D 與 Windows Vista

Vista 引入了 DirectX 的两种新类型:Direct3D 9Ex 和 Direct3D 10。DirectX 10僅適用於Windows Vista，针对 Windows Vista 进行了全新构建，构建于Vista 显示器驱动程序模型 ([WDDM](https://zh.wikipedia.org/wiki/WDDM "wikilink")) 之上，並引入新的硬體模式、绘图管线和渲染特性，让开发人员更接近硬體。一些由於游戏需要SM 2.0，Vista 将使用SM 2.0来渲染桌面。

## 範例

用Direct3D 9畫三角形：

``` cpp
 // A 3-vertex polygon definition
 D3DLVERTEX v[3];
 // Vertex established
 v[0]=D3DLVERTEX( D3DVECTOR(0.f, 5.f, 10.f), 0x00FF0000, 0, 0, 0 );
 // Vertex established
 v[1]=D3DLVERTEX( D3DVECTOR(0.f, 5.f, 10.f), 0x0000FF00, 0, 0, 0 );
 // Vertex established
 v[2]=D3DLVERTEX( D3DVECTOR(0.f, 5.f, 10.f), 0x000000FF, 0, 0, 0 );
 // Function call to draw the triangle
 pDevice->DrawPrimitive( D3DPT_TRIANGLELIST, D3DFVF_LVERTEX, v, 3, 0 );
```

用Direct3D 11畫三角形：

``` cpp
 struct Vertex { float x, y, z; D3DCOLOR color; };
 Vertex triangle[] = {
  { 0.f, 5.f, 10.f, 0x00FF0000 },
  { 0.f, 5.f, 10.f, 0x0000FF00 },
  { 0.f, 5.f, 10.f, 0x000000FF }
 };
 // set Flexible Vertex Format
 pDevice->SetFVF(D3DFVF_XYZ | D3DFVF_DIFFUSE);
 // Draw - UP stands for 'user pointer', that is data
 // that is provided through a pointer and not through buffers
 pDevice->DrawPrimitiveUP(D3DPT_TRIANGLELIST, 1, triangle, sizeof(Vertex));
```

## 注釋

## 參見

  - [Wing](https://zh.wikipedia.org/wiki/Wing "wikilink")
  - [OpenGL](../Page/OpenGL.md "wikilink")
  - [HLSL](https://zh.wikipedia.org/wiki/HLSL "wikilink")
  - [WDDM](https://zh.wikipedia.org/wiki/WDDM "wikilink")

## 外部連結

  - [DirectX website](https://web.archive.org/web/20080828111037/http://www.microsoft.com/windows/directx/default.mspx)
  - [DirectX 10: The Future of PC Gaming](http://www.bit-tech.net/hardware/2006/11/30/directx10_future_of_pc_gaming/1.html) Technical article discussing the new features of DirectX 10 and their impact on computer games

[Category:计算机图形学](https://zh.wikipedia.org/wiki/Category:计算机图形学 "wikilink") [Category:三维计算机图形学](https://zh.wikipedia.org/wiki/Category:三维计算机图形学 "wikilink") [Category:DirectX](https://zh.wikipedia.org/wiki/Category:DirectX "wikilink") [Category:繪圖函式庫](https://zh.wikipedia.org/wiki/Category:繪圖函式庫 "wikilink")

1.  {{ cite web |url=<http://www.xmission.com/~legalize/book/preview/poster/pipeline-9.0.png> |title=Direct3D 9.0 pipeline diagram }}
2.  {{ cite web |url=<http://msdn2.microsoft.com/en-us/library/bb205123.aspx> |title=Direct3D 10 pipeline stages }}
3.  {{ cite web |url=<http://msdn.microsoft.com/en-us/library/bb943990(VS.85>).aspx |title=Direct3D 7 introduces DirectDraw Surface (.dds) format }}
4.
5.