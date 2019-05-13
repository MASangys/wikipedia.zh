**开放式系统互联通信参考模型**（，縮寫為 OSI），簡稱為**OSI模型**（OSI
model），一種[概念模型](../Page/概念模型.md "wikilink")，由[国际标准化组织提出](../Page/国际标准化组织.md "wikilink")，一个试图使各种计算机在世界范围内互连为网络的标准框架。定義於ISO/IEC
7498-1。

## 历史

在制定[计算机网络标准方面](../Page/计算机网络.md "wikilink")，起着重大作用的两大国际组织是：[國際電信聯盟電信標準化部門](../Page/國際電信聯盟電信標準化部門.md "wikilink")，与[国际标准组织](../Page/国际标准组织.md "wikilink")（ISO），虽然它们工作领域不同，但随着科学技术的发展，通信与信息处理之间的界限开始变得比较模糊，这也成了[國際電信聯盟電信標準化部門和ISO共同关心的领域](../Page/國際電信聯盟電信標準化部門.md "wikilink")。1984年，ISO发布了著名的***ISO/IEC
7498***标准，它定义了网络互联的7层框架，也就是开放式系统互联参考模型。

## 层次划分

根据建议X.200，OSI将计算机网络体系结构划分为以下七层，标有1～7，第1层在底部。
現“OSI/RM”是[英文](../Page/英文.md "wikilink")“Open Systems
Interconnection Reference Model”的缩写。

### 第7層 應用層

應用層（Application Layer）提供為應用軟件而設的接口，以設定與另一應用軟件之間的通訊。例如:
HTTP，HTTPS，FTP，TELNET，SSH，SMTP，POP3.HTML.等。

### 第6層 表達层

表達层（Presentation Layer）把數據轉換為能與接收者的系統格式兼容並適合傳輸的格式。

### 第5層 會議層

會議層（Session Layer）負責在數據傳輸中設定和維護電腦網絡中兩台電腦之間的通訊連接。

### 第4層 傳輸層

傳輸層（Transport
Layer）把傳輸表頭（TH）加至數據以形成數據包。傳輸表頭包含了所使用的協定等傳送資訊。例如:傳輸控制協定（TCP）等。

### 第3層 網路層

網路層（Network
Layer）決定數據的路徑選擇和轉寄，将網絡表頭（NH）加至數據包，以形成封包。網絡表頭包含了網絡資料。例如:互聯網協定（IP）等。

### 第2層 数据链路层

数据链路层（Data Link
Layer）負責網絡尋址、錯誤偵測和改錯。當表頭和表尾被加至數據包時，會形成幀。數據鏈表頭（DLH）是包含了實體位址和錯誤偵測及改錯的方法。數據鏈表尾（DLT）是一串指示數據包末端的字符串。例如乙太網、無線局域网（Wi-Fi）和通用分組無線服務（GPRS）等。

分为两个子层：逻辑链路控制（logical link control，LLC）子层和介质访问控制（media access
control，MAC）子层。

### 第1層 實體層

實體層（Physical
Layer）在局部區域網絡上傳送-{zh-tw:[資料框](../Page/資料框.md "wikilink");zh-cn:[数据帧](../Page/数据帧.md "wikilink")}-（data
frame），它負責管理電腦通訊設備和網絡媒體之間的互通。包括了針腳、電壓、線纜規範、集線器、中繼器、網卡、主機介面卡等。

## 影响

OSI是一个定义良好的协议规范集，并有许多可选部分完成类似的任务。它定义了开放系统的层次结构、层次之间的相互关系以及各层所包括的可能的任务，作为一个框架来协调和组织各层所提供的服务。

OSI参考模型并没有提供一个可以实现的方法，而是描述了一些概念，用来协调进程间通信标准的制定。即OSI参考模型并不是一个标准，而是一个在制定标准时所使用的概念性框架。

## 參見

  - [DoD模型](../Page/DoD模型.md "wikilink")（Department of Defense
    Model）四層是為了[ARPANET所開發出來的模型](../Page/ARPANET.md "wikilink")。
  - [網路傳輸協議](../Page/網路傳輸協議.md "wikilink")
  - [TCP/IP](../Page/TCP/IP.md "wikilink")，与OSI模型有类似结构的现行网络模型

## 参考文献

  - 计算机网络（第三版）(Computer Networks, Third Edition, Andrew S. Tanenbaum)
    熊桂喜 王小虎 译，清华大学出版社，ISBN 7-302-03035-9

[Category:網路結構](https://zh.wikipedia.org/wiki/Category:網路結構 "wikilink")
[Category:ISO標準](https://zh.wikipedia.org/wiki/Category:ISO標準 "wikilink")
[Category:OSI协议](https://zh.wikipedia.org/wiki/Category:OSI协议 "wikilink")