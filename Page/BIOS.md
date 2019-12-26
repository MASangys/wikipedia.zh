**BIOS**是**B**asic **I**nput/**O**utput **S**ystem的縮寫，中文：**基本輸入輸出系統**，亦稱為ROM BIOS、System BIOS、PC BIOS，是在通電啟動階段執行硬體初始化，以及為[作業系統和程式提供運行時服務的](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[韌體](../Page/韌體.md "wikilink")。BIOS最早隨著[CP/M作業系統的推出在](https://zh.wikipedia.org/wiki/CP/M "wikilink")1975年出現。BIOS預安裝在[個人電腦的](https://zh.wikipedia.org/wiki/個人電腦 "wikilink")[主機板上](https://zh.wikipedia.org/wiki/主機板 "wikilink")，是[个人电脑](../Page/个人电脑.md "wikilink")启动时加载的第一个软件。

現在，BIOS用於初始化和測試系統的硬體元件，以及從大容量儲存裝置（如硬碟）載入[啟動程式](../Page/啟動程式.md "wikilink")，並由[啟動程式](../Page/啟動程式.md "wikilink")載入作業系統。BIOS還為[DOS](../Page/DOS.md "wikilink")作業系統提供鍵盤、顯示及其他[I/O裝置的](https://zh.wikipedia.org/wiki/I/O "wikilink")[硬體抽象層](../Page/硬體抽象層.md "wikilink")。許多較新的作業系統在啟動後不再通過BIOS存取硬體。

許多BIOS程式都只能在特定電腦型號或特定主機板型號上執行。早年，BIOS儲存於[ROM晶片上](https://zh.wikipedia.org/wiki/ROM "wikilink")；現在的BIOS多儲存於[快閃記憶體晶片上](https://zh.wikipedia.org/wiki/快閃記憶體 "wikilink")，這方便了BIOS的更新。

[UEFI是舊式BIOS的後繼者](https://zh.wikipedia.org/wiki/UEFI "wikilink")。

## 歷史

BIOS最早可追溯到[1970年代](../Page/1970年代.md "wikilink")的[CP/M作業系統](https://zh.wikipedia.org/wiki/CP/M "wikilink")。BIOS是CP/M作業系統中只能在特定機器上執行(machine-specific)的部分，它在系統開機時直接與硬體交互。

[1980年代](../Page/1980年代.md "wikilink")，IBM發明了IBM PC，但最初BIOS是IBM PC上唯一不開放的元件，給IBM PC的複製(Clone)帶來了麻煩。隨後[COMPAQ複製了IBM](https://zh.wikipedia.org/wiki/COMPAQ "wikilink") PC，Phoenix Technologies等公司亦複製了IBM PC的BIOS部件，可為當時的IBM PC相容機廠商提供BIOS。

現時[UEFI已經取代舊式BIOS](https://zh.wikipedia.org/wiki/UEFI "wikilink")。

## 操作

### 系統啟動

當電腦的電源開啟，BIOS就會從[主機板上的](https://zh.wikipedia.org/wiki/主機板 "wikilink")[ROM晶片執行](https://zh.wikipedia.org/wiki/ROM "wikilink")，執行[加電自檢](https://zh.wikipedia.org/wiki/加電自檢 "wikilink")（POST），測試和初始化[CPU](https://zh.wikipedia.org/wiki/CPU "wikilink")、[RAM](https://zh.wikipedia.org/wiki/RAM "wikilink")、[直接記憶體存取](../Page/直接記憶體存取.md "wikilink")控制器、[晶片組](https://zh.wikipedia.org/wiki/晶片組 "wikilink")、[鍵盤](https://zh.wikipedia.org/wiki/鍵盤 "wikilink")、[軟碟](https://zh.wikipedia.org/wiki/軟碟 "wikilink")、[硬碟等裝置](https://zh.wikipedia.org/wiki/硬碟 "wikilink")。當所有的Option ROM被載入後，BIOS就試圖從啟動裝置（如[硬碟](https://zh.wikipedia.org/wiki/硬碟 "wikilink")、[軟碟](https://zh.wikipedia.org/wiki/軟碟 "wikilink")、[光碟](../Page/光碟.md "wikilink")）載入[啟動程式](../Page/啟動程式.md "wikilink")，由啟動程式載入[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")。BIOS也可從[網卡等裝置啟動](https://zh.wikipedia.org/wiki/網卡 "wikilink")。

### 設定畫面

大約從[80386](https://zh.wikipedia.org/wiki/80386 "wikilink") PC開始，個人電腦的BIOS ROM整合了設定程式（Setup）。主板的CMOS晶片用於儲存BIOS設定值及硬體偵測值。主板上的鈕扣電池用於讓[CMOS儲存BIOS設定值](https://zh.wikipedia.org/wiki/CMOS "wikilink")，以及電腦在斷電時依然可以讓系統時鐘運作。

現代的BIOS可以讓使用者選擇由哪個啟動裝置啟動電腦，如[光碟機](https://zh.wikipedia.org/wiki/光碟機 "wikilink")、[硬碟](https://zh.wikipedia.org/wiki/硬碟 "wikilink")、[軟碟](https://zh.wikipedia.org/wiki/軟碟 "wikilink")、[隨身碟等等](https://zh.wikipedia.org/wiki/隨身碟 "wikilink")。

## BIOS韌體

由於BIOS與硬體系統整合在一起（將BIOS程式指令燒錄在IC中），所以有時候也被稱為[韌體](../Page/韌體.md "wikilink")。在大約1990年BIOS是保存在[ROM](https://zh.wikipedia.org/wiki/ROM "wikilink")（[唯讀記憶體](../Page/唯讀記憶體.md "wikilink")）中而無法被修改。因為BIOS的大小和複雜程度隨時間不斷增加，而且硬體的更新速度加快，令BIOS也必須不斷更新以支援新硬體，於是BIOS就改為儲存在[EEPROM或者](https://zh.wikipedia.org/wiki/EEPROM "wikilink")[快閃記憶體中](https://zh.wikipedia.org/wiki/快閃記憶體 "wikilink")，讓使用者可以輕易更新BIOS。然而，不適當的執行或是終止BIOS更新可能導致電腦無法使用。為了避免BIOS損壞，有些[主機板有備份的BIOS](https://zh.wikipedia.org/wiki/主機板 "wikilink")（「雙BIOS」主機板）。現在的BIOS有「啟動區塊」（Boot Block），屬於BIOS ROM的一部份，一開機就會被執行。這個程式會在執行BIOS前，驗證BIOS其他部分是否正確無誤（經由檢查碼，湊雜碼等等）。如果啟動區塊偵測到主要的BIOS已損壞，則可自動讀取USB隨身碟/光碟中的特定BIOS檔案並更新BIOS。主機板廠商/OEM經常發出BIOS升級來更新他們的產品和修正已知的問題。

## 作業系統服務

BIOS可通過[BIOS中斷呼叫](../Page/BIOS中斷呼叫.md "wikilink")為[MS-DOS](../Page/MS-DOS.md "wikilink")作業系統及MS-DOS程式提供磁碟、鍵盤、顯示等標準服務。通過BIOS中斷呼叫存取視訊硬體非常緩慢，因此，有些DOS程式（尤其是[遊戲](https://zh.wikipedia.org/wiki/遊戲 "wikilink")）通過直接存取視訊硬體提高效率。

現代作業系統僅在作業系統啟動時通過[BIOS中斷呼叫](../Page/BIOS中斷呼叫.md "wikilink")存取硬體。

### 微代碼更新

自[P6微架構](../Page/P6微架構.md "wikilink")開始，Intel處理器支援可重新編程的[微碼](https://zh.wikipedia.org/wiki/微碼 "wikilink")。BIOS可能包含處理器微代碼更新。

### [超頻](../Page/超頻.md "wikilink")

一些BIOS支援[超頻](../Page/超頻.md "wikilink")。

### 現代用途

BIOS以16位元[真實模式](../Page/真實模式.md "wikilink")執行。現代作業系統以[保護模式](../Page/保護模式.md "wikilink")或[長模式執行](https://zh.wikipedia.org/wiki/長模式 "wikilink")，存取BIOS的16位元[真實模式](../Page/真實模式.md "wikilink")服務（如[BIOS中斷呼叫](../Page/BIOS中斷呼叫.md "wikilink")）是低效的。現代作業系統僅在啟動時使用[BIOS中斷呼叫](../Page/BIOS中斷呼叫.md "wikilink")服務。後來的BIOS加入了[APM](https://zh.wikipedia.org/wiki/進階電源管理 "wikilink")、隨插即用規範（PnP）、[ACPI等功能](https://zh.wikipedia.org/wiki/ACPI "wikilink")。

## 与[CMOS的联系和区别](https://zh.wikipedia.org/wiki/CMOS "wikilink")

### BIOS与CMOS的关系

CMOS是计算机上另一个重要的存储器。之所以提到它，是因为BIOS程序的設定值、硬件參數偵測值就保存在CMOS中。而且，在BIOS程式啟動计算机時，需要载入CMOS中的設定值。CMOS通常被整合在[南橋晶片組中](https://zh.wikipedia.org/wiki/南橋 "wikilink")。UEFI系統則多用[NVRAM儲存設定](https://zh.wikipedia.org/wiki/NVRAM "wikilink")。

### BIOS与CMOS的区别

二者的区别是，BIOS是儲存在唯读记憶體（[EEPROM](https://zh.wikipedia.org/wiki/EEPROM "wikilink")），而CMOS为随机存储器（[RAM](https://zh.wikipedia.org/wiki/随机存取记忆体 "wikilink")）；BIOS中存储的是[程序](https://zh.wikipedia.org/wiki/程序 "wikilink")，而CMOS中存储的是普通信息。

CMOS的內容在斷電會消失。所以，把[主機板的電池拆出](https://zh.wikipedia.org/wiki/主機板 "wikilink")，便可重置其內容。另外，拆出電池也會重設[時間](https://zh.wikipedia.org/wiki/時間 "wikilink")。

## 擴充程式（Option ROM）

[擴充卡如](https://zh.wikipedia.org/wiki/擴充卡 "wikilink")[硬碟控制器](https://zh.wikipedia.org/wiki/硬碟控制器 "wikilink")、[顯示卡](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")、[網卡可能包含BIOS擴充程式](https://zh.wikipedia.org/wiki/網卡 "wikilink")（即Option ROM），為BIOS提供附加的功能。在BIOS啟動作業系統前，Option ROM被BIOS執行。部分內建於主板的裝置（如板載RAID），其Option ROM可能包含在主機板BIOS中。Option ROM通過擴充BIOS的啟動功能。

### 系統初始化

系統在加電自檢（POST）階段，尋找並執行Option ROM。Option ROM通過[BIOS中斷呼叫](../Page/BIOS中斷呼叫.md "wikilink")對硬體進行測試、初始化，並顯示診斷資訊或顯示設定畫面。

## 供應商

目前全球只有四家獨立BIOS供應商（IBV），曾經的[Award Software與](https://zh.wikipedia.org/wiki/Award_Software "wikilink")[General Software](https://zh.wikipedia.org/wiki/General_Software "wikilink")、[Microid Research均被](https://zh.wikipedia.org/wiki/Microid_Research "wikilink")[Phoenix Technologies收購](https://zh.wikipedia.org/wiki/Phoenix_Technologies "wikilink")，[SystemSoft被](https://zh.wikipedia.org/wiki/SystemSoft "wikilink")[Insyde Software收購](https://zh.wikipedia.org/wiki/Insyde_Software "wikilink")。

  - ，[美國](https://zh.wikipedia.org/wiki/美國 "wikilink")[鳳凰科技](https://zh.wikipedia.org/wiki/鳳凰科技 "wikilink")。

  - ，[美國](https://zh.wikipedia.org/wiki/美國 "wikilink")[安邁科技](https://zh.wikipedia.org/wiki/安邁科技 "wikilink")，目前為全球最大的BIOS供應商。之前被鳳凰科技超過。

  - [Insyde Software](https://zh.wikipedia.org/wiki/系微 "wikilink")，[台灣](https://zh.wikipedia.org/wiki/台灣 "wikilink")[系微公司](https://zh.wikipedia.org/wiki/系微 "wikilink")。

  - [Byosoft](https://zh.wikipedia.org/wiki/Byosoft "wikilink")，新興廠商，[中國大陸的](https://zh.wikipedia.org/wiki/中國大陸 "wikilink")[百敖軟體公司](https://zh.wikipedia.org/wiki/百敖軟體 "wikilink")。

## 取代

[英特尔](../Page/英特尔.md "wikilink")於[2000年](../Page/2000年.md "wikilink")開發出[可扩展固件接口](https://zh.wikipedia.org/wiki/可扩展固件接口 "wikilink")（Extensible Firmware Interface），隨後，由业界多家著名公司共同成立[统一可扩展固件接口论坛](../Page/统一可扩展固件接口论坛.md "wikilink")（UEFI Forum），EFI被更名為UEFI，且由UEFI論壇制定新的[UEFI規範](https://zh.wikipedia.org/wiki/UEFI "wikilink")。

現時UEFI已經取代傳統BIOS，且Intel將於2020年棄用傳統BIOS介面，屆時Intel產品不再支援基於16位[真實模式](../Page/真實模式.md "wikilink")的UEFI CSM（UEFI相容性支援模組）\[1\]。

## 相關鏈接

  - [可延伸韌體介面](https://zh.wikipedia.org/wiki/可延伸韌體介面 "wikilink")（UEFI）

  - [韌體](../Page/韌體.md "wikilink")

  - [系微公司](../Page/系微公司.md "wikilink")

  -
  -
  -
  - [ACPI](https://zh.wikipedia.org/wiki/ACPI "wikilink")

  - [Aptio](https://zh.wikipedia.org/wiki/Aptio "wikilink")

  - [VESA BIOS Extensions](https://zh.wikipedia.org/wiki/VESA_BIOS_Extensions "wikilink")

  - [El Torito](../Page/El_Torito.md "wikilink")

## 外部連結

  - [Basic Input Output System](http://www.basicinputoutputsystem.com/)
  - [OpenBIOS](http://www.openfirmware.info/Welcome_to_OpenBIOS)
  - [SPI Flash Solutions for BIOS updates](https://web.archive.org/web/20100217170308/http://www.serialflash.com/)

<references/>

[Category:主板](https://zh.wikipedia.org/wiki/Category:主板 "wikilink") [Category:韌體](https://zh.wikipedia.org/wiki/Category:韌體 "wikilink") [Category:BIOS](https://zh.wikipedia.org/wiki/Category:BIOS "wikilink")

1.  <http://www.uefi.org/sites/default/files/resources/Brian_Richardson_Intel_Final.pdf>