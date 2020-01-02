> 本文内容由[Cg語言](https://zh.wikipedia.org/wiki/Cg語言)转换而来。


**Cg语言**（C for Graphics）是为[GPU编程设计的](https://zh.wikipedia.org/wiki/GPU "wikilink")[高級著色器語言](https://zh.wikipedia.org/wiki/高級著色器語言 "wikilink")，由[NVIDIA公司开发](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")。Cg极力保留[C语言的大部分语义](https://zh.wikipedia.org/wiki/C语言 "wikilink")，并让开发者从硬件细节中解脱出来，Cg同时也有一个高级语言的其他好处，如代码的易重用性，可读性得到提高，编译器代码优化。

Cg语言主要参照[ANSI C建模](../Page/ANSI_C.md "wikilink")，但也从[C++](../Page/C++.md "wikilink")和[Java](../Page/Java.md "wikilink")以及早期的绘制语言如RenderMan and the Stanford shading language中吸取了一些思想。这些使得很容易写程序然后由编译器进行优化，提高了可读性。而且Cg的设计考虑了GPU的体系结构，如可编程多处理器单元（顶点处理器，像素处理器，外加不可编程单元）。这些部分和应用都是通过数据流连接起来。Cg语言允许分别为[顶点和像素写程序](../Page/頂點_\(電腦圖學\).md "wikilink")。Cg API引入了profiles的概念以处理顶点和像素编程所缺乏的通用性。一个Cg profile就定义了一套整个Cg语言的子集以适应不同的硬件平台和API。Cg程序可以根据运行时的需要或者事先编译成GPU汇编代码。这样可以很容易地将一个Cg像素程序和手写的顶点程序结合起来，或者甚至采用不可编程的OpenGL或者DirectX顶点流水线，反之亦然。

## 細節

### 資料型別

Cg有6種数据型別（data types），跟C語言相當類似，有一些是為GPU特別定義的，型別如下：

  - float - 32位元浮點數
  - half - 16位元浮點數
  - int - 32位元整數
  - fixed - 12位元定點數
  - bool - 布尔值
  - sampler\* - 代表紋理物件（texture object）

## 範例

  - A sample Cg vertex shader

<!-- end list -->

``` c
 // input vertex
 struct VertIn {
     float4 pos   : POSITION;
     float4 color : COLOR0;
 };

 // output vertex
 struct VertOut {
     float4 pos   : POSITION;
     float4 color : COLOR0;
 };

 // vertex shader main entry
 VertOut main(VertIn IN, uniform float4x4 modelViewProj) {
     VertOut OUT;
     OUT.pos     = mul(modelViewProj, IN.pos); // calculate output coords
     OUT.color   = IN.color; // copy input color to output
     OUT.color.z = 1.0f; // blue component of color = 1.0f
     return OUT;
 }
```

## 參照

  - [程序设计语言](https://zh.wikipedia.org/wiki/程序设计语言 "wikilink")
  - [计算机图形学](../Page/计算机图形学.md "wikilink")
  - [Vertex and pixel shaders](https://zh.wikipedia.org/wiki/Vertex_shader "wikilink")
  - [High level shader language](https://zh.wikipedia.org/wiki/HLSL "wikilink")
  - [OpenGL shading language](../Page/GLSL.md "wikilink")
  - [Shader Model](https://zh.wikipedia.org/wiki/Shader_Model "wikilink")
  - [OpenGL](../Page/OpenGL.md "wikilink")
  - [DirectX](../Page/DirectX.md "wikilink")

## 外部連結

  - [NVIDIA](http://www.nvidia.com/)
      - [Cg home page](http://developer.nvidia.com/page/cg_main.html)
  - [OpenGL home page](http://www.opengl.org)
  - [DirectX home page](http://www.microsoft.com/windows/directx/default.aspx)
  - [ShaderTech - GPU Programming](https://web.archive.org/web/20070306123610/http://www.shadertech.com/)
  - [NeHe Cg vertex shader tutorial](https://web.archive.org/web/20081219131420/http://nehe.gamedev.net/data/lessons/lesson.asp?lesson=47)
  - [Far Cry](http://www.farcry-thegame.com/)
  - [A glimpse at Cg Shader Toolkit](https://web.archive.org/web/20061026204236/http://www.deathfall.com/feature.php?op=showcontent&id=12)
  - [Virtools](http://www.virtools.com)

[Category:C語言家族](https://zh.wikipedia.org/wiki/Category:C語言家族 "wikilink") [Category:著色器語言](https://zh.wikipedia.org/wiki/Category:著色器語言 "wikilink")