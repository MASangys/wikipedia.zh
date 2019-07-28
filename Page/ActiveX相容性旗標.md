**相容性旗標**（）是一個主要用於[微軟在其](https://zh.wikipedia.org/wiki/微軟 "wikilink")[Internet
Explorer](../Page/Internet_Explorer.md "wikilink")[瀏覽器的保安設定](https://zh.wikipedia.org/wiki/瀏覽器 "wikilink")。透過指定某一特定[ActiveX](../Page/ActiveX.md "wikilink")控制項軟件的特定數值，不論是由Microsoft或其他第三方的軟件，都可以讓Internet
Explorer瀏覽器知道，並停止使用該指定的軟件。

相容性旗標的最主要作用，是要堵塞IE的保安漏洞。若有某一軟件的生產商發現其ActiveX控制項的某一特定版本存有保安漏洞，可以向微軟提請為該特定版本的軟件設置相容性旗標。相容性旗標一般都會透過[Microsoft
Windows作業系統內建的](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[Windows
Update功能進行更新](../Page/Windows_Update.md "wikilink")。

具體的說，killbit其實是Windows內登錄的一個[旗標](https://zh.wikipedia.org/wiki/旗標 "wikilink")，透過軟件的[GUID來辨識](https://zh.wikipedia.org/wiki/GUID "wikilink")。由於微軟的ActiveX控制項規定必須要有獨一的GUID作辨識，Internet
Explorer可以透過對照控制項的GUID值來認定是否需要停用有關軟件。當生產商可以為軟件發行更新版本時，都必然會使用另一GUID值，而不是重用舊版的GUID。

除了Internet Explorer以外，[Microsoft
Office亦會透過這個旗標來決定文件內含的物件是否需要停用](../Page/Microsoft_Office.md "wikilink")。

## 參考

1.
2.
[Category:Internet_Explorer](https://zh.wikipedia.org/wiki/Category:Internet_Explorer "wikilink")
[Category:Microsoft_Windows保安技術](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows保安技術 "wikilink")