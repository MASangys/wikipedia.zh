**Windows縮圖快取**是一個從[Windows 2000開始加入到](../Page/Windows_2000.md "wikilink")[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[作業系統的功能](https://zh.wikipedia.org/wiki/作業系統 "wikilink")\[1\]。Windows縮圖快取會預先繪製各資料夾中特定類型檔案的縮圖，並儲存在該資料夾裡的`thumbs.db`檔案中。經由此方式來儲存縮圖將可節省每次用户使用[Windows檔案總管開啟資料夾](https://zh.wikipedia.org/wiki/Windows檔案總管 "wikilink")，而系統需要重新繪製縮圖的時間。

## 目的

由於產生檔案縮圖的工序需耗用大量的CPU資源，如果資料夾中包含了大量的檔案更會拖慢電腦的其他工作；一個明顯的例子是開啟內含大量圖像檔案的光碟，由於不可以在光碟中寫入檔案，用户每次打開資料夾系統都需要重新繪製縮圖，這將浪費大的時間及電腦資源。从[Windows 2000開始](../Page/Windows_2000.md "wikilink")，Windows會預先繪製多種檔案的縮圖，如[JPEG](../Page/JPEG.md "wikilink")、[BMP](https://zh.wikipedia.org/wiki/BMP "wikilink")、[GIF](../Page/GIF.md "wikilink")、[PNG](../Page/PNG.md "wikilink")、[TIFF](../Page/TIFF.md "wikilink")、[AVI](https://zh.wikipedia.org/wiki/AVI "wikilink")、[PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")、[PPTX](https://zh.wikipedia.org/wiki/PPT "wikilink")、[DOCX](https://zh.wikipedia.org/wiki/DOC "wikilink")、[HTML](../Page/HTML.md "wikilink")等等，並將縮圖儲存到縮圖快取檔案之中以解決此問題\[2\]。在使用[NTFS](../Page/NTFS.md "wikilink")檔案系統的硬碟中，Windows會將縮圖儲存在該檔案的[交換數據流](https://zh.wikipedia.org/wiki/交換數據流 "wikilink")（[NTFS](../Page/NTFS.md "wikilink")）；而[FAT32檔案系統則會儲存在](https://zh.wikipedia.org/wiki/FAT32 "wikilink")`thumbs.db`檔案之中。另外[Windows ME操作系統亦會新增一個Thumbs](https://zh.wikipedia.org/wiki/Windows_ME "wikilink").db檔案該資料夾之中\[3\]。從[Windows XP開始](../Page/Windows_XP.md "wikilink")，用家可以自行設定是否要預先建立縮圖快取。而在Windows 2000、ME及XP，用家可以在檔案的右鍵選單中選擇強制重製檔案縮圖。

## Thumbs.db

`thumbs.db`用於儲存該資料夾中的檔案的縮圖快取，但同時Thumbs.db會耗用系統或移除式裝置一定的容量\[4\]。在[Windows XP 媒體中心版](https://zh.wikipedia.org/wiki/Windows_XP版本列表#媒體中心版 "wikilink")（Windows XP Media Center Edition）則會把影片的預覽快取儲存在`ehthumbs.db`檔案中。在同一資料夾內的縮圖快取均會儲存在同一資料庫檔案中，不論那個檔案是甚麼格式，Windows均會以JPEG格式儲存，而大小則會是預設的96×96平方[像素](../Page/像素.md "wikilink")或按比例縮小至最長邊長為96像素，或可自行在[登錄檔中自訂大小](https://zh.wikipedia.org/wiki/登錄檔 "wikilink")。`thumbs.db`檔案是以[物件連結與嵌入檔式儲存](https://zh.wikipedia.org/wiki/物件連結與嵌入 "wikilink")，而該格式亦有應用於多個[Microsoft Office產品之中](../Page/Microsoft_Office.md "wikilink")\[5\]。

## 集中縮圖快取

由[Windows Vista開始](../Page/Windows_Vista.md "wikilink")，整個檔案系統的預覽縮圖均集中儲存在一個位置（`%userprofile%\AppData\Local\Microsoft\Windows\Explorer`），而系統則可不用進入檔案的資料夾位置以存取該檔案的縮圖快取。而儲存方式由以前一個`thumbs.db`代表一個資料夾，改為儲存在數個容量較大`thumbcache_xxx.db`，當中的“xxx”代表該數據庫檔的容量大小。

然而，如在Windows Vista及[Windows 7在擁有寫入權限的情況下登入網絡中的其他電腦位置](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")，系統還是會自動在該位置加入`thumbs.db`檔案。但這將會引起因刪除資料夾而令該位置會被鎖上一段時間的問題。而用户可停用「自動建立`thumbs.db`」來解決此問題\[6\]。

## 作為呈堂證供

由Windows縮圖快取系統所產生出來的`thumbs.db`曾經被政府執法部門用作法庭上的證明之用，以證明該電腦的擁有者曾在電腦上儲存某些檔案。2008年，美國[FBI曾在法庭上呈上一](https://zh.wikipedia.org/wiki/FBI "wikilink")`thumbs.db`檔案，用作控告管有[兒童色情](../Page/兒童色情.md "wikilink")資訊的證物之一\[7\]。

## 參考資料

[Category:文件系统](https://zh.wikipedia.org/wiki/Category:文件系统 "wikilink") [Category:Microsoft_Windows](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows "wikilink")

1.

2.
3.
4.

5.

6.

7.