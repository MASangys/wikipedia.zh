**IO-Link**是將[智能感測器及](https://zh.wikipedia.org/wiki/智能感測器 "wikilink")[执行器連接到自動化系統的](https://zh.wikipedia.org/wiki/执行器 "wikilink")，依照[IEC
61131-9標準中的Single](../Page/IEC_61131.md "wikilink")-drop digital
communication interface for small sensors and
actuators（SDCI）。此規範包括電氣的連接方式以及數位的通訊協定，智能感測器及执行器可以依此和自動化系統互動。

IO-Link系統會包括一個IO-Link主站，一台或是多台的IO-Link設備（可能是感測器或是执行器）。IO-Link主站提供介面給上層的控制器（[PLC](../Page/可编程逻辑控制器.md "wikilink")），並且透過通訊控制連接的IO-Link設備。

IO-Link主站會可以有一個或多個IO-Link接口，基本上每個接口只能連結一個設備，不過現在也有可以串接的設備或是[集線器](../Page/集線器.md "wikilink")。

IO-Link設備可以是智能感測器、動作器或是集線器。在市面上也有不用額外電源，直接用IO-Link網路線供電的設備。在IO-Link中，「智能」的定義是指設備上有序號或是參數（例如靈敏度、切換延遲時間等）可以透過IO-Link通訊協定讀寫。PLC可以在和設備通訊時調整其參數。IO-Link以及其傳輸的參數可以進行設備的[預防性維修以及維護](https://zh.wikipedia.org/wiki/預防性維修 "wikilink")，例如光感測器若變髒了，會透過IO-Link通知PLC，因此可以及時進行清潔，而不會像定時清潔時，有設備太早清潔，或是沒有及時清潔的情形。

感測器及執行器的參數依設備而不同，不過也有（IO設備描述）格式的參數資訊。

## 設備商的聲明

各設備IO-Link或是SDCI標準的品質是由設備商的聲明來保證的。要準備設備商的聲明，除了CE認證的測試外，還需要依照IO-Link測試規範V1.1版進行測試。測試需要有一個主站以及一個設備。
目前已有三個可以提供支援的認證中心，其任務是在廠商開發IO-Link設備時提供建議。
自從2011年7月1日起，已強制IO-Link設備都需要設備商的聲明。

## 傳輸方式

IO-Link的訊號電壓是24V，若傳輸失敗了，會重送二次要傳輸的資料，若第二次仍然沒有成功，IO-Link主站會偵測到通訊失敗，並且回報給上位的控制器。

## 來源

  - [Beschreibung von
    IO-Link](http://www.io-link.com/de/Technologie/IO-Link_im_Durchblick.php)
    IO-Link組織

## 參考資料

  - Peter Wienzek, Joachim R. Uffelmann: *IO-Link. Intelligente Geräte
    brauchen einfache Schnittstellen* Oldenbourg Industrieverlag,
    München 2010, ISBN 978-3-8356-3115-1.

## 外部連結

  - Digitale Sensorausgänge: [PNP/NPN/PP oder
    IO-Link?](http://www.ichaus.de/upload/pdf/EInfo_H3_2011_PNP-NPN-PP_oder_IO-Link.pdf)

[分類:网络协议](https://zh.wikipedia.org/wiki/分類:网络协议 "wikilink")