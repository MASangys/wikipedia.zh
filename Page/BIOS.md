**BIOS**（的縮寫、中文：**基本輸入輸出系統**），在[IBM
PC相容系統上](../Page/IBM_PC相容系統.md "wikilink")，是一种業界標准的[韌體](../Page/韌體.md "wikilink")[介面](../Page/介面_\(資訊科技\).md "wikilink")。\[1\]。BIOS这个字眼是在1975年第一次在[CP/M操作系统中出现](../Page/CP/M.md "wikilink")。BIOS是[个人电脑启动时加载的第一个软件](../Page/个人电脑.md "wikilink")（實際上自Intel
Haswell平台以後，UEFI並不是系統開機時第一個被載入的軟體）。

BIOS用於電腦/PC平台開機時執行系统各部分的自我檢測（Power On Self
Test），並載入[引导程序（IPL）或儲存在儲存裝置](../Page/引导程序（IPL）.md "wikilink")（Storage
Device）上的[作業系統](../Page/作業系統.md "wikilink")。在MS-DOS等舊式16位元作業系統中，DOS及DOS程式通過BIOS提供的BIOS中斷呼叫以控制硬件。現代作業系統會忽略BIOS提供的[BIOS中斷呼叫並直接控制硬體](../Page/BIOS中斷呼叫.md "wikilink")。

## 歷史

BIOS最早可追溯到[1970年代的](../Page/1970年代.md "wikilink")[CP/M作業系統](../Page/CP/M.md "wikilink")。隨後IBM發明了IBM
PC，但是IBM當時並不開放BIOS，給IBM
PC的複製(Clone)帶來了麻煩。隨後[COMPAQ複製了IBM](../Page/COMPAQ.md "wikilink")
PC。Phoenix Technologies等公司亦複製了IBM PC的BIOS部件，可為當時的IBM
PC相容機廠商提供BIOS。在PC啟動的過程中，BIOS擔負着檢測、初始化硬體的功能，以及啟動作業系統的責任。在早期，BIOS還提供一套稱為[BIOS中斷呼叫的運行時的服務程式給作業系統及應用程式使用](../Page/BIOS中斷呼叫.md "wikilink")（尤其是[DOS](../Page/DOS.md "wikilink")、[Windows
3.x等](../Page/Windows_3.x.md "wikilink")16位元作業系統，因為DOS嚴重依賴BIOS）。對於現代作業系統（如Windows
NT系列和Linux）而言，BIOS的作用是初始化硬件和啟動作業系統，當作業系統啟動完畢後，硬體由作業系統及其驅動程式控制，但是BIOS仍然通過[SMM負責](../Page/系統管理模式.md "wikilink")[ACPI](../Page/ACPI.md "wikilink")、[電源管理等功能](../Page/電源管理.md "wikilink")。BIOS程式存放於一個斷電後內容不會丟失的[唯讀記憶體中](../Page/唯讀記憶體.md "wikilink")；系統過電或被重置（reset）時，[處理器第一條](../Page/處理器.md "wikilink")[指令的位址會被定位到BIOS的記憶體中](../Page/指令.md "wikilink")，讓初始化程式開始執行（實際上對於現在的x86平台而言，UEFI並不是開機時第一個被處理器執行的程式）。[英特尔公司於](../Page/英特尔.md "wikilink")2000年開發出[可扩展固件接口](../Page/可扩展固件接口.md "wikilink")（Extensible
Firmware Interface），後被重命名為UEFI，用以规范UEFI韌體的开发。而支持UEFI规范的BIOS也常被称为UEFI
BIOS（實際上許多早期的（2011年以前）採用UEFI/EFI規範的BIOS韌體並不支援UEFI開機，此種BIOS常見於OEM電腦）。之后为了推广EFI，业界多家著名公司共同成立[统一可扩展固件接口论坛](../Page/统一可扩展固件接口论坛.md "wikilink")（UEFI
Forum），英特尔公司将EFI
1.1规范贡献给业界，用以制订新的[UEFI规范](../Page/UEFI.md "wikilink")。2012年以後UEFI已在x86平台上得到普及。

## 啟動電腦原理

當電腦的電源開啟，BIOS就會由[主機板上的](../Page/主機板.md "wikilink")[快閃記憶體](../Page/快閃記憶體.md "wikilink")（flash
memory）執行，並將晶片組和記憶體子系統初始化。BIOS會把自己從快閃記憶體中，解壓縮到系統的主記憶體；並且從那邊開始執行。PC的BIOS程式碼也包含診斷功能，以保證某些重要硬體元件，像是[鍵盤](../Page/鍵盤.md "wikilink")、[磁碟](../Page/磁碟.md "wikilink")（BIOS在開機時會偵測硬碟的[S.M.A.R.T.狀態](../Page/S.M.A.R.T..md "wikilink")）、輸出輸入埠等等，可以正常運作且正確地初始化。幾乎所有的BIOS都包含設定程式（BIOS
Setup），可以進行BIOS的設定，如設定系統時間，設定開機裝置順序，啟用/禁用電腦的某些周邊裝置。主板的CMOS晶片（[UEFI多使用](../Page/UEFI.md "wikilink")[NVRAM儲存UEFI設定值](../Page/NVRAM.md "wikilink")/硬體偵測資訊）用於儲存BIOS設定值及硬體偵測資訊。主板上的鈕扣電池用於讓CMOS晶片儲存BIOS設定值，以及電腦在斷電時依然可以讓系統時鐘運作。CMOS在沒有電力供應（CMOS所需電力由主板上的鈕扣電池提供）的情況下會遺失儲存的資料，而NVRAM則不會。

[IBM技術參考手冊中曾經包含早期PC和AT](../Page/IBM.md "wikilink")
BIOS的[80x86原始碼](../Page/80x86.md "wikilink")。

現代的BIOS可以讓使用者選擇由哪個裝置啟動電腦，如[光碟機](../Page/光碟機.md "wikilink")、[硬碟](../Page/硬碟.md "wikilink")、[軟碟](../Page/軟碟.md "wikilink")、USB
[隨身碟等等](../Page/隨身碟.md "wikilink")。這項功能對於安裝[作業系統](../Page/作業系統.md "wikilink")、以[LiveCD啟動電腦](../Page/LiveCD.md "wikilink")、以及改變電腦找尋開機媒體的順序特別有用。

有些BIOS系統允許使用者可以選擇要載入哪個[作業系統](../Page/作業系統.md "wikilink")（例如從第二顆硬碟載入其他作業系統），雖然這項功能通常是由第二階段的[引导程序](../Page/引导程序.md "wikilink")（boot
loader）來處理。

許多OEM個人電腦亦包含可在載入作業系統前執行的硬體診斷程式/系統還原程式，可在開機時按特定的按鍵執行硬體診斷程式/系統還原程式，或者在BIOS的開機選單中執行。對於早期的OEM個人電腦，診斷程式可能內建於BIOS程式，也可能內建於一個隱藏的OEM磁碟分割中；對於基於UEFI韌體的OEM個人電腦而言，診斷程式可能內建於UEFI韌體中，也可能內建於EFI系統磁碟分割（ESP）/OEM磁碟分割中。

## BIOS韌體

由於BIOS與硬體系統整合在一起（將BIOS程式指令燒錄在IC中），所以有時候也被稱為[韌體](../Page/韌體.md "wikilink")。在大約1990年BIOS是保存在[ROM](../Page/ROM.md "wikilink")（[唯讀記憶體](../Page/唯讀記憶體.md "wikilink")）中而無法被修改。因為BIOS的大小和複雜程度隨時間不斷增加，而且硬體的更新速度加快，令BIOS也必須不斷更新以支援新硬體，於是BIOS就改為儲存在[EEPROM或者](../Page/EEPROM.md "wikilink")[快閃記憶體中](../Page/快閃記憶體.md "wikilink")，讓使用者可以輕易更新BIOS。然而，不適當的執行或是終止BIOS更新可能導致電腦或是裝置無法使用。為了避免BIOS損壞，有些新的[主機板有備份的BIOS](../Page/主機板.md "wikilink")（「雙BIOS」主機板）。現在的BIOS有「啟動區塊」（Boot
Block），屬於BIOS
ROM的一部份，一開始就會被執行。這個程式會在執行BIOS前，驗證BIOS其他部分是否正確無誤（經由檢查碼，湊雜碼等等）。如果啟動區塊偵測到主要的BIOS已損壞，則可自動讀取USB隨身碟/光碟中的特定BIOS檔案並更新BIOS。母板廠商/OEM經常發出BIOS升級來更新他們的產品和修正已知的問題。現在的BIOS多內建BIOS更新程式，無需在MS-DOS下更新BIOS，且在更新BIOS時會校驗BIOS檔案。

## 与[CMOS的联系和区别](../Page/CMOS.md "wikilink")

### BIOS与CMOS的关系

CMOS是计算机上另一个重要的存储器。之所以提到它，是因为BIOS程序的設定值、硬件參數偵測值就保存在CMOS中。而且，在BIOS程式啟動计算机時，需要载入CMOS中的設定值。CMOS通常被整合在[南橋晶片組中](../Page/南橋.md "wikilink")。UEFI系統則多用[NVRAM儲存設定](../Page/NVRAM.md "wikilink")。

### BIOS与CMOS的区别

二者的区别是，BIOS是儲存在唯读记憶體（[EEPROM](../Page/EEPROM.md "wikilink")），而CMOS为随机存储器（[RAM](../Page/随机存取记忆体.md "wikilink")）；BIOS中存储的是[程序](../Page/程序.md "wikilink")，而CMOS中存储的是普通信息。

CMOS的內容在斷電會消失。所以，把[主機板的電池拆出](../Page/主機板.md "wikilink")，便可重置其內容。另外，拆出電池也會重設[時間](../Page/時間.md "wikilink")。UEFI使用NVRAM儲存資料，主板電池沒有電量會導致時間不正確，可能會導致UEFI設定值遺失。可通過主板的有關Jumper重設UEFI設定。

## 介面卡上的BIOS晶片

一台電腦系統可以包含多個BIOS韌體晶片。開機BIOS主要是包含存取基本硬體元件（例如[鍵盤或](../Page/鍵盤.md "wikilink")[軟碟機](../Page/軟碟機.md "wikilink")）的程式碼。額外的介面卡，例如[SCSI](../Page/SCSI.md "wikilink")／[SAS硬碟介面卡](../Page/SAS.md "wikilink")、[網路介面卡](../Page/網路介面卡.md "wikilink")、[顯示卡等](../Page/顯示卡.md "wikilink")，也會包含他們自己的BIOS，補充或取代系統BIOS程式碼中有關這些硬件的部份。
為了在開機時找到這些記憶體映射的擴充唯讀記憶體，PC BIOS會掃描實體記憶體，從0xC0000到0xF0000的2KB邊界中尋找0x55
0xaa記號，接在其後的是一個位元，表示有多少個擴充唯讀記憶體的512位元區塊佔據真實記憶體空間。接著BIOS馬上跳躍到指向由擴充唯讀記憶體所接管的位址，以及利用BIOS服務來提供使用者設定介面，註冊中斷向量服務供開機後的應用程式使用，或者顯示診斷的資訊。

确切地说界面卡上的ROM不能稱之為BIOS。它只是一个程式片段，用来初始化自身所在的界面卡。比如[顯示卡的VGA](../Page/顯示卡.md "wikilink")
BIOS，[網路卡上用於網路開機的PXE](../Page/網路卡.md "wikilink") Option
ROM，[RAID卡用於在系統開機時讓BIOS識別RAID硬碟及顯示RAID卡設定訊息的Option](../Page/RAID.md "wikilink")
ROM（在開機時會尋找並執行Option ROM，此時會顯示Option ROM的相關訊息，按特定熱鍵可以執行該Option
ROM的設定）。UEFI Option ROM基於UEFI Driver，可在UEFI Firmware
Setup中執行UEFI Driver中的設定程式。

## BIOS開機規範

如果PCI擴充ROM（PCI Expansion ROM或Option ROM）要允許BIOS從SCSI卡、網路卡等裝置開機，Option
ROM可通過註冊BIOS Boot Specification （BBS） API來達到這點。

## 供應商

目前全球只有四家獨立BIOS供應商（IBV），曾經的[Award
Software與](../Page/Award_Software.md "wikilink")[General
Software均被](../Page/General_Software.md "wikilink")[Phoenix
Technologies收購](../Page/Phoenix_Technologies.md "wikilink")，[Microid
Research被](../Page/Microid_Research.md "wikilink")[Unicore
Software收購](../Page/Unicore_Software.md "wikilink")，[SystemSoft被](../Page/SystemSoft.md "wikilink")[Insyde
Software收購](../Page/Insyde_Software.md "wikilink")。

  - [Phoenix
    Technologies](../Page/Phoenix_Technologies.md "wikilink")，[美國](../Page/美國.md "wikilink")[鳳凰科技](../Page/鳳凰科技.md "wikilink")。
  - [American
    Megatrends](../Page/American_Megatrends.md "wikilink")，[美國](../Page/美國.md "wikilink")[安邁科技](../Page/安邁科技.md "wikilink")，目前為全球最大的BIOS供應商。之前曾被鳳凰科技超過。
  - [Insyde
    Software](../Page/系微.md "wikilink")，[台灣](../Page/台灣.md "wikilink")[系微公司](../Page/系微.md "wikilink")，業務以嵌入式韌體和筆記型電腦韌體為主。
  - [Byosoft](../Page/Byosoft.md "wikilink")，新興廠商，[中國大陸的](../Page/中國大陸.md "wikilink")[百敖軟體公司](../Page/百敖軟體.md "wikilink")。

## 取代

2006年，微软曾在WinHEC會議上表示[UEFI將會取代已经使用](../Page/UEFI.md "wikilink")20多年的BIOS。現時UEFI已經取代傳統BIOS，Intel將於2020年棄用Legacy
BIOS，屆時Intel產品不再支援基於16位真實模式的UEFI CSM（UEFI相容性支援模組）\[2\]。

## 相關鏈接

  - [可延伸韌體介面](../Page/可延伸韌體介面.md "wikilink")（UEFI）
  - [韌體](../Page/韌體.md "wikilink")
  - [系微公司](../Page/系微公司.md "wikilink")
  - [AMI公司](../Page/AMI.md "wikilink")
  - [Aptio](../Page/Aptio.md "wikilink")

## 外部連結

  - [Basic Input Output System](http://www.basicinputoutputsystem.com/)
  - [OpenBIOS](http://www.openfirmware.info/Welcome_to_OpenBIOS)
  - [SPI Flash Solutions for BIOS
    updates](https://web.archive.org/web/20100217170308/http://www.serialflash.com/)

<references/>

[Category:主板](https://zh.wikipedia.org/wiki/Category:主板 "wikilink")
[Category:韌體](https://zh.wikipedia.org/wiki/Category:韌體 "wikilink")
[Category:BIOS](https://zh.wikipedia.org/wiki/Category:BIOS "wikilink")

1.  [The PC Guide - System
    BIOS](http://www.pcguide.com/ref/mbsys/bios/index.htm)
2.  <http://www.uefi.org/sites/default/files/resources/Brian_Richardson_Intel_Final.pdf>