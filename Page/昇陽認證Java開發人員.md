**昇陽認證 Java 開發人員** (Sun Certified Developer for Java, SCJD) 是 [Java](../Page/Java.md "wikilink") 認證體系中的中階級專業認證，與平台認證系不同的是，SCJD 重視的不是平台技術，而是使用 Java 開發應用程式的能力，也就是考驗考生的獨立開發能力，通常拿到此認證的人，都被視為已經具有完全應用 Java 開發應用程式的獨立作業能力，而這通常也是大多數使用 Java 作為開發應用程式平台主要工具的企業所需要的人才。

為了要驗證 Java 開發人員的獨立作業能力，因此 SCJD 的考試方法和多數認證截然不同。

## 前置需求

SCJD 要求考生必須要先通過[SCJP以證明考生具備基本的](https://zh.wikipedia.org/wiki/SCJP "wikilink") Java 程式開發能力。

## 考試方式

SCJD 的考試，由**程式設計專案 (Project Assignment)**以及**論述考試 (Essay Exam)**所構成，昇陽希望藉由實務專案的方式來驗證考生的獨立開發能力，而為了確保專案是由考生親自開發，因此必須要由考生自己證明與闡述程式設計專案的內容與開發的說明。程式設計專案的考試是由昇陽下載情境與工作說明文件，以 Java SE 來開發應用程式，並且提交回昇陽，然後報名與完成論述考試，如此程式設計專案才會被評分，兩科考試合計必須要得到 320 分以上（滿分為400分）才合格\[1\]。

論述考試中會列出四個論述問題供考生作答，考生必須要用英文撰寫內容\[2\]，論述考試會和程式設計專案一起評分。

## 考試內容

### 程式設計專案

#### 測驗標的

在程式設計專案中，題目是以商用系統 (Business Software) 為標的，據昇陽的描述\[3\]：

#### API使用限制

由於程式設計專案通常沒有考生想像中大，同時 SCJD 考試也禁止使用較進階的 API，以確實可以測驗考生的程式開發能力，下列 API 是允許使用的：

  - java.lang.Thread 類別庫，處理執行緒處理及同步
  - [Swing](https://zh.wikipedia.org/wiki/Swing "wikilink")（以及支援Swing所需要的AWT）
  - 標準檔案IO (java.io，而不是java.nio)
  - Socket-based 網路程式設計加上下列技術擇一：
      - Java Serialization
      - [Java RMI](https://zh.wikipedia.org/wiki/Java_RMI "wikilink") (Java Remote Method Invocation)。

而下列 API 則是被禁用的：

  - [Enterprise JavaBeans](../Page/EJB.md "wikilink")。
  - [Servlet](https://zh.wikipedia.org/wiki/Servlet "wikilink")、[JSP](../Page/JSP.md "wikilink")技術、或任何其他web導向API。
  - java.nio 類別庫。
  - Java DataBase Connectivity（[JDBC](https://zh.wikipedia.org/wiki/JDBC "wikilink")）及[SQL](../Page/SQL.md "wikilink")。
  - Java IDL API及[CORBA](../Page/CORBA.md "wikilink")。
  - 協力廠商軟體程式庫或工具（例如[瀏覽器](https://zh.wikipedia.org/wiki/瀏覽器 "wikilink")）。

#### 考試期間

至於考試期間多長呢？昇陽也有說明\[4\]：

不過由於官方的考試資訊中，並沒有提到考試的時間，故根據上述的說明，合理推斷應為一個月內。

#### 評分標準

程式設計專案的評分有\[5\]：

1.  一般考量：此類別涵蓋的評分標準為您的程式碼是否容易使用及維護，本項評分滿分為 70 分。
2.  文件：包括您的使用者操作說明、Javadoc工具、及註解，本項評分滿分為 50 分。
3.  [物件導向設計](https://zh.wikipedia.org/wiki/OOP "wikilink")：包括您的物件導向設計品質，特別是您的類別結構所呈現的內容，以及變數與方法的使用，本項評分滿分為 50 分。
4.  [GUI](https://zh.wikipedia.org/wiki/GUI "wikilink")：此類別將針對您的GUI是否遵照規格，以及您的GUI是否容易使用，本項評分滿分為 70 分。
5.  鎖定：此類別包括鎖定scheme的實作，您的指派工作文件中有詳細的資訊。您的指派工作中的這一部份與多重執行緒程式碼有關，本項評分滿分為 80 分。
6.  語言能力：使用 Java 程式語言與 API 的應用，本項評分滿分為 80 分。

六項評分合計為 400 分，考生必須得到 320 分方可通過，同時此考試為人工閱卷，成績在大約4個星期後會上傳到 CertManager 中供考生查看。

### 論述考試

論述考試主要是邀請考生針對自己所開發的專案做觀念與方法的說明，有一點類似用打字的方式來做簡報，而論述考試的重點是\[6\]：

  - 列出一些您在實作上述項目時所必須做出的主要選擇。
  - 列出一些您的各項選擇的主要優點與缺點。
  - 針對比較設計與實作目的以及各種選擇的優點與缺點，簡短為您的選擇做說明。

## 重考

若考試沒有通過時，考生可以申請重考，重考的費用為 200 美金\[7\]，但若申請程式設計專案的重考後，論述考試也必須要重考。

## 參考資料

<div class="references-small">

<references />

</div>

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")

1.  [Sun Certified Developer for Java 2 Platform (Step 1 of 2)](https://www.suntrainingcatalogue.com/eduserv/client/loadCourse.do?coCourseCode=CX-310-252A)
2.  [Sun Certified Developer for Java 2 Platform (Step 2 of 2)](https://www.suntrainingcatalogue.com/eduserv/client/loadCourse.do?coCourseCode=CX-310-027)
3.  [Sun Certified Developer for Java 2 Platform (Step 1 of 2)](https://www.suntrainingcatalogue.com/eduserv/client/loadCourse.do?coCourseCode=CX-310-252A)
4.  [Sun Certified Developer for Java 2 Platform (Step 1 of 2)](https://www.suntrainingcatalogue.com/eduserv/client/loadCourse.do?coCourseCode=CX-310-252A)
5.  [Sun Certified Developer for Java 2 Platform (Step 1 of 2)](https://www.suntrainingcatalogue.com/eduserv/client/loadCourse.do?coCourseCode=CX-310-252A)
6.  [Sun Certified Developer for Java 2 Platform (Step 2 of 2)](https://www.suntrainingcatalogue.com/eduserv/client/loadCourse.do?coCourseCode=CX-310-027)
7.  [Sun Certified Developer for the Java Platform, Standard Edition: Assignment Resubmission](http://www.sun.com/training/catalog/courses/CX-310-252R.xml)