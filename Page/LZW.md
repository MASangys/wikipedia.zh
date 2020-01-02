> 本文内容由[LZW](https://zh.wikipedia.org/wiki/LZW)转换而来。


}} **藍波-立夫-衛曲編碼法**（Lempel-Ziv-Welch，縮寫LZW），是、与共同提出的一種[無損数据压缩](https://zh.wikipedia.org/wiki/無損数据压缩 "wikilink")[演算法](https://zh.wikipedia.org/wiki/演算法 "wikilink")。

它在1984年由泰瑞·衛曲改良亞伯拉罕·藍與傑可布·立夫在1978年发表的[LZ78的版本而來](../Page/LZ77与LZ78.md "wikilink")（主要是基於藍波、立夫的壓縮概念，設計出一套具有可逆推的邏輯程序）。

與[霍夫曼編碼相比](https://zh.wikipedia.org/wiki/霍夫曼編碼 "wikilink")，藍波-立夫-衛曲編碼法被視作將不同長度字串以固定長的碼編輯（霍夫曼編碼將固定長度字元用不同長度的碼編輯）。其優點在於此方法只需儲存一個相當小的表格，即可儲存資料還原時相對應的值，所以所需成本相對地低；然而，这种算法的設計著重在实现的速度，由于它并没有对数据做任何分析，所以并不一定是最好的演算法（參考[LZMA](../Page/LZMA.md "wikilink")，[LZ77](../Page/LZ77与LZ78.md "wikilink")）。

## 演算法概念

### 編碼

編碼依據是先將資料的個別單一字元先建立成一個字串編碼表（CSET），再分別給予編號，例如原始資料為aabcaac，其字串編碼表為：

| 字串 | 碼 |
| -- | - |
| a  | 1 |
| b  | 2 |
| c  | 3 |

在隨後的編（解）碼過程，字串編碼表會隨著字串鍵入而逐漸擴大，如下：

| 字串  | 碼 |
| --- | - |
| a   | 1 |
| b   | 2 |
| c   | 3 |
| aa  | 4 |
| ab  | 5 |
| bc  | 6 |
| ca  | 7 |
| aac | 8 |

因此aabcaac壓縮後為112343。

### 解碼

解碼依據是將壓縮資料與原先字串編碼表對照，並將對應的字元放於一個暫存佇列中，依序將壓縮資料讀入，若為重複資料保存於佇列中，若不為重複資料，則擴充一個新的碼置於字串編碼表中。例如壓縮資料112343，其字串編碼表為：

| 字串 | 碼 |
| -- | - |
| a  | 1 |
| b  | 2 |
| c  | 3 |

步驟1：讀取「1」，查字串編碼表為「a」，則：

佇列Q：

|   |   |   |
| - | - | - |
| a | — | — |

輸出：

|   |
| - |
| a |

步驟2：接著，再讀取下一筆資料「1」，查字串編碼表為「a」，則：

佇列Q：

|   |   |   |
| - | - | - |
| a | a | — |

輸出：

|    |
| -- |
| aa |

因為aa在字串編碼表內沒有，因此擴充字串編碼表為：

| 字串 | 碼 |
| -- | - |
| a  | 1 |
| b  | 2 |
| c  | 3 |
| aa | 4 |

步驟3：此時將佇列Q(1)丟棄，將Q(2)移至Q(1)位置，讀取下一個資料「2」，則：

佇列Q：

|   |   |   |
| - | - | - |
| a | b | — |

輸出：

|     |
| --- |
| aab |

依上述步驟重複運作，最後可將壓縮資料112343還原成原始資料aabcaac。

## 另一種演算法說明

方法的主要關鍵是，它會在將要壓縮的文本中，自動地建立一個先前見過字串的字典。這些字典並不需要與這些壓縮的文本一起被傳輸，因為如果正確地編碼，解壓縮器也能夠依照壓縮器一樣的方法把它建出來，將會有完全與壓縮器字典在文本的同一點有同樣之字串。

字典會從256個條目開始，每一個是給每種可能的字元（單一位元字串）。每一次一個字串在字典中並被見過，那麼文字中，附加在單一字元後，接著該字串的一個較長文字，就會被儲存到字典中。

輸出是包含字典的[整數索引](https://zh.wikipedia.org/wiki/整數 "wikilink")。這些一開始每個是9位元，當字典成長時候，可以最大增加到16位元。一個特別的符號，保留來"清空字典"，會把字典回復到原先的256個條目，和9位元的索引。這對於壓縮文字中含有變動字元很有用處，因為在初期的資料在文字後部份並不會有太多用處。

可變動地增加索引大小的使用是Welch貢獻之一。其他是用來詳細說明儲存字典的一種有效率資料結構。

### 字典基礎壓縮算法的簡單範例

一般而言，字典基礎的壓縮會以標記（token）來取代片語（phrase）。如果標記得位元數量是少於片語所需的位元數目，那麼壓縮就如此產生。未壓縮的文本為：

  -
    I am dumb and because I am dumb, I can't even tell you that I am dumb.

壓縮過的文本：

  -
    $1 and because $1, I can't even tell you that $1. $1=\[I am dumb\]

這與有效實用上還很遙遠，但是它透過片語取代舉例說明了壓縮方法。

## 應用

這個方法在程式"壓縮"上變為廣泛地被使用，大約在1986年或多或少變成[Unix系統中的標準工具](https://zh.wikipedia.org/wiki/Unix "wikilink")（自很多法律和技術的原因消失之後）。數種其他受歡迎的壓縮工具也使用這種方法，或者是有緊密關係的方法。

於1987年，在它變為[GIF](../Page/GIF.md "wikilink")影像格式的一部份後，它變成非常廣泛地被使用。它也可以（可選擇）被使用於[TIFF](../Page/TIFF.md "wikilink")檔案。

在大部份的应用中，LZW压缩算法和当时已有且广为人知的方法相比，能够提供一个比较好的压缩率。lzw压缩算法是使用在电脑上的，第一个被广泛用于一般资料的压缩，对于大的英文文本，一般可以使用lzw将其压缩到大约原来大小的一半。另外，对于其他的种类资料的压缩，它在很多情况下也相当有用。

## 專利議題

對於LZW和類似的算法，在[美國和其他國家已經發行數個](https://zh.wikipedia.org/wiki/美國 "wikilink")[專利](https://zh.wikipedia.org/wiki/專利 "wikilink")。LZ78是包含在，由蘭波、立夫、柯亨（Cohn）和伊士曼（Eastman）指派給史佩瑞（Sperry）公司，後來是[優利系統](../Page/優利系統.md "wikilink")公司，申請於1981年8月10日，而且現在已經到期。

針對LZW算法有兩個美國專利：由維克特·S·米勒（Victor S. Miller）和馬克·N·維格曼（Mark N. Wegman）的，指派給[IBM](../Page/IBM.md "wikilink")，原本於1983年6月1日申請和衛曲的，讓受給史佩瑞公司，後來為優利系統公司，於1983年6月20日申請。

美國專利4,558,302是最常導致爭論的一個。優利系統在當時授權免除使用費的專利執照給[自由軟體和](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")[免費獲得的](../Page/免費軟體.md "wikilink")[私有軟體之開發者](https://zh.wikipedia.org/wiki/私有軟體 "wikilink")；該公司於1999年八月終止該執照。很多法律的專家已斷定該專利並不包含只能解壓縮LZW資料而無法壓縮它的各種裝置；因為這個原因，普遍使用的[Gzip](../Page/Gzip.md "wikilink")程式只能讀取.Z檔但是不能寫入。

Debian每週新聞以comp.compression討論串為基礎所作的報導，称在美國的優利系統專利於它被授權後的17年又10天之後的2002年12月20日到期。大部份其他來源宣稱該專利於它提出申請的20年後的2003年6月到期。

根據優利系統網站上的一個陳述，在英國、法國、德國、義大利、和日本之LZW相對應的專利，已經在2004年6月過期，而加拿大的專利於2004年7月7日到期。

IBM的美國專利已於2006年8月11日到期。

## 名稱問題

雖然LZW[縮寫](../Page/縮寫.md "wikilink")明顯地是意指Lempel、Ziv、和Welch這些發明者，某些人聲稱知识产权是給Ziv為第一位，因此這個方法必須稱為*Ziv-Lempel-Welch算法*，而不是*Lempel-Ziv-Welch算法*。

## 參考資料

  - 資料壓縮原理與實務。張真誠，蔡文輝著。松崗電腦圖書資料股份有限公司。1994/4/12。
  - Welch, T.A., "A Technique for High-Performance Data Compression" ,Computers, Vol. C-17, No.6; 1984, pp.8-19.
  - [美國專利4,558,302](http://patft.uspto.gov/netacgi/nph-Parser?Sect1=PTO1&Sect2=HITOFF&d=PALL&p=1&u=/netahtml/srchnum.htm&r=1&f=G&l=50&s1=4,558,302.WKU.&OS=PN/4,558,302&RS=PN/4,558,302)
  - ["LZW Data Compression", by Mark Nelson](http://www.dogma.net/markn/articles/lzw/lzw.htm)（DDJ Article with source code）
  - [Sad day... GIF patent dead at 20](http://www.kyz.uklinux.net/giflzw.php)（簡短且可能過於簡化的簡單故事內容，更多歷史細節可以在[GIF](../Page/GIF.md "wikilink")條目找到）
  - [*Bringing back LZW compression* by Nathan Willis](https://web.archive.org/web/20060323035039/http://software.newsforge.com/software/05/06/23/2150233.shtml?tid=130)
  - [LZW函式庫，論文，以及其他資源的列表](http://www.compression-links.info/LZW)

[Category:无损压缩算法](https://zh.wikipedia.org/wiki/Category:无损压缩算法 "wikilink")