> 本文内容由[Core Image](https://zh.wikipedia.org/wiki/Core_Image)转换而来。


[Apple_CoreImage.jpg](https://zh.wikipedia.org/wiki/File:Apple_CoreImage.jpg "fig:Apple_CoreImage.jpg") **Core Image**是一項[Mac OS X中的新技術](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，利用機器的[繪圖處理器來作影像相關特效](https://zh.wikipedia.org/wiki/繪圖處理器 "wikilink")。於[2004年8月](../Page/2004年8月.md "wikilink")的[世界開發者大會](https://zh.wikipedia.org/wiki/世界開發者大會 "wikilink")（WWDC）中展示，它提供大部份共同圖形濾鏡的捷徑。它提供即時直接作很多共同形式的[影像處理能力](https://zh.wikipedia.org/wiki/影像處理 "wikilink")（在這之前必須由開發者自己的程式碼來實做完成）。

Core Image較簡單的[GUI增強有更深遠的含意](https://zh.wikipedia.org/wiki/GUI "wikilink")，像是由[Dashboard](../Page/Dashboard.md "wikilink")所產生的[水波紋效果](https://zh.wikipedia.org/wiki/:File:apple_dashboard_ripple.jpg "wikilink")。Core Image可以用來作即時的影像操作，類似於[Photoshop的濾鏡](https://zh.wikipedia.org/wiki/Photoshop "wikilink")。這些運算稱為影像單位（Image Units）。然而，不像傳統的濾鏡是在來源影像上操作，Core Image利用重疊來實現這樣的操作 -- 能維持原來的影像。這稱為"非破壞性"操作。這樣的結果可以用來作高複雜度和多層的影像操作，而只有少數或沒有品質上的損失。

轉場特效類似濾鏡，結合兩個或多個影像來形成結果的影像，且接受一個時間數值（0 \< t \< 1）為參數。藉由使用計時器來驅動一個動畫，產生由一個影像到另一個的轉場效果是很容易地實現。

在Core Image內部，影像是以[浮點數的數值在指定的](https://zh.wikipedia.org/wiki/浮點數 "wikilink")[色彩空間](../Page/色彩空間.md "wikilink")來表示像素的成份。使用浮點數可以得到較高的精確度。多個效果可以藉由結合數個影像單位（Image Unit）成為一個順序的次序（稱為特效堆疊，effects stack）來達成。然而，Core Image在處理堆疊時候並不產生每個中介的影像；反之，它一次就計算效果的數學之運算，然後把這個結果應用到影像上。結論是這樣的方法，不會使得當更多的特效加入時，而使得效能降低 - 因每個像素都只會被處理一次，而不管特效堆疊變得多複雜。

Core Image是設計來借用高階顯示卡上[繪圖處理器的某些形式之能力](https://zh.wikipedia.org/wiki/繪圖處理器 "wikilink")。這會得到大量效能上的利益，由於巨大的影像資料不需要在主記憶體匯流排中搬移，這是即時影像處理[頻寬限制的一個地方](https://zh.wikipedia.org/wiki/頻寬 "wikilink")。然而，如果沒有適合的圖形處理器，Core Image就會退回到下一個最好的選擇 - 利用[G5和](https://zh.wikipedia.org/wiki/G5 "wikilink")[G4處理器上的](https://zh.wikipedia.org/wiki/G4 "wikilink")[AltiVec](../Page/AltiVec.md "wikilink")處理能力，或者就只好執行[G3上的](https://zh.wikipedia.org/wiki/G3 "wikilink")'一般'程式碼。Core Image會自動地在目前機器架構下的選擇最快方法。然而，逼真地即時影像處理需要一個可相容的繪圖處理器。

## 影像單位

  - 中位數的，高斯，移動和縮放模糊
  - 雜訊降低
  - 全彩，色調，色溫，白平衡和飽和度控制
  - Pinch, Hole, Dump, Displacement, Glass, torus Lens, Twirl, Vortex, Circle Splash and Circular warp distortions
  - Several generator filters including Star Shine, Sunbeams, Checkerboard and Lenticular Halo
  - Color blends: color burn, darken, difference, exclusion, hard light, hue, lighten, luminosity, multiply, overlay, saturation, screen, soft light
  - On-the-fly cropping and scaling
  - On-the-fly perspective transform
  - Several halftone filters including [CMYK](https://zh.wikipedia.org/wiki/CMYK "wikilink")，dot, hatched and line
  - [Deconvolution](https://zh.wikipedia.org/wiki/Deconvolution "wikilink")
  - Transition effects such as Swipe, Flash, Page Curl, Copy Machine, Disintegrate with Mask, Dissolve

## Core Video

靠Core Image一起執行且以它為根基的是[Core Video](https://zh.wikipedia.org/wiki/Core_Video "wikilink")。就像Core Image，它允許即時的視訊剪輯，如同WWDC Webcast所展示的。

兩種技術都極大地依靠系統上的[繪圖卡](https://zh.wikipedia.org/wiki/繪圖卡 "wikilink")，且可能提供多種等級的解決方案，像是Quartz和它的更強版本Quartz Extreme。

## 参考文献

## 外部連結

  - [Mac OS X Tiger: Core Image](https://web.archive.org/web/20050903045203/http://www.apple.com/macosx/tiger/coreimage.html)：Apple網站上的預覽
  - [WWDC 2004 Keynote Webcast](https://web.archive.org/web/20050819043226/http://www.apple.com/quicktime/qtv/wwdc04/)：original presentation by Steve Jobs

{{-}}

[Category:Mac_OS介面](https://zh.wikipedia.org/wiki/Category:Mac_OS介面 "wikilink") [Category:繪圖函式庫](https://zh.wikipedia.org/wiki/Category:繪圖函式庫 "wikilink")