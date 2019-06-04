**AHCI**（[英文全称](https://zh.wikipedia.org/wiki/英文 "wikilink")：**Advanced
Host Controller
Interface**），中文名为**進階主機控制器介面**，是由[英特爾制定的技术标准](https://zh.wikipedia.org/wiki/英特爾 "wikilink")，允許軟體與[SATA儲存裝置溝通的硬體機制](../Page/SATA.md "wikilink")，可讓SATA儲存裝置啟用進階SATA功能，例如[原生指令佇列及](https://zh.wikipedia.org/wiki/原生指令佇列 "wikilink")[熱插拔](https://zh.wikipedia.org/wiki/熱插拔 "wikilink")。AHCI為硬體製造商詳細定義了記憶體架構規範，規範如何在系統記憶體與SATA儲存裝置間傳輸資料，目前（2014年3月）最新AHCI規範為1.3.1版。

現時絕大多數SATA硬碟都支援AHCI。

## 运行模式

多数的SATA控制器可提供如下的运行模式：兼容老式[PATA接口模拟](https://zh.wikipedia.org/wiki/PATA "wikilink")，标准**AHCI**模式，以及厂商的[RAID模式](../Page/RAID.md "wikilink")。[Intel建议在其主板上采用RAID模式来取代AHCI](https://zh.wikipedia.org/wiki/Intel "wikilink")/PATA模式以便获得最大的兼容性。\[1\]PATA兼容模式是一种利用软件途径向后兼容，以此允许SATA控制器在不支持AHCI的操作系统（如Windows
XP）上运行。自Intel 9系列晶片組後，英特爾桌上型晶片組已不支援PATA類比模式。

## 历史版本

### AHCI 1.0

加入了[NCQ](https://zh.wikipedia.org/wiki/NCQ "wikilink")(Native Command
Queuing)功能和热插拔技术

### AHCI 1.1

### AHCI 1.2

幀結構數據交換技術(FIS Based-Switching)

### AHCI 1.3

## 支持的操作系统

[Windows
Vista核心已完全支援AHCI](../Page/Windows_Vista.md "wikilink")，[Linux從](../Page/Linux.md "wikilink")[系統核心](https://zh.wikipedia.org/wiki/Linux核心 "wikilink")2.6.19版起支援，其他較舊作業系統則需要相關硬體製造商提供驅動程式才可以支援。

## 参考文献

<references/>

[Category:電腦儲存技術](https://zh.wikipedia.org/wiki/Category:電腦儲存技術 "wikilink")

1.