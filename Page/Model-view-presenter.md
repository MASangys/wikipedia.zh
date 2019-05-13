**Model-view-presenter**，簡稱[MVP](../Page/MVP.md "wikilink")，是電腦軟體設計工程中一種對針對[MVC模式](../Page/model-view-controller.md "wikilink")，再審議後所延伸提出的一種軟體設計模式。

## 模式描述

**Model-View-Presenter (MVP)**
是[使用者介面](../Page/使用者介面.md "wikilink")[設計模式的一種](../Page/設計模式.md "wikilink")，被廣泛用於便捷自動化單元測試和在呈現邏輯中改良分離關注點（separation
of concerns）。

  - **Model** 定義使用者介面所需要被顯示的資料模型，一個模型包含著相關的業務邏輯。
  - **View** 視圖為呈現使用者介面的終端，用以表現來自 Model 的資料，和使用者命令路由再經過 Presenter
    對事件處理後的資料。
  - **Presenter** 包含著元件的事件處理，負責檢索 Model 取得資料，和將取得的資料經過格式轉換與 View 進行溝通。

MVP 設計模式通常會再加上 Controller 做為整體應用程序的後端程序工作。

## 實作

### Java

在[Java](../Page/Java.md "wikilink")（[AWT](../Page/AWT.md "wikilink")/[Swing](../Page/Swing_\(Java\).md "wikilink")/[SWT](../Page/SWT.md "wikilink")）應用程式裡，MVP模式可以透過讓使用者介面類別實行視圖接口（view
interface）來運作。

相同的方法可以用在Java根基於網頁的應用程式，因為現代Java根基於元件的網頁框架允許使用和胖客戶端（thick
clients）相同的逐項佈置法（component approach）客戶端邏輯的開發。

在[Google Web
Toolkit裡使用MVP只需要一些元件實行視圖接口](../Page/Google_Web_Toolkit.md "wikilink")。相同的方法在[Echo2網頁框架裡也能使用](../Page/Echo_\(架構\).md "wikilink")。

#### Google Web Toolkit - MVP

1.  [Google Web Toolkit](../Page/Google_Web_Toolkit.md "wikilink")
    結構：Best Practices For Architecting Your GWT App\[1\]
2.  Large scale application development and MVP \[2\]
3.  gwt-presenter\[3\]

## 参考资料

## 参见

  - [MVC](../Page/MVC.md "wikilink")
  - [Google Web Toolkit](../Page/Google_Web_Toolkit.md "wikilink")

## 外部參考

  - GWT: Model-View-Presenter Architecture Diagram,
    <https://web.archive.org/web/20100121031446/http://www.nieleyde.org/SkywayBlog/post.htm?postid=37782056-c4e1-4dfb-9caa-40ab9552ca3b>

[Category:软件设计模式](https://zh.wikipedia.org/wiki/Category:软件设计模式 "wikilink")

1.  [Google Web Toolkit Architecture: Best Practices For Architecting
    Your GWT
    App](http://www.google.com/events/io/2009/sessions/GoogleWebToolkitBestPractices.html)
2.  [Large scale application development and
    MVP](http://code.google.com/webtoolkit/doc/latest/tutorial/mvp-architecture.html)

3.  [gwt-presenter](http://code.google.com/p/gwt-presenter/wiki/GettingStarted)