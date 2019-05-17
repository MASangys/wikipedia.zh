**PureBasic**是由[Fantaisie
Software所開發的商用](https://zh.wikipedia.org/wiki/Fantaisie_Software "wikilink")[BASIC](../Page/BASIC.md "wikilink")[程序语言及](https://zh.wikipedia.org/wiki/程序语言 "wikilink")[整合開發環境](https://zh.wikipedia.org/wiki/整合開發環境 "wikilink")（IDE）。特點是語法簡單直接，不依賴[运行时库](../Page/运行时库.md "wikilink")，因此能[編譯出相當小巧的](https://zh.wikipedia.org/wiki/編譯 "wikilink")[程序](https://zh.wikipedia.org/wiki/程序 "wikilink")，包含[命令列或](https://zh.wikipedia.org/wiki/命令列 "wikilink")[GUI](https://zh.wikipedia.org/wiki/GUI "wikilink")[執行檔](https://zh.wikipedia.org/wiki/執行檔 "wikilink")、[DLL等](https://zh.wikipedia.org/wiki/DLL "wikilink")。而且不使用各系統的[API](https://zh.wikipedia.org/wiki/API "wikilink")，所以有高度的[跨平台特性](https://zh.wikipedia.org/wiki/跨平台 "wikilink")，支持[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")
32/64位元、[Linux](../Page/Linux.md "wikilink") 32/64位元、[Mac OS
X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、[Amiga](../Page/Amiga.md "wikilink")。

## 代碼範例

``` freebasic
CompilerIf #PB_Compiler_OS = #PB_OS_Windows
    ProcedureDLL AttachProcess(Instance)
    EndProcedure

    ProcedureDLL DetachProcess(Instance)
    EndProcedure

    ProcedureDLL AttachThread(Instance)
    EndProcedure

    ProcedureDLL DetachThread(Instance)
    EndProcedure
CompilerEndIf

ProcedureDLL Test(Message$)
    MessageRequester("Test!", Message$)
EndProcedure
```

## 外部連結

  - [PureBasic官方網站](http://www.purebasic.com/news.php)

[Category:BASIC程序设计语言家族](https://zh.wikipedia.org/wiki/Category:BASIC程序设计语言家族 "wikilink")
[Category:BASIC编译器](https://zh.wikipedia.org/wiki/Category:BASIC编译器 "wikilink")