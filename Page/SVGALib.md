**svgalib**是一套運行於[Linux](../Page/Linux.md "wikilink")及[FreeBSD](../Page/FreeBSD.md "wikilink")下的[開放原始碼低階繪圖](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[函式庫](../Page/函式庫.md "wikilink")，它允許程式設計人員變更視訊模式及全螢幕圖像，許多熱門的電腦遊戲如*[Quake](https://zh.wikipedia.org/wiki/Quake "wikilink")*及*[Doom](https://zh.wikipedia.org/wiki/Doom "wikilink")*都源自此技術。

svgalib在1990年代中期開始並遍，但到2000年之後，多數使用此技術的應用都漸次轉移到了[X11](https://zh.wikipedia.org/wiki/X_Window_System "wikilink") and [SDL](https://zh.wikipedia.org/wiki/SDL "wikilink")（Simple DirectMedia Layer）上。

本函式庫很容易使用，可以參考以下程式範例片段：

``` c

#include <stdlib.h>
#include <unistd.h>
#include <vga.h>

int main(void)
{
   int color = 4;
   int x = 10;
   int y = 10;
   unsigned int seconds = 5;

   /* detect the chipset and give up supervisor rights */
   if (vga_init() < 0)
        return EXIT_FAILURE;

   vga_setmode(G320x200x256);
   vga_setcolor(color);
   vga_drawpixel(x, y);

   sleep(seconds);

   /* restore textmode and fall back to ordinary text console handling */
   vga_setmode(TEXT);

   return EXIT_SUCCESS;
}
```

## 參見

  - [General Graphics Interface](https://zh.wikipedia.org/wiki/General_Graphics_Interface "wikilink") (GGI)

## 外部連結

  - <http://www.svgalib.org/>

[Category:计算机图形学](https://zh.wikipedia.org/wiki/Category:计算机图形学 "wikilink")