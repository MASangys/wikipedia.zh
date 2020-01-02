> 本文内容由[PCX](https://zh.wikipedia.org/wiki/PCX)转换而来。


**PCX**是一種由美國喬治亞州的[ZSoft公司所開發的影像檔格式](https://zh.wikipedia.org/wiki/ZSoft "wikilink")，原本是該公司的PC Paintbrush軟體的檔案格式（PCX代表PC Paintbrush Exchange），卻成了最廣泛接受的[DOS](../Page/DOS.md "wikilink")影像標準之一，然而這種使用格式已經被其他更複雜的[影像格式如](https://zh.wikipedia.org/wiki/影像格式 "wikilink")[GIF](../Page/GIF.md "wikilink")、[JPEG](../Page/JPEG.md "wikilink")、[PNG](../Page/PNG.md "wikilink")漸漸取代。

## 典型的檔案格式

| Planes | 位元深度 | 顯示型別                   |
| ------ | ---- | ---------------------- |
| 1      | 1    | Monochrome             |
| 1      | 2    | CGA                    |
| 3      | 1    | EGA                    |
| 4      | 1    | EGA or VGA             |
| 1      | 8    | Extended VGA           |
| 3      | 8    | Extended VGA and above |

**Table A. Typical PCX Image Formats**

PCX是一種不受平台限制的[像素](../Page/像素.md "wikilink")影像格式，檔案標頭儲存著有關顯示硬體方面的資訊（螢幕[解析度](https://zh.wikipedia.org/wiki/解析度 "wikilink")、顏色深度、色盤資訊、位元平面（bit planes）等），有別於後面夾帶的實際檔案資訊。這個資訊能讓影像可以正確地傳送與顯示在不同硬體上的電腦系統。PCX檔案一般來說，儲存色盤索引的影像，範圍從2、4種色彩至16與256種色彩，而且格式同樣可擴充以記錄真實色彩（24-bit）的影像。

PCX使用區段長度編碼（Run Length Encode；縮寫[RLE](https://zh.wikipedia.org/wiki/RLE "wikilink")），是一種簡單的演算法，可以把代表同一個顏色的多個連續位元組，簡化成一個雙位元組。當檔案做處理時，最高位元會用來當作控制切換（旗標），用來決定所給的資料是代表一個像素中的色盤索引值、色彩數值，還是一個用來表示數個接連相同數值[像素](../Page/像素.md "wikilink")的RLE數值。

|                   |                   |
| :---------------: | ----------------- |
|       Row 0       | R R R R R R R R R |
|  G G G G G G G G  |                   |
| B B B B B B B B B |                   |
| A A A A A A A A A |                   |
|       Row 1       | R R R R R R R R R |
|  G G G G G G G G  |                   |
| B B B B B B B B B |                   |
| A A A A A A A A A |                   |
|    Row 2 etc.     | ....              |

**Table B. PCX Image Data Arranged into Color Planes**

由於使用兩個最高[位元](../Page/位元.md "wikilink")來當作旗標，在一個具有256色盤的PCX檔案裡，色彩索引編號192至255（其兩個最高位元都已設為1），則必須儲存成RLE雙位元組，即使它們在區段中只出現過一兩次。而色彩索引編號0至191就可以直接儲存或是存成RLE雙位元組（無論哪一種較省空間）。因此實際的壓縮率可以透過適當的排序色盤順序來達到最佳化（然而若與其他影像共用色盤時則可能無法實行）。舉例來說，一個色盤可以將最常出現的色彩放置於色盤索引編號的0至191的位置，而最少使用的色彩則可座落於色盤的後半部，這個RLE機制可以有不錯的應用。

RLE壓縮演算法僅需少量的處理器資源與記憶體即可應用，以當時的電腦系統來看是非常有用的，但現今電腦的[硬體與](https://zh.wikipedia.org/wiki/硬體 "wikilink")[顯示設備逐漸的複雜精密](https://zh.wikipedia.org/wiki/顯示設備 "wikilink")，RLE演算法反而變成沒那麼省空間，它無法壓縮[混色](https://zh.wikipedia.org/wiki/混色 "wikilink")（dithered）的影像例如相片或複雜的電腦圖像。

[Category:圖形文件格式](https://zh.wikipedia.org/wiki/Category:圖形文件格式 "wikilink")