> 本文内容由[Chocolatey](https://zh.wikipedia.org/wiki/Chocolatey)转换而来。


**Chocolatey**是一个[Windows下的](https://zh.wikipedia.org/wiki/Windows "wikilink")[软件包管理器](https://zh.wikipedia.org/wiki/软件包管理器 "wikilink")，你可以像在类Unix系统中使用[Yum和](https://zh.wikipedia.org/wiki/Yum "wikilink")[APT一样使用它](https://zh.wikipedia.org/wiki/高级包装工具 "wikilink")，在Windows中实现自动化轻松管理Windows软件的所有方面（安装，配置，升级和卸载）。

## 语法

list - 列出远程或本地包

search - 搜索远程或本地包

info - 检索包信息

install - 从各种来源安装包

pin - 抑制包的升级

outdated - 检索过时的包

upgrade - 从各种来源升级包

uninstall - 卸载软件包

pack - 将nuspec打包到已编译的nupkg

push - 推送编译的nupkg

new - 从模板生成包所需的文件

sources - 查看和配置默认源

source - 查看和配置默认源

config - 检索并配置配置文件设置

featute - 查看和配置choco功能

features - 查看和配置choco功能

setapikey - 检索或保存特定源的apikey

apikey - 检索或保存特定源的apikey

unpackself - 让chocolatey自动设置

support - 提供支持信息

download - 下载包 - 可选择内化所有远程资源

synchronize - 与系统安装的软件同步 - 生成缺少的包

sync - 与系统安装的软件同步 - 生成缺少的软件包

optimize - 优化安装，减少空间使用

## 安装方式

**在命令提示符下运行以下命令：** `@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('`<https://chocolatey.org/install.ps1>`'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"`

## 系统要求

Windows 7+ / Windows Server 2003+ PowerShell v2 + .NET Framework 4+（如果您没有安装，则将自动安装.NET 4.0）

## 參考資料

[Category:软件包管理系统](https://zh.wikipedia.org/wiki/Category:软件包管理系统 "wikilink")