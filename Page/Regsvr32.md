> 本文内容由[Regsvr32](https://zh.wikipedia.org/wiki/Regsvr32)转换而来。


**`regsvr32`**是[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[作業系統底下的指令](https://zh.wikipedia.org/wiki/作業系統 "wikilink")，用來對[COM檔和](../Page/组件对象模型.md "wikilink")[ActiveX](../Page/ActiveX.md "wikilink")檔做註冊及反註冊的動作，使之反應在[登錄檔中](https://zh.wikipedia.org/wiki/登錄檔 "wikilink")。但搭配 regsvr32.exe 使用的 DLL，或者提供 `DllRegisterServer` 和 `DllUnregisterServer` 兩個输出[函式](https://zh.wikipedia.org/wiki/函式 "wikilink")，或者提供`DllInstall`输出函数（可接受命令行参数）。

## 使用方式

` regsvr32 foo.dll：註冊 foo.dll`

` regsvr32 /u foo.dll：反注册  foo.dll`

`  regsvr32 /i:"my_cmd_string" dllname.dll：註冊dllname.dll `

`  regsvr32 /u /i:"my_cmd_string" dllname.dll：反註冊 dllname.dll`

## 参数说明

Regsvr32 \[/u\] \[/n\] \[/i\[:cmdline\]\] dllname

/u - 反注册

/i - 调用DllInstall带有可选参数\[cmdline\]，第一个参数值为TRUE；当和/u一起使用时调用DllInstall，带有可选参数\[cmdline\]，第一个参数值为FALSE.

/n - 不调用DllRegisterServer或DllUnregisterServer；该参数必须和/i一起使用; 如果没有/n，则/i在调用DllInstall时还调用了DllRegisterServer或DllUnregisterServer

/s – 静默模式；不显示对话框（Windows XP和Windows Vista中新增选项）

但要注意，如果目前[目錄和預設系統目錄](https://zh.wikipedia.org/wiki/目錄 "wikilink")（C:\\windows, C:\\windows\\system32）都有名為 foo.dll 的檔案，那麼，regsvr32 只會用系統目錄下的檔案，而不會用目前目錄下的檔案。解決辦法是加上全路徑，例如 c:\\temp\\foo.dll；或是使用底下語法：

` regsvr32 .\foo.dll`

## 參閱

  - [Microsoft TechNet 關於 Regsvr32 的文章](http://technet.microsoft.com/en-us/library/bb490985.aspx)
  - [微软知识库249873](http://support.microsoft.com/kb/249873)
  - [Explanation of Regsvr32 Usage and Error Messages](http://support.microsoft.com/kb/q249873/)
  - [INFO: How Regsvr32.exe Registers and Unregisters COM DLLs](http://support.microsoft.com/?id=207132)
  - [WinTasks: regsvr32.exe - Process Information](https://web.archive.org/web/20080328135314/http://www.liutilities.com/products/wintaskspro/processlibrary/regsvr32/)
  - [C\# Frequently Asked Questions: What is the equivalent to regsvr32 in .NET?](http://blogs.msdn.com/csharpfaq/archive/2004/08/02/206158.aspx)

[Category:Windows管理](https://zh.wikipedia.org/wiki/Category:Windows管理 "wikilink")