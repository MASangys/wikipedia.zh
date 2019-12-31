> 本文内容由[Break鍵](https://zh.wikipedia.org/wiki/Break鍵)转换而来。


[Key_break.jpg](https://zh.wikipedia.org/wiki/File:Key_break.jpg "fig:Key_break.jpg") **Break鍵**是[電腦鍵盤上的一個鍵](https://zh.wikipedia.org/wiki/電腦鍵盤 "wikilink")。Break鍵起源於19世紀的[電報](https://zh.wikipedia.org/wiki/電報 "wikilink")。在[DOS](../Page/DOS.md "wikilink")時代，是常用鍵之一，但是近年來該鍵的使用頻率逐年減少\[1\]。在某些較舊的程式中，按這個鍵會使程式暫停，若同時按，會使程式停止而無法執行\[2\]\[3\]\[4\]\[5\]\[6\]。

因為可以[中斷](../Page/中斷.md "wikilink")[程式](https://zh.wikipedia.org/wiki/Software "wikilink")，所以Break鍵也被稱為Pause鍵。\[7\]

## 歷史

電腦鍵盤上的BREAK鍵的原型要追溯到電報業務。標準的電報鍵有內建的刀開關可以被用來短路按鍵的接觸。當這個鍵不用時, 開關保持關閉, 信號可以持續發送。當穩定狀態信號被中斷時, 它指示出兩種可能之一:不是操作員中止了開始傳送, 就是什麼別的事中斷了連接--比如電報線路的物理中斷。當電傳打字機使用後, 一個鍵被加入用來臨時中斷連線, 允許工作繼續.這個出現後, 接收傳印機將激活但不打印字符, (反复的打印一個非打印字符DEL)。打印的聲音提示操作員注意。

## Sinclair電腦

在Sinclair公司研發的和電腦，就等於。在[Sinclair ZX Spectrum上](https://zh.wikipedia.org/wiki/Sinclair_ZX_Spectrum "wikilink")，則是按。Spectrum+和後來的電腦上，有一個專用的，它並不觸發一個中斷，而是終止所有正運行的BASIC程序，或者終止磁帶機上數據的加載或保存。被中斷的BASIC程序通常可以用`CONTINUE`命令恢復運行。Sinclair QL計算機，沒有BREAK鍵，而是將功能映射到鍵組合。

## BBC Micro電腦

在BBC Micro電腦,鍵會使電腦[暖重啟](https://zh.wikipedia.org/wiki/暖重啟 "wikilink")，[冷重啟則是](https://zh.wikipedia.org/wiki/冷重啟 "wikilink")。如果安裝了DFS ROM,將讓電腦搜索並加載0 號驅動器中軟盤上的名為`!``Boot` 的文件。之後兩種行為被後來的,[RISC OS繼承](../Page/RISC_OS.md "wikilink")。

## 現代鍵盤

現今的[個人電腦上](https://zh.wikipedia.org/wiki/個人電腦 "wikilink")，可以暫時凍結[BIOS](../Page/BIOS.md "wikilink")的螢幕輸出，若再按任何鍵就會繼續\[8\]\[9\]。可以被軟件用於幾種不同的方式，比如在多個登錄會話間切換，終止程序，或中斷MODEM的連接。早期的鍵盤上沒有（在101/102鍵鍵盤出現之前）\[10\]。的功能被組合鍵代替，的功能被組合鍵代替，這些組合鍵在大多數程序中仍可以工作，甚至是在安裝有現代鍵盤的現代PC上。在101/102鍵鍵盤上按下與先按住，再按下，然後再以相反的次序放開它們的操作，作用是相同的。另外，一個十六進制的E1前綴也會發送出，以使101鍵敏感軟件可以識別出這兩種狀況，但舊的軟件通常會忽略這個前綴。不同於其它所有的按鍵，因為它在被放開時不發送掃描碼。因此，任何軟件都不可能確定這個鍵是否被按住不放\[11\]。 [Scroll_lock-edit.jpg](https://zh.wikipedia.org/wiki/File:Scroll_lock-edit.jpg "fig:Scroll_lock-edit.jpg") 在現代鍵盤上，「Break」常被標印在「Pause」標印的下面而作為同一個按鍵，有時被一條線分開，或者「Pause」標印在鍵面的頂面，而「Break」標印在鍵面的前臉面。在大多數[Windows環境下](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，按下會彈出系統屬性。\[12\]\[13\]\[14\]\[15\]

## 沒有的鍵盤

在較小的[筆記型電腦](../Page/筆記型電腦.md "wikilink")通常都沒有。以下的方法可以代替：

  - 、或（部分[聯想筆記型電腦](https://zh.wikipedia.org/wiki/联想集团 "wikilink")）。\[16\]\[17\]

  - （[三星電腦](https://zh.wikipedia.org/wiki/三星 "wikilink")）

以下的方法可以代替：

  - 、或（在部分的聯想筆記型電腦）。\[18\]

[蘋果標準鍵盤](../Page/蘋果標準鍵盤.md "wikilink")並沒有，因为[Mac OS X用不着](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")。\[19\]\[20\]

## 中斷程序運行的用法

和組合通常都是中斷控制台應用程序的一種方式，在[集成开发环境](../Page/集成开发环境.md "wikilink")中也有類似效果\[21\]\[22\]。儘管通常認為這兩種方式是等同的\[23\]，但編譯器和運行環境通常給它們賦予不同的信號\[24\]。另外，在一些內核下（例如：混雜的DOS變體），僅當是緩存中唯一的鍵序列，並且操作系統嘗試從鍵盤緩存中讀取時，它才會被檢測到\[25\]\[26\]。而則立即被解譯（例如通过DOS下的[1BH中斷](https://zh.wikipedia.org/wiki/BIOS_中斷呼叫 "wikilink")）。因此，在這些作業系統中，通常是一個更有效的選擇。用CONFIG.SYS文件中的`BREAK=ON`語句可增強這兩種按键組合的敏感性。

## 參考來源

## 參見

  - [系統請求](https://zh.wikipedia.org/wiki/系统请求 "wikilink")
  - [捲動鎖定](../Page/滚动锁定.md "wikilink")
  - [數字鎖定鍵](../Page/數字鎖定鍵.md "wikilink")



[Category:电脑键](https://zh.wikipedia.org/wiki/Category:电脑键 "wikilink")

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
21.
22.
23.
24.
25.
26.