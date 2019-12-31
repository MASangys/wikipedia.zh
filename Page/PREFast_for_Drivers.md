> 本文内容由[PREFast for Drivers](https://zh.wikipedia.org/wiki/PREFast_for_Drivers)转换而来。


**PREfast**（Prefast.exe）是[微軟公司為](https://zh.wikipedia.org/wiki/微軟公司 "wikilink")[驅動程式設計所提供的靜態的原始碼分析工具](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")（static source code analysis tool），可偵測原始程式碼中不易用一般[編譯器](../Page/編譯器.md "wikilink")找到的特定類型錯誤，與Windows DDK建置環境一同安裝。目前已整合至[Visual Studio 2005](https://zh.wikipedia.org/wiki/Visual_Studio_2005 "wikilink") Team Suite中，使用時只要設定‘Enable Code Analysis For C/C++’為『Yes』即可，接下來PREfast會攔截cl編譯器 (cl.exe) 的呼叫，產生由一次檢查所有檔案所得的單一聯合清單，內容屬於[XML](../Page/XML.md "wikilink")格式。

偵測錯誤類別：

  - 記憶體：内存泄露（memory leak）。
  - 資源：沒能即時釋放資源。
  - 函式使用方式：不正確的函式引數、使用某個過時函式的情況。
  - 浮點運算狀態
  - 優先執行規則
  - 核心模式程式安全性考量

## PREfast的工作

  - 變數未初始化

`void init() {`
`    int a;`
`    int b;`
`    b = a;`
`}`

  - 運算元優先權的問題

`void priority() {`
`    int a = 1;`
`    int b = 1;`
`    int c = 1;`
`    if(a & b == c)`
`       return ;`
`}`

  - 記憶體溢位問題

`void overrun() {`
`     char buf[100];`
`    char buf2[200];`
`    int  i = 100;`

`    sprintf(buf, "size%d" , i);`
`    strcpy(buf, buf2);`
`}`

  - 無窮迴圈

`void infinite_loop() {`
`    int i;`
`    for(i = 100 ; i >= 0 ; i ++ ) {`
`               ; `
`    }`
`}`

  - 運算元誤用

`void  op_misuse() {`
`    int a = 2;`
`    if (a = 2)`
`       return ;`
`}`

## 相關條目

  - [Windows Driver Foundation](https://zh.wikipedia.org/wiki/Windows_Driver_Foundation "wikilink")

## 外部連結

  - [Windows DDK](https://web.archive.org/web/20060815100114/http://www.microsoft.com/whdc/devtools/ddk/default.mspx)
  - [WHDC 上的開發工具與測試](https://web.archive.org/web/20061106164917/http://www.microsoft.com/whdc/DevTools/default.mspx)
  - [PREfast逐步教學說明文件](https://web.archive.org/web/20060919212952/http://www.microsoft.com/whdc/DevTools/tools/PREfast_steps.mspx)

[Category:Microsoft_Visual_Studio](https://zh.wikipedia.org/wiki/Category:Microsoft_Visual_Studio "wikilink") [Category:驱动程序](https://zh.wikipedia.org/wiki/Category:驱动程序 "wikilink") [Category:调试](https://zh.wikipedia.org/wiki/Category:调试 "wikilink")