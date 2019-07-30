[Khan_Academy_Metro_app_(player).png](https://zh.wikipedia.org/wiki/File:Khan_Academy_Metro_app_\(player\).png "fig:Khan_Academy_Metro_app_(player).png") [Wikipedia_App_snapped_to_Windows_8_desktop.png](https://zh.wikipedia.org/wiki/File:Wikipedia_App_snapped_to_Windows_8_desktop.png "fig:Wikipedia_App_snapped_to_Windows_8_desktop.png")，粗邊框和[用戶界面](https://zh.wikipedia.org/wiki/用戶界面 "wikilink")。
右邊：Metro風格應用程式；主要由內容組成\]\] **通用Windows平台应用**，也称**Metro风格应用**，是一种通過[Windows应用商店向](https://zh.wikipedia.org/wiki/Windows应用商店 "wikilink")[Microsoft Windows作業系統分發的](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[移動應用程式](https://zh.wikipedia.org/wiki/移动应用程序 "wikilink")，它們不同於在設計、開發、分發以及內容上不同於傳統桌面應用程式。

## 感觀

[Window_(windowing_system).svg](https://zh.wikipedia.org/wiki/File:Window_\(windowing_system\).svg "fig:Window_(windowing_system).svg") 傳統的桌面軟體運行於[窗口內](https://zh.wikipedia.org/wiki/窗口_\(计算机\) "wikilink")，有它們自己的邊框，以區分彼此。邊框上還會附著用於顯示應用程式標題的標題欄，系統菜單、偶爾也會有一組最大化、最小化、關閉和求助按鈕置於其上。框圍軟體的窗口可水平或垂直的更改尺寸。它們是由用戶界面中可見的元素控制，包括[菜單](https://zh.wikipedia.org/wiki/菜单_\(计算机\) "wikilink")、[工具欄](../Page/工具栏.md "wikilink")、[繃帶](https://zh.wikipedia.org/wiki/ribbon "wikilink")、滾動條以及窗口邊框。在Windows Vista和Windows 7中這些元素變得更加複雜，以至於需要特定的應用程式來做截屏。

在[Windows 8中](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")，Metro風格應用程式不運行於窗口中。它們或者是佔據了整個熒屏；或者是移到熒屏的一側，而佔據了熒屏的那個垂直部分。Metro風格應用程式沒有傳統的用戶界面，沒有標題欄、沒有系統窗口、沒有窗口邊框、也沒有控制按鈕等等，真正的應和了微軟常說的“內容才是主角”的口號。但必要的命令界面像滾動條這樣的界面元素還是有的，不過起初被隱藏起來。Metro風格應用程式在他們自己的界面中並沒有菜單，而是借用置於[Settings charm中的特製菜單](https://zh.wikipedia.org/wiki/Windows_shell#The_charms "wikilink")。

根據用戶的反饋，微軟逐漸寬鬆了這種無界面元素的規則。在[Windows 8.1中](../Page/Windows_8.1.md "wikilink")，標題欄被引入但處於隱藏的狀態，除非用戶將滑鼠滑越於熒屏頂端，否則它決不會現身。[Windows 10引入了](../Page/Windows_10.md "wikilink")[平板模式](https://zh.wikipedia.org/wiki/平板模式 "wikilink")，平板電腦安裝後會自動開啟這種模式；而在桌面或筆電中它被默認是關閉的，但卻可手動開啟與關閉。當這種模式關閉時，運行於桌面的Metro風格應用程式有可見的標題欄，大小也是可調的。當平板模式開啟後，Metro風格應用回退至Windows 8.1時的樣式，所有應用程式都以最大化呈現佔據著整個熒屏，不可調節尺寸。\[1\]\[2\]\[3\]

此外，Windows 10也將設定Charm移除，被一種稱之為“漢堡菜單”的系統菜單變體所取代。

## 分發和授權

此前，Windows可以安裝來自於任何地方的應用程式，無論是隨身碟還是網際網。但對於Metro風格應用程式來說，只能夠透過Windows商店來購買安裝。購買而來的Metro風格應用程式與賬戶綁定，因此無論身處何處，都可通過同一帳戶安裝於不同的設備中。然而在Windows 10中安裝次數得以受限。

## 多任務

Windows 8之前，任務欄被用於抽選正在運行的程式，而在Windows 8中運行中的Metro風格應用程式是通過熒屏左側特定的應用選擇器來選取。\[4\]

## 生命週期

在Metro風格應用程式出現以前，軟體的運轉與結束都可由用戶控制，比如雙擊圖標開始，單擊關閉按鈕結束。然而Metro應用程式是沉浸式的，可能在用戶還未開啟它們時，系統已將其啟用；而當用戶關閉後，系統可能還在保留它們在後臺工作。Metro風格應用程式的生存週期是由Windows應用管理員根據系統資源利用情形而自行管理的。

## 開發

### Windows運行時

傳統的應用程式是通過使用[Windows API庫函數在計算機語言下開發的](../Page/Windows_API.md "wikilink")，人們可以自由選擇喜愛的開發工具與開發語言。然而要開發Metro風格應用程式便須使用WinRT運行時庫，並且對於系統函數的調用加以限制，未能資質驗證通過的應用是無法在Windows商店中上架的。

並不是每個使用WinRT運行時庫的應用都是Metro風格應用；WinRT中的有些功能也可被桌面應用程式所利用。\[5\]

Metro風格應用程式只能使用微軟自家的開發工具開發。雖然聲稱可以在多種語言下互操作，但自行嘗試實現對窗口運行時的綁定將導致失敗。根據[Embarcadero Technologies的首席科學家Allen](https://zh.wikipedia.org/wiki/Embarcadero_Technologies "wikilink") Bauer所說，這裡有些編程接口幾乎是所有程式開始者所必須調用的，但是卻得到微軟的禁止，除非是使用微軟自家的[Visual C++運行時才行](https://zh.wikipedia.org/wiki/Visual_C++ "wikilink")。\[6\]\[7\]\[8\]

### 通用應用

可同時運行於[智慧型電話](https://zh.wikipedia.org/wiki/智慧型電話 "wikilink")、[個人電腦](https://zh.wikipedia.org/wiki/個人電腦 "wikilink")、[遊戲終端和](https://zh.wikipedia.org/wiki/遊戲終端 "wikilink")[HoloLens的應用稱之](https://zh.wikipedia.org/wiki/HoloLens "wikilink")*為通用應用*。這是通過使用通用應用接口來完成的，最早出現於Windows 8.1和[Windows Phone 8.1中](../Page/Windows_Phone_8.1.md "wikilink")。[Visual Studio 2013](https://zh.wikipedia.org/wiki/Visual_Studio_2013 "wikilink") with Update 2起可以開發這類應用程式。\[9\]\[10\]Windows 10為開發通用應用而引入了通用Windows平台10。使用Visual Studio 2015可以利用這一平台開發這樣的應用。早先的Windows 8.1、Windows Phone 8.1的應用需要經過修改後才可遷移至此平台。\[11\]\[12\]

特定Windows平台並不是一個不同於WinRT的開發庫，相反只是它的擴展。通用應用不再是為特定作業系統而編寫的，相反，它們定位於一個或多個不同的設備，比如桌面、移動、電玩XBox以至于物聯網。只要設備能力允許，那麼它們便可運行。一個通用應用可以在智慧型電話和平板上運行，並提供差不多的體驗。運行於智慧型電話的通用應用在連接到熒屏後會可能會與運行於平板之上相同。\[13\]

### APPX

**APPX**是用於分發和安裝Metro風格應用程式文件格式，它使用於桌面和移動版的Windows\[14\]。 為了統一桌面版和移動版中的應用，在[Windows Phone 8.1中](../Page/Windows_Phone_8.1.md "wikilink")，XAP文件格式也被APPX取代。\[15\]APPX文件僅兼容Windows Phone 8.1和之後的版本\[16\]。

Windows電話市場允許用戶將APPX文件下載至SD卡中並手動安裝它們。但在桌面系統，如Windows 8，這樣的做法是被禁止的，除非用戶可得到開發者許可或使用在商業域中的電腦。\[17\]

## 安全性

Windows軟體只要它們希望便有使用和改變他們生態系統的能力。Windows賬戶權限，用戶賬戶控制面板和殺毒軟體嘗試在應用試圖這麼做前通知並讓用戶干預他們的做法，以至於免於它們帶來的威脅。然而Metro風格應用軟體運行於沙盒中，是無法永遠改變Windows作業系統的生態環境的。它們需要權限才可訪問硬體資源，比如網際錄影機和麥克風，而且它們也僅能使用用戶文檔，比如我的文檔。微軟進一步的協調這些應用，並當在發現它們帶來安全和隱私問題時刪除它們。\[18\]\[19\]

## 参见

  - [通用Windows平台](../Page/通用Windows平台.md "wikilink")（UWP）
  - [Modern UI](https://zh.wikipedia.org/wiki/Modern_UI "wikilink")

## 參考资料

[Category:Microsoft_Windows](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows "wikilink") [Category:可执行文件格式](https://zh.wikipedia.org/wiki/Category:可执行文件格式 "wikilink") [Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink") [Category:.NET](https://zh.wikipedia.org/wiki/Category:.NET "wikilink")

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
14. [App packages and deployment (Windows Store apps) (Windows)](http://msdn.microsoft.com/en-us/library/windows/apps/hh464929.aspx)
15. [Windows Phone 8.1 includes universal apps and lots of feature updates - The Verge](http://www.theverge.com/2014/2/11/5400660/windows-phone-8-1-features-leaked)
16. [How to Install Appx File on Windows Phone 8.1](http://www.wphoneapps.net/2013/12/how-to-install-xap-file-on-windows-phone.html)
17. [How To Sideload Modern Apps on Windows 8 - HowToGeek](http://www.howtogeek.com/129535/how-to-sideload-modern-apps-on-windows-8/)
18.
19.