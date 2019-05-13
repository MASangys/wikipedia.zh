[MIonNEX6.jpg](https://zh.wikipedia.org/wiki/File:MIonNEX6.jpg "fig:MIonNEX6.jpg")

**MI热靴**（Multi Interface
Shoe）是索尼公司于2012年9月推出的一种[热靴接口](../Page/热靴.md "wikilink")，物理上基于ISO518规范\[1\]，可以触发兼容闪光灯，但同时通过前端附带的金手指提供额外功能，除了配合原厂灯实现TTL功能外，还可以支持麦克风、GPS等与相机交换信息。

**MI热靴**用于替代索尼之前继承[美能达单反系统而获得的](https://zh.wikipedia.org/wiki/Minolta_AF "wikilink")**i-ISO**热靴，为标准冷靴附件，与单点热靴产品提供更好的支持。索尼公司在之后推出的相机与摄像机产品上以此来作为热靴标准配置。

## 概况

索尼在2005年接收[柯尼卡美能达公司相机事业部门](https://zh.wikipedia.org/wiki/柯尼卡美能达 "wikilink")，沿用其机型于1988年开始配置使用的[iISO热靴](../Page/iISO.md "wikilink")。因为物理上与ISO518热靴不兼容，对于通用性附件支持不好，及希望增加新的功能，索尼公司于2012年9月随α99一同，发布了新款的MI热靴（Multi
Interface）接口\[2\]，字面为“**多接口热靴**”。

## 电气规范

[MI热靴细部](https://zh.wikipedia.org/wiki/File:Sony_mi_acessory_shoe.jpg "fig:MI热靴细部")

| Pin | Direction (Shoe)           | Type                        | Signal                                      | AAS | SAT                       | Comment                                                                                    |
| --- | -------------------------- | --------------------------- | ------------------------------------------- | --- | ------------------------- | ------------------------------------------------------------------------------------------ |
| 1   |                            | Generic                     | ID3                                         | N/A | N/A                       | Hotshoe type identification (left-most pin, except for pin 23)                             |
| 2   |                            | Generic                     | ID2                                         | N/A | N/A                       | Hotshoe type identification                                                                |
| 3   |                            | Generic                     | ID1                                         | N/A | N/A                       | Hotshoe type identification                                                                |
| 4   |                            | 麦克风 或 EVF电子取景器              | MIC_GND                                    | N/A | MIC_GND                  | Microphone ground (analog)                                                                 |
| 5   |                            | 麦克风 或 EVF电子取景器              | MIC_L / GVIF_SDATA_N                     | N/A | MIC_L / (GVIF_SDATA_N) | Left Microphone (analog), EVF                                                              |
| 6   |                            | 麦克风 或 EVF电子取景器              | MIC_R / GVIF_SDATA_P                     | N/A | MIC_R / (GVIF_SDATA_P) | Right Microphone (analog), EVF                                                             |
| 7   | Supply (Out)               | Power                       | REG_GND                                    | GND | REG_GND                  | Logic ground - connected to pin 15, 23, 24 in camera                                       |
| 8   |                            | GPS 或 WLAN                  | GPS_PWR_CTRL / WLAN_SD_CLK              | N/A | N/A                       |                                                                                            |
| 9   |                            | GPS 或 WLAN                  | GPS_CTS / WLAN_SD_D0                     | N/A | N/A                       |                                                                                            |
| 10  |                            | GPS 或 WLAN                  | GPS_RTS / WLAN_SD_D1                     | N/A | N/A                       |                                                                                            |
| 11  |                            | GPS or WLAN                 | GPS_UART_TXD / WLAN_SD_D2               | N/A | N/A                       |                                                                                            |
| 12  |                            | GPS or WLAN                 | GPS_UART_RXD / WLAN_SD_D3               | N/A | N/A                       |                                                                                            |
| 13  | Supply (Out)               | Power                       | LOGIC_VDD                                  |     | LOGIC_VDD                | Switched, regulated low power 3.15V supply                                                 |
| 14  |                            | Microphone or WLAN or Audio | MIC_C / WLAN_SD_CMD / SP_OUT / AUDIO_L | N/A | MIC_C                    |                                                                                            |
| 15  | Supply (Out)               | Power                       | REG_GND                                    | GND | REG_GND                  | Logic ground - connected to pin 7, 23, 24 in camera                                        |
| 16  |                            | GPS or WLAN or Audio        | XGPS_RST / XWLAN_RST / AUDIO_R           | N/A | N/A                       |                                                                                            |
| 17  | Supply (Out)               | Power                       | UNREG                                       |     | UNREG                     | Switched, fused (1.6 A), unregulated battery power (battery plus, 6.1-8.4V) against pin 21 |
| 18  | Out                        | Flash or EVF                | F3 / EXT_EVF_SCK                          | F3  | F3 / (EXT_EVF_SCK)      |                                                                                            |
| 19  | In                         | 闪光灯或EVF电子取景器                | F2 / EXT_EVF_SI                           | F2  | F2 / (EXT_EVF_SI)       |                                                                                            |
| 20  | Out                        | 闪光灯或EVF电子取景器                | F1\# / EXT_EVF_SO                         | N/A | F1\# / (EXT_EVF_SO)     |                                                                                            |
| 21  | Supply (Out)               | Power                       | PGND                                        |     | PGND                      | Power ground (battery minus) / on-camera detection (right-most pin, except for pin 24)     |
| 22  | Open Collector/Drain (Out) | Flash                       | ISO_SHOE_X                                | F1  | N/A                       | ISO shoe X sync (middle contact) - for low voltage trigger circuits only                   |
| 23  | Power / Supply             | Flash                       | ISO_SHOE_FG                               | GND |                           | ISO shoe frame ground (left) - connected to pin 24, 7, 15 in camera                        |
| 24  | Power / Supply             | Flash                       | ISO_SHOE_FG                               | GND |                           | ISO shoe frame ground (right) - connected to pin 23, 7, 15 in camera                       |

## 相关产品

2012年9月开始，索尼推行的[SLT和](https://zh.wikipedia.org/wiki/SLT "wikilink")[微单相机产品都尽可能配置了新的MI热靴](https://zh.wikipedia.org/wiki/微单 "wikilink")。

### 相机与摄像机

  - 固定镜头数码相机
      - SONY CyberShot DSC-RX1 / DSC-RX1R / DSC-RX1RM2
      - SONY CyberShot DSC-RX100M3
      - SONY CyberShot DSC-RX10 / DSC-RX10M2 / DSC-RX10M3
      - SONY CyberShot DSC-HX50
      - SONY CyberShot DSC-HX60

<!-- end list -->

  - 可换镜头数码相机
      - E卡口机型
          - SONY ILCE-7 / ILCE-7R / ILCE-7S /ILCE-7M2 / ILCE-7RM2 /
            ILCE-7SM2
          - SONY ILCE-6000 / ILCE-6300 / ILCE-6500
          - SONY NEX-6
          - SONY ILCE-3000
          - HASSEBLAD Solar（未上市\[3\]）

<!-- end list -->

  -   - A卡口机型
          - SONY SLT-A99 / ILCA-99M2
          - SONY ILCA-77M2
          - SONY SLT-A68
          - SONY SLT-A58

<!-- end list -->

  - 摄像机
      - NEX-VG30
      - NEX-VG30H
      - NEX-VG900

### 闪光灯

  - HVL-F60M\[4\]
  - HVL-F43M\[5\]
  - HVL-F32M
  - HVL-F20M\[6\]

### 摄像灯

  - HVL-LEIR1

### 麦克风

  - ECM-XYST1M
  - XLR-K1M

### EVF电子取景器

  - FDA-EV1MK

### 转接适配器

  - ADP-MAA

适用于iISO附件与MI热靴新相机适配

  - ADP-AMA

适用于MI热靴新款附件与iISO相机适配

  - FA-CS1M

用于离机线缆连接用

## 参见

  - [热靴](../Page/热靴.md "wikilink")
      - [iISO热靴](../Page/iISO.md "wikilink")，索尼之前从[美能达方面继承使用的热靴接口](https://zh.wikipedia.org/wiki/美能达 "wikilink")

## 参考与引用

## 外部链接

  - [Mi多接口热靴](http://www.sonystyle.com.cn/products/accy/mi_shose/index.htm)
    — SonyStyle（简体中文）
  - [《说一说索尼相机热靴恩怨情仇》](http://jy.smzdm.com/detail/7193) — 什么值得买

[Category:摄影器材](https://zh.wikipedia.org/wiki/Category:摄影器材 "wikilink")

1.  {{ cite web| url =
    <http://www.iso.org/iso/en/CatalogueDetailPage.CatalogueDetail?CSNUMBER=36330&scopelist=ISO>
    | title = 518:2006 - 摄影 - 照相机用于闪光灯或电子闪光单元，带及不带有电子触点的附件靴 - 规范 |
    publisher = 国际标准化组织 | date = 2006年5月12日 }}
2.  [1](http://www.sony.jp/CorporateCruise/Press/201209/12-0912B/)
3.  [Hasselblad slaps some wood, $10,000 price tag on Sony's new
    A7](http://www.engadget.com/2013/10/17/hasselblad-sony-a-7-solar-rebadge/)
    - engadget
4.  [ソニーα用中型クリップオンストロボにMIシュー対応版](http://dc.watch.impress.co.jp/docs/news/20130627_605332.html)
    - Watch Impress
5.  [「クイックシフトバウンス」対応の中型クリップオンストロボ](http://dc.watch.impress.co.jp/docs/news/20110824_472224.html)
    - Watch Impress
6.  [マルチインターフェースシュー対応小型ストロボ](http://dc.watch.impress.co.jp/docs/news/20130225_589270.html)
    - Watch Impress