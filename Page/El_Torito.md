**El Torito可開機光碟規格**，是[ISO
9660](../Page/ISO_9660.md "wikilink")[光碟規格的擴充](../Page/光碟.md "wikilink")，由[IBM的Stan](../Page/IBM.md "wikilink")
Merkin及[鳳凰科技](https://zh.wikipedia.org/wiki/鳳凰科技 "wikilink")（Phoenix
Technologies）的Curtis
Stevens所主導設計，發表於1994年11月。此規格設計讓[電腦可從光碟](https://zh.wikipedia.org/wiki/電腦 "wikilink")[開機](https://zh.wikipedia.org/wiki/開機 "wikilink")。「El
Torito」的命名是源自在規格設計時所在的「El
Torito」餐廳，此餐廳位於[美國](https://zh.wikipedia.org/wiki/美國 "wikilink")[加州](https://zh.wikipedia.org/wiki/加州 "wikilink")[爾灣市](https://zh.wikipedia.org/wiki/爾灣市 "wikilink")（Irvine）\[1\]。

## 運作原理

現今的電腦[BIOS](../Page/BIOS.md "wikilink")，會在開機時根據El
Torito規格，尋找光碟片上的開機程式碼。若該光碟具有開機程式碼，則BIOS會指配一個磁碟機代號給該光碟機。El
Torito規格中有兩種開機模式，可讓舊式的[作業系統由光碟開機](https://zh.wikipedia.org/wiki/作業系統 "wikilink")：

\*;模擬[硬碟模式](https://zh.wikipedia.org/wiki/硬碟 "wikilink") :
開機信息直接由光碟上讀取。
磁碟機代號通常為`80`。

\*;模擬[軟碟模式](https://zh.wikipedia.org/wiki/軟碟 "wikilink") :
光碟上有軟碟的[磁碟影像檔](../Page/磁碟鏡像.md "wikilink")
(image file) 存儲在內。開機信息就是由這個磁碟影像檔內讀取出來。
磁碟機代號通常為`00`。

新式的作業系統則不需做模擬，只要有如[ISOLINUX之類的](https://zh.wikipedia.org/wiki/ISOLINUX "wikilink")[開機引導程式](https://zh.wikipedia.org/wiki/開機引導程式 "wikilink")（boot
loader），即可由光碟開機。

## 另見

  - [開機](https://zh.wikipedia.org/wiki/開機 "wikilink")
  - [Live CD](../Page/Live_CD.md "wikilink")

## 参考資料

<div class="references-small">

<references />

</div>

## 外部連結

  - [The "El Torito" Bootable CD-ROM Format Specification,
    Version 1.0](https://web.archive.org/web/20061229222931/http://www.phoenix.com/NR/rdonlyres/98D3219C-9CC9-4DF5-B496-A286D893E36A/0/specscdrom.pdf)（[PDF](https://zh.wikipedia.org/wiki/Portable_Document_Format "wikilink")）

  - [ISOLINUX source
    code](http://www.kernel.org/git/?p=boot/syslinux/syslinux.git;a=blob;hb=HEAD;f=isolinux.asm)
    (see isolinux.asm line 294 onward)

  - [Ralf Brown's interrupt
    list](http://www.cs.cmu.edu/afs/cs.cmu.edu/user/ralf/pub/WWW/files.html)
    (see int 13h in interrup.b, esp. functions 4a to 4d)

  - [EL Torito Specification
    Supplement](http://littlesvr.ca/isomaster/eltoritosuppl.php)，discusses
    shortcomings of the standard

[Category:BIOS](https://zh.wikipedia.org/wiki/Category:BIOS "wikilink")
[Category:光碟製作](https://zh.wikipedia.org/wiki/Category:光碟製作 "wikilink")

1.