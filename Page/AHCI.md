**AHCI**（[英文全称](../Page/英文.md "wikilink")：**Advanced Host Controller
Interface**），中文名为**進階主機控制器介面**，是由[英特爾制定的技术标准](../Page/英特爾.md "wikilink")，允許軟體與[SATA儲存裝置溝通的硬體機制](../Page/SATA.md "wikilink")，可讓SATA儲存裝置啟用進階SATA功能，例如[原生指令佇列及](../Page/原生指令佇列.md "wikilink")[熱插拔](../Page/熱插拔.md "wikilink")。AHCI為硬體製造商詳細定義了記憶體架構規範，規範如何在系統記憶體與SATA儲存裝置間傳輸資料，目前（2014年3月）最新AHCI規範為1.3.1版。

許多SATA裝置控制器可個別啟用AHCI功能或與[RAID功能合併使用](../Page/RAID.md "wikilink")，英特爾就建議如果在其支援AHCI晶片組上使用RAID功能，採取AHCI模式組建RAID可以獲得最大彈性，因為AHCI可在完成安裝的作業系統中切換RAID組建模式。

在一般硬碟上，大多數製造商均在3.5英吋及2.5英吋提供相關支援技術。

## 运行模式

多数的SATA控制器提供了如下的运行模式：兼容老式[PATA接口模拟](../Page/PATA.md "wikilink")，标准**AHCI**模式，以及厂商自定义[RAID模式](../Page/RAID.md "wikilink")（多数支持AHCI以发挥其性能）。[Intel建议在其主板上采用RAID模式来取代AHCI](../Page/Intel.md "wikilink")/SATA模式以便获得最大的兼容性。\[1\]兼容模式是一种利用软件途径向后兼容，以此允许SATA控制器在无法识别SATA或驱动不支持的老式操作系统上运行。

## 历史版本

### AHCI 1.0

加入了[NCQ](../Page/NCQ.md "wikilink")(Native Command Queuing)功能和热插拔技术

### AHCI 1.1

### AHCI 1.2

幀結構數據交換技術(FIS Based-Switching)

### AHCI 1.3

在[固態硬碟方面目前僅](../Page/固態硬碟.md "wikilink")[英特爾控制晶片支援AHCI功能](../Page/英特爾.md "wikilink")（並無單一販售）。

## 支持的操作系统

[Windows
Vista核心已完全支援AHCI](../Page/Windows_Vista.md "wikilink")，[Linux從](../Page/Linux.md "wikilink")[系統核心](../Page/Linux核心.md "wikilink")2.6.19版起支援，其他較舊作業系統則需要相關硬體製造商提供驅動程式才可以支援。

## 参考文献

<references/>

[Category:電腦儲存技術](https://zh.wikipedia.org/wiki/Category:電腦儲存技術 "wikilink")

1.