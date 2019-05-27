**Direct2D**是[微軟公司用來取代](https://zh.wikipedia.org/wiki/微軟公司 "wikilink")[DirectDraw以及](https://zh.wikipedia.org/wiki/DirectDraw "wikilink")[GDI](https://zh.wikipedia.org/wiki/图形设备接口 "wikilink")、[GDI+等的一项新技術](../Page/GDI+.md "wikilink")\[1\]，主要提供2D動畫的[硬體加速](https://zh.wikipedia.org/wiki/硬體加速 "wikilink")，支援[Windows
Vista](../Page/Windows_Vista.md "wikilink") SP2和Windows
7及以上的微软[Windows操作系统](https://zh.wikipedia.org/wiki/Windows "wikilink")\[2\]。

Direct2D技術架構於[Direct3D](../Page/Direct3D.md "wikilink") 10.1
API之上，能够透過硬件加速功能來建立2D图形，而且完全支持透明和[Alpha混合](https://zh.wikipedia.org/wiki/Alpha合成#Alpha混合 "wikilink")。Direct2D亦支援软件实现（Software
rasterizer），即在显卡不支持硬件加速的情況下，Direct2D仍可以使用软件方式描繪，且效果仍優於GDI。

Direct2D可以使用[DXGI](https://zh.wikipedia.org/wiki/DXGI "wikilink")（DirectX
Graphics
Infrastructure）與交互操作，Direct2D还能很好的支持[DirectWrite](../Page/DirectWrite.md "wikilink")。

Direct2D的支持高品質的渲染，具有以下特點：

  - 支援[ClearType文字的呈現方式](../Page/ClearType.md "wikilink")（DirectWrite提供）
  - 消除原圖鋸齒狀（Per primitive antialiasing）
  - 幾何形狀（直線，曲線）和位圖繪製和填寫。
  - 純色（Solid color）、線性。
  - 描繪中間層。
  - 多元的幾何操作（如unions、intersections、widening、outlining等）

Direct2D的使用設備的獨立坐標系統，它可以依照顯示螢幕的大小來自動調整GUI的DPI縮放。現在Direct2D已被用於[Internet
Explorer 9及](../Page/Internet_Explorer_9.md "wikilink")[Mozilla Firefox
4](../Page/Mozilla_Firefox_4.md "wikilink")\[3\]。

## 參見

  - [DirectX](../Page/DirectX.md "wikilink")
  - [DirectWrite](../Page/DirectWrite.md "wikilink")
  - [Direct3D](../Page/Direct3D.md "wikilink")
  - [GDI](https://zh.wikipedia.org/wiki/图形设备接口 "wikilink")
  - [GDI+](../Page/GDI+.md "wikilink")

## 参考资料

## 外部連結

  - [Blog of Direct2D Lead Developer Thomas
    Olsen](http://blogs.technet.com/thomasolsen/default.aspx)
  - [Blog of Direct2D Developer Tom
    Mulcahy](http://blogs.msdn.com/tmulcahy/)
  - [Direct2D White
    Papers](http://msdn.microsoft.com/en-us/windows/dd262126.aspx)
  - [Windows 7: Introducing Direct2D and
    DirectWrite](http://channel9.msdn.com/pdc2008/PC18/) - PDC 2008
    video
  - [Windows API Code Pack for Microsoft .NET
    Framework](http://code.msdn.microsoft.com/WindowsAPICodePack) -
    allows developing Direct2D apps in managed code
  - [Introducing
    Direct2D](http://msdn.microsoft.com/en-us/magazine/dd861344.aspx) -
    June 2009 issue of MSDN Magazine
  - [Drawing with
    Direct2D](http://msdn.microsoft.com/en-us/magazine/ee413543.aspx) -
    September 2009 issue of MSDN Magazine
  - [Direct2D API for Microsoft .Net
    Framework 4](http://direct2dsharp.codeplex.com/) - Direct2D API for
    Microsoft .Net Framework 4

[Category:DirectX](https://zh.wikipedia.org/wiki/Category:DirectX "wikilink")

[Category:繪圖函式庫](https://zh.wikipedia.org/wiki/Category:繪圖函式庫 "wikilink")

1.  <http://msdn.microsoft.com/en-us/library/dd370990(VS.85>).aspx
2.  <http://blogs.technet.com/thomasolsen/archive/2009/03/24/updated-direct2d-in-march-directx-sdk.aspx>
3.  [Microsoft isn't the only one developing a hardware-accelerated
    browser](http://blogs.zdnet.com/microsoft/?p=4650&tag=content;col1),
    November 24, 2009.