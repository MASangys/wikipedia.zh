**Motorola S-record**是[摩托罗拉](../Page/摩托罗拉.md "wikilink")公司所創立的檔案格式，可以將二進制的資訊轉換為用[ASCII](../Page/ASCII.md "wikilink")文字表示的[十六进制](../Page/十六进制.md "wikilink")資料，此檔案格式也稱為**SRECORD**、**SREC**、**S19**、**S28**、**S37**或**MOT**。此檔案格式常用在微處理器的[闪存](../Page/闪存.md "wikilink")資料寫入，[EPROM](../Page/可擦除可規劃式唯讀記憶體.md "wikilink")、[EEPROM的資料寫入](../Page/電子抹除式可複寫唯讀記憶體.md "wikilink")，或是其他可編程邏輯元件的編程寫入。一般的應用中，會用[編譯器](../Page/編譯器.md "wikilink")或是[組譯器將程式的](https://zh.wikipedia.org/wiki/組譯器 "wikilink")[原始碼](https://zh.wikipedia.org/wiki/原始碼 "wikilink")（可能是[C語言或是](https://zh.wikipedia.org/wiki/C語言 "wikilink")[組合語言](https://zh.wikipedia.org/wiki/組合語言 "wikilink")）轉換為[機器碼](https://zh.wikipedia.org/wiki/機器碼 "wikilink")，再輸出為S-record或其他格式檔案。燒錄器可以讀取這些檔案，將機器碼寫入[非揮發性記憶體](../Page/非揮發性記憶體.md "wikilink")中，或是截入到目的系統中，以便執行。

## 簡介

S-record檔案格式是[摩托罗拉](../Page/摩托罗拉.md "wikilink")公司在1970年代中期，為了[摩托罗拉6800](../Page/摩托罗拉6800.md "wikilink")處理器所創的檔案格式。針對摩托罗拉6800處理器及其他[嵌入式系统](../Page/嵌入式系统.md "wikilink")的[软件开发工具可以將可執行檔及資料轉換為S](https://zh.wikipedia.org/wiki/软件开发工具 "wikilink")-record格式。PROM燒錄器可以讀取S-record，燒錄到嵌入式系统的PROM或EPROM中。

### 其他HEX格式

也存在類似用途的其他ASCII檔案格式。BPNF、BHLF及B10F是早期的二進制格式，不過檔案較大，也沒有可變性。十六進制格式用一個字元表示四個位元，相較於二進制格式用一個字元表示一個位元，檔案比較精簡。許多十六進制格式（包括S-record）的可變性較大，其中可以包括位址的資訊，因此其內容可以只對應PROM的一部份。格式常用在Intel的處理器上。Tek Hex是另一種HEX格式，其中包括了除錯用的[符號表](https://zh.wikipedia.org/wiki/符號表 "wikilink")。

## 格式

### 記錄結構

|   |      |       |    |    |     |
| - | ---- | ----- | -- | -- | --- |
| S | 記錄種類 | 位元組數量 | 位址 | 資料 | 檢查碼 |

SREC格式的檔案包括一組的ASCII字元記錄。記錄從左到右的結構如下\[1\]：

1.  **記錄種類**，二個字元，第一個字元為大寫的S（0x53），後面是數字字元的0至9，定義記錄的種類。
2.  **位元組數量**，由16進制的二位數組成，表示記錄中剩下的位元組數（16進制二位數表示一個位元組），此欄位的最小值為3，對應16進制的位址欄位加上一個位元組的檢查碼，最大值為255（0xFF）。
3.  **位址**，依記錄種類不同，位址可能是四位／六位／八位的16進制數字，位址會以[大端序](../Page/字节序.md "wikilink")（高位元組放前面）的格式記錄。
4.  **資料**，由2*n*個16進制數字組成。若是S1／S2／S3種類的記錄，每筆記錄的資料一般最多是32個位元組，可以在每行80個字的[終端機螢幕顯示](https://zh.wikipedia.org/wiki/終端機 "wikilink")，不過記錄資料若只有16個位元組，在視覺上比較容易識別
5.  **檢查碼**，由2個16進制數字組成，是位元組數量、位址和資料對應的位元組相加後，取，再計算[一補數](https://zh.wikipedia.org/wiki/一補數 "wikilink")，以下有計算檢查的例子。

### 文字列的結束字元

SREC記錄之間會用一個或是多個ASCII字元的行分隔字元隔開，因此每一個記錄就會佔一行。此作法透過直觀的記錄來提高易讀性，而且在HEX記錄之間的填充也可以提高[語法分析器](../Page/語法分析器.md "wikilink")的效率。

產生HEX的程式一般會依其[操作系统](../Page/操作系统.md "wikilink")的習慣使用對應的行分隔字元。例如，Linux程式會用單一的LF字元（ [換行](../Page/換行.md "wikilink")符號，16進制`0A`）作為一行的結尾\[2\]，但Windows程式會用CR字元（[回车符](../Page/回车符.md "wikilink")，16進制`0D`）之後接著LF字元，作為一行的結尾。

### 記錄種類

以下的表格說明十種可能出現的S-records，其中的S4保留，目前沒有定義，S6一開始也是保留，後來有新的定義。

<table>
<thead>
<tr class="header">
<th><p>記錄<br />
欄位</p></th>
<th><p>記錄用途</p></th>
<th><p>位址<br />
欄位</p></th>
<th><p>資料<br />
欄位</p></th>
<th><p>記錄<br />
說明</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>S0</strong></p></td>
<td><p>檔案頭</p></td>
<td><p>16-bit<br />
"0000"</p></td>
<td></td>
<td><p>此記錄會包括許多設備商定義的ASCII文字，每個位元組由二個16進制數字表示。此欄位的資料常會以<a href="../Page/C风格字符串.md" title="wikilink">C风格字符串</a>的方式表示。其中的文字資料可能會包括：檔案／模組名稱，版本編號，日期／時間，產品名稱。PCB上的記憶體IC名稱、版權說明等。[3]</p></td>
</tr>
<tr class="even">
<td><p><strong>S1</strong></p></td>
<td><p>資料</p></td>
<td><p>16-bit<br />
位址</p></td>
<td></td>
<td><p>此記錄是啟始位址是16位元的資料[4]，一般會用在8-bit的微處理器中，例如AVR、PIC、8051、68xx、6502、80xx、Z80。其資料欄位的位元組數量是「位元組數量」欄位的值減3（2個位元組對應16位元的位址，1個位元組對應檢查碼）。</p></td>
</tr>
<tr class="odd">
<td><p><strong>S2</strong></p></td>
<td><p>Data</p></td>
<td><p>24-bit<br />
Address</p></td>
<td></td>
<td><p>此記錄是啟始位址是24位元的資料[5]。其資料欄位的位元組數量是「位元組數量」欄位的值減4（3個位元組對應24位元的位址，1個位元組對應檢查碼）。</p></td>
</tr>
<tr class="even">
<td><p><strong>S3</strong></p></td>
<td><p>Data</p></td>
<td><p>32-bit<br />
Address</p></td>
<td></td>
<td><p>此記錄是啟始位址是32位元的資料This record contains data that starts at a 32-bit address.[6]，一般會用在32-bit的微處理器中，例如ARM和680x0其資料欄位的位元組數量是「位元組數量」欄位的值減5（4個位元組對應32位元的位址，1個位元組對應檢查碼）。</p></td>
</tr>
<tr class="odd">
<td><p><strong>S4</strong></p></td>
<td><p>保留</p></td>
<td></td>
<td></td>
<td><p>此記錄保留</p></td>
</tr>
<tr class="even">
<td><p><strong>S5</strong></p></td>
<td><p>個數</p></td>
<td><p>16位元<br />
計數值</p></td>
<td></td>
<td><p>此欄位是可有可無的欄位，其中有<strong>S1</strong> / <strong>S2</strong> / <strong>S3</strong>記錄的數量，用16位元來計數[7]。此欄位適用於記錄數量小於等於65,535（0xFFFF）的情形，若是超過，會改用<strong>S6</strong>欄位。</p></td>
</tr>
<tr class="odd">
<td><p><strong>S6</strong></p></td>
<td><p>個數</p></td>
<td><p>24位元<br />
計數值</p></td>
<td></td>
<td><p>此欄位是可有可無的欄位，其中有<strong>S1</strong> / <strong>S2</strong> / <strong>S3</strong>記錄的數量，用24位元來計數。此欄位可以適用於記錄數量大於等於65,536（0x010000），但小於等於16,777,215（0xFFFFFF）。這個較新的欄位是最新的變更[8]。</p></td>
</tr>
<tr class="even">
<td><p><strong>S7</strong></p></td>
<td><p>起始位址<br />
（檔案終止符）</p></td>
<td><p>32位元<br />
位址</p></td>
<td></td>
<td><p>此欄位用32位元記錄啟始的位址[9][10]，用來作為一連串<strong>S3</strong>記錄的結尾。若SREC檔案只用來燒錄記憶體設備，不需執行位置的資料，此處的位址可以用0代替。</p></td>
</tr>
<tr class="odd">
<td><p><strong>S8</strong></p></td>
<td><p>起始位址<br />
（檔案終止符）</p></td>
<td><p>24位元<br />
位址</p></td>
<td></td>
<td><p>此欄位用24位元記錄啟始的位址[11][12]，用來作為一連串<strong>S2</strong>記錄的結尾。若SREC檔案只用來燒錄記憶體設備，不需執行位置的資料，此處的位址可以用0代替。</p></td>
</tr>
<tr class="even">
<td><p><strong>S9</strong></p></td>
<td><p>起始位址<br />
（檔案終止符）</p></td>
<td><p>16位元<br />
位址</p></td>
<td></td>
<td><p>此欄位用16位元記錄啟始的位址[13][14]，用來作為一連串<strong>S1</strong>記錄的結尾。若SREC檔案只用來燒錄記憶體設備，不需執行位置的資料，此處的位址可以用0代替。</p></td>
</tr>
</tbody>
</table>

### 記錄順序

有些Unix文件中提到「檔案中S-records的順序不重要，不應假設其順序。」\[15\]，不過大部份產生SREC的軟體都會按照次序排列S-records。一般的檔案順序會由一個（選擇性）的S0檔頭記錄，之後有一筆或是多筆S1／S2／S3資料記錄，可能有一個S5／S6記錄來說明記錄個數，最後由一個適當的S7／S8／S9記錄作結束。

  - S19-格式，16位元位址的記錄

<!-- end list -->

1.  S0
2.  S1（一筆或多筆記錄）
3.  S5（選擇性的記錄）
4.  S9

<!-- end list -->

  - S28-格式，24位元位址的記錄

<!-- end list -->

1.  S0
2.  S2（一筆或多筆記錄）
3.  S5（選擇性的記錄）
4.  S8

<!-- end list -->

  - S37-格式，32位元位址的記錄

<!-- end list -->

1.  S0
2.  S3（一筆或多筆記錄）
3.  S5（選擇性的記錄）
4.  S7

### 限制

**記錄長度**：Unix手冊中提到：「每個S-record記錄的長度小於等於78個字元」。手冊進一步的限制資料欄位字元限制在64個字元（32個位元組）以內\[16\]。用8個字元表示位址的資料欄位，若資料為64個字元，總長度為78個字元（2+2+8+64+2，此計算省略了記錄尾端的終止符號或是換行符號)。這個檔案可以用80字元寬的列表機列印。在手冊下面有說明：「此說明只是針對記錄總長度在78個字元的情形，不一定適用於所有情形。」\[17\]。若省略此限制，S-record的最大長度為514字元：記錄種類2個字元，位元組數量2個位元（其值會是`0xFF=255`），以及位址、資料及檢查碼共2\*255個字元。而且需要額外的空間儲存換行符號以及字串結束字元。若記錄長度太長，會有一些問題：「Motorola S-record格式定義允許一行到514個字元，另外加上行終結符號。EPROM燒錄器需要有夠大的行暫存器來處理這麼長的資料，但有這麼大暫存器的EPROM燒錄器不多。」\[18\]

**資料欄位**：有些文件建議資料欄位最長到32位元組的資料（64個字元）\[19\]。S0／S1／S2／S3的最小資料欄位長度為0，最大資料資料欄位長度視位址欄位長度而定。因為位元組數量最大值是255（0xFF），資料欄位的長度為255減1（檢查碼）再減去位址欄位的位元組長度)。S0／S1 records最多可以到252位元組的資料，S2 record最多可以到251位元組的資料，S3 record最多可以到250位元組的資料。

**註解**：SREC檔案格式不支援註解，有些軟體會省略開頭不是S的資料行，也會省略檢查碼之後的欄位，有時會有這些部份來寫註解（但沒有相容性）。例如CCS PIC編譯器支援在檔案最前面或是最後面的行，前面加上分號當成註解，其手冊提到：「有些燒錄器（尤其是MPLAB）不喜歡在檔案最前面出現註解，因此我們有選項，可以把註解放在檔案後面。\[20\]

## 例子

  - 不同顏色的含義

### 檢查碼的計算

以下是一個記錄的例子：

<span style="background-color: #FFCCCC">`S1`</span><span style="background-color: #CCFFCC">`13`</span><span style="background-color: #CCCCFF">`7AF0`</span><span style="background-color: #CCFFFF">`0A0A0D00000000000000000000000000`</span><span style="background-color: #CCCCCC">`61`</span>

其檢查碼計算方式如下：

1.  加總：將每個位元組相加 +  +  = `19E` （16進制）
2.  取最低位元組：總和的最低位元組 = `9E`（16進制）。
3.  取補數：計算最低位元組的[一補數](https://zh.wikipedia.org/wiki/一補數 "wikilink") = （16進制）。

### 16位元的記憶體位址

<span style="background-color: #FFCCCC">`S0`</span><span style="background-color: #CCFFCC">`0F`</span><span style="background-color: #CCCCFF">`0000`</span><span style="background-color: #CCFFFF">`68656C6C6F20202020200000`</span><span style="background-color: #CCCCCC">`3C`</span>

<span style="background-color: #FFCCCC">`S1`</span><span style="background-color: #CCFFCC">`1F`</span><span style="background-color: #CCCCFF">`0000`</span><span style="background-color: #CCFFFF">`7C0802A6900100049421FFF07C6C1B787C8C23783C60000038630000`</span><span style="background-color: #CCCCCC">`26`</span>

<span style="background-color: #FFCCCC">`S1`</span><span style="background-color: #CCFFCC">`1F`</span><span style="background-color: #CCCCFF">`001C`</span><span style="background-color: #CCFFFF">`4BFFFFE5398000007D83637880010014382100107C0803A64E800020`</span><span style="background-color: #CCCCCC">`E9`</span>

<span style="background-color: #FFCCCC">`S1`</span><span style="background-color: #CCFFCC">`11`</span><span style="background-color: #CCCCFF">`0038`</span><span style="background-color: #CCFFFF">`48656C6C6F20776F726C642E0A00`</span><span style="background-color: #CCCCCC">`42`</span>

<span style="background-color: #FFCCCC">`S5`</span><span style="background-color: #CCFFCC">`03`</span><span style="background-color: #CCCCFF">`0003`</span><span style="background-color: #CCFFFF"></span><span style="background-color: #CCCCCC">`F9`</span>

<span style="background-color: #FFCCCC">`S9`</span><span style="background-color: #CCFFCC">`03`</span><span style="background-color: #CCCCFF">`0000`</span><span style="background-color: #CCFFFF"></span><span style="background-color: #CCCCCC">`FC`</span>

## 相關條目

  - ，不同編碼演算法的比較

  - ，Intel的HEX檔案格式

  - ，Tektronix的HEX檔案格式

## 參考資料

## 延伸閱讀

  - Appendix A, "S Record Information", page A-1, states, "For compatibility with teletypewriters, some programs may limit the number of \[data\] bytes to as few as 28 (56 printable characters in the S-record)."

  -
  -
## 外部連結

  - [RFC 4194 - The S Hexdump Format](https://tools.ietf.org/html/rfc4194) - IETF

<!-- end list -->

  - 軟體

<!-- end list -->

  - [SRecord](http://srecord.sourceforge.net/) is a collection of tools for manipulating SREC format files.
  - [BIN2MOT](http://www.keil.com/download/docs/4.asp), BINARY to Motorola S-Record file converter utility.
  - [SRecordizer](https://github.com/BigWinston/SRecordizer/wiki) is a tool for viewing, editing, and error checking S19 format files.
  - [bincopy](https://pypi.python.org/pypi/bincopy) is a python package for manipulating SREC format files.

[Category:嵌入式系统](https://zh.wikipedia.org/wiki/Category:嵌入式系统 "wikilink") [Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")

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