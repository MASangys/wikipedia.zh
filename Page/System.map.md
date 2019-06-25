在[Linux中](../Page/Linux.md "wikilink")，**System.map**檔案是被[内核所使用的](../Page/内核.md "wikilink")[符号表](../Page/符号表.md "wikilink")。

符號表是一個在符號名稱與它們的記憶體位置間的查詢表格。符號名稱可能是變數的名稱或是函數名稱。當要查詢符號名稱的位置或是特定位置的符號名稱時，就會需要System.map。對於[内核错误及](../Page/内核错误.md "wikilink")[内核oops的除錯特別有用](../Page/Linux内核oops.md "wikilink")。當`CONFIG_KALLSYMS`啟用時，核心會自行做位置到名稱的轉換，所以像是ksymoops這一類的工具並不是必要的\[1\]。

## 內部

以下是`System.map`檔案的一部份內容：\[2\]

>

因為位置在每次構建時都會變動，所以核心每一次新的構建都會產生新的`System.map`\[3\]。

### 符號類型

在位置及符號中間的字符（以空格分開）是符號的*類型*。[UNIX操作系统上的](https://zh.wikipedia.org/wiki/UNIX操作系统 "wikilink")[`nm`](https://zh.wikipedia.org/wiki/nm_\(Unix\) "wikilink")工具程式列出了所有目標檔案的符號。而`System.map`則是直接與其相關，因為這個檔案是在整個核心程式上由`nm`所產生的
－ 就像`nm`列出任意小的目標程式的符號及它們的類型\[4\]。

這些類型的一部份：\[5\]

  - `A` 絕對的
  - `B` 或 `b` 未初始化的資料段（稱為BSS）
  - `D` 或 `d` 已初始化的資料段
  - `G` 或 `g` 小目標的已初始化資料段（全域）
  - `i` 特定的DLL段
  - `N` 除錯符號
  - `p` 堆疊展開段
  - `R` 或 `r` 唯讀資料段
  - `S` 或 `s` 小目標的未初始化資料段
  - `T` 或 `t` 文字（代碼）段
  - `U` 未定義
  - `V` 或 `v` 弱目標
  - `W` 或 `w` 尚未被標記的弱目標
  - `-` a.out目標檔案的符號戳
  - `?` 「符號類型未知」

## 檔案系統位置

在[Linux内核構建完成後](../Page/Linux内核.md "wikilink")，`System.map`可能位於原始目錄的根。然而，另外一些軟體可能會希望這個檔案位於其他地方：\[6\]

  - 像是
    [`System.map//boot/System`](https://zh.wikipedia.org/wiki/System.map/boot/ "wikilink")`.map-$(`[`uname`](https://zh.wikipedia.org/wiki/uname "wikilink")`
    -r) `
  - 在構建[SVGALib時預期會找到](https://zh.wikipedia.org/wiki/SVGALib "wikilink")`/lib/modules/$(uname
    -r)/build/System.map`

## 参考文献

## 參見

  - [内核oops](../Page/Linux内核oops.md "wikilink")
  - [内核错误](../Page/内核错误.md "wikilink")

{{-}}

[Category:可执行文件格式](https://zh.wikipedia.org/wiki/Category:可执行文件格式 "wikilink")
[Category:Linux內核](https://zh.wikipedia.org/wiki/Category:Linux內核 "wikilink")

1.

2.

3.

4.

5.
6.