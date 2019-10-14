**GLSL** - **OpenGL Shading Language** 也稱作 **GLslang**，是一個以[C語言為基礎的](https://zh.wikipedia.org/wiki/C語言 "wikilink")[高階](https://zh.wikipedia.org/wiki/高階程式語言 "wikilink")[著色語言](https://zh.wikipedia.org/wiki/著色語言 "wikilink")。它是由 [OpenGL ARB](https://zh.wikipedia.org/wiki/OpenGL_ARB "wikilink") 所建立，提供開發者對[繪圖管線更多的直接控制](https://zh.wikipedia.org/wiki/繪圖管線 "wikilink")，而無需使用汇编语言或硬體規格語言。

## 背景

隨著近年來繪圖卡的進步， 已在渲染管線中的[頂點](../Page/頂點_\(電腦圖學\).md "wikilink")（vertex）和片斷（fragment）層次中，加入更具彈性的新功能。 達到在這個層次中，使用片斷和[頂點著色器的可編程性](https://zh.wikipedia.org/wiki/頂點著色器 "wikilink")。

最初這個功能是以組合語言撰寫著色器來達到的。組合語言對開發者的使用是不直觀而複雜的。OpenGL ARB 建立了 OpenGL 著色語言，為 GPU 的程式設計提供更加直觀的方法，當維護開放標準的時候，就有助於帶動 OpenGL 的歷史。

最初 OpenGL 1.5 是以擴充形式引入，後來 [OpenGL ARB](https://zh.wikipedia.org/wiki/OpenGL_ARB "wikilink") 在 [OpenGL](../Page/OpenGL.md "wikilink") 2.0 核心中正式納入 GLSL。自 1992 年建立的[OpenGL](../Page/OpenGL.md "wikilink") 1.0 起，[OpenGL](../Page/OpenGL.md "wikilink") 2.0 是第一個 [OpenGL](../Page/OpenGL.md "wikilink") 的大修改版。

使用 GLSL 有如下好處：

  - 具有[跨平台的相容性](https://zh.wikipedia.org/wiki/跨平台 "wikilink")，包括 [Macintosh](https://zh.wikipedia.org/wiki/Macintosh "wikilink")、[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink") 和 [Linux](../Page/Linux.md "wikilink") 等作業系統。
  - 所有支援 OpenGL 著色語言的繪圖卡，都可以用來編寫著色器。
  - 允許廠商為特定的繪圖卡產生最佳化的代碼。

## 詳細資料

### 資料類型

OpenGL 著色語言規格定義了 22 個基本資料類型，有些用法與 [C](https://zh.wikipedia.org/wiki/C語言 "wikilink") 相同，其它的是繪圖處理器特有的。

  - void – 用於沒有返回值的函式
  - bool – 條件類型，其值可以是真或假
  - int – 帶負號整數
  - float – 浮點數
  - vec2 – 2 個浮點數組成的向量
  - vec3 – 3 個浮點數組成的向量
  - vec4 – 4 個浮點數組成的向量
  - bvec2 – 2 個布林組成的向量
  - bvec3 – 3 個布林組成的向量
  - bvec4 – 4 個布林組成的向量
  - ivec2 – 2 個整數組成的向量
  - ivec3 – 3 個整數組成的向量
  - ivec4 – 4 個整數組成的向量
  - mat2 – 浮點數的 2X2 矩陣
  - mat3 – 浮點數的 3X3 矩陣
  - mat4 – 浮點數的 4X4 矩陣
  - sampler1D – 用來存取一維紋理的句柄（handle）（或：操作，作名詞解。）
  - sampler2D – 用來存取二維紋理的句柄
  - sampler3D – 用來存取三維紋理的句柄
  - samplerCube – 用來存取立方映射紋理的句柄
  - sampler1Dshadow – 用來存取一維深度紋理的句柄
  - sampler2Dshadow – 用來存取二維深度紋理的句柄

### 運算子

OpenGL 著色語言提供類似於 [C語言的運算子](https://zh.wikipedia.org/wiki/C語言 "wikilink")。給開發者編寫著色器的靈活性。GLSL 包含了 [C和C++運算子](../Page/C和C++運算子.md "wikilink")，除了位元運算子和[指標以外](https://zh.wikipedia.org/wiki/指標 "wikilink")。

### 函式和控制結構

類似於 [C語言](https://zh.wikipedia.org/wiki/C語言 "wikilink")，GLSL 支援迴圈和分支，包括 if、else、if/else、for、do-while、break、continue 等。

支援使用者定義函式，且各種常用的函式也已內建。這也就讓繪圖卡製造商，能夠在硬體層次上最佳化這些內建的函式。許多函式與 C 語言相同，如 exp() 以及 abs()，其它繪圖編程特有的，如 smoothstep() 以及 texture2D()。

### 編譯和執行

GLSL 著色器不是獨立的應用程式；其需要使用 [OpenGL](../Page/OpenGL.md "wikilink") API 的應用程式。C、C++、C\#、Delphi 和 Java 皆支援 [OpenGL](../Page/OpenGL.md "wikilink") API，且支援 OpenGL 著色語言。

GLSL 著色器本身只是簡單的字串集，這些字串集會傳送到硬體廠商的驅動程式，並從程式內部的 OpenGL API 進入點編譯。著色器可從程式內部或讀入純文字檔來即時建立，但必須以字串形式傳送到驅動程式。

用以編譯、連結並傳送參數到 GLSL 程式的 API 集，已在三個 OpenGL 擴展中規定，且即將成為 [OpenGL 2.0](http://www.opengl.org/documentation/specs/version2.0/glspec20.pdf) 核心的一部分。這些 API 可在以下擴展中找到：

  - [ARB 頂點著色器](http://oss.sgi.com/projects/ogl-sample/registry/ARB/vertex_shader.txt)
  - [ARB 片斷著色器](http://oss.sgi.com/projects/ogl-sample/registry/ARB/fragment_shader.txt)
  - [ARB 著色器物件](http://oss.sgi.com/projects/ogl-sample/registry/ARB/shader_objects.txt)

### GLSL 頂點著色器的簡單範例

``` c
void main(void)
{
    gl_Position = ftransform();
}
```

### GLSL 片斷著色器的簡單範例

``` c
void main(void)
{
    gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);
}
```

### 工具

GLSL 著色器可以事先建立和測試，現有以下 GLSL 開發工具：

  - [RenderMonkey](http://www.ati.com/developer/rendermonkey/) - 這個軟體是由 ATI 製作的，提供界面用以建立、編譯和除錯 GLSL 著色器，和 DirectX 著色器一樣。僅能在 Windows 平台上執行。
  - GLSLEditorSample - 在 Mac OS X 上，它是目前唯一可用的程式，其提供著色器的建立和編譯，但不能除錯。它是 cocoa 應用程式，僅能在 Mac OS X 上執行。
  - [Lumina](http://sourceforge.net/projects/lumina/) - Lumina 是新的 GLSL 開發工具。其使用 QT 界面，可以跨平台。

## 參考文獻

  - [Rost, Randi J.](https://zh.wikipedia.org/wiki/Rost,_Randi_J. "wikilink") *OpenGL Shading Language*. 1st ed. Pearson Education, Inc, 2004. ISBN 0-321-19789-5
  - Kessenich, John, & Baldwin, David, & Rost, Randi. *The OpenGL Shading Language*. Version 1.10.59. 3Dlabs, Inc. Ltd. <https://web.archive.org/web/20070404171317/http://developer.3dlabs.com/documents/index.htm>

## 外部連結

  - [GLSL 語言規格，版本 1.20](http://www.opengl.org/registry/doc/GLSLangSpec.Full.1.20.8.pdf)
  - [GLSL 參考表](http://www.mew.cx/glsl_quickref.pdf)
  - [OpenGL 片斷著色器規格](http://oss.sgi.com/projects/ogl-sample/registry/ARB/fragment_shader.txt)
  - [OpenGL 頂點著色器規格](http://oss.sgi.com/projects/ogl-sample/registry/ARB/vertex_shader.txt)
  - [OpenGL 程式規格](http://oss.sgi.com/projects/ogl-sample/registry/ARB/program_object.txt)
  - [官方 OpenGL 網站](http://www.opengl.org)

<!-- end list -->

  - [來自 Lighthouse3D 的教學和範例](http://www.lighthouse3d.com/opengl/)
  - [來自 NeHe Productions 的教學和範例](http://nehe.gamedev.net)
  - [GLSL 開發環境](http://www.typhoonlabs.com)
  - [RenderMonkey 著色器開發環境](http://www.ati.com/developer/rendermonkey/)
  - [Geist3D 繪圖引擎，內含 GLSL 編輯器](https://web.archive.org/web/20060305194538/http://www.geist3d.org/)
  - [Lumina 跨平台 GLSL IDE](http://sourceforge.net/projects/lumina/)

## 参见

  - [著色語言](https://zh.wikipedia.org/wiki/Shading_language "wikilink")
  - [HLSL](https://zh.wikipedia.org/wiki/HLSL "wikilink")，高階著色語言
  - [Cg](https://zh.wikipedia.org/wiki/Cg语言 "wikilink")，nVIDIA 的著色語言
  - [程式設計](https://zh.wikipedia.org/wiki/程式設計 "wikilink")
  - [计算机图形学](../Page/计算机图形学.md "wikilink")
  - [OpenGL](../Page/OpenGL.md "wikilink")
  - [著色器](https://zh.wikipedia.org/wiki/Shader_Model "wikilink")

{{-}}

[Category:繪圖函式庫](https://zh.wikipedia.org/wiki/Category:繪圖函式庫 "wikilink") [Category:三维计算机图形学](https://zh.wikipedia.org/wiki/Category:三维计算机图形学 "wikilink") [Category:C語言家族](https://zh.wikipedia.org/wiki/Category:C語言家族 "wikilink") [Category:OpenGL](https://zh.wikipedia.org/wiki/Category:OpenGL "wikilink") [Category:著色器語言](https://zh.wikipedia.org/wiki/Category:著色器語言 "wikilink")