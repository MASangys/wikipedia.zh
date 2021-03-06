> 本文内容由[X Window系統的協議和架構](https://zh.wikipedia.org/wiki/X_Window系統的協議和架構)转换而来。


[X11.svg](https://zh.wikipedia.org/wiki/File:X11.svg "fig:X11.svg") 在[電腦中](https://zh.wikipedia.org/wiki/電腦 "wikilink")，**[X Window系統](../Page/X_Window系統.md "wikilink")**（常稱作 **X11**、**X**）是一種以[點陣圖顯示的](https://zh.wikipedia.org/wiki/光柵圖形 "wikilink")[網絡透明化](https://zh.wikipedia.org/wiki/電腦網絡 "wikilink")[視窗系統](../Page/視窗系統.md "wikilink")。本條目詳述 X11 的協議及其技術架構。

## X 主從式模型和網絡透明性

X 基於[主從式模型](https://zh.wikipedia.org/wiki/主從式 "wikilink")。運作在電腦上的**X 伺服器**程式以圖形顯示，並以各種**客戶端程式**進行通訊。X 伺服器接受圖形輸出（視窗畫面）方面的請求，並回傳使用者的輸入（[鍵盤](https://zh.wikipedia.org/wiki/鍵盤 "wikilink")、[滑鼠](https://zh.wikipedia.org/wiki/滑鼠 "wikilink")）。

在 X Window 中，伺服器可以在使用者的電腦上執行，而在其他的機器上執行客戶端。也可以反過來，**客戶端**在使用者的電腦上執行，而伺服端在遠端電腦上執行。X Window 使用的術語是以程式為基準，而不是使用者或硬體。遠端的程式連接到本地的 X 伺服器，那些遠端的程式就視為客戶端；本地的 X 接受所傳入的訊息，這部分就視為伺服端。

[X_client_server_example.svg](https://zh.wikipedia.org/wiki/File:X_client_server_example.svg "fig:X_client_server_example.svg")和[終端機執行在工作站](https://zh.wikipedia.org/wiki/終端模擬機 "wikilink")（伺服器）上，使用者可以操作這些程式，伺服器上會更新這些內容。注意，使用者的程式是在伺服器上執行的。\]\]

主從間[通訊協定的](https://zh.wikipedia.org/wiki/通訊協定 "wikilink")[網絡透明](https://zh.wikipedia.org/wiki/電腦網絡 "wikilink")：伺服器和客戶端可以執行在同一機器或不同機器上，那些機器更可以是不同的[硬體架構或](https://zh.wikipedia.org/wiki/電腦架構 "wikilink")[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")。主從之間的通訊[安全](https://zh.wikipedia.org/wiki/電腦安全 "wikilink")，可以加密連線的方式加強。

## 設計原則

[Bob Scheifler](https://zh.wikipedia.org/wiki/Bob_Scheifler "wikilink") 和 [Jim Gettys](https://zh.wikipedia.org/wiki/Jim_Gettys "wikilink") 陳述的早期 X 的基本原則如下（Scheifler/Gettys 於 1996 所列）：

  - 不要加入新的功能，除非沒有它就不能完成實際所需的應用程式。
  - 決定一個系統不是什麼和決定系統是什麼同樣重要。不要滿足全部的需求；而是使系統具有可擴充性，額外的需求可以向上相容的方式來滿足。
  - 只有完全沒實例，才會比只有一個實例來的更糟。
  - 如果沒把問題弄清楚，不解決它也許會是最好的。
  - 如果預期要用 90% 的努力去完成 10% 的工作，就用更簡單的方法解決。（參見[更糟就是更好](https://zh.wikipedia.org/wiki/更糟就是更好 "wikilink")。）
  - 盡量避免複雜性。
  - 提供機制而不是提供方針，使用者介面的方針由實際應用者自主。

後來在設計 X11 時，將第一項原則修改為：「不要加入新的功能，除非你知道某些實際的應用程式會需要它」。X 基本上一直遵循這些原則，參考實現的擴充及改進也是以此原則來著手，也因為奉行上述原則，使至今的最新版 X 仍能與最初（1987年）發佈的協定標準幾乎完全相容。

## X Window 核心協議

伺服器和客戶端之間的通訊，是由網路通道上的交換封包所完成。由客戶端建立連線，並發送第一個封包。伺服器以回傳封包來答覆，封包中陳述接受或拒絕連線，或要求進一步的驗證。如果接受連線，接受封包內會包含客戶端接下來和伺服器互動所需的資料。

建立連線之後，在客戶端和伺服器的通道上，會有四種交換封包的類型：

1.  **請求**：客戶端請求伺服器的資訊，或者請求伺服器進行一個動作。
2.  **回應**：伺服器回應請求。並非所有的請求都會產生回覆。
3.  **事件**：伺服器傳送事件給客戶端，例如，鍵盤或滑鼠的輸入，或移動、調整、顯示視窗。
4.  **錯誤**：如果請求無效時，伺服器會傳送一個錯誤封包。因為請求是以排隊方式處理，所以經由請求所產生的錯誤封包，並不會立即傳送。

X 伺服器提供一系統基本的服務。客戶端程式可以和伺服器互動，以實現更複雜的功能。

### 視窗

[Some_X_windows.png](https://zh.wikipedia.org/wiki/File:Some_X_windows.png "fig:Some_X_windows.png")

在 X Window 系統以及各種[圖形化使用者界面中](https://zh.wikipedia.org/wiki/GUI "wikilink")，視窗即為一個**頂層視窗**。**視窗**也用來指視窗內部的視窗，這類視窗是**父視窗**的**子視窗**。圖形化元件，如按鈕、選單、圖示等等，都是使用視窗來實現的。

任何視窗都只能是父視窗之下的子視窗，使視窗以[樹狀的](https://zh.wikipedia.org/wiki/樹_\(圖論\) "wikilink")組織起來，階層結構最根部的視窗便稱為[根視窗](https://zh.wikipedia.org/wiki/根視窗 "wikilink")，而根視窗是由伺服器自動建立的。頂層視窗即直接隸屬於根視窗的子視窗。根視窗即整個螢幕畫面，且其他視窗都在根視窗之下。

### 識別子

所有關於視窗的資料、字體等等，皆存放在伺服器上。客戶端知道那些物件的識別子，和伺服器互動時，物件以整數為名稱。例如，當客戶端希望建立一個視窗時，便指定一個識別子，並請求伺服器建立一個視窗。伺服器會建立一個視窗，並與指定的識別子關聯。稍後客戶端可使用這個識別子進行請求，例如在視窗上畫上一個字串。

識別子在伺服器上是獨一無二的，在多個客戶端之間也不例外。例如，即使是由兩個不同客戶端所建立的視窗，也不會同時具有相同的識別子。即使某個物件不是由自己的客戶端所建立的，只要指定相對應的識別子，就可存取另一個客戶端所建立的物件。

### 屬性

每一個視窗都有一組預先定義的屬性值（Attributes）和屬性（Properties），並存放在伺服器上，客戶端可以適當的請求方式取存。屬性值是有關視窗方面的資料，如大小、位置、背景色等等。屬性則是附屬於視窗上的資料片斷。與屬性值相反，屬性在 X Window 核心協議的層次中並沒有其他含意。客戶端可在視窗的屬性中存放屬性值資料。

屬性以名稱、類型和值來描述，屬性相當於[指令式程式語言的](https://zh.wikipedia.org/wiki/指令式程式語言 "wikilink")[變數](../Page/變數.md "wikilink")，應用程式可以指定名稱、類型和值來建立新的屬性。屬性和視窗連繫：兩個相同名稱的屬性可存在於兩個不同的視窗，且可具有不同的類型和值。

屬性大多用於客戶端之間的通訊。例如，名稱為 `WM_NAME` 的屬性，用來存放視窗的名稱；視窗管理器通常會讀取這個屬性，並在視窗頂部顯示名稱。

視窗的屬性可以 `xprop` 程式顯示。`xprop -root` 更可顯示根視窗的屬性，包括 [X資源](https://zh.wikipedia.org/wiki/X資源 "wikilink")（程式參數）。

### 事件

事件是由伺服器傳送到客戶端用以通訊的封包，傳送一些客戶端可能感興趣的事物。客戶端可以請求伺服器傳送事件給另一個客戶端；這部分用於客戶端之間的通訊。例如，當客戶端請求目前所選取的文字，就會傳送事件給客戶端，以處理目前所持有的選取內容。

在某些情況下，視窗的內容可能會被銷毀（例如當視窗隱蔽時）。當再度觀看被銷毀的區域時，伺服器會產生一個 `Expose`（顯露）事件，用以通知客戶端重繪視窗已消失的部分。

其他事件是用來通知鍵盤或滑鼠輸入的客戶端、建立新視窗等等。

某些類型的事件會不斷傳送給客戶端，但大多數的事件只在客戶端預先表示關心時才會傳送。因為客戶端可能只需要關心某類型的事件。例如，客戶端可能會關心關於鍵盤的事件，但卻不關心關於滑鼠的事件。

### 色彩模式

對於 X Window 系統處理色彩的方式，有時使用者會感到迷惑，且 X Window 支援有史以來各種不同的模式。現今大多數的應用程式皆使用[真實色（TrueColor）](../Page/真彩色.md "wikilink")（24 位元色彩，紅、綠、藍各有 8 位元），不過比較舊或特殊的應用程式，可能會要求使用其他的色彩模式。許多商業用的專業應用程式使用偽彩色（PseudoColor）。

目前的 X11 協議在大多數的圖形運算中，是使用一個 32 位元無負號整數來表示一個顏色，稱為**像素值**。當轉移到[原色](../Page/原色.md "wikilink")的飽和度時，對每一個色彩元素使用 16 位元整數。便有如下的色彩表示，但實際裝置未必能全部支援。

  - **直接色（DirectColor）**：像素值分為紅、綠、藍子域，每一個子域索引一份獨立的色彩映射，可改變色彩映射的內容。
      - **真實色（TrueColor）**：與直接色大致相同，但色彩映射的內容是由硬體預先定義，不可改變。通常每個紅、綠、藍色彩映射提供一個（接近）線性斜度的飽和度。
  - **灰階（GrayScale）**：像素值索引一份色彩映射，且無色彩飽和度（黑白）。可改變色彩映射的內容。
      - **靜態灰階（StaticGray）**：與灰階大致相同，但色彩映射的內容是由硬體預先定義，不可改變。
  - **偽彩色（PseudoColor）**（）：像素值索引一份色彩飽和度方面的色彩映射。可改變色彩映射的內容。
      - **靜態色（StaticColor）**：與偽彩色大致相同，但色彩映射的內容是由硬體預先定義，不可改變。

## Xlib 和其他的客戶端程式庫

大部分的客戶端程式藉由 [Xlib](../Page/Xlib.md "wikilink") 客戶端程式庫與伺服器交流。特別是客戶端大多使用 [Xaw](https://zh.wikipedia.org/wiki/Xaw "wikilink")、[Motif](../Page/Motif.md "wikilink")、[GTK+](https://zh.wikipedia.org/wiki/GTK+ "wikilink")、[Qt](../Page/Qt.md "wikilink") 之類使用到 [Xlib](../Page/Xlib.md "wikilink") 的程式庫，以便與伺服器互動。

## 客戶端之間的通訊

X Window 核心協議提供了客戶端之間通訊的機制：視窗屬性和事件，特別是客戶端對客戶端的訊息事件。不過這部分並未指明任何協議，協議部分由客戶端之間的通訊協定單獨管理。

[客戶端之間的通訊協定手冊指明藉由選取和應用程式的視窗管理器互動](https://zh.wikipedia.org/wiki/客戶端之間的通訊協定手冊 "wikilink")，以交換資料。但這個規格被認為過於困難和混亂；應用程式的品質和通訊的一貫性，通常是由指定的桌面環境所提供。

客戶端之間的交換協議（ICE）指定了用以建立客戶端間互相通訊的框架，因此，特定的協議可建立在其上。特別是 X 期間管理器協議（XSMP）便是建基於 ICE 的協議，以[期間管理器託管應用程式間的互動](../Page/X会话管理器.md "wikilink")。這個程式是在互動期間結束時，用來維護存放的桌面狀態，並在同一使用者再次開始另一個期間時恢復。

較新的協定包含在 [freedesktop](https://zh.wikipedia.org/wiki/freedesktop.org "wikilink") 規範，包括拖曳協定 Xdnd，用以選取要轉移的資料，然後拖曳到另一個視窗上。還有嵌入式應用程式協定 Xembed，詳述應用程式如何在另一個應用程式的子視窗之中執行。

### 選取、剪下緩衝區和拖曳

選取、剪下緩衝區和拖曳機制在 X Window 系統中，是給使用者從某個視窗傳遞資料給另一個視窗。選取、剪下緩衝區通常用於，使用者在視窗中選取文字和其他資料，並在另一個視窗中貼上。拖曳用於，使用者在視窗中選取某些東西，然後對選取區按住按鈕，並拖曳到另一個視窗。

由於兩個視窗可能由兩個不同的應用程式所持有，資料傳遞需要兩個不同的客戶端連接相同的 X 伺服器才能互動。X Window 核心協議包含明確選擇交換的請求和事件類型，不過傳遞的完成，主要是由一般的客戶端對客戶端事件傳送，和未指明選擇傳送的視窗屬性。

客戶端之間傳送的資料可以是不同的類型：通常是文字，不過也可以是圖形、數字、物件的列表等等。

選取和拖曳是主動機制：在視窗中選取文字以後，客戶端所處理的視窗必須主動支援相關的協定，才能傳送資料到需要它的應用程式。相反的，剪下緩衝區則是被動機制：當使用者選取文字時，其內容會傳送到剪下緩衝區，即使應用程式所處理的視窗已結束並銷毀視窗，緩衝區的內容仍會保留下來。

### 視窗管理器

視窗管理器是用來控管視窗整體的外觀，以及其他[圖形化使用者界面的要素](https://zh.wikipedia.org/wiki/GUI "wikilink")。在不同的安裝中，X Window 系統會有不同的外觀，主要是因為使用不同的視窗管理器，或是不同的視窗管理器配置。

視窗管理器維護視窗的位置、周圍加上裝飾性的邊框、處理圖示、處理滑鼠對視窗外表的點擊（在「幕後」）、處理按鍵（例如按下 ALT-F4 時，將視窗縮小成圖示）等等。

[Wm-dopo.png](https://zh.wikipedia.org/wiki/File:Wm-dopo.png "fig:Wm-dopo.png")

從 X 伺服器的角度來看，視窗管理器和其他的客戶端並沒有什麼不同。起始位置和視窗周圍的裝飾性邊框，是由視窗管理器使用如下請求處理的：

1.  應用程式可以請求伺服器不要滿足特定視窗的子視窗映射（顯示）要求，並把事件傳送過來。
2.  應用程式可以請求改變視窗的親屬關係。

視窗管理器使用第一個請求，攔截所有映射頂層視窗（根視窗的子視窗）的請求。每當另一個應用程式請求映射頂層視窗，伺服器不會去做，反而傳送事件給視窗管理器。大部分的視窗管理器會改變視窗的親屬關係：建立更大的頂層視窗（稱作框架視窗），並改變原視窗的親屬關係為自己的子視窗；相當於在框架視窗內部放置原視窗。框架視窗（而不是在原視窗上）多出來的空間，是用來裝飾視窗周圍的框架（「邊框」和「標題列」）。

視窗管理器管理滑鼠在框架視窗上的點擊。例如，當使用者在邊框或標題列上點擊並按住時，便允許改變大小或移動視窗。

視窗管理器也負責處理圖示和圖形元件的顯示關係。圖示並不存在於 X Window 核心協議的層次上，那些是由視窗管理器實作的。例如，當視窗「圖示化」時，視窗管理器 [FVWM](https://zh.wikipedia.org/wiki/FVWM "wikilink") 取消映射那個視窗，使其不可見，並建立一個圖示名稱的視窗，且圖示的圖像可能和那個視窗有關。圖示的意義和處理完全由視窗管理器來決定：某些視窗管理器，如 [wm2](https://zh.wikipedia.org/wiki/wm2 "wikilink")，根本不實現圖示功能。

### 期間管理器

概略地說，在一個特定時間中，[期間的狀態就是](../Page/X会话管理器.md "wikilink")「桌面的狀態」：一組視窗及其當下的內容。更精確地說，就是一系列應用程式管理的這些視窗和資訊，其允許應用程式在需要時還原所管理視窗的情況。X 期間管理器便是一個保存並還原期間狀態的程式。

使用期間管理器最明顯的作用，便是從一個互動期間登出，當再次登入時，有可能在相同的狀態下恰好發現相同的視窗。關於這部分的運作，在登出時，期間管理器程式儲存執行中應用程式的名稱，並在登入時再次啟動它們。並按照應用程式狀態的次序來還原（需要還原視窗的內容），應用程式必須能夠保存這些執行狀態，並在再次啟動時，能夠根據期間管理器的請求來讀回這些狀態。

X Window 系統含有一個預設的期間管理器，稱作 `xsm`。特定的桌面系統中也已開發了其他的期間管理器：例如，`ksmserver` 是 [KDE](../Page/KDE.md "wikilink") 預設的期間管理器。

## X 顯示管理器

[X顯示管理器在](https://zh.wikipedia.org/wiki/X顯示管理器 "wikilink") X Window 系統中，是一個用來顯示圖形化登入提示的程式。更廣泛的說，顯示管理器在本機電腦上執行一個或多個 X 伺服器，並接受來自遠端電腦上執行的 X 伺服器的新連線。本機伺服器藉由顯示管理器來啟動，然後顯示管理器連線到伺服器，以呈現出使用者登入畫面。遠端伺服器從顯示管理器獨立啟動並且與之連線。在這個情況下，顯示管理器的運作就如同圖形化的 [telnet](https://zh.wikipedia.org/wiki/telnet "wikilink") 伺服器：X 伺服器可連接到顯示管理器，並啟動一個期間；期間之中的程式執行在顯示管理器的同一部電腦上，不過在電腦上的輸出和輸入是由 X 伺服器執行（使用者面前的那部電腦）。

[XDM](https://zh.wikipedia.org/wiki/XDM "wikilink") 是 X Window 系統所提供最基本的顯示管理器。其他的顯示管理器還有 [GDM](https://zh.wikipedia.org/wiki/GDM "wikilink")（[GNOME](../Page/GNOME.md "wikilink")）、[KDM](../Page/KDM.md "wikilink")（[KDE](../Page/KDE.md "wikilink")）、[WDM](https://zh.wikipedia.org/wiki/WINGs_Display_Manager "wikilink")（使用 [Window Maker](../Page/Window_Maker.md "wikilink") 的 WING 組件集），以及 [entrance](https://zh.wikipedia.org/wiki/entrance "wikilink")（使用 [Enlightenment](../Page/Enlightenment.md "wikilink") v.17 的架構）。

## 使用者界面元件

X 早期的[組件工具包有](../Page/部件工具箱.md "wikilink") [Xaw](https://zh.wikipedia.org/wiki/Xaw "wikilink")（[雅典娜工程](../Page/雅典娜工程.md "wikilink")組件集）、[OLIT](https://zh.wikipedia.org/wiki/OPEN_LOOK "wikilink")（OPEN LOOK 內部工具包）、[XView](https://zh.wikipedia.org/wiki/XView "wikilink")、[Motif](../Page/Motif.md "wikilink")、[Tk](../Page/Tk.md "wikilink")。OLIT 和 XView 為 [AT\&T](../Page/AT&T.md "wikilink") 和[昇陽的](https://zh.wikipedia.org/wiki/昇陽 "wikilink") [OPEN LOOK](https://zh.wikipedia.org/wiki/OPEN_LOOK "wikilink") GUI 起基礎工具包的作用。

Motif 為 [Common Desktop Environment](https://zh.wikipedia.org/wiki/Common_Desktop_Environment "wikilink")（CDE）提供基礎工具包，即用於商業化 [Unix](https://zh.wikipedia.org/wiki/Unix "wikilink") 系統的標準[桌面環境](https://zh.wikipedia.org/wiki/桌面環境 "wikilink")，如 [Solaris](../Page/Solaris.md "wikilink") 和 [HP-UX](../Page/HP-UX.md "wikilink")。（[GNOME](../Page/GNOME.md "wikilink") 也用於 Solaris 9，且即將成為未來版本的標準。）

更多最新的工具包還包括 [Qt](../Page/Qt.md "wikilink")（用於 [KDE](../Page/KDE.md "wikilink")）、[GTK+](https://zh.wikipedia.org/wiki/GTK+ "wikilink")（用於 [GNOME](../Page/GNOME.md "wikilink")）、[wxWidgets](https://zh.wikipedia.org/wiki/wxWidgets "wikilink")、[FLTK](../Page/FLTK.md "wikilink")、[FOX](https://zh.wikipedia.org/wiki/FOX "wikilink")。

## 擴充

X 伺服器被設計成簡單而可擴充。如此一來，許多功能就存在於擴充協議之中。

在協議層次上，每個擴充都可以指定新的請求／事件／錯誤的封包類型。客戶端應用程式使用客戶端程式庫，以促進存取由擴充所提供的功能。據說為目前的 X 伺服器編寫擴充是相當困難的，這歸咎於 X 伺服器缺乏模組化的設計。[XCB](../Page/XCB.md "wikilink") 專案是一個長期的目標，朝向根據 XML 協議描述，自動化產生客戶端和伺服端的擴充。

以下是一部分已開發的擴充列表，以引入的時間排列：

| 擴充                                                                                    | 描述和註解                                                                                    |
| ------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| [AIGLX](https://zh.wikipedia.org/wiki/AIGLX "wikilink")                               | 支援間接 GLX 繪圖。                                                                             |
| Composite                                                                             | 整個視窗階層之外的幕外繪製，允許應用程式和組件管理器能在任何情況下作用。某些情況需要此功能，如用於視窗和陰影的 Alpha 半透明。                       |
| Damage                                                                                | 追蹤視窗的修改範圍，並在維持必要的顯示下，將頻寬消耗降到最低。                                                          |
| [XFixes](https://zh.wikipedia.org/wiki/XFixes "wikilink")                             | 若干協議的修改。                                                                                 |
| Extended-Visual-Information (EvIE)                                                    |                                                                                          |
| Distributed Multihead (DMX)                                                           |                                                                                          |
| [XvMC](https://zh.wikipedia.org/wiki/XvMC "wikilink")                                 | 支援卸載視訊對 GPU 的動態補償。                                                                       |
| [GLX](https://zh.wikipedia.org/wiki/GLX "wikilink")                                   | 支援視窗內部的 OpenGL 繪圖。                                                                       |
| [XRender](https://zh.wikipedia.org/wiki/XRender "wikilink")                           | 硬體加速的 Alpha 影像混合。                                                                        |
| Resize and Rotate (RANDR)                                                             | 即時調整桌面的大小，以及側向旋轉或上下翻轉。                                                                   |
| [Xinerama](https://zh.wikipedia.org/wiki/Xinerama "wikilink")                         | 將桌面拆解，以對應多螢幕。                                                                            |
| Display Power Management Signaling (DPMS)                                             | 允許控制螢幕的電源節能模式。                                                                           |
| XPRINT                                                                                |                                                                                          |
| [X keyboard extension](https://zh.wikipedia.org/wiki/X_keyboard_extension "wikilink") | 改善鍵盤佈局的處理。                                                                               |
| DOUBLE-BUFFER                                                                         |                                                                                          |
| RECORD                                                                                |                                                                                          |
| [MIT-SHM](https://zh.wikipedia.org/wiki/MIT-SHM "wikilink")                           | 增進共享記憶體的使用效能。                                                                            |
| SYNC                                                                                  |                                                                                          |
| XTEST                                                                                 |                                                                                          |
| XInputExtension                                                                       | 支援繪圖板之類的輸入裝置。                                                                            |
| BIG-REQUESTS                                                                          |                                                                                          |
| XC-MISC                                                                               |                                                                                          |
| [X video extension](https://zh.wikipedia.org/wiki/X_video_extension "wikilink")       | 支援硬體視訊重疊，以及播放時的硬體視訊縮放。亦稱 Xv（不要和 [xv](https://zh.wikipedia.org/wiki/xv "wikilink") 程式混淆）。 |
| [Shape](https://zh.wikipedia.org/wiki/Shape_extension "wikilink")                     | 支援非矩形和部分透明（二進制，非 alpha 半透明）的視窗。                                                          |
| DEC-XTRAP                                                                             |                                                                                          |
| MIT-SCREEN-SAVER                                                                      |                                                                                          |
| MIT-SUNDRY-NONSTANDARD                                                                |                                                                                          |
| SECURITY                                                                              |                                                                                          |
| TOG-CUP                                                                               |                                                                                          |
| X-Resource                                                                            |                                                                                          |
| XC-APPGROUP                                                                           |                                                                                          |
| XFree86-Bigfont                                                                       |                                                                                          |
| XFree86-DGA                                                                           |                                                                                          |
| XFree86-Misc                                                                          |                                                                                          |
| XFree86-VidModeExtension                                                              |                                                                                          |

### 廢棄的擴充

| 擴充                                                    | 描述和註解                                                                                    |
| ----------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| Low Bandwidth Extension (LBX)                         | 以安全殼層連線的 X [tunneled](https://zh.wikipedia.org/wiki/tunneled "wikilink") 取代，且證明比 LBX 快速。 |
| [PEX](https://zh.wikipedia.org/wiki/PHIGS "wikilink") | 「PHIGS 擴充到 X 上」，以支援 PHIGS 3D 場景圖形 API。已被運用 OpenGL 的 GLX 所取代。                             |
| XImage Extension                                      | 以 MIT-SHM 取代。                                                                            |

## 參閱

  - [Xlib](../Page/Xlib.md "wikilink")
  - [Intrinsics](https://zh.wikipedia.org/wiki/Intrinsics "wikilink")
  - [X Window核心協議](../Page/X_Window核心協議.md "wikilink")

## 參考文獻

  - Robert W. Scheifler and James Gettys: *X Window System: Core and extension protocols, X version 11, releases 6 and 6.1*, Digital Press 1996, ISBN 1-55558-148-X
  - [X Windows 入門](https://web.archive.org/web/20070103133417/http://www.its.strath.ac.uk/courses/x/)
  - [開放源始碼桌面技術藍圖](https://web.archive.org/web/20060102002339/http://freedesktop.org/~jg/roadmap.html) (Jim Gettys, 09 Dec 2003)

## 外部連結

  - [X.Org Foundation](http://www.x.org/)（官方首頁）
  - [X.Org Foundation wiki](http://xorg.freedesktop.org/wiki/)
  - [Kenton Lee's pages on X Window and Motif](http://www.rahul.net/kenton/bib.html)

[Category:X_Window系統](https://zh.wikipedia.org/wiki/Category:X_Window系統 "wikilink") [Category:X_Window延伸](https://zh.wikipedia.org/wiki/Category:X_Window延伸 "wikilink") [Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink")