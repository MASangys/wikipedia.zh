**Windows Script
Host**（簡稱**WSH**），是[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[腳本語言](https://zh.wikipedia.org/wiki/腳本語言 "wikilink")[程式](https://zh.wikipedia.org/wiki/程式 "wikilink")（script）的執行環境。

**Windows Script Host**最早出現在[Windows
98](../Page/Windows_98.md "wikilink")，經過不斷發展與強化，爾後的Windows作業系統（包括[用戶端與](https://zh.wikipedia.org/wiki/用戶端 "wikilink")[伺服端版本](https://zh.wikipedia.org/wiki/伺服端 "wikilink")）都內建了WSH。使用者透過Windows
Script Host能自行編寫一些程式，用以簡化日常工作流程，或製作一些實用的系統管理程式。

## 版本

| [Windows版本](https://zh.wikipedia.org/wiki/Windows "wikilink")                                                                                                                                                                 | 相應的WSH版本         | 最新可再發行組件的版本 |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- | ----------- |
| [Windows 95](../Page/Windows_95.md "wikilink")                                                                                                                                                                                | 沒有（獨立的可再發行組件）    | 5.6         |
| [Windows NT 4.0](../Page/Windows_NT_4.0.md "wikilink")                                                                                                                                                                        | 沒有（獨立的可再發行組件）    | 5.6         |
| [Windows 98](../Page/Windows_98.md "wikilink")                                                                                                                                                                                | 1.0              | 5.6         |
| [Windows 2000](../Page/Windows_2000.md "wikilink")                                                                                                                                                                            | 2.0（也被稱為WSH 5.1） | 5.7         |
| [Windows Me](../Page/Windows_Me.md "wikilink")                                                                                                                                                                                | 2.0（也被稱為WSH 5.1） | 5.6         |
| [Windows XP](../Page/Windows_XP.md "wikilink") / [Windows Server 2003](../Page/Windows_Server_2003.md "wikilink")                                                                                                             | 5.6              | 5.7         |
| [Windows Vista](../Page/Windows_Vista.md "wikilink") / [Windows Server 2008](../Page/Windows_Server_2008.md "wikilink") / Windows XP SP3                                                                                      | 5.7              |             |
| [Windows 7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink") / Windows Server 2008 R2 / [Windows 8](https://zh.wikipedia.org/wiki/Windows_8 "wikilink") / [Windows Server 2012](../Page/Windows_Server_2012.md "wikilink") | 5.8              |             |

## 查看WSH的版本

進入[DOS](../Page/DOS.md "wikilink")環境（或「[命令提示字元](../Page/命令提示字元.md "wikilink")」），在「命令提示符號」旁輸入**cscript**（如：<span style="color: DarkGreen;">`C:\cscript`</span>），按「Enter」出現以下訊息：\[1\]
<span style="font-size:smaller;"><code>

`Microsoft (R) Windows Script Host Version 5.6`
`Copyright (C) Microsoft Corporation 1996-2001. All rights reserved.`
`用法:CScript scriptname.extension [選項...] [引數...]`
`選項:`
` //B         批次模式：不顯示Script錯誤和提示`
` //D         啟用主動式偵錯`
` //E:engine  使用該引擎來執行Script`
` //H:CScript 改變預設的Script Host為CScript.exe`
` //H:WScript 改變預設的Script Host為WScript.exe (預設值)`
` //I         互動式模式 (預設值，與 //B恰相反)`
` //Job:xxxx  執行一個WSF工作`
` //Logo      顯示標誌 (預設值)`
` //Nologo    不顯示標誌：在執行階段不會出現標誌`
` //S         為使用者儲存目前的命令行`
` //T:nn      逾時值（單位為秒）: 容許Script執行的最大時限`
` //X         在偵錯工具中執行Script`
` //U         利用Unicode從主控台上重新引導I/O`

</code></span>

## 支援直譯器

  - 內建[直譯器](../Page/直譯器.md "wikilink")：
      - [VBScript](../Page/VBScript.md "wikilink")：[副檔名為](https://zh.wikipedia.org/wiki/副檔名 "wikilink")*.vbs*
      - [JScript](../Page/JScript.md "wikilink")：副檔名為*.js*
  - 擴充直譯器：
      - [ActivePerl](https://zh.wikipedia.org/wiki/ActivePerl "wikilink")（[ActiveState公司發展之Windows版的](https://zh.wikipedia.org/wiki/ActiveState "wikilink")[Perl](../Page/Perl.md "wikilink")）：副檔名為*.plx*

## [Hello, world](https://zh.wikipedia.org/wiki/Hello,_world "wikilink")\!

以[JScript](../Page/JScript.md "wikilink")為例：

``` JavaScript
 WScript.Echo("Hello, world!");    //注意！JavaScript在瀏覽器中用document.write()。
```

## 參考資料

## 內部連結

  - [Windows PowerShell](../Page/Windows_PowerShell.md "wikilink")

## 外部連結

  - [Windows Server System系統管理之Windows Script
    Host](http://www.microsoft.com/taiwan/technet/columns/profwin/tnawsh.mspx#EAB)

[Category:Microsoft_Windows](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows "wikilink")
[Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink")

1.  如果沒有出現，就表示你的系統並沒有WSH的環境。