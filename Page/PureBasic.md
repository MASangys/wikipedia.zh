**PureBasic**是由[Fantaisie
Software所開發的商用](../Page/Fantaisie_Software.md "wikilink")[BASIC](../Page/BASIC.md "wikilink")[程序语言及](../Page/程序语言.md "wikilink")[整合開發環境](../Page/整合開發環境.md "wikilink")（IDE）。特點是語法簡單直接，不依賴[运行时库](../Page/运行时库.md "wikilink")，因此能[編譯出相當小巧的](../Page/編譯.md "wikilink")[程序](../Page/程序.md "wikilink")，包含[命令列或](../Page/命令列.md "wikilink")[GUI](../Page/GUI.md "wikilink")[執行檔](../Page/執行檔.md "wikilink")、[DLL等](../Page/DLL.md "wikilink")。而且不使用各系統的[API](../Page/API.md "wikilink")，所以有高度的[跨平台特性](../Page/跨平台.md "wikilink")，支持[Windows](../Page/Windows.md "wikilink")
32/64位元、[Linux](../Page/Linux.md "wikilink") 32/64位元、[Mac OS
X](../Page/Mac_OS_X.md "wikilink")、[Amiga](../Page/Amiga.md "wikilink")。

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