**Optimus**(官方中文譯名：优驰)是[NVIDIA針對](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")[筆記型電腦的顯示切換技術](../Page/筆記型電腦.md "wikilink")。它可以實現筆記型電腦中獨立顯示卡與主機板內建顯示卡之間無縫、自動、實時的切換（使用者無需重啟或手動調整），從而實現能源的節約。

## 背景

為了提高[筆記型電腦的電池續航力](../Page/筆記型電腦.md "wikilink")，[NVIDIA和](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")[ATI的顯示卡都可以在不使用的情況下被關掉](https://zh.wikipedia.org/wiki/ATI "wikilink")。而電腦則可以改用整合式晶片組所提供的[顯示卡作顯示輸出](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")。不過，這個顯示核心的轉換過程，是需要手動的進行。系統是不可以自動轉換核心。另外，驅動程式的設計亦會因而變得複雜，因為獨立顯示卡的驅動程式要包含整合式顯示卡的驅動程式\[1\]。電腦中亦要集成更多配件和線路去提供此技術，令到成本上升。由於顯示核心的切換實際上是[BIOS的層面上進行](../Page/BIOS.md "wikilink")。所以手動切換後，使用者需要重新啟動電腦。浪費時間和多餘的電力去重新啟動。就算到了2007年，NVIDIA推出的一個改良版本不需要重新啟動電腦，但系統依然不能夠自動切換顯示核心。當用户正在使用利用到Direct
API的程式的時候，顯示核心更是不能夠轉換。如果強行切換，系統有機會崩潰。此外，在顯示核心切換期間，顯示記憶體的資料需要搬移，這就造成數秒的黑屏狀態。

而NVIDIA
Optimus技術就是利用硬體和軟體的配合，去令系統可以自動轉換顯示核心。系統會判斷使用者所使用的應用程序，從而決定利用那一個顯示核心作計算之用。

## 技術

利用Optimus技術後，電腦的顯示輸出永遠都只會通過整合式晶片組的顯示核心。獨立顯示卡的顯示輸出將會被廢掉，有關的輸出亦會傳送到前者。由於顯示輸出的裝置是固定的，所以黑屏現象將會被解決。額外的切換線路亦變得不需要，因為在不需要獨立顯示核心的時候，系統會索性斷絕其電源供應。當系統的顯示負載輕的時候，就會完全利用內置的顯示核心。當負載增加後，系統就會開啟獨立顯示核心作計算之用。協議分工方面由驅動程式負責，NVIDIA聲稱可以兼容所有的[API](https://zh.wikipedia.org/wiki/API "wikilink")。

### Optimus Copy Engine

獨立顯示核心的計算結果，需要從顯示記憶體搬到系統記憶體，以給整合式顯示核心作輸出之用。整個搬運過程由Optimus Copy
Engine負責，顯示核心中的記憶體控制器不需要參與這個過程，只需專注圖像計算。Optimus Copy
Engine會集成在[GPU中](https://zh.wikipedia.org/wiki/GPU "wikilink")。

### Optimus Routing Layer

如果軟體要求進行[CUDA計算或者利用到](../Page/CUDA.md "wikilink")[DXVA的時候](https://zh.wikipedia.org/wiki/DXVA "wikilink")，驅動程式可以馬上喚醒獨立顯示卡。當程式(例如電腦遊戲)包含大量的[DirectX指令的時候](../Page/DirectX.md "wikilink")，獨立顯示核心同樣會被喚醒。

### Optimus Software

高負載的應用程序會紀錄在Optimus
Profiles中。驅動程式會利用這個Profiles，從而判斷一個程式的負載程度，再決定獨立顯示卡需要啟用與否。透過Optimus
Software可以保持Optimus Profiles的更新。Profiles可以由用家自行修改。

## 支援平台

  - 顯示核心：GeForce 200M、GeForce 300M、GeForce 400M、GeForce 500M、GeForce
    600M、GeForce 700M、GeForce 800M、GeForce 900M、GeForce 10系列筆記型版
  - [處理器平台](https://zh.wikipedia.org/wiki/處理器 "wikilink")：[Intel](https://zh.wikipedia.org/wiki/Intel "wikilink")
    Core 2 Duo、[Core
    i7](https://zh.wikipedia.org/wiki/Intel_Core_i7 "wikilink")/[Core
    i5和](../Page/Intel_Core_i5.md "wikilink")[Intel
    Atom](https://zh.wikipedia.org/wiki/Intel_Atom "wikilink") N450
  - [作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")：[Windows
    7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")、[Windows
    8](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")、[Windows
    8.1](../Page/Windows_8.1.md "wikilink")、[Windows
    10](https://zh.wikipedia.org/wiki/Windows_10 "wikilink")

### MacBook Pro

在2010年4月，新的[MacBook Pro在配搭GeForce](../Page/MacBook_Pro.md "wikilink")
330M顯示卡的情況下，可以支援Automatic Graphics
Switching技術。該技術與Optimus相似，但有一些區別。與PC平台相似，上一代的MacBook
Pro已經有顯示卡切換技術，但需要用家自行切換。由於新的MacBook Pro使用了[Intel Core
i5](../Page/Intel_Core_i5.md "wikilink")/[Intel Core
i7處理器](https://zh.wikipedia.org/wiki/Intel_Core_i7 "wikilink")，已集成了顯示核心，顯示卡切換技術因而變得重要。Mac
OS
X作業系統會自行判斷程式對顯示效能的負載程度。若果系統檢測到軟體使用了[OpenGL等](../Page/OpenGL.md "wikilink")[API的時候](https://zh.wikipedia.org/wiki/API "wikilink")，就會使用獨立顯示卡。與[Windows平台不同](https://zh.wikipedia.org/wiki/Windows "wikilink")，在使用獨立顯示核心的時候，集成顯示核心是可以被關閉的\[2\]。

## 外部連結

  - [nVIDIA Optimus
    技術](http://www.nvidia.com.tw/object/optimus_technology_tw.html)

## 參考

<references />

[Category:英伟达](https://zh.wikipedia.org/wiki/Category:英伟达 "wikilink")

1.  [NVIDIA Optimus 技術登場\!\!](http://www.hkepc.com/4607/page/2#view)
2.  [苹果新MacBook
    Pro自动显卡切换技术解析](http://news.mydrivers.com/1/161/161274.htm)