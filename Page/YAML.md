**YAML**（，尾音類似*camel*駱駝）是一個可讀性高，用來表達資料[序列化](../Page/序列化.md "wikilink")的格式。YAML參考了其他多種語言，包括：[C語言](https://zh.wikipedia.org/wiki/C語言 "wikilink")、[Python](../Page/Python.md "wikilink")、[Perl](../Page/Perl.md "wikilink")，並從[XML](../Page/XML.md "wikilink")、電子郵件的數據格式（RFC [2822](http://www.rfc-editor.org/rfc/rfc2822.txt)）中獲得靈感。Clark Evans在2001年首次發表了這種語言\[1\]，另外Ingy döt Net與Oren Ben-Kiki也是這語言的共同設計者\[2\]。目前已經有數種程式語言或腳本語言支援（或者說解析）這種語言。

*YAML*是"YAML Ain't a Markup Language"（YAML不是一種[标记語言](https://zh.wikipedia.org/wiki/标记語言 "wikilink")）的[遞迴縮寫](https://zh.wikipedia.org/wiki/遞迴縮寫 "wikilink")。在開發的這種語言時，''YAML ''的意思其實是："Yet Another Markup Language"（仍是一種[标记語言](https://zh.wikipedia.org/wiki/标记語言 "wikilink")）\[3\]，但為了強調這種語言以數據做為中心，而不是以标记語言為重點，而用反向缩略语重新命名。

## 功能

YAML的語法和其他高階語言類似，並且可以簡單表達清單、散列表，純量等資料形態。\[4\]它使用空白符號縮排和大量依賴外觀的特色，特別適合用來表達或編輯資料結構、各種設定檔、傾印除錯內容、文件大綱（例如：許多電子郵件標題格式和YAML非常接近）。儘管它比較適合用來表達階層式（hierarchical model）的資料結構，不過也有精緻的語法可以表示關聯性（relational model）的資料。\[5\]由於YAML使用空白字元和分行來分隔資料，使得它特別適合用[grep](https://zh.wikipedia.org/wiki/grep "wikilink")／[Python](../Page/Python.md "wikilink")／[Perl](../Page/Perl.md "wikilink")／[Ruby](../Page/Ruby.md "wikilink")操作。其讓人最容易上手的特色是巧妙避開各種封閉符號，如：引號、各種括號等，這些符號在巢狀結構時會變得複雜而難以辨認。

## 範例

### 簡單的文件

資料結構可以用類似大綱的縮排方式呈現

``` yaml
---
receipt:     Oz-Ware Purchase Invoice
date:        2012-08-06
customer:
    given:   Dorothy
    family:  Gale

items:
    - part_no:   A4786
      descrip:   Water Bucket (Filled)
      price:     1.47
      quantity:  4

    - part_no:   E1628
      descrip:   High Heeled "Ruby" Slippers
      size:      8
      price:     133.7
      quantity:  1

bill-to:  &id001
    street: |
            123 Tornado Alley
            Suite 16
    city:   East Centerville
    state:  KS

ship-to:  *id001

specialDelivery:  >
    Follow the Yellow Brick
    Road to the Emerald City.
    Pay no attention to the
    man behind the curtain.
...
```

注意在YAML中，字串不一定要用雙引號標示。另外，在縮排中空白字元的數目並不是非常重要，只要相同階層的元素左側對齊就可以了（不過不能使用TAB字元）。這個文件的頂層由七個鍵值組成：其中一個鍵值"items"，是兩個元素構成的[陣列](https://zh.wikipedia.org/wiki/陣列 "wikilink")（或稱[清單](https://zh.wikipedia.org/wiki/清單 "wikilink")），這清單中的兩個元素同時也是包含了四個鍵值的雜湊表。文件中重複的部分用這個方法處理：使用錨點（**&**）和引用（**\***）標籤將"bill-to"雜湊表的內容複製到"ship-to"雜湊表。也可以在文件中加入選擇性的空行，以增加可讀性。在一個檔案中，可同時包含多個文件，並用"**`---`**"分隔。選擇性的符號"**`...`**"可以用來表示檔案結尾（在利用串流的通訊中，這非常有用，可以在不關閉串流的情況下，發送結束訊號）。

## 語言的構成元素

### YAML的基本元件

YAML提供縮排／區塊以及內置（inline）兩種格式，來表示清單和[雜湊表](https://zh.wikipedia.org/wiki/雜湊表 "wikilink")。以下展示幾種YAML的基本原件。

#### 清單（[陣列](https://zh.wikipedia.org/wiki/陣列 "wikilink")）

習慣上清單比較常用區塊格式（block format）表示，也就是用短槓+空白字元作為起始。

``` yaml
 --- # 最喜愛的電影
 - Casablanca
 - North by Northwest
 - Notorious
```

另外還有一種內置格式（inline format）可以選擇──用方括號圍住，並用逗號+空白區隔（類似[JSON的語法](https://zh.wikipedia.org/wiki/JavaScript_Object_Notation "wikilink")）。\[6\]

``` yaml
 --- # 購物清單
 [milk, pumpkin pie, eggs, juice]
```

#### [雜湊表](https://zh.wikipedia.org/wiki/雜湊表 "wikilink")

鍵值和資料由冒號及空白字元分開。區塊形式（常使用與YAML數據文檔中）使用縮進和換行符分隔**key: value**對。內置形式（常使用與YAML數據串流中）在大括號中使用逗號+空白字元分隔**key: value**對。

``` yaml
 --- # 區塊形式
   name: John Smith
   age: 33
 --- # 內置形式
 {name: John Smith, age: 33}
```

#### 區塊的字符

再次強調，字串不需要包在引號之內。有兩種方法書寫多行文字（multi-line strings），一種可以保存新行（使用`|`字元），另一種可以摺疊新行（使用`>`字元）。

##### 保存新行(Newlines preserved)

``` yaml
data: |                                     # 譯者注：這是一首著名的五行民謠(limerick)
   There once was a man from Darjeeling     # 這裡曾有一個人來自大吉嶺
   Who got on a bus bound for Ealing        # 他搭上一班往伊靈的公車
       It said on the door                  # 門上這麼說的
       "Please don't spit on the floor"     # "請勿在地上吐痰"
   So he carefully spat on the ceiling      # 所以他小心翼翼的吐在天花板上
```

根據設定，前方的引領空白符號（leading white space）必須排成條狀，以便和其他資料或是行為（如範例中的縮排）明顯區分。

##### 摺疊新行(Newlines folded)

``` yaml
data: >
   Wrapped text         # 摺疊的文字
   will be folded       # 將會被收
   into a single        # 進單一一個
   paragraph            # 段落

   Blank lines denote   # 空白的行代表
   paragraph breaks     # 段落之間的區隔
```

和保存新行不同的是，換行字元會被轉換成空白字元。而引領空白字元則會被自動消去。

#### 階層化的元素

##### 於清單中使用雜湊表

``` yaml
- {name: John Smith, age: 33}
- name: Mary Smith
  age: 27
```

##### 於雜湊表中使用清單

``` yaml
men: [John Smith, Bill Jones]
women:
  - Mary Smith
  - Susan Williams
```

### YAML的進階元件

這部分算是一個後續的討論，在比較各種數資料列語言時，YAML最常被提到的特色有兩個：關係樹和資料形態。

#### 樹狀結構之間的交互參照

##### 資料合併和參考

為了維持文件的簡潔，並避免資料輸入的錯誤，YAML提供了結點參考（\*）和雜湊合併（\<\<）參考到其他結點標籤的錨點標記（&）。參考會將樹狀結構加入錨點標記的內容，並可以在所有資料結構中運作（可以參考上面"ship-to"的範例）合併只有雜湊表可以使用，可以將鍵值自錨點標記複製到指定的雜湊表中。

當資料被instantiate合併和參考會被剖析器自動展開。

``` yaml
#眼部雷射手術之標準程序
---
- step:  &id001                  # 定義錨點標籤 &id001
    instrument:      Lasik 2000
    pulseEnergy:     5.4
    pulseDuration:   12
    repetition:      1000
    spotSize:        1mm

- step:
     <<: *id001                  # 合併鍵值：使用在錨點標籤定義的內容
     spotSize:       2mm         # 覆寫"spotSize"鍵值

- step:
     <<: *id001                  # 合併鍵值：使用在錨點標籤定義的內容
     pulseEnergy:    500.0       # 覆寫鍵值
     alert: >                    # 加入其他鍵值
           warn patient of
           audible pop
```

#### 資料形態

由於自動判定資料形態的功能，嚴格型態（也就是使用者有宣告的資料形態）很難在大部分的YAML文件中看到。資料型態可以被區分成三大類：原碼（core），定義（defined），使用者定義（user-defined）。原碼可以自動被解析器分析（例如：浮點數，整數，字串，清單，映射，...）。有一些進階的資料形態──例如位元資料──在YAML中有被「定義」，但不是每一種解析器都有支援。最後，YAML支援使用者自定的區域變數，包括：自訂的類別，結構或基本型態（例如：四倍精度的浮點數）。

##### 強迫轉型

YAML的自動判定資料形態是哪一種實體。但有時使用者會想要將資料強迫轉型成自定的某種型態。最常見的狀況是字串，有時候可能看起來像數字或布林值，這種時候可以使用雙引號，或是使用嚴格型態標籤。

``` yaml
---
a: 123                     # 整數
b: "123"                   # 字串（使用雙引號）
c: 123.0                   # 浮點數
d: !!float 123             # 浮點數，使用!!表達的嚴格型態
e: !!str 123               # 字串，使用嚴格型態
f: !!str Yes               # 字串，使用嚴格型態
g: Yes                     # 布林值"真"
h: Yes we have No bananas  # 字串（包含"Yes"和"No"）
```

##### 其他特殊資料形態

除了一般的資料形態之外，使用者也可以使用一些較為進階的型態，但不保證可被每種解析器分析。使用時和強迫轉型類似，要在形態名稱之前加上兩個驚嘆號（\!\!）。有幾種重要的形態在本篇沒有討論，包括[集合](https://zh.wikipedia.org/wiki/集合 "wikilink")（sets），有序映照（ordered maps），[時間戳記](https://zh.wikipedia.org/wiki/時間戳記 "wikilink")（timestamps）以及十六進位資料（hexadecimal）。下面這個範例則是位元資料（binary）

``` yaml
---
picture: !!binary |
 R0lGODlhDAAMAIQAAP//9/X
 17unp5WZmZgAAAOfn515eXv
 Pz7Y6OjuDg4J+fn5OTk6enp
 56enmleECcgggoBADs=mZmE
```

##### 使用者自行擴充的資料形態

許多YAML的實現允許使用者自訂資料形態。在將一個物件序列化時，這個方法還頗方便的。某些區域資料形態可能不存在預設的資料形態中，不過這種型態在特定的YAML應用程式中是有定義的。這種區域資料形態用驚嘆號（** `!` **）表示。

``` yaml
---
myObject:  !myClass { name: Joe, age: 15}
```

### 語法

在[yaml.org](http://yaml.org)（英文）可以找到輕巧而好用的[小抄](http://yaml.org/refcard.html)（亦是用YAML表示）及[格式說明](http://yaml.org/spec/)。下面的內容，是關於基本元件的摘要。

  - YAML使用可列印的[Unicode字元](https://zh.wikipedia.org/wiki/Unicode "wikilink")，可使用[UTF-8](../Page/UTF-8.md "wikilink")或[UTF-16](https://zh.wikipedia.org/wiki/UTF-16 "wikilink")。
  - 使用空白字元為文件縮排來表示結構；不過不能使用跳格字元(TAB)。
  - 註解由井字號（''' \# '''）開始，可以出現在一行中的任何位置，而且範圍只有一行（也就是一般所謂的單行註解）
  - 每個清單成員以單行表示，並用短槓+空白（''' -   **）起始。或使用[方括號](https://zh.wikipedia.org/wiki/括號 "wikilink")（** \[ \] **），並用[逗號](../Page/逗號.md "wikilink")+空白（** ,   '''）分開成員。
  - 每個雜湊表的成員用冒號+空白（''' :   **）分開鍵值和內容。或使用大括號（** {   } **），並用逗號+空白（** ,   '''）分開。
      - 雜湊表的鍵值可以用[問號](https://zh.wikipedia.org/wiki/問號 "wikilink") (''' ? ''')起始，用來明確的表示多個詞彙組成的鍵值。
  - 字串平常並不使用引號，但必要的時候可以用[雙引號](https://zh.wikipedia.org/wiki/雙引號 "wikilink") (''' " **)或[單引號](https://zh.wikipedia.org/wiki/單引號 "wikilink") (** ' ''')框住。
      - 使用雙引號表示字串時，可用倒斜線（''' \\ '''）開始的跳脫字元（這跟[C語言類似](https://zh.wikipedia.org/wiki/C語言 "wikilink")）表示特殊字元。
  - 區塊的字串用縮排和修飾詞（非必要）來和其他資料分隔，有新行保留（preserve）（使用符號''' | **）或新行摺疊（flod）（使用符號** \> '''）兩種方式。
  - 在單一檔案中，可用連續三個[連字號](https://zh.wikipedia.org/wiki/連字號 "wikilink")（**---**）區分多個檔案。
      - 另外，還有選擇性的連續三個點號（''' ... '''）用來表示檔案結尾。
  - 重複的內容可使從參考標記[星號](../Page/星號.md "wikilink") (''' \* **)複製到錨點標記（** & '''）。
  - 指定格式可以使用兩個[驚嘆號](https://zh.wikipedia.org/wiki/驚嘆號 "wikilink") (''' \!\! ''')，後面接上名稱。
  - 檔案中的單一文件可以使用**[指導指令](https://zh.wikipedia.org/wiki/編譯程式定向 "wikilink")**，使用方法是[百分比符號](https://zh.wikipedia.org/wiki/百分比符號 "wikilink")(''' % ''')。有兩個[指導指令在YAML](https://zh.wikipedia.org/wiki/編譯程式定向 "wikilink")1.1版中被定義：
      - %YAML 指導指令，用來識別文件的YAML版本。
      - %TAG 指導指令，被用在URI的字首標記。這個方法在標記節點的型態時相當有用。

YAML在使用逗號及冒號時，後面都必須接一個空白字元，所以可以在字串或數值中自由加入分隔符號（例如：5**,**280或http**:**//www.wikipedia.org）而不需要使用引號。

另外還有兩個特殊符號在YAML中被[保留](../Page/保留字.md "wikilink")，有可能在未來的版本被使用--（''' @ **）和（** \` '''）。

## 與其他数据序列化格式比較

雖然YAML是參考[JSON](../Page/JSON.md "wikilink")，[XML](../Page/XML.md "wikilink")和[SDL等語言](https://zh.wikipedia.org/wiki/SDL "wikilink")，不過跟這些語言比起來，YAML仍有自己的特色。

### JSON

JSON的語法是YAML1.2版的子集\[7\],，同時非常*接近*\[8\] YAML1.0與1.1版的子集，因此大部分的JSON文件都可以被YAML的剖析器剖析。\[9\]這是因為JSON的語法結構和YAML的內置格式相同。雖然大範圍的分層也可以使用類似JSON的內置格式，不過YAML標準並不建議這樣使用，除非這樣編寫能讓文件可讀性增加。YAML的許多擴展在JSON是找不到的，如：進階資料形態、關係錨點、字串不需要雙引號、映射資料形態會儲存鍵值的順序。

### [XML和SDL](https://zh.wikipedia.org/wiki/可擴展标记語言 "wikilink")

XML和SDL標籤概念，在YAML中是找不到的。*對於資料結構序列*（儘管這是有爭議的），標籤屬性的特色就是可以將資料及複雜資料附加資訊分離，並將各種原生資料結構（如：雜湊表、陣列）用同一種語言表示。YAML則以資料的可擴展性作為替代。（包括為了模擬物件的類別型態）在YAML本身的規範中，並沒有類似XML的語言定義文件剛要（language-defined document schema descriptors）──例如驗證自己本身的結構是否正確的文件。不過，[YAML綱要描述語言](https://zh.wikipedia.org/wiki/YAML綱要描述語言 "wikilink")（YAML schema descriptor language）是[存在](http://www.kuwata-lab.com/kwalify/)的。另外還有[YAXML](https://zh.wikipedia.org/wiki/YAXML "wikilink")──用XML描述YAML的結構──可以讓[XML Schema與](../Page/XML_Schema.md "wikilink")[XSLT](../Page/XSLT.md "wikilink")轉換程式應用在YAML之上。況且，在一般使用的情況下，YAML豐富的定義型態之語法已經提供了足夠的方式，來辨認YAML文件是否正確。

### 缩进劃界

由於YAML的運作主要依賴大綱式的缩进來決定結構，這有效解決了[界定符衝突](https://zh.wikipedia.org/wiki/界定符衝突 "wikilink")（Delimiter collision）的問題。YAML的資料形態不依賴引號之特點，使的YAML文件可以利用區塊，輕易的插入各種其他類型文件，如：XML、SDL、JSON，甚至插入另一篇YAML。

``` yaml
---
example: >
        HTML goes into YAML without modification
message: |

        <blockquote style="font: italic 12pt Times">
        <p>"Three is always greater than two,
           even for large values of two"</p>
        <p>--Author Unknown</p>
        </blockquote>
```

相反的，要將YAML置入XML或SDL中時，需要將所有空白字元和位勢符號（potential sigils，如：**\<**,**\>**和**&**）轉換成實體語法；要將YAML置入JSON中，需要用引號框住，並轉換內部的所有引號。

### 非階層式的資料模型

跟SDL、JSON等，每個子結點只能有單一一個父節點的階層是模型不同，YAML提供了一個簡單的關係體制，可以從樹狀結構的其他地方，重複相同的資料，而不必顯示那些冗餘的結構。這點和XML中的IDRef類似\[10\]YAML剖析器在將YAML轉換成物件時，會自動將那些參考資料的結構展開，所以程式在使用時並不會查覺到哪些資料是解碼自這種結構。XML則不會將這種結構展開。這種表示法可以增加程式的可讀性，並且，在那種『大部分參數維持和上次相同，只有少數改變』的設定檔及通訊協定中，可以減少數據輸入錯誤。一個例子是：『送貨地點』和『購買地點』在發票的紀錄中幾乎都是相同的資料。

### 實際的考量

YAML是「行導向的」，因此，就算想由現有程序的混亂輸出，轉換成YAML格式，並保留大部分的原始文件之外觀，也非常簡單。因為他不需要平衡封閉的標籤、括弧及引號，可以從很簡單的利用程式，從報表產生YAML。同樣，空格分隔可讓使用行導向的命令如：grep、Awk、perl、ruby，和Python，來應急性的過濾YAML文件時更加方便。

特別是與標記語言不同的，連續的YAML區塊導向往往是格式良好的YAML文件本身。這使得很容易撰寫那種「在開始提取的具體記錄之前，不需要'讀取全部文件內容'」的解析器（通常需要平衡起始和關閉標籤、尋找引號和跳脫字符）。當處理一個單一靜態的，整個存在記憶體中的資料結構將很大，或為提取一個項目來重建的整個結構，代價相當昂貴的記錄檔，這種特性是相當方便的。

值得討論的是，儘管它的縮排方式似乎複雜化了深度很大的巢狀層次， YAML將縮排視為一個單一的空白，這可能會取得比其他標記語言更好的壓縮比。此外，極深的縮排可以完全避免的是： (1)使用“內置格式”（即簡稱類JSON格式）而無縮排；或 (2)使用關聯錨點展開階層以形成一個攤平的格式，使得YAML解析器能透明地重組成完整的數據結構。

#### 安全性

YAML是純粹用來表達資料的語言，所以內部不會存[代碼注射的可執行命令](https://zh.wikipedia.org/wiki/代碼注射 "wikilink")。\[11\]這代表剖析器會相當（至少）安全的解析文件，而不用擔心潛在與執行命令相關的安全漏洞。舉例來說，[JSON](../Page/JSON.md "wikilink")是[JavaScript](../Page/JavaScript.md "wikilink")的子集，因此可能有人想使用JavaScript本身的剖析器直接eval，不過这样一来就造成許多[代碼注射的漏洞](https://zh.wikipedia.org/wiki/代碼注射 "wikilink")。雖然在所有資料序列語言中，安全解析本質上是可能的，但可執行性卻正是這樣一個惡名昭彰的缺陷；而YAML缺乏相關的命令語言，可能是一個相對安全的利益。

### 資料處理和呈現

XML\[12\]\[13\]和YAML規範\[14\]提供非常不同的*邏輯*模型來進行資料結點的展現、處理及儲存。

## 實現與函式庫

### 移植性

簡單的YAML檔案（例如：簡單的鍵值對）不需要完整的YAML剖析器，便可以被[正則表達式解析](https://zh.wikipedia.org/wiki/正則表達式 "wikilink")。許多常用的程式語言──純用某個語言，讓函式庫具有可攜性──都有的YAML的產生器和剖析器。當效能比較重要時，也有許多和C語言綁定的函式庫可使用。

### C語言函式庫

  - [libYAML](http://pyyaml.org/wiki/LibYAML) 2007-06時，這個YAML的函式庫漸趨穩定，並被YAML格式作者推薦\[15\]。
  - [SYCK](http://whytheluckystiff.net/syck/) 這個實現支援大部分1.0版的格式，並且被廣泛的使用。它使用高階interpreted languages進行最佳化。在2005之後，這個專案已經不再更新，不過仍可使用。

### 其他函式庫

下面幾種程式語言都有與YAML相關的函式庫

  - [C++](../Page/C++.md "wikilink")
      - [用C++將libYaml包裝](http://git.snoyman.com/cppweb.git?a=blob;f=src/cppmodels/yaml.hpp;h=e67377c792309a51eb5a4c9dac05ba89befd38d6;hb=HEAD)
  - [Go](../Page/Go.md "wikilink")
      - [go-yaml](https://github.com/go-yaml/yaml) 借鉴 C 库 libyaml 设计的 Go 语言移植
  - [Haskell](../Page/Haskell.md "wikilink")
      - [Haskell Reference wrappers](https://web.archive.org/web/20080803050852/http://www.ben-kiki.org/oren/YamlReference/)
  - [Java](../Page/Java.md "wikilink")
      - [jvyaml](https://web.archive.org/web/20081121204521/http://jvyaml.dev.java.net/) 以Syck為基礎，and patterned off ruby-yaml
      - [JYaml](http://jyaml.sourceforge.net/)純Java的實現。
  - [JavaScript](../Page/JavaScript.md "wikilink")
      - 原生的JavaScript即可產生YAML，但不能剖析。
      - [YAML JavaScript](http://sourceforge.net/projects/yaml-javascript) 產生和剖析。
  - [Objective-C](../Page/Objective-C.md "wikilink")
      - [Cocoa-Syck](https://web.archive.org/web/20070927213458/http://code.whytheluckystiff.net/syck/browser/trunk/ext/cocoa/src)
  - [OCaml](../Page/OCaml.md "wikilink")
      - [OCaml-Syck](http://sourceforge.net/projects/ocaml-syck/)
  - [Lua](https://zh.wikipedia.org/wiki/Lua_\(programming_language\) "wikilink")
      - [Lua-Syck](https://web.archive.org/web/20080923161342/http://code.whytheluckystiff.net/syck/browser/trunk/ext/lua)
  - [Perl](../Page/Perl.md "wikilink")
      - [YAML::](http://search.cpan.org/dist/YAML) 一個通用的介面，被數個YAML剖析器使用。
      - [YAML::Tiny](http://search.cpan.org/dist/YAML-Tiny/) YAML簡化版的實現。擁有小巧輕快的優點──比完整功能的YAML實現快上許多──並用純Perl寫成。
      - [YAML::Syck](http://search.cpan.org/dist/YAML-Syck/) 與SYCK函式庫綁定。提供快速，highly featured的YAML剖析器。
      - [YAML::XS](http://search.cpan.org/dist/YAML-LibYAML/) 與LibYaml綁定。提供1.1版更好的相容性。
  - [PHP](../Page/PHP.md "wikilink")
      - [Spyc](http://spyc.sourceforge.net/) 純PHP的實現。
      - [PHP-Syck](http://pecl.php.net/package/syck)（與SYCK函式庫綁定）
      - [sfYaml](https://web.archive.org/web/20080922222034/http://trac.symfony-project.org/browser/branches/1.1/lib/yaml) 为[symfony项目重写的Spyc](https://zh.wikipedia.org/wiki/symfony "wikilink"), 可独立使用， 可以產生和剖析YAML文件。
  - [Python](../Page/Python.md "wikilink")
      - [PyYaml](http://pyyaml.org/) 純Python，或可選用LibYAML的函式庫。
      - [PySyck](https://web.archive.org/web/20080917043822/http://www.pyyaml.org/wiki/PySyck) 與SYCK綁定。
  - [Ruby](../Page/Ruby.md "wikilink")（從1.8版開始，YAML剖析器成為標準函式庫之一。以SYCK為基礎。）
      - [Ya2YAML](https://web.archive.org/web/20081012115015/http://rubyforge.org/projects/ya2yaml/) with full [UTF-8](../Page/UTF-8.md "wikilink") support
  - [R](https://zh.wikipedia.org/wiki/R_\(programming_language\) "wikilink")
      - [CRAN YAML](http://biostat.mc.vanderbilt.edu/twiki/bin/view/Main/YamlR) 以SYCK為基礎。
  - [.NET](https://zh.wikipedia.org/wiki/.NET "wikilink")
      - [1](http://yaml-net-parser.sourceforge.net/)
  - [Scala](https://zh.wikipedia.org/wiki/Scala_\(programming_language\) "wikilink")
      - [scala-yaml](https://github.com/yaml/scala-yaml)
  - [Tcl](../Page/Tcl.md "wikilink")
      - [Available as of Tcl 8.4](http://tcllib.sourceforge.net/doc/yaml.html)
  - [XML](../Page/XML.md "wikilink") [YAXML](http://yaml.org/xml.html) (currently draft only)

### 常見錯誤與使用細節

  - **編輯器：**
      - 建議使用能將跳格字元自動轉換成空白字元的編輯器，並且使用定寬度的字型。
      - 編輯器要能正確的處理UTF-8和UTF16編碼（或是使用純[ASCII](../Page/ASCII.md "wikilink")編碼──它同時是UTF-8的子集）.
  - **字串：**
      - YAML的字串不需使用引號，這可以增加可讀性，並避免巢狀的跳脫字元。然而，這有時也會導致錯誤，例如，字串本身是一個曖昧的字眼（像數字或布林值）；或在短句中意外的出現YAML的結構符號（常見的例子是由驚嘆號起始的句子，或是包含冒號-空白的句子："\!Caca de vaca\!"、"Caution: lions ahead"）。這在發布YAML檔案時並不造成困擾，但在製作小型指令碼和人工編輯檔案時，這問題還蠻常出現的。比較好的方法是善用區塊符號（"|" or "\>"）而不要使用單行字串，來避免這種曖昧的表達示。
  - **預期實做的特性**

## 參看

其他标记語言：

  - [JSON](../Page/JSON.md "wikilink")，可以說是YAML的子集。
  - [XML](../Page/XML.md "wikilink")
  - [Simple Outline XML](https://zh.wikipedia.org/wiki/Simple_Outline_XML "wikilink")
  - [OGDL](https://zh.wikipedia.org/wiki/OGDL "wikilink")
  - [S-表达式](../Page/S-表达式.md "wikilink")
  - [Plist](https://zh.wikipedia.org/wiki/Plist "wikilink")，由[NEXTSTEP改寫成的資料序列語言](https://zh.wikipedia.org/wiki/NEXTSTEP "wikilink")。
  - [SDL](https://zh.wikipedia.org/wiki/Simple_Declarative_Language "wikilink")

## 注釋

## 外部連結

  - [YAML.org](http://yaml.org)
  - [YAML Specification](http://yaml.org/spec/)
  - [YAML Cookbook--Equivalent data structures in YAML and Ruby](https://web.archive.org/web/20080509211926/http://yaml4r.sourceforge.net/cookbook/)
  - [YAML in Five Minutes](http://yaml.kwiki.org/?YamlInFiveMinutes)
  - [YAML improves on XML](http://www.ibm.com/developerworks/library/x-matters23.html) Intro to YAML in Python
  - [YAML as a superset of JSON](https://web.archive.org/web/20080914015703/http://redhanded.hobix.com/inspect/yamlIsJson.html)
  - [Kwalify Schema definition for YAML](http://www.kuwata-lab.com/kwalify/)
  - [Lists in 5 minutes](http://list.alwayspages.com/info/listsin5mins)
  - [YAML Validator](https://codebeautify.org/yaml-validator)

[Category:标记語言](https://zh.wikipedia.org/wiki/Category:标记語言 "wikilink") [Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink") [Category:数据序列化格式](https://zh.wikipedia.org/wiki/Category:数据序列化格式 "wikilink")

1.
2.
3.
4.  在英文原文中，將下列幾組詞彙交替使用：(清單"list"和陣列"array"), (雜湊表"hash"、字典"dictionary"、映射"mapping")和(字串"string"和純量"scalar")。在其他程式語言，這幾組字的意義未必等價。中文則統一使用相同的詞彙。
5.  階層式(hierarchical model)對應到樹狀結構時，只會有一個固定、整體性的結果。舉例說明：用階層式來表達電影的演員名單，每個演員都只能歸類到一個電影名稱；或是每個電影只能歸類給一位演員(雖然這樣很怪)。YAML同時也允許使用關聯式資料(relational model)。
6.
7.  [YAML 1.2 Spec](http://yaml.org/spec/1.2/)
8.  這些語法非常細微且很少出現在文件中：JSON允許擴充字元集，如：UTF32；YAML在分隔符號──如引號、等號、冒號──後方需要接空白字元，而JSON不需要；一些非標準的JSON實現允許Javascript風格的的大範圍註解*/\*...\*/*。處理這種邊界情形或許需要在將其當成內置格式的YAML剖析前進行簡單的JSON前處理。
9.  [用SYCK剖析JSON](http://redhanded.hobix.com/inspect/yamlIsJson.html)
10. [XML IDREF](http://www.w3.org/TR/2000/REC-xml-20001006#idref)
11. 提案中的"yield"(迭代器)標籤可以允許簡單的算術運算
12.
13.
14.
15. YAML的創造者Clark Evans推薦