Music On Console (MOC)是一款在Linux/Unix文字介面下的音樂播放程式。
MOC功能強大且易於使用，整體介面排版近似於[Midnight
Commandert](../Page/Midnight_Commandert.md "wikilink")（一款文字介面檔案管理員）。其具有很高的自訂性。支援[ALSA](../Page/ALSA.md "wikilink")，[OSS或](../Page/OSS.md "wikilink")[JACK輸出](../Page/JACK.md "wikilink")；可自訂的色彩主題及介面；快速鍵；播放清單等。

由於為全文字介面，它所耗費的資源相當少。播放時主程式記憶體頂多佔2MB上下，CPU使用率也維持在個位數。且它用了一個輸出緩衝區來避免在高系統佔用率時的跳音，以及無間斷的背景播放。通常，
離開程式只會關掉操作介面———MOC會繼續背景播放\[1\]。

MOC的client/server架構近似於[MPD和](../Page/MPD.md "wikilink")[XMMS2](../Page/XMMS2.md "wikilink")，但不同於這些播放器的是MOC沒有開放API：無法使用圖形介面操作（理論上透過SSH還是可行）。

在套件庫中Music On
Console套件名被改成了「mocp」，因為名稱與[Qt的一個套件](../Page/Qt.md "wikilink")「moc」相衝。因此要注意欲使用MOC時，應在終端機輸入mocp而不是moc。

## 參見

[MOC首頁](http://moc.daper.net/)

<references/>

[Category:自由音訊軟體](https://zh.wikipedia.org/wiki/Category:自由音訊軟體 "wikilink")
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")
[Category:自由媒體播放器](https://zh.wikipedia.org/wiki/Category:自由媒體播放器 "wikilink")
[Category:媒体播放器](https://zh.wikipedia.org/wiki/Category:媒体播放器 "wikilink")

1.  小寫q為純粹關掉操作介面，大寫Q為完全離開MOC