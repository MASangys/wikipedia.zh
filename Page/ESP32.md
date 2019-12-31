> 本文内容由[ESP32](https://zh.wikipedia.org/wiki/ESP32)转换而来。


**ESP32**是一系列低成本，低功耗的[單晶片微控制器](https://zh.wikipedia.org/wiki/單晶片 "wikilink")，集成了[Wi-Fi](../Page/Wi-Fi.md "wikilink")和雙模[藍牙](../Page/藍牙.md "wikilink")。 ESP32系列採用Tensilica Xtensa LX6微處理器，包括雙核心和單核變體，內建天線開關，RF變換器，[功率放大器](https://zh.wikipedia.org/wiki/功率放大器 "wikilink")，[低雜訊接收放大器](https://zh.wikipedia.org/wiki/低雜訊接收放大器 "wikilink")，濾波器和電源管理模組。

ESP32 由總部位於[上海的中國公司](https://zh.wikipedia.org/wiki/上海 "wikilink")[樂鑫信息科技創建和開發](https://zh.wikipedia.org/wiki/樂鑫信息科技 "wikilink")，由[台積電採用](https://zh.wikipedia.org/wiki/台積電 "wikilink")40[奈米技術製造](https://zh.wikipedia.org/wiki/奈米 "wikilink")\[1\]。它是[ESP8266微控制器的後繼產品](https://zh.wikipedia.org/wiki/ESP8266 "wikilink")。

## 功能

ESP32的功能包括以下內容：

  - 處理器：
      - CPU: Xtensa 雙核心 (或者單核心) 32位元 LX6 微處理器, 工作時脈 160/240 MHz, 運算能力高達 600 DMIPS
  - 記憶體：
      - 448 KB ROM (64KB+384KB)
      - 520 KB SRAM
      - 16 KB RTC SRAM,SRAM 分為兩種
          - 第一部分 8 KB RTC SRAM 為慢速儲存器,可以在 Deep-sleep 模式下被次處理器訪問
          - 第二部分 8 KB RTC SRAM 為快速儲存器,可以在 Deep-sleep 模式下RTC 啓動時用於數據存儲以及 被主 CPU 訪問。
      - 1 Kbit 的 eFuse，其中 256 bit 爲系統專用（MAC 位址和晶片設置）；其餘 768 bit 保留給用戶應用，這些 應用包括 Flash 加密和晶片 ID。
      - QSPI 支援多個[快閃記憶體](https://zh.wikipedia.org/wiki/快閃記憶體 "wikilink")/[SRAM](../Page/静态随机存取存储器.md "wikilink")
      - 可使用 SPI儲存器 映射到外部記憶體空間，部分儲存器可做為外部儲存器的 Cache
          - 最大支援 16 MB 外部 SPI Flash
          - 最大支援 8 MB 外部 SPI SRAM
  - 無線傳輸：
      - [Wi-Fi](../Page/Wi-Fi.md "wikilink"): 802.11 b/g/n
      - [藍芽](https://zh.wikipedia.org/wiki/藍芽 "wikilink"): v4.2 BR/EDR/BLE
  - 外部介面：
      - 34個 [GPIO](https://zh.wikipedia.org/wiki/GPIO "wikilink")
      - 12-bit SAR ADC ，多達18個通道
      - 2個 8位元 [D/A 轉換器](../Page/數位類比轉換器.md "wikilink")
      - 10 個觸控感應器
      - 4個 [SPI](../Page/序列周邊介面.md "wikilink")
      - 2個 [I<sup>2</sup>S](../Page/I²S.md "wikilink")
      - 2個 [I<sup>2</sup>C](../Page/I²C.md "wikilink")
      - 3個 [UART](../Page/UART.md "wikilink")
      - 1個 Host SD/[eMMC](https://zh.wikipedia.org/wiki/eMMC "wikilink")/[SDIO](../Page/SD卡.md "wikilink")
      - 1個 Slave [SDIO](../Page/SD卡.md "wikilink")/[SPI](../Page/序列周邊介面.md "wikilink")
      - 帶有專用 DMA 的[乙太網路介面](../Page/以太网.md "wikilink"),支援 [IEEE](../Page/电气电子工程师学会.md "wikilink") 1588
      - CAN 2.0
      - [紅外線傳輸](https://zh.wikipedia.org/wiki/紅外線 "wikilink")
      - 電機 [PWM](../Page/脈衝寬度調變.md "wikilink")
      - [LED](../Page/發光二極管.md "wikilink") [PWM](../Page/脈衝寬度調變.md "wikilink"), 多達16個通道
      - [霍爾感應器](../Page/霍尔效应传感器.md "wikilink")
  - 定址空間
      - 對稱定址映射
      - 資料匯流排與指令匯流排分別可定址到4GB(32bit)
      - 1296 KB 晶片內存取定址
      - 19704 KB 外部存取定址
      - 512 KB 外部位址空間
      - 部分儲存器可以被資料匯流排存取也可以被指令匯流排存取
  - 安全機制
      - 安全啟動
      - Flash ROM 加密
      - 1024 bit OTP, 使用者可用高達768 bit
      - 硬體加密加速器
          - [AES](https://zh.wikipedia.org/wiki/AES "wikilink")
          - [Hash](https://zh.wikipedia.org/wiki/Hash "wikilink") ([SHA-2](../Page/SHA-2.md "wikilink"))
          - [RSA](https://zh.wikipedia.org/wiki/RSA "wikilink")
          - [ECC](https://zh.wikipedia.org/wiki/ECC "wikilink")
          - [亂數產生器](https://zh.wikipedia.org/wiki/硬體亂數生成器 "wikilink") (RNG)

## 参考资料

[Category:微控制器](https://zh.wikipedia.org/wiki/Category:微控制器 "wikilink")

1.