[Intel公司的](https://zh.wikipedia.org/wiki/Intel "wikilink")8259是一系列的[可程式化中斷控制器晶片的總稱](https://zh.wikipedia.org/wiki/可程式化中斷控制器 "wikilink")，當初設計它是為了搭配 8-bit 的 [Intel 8085以及](https://zh.wikipedia.org/wiki/Intel_8085 "wikilink") 16-bit的[Intel 8086等](../Page/Intel_8086.md "wikilink")[微處理器來使用](https://zh.wikipedia.org/wiki/微處理器 "wikilink")。此系列的晶片原本包含 8259、8259A、和 8259B，但時至今日，許多製造商已製作了相當多與8259相容的晶片。運作上，8259是一個[多工器](https://zh.wikipedia.org/wiki/多工器 "wikilink")，它會從多個中斷源中挑出一個中斷信號，並輸出。

## 歷史

關於此系列中的晶片，其差異性並不十分明瞭。據信，[NEC開發出](https://zh.wikipedia.org/wiki/NEC "wikilink") 8259A，而8259B只不過是[PC/AT上對於](https://zh.wikipedia.org/wiki/PC/AT "wikilink")8259A的另一種稱呼。

8259一開始雖然是一顆獨立的晶片，但現代[主機板上](https://zh.wikipedia.org/wiki/主機板 "wikilink")，它成了[南橋的一部分](https://zh.wikipedia.org/wiki/南橋 "wikilink")。

8259 晶片外觀如下：8支中斷輸入腳，稱為 IRQ0～IRQ7；一支中斷輸出腳，稱為INTR；一支中斷回覆腳，稱為INTA；8支資料傳輸腳，稱為D0～D7，用來對[中斷優先權和](https://zh.wikipedia.org/wiki/中斷優先權 "wikilink")[中斷向量的資訊做溝通](https://zh.wikipedia.org/wiki/中斷向量 "wikilink")。還有 CAS0～CAS2 三支腳，用來串接其他的8259晶片。

可以把多達8個的附屬8259晶片串在一個主8259晶片上，形成一個巨大的、可以處理64個中斷源的中斷控制器，方法是把附屬8259晶片的INT腳接到主8259晶片的其中一條IRQ腳上。

8259內部有三個[暫存器](https://zh.wikipedia.org/wiki/暫存器 "wikilink")：[中斷遮罩暫存器](https://zh.wikipedia.org/wiki/中斷遮罩暫存器 "wikilink")（IMR）、[中斷請求暫存器](https://zh.wikipedia.org/wiki/中斷請求暫存器 "wikilink")（IRR）、和[服務中暫存器](https://zh.wikipedia.org/wiki/服務中暫存器 "wikilink")（ISR）。IRR內儲存的資訊代表某些中斷被觸發了，但尚等待回應；ISR內的資訊代表那些放在EOI（End of Interrupt）的中斷；IMR指示哪些中斷直接忽略。

## 参见

  - （APIC）

  -
  -
  -
  - （NMI）

  - （PIC）

## 参考

<references/>

  - Gilluwe, Frank van. *The Undocumented PC*. A-W Developers Press, 1997. ISBN 0-201-47950-8
  - McGivern, Joseph. *Interrupt-Driven PC System Design*. Annabooks, 1998. ISBN 0-929392-50-7
  - *IBM Personal System/2 Hardware Interface Technical Reference - Architectures*. IBM, 1990. IBM Publication 84F8933

## 外部链接

  - [8259A Programmable Interrupt Controller](http://pdos.csail.mit.edu/6.828/2005/readings/hardware/8259A.pdf)

[Category:Intel处理器](https://zh.wikipedia.org/wiki/Category:Intel处理器 "wikilink") [Category:IBM_PC兼容机](https://zh.wikipedia.org/wiki/Category:IBM_PC兼容机 "wikilink") [Category:I/O芯片](https://zh.wikipedia.org/wiki/Category:I/O芯片 "wikilink") [Category:中断](https://zh.wikipedia.org/wiki/Category:中断 "wikilink")