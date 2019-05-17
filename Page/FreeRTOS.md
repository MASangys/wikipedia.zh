**FreeRTOS**是一個熱門的\[1\][嵌入式裝置用](https://zh.wikipedia.org/wiki/嵌入式裝置 "wikilink")[即時作業系統核心](https://zh.wikipedia.org/wiki/即時作業系統 "wikilink")\[2\]\[3\]，它于2003年由Richard
Barry设计，并已被經成功移植到35種不同的[微控制器上](https://zh.wikipedia.org/wiki/微控制器 "wikilink")\[4\]。FreeRTOS採用[MIT许可证授權](https://zh.wikipedia.org/wiki/MIT许可证 "wikilink")。

## 實作

FreeRTOS的設計小巧且簡易，整個核心程式碼只有3到4個C檔案，為了讓程式碼容易閱讀、移植和維護，大部分的程式碼都是以[C語言編寫](https://zh.wikipedia.org/wiki/C語言 "wikilink")，只有一些函式（多數是架構特定排班副程式）採用[組合語言編寫](https://zh.wikipedia.org/wiki/組合語言 "wikilink")。

FreeRTOS提供許多方法以實現多[线程](../Page/线程.md "wikilink")（threads）、多[作業](../Page/作業_\(電腦\).md "wikilink")（task）、[互斥鎖](https://zh.wikipedia.org/wiki/互斥鎖 "wikilink")（mutex）、[號誌](https://zh.wikipedia.org/wiki/信號標 "wikilink")（semaphore）和[軟體計時器](https://zh.wikipedia.org/wiki/軟體計時器 "wikilink")（software
timer），有個為低耗電應用程式提供的[无嘀嗒](https://zh.wikipedia.org/wiki/无嘀嗒内核 "wikilink")（tick-less）模式，執行緒的優先權管理也有支援，此外，FreeRTOS提供了四種記憶體配置的模式：

  - 僅配置（allocate only）
  - 以非常簡易但快速的演算法進行配置與釋放
  - 搭配，以較複雜但快速的演算法進行配置與釋放
  - 搭配互斥保護，以 C 函式庫配置進行配置與釋放

FreeRTOS中沒有一些像[Linux](../Page/Linux.md "wikilink")、[Microsoft
Windows等典型作業系統具有的先進特徵](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，例如、先進[記憶體管理機制](../Page/記憶體管理.md "wikilink")、使用者管理和網路管理，FreeRTOS著重在執行的簡潔與速度，FreeRTOS有時會被視為是一個『執行緒函式庫』而非『作業系統』，儘管可以找到[命令列介面和類似](https://zh.wikipedia.org/wiki/命令列介面 "wikilink")[POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink")
I/O 介面的插件。

FreeRTOS實作了多執行緒，主程式會在規律的短時間區間內呼叫一個執行緒時計方法，這個方法會以[循環制依照任務的優先順序進行任務切換](https://zh.wikipedia.org/wiki/循環制 "wikilink")，一般來說，這個短時間區間介於
1/1000 秒與 1/100 秒之間，透過一個硬體時計中斷來計時，但這個區間經常隨著特定的應用而改變。

從FreeRTOS官網（[FreeRTOS.org](http://www.freertos.org/)）所下載到的程式碼包含準備用來移植或編譯的設定檔和演示程式碼，讓使用者可以快速地進行應用程式設計。

## 主要特色

  - 記憶體足跡非常小，低（overhead）且執行非常快速
  - 提供低電耗應用程式無計時選項
  - 對作業系統新手而言，很適合作為入門教材，對於專業開發者來說則適合用於商業產品開發
  - [排程器可以設定成](https://zh.wikipedia.org/wiki/排程器 "wikilink")[可搶先](https://zh.wikipedia.org/wiki/抢占式多任务处理 "wikilink")（preemptive）或（cooperative
    operation）
  - 提供[共用副程式](../Page/协程.md "wikilink")（coroutine），在FreeRTOS中，共用副程式是一個記憶體[堆疊用量非常有限但非常簡易輕巧的](../Page/呼叫堆疊.md "wikilink")[任務](../Page/作業_\(電腦\).md "wikilink")
  - 支援使用（generic [trace
    macros](http://www.freertos.org/index.html?http://www.freertos.org/rtos-trace-macros.html).
    ）

## 支援平台

  - [Altera](../Page/Altera.md "wikilink") [Nios
    II](https://zh.wikipedia.org/wiki/Nios_II "wikilink")

  - [ARM
    architecture](https://zh.wikipedia.org/wiki/ARM_architecture "wikilink")

      - [ARM7](https://zh.wikipedia.org/wiki/ARM7 "wikilink")

      - [ARM9](https://zh.wikipedia.org/wiki/ARM9 "wikilink")

      -
      - [ARM Cortex-A](../Page/ARM_Cortex-A8.md "wikilink")

  - [Atmel](https://zh.wikipedia.org/wiki/Atmel "wikilink")

      - [Atmel AVR](../Page/Atmel_AVR.md "wikilink")

      -
      - SAM3

      - SAM4

      - SAM7

      - SAM9

      - SAM D20

      - SAM L21

  -   - APS1
      - APS3
      - APS3R
      - APS5
      - FPS6
      - FPS8

  -   - [PSoC](../Page/PSoC.md "wikilink")

  -   -
  - [Fujitsu](https://zh.wikipedia.org/wiki/Fujitsu "wikilink")

      - FM3 series
      - MB91460 series
      - MB96340

  - [Freescale](https://zh.wikipedia.org/wiki/Freescale "wikilink")

      - V1

      - Coldfire V2

      -
      - Kinetis

  - [IBM](../Page/IBM.md "wikilink")

      - ,PPC404

  - [Infineon](https://zh.wikipedia.org/wiki/Infineon "wikilink")

      -
      -
  - [Intel](https://zh.wikipedia.org/wiki/Intel "wikilink")

      - [x86](https://zh.wikipedia.org/wiki/x86 "wikilink")
      - [8052](https://zh.wikipedia.org/wiki/英特爾8051#8052 "wikilink")

  - [PIC微控制器](../Page/PIC微控制器.md "wikilink")

      - PIC18
      - PIC24
      - dsPIC
      - PIC32

  -   -
  -   - Multiclet P1

  - [NXP](https://zh.wikipedia.org/wiki/NXP "wikilink")（）

      - LPC1000
      - LPC2000
      - LPC4300

  - [Renesas](https://zh.wikipedia.org/wiki/Renesas "wikilink")

      - 78K0R

      - RL78

      - [H8/S](https://zh.wikipedia.org/wiki/H8系列 "wikilink")

      - RX600

      - RX200

      - [SuperH](../Page/SuperH.md "wikilink")

      -
  - [STMicroelectronics](https://zh.wikipedia.org/wiki/STMicroelectronics "wikilink")

      -
      - STR7

  - [Texas Instruments](https://zh.wikipedia.org/wiki/德州儀器 "wikilink")

      - [MSP430](../Page/MSP430.md "wikilink")

      - Stellaris

      - （TMS570LS04 & RM42）

  - [Xilinx](https://zh.wikipedia.org/wiki/Xilinx "wikilink")

      -
      - [Zynq-7000](https://zh.wikipedia.org/wiki/Xilinx#Zynq "wikilink")

## 相關系統

### SafeRTOS

SafeRTOS的功能和FreeRTOS類似，但是是為實現[安全關鍵系統所設計](https://zh.wikipedia.org/wiki/安全關鍵系統 "wikilink")。FreeRTOS的機能模型經過完全的[HAZOP](../Page/危害與可操作性分析.md "wikilink")，其機能模型及API因為使用者誤用或是硬體失效造成的弱點都已經識別且修正。最後的需求經過完整[IEC
61508](../Page/IEC_61508.md "wikilink") SIL
3開發生命週期來實現，也是只有軟體的元件可以達到的最高等級。

SafeRTOS是由WITTENSTEIN high integrity systems開發，原開發者 Real Time Engineers
Ltd
為其合作夥伴\[5\]。SafeRTOS和FreeRTOS有相同的排程演算法，相似的[API](https://zh.wikipedia.org/wiki/API "wikilink")，其他方面也相當類似\[6\]，不過是因為不同的目標而設計的\[7\]。SafeRTOS只用C語言進行開發，以符合IEC61508的認證需求\[8\]。

在作業系統中，SafeRTOS有其獨特的地方，是只需要放在微處理器中的[唯讀記憶體](../Page/唯讀記憶體.md "wikilink")（ROM）即可，因此可以進行IEC61508或是其他安全或是可靠度相關的完整軟體及硬體預認證\[9\]。若是放在唯讀記憶體中，SafeRTOS代碼只能依照原始的組態來執行，因此用這套作業系統的設備的認證測試，不需在安全認證中重新測試其開發的程式\[10\]。

德州儀器會針對其TI
Stellaris系列的部份MCU的ROM裡加上SafeRTOS\[11\]，因此客戶可以將SafeRTOS用在商業應用中，而不用採購其原代碼。在這種使用方式下，會提供一個簡單的C語言標頭檔將SafeRTOS的API函式對映於其在ROM中對應位置內。這種將SafeRTOS放在唯讀記憶體的作法相當理想，因為其中的程式不會被修改，去除了使用者的錯誤，也確保在專案開發過程中，SafeRTOS部份的程式都和認證時的相同。

### OpenRTOS

OpenRTOS也是和FreeRTOS有關的專案，其代碼和FreeRTOS完全相同，但是其授權及收費方式不同。OpenRTOS是由WITTENSTEIN
Aerospace and Simulation
Ltd提供的軟體，其授權要求移除了所有參考[GNU通用公共许可证的內容](../Page/GNU通用公共许可证.md "wikilink")
。OpenRTOS是商業軟體，需購買後才能使用，也沒有上述的授權要求，購買OpenRTOS的客戶也可以獲得完整的技術支援\[12\]。

## 参见

  - [嵌入式操作系统](https://zh.wikipedia.org/wiki/嵌入式操作系统 "wikilink")

## 参考资料

## 外部链接

  - [Official website](http://www.freertos.org/)
  - [OPENRTOS](https://web.archive.org/web/20141028062044/http://www.openrtos.com/openrtos/)
  - [SAFERTOS](http://www.freertos.org/FreeRTOS-Plus/Safety_Critical_Certified/SafeRTOS.shtml)
  - [FreeRTOS+Trace](http://www.percepio.se)
  - [FreeRTOS ecosystem products](http://www.FreeRTOS.org/FreeRTOS-Plus)
  - [成功大學 FreeRTOS](http://wiki.csie.ncku.edu.tw/embedded/freertos)

[Category:操作系统](https://zh.wikipedia.org/wiki/Category:操作系统 "wikilink")
[Category:应用软件](https://zh.wikipedia.org/wiki/Category:应用软件 "wikilink")

1.
2.
3.
4.
5.
6.
7.  [Relationship between FreeRTOS and
    SAFE**RTOS**](http://www.freertos.org/FreeRTOS-Plus/Safety_Critical_Certified/SafeRTOS.shtml)
8.
9.
10.
11. [TI Stellaris Product
    range](http://www.ti.com/lsds/ti/microcontroller/arm_stellaris/overview.page)
12. [OpenRTOS](http://www.openrtos.com/openrtos/)