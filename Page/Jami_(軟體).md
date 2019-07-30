**Jami**（曾名為**GNU Ring**、**SFLphone**）是一個開放原始碼且相容於[SIP的](../Page/会话发起协议.md "wikilink")[軟體電話與](https://zh.wikipedia.org/wiki/軟體電話 "wikilink")[即時通訊](../Page/即時通訊.md "wikilink")軟體，提供[Linux](../Page/Linux.md "wikilink")、[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[macOS與](https://zh.wikipedia.org/wiki/macOS "wikilink")[Android](../Page/Android.md "wikilink")平臺的版本，其可以不靠中央伺服器運作。Jami是以[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")授權的[自由软件](../Page/自由软件.md "wikilink")。2016年11月，它成為了[GNU計劃](../Page/GNU計劃.md "wikilink")的一部份\[1\]。其在大多數的主要Linux發行版均有提供軟體包，其中包含了[Debian](../Page/Debian.md "wikilink")、[Fedora](../Page/Fedora.md "wikilink")與[Ubuntu](../Page/Ubuntu.md "wikilink")。也提供了單獨的[GNOME](../Page/GNOME.md "wikilink")與[KDE](../Page/KDE.md "wikilink")版本\[2\]。

因為採用了[分散式雜湊表](../Page/分散式雜湊表.md "wikilink")技術（例如[BitTorrent網路就有使用](../Page/BitTorrent_\(协议\).md "wikilink")），Jami建立了自己的網路，並可提供目錄、認證、[加密等功能給連結到它的所有系統](https://zh.wikipedia.org/wiki/加密 "wikilink")\[3\]。

Jami是由Savoir-faire Linux開發與維護\[4\]；它將自己定位為潛在的[Skype](../Page/Skype.md "wikilink")自由軟體替代品\[5\]。Jami的-{文件}-則可在它的 Wiki上閱讀。

Ring在2018年12月18日重新命名為Jami。

## 歷史

SFLphone曾是在Linux下少數幾個預設即支援[PulseAudio](../Page/PulseAudio.md "wikilink")的軟體電話。Ubuntu的文件推薦企業使用它，因為其有如會議與通話轉接等功能\[6\]。2009年，CIO雜誌將SFLphone列為五個最值得注意的開放原始碼[VoIP軟體電話之一](https://zh.wikipedia.org/wiki/網際協議通話技術 "wikilink")\[7\]。

而從SFLphone改名為Ring後，其仍保留了SIP的相容性與支援，同時加入了不需要中心伺服器就可以使用的通訊平臺。

## 設計

Jami基於[MVC](../Page/MVC.md "wikilink")模型，有幕後程式（模型）與客戶端（視圖）通訊。幕後程式處理所有包含通訊層(SIP/IAX)、音訊錄製與播放等等的行程。而客戶端則是一個圖形化的使用者介面。[D-Bus](../Page/D-Bus.md "wikilink")則可以充當控制器來讓客戶端與幕後程式間進行通訊。

## 功能

  - 有OpenDHT支援並與[SIP相容](../Page/会话发起协议.md "wikilink")\[8\]
  - 無限制的通話數
  - 即時通訊
  - 可搜尋的通話歷史
  - 通話錄音\[9\]
  - 通話轉接
  - 自動通話回覆
  - 通話保留
  - 多方音訊的音訊與視訊通話\[10\]與實驗性的視訊會議\[11\]
  - 實驗性的多頻道音訊支援
  - 通話中串流視訊與音訊檔案
  - 支援[TLS與](https://zh.wikipedia.org/wiki/傳輸層安全協議 "wikilink")[SRTP](../Page/安全实时传输协议.md "wikilink")
  - 支援多種音訊編解碼器\[12\]：G711u, G711a, GSM, [Speex](https://zh.wikipedia.org/wiki/Speex "wikilink") (8, 16, 32 kHz), [Opus](https://zh.wikipedia.org/wiki/Opus_codec "wikilink"), [G.722](https://zh.wikipedia.org/wiki/G.722 "wikilink")（Speex支援靜音偵測）
  - 多SIP帳號支援，每個帳號的[STUN](../Page/STUN.md "wikilink")支援與SIP存在訂閱
  - [DTMF支援](../Page/双音多频.md "wikilink")
  - 自動增益控制
  - 帳號協助精靈
  - 全域鍵盤快捷鍵
  - 支援[Flac與](../Page/FLAC.md "wikilink")[Vorbis鈴聲](https://zh.wikipedia.org/wiki/Vorbis "wikilink")\[13\]
  - 桌面通知：語音信箱號碼、來電、資訊訊息
  - SIP重新邀請
  - 在GNOME與KDE中的通訊錄整合
  - 支援[PulseAudio](../Page/PulseAudio.md "wikilink")
  - 支援[Jack Audio Connection Kit](https://zh.wikipedia.org/wiki/Jack_Audio_Connection_Kit "wikilink")
  - 多語系支援
  - 自動開啟連入的[URL](../Page/统一资源定位符.md "wikilink")
  - 聊天、視訊與語音的端對端加密\[14\]
  - 分散式網路

## 參見

  - [VoIP軟體的比較](../Page/VoIP軟體的比較.md "wikilink")
  - [Tox](../Page/Tox.md "wikilink")

## 參考資料

## 外部連結

  -
  - [官方部落格](https://blog.savoirfairelinux.com/en-ca)

[Category:VoIP軟體](https://zh.wikipedia.org/wiki/Category:VoIP軟體 "wikilink") [Category:群件](https://zh.wikipedia.org/wiki/Category:群件 "wikilink") [Category:協作](https://zh.wikipedia.org/wiki/Category:協作 "wikilink") [Category:社交網路服務](https://zh.wikipedia.org/wiki/Category:社交網路服務 "wikilink") [Category:網上聊天](https://zh.wikipedia.org/wiki/Category:網上聊天 "wikilink") [Category:GNOME应用程序](https://zh.wikipedia.org/wiki/Category:GNOME应用程序 "wikilink") [Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink")

1.

2.
3.

4.

5.

6.

7.

8.
9.

10.
11.

12.
13.
14.