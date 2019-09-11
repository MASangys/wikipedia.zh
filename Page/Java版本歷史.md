[Java](../Page/Java.md "wikilink")語言自[JDK](../Page/JDK.md "wikilink")1.0版本以來經歷了許多次更新，也在基本[程式庫中增加了大量的](https://zh.wikipedia.org/wiki/程式庫 "wikilink")[類別和套件](../Page/类_\(计算机科学\).md "wikilink")。從J2SE 1.4開始，Java語言的變動由 Java Community Process（JCP）管理，JCP使用Java規範請求（Java Specification Requests，JSRs）來建議和定義對[Java平台內容的新增和修改](https://zh.wikipedia.org/wiki/Java平台 "wikilink")。Java語言由Java語言規範（Java Language Specification，JLS）定義，對JLS的更改則根據[JSR 901管理](https://zh.wikipedia.org/wiki/JSR_901 "wikilink")。

除了語言上的變化，多年來Java标准庫（JCL）发生了巨大的变化，從JDK 1.0中的幾百個類暴增到J2SE 5中的三千多個類。[Swing](../Page/Swing_\(Java\).md "wikilink")、Java2D等的全新[API被加入其中](../Page/应用程序接口.md "wikilink")，而許多原本JDK 1.0的類和方法已被弃用。當然，仍然有一些程式可以將Java程式從新版本的Java平台轉換為較舊版本（例如Java 5.0降轉到1.4）。 

Java 7發布後，Oracle承諾回到以前每兩年發布一次的發布週期。\[1\]但在2013年時，Oracle卻宣布他們將Java 8延遲一年發表，官方表示是為了修復Java的安全漏洞。\[2\]

2017年9月，Java平台的主架构师 Mark Reinhold 发出提议，要求将Java的功能更新周期从之前的每两年一个新版本缩减到每六个月一个新版本。该提议获得了通过，并在提出后不久生效。

Java 8 与 Java 11 为目前提供支持的LTS（长期支持）版本；Java 10 是上一个快速发布版本，且已不再被支持。2018年9月，随着 Java 11 的发布，Java 10 自当日起不再被支持。Oracle 将在 2019 年 1 月前为商业用途中的 Java 8 长期支持，而针对非商用的更新将继续提供，直至 2020 年 12 月；此外，AdoptOpenJDK 也为 Java 8 提供免费更新。针对 Java 11 的长期支持将不再由 Oracle 提供，而是改由 [OpenJDK](../Page/OpenJDK.md "wikilink") 社区的 AdoptOpenJDK 提供。

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>发布日期</p></th>
<th><p>最终免费公开更新时间[3]</p></th>
<th><p>最後延伸支援日期</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>1995</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>1996 年 1 月</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>1997 年 2 月</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>1998 年 12 月</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2000 年 5 月</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>2002 年 2 月</p></td>
<td><p>2008 年 10 月（由 Oracle 提供更新）</p></td>
<td><p>2013 年 2 月</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2004 年 9 月</p></td>
<td><p>2009 年 11 月（由 Oracle 提供更新）</p></td>
<td><p>2015 年 4 月</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2006 年 12 月</p></td>
<td><p>2013 年 4 月（由 Oracle 提供更新）</p></td>
<td><p>2018 年 12 月</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2011 年 7 月</p></td>
<td><p>2015 年 4 月（由 Oracle 提供更新）</p></td>
<td><p>2022 年 7 月</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2014 年 3 月</p></td>
<td><p>Oracle 在 2019 年 1 月停止免费商用更新<br />
Oracle 在 2020 年 12 月停止非商用免费更新<br />
AdoptOpenJDK 在 2023 年 9 月或之前停止免费更新</p></td>
<td><p>2025 年 3 月</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2017 年 9 月</p></td>
<td><p>2018 年 3 月（由 Oracle 提供更新）</p></td>
<td><p>{</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2018 年 3 月</p></td>
<td><p>2018 年 9 月（由 Oracle 提供更新）</p></td>
<td><p>{</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2018 年 9 月</p></td>
<td><p>Oracle 不为此版本提供免费更新<br />
AdoptOpenJDK 在 2022 年 9 月或之前停止免费更新</p></td>
<td><p>由所使用的具体实现决定</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2019 年 3 月</p></td>
<td><p>Oracle 不为此版本提供免费更新<br />
OpenJDK 在 2019 年 9 月停止免费更新</p></td>
<td><p>{</p></td>
</tr>
<tr class="odd">
<td><p><small></small></p></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

{{-}}

## JDK Alpha 和 Beta

第一個1995年發布的alpha和beta Java公開版本，[API和](../Page/应用程序接口.md "wikilink")[ABI非常不穩定](../Page/应用二进制接口.md "wikilink")。 支援Java Web瀏覽器被取名為WebRunner。

## JDK 1.0

第一個版本於1996年1月23日發布，叫做為Oak\[4\]。而真正第一個穩定的版本JDK 1.0.2，被稱作Java 1。\[5\]

## JDK 1.1

1997年2月19日發布。新增功能主要包括：\[6\]

  - [AWT](../Page/AWT.md "wikilink")事件模型大規模重新編製
  - 加入了內部類別
  - [JavaBeans](../Page/JavaBeans.md "wikilink")
  - [JDBC](../Page/Java数据库连接.md "wikilink")
  - [RMI](https://zh.wikipedia.org/wiki/Java远程方法调用 "wikilink")
  - 能夠支援自理的[反射能力](../Page/反射_\(计算机科学\).md "wikilink")，在運行時不可能有修改。
  - 针对 Microsoft Windows 平台上運作的版本，附带由Symantec為JavaSoft生產的[JIT编译器](../Page/即時編譯.md "wikilink")
  - 支持[国际化和](../Page/国际化与本地化.md "wikilink")[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")，该功能源自[Taligent](https://zh.wikipedia.org/wiki/Taligent "wikilink")\[7\]

## J2SE 1.2

1998年12月8日發布，代號為**Playground**。 该版本到J2SE 5.0的後續版本被更名為**Java 2**，而版本名稱「J2SE」（Java 2平台，標準版）取代JDK以區別J2EE（Java 2平台，企業版） 和J2ME（Java 2 Platform，Micro Edition）基礎平台。這是Java的一個非常重要的版本，它將Java平台的大小增加至原先的三倍，在59個程式包中達到了1520個類。主要增加包括：\[8\]

  - `strictfp` 關鍵字
  - 主類別中整合了[Swing圖像化API](../Page/Swing_\(Java\).md "wikilink")
  - 首次为Sun提供的JVM配備[JIT编译器](../Page/即時編譯.md "wikilink")
  - [Java plug-in](../Page/Java_applet.md "wikilink")（即 Java Applet）
  - [Java IDL](https://zh.wikipedia.org/wiki/Java_IDL "wikilink")，一個与[CORBA](../Page/CORBA.md "wikilink")互通的[接口描述语言](../Page/接口描述语言.md "wikilink")实现
  - [Java集合框架](../Page/Java集合框架.md "wikilink")

## J2SE 1.3

代號為**Kestrel**。在的版本中最著名的改變包括：\[9\]\[10\]

  - 包含了[HotSpot](../Page/HotSpot.md "wikilink") JVM（HotSpot JVM第一次被發布是在1999年4月，名為J2SE 1.2 JVM）
  - 為了支援與[CORBA](../Page/CORBA.md "wikilink")的選擇相容性而修改了[RMI](https://zh.wikipedia.org/wiki/Java远程方法调用 "wikilink")
  - Java命名和目錄接口（Java Naming and Directory Interface，縮寫JNDI）包含在主程式庫中（先前為擴充元件的形式）
  - [Java Platform Debugger Architecture](https://zh.wikipedia.org/wiki/JPDA "wikilink") (JPDA)
  - JavaSound
  - 用于实现动态代理的类

## J2SE 1.4

代號為**Merlin**。2002年2月6日釋出了[JSR 59](http://www.jcp.org/en/jsr/detail?id=59)，是第一個在JCP下開發的Java平臺。主要的變化包括︰\[11\]\[12\]

  - 語言上的改變
      - [`assert`](../Page/斷言_\(程式\).md "wikilink") 關鍵字 (在 [JSR 41](http://www.jcp.org/en/jsr/detail?id=41) 中被指定)
  - 程式庫的改善
      - 仿照[Perl](../Page/Perl.md "wikilink")的[正規表示式](https://zh.wikipedia.org/wiki/正規表示式 "wikilink")
      - [異常鏈](https://zh.wikipedia.org/wiki/异常链 "wikilink")，允許一個异常來封裝原先处于較低級別的异常
      - 支援Internet Protocol version 6 ([IPv6](../Page/IPv6.md "wikilink"))
      - 非阻塞I/O（取名為 [Nonblocking Input/Output](https://zh.wikipedia.org/wiki/Java_NIO "wikilink")，NIO）（在 [JSR 51](http://www.jcp.org/en/jsr/detail?id=51) 中被指定）
      - 日誌API (在[JSR 47](http://www.jcp.org/en/jsr/detail?id=47)中被指定)
      - 图像 I/O API來读取和寫入图片，支持JPEG、PNG等格式
      - 整合了[XML](../Page/XML.md "wikilink")解析器和[XSLT](../Page/XSLT.md "wikilink")處理器（[JAXP](../Page/JAXP.md "wikilink")）（指定在[JSR 5](http://www.jcp.org/en/jsr/detail?id=5)和[JSR 63](http://www.jcp.org/en/jsr/detail?id=63)）
      - 整合安全和加密擴充元件(JCE, JSSE, [JAAS](../Page/JAAS.md "wikilink"))
      - 内置了Java Web Start (Java Web Start 在2001年3月第一次被釋出，作为J2SE 1.3的可选组件) (指定在[JSR 56](http://www.jcp.org/en/jsr/detail?id=56))
      - 偏好設定 API (`java.util.prefs`)

Java 1.4開放支源和安全性更新於2008年10月終止。Oracle客戶的付費的安全性更新也在2013年2月結束。\[13\]

## J2SE 5.0

代號為**Tiger**。這個在2004年9月30日釋出的版本原本以1.5編號，也就是仍然使用內部版本編號。這個數字輩改變是為了「更好地反映成熟度、穩定性、可擴充性和 J2SE 的安全水準」。這個版本是在JSR 176底下被開發。

J2SE 5.0在2008年4月8日進入其即將停止公開更新的期間；2009年11月3日正式不公開開放更新。Oracle客戶直到2015年5月都能透過付費的方式取得更新 。 \[14\]

Tiger增加了若干個重要的新語言功能。\[15\]\[16\]

  - [泛型](../Page/泛型.md "wikilink")（Generics）： 為集合提供編譯期間 （靜態） 型別安全，且不須為大多數類型轉換 （型別轉換） （規範在 JSR 14）
  - 元資料（[Metadata](../Page/元数据.md "wikilink")）： 也稱作注解。讓語言結構（像是類別和方法）能夠用額外的資料標記，可以由元資料意識工具處理（規範在 JSR 175）
  - 自動封裝與解封裝： 在基本的資料型別（如 `int`）和基本的的外覆類別 （如 `Integer`） 之間能夠自動轉換 （規範在 JSR 201）
  - 枚舉（Enumerations）： 以 `enum` 關鍵字創造出一種型別安全，有排序值的清單（如Day.MONDAY、 Day.TUESDAY 等）；以前這只能透過非型別安全的恒定整數或自行撰寫的類別來達成 （型別安全的枚舉模式） （規範在JSR 201）
  - 可變參數函數（Varargs）：方法的最後一個參數現在可以用一個類型名稱加上三個點宣告（如：`void drawtext(String... lines)`）；在調用代碼中，型別中參數裡任何的數字可以被使用，而它們再放在一個陣列來傳遞給方法，或是其它的調用代碼可以傳遞那個型別的陣列
  - 強化 [`for``   ``each`](../Page/Foreach循环.md "wikilink") 迴圈：`for` 迴圈的語法被用特別的語法擴充了，适用于陣列或 ，用于迭代每個成員，如基本的  類別 (規範在 [JSR 201](http://www.jcp.org/en/jsr/detail?id=201))
  - 改進多執行緒 Java 程式的執行語義；新的 Java 記憶體模型改善了複雜性、 有效性和以前的規格性能\[17\]
  - 静态导入

另外也有以下這些對於基本程式庫的改善：

  - 自動給[RMI產生](https://zh.wikipedia.org/wiki/Java远程方法调用 "wikilink")[桩模块](../Page/桩_\(计算机\).md "wikilink")
  - [Swing](../Page/Swing_\(Java\).md "wikilink")：新的介面外觀，叫做synth
  - [异步实用工具](http://java.sun.com/j2se/1.5.0/docs/guide/concurrency/overview.html) 在 [`java.util.concurrent`](http://java.sun.com/j2se/1.5.0/docs/api/java/util/concurrent/package-summary.html)` 套件中`\[18\]
  - Scanner 類別來解析來自各式各樣的輸入和緩衝

Java 5是Java的最後一個正式支援Microsoft Windows 98和Windows ME的版本\[19\]，而Windows Vista是J2SE 5在2009年10月的Java 5生命週期之前支援的Windows的最新版本。

Java 5 Update 5（1.5.0_05）是Java在Windows 95（裝了Internet Explorer 5.5 的）和Windows NT 4.0上運行的最後一個版本。\[20\]

Java 5 最初出現在 Mac OS X 10.4 （Tiger），到了 Mac OS X 10.5 （Leopard）時成為了預設的 Java 版本。

### 版本控制系統的改變

此版本推出了JAVA語言中，一個新的版本控制系統，而舊版本控制系統仍然可以在開發者資源庫中繼續使用。這種對應關係持續維持到以後的版本 (Java 6 = JDK 1.6, Java 7 = JDK 1.7, 以此類推).

### Java 5 更新

| 版本                  | 釋出日期       | 重點                                                                                                                                                                                                                                      |
| ------------------- | ---------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Java SE 5           | 2004-10-4  | Metadata、泛型型別、對基礎型別自動封裝和自動解封裝、 加強 for 迴圈、 枚舉的類型、 靜態類別匯入，格式化I/O、 varargs和併發的實用工具。改進的啟動時間和記憶體佔用量。在多個正在運行的JVM 之間共用的唯讀資料。 遠端監控和管理。一個新的JVM配置API。程序化的堆疊版本追蹤。支持對 XML 1.1 的命名空間、 XML 架構、 SAX 2.0.2，DOM級別3，與XSLT 1.1 快速的XLSTC的編譯器。Unicode 4.0支援。 |
| Java SE 5 Update 1  | 2004-12-25 | 50個漏洞修復                                                                                                                                                                                                                                 |
| Java SE 5 Update 2  | 2005-03-16 | 一些中斷的修復。程式現在以較客製化的方式編譯。日曆漏洞修復和其它漏洞修復。                                                                                                                                                                                                   |
| Java SE 5 Update 3  | 2005-05-03 | 這個版本修復了一些漏洞，包含在Linux Mozilla外掛的中斷。                                                                                                                                                                                                      |
| Java SE 5 Update 4  | 2005-07-04 | 在這個版本中，J2SE對於64位元Windows的支持從候選版本中脫穎而出。這個版本在AMD64/EM64T 64位元模式運行用Windows Server 2003 x64 版本的機器。                                                                                                                                          |
| Java SE 5 Update 5  | 2005-09-18 | 修復了一些漏洞以及表現增強。對Windows 95 和 Windows NT 4.0最後的更新。                                                                                                                                                                                        |
| Java SE 5 Update 6  | 2005-12-07 | 在這個版本之前，Java小程式或應用程式可以決定想要運行的JRE版本，但從這個更新之後就不再是這樣了。所有的程式都用最新版本的JRE運行。                                                                                                                                                                   |
| Java SE 5 Update 7  | 2006-05-29 | 修復了幾個漏洞並提高性能。                                                                                                                                                                                                                           |
| Java SE 5 Update 8  | 2006-08-13 | 修復了一些漏洞以及提高了性能。                                                                                                                                                                                                                         |
| Java SE 5 Update 9  | 2006-11-12 | 這個版本修復了一些小回歸。                                                                                                                                                                                                                           |
| Java SE 5 Update 10 | 2006-12-22 | 添加了由Linux 2.6支持的epoll I/O事件通知工具的實作。 許多漏洞被修復。                                                                                                                                                                                            |
| Java SE 5 Update 11 | 2007-03-08 | 修復了幾個漏洞並提高了性能。                                                                                                                                                                                                                          |
| Java SE 5 Update 12 | 2007-06-11 |                                                                                                                                                                                                                                         |
| Java SE 5 Update 13 | 2007-10-05 | Java Web Start中與本地文件存取相關的多個安全漏洞已修復。 修復了允許繞過網路進入限制的JRE中的安全漏洞。 修復其他幾個安全問題和小錯誤。                                                                                                                                                            |
| Java SE 5 Update 14 |            |                                                                                                                                                                                                                                         |
| Java SE 5 Update 15 | 2008-03-06 | 修復因緩衝堆超出邊界而導致的幾個崩潰漏洞以及其他一些小漏洞。 現在來自AOL，DigiCert和TrustCenter的新的[根憑證已經被包含在內](../Page/根证书.md "wikilink")。                                                                                                                                  |
| Java SE 5 Update 16 | 2008-07-23 | 此版本修復了幾個安全漏洞，例如DoS漏洞，緩衝區溢出和其他可能導致崩潰的漏洞，或是會給程式存取某些系統資源。 這些漏洞位於Java Web Start，Java管理擴充元件（Java Management Extensions，JMX）管理代理以及用於處理XML資料的函數中。                                                                                              |
| Java SE 5 Update 17 | 2008-12-03 | 更新了UTF-8字符集，實作以處理非最短形式的UTF-8字節序列，從而引入了與以前版本不相容的問題。 添加了新的根憑證。 許多漏洞被修復。                                                                                                                                                                   |
| Java SE 5 Update 18 | 2009-03-25 | 幾個安全上的問題已解決。 稍微修改了在LDAP目錄中存取Java物件的行為的JNDI功能。 增加了五個新的根憑證。 許多漏洞被修復。                                                                                                                                                                      |
| Java SE 5 Update 19 | 2009-05-29 | 為多個系統配置增加支援。 增加了服務標籤（Service Tag）支持。 許多漏洞被修復，包括幾個崩潰和記憶體洩漏。                                                                                                                                                                              |
| Java SE 5 Update 20 | 2009-08-06 | 解決了幾個安全漏洞，例如不受信任的小程式的潛在系統訪問，以及圖像處理和Unpack200中的整數溢出。 添加了幾個新的根憑證。 許多其它小漏洞已修復。                                                                                                                                                             |
| Java SE 5 Update 21 | 2009-09-09 | 許多小漏洞被修復。                                                                                                                                                                                                                               |
| Java SE 5 Update 22 | 2009-11-04 | 此版本標記Java 5的End Of Service Life（EOSL），並且是其最終的公開版本。 在報告Sun Alerts 269868、270474、270475和270476中的幾個安全漏洞已修復。 其他幾個漏洞已修復。 此外，還增加了兩個新的根憑證。                                                                                                     |

class="nowrap" | Java 5 更新表格

## Java SE 6

代號為**Mustang**。版本發佈於2006年12月11日，Sun把原本的名稱「J2SE」改為「**Java SE**」，然後再從版本號中去掉「.0」\[21\]，而開發者內部編號仍然是1.6.0。\[22\]這個版本是根據[JSR 270](http://www.jcp.org/en/jsr/detail?id=270)開發的。

在發展階段，新版本大概每周都釋出包括一些功能增強和漏洞的修復。Beta版本在2006年2月和6月釋出，也就是為什麼2006年12月11日變成最終的版本。 

本版本包含的主要更改：\[23\]\[24\]

  - 支持舊的Win9x版本下降；非正式地，Java 6 Update 7是Java的最後一個顯示為在這些版本的Windows上工作的版本。 這被認為是因為在Update 10版本中的主要更改。
  - 腳本語言支持（Scripting Language Support）（JSR 223）：用於與腳本語言緊密整合的通用API，以及內建的Mozilla JavaScript Rhino整合。
  - 核心平台\[25\]\[26\]和Swing性能顯著的改進。
  - 透過[JAX-WS](../Page/JAX-WS.md "wikilink")改善的網路服務支援(JSR 224).
  - 支援[JDBC](../Page/Java数据库连接.md "wikilink") 4.0 ([JSR 221](../Page/Java数据库连接.md "wikilink")).
  - Java編譯器API (JSR 199)：允許Java程式以寫程式的方式選擇和呼叫Java編譯器的API。
  - 將JAXB升級到版本2.0：包括StAX解析器的整合。
  - 支持pluggable [annotations](../Page/Java注解.md "wikilink") (JSR 269).\[27\]
  - 改善許多[GUI](../Page/图形用户界面.md "wikilink")，像是SwingWorker在API中的整合，表格排序和篩選，以及真正的Swing雙緩衝（消除模糊區域效果）。
  - 包含[JVM改善](../Page/Java虚拟机.md "wikilink")：同步和編譯器性能優化，新演算法和對現有垃圾收集演算法的升級以及應用程序啟動性能。

Java 6可以安裝到在64位（Core 2 Duo和更高版本）處理器機器上運行的Mac OS X 10.5（Leopard）。\[28\] 運行Mac OS X 10.6（Snow Leopard）的32位和64位機器也支援Java 6。

Java 6在2013年2月到了它支援生命週期的尾聲，此時所有公開更新（包括安全更新）都計劃停止。\[29\]\[30\] Oracle在2013年3月和4月發布了另外兩個對Java 6的更新，修補了一些安全漏洞。\[31\]\[32\]

### Java 6 更新

JAVA 6釋出後，Sun和後來的Oracle之後，釋出了幾個更新，而不更改任何公開的API，增強了終端使用者的可用性或固定的漏洞。自2016 年1月，JAVA 6和其它更舊的版本已無法從Oracle下載。\[33\]

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>釋出日期</p></th>
<th><p>重點</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Java SE 6</p></td>
<td><p>2006-12-23</p></td>
<td><p>此版本在Web服務、腳本和資料庫，可插入的註解、安全性以及質量、相容性和穩定性等領域增強了許多功能。 現在也正式支援JConsole。 已增加對Java DB的支援。</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 1</p></td>
<td><p>2007-05-07</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 2</p></td>
<td><p>2007-07-03</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 3</p></td>
<td><p>2007-10-03</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 4</p></td>
<td><p>2008-01-14</p></td>
<td><p><a href="../Page/HotSpot.md" title="wikilink">HotSpot</a> VM 10</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 5</p></td>
<td><p>2008-03-05</p></td>
<td><p>消除了幾個安全漏洞。 現在包括了來自AOL、DigiCert和TrustCenter的新的根憑證。</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 6</p></td>
<td><p>2008-04-16</p></td>
<td><p>引入了對臭名昭著的Xlib / XCB鎖定斷言問題的解決方法。 當以LoginContext使用Kerberos認證時內存洩漏的問題已被修復。 其它幾個漏洞已修復。</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 7[34]</p></td>
<td></td>
<td><p>非正式記載的，Java SE 6 Update 7（1.6.0.7）顯示為在Win9x系列作業系統上工作的Java的最後一個版本</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 10[35]</p></td>
<td><p>2008-10-15</p></td>
<td><p>HotSpot VM 11. 此更新的主要更改包括：</p>
<ul>
<li>Java部署工具包（Java Deployment Toolkit），為一組<a href="../Page/JavaScript.md" title="wikilink">JavaScript</a>函數，用於簡化<a href="https://zh.wikipedia.org/wiki/applet" title="wikilink">applet和Java</a> Web Start應用程式的部署。[36]</li>
<li>Java Kernel，一個小小的安裝程式，只包含最常用的JRE類別。 其它套件需要時再自己下載。</li>
<li>加強更新器。</li>
<li>增強版本控制和pack200的支援：不再需要伺服器端支持。[37]</li>
<li>Java Quick Starter，用來加強冷卻啟動時間。</li>
<li>改進了Windows上的Java2D圖形基本元件的表現，使用Direct3D和硬體加速。</li>
<li>新的 <a href="../Page/Swing_(Java).md" title="wikilink">Swing</a> <a href="https://zh.wikipedia.org/wiki/界面外观" title="wikilink">look and feel</a> ，名為 Nimbus ，建立在 synth 基礎之上。[38]</li>
<li>下一代的Java插件：applet現在已可在個別的程序中運行，並支持Web Start應用程式的許多功能。[39]</li>
</ul></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 11[40]</p></td>
<td><p>2008-12-03</p></td>
<td><p>13個安全性漏洞修正[41]</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 12[42]</p></td>
<td><p>2008-12-12</p></td>
<td><p>沒有安全性修復；64位元的Java插件（僅適用於64位元的網頁瀏覽器）；支援Windows Server 2008；圖形和JavaFX應用程式的性能改進</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 13[43]</p></td>
<td><p>2009-03-24</p></td>
<td><p>7個安全性漏洞修復，稍作修改JNDI存取LDAP中的Java物件，JMX變更（createMBeanunregisterMBean），添加了4個新的根憑證</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 14[44]</p></td>
<td><p>2009-05-28</p></td>
<td><p>HotSpot VM 14. 此版本包括對JIT編譯器的大量性能更新，用於64位元機器的壓縮指標，以及對G1（Garbage First）低暫停的垃圾回收器的支援。[45][46]</p>
<p><strong>-XX:+DoEscapeAnalysis</strong> 選項直接指向HotSpot <a href="../Page/即時編譯.md" title="wikilink">JIT compiler以使用</a><a href="../Page/逃逸分析.md" title="wikilink">escape analysis來決定本地端物件是否可以被分配到stack上而不是</a><a href="../Page/記憶體管理.md" title="wikilink">heap裡</a>[47]</p>
<p>一些開發人員已經注意到這個版本中引入的一個問題，它導致除錯器似乎是隨意地錯過斷點（breakpoints）。[48] Sun有一個相應的漏洞，也是一個追蹤問題。 解決方法適用於客戶端和伺服器端的虛擬機。[49] 使用 <strong>-XX:+UseParallelGC</strong> 選項將可以避免錯誤。另一個解決方案是降版到update 13，或是升級到update 16。</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 15</p></td>
<td><p>2009-08-04</p></td>
<td><p>加入了patch-in-place 功能[50]</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 16</p></td>
<td><p>2009-08-11</p></td>
<td><p>修復了update 14中導致除錯器錯過斷點的問題。[51]</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 17[52]</p></td>
<td><p>2009-11-04</p></td>
<td><p>安全修復；兩個新的根憑證</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 18[53]</p></td>
<td><p>2010-01-13</p></td>
<td><p>沒有安全性漏洞修復；Hotspot VM 16；支援Ubuntu 8.04 LTS桌面版、SLES 11、Windows 7、Red Hat Enterprise Linux 5.3、Firefox 3.6、VisualVM 1.2；更新過的Java DB；許多性能改進</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 19[54]</p></td>
<td><p>2010-03-30</p></td>
<td><p>安全性漏洞修復；根憑證更動：加入七個新的，刪除三個，五個替換為更強的簽署演算法；對TLS重新談判攻擊的臨時修補</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 20[55]</p></td>
<td><p>2010-04-15</p></td>
<td><p>2個安全性漏洞修補</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 21[56]</p></td>
<td><p>2010-07-07</p></td>
<td><p>沒有安全性漏洞修復；Hotspot VM 17；支援 <a href="../Page/Red_Hat_Enterprise_Linux.md" title="wikilink">Red Hat Enterprise Linux</a> 5.4和5.5、<a href="../Page/Oracle_Linux.md" title="wikilink">Oracle Enterprise Linux</a> 4.8, 5.4, 5.5、<a href="../Page/Google_Chrome.md" title="wikilink">Google Chrome</a> 4與客製讀取進度指示器（Customized Loading Progress Indicators）；VisualVM 1.2.2</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 22[57]</p></td>
<td><p>2010-10-12</p></td>
<td><p>29個安全性漏洞修補; 支援RFC 5746</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 23[58]</p></td>
<td><p>2010-12-08</p></td>
<td><p>沒有安全性漏洞修復；Hotspot VM 19；對由右至左的語言有更好的支援</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 24[59]</p></td>
<td><p>2011-02-15</p></td>
<td><p>21個安全性漏洞修補；更新 Java DB</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 25</p></td>
<td><p>2011-03-21</p></td>
<td><p>沒有安全性漏洞修復；Hotspot VM 20；支援 <a href="../Page/Internet_Explorer_9.md" title="wikilink">Internet Explorer 9</a>、<a href="../Page/Mozilla_Firefox_4.md" title="wikilink">Firefox 4和Chrome</a> 10；改善BigDecimal；包含「分層」編譯在伺服器虛擬機以啟用它來跟客戶端需擬機一樣的快速開啟，當達到更好的尖峰表現性能（這個功能要啟用 <code>-server</code> 和 <code>-XX:+TieredCompilation</code> 指令選項）[60]</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 26[61]</p></td>
<td><p>2011-06-07</p></td>
<td><p>17新的安全性漏洞修補；[62] 最新的版本能夠和Windows Vista SP1相容</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 27[63]</p></td>
<td><p>2011-08-16</p></td>
<td><p>沒有安全性漏洞修復；給Firefox 5的新憑證</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 29[64]</p></td>
<td><p>2011-10-18</p></td>
<td><p>20個安全性漏洞修補；其它許多種漏洞的修補[65]</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 30[66]</p></td>
<td><p>2011-12-12</p></td>
<td><p>沒有安全性漏洞修復；修補SSL回歸在Update 29；支援<a href="../Page/Red_Hat_Enterprise_Linux.md" title="wikilink">Red Hat Enterprise Linux</a> 6</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 31[67]</p></td>
<td><p>2012-02-14</p></td>
<td><p>14個安全性漏洞修補和一個漏洞修復；最新的版本能夠夠可靠的在<a href="../Page/Windows_2000.md" title="wikilink">Windows 2000上工作</a>[68] </p></td>
</tr>
<tr class="even">
<td><p>JAVA SE 6 Update 32[69]</p></td>
<td><p>2012-04-26</p></td>
<td><p>沒有安全性漏洞修復；其它許多種漏洞的修補</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 33[70]</p></td>
<td><p>2012-06-12</p></td>
<td><p>14個安全性漏洞修補, 改善VM設定檔的讀取</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 34[71]</p></td>
<td><p>2012-08-14</p></td>
<td><p>沒有安全性漏洞修復；其它許多種漏洞的修補</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 35[72]</p></td>
<td><p>2012-08-30</p></td>
<td><p>包含一個深度的安全修補</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 37[73]</p></td>
<td><p>2012-10-16</p></td>
<td><p>30個安全性漏洞修補</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 38[74]</p></td>
<td><p>2012-12-11</p></td>
<td><p>其它許多種漏洞的修補[75]</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 39[76]</p></td>
<td><p>2013-02-01</p></td>
<td><p>50個安全性漏洞修補</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 41[77]</p></td>
<td><p>2013-02-19</p></td>
<td><p>5個安全性漏洞修補</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 43[78]</p></td>
<td><p>2013-03-04</p></td>
<td><p>2個安全性漏洞修補</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 45[79]</p></td>
<td><p>2013-04-16</p></td>
<td><p>42個安全性漏洞修補；[80] 其它的一些改變； 最後的公開更新。[81] 自2016年1月起，Java 6（或更早的版本）沒辦法再從Oracle下載</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 51[82]</p></td>
<td><p>2013-06-18</p></td>
<td><p>不公開，只能透過Java SE支援計劃和在Apple Update for OS X Snow Leopard、Lion 和 Mountain Lion 中；最多達到40個安全性漏洞修復[83]</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 65[84]</p></td>
<td><p>2013-10-15</p></td>
<td><p>不公開，只能透過Java SE支援計劃和在Apple Update for OS X Snow Leopard、Lion 和 Mountain Lion 中；最少11個重要的安全性漏洞修復[85]</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 71[86]</p></td>
<td><p>2014-01-14</p></td>
<td><p>不公開下載；33個漏洞修復[87]</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 75[88]</p></td>
<td><p>2014-04-15</p></td>
<td><p>不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster no. #54 提供；25個安全性漏洞修復[89]</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 81[90]</p></td>
<td><p>2014-07-15</p></td>
<td><p>不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；11個安全性漏洞修復[91]</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 85[92]</p></td>
<td><p>2014-10-16</p></td>
<td><p>不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；18個安全性漏洞修復[93]</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 91[94]</p></td>
<td><p>2015-01-21</p></td>
<td><p>Linux x64和Windows i586的版本可在Java SE 6參考實作中使用。[95] 其他版本只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；15個安全性漏洞修復[96]</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 95</p></td>
<td><p>2015-04-14</p></td>
<td><p>不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；14個安全性漏洞修復[97]</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 101</p></td>
<td><p>2015-07-15</p></td>
<td><p>不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；18個安全性漏洞修復。[98] 給IE 10和11的憑證在1.6.0_101版本中被引入</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 105</p></td>
<td><p>2015-10-20</p></td>
<td><p>不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；17個安全性漏洞修復[99]</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 111</p></td>
<td><p>2016-01-20</p></td>
<td><p>不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；17個安全性漏洞修復[100]</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 113</p></td>
<td><p>2016-02-05</p></td>
<td><p>不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；1個安全性漏洞修復[101]</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 115</p></td>
<td><p>2016-04-21</p></td>
<td><p>不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；8個安全性漏洞修復[102]</p></td>
</tr>
<tr class="odd">
<td><p>Java SE 6 Update 121</p></td>
<td><p>2016-07-19</p></td>
<td><p>不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；15個安全性漏洞修復[103]</p></td>
</tr>
<tr class="even">
<td><p>Java SE 6 Update 131</p></td>
<td><p>2016-10-18</p></td>
<td><p>不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；12個安全性漏洞修復[104]</p></td>
</tr>
</tbody>
</table>

## Java SE 7

 JAVA 7 （代號**Dolphin\[105\]**） 是一個重大的更新，在 2011年7月7日亮相\[106\]，並在2011年7月28日開放給開發者使用。\[107\]發展時期被分類成十三的重要階段，最後一個階段在2011年6月6日完成。\[108\]\[109\]平均來看，每個里程碑各有8個版本（就是一般包括的功能增強和漏洞修復） 。在 [OpenJDK 7 專案中的功能清單](http://openjdk.java.net/projects/jdk7/features/)中列出了很多的改變。

在 Java 7 中新增的功能包括：\[110\]

  - [JVM本身对](https://zh.wikipedia.org/wiki/JVM "wikilink")[動態語言的支持](../Page/动态语言.md "wikilink")：新的`invokedynamic`字节码指令（[JSR-292](http://jcp.org/en/jsr/detail?id=292)），与多語言虛擬機（Multi Language Virtual Machine）原型
  - 64位指针压缩\[111\]（Java 6 中可以使用 XX:+UseCompressedOops 开启）\[112\]
  - 一些語言方面的小改變（在Coin專案下的一個小群體）：\[113\]

:\* 在switch中使用字符串类型\[114\]

:\* try语句中的自動資源管理\[115\]

:\* 針對泛型實例的创建而改善的[類型推論](https://zh.wikipedia.org/wiki/類型推論 "wikilink")，被称为钻石操作符`<>`\[116\]

:\* 簡化了varargs方法的声明\[117\]

:\* 二進位整數字面值\[118\]

:\* 允許在數值字面值中加入下划线\[119\]

:\* 允许在一个 catch 中捕捉多个类型的异常，並使用改進的類型檢查重新抛出异常\[120\]

  - JSR 166下的並發實用工具\[121\]
  - 新的檔案 [I/O](https://zh.wikipedia.org/wiki/I/O "wikilink") 程式庫 (JSR 203 定義) 增加多重檔案的支援、檔案原始資料和符號鏈接。新的包為：`java.nio.file`、`java.nio.file.attribute`和`java.nio.file.spi`\[122\]\[123\]
  - 使用 Timsort 來为集合与数组排序，取代[归并排序](../Page/归并排序.md "wikilink")
  - 對[椭圆曲线加密演算法增加标准库级别的支援](../Page/椭圆曲线密码学.md "wikilink")
  - 一個給Java 2D的XRender傳遞途徑，改進了現代[GPUs特有的功能的處理](../Page/圖形處理器.md "wikilink")
  - 用於圖形功能的新平台API（最初在版本6u10中的實作為不支援的API）\[124\]
  - 增強了對新網路通訊協定（包括SCTP和Sockets Direct Protocol）的标准库级别的支持
  - 更新對[XML](../Page/XML.md "wikilink")和[Unicode的支持](https://zh.wikipedia.org/wiki/Unicode "wikilink")，以符合最新标准
  - Java部署規則集\[125\]

Lambda（Java 對[匿名函数](../Page/匿名函数.md "wikilink")的實作）、Jigsaw（Java 對[模块化的實作](https://zh.wikipedia.org/wiki/模組_\(程式設計\) "wikilink")），以及其它一些 Coin 项目中的内容在 Java 7 裡被放棄，而转为Java 8一部份（其中 Jigsaw 直至 Java 9 才得到实现）。\[126\]

從2012年4月開始，Java 7 一直是java.com的預設下載版本，直到 Java 8 发布。\[127\]

### Java 7 更新

Oracle 在每季度發布 Java 7 家族每季的公開更新，至2015年4月產品支援生命週期\[128\]結束時停止。\[129\]

| 版本                         | 釋出日期       | 重點                                                                                                                                                                                        |
| -------------------------- | ---------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Java SE 7\[130\]           | 2011-07-28 | 初始版本；[HotSpot](../Page/HotSpot.md "wikilink") VM 21                                                                                                                                       |
| Java SE 7 Update 1\[131\]  | 2011-10-18 | 20個安全漏洞修補；其它漏洞修補                                                                                                                                                                          |
| Java SE 7 Update 2\[132\]  | 2011-12-12 | 沒有安全漏洞修補；HotSpot VM 22；可靠性和性能改進；支援 Solaris 11 和 Firefox 5 之後的版本；[JavaFX](../Page/JavaFX.md "wikilink") 包含 Java SE JDK, 改善了網頁部屬的應用程式。                                                      |
| Java SE 7 Update 3\[133\]  | 2012-02-14 | 14個安全漏洞修補\[134\]                                                                                                                                                                          |
| Java SE 7 Update 4\[135\]  | 2012-04-26 | 沒有安全漏洞修補；HotSpot VM 23; JDK 支援 Mac OS X                                                                                                                                                   |
| Java SE 7 Update 5\[136\]  | 2012-06-12 | 14個安全漏洞修補\[137\]                                                                                                                                                                          |
| Java SE 7 Update 6\[138\]  | 2012-08-14 | [JavaFX](../Page/JavaFX.md "wikilink") 和 Java Access Bridge 被包含在 Java SE JDK 和 JRE 安裝裡面, JavaFX 支援觸控螢幕和觸控板, JavaFX 支援 Linux, JDK 和 JRE 支援 Mac OS X, JDK 在 ARM 上支援 Linux \[139\]           |
| Java SE 7 Update 7\[140\]  | 2012-08-30 | 4個安全漏洞修補\[141\]                                                                                                                                                                           |
| Java SE 7 Update 9\[142\]  | 2012-10-16 | 30個安全漏洞修補\[143\]                                                                                                                                                                          |
| Java SE 7 Update 10\[144\] | 2012-12-11 | 新的安全性功能，像是禁用任何Java應用程式在瀏覽器中運行的能力，以及當JRE處於不安全狀況時發出警告的新對話框，另外也有一些漏洞修復                                                                                                                       |
| Java SE 7 Update 11\[145\] | 2013-01-13 | [Olson Data](../Page/时区信息数据库.md "wikilink") 2012i；修復了在安裝了JavaFX的獨立版本的系統上插件註冊問題, CVE-2013-0422 的安全修復；\[146\] Java applet和Web啟動應用程式的預設安全級別已從「中」增加到「高」                                       |
| Java SE 7 Update 13\[147\] | 2013-02-01 | 50個安全漏洞修補                                                                                                                                                                                 |
| Java SE 7 Update 15\[148\] | 2013-02-19 | 5個安全漏洞修補                                                                                                                                                                                  |
| Java SE 7 Update 17\[149\] | 2013-03-04 | 2個安全漏洞修補                                                                                                                                                                                  |
| Java SE 7 Update 21\[150\] | 2013-04-16 | 許多的改變，包括 42 個安全漏洞修補, 新的不包含插件的伺服器JRE , 以及以 ARM 架構運行的Linux上的  JDK                                                                                                                           |
| Java SE 7 Update 25\[151\] | 2013-06-18 | 許多的改變，包括 40 個安全漏洞修補\[152\]                                                                                                                                                                |
| Java SE 7 Update 40\[153\] | 2013-09-10 | 621個漏洞修補；\[154\] 新的安全性功能, [hardfloat ARM](https://zh.wikipedia.org/wiki/ARM架構 "wikilink"), Java 任務控制（Java Mission Control） 5.2和[Retina Display支援](../Page/Retina显示屏.md "wikilink")\[155\] |
| Java SE 7 Update 45\[156\] | 2013-10-15 | 51個安全漏洞修補；\[157\] 防止Java應用程式在未經授權時的重新分發；恢復安全提示；JAXP變化；TimeZone.setDefault的更改                                                                                                              |
| Java SE 7 Update 51\[158\] | 2014-01-14 | 36 個安全漏洞修補； 封鎖沒有表明身分的JAVA小程式（如遠程控制台－Java Applet－IBM IMM卡、HP iLO卡），即使警告對話框中有「將在下一版本中被封鎖」，\[159\]\[160\] 17 個漏洞修補                                                                           |
| Java SE 7 Update 55\[161\] | 2014-04-15 | 37個安全漏洞修補；\[162\] 19個漏洞修補\[163\]                                                                                                                                                          |
| Java SE 7 Update 60\[164\] | 2014-05-28 | Java Mission Control 5.3\[165\]，130個漏洞修補\[166\]                                                                                                                                           |
| Java SE 7 Update 65\[167\] | 2014-07-15 | 18個漏洞修補\[168\]                                                                                                                                                                            |
| Java SE 7 Update 67\[169\] | 2014-08-04 | 1個漏洞修補\[170\]                                                                                                                                                                             |
| Java SE 7 Update 71\[171\] | 2014-10-14 | 16個漏洞修補\[172\]                                                                                                                                                                            |
| Java SE 7 Update 72\[173\] | 2014-10-14 | 與Update 71相同的釋出日期，作為Java SE 7的相對應補丁集更新（Patch Set Update，PSU）；\[174\] 36 個漏洞修補\[175\]                                                                                                      |
| Java SE 7 Update 75\[176\] | 2015-01-20 | 12個漏洞修補；\[177\] SSLv3預設為禁用                                                                                                                                                                |
| Java SE 7 Update 76\[178\] | 2015-01-20 | 與Update 75相同的釋出日期，作為Java SE 7的相對應補丁集更新（Patch Set Update，PSU）； 97個漏洞修補\[179\]                                                                                                              |
| Java SE 7 Update 79\[180\] | 2015-04-14 | 21個安全漏洞修補；6個漏洞修補\[181\]                                                                                                                                                                   |
| Java SE 7 Update 80\[182\] | 2015-04-14 | Java 7的最後一個公開版本；與Update 79相同的發布日期，作為Java SE 7的相對應補丁集更新（Patch Set Update，PSU）；104個漏洞修補\[183\]                                                                                              |
| Java SE 7 Update 85        | 2015-07-15 | 不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；25個安全漏洞修補                                                                                                                  |
| Java SE 7 Update 91        | 2015-10-20 | 不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；20個安全漏洞修補                                                                                                                  |
| Java SE 7 Update 95        | 2016-01-19 | 不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；8個安全漏洞修補\[184\]                                                                                                            |
| Java SE 7 Update 97        | 2016-02-05 | 不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；1個安全漏洞修補\[185\]                                                                                                            |
| Java SE 7 Update 99        | 2016-03-23 | 不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；1個安全漏洞修補\[186\]                                                                                                            |
| Java SE 7 Update 101       | 2016-04-18 | 不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；9個安全漏洞修補                                                                                                                   |
| Java SE 7 Update 111       | 2016-07-19 | 不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；36個安全漏洞修補                                                                                                                  |
| Java SE 7 Update 121       | 2016-10-18 | 不公開，只能透過Java SE支援計劃和Solaris 10的Recommended Patchset Cluster 提供；32個安全漏洞修補                                                                                                                  |

##  Java SE 8

Java 8 於2014年3月18日釋出，\[187\]\[188\] 包含了一些原本被計畫在 Java 7卻延遲的功能。\[189\]

这些功能改进在 JDK Enhancement Proposals (JEPs) 的指导下得到了整合。\[190\]

  - JSR 335，JEP 126：Lambda專案\[191\]中提供的語言级[匿名函数](../Page/匿名函数.md "wikilink")支持（官方称为 lambda 表达式，非官方亦称[闭包](../Page/闭包_\(计算机科学\).md "wikilink")）；添加預設方法（虛擬擴充元件方法）\[192\]\[193\]\[194\] ，以允許在不破坏兼容性的情况下向现有接口中新增方法。Java社群中曾经有过针对是否要加入 lambda 表达式支援的辯論。稍后Sun公司宣布 lambda 表达式將會包含在Java中，并請社群協助改善该特性。支援lambda表达式使得针对流中元素的函数式操作成为可能，由此可以实现由 MapReduce 啟發的函数式集合操作。預設方法允許API作者添加新的方法到现有介面上，而不會破壞舊的程式碼中。預設方法還使得多重繼承的行為 （不是狀態）成为可能，但默认方法的设计意图并非在此。
  - JSR 223，JEP 174：Nashorn專案，一個 JavaScript 運行时，它允許開發人員在應用程式中嵌入 JavaScript 程式碼 
  - JSR 308，JEP 104：在 Java 型別上的註解\[195\]
  - 无符號整數算術\[196\]
  - JSR 337，JEP 120：重複註解\[197\]
  - JSR 310，JEP 150：日期和時間 API\[198\]
  - JEP 178：靜態連結 JNI 程式庫\[199\]
  - JEP 153：执行 [JavaFX](../Page/JavaFX.md "wikilink") 應用程式（直接执行 JavaFX 的應用程式的 JAR 包）\[200\]
  - JEP 122：移除了虚拟机内存管理中的永久世代\[201\]

Java 8 不再支援 [Windows XP](../Page/Windows_XP.md "wikilink")\[202\] ，但JDK 8 第 25 版更新仍然可以在 Windows XP安裝和運行。\[203\] 先前JDK 8的更新版本可以在XP中運行，但必须通过强制解压安装程序来进行安装。

2014年10月后，Java 8 成为官方網站上預設的下載版本。\[204\]

### Java 8 更新

| 版本                          | 釋出日期       | 重點                                                                                                                                                 |
| --------------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| Java SE 8                   | 2014-03-18 | 初始版本                                                                                                                                               |
| Java SE 8 Update 5\[205\]   | 2014-04-15 | 使用「\*」在 `Caller-Allowable-Codebase` 屬性中; 11個漏洞的修補                                                                                                  |
| Java SE 8 Update 11\[206\]  | 2014-07-15 | Java 依賴性分析工具（Java Dependency Analysis Tool）; Java 控制台選項以禁用贊助者; JAR 檔案屬性 – Entry-Point; JAXP 處理限制屬性 – maxElementDepth; 18 個安全性漏洞修補,\[207\] 15 個漏洞修補 |
| Java SE 8 Update 20\[208\]  | 2014-08-19 | 669 個漏洞修補，\[209\] JMC 5.4, 字串重複數據刪除（預設為不啟用）                                                                                                        |
| Java SE 8 Update 25\[210\]  | 2014-10-14 | 10 個漏洞修補                                                                                                                                           |
| Java SE 8 Update 31\[211\]  | 2015-01-19 | 26 個漏洞修補; SSLv3 (預設為禁用)                                                                                                                            |
| Java SE 8 Update 40\[212\]  | 2015-03-03 | 645 個漏洞修補,\[213\] 加入「記憶體壓力」的概念來協助指出有多少的系統記憶體還能夠使用(低壓 = 高記憶體, 高壓 = 低記憶體)                                                                            |
| Java SE 8 Update 45\[214\]  | 2015-04-14 | 13 個漏洞修補                                                                                                                                           |
| Java SE 8 Update 51\[215\]  | 2015-07-14 | 增加對WIndows平台的原生沙盒的支援（預設為禁用）; 另外還有 25 個安全性修補,14 個漏洞修補                                                                                               |
| Java SE 8 Update 60\[216\]  | 2015-08-18 | 480 個漏洞修補\[217\]                                                                                                                                   |
| Java SE 8 Update 65\[218\]  | 2015-10-20 | 25 個安全性修補, 3 個漏洞修補                                                                                                                                 |
| Java SE 8 Update 66\[219\]  | 2015-11-16 | 15 個漏洞修補                                                                                                                                           |
| Java SE 8 Update 71\[220\]  | 2016-01-19 | 8 個安全性修補, 5 個漏洞修補\[221\]                                                                                                                           |
| Java SE 8 Update 72         | 2016-01-19 | 8 個安全性修補, 5 個漏洞修補, 許多的增強                                                                                                                           |
| Java SE 8 Update 73\[222\]  | 2016-02-03 | 1 個安全性修補                                                                                                                                           |
| Java SE 8 Update 74\[223\]  | 2016-02-03 | 1 個安全性修補                                                                                                                                           |
| Java SE 8 Update 77\[224\]  | 2016-03-23 | 1 個安全性修補                                                                                                                                           |
| Java SE 8 Update 91\[225\]  | 2016-04-19 | 9 個安全性修補, 4 個漏洞修補和增強                                                                                                                               |
| Java SE 8 Update 92\[226\]  | 2016-04-19 | 來自8u91的安全性和漏洞修補, 再加上 76 個額外的漏洞消補; 推出 `ExitOnOutOfMemoryError` 和`CrashOnOutOfMemoryError` 標籤                                                        |
| Java SE 8 Update 101\[227\] | 2016-07-19 | 來自8u92的安全性和漏洞修補, 再加上 9個額外的漏洞消補                                                                                                                     |
| Java SE 8 Update 102\[228\] | 2016-07-19 | 來自8u101的安全性和漏洞修補, 再加上 118 個額外的漏洞消補                                                                                                                 |
| Java SE 8 Update 111\[229\] | 2016-10-18 | 安全性修補和 9 個漏洞修補                                                                                                                                     |
| Java SE 8 Update 112\[230\] | 2016-10-18 | 新增功能和139個漏洞修補在8u111                                                                                                                                |

## Java SE 9

在2011年的JavaOne中，Oracle討論了一些他們希望在2016年于Java 9中发布的功能。\[231\]Java 9 应当对千兆级堆拥有更好的支持，同时能够更好地集成本机代码，且拥有新的垃圾收集器G1和能够自我调节的JVM。\[232\]2016年初，Java 9 的发布被重新定为2017年3月；2017年3月时，发布日期又被拖延至2017年7月；\[233\]后来又因Java执行委员会对Jigsaw项目实现的分歧而最终定为2017年9月21日，在此期间Oracle回应了部分疑问，并对一些重要的技术问题进行了修正。在2017年6月的最后几天，JCP对拟议的模块系统方案达成了共识。

  - JSR 376：在Jigsaw專案中將JDK模組化（参见[Java平台模块系统条目](https://zh.wikipedia.org/wiki/Java平台模块系统 "wikilink")）\[234\]\[235\]\[236\]
  - JEP 222：jshell：Java Shell（一個 Java [交互式顶层构件](../Page/读取﹣求值﹣输出循环.md "wikilink")）\[237\]\[238\]
  - JEP 295：AOT编译（通过 Graal VM 实现）\[239\]
  - JEP 268：XML Catalogs\[240\]
  - JEP 266：更多的併發更新。\[241\]包含响应式流的Java实现，及其部分替代品`java.util.concurrent.Flow`。
  - JEP 193：变量句柄：定义一个标准方法来调用`java.util.concurrent.atomic`和`sun.misc.Unsafe`操作的等价物。
  - JEP 282：jlink：Java链接器。该工具可以为模块生成一个包含了其所有依赖项的自定义运行时映像，同时允许生成一个包括运行它的JVM的可执行文件，。
  - JavaDB被移出JDK
  - JEP 263：高[DPI图像](../Page/每英寸像素.md "wikilink")：自动缩放与尺寸自适应。

Java 9 的首个发布候选版于2017年8月9日发布，首个稳定版于2017年9月21日发布。

### Java 9 更新

| 版本            | 发布日期       | 亮点                       |
| ------------- | ---------- | ------------------------ |
| Java SE 9     | 2017-09-21 | 初版                       |
| Java SE 9.0.1 | 2017-10-17 | 安全更新与严重bug修复             |
| Java SE 9.0.4 | 2018-01-16 | JDK 9 的最终版本。安全更新与严重bug修复 |

## Java SE 10

OpenJDK 10 于2018年3月20日发布。此次更新包含以下12个新特性：

  - JEP 286：局部变量类型推断
  - JEP 317：实验性的基于Java的JIT编译器。这是 Linux x64 下 Graal 动态编译器的集成。
  - JEP 310：应用程序类级别数据共享
  - JEP 322：基于时间的版本命名
  - JEP 307：适用于G1的多线程完全垃圾回收
  - JEP 304：垃圾回收器接口
  - JEP 314：更多的Unicode语言标签扩展
  - JEP 319：内置根证书
  - JEP 312：线程本地握手
  - JEP 316：在可选的内存设备上申请堆内存空间
  - JEP 313：删除本地代码头文件生成器javah
  - JEP 296：将所有JDK分支整合到同一个版本库中

### Java 10 更新

| 版本             | 发布日期       | 亮点           |
| -------------- | ---------- | ------------ |
| Java SE 10     | 2018-03-20 | 初版           |
| Java SE 10.0.1 | 2018-04-17 | 安全更新及五个bug修复 |
| Java SE 10.0.2 | 2018-07-17 |              |

## Java SE 11

JDK 11于2018年9月25日发布\[242\]。Java 11 包含如下更新：

  - JEP 309：动态类文件常量
  - JEP 318：Epsilon：无操作垃圾收集器
  - JEP 323：lambda参数的局部变量语法
  - JEP 331：低开销堆分析
  - JEP 321：HTTP Client
  - JEP 332：支持 TLS 1.3
  - JEP 328：添加Java飞行记录器（JFR），其用于创建性能分析记录
  - JEP 333：添加ZGC（一个可扩展的低延迟垃圾收集器）
  - JavaFX、Java EE、CORBA 被移出 JDK
  - JEP 335：弃用 Nashorn JavaScript 引擎

### Java 11 更新

| 版本                    | 釋出日期       | 重點         |
| --------------------- | ---------- | ---------- |
| Java SE 11\[243\]     | 2018-09-25 | 初始版本       |
| Java SE 11.0.1\[244\] | 2018-10-16 | 安全性修補和漏洞修補 |
| Java SE 11.0.2\[245\] | 2019-01-15 | 安全更新与bug修正 |

## Java SE 12

JDK 12 于2019年3月19日发布。该版本包含较多新特性，例如：

  - JEP 189：Shenandoah：一个实验性的低延迟垃圾收集器\[246\]
  - JEP 230：细粒度性能评审套件\[247\]
  - JEP 325：Switch 表达式（预览阶段）\[248\]
  - JEP 334：JVM Constants API\[249\]
  - JEP 340：仅保留一个 AArch64 平台的移植\[250\]
  - JEP 341：默认类数据共享归档\[251\]
  - JEP 344：针对G1，提供可中止的混合垃圾收集\[252\]
  - JEP 346：针对G1，及时释放已申请但未使用的内存\[253\]

## 實作

[OpenJDK](../Page/OpenJDK.md "wikilink") 是一個[自由開放源始碼軟體實作在](../Page/自由及开放源代码软件.md "wikilink")[Java Platform, Standard Edition (Java SE)](https://zh.wikipedia.org/wiki/Java_SE "wikilink")。

在OpenJDK之前，許多各式各樣不同的公司和組織推出好幾個免費的Java實作。其中一個例子是Apache Harmony。 IBM也有提供Java實作，而RedHat則是通過IcedTea專案提供它：一個用於OpenJDK的架構和整合專案。

## 參考文獻

## 外部連結

  - [官方 Java SE 下載](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
  - [Java早期版本](http://www.agocg.ac.uk/brief/java.htm)
  - [Full list of changes for J2SE 1.3](https://web.archive.org/web/20110318063805/http://download.oracle.com/javase/1.3/docs/relnotes/features.html)
  - [Full list of changes for J2SE 1.4](https://web.archive.org/web/20110317073530/http://download.oracle.com/javase/1.4.2/docs/relnotes/features.html)
  - [Full list of changes for J2SE 5.0](http://download.oracle.com/javase/1.5.0/docs/relnotes/features.html)
  - [Java SE 7 release notes](http://www.oracle.com/technetwork/java/javase/jdk7-relnotes-429209.html)
  - [Sun Java Supported versions and EOL](http://www.oracle.com/technetwork/java/eol-135779.html)
  - [下載Java舊版本的封存檔](http://www.oracle.com/technetwork/java/archive-139210.html)

[Category:軟體史](https://zh.wikipedia.org/wiki/Category:軟體史 "wikilink") [Category:Java平台](https://zh.wikipedia.org/wiki/Category:Java平台 "wikilink") [Category:軟體版本列表](https://zh.wikipedia.org/wiki/Category:軟體版本列表 "wikilink")

1.
2.
3.  [Oracle Java SE Support Roadmap](http://www.oracle.com/technetwork/java/eol-135779.html)
4.
5.
6.  [Version 1.1 press release](https://web.archive.org/web/20080210044125/http://www.sun.com/smi/Press/sunflash/1997-02/sunflash.970219.0001.xml), Sun.
7.  [Taligent prepares internationalisation technology for the big time](http://www.computerworld.co.nz/article/518735/taligent_prepares_internationalisation_technology_big_time/)
8.  [Version 1.2 press release](https://web.archive.org/web/20070816170028/http://www.sun.com/smi/Press/sunflash/1998-12/sunflash.981208.9.xml), Sun.
9.  [Version 1.3 press release](https://web.archive.org/web/20070817053430/http://www.sun.com/smi/Press/sunflash/2000-05/sunflash.20000508.3.xml), Sun.
10. [Version 1.3 full list of changes](http://java.sun.com/j2se/1.3/docs/relnotes/features.html) , Sun.
11. [Version 1.4 press release](https://web.archive.org/web/20070815095726/http://www.sun.com/smi/Press/sunflash/2002-02/sunflash.20020206.5.xml).
12. [Version full 1.4 list of changes](http://java.sun.com/j2se/1.4.2/docs/relnotes/features.html) .
13.
14. [Oracle Java SE Support Roadmap](http://www.oracle.com/technetwork/java/eol-135779.html)
15. [Version 1.5 press release](https://web.archive.org/web/20080207083457/http://www.sun.com/smi/Press/sunflash/2004-09/sunflash.20040930.1.xml).
16. [Version 1.5 full list of changes](http://java.sun.com/j2se/1.5/docs/relnotes/features.html).
17.
18.
19.
20.
21. [Java brand naming](http://www.java.com/en/about/brand/naming.jsp).
22. [Version 6](http://java.sun.com/javase/6/webnotes/version-6.html), Java webnotes, Sun.
23. [Version 1.6 press release](http://www.sun.com/smi/Press/sunflash/2006-12/sunflash.20061211.1.xml).
24. [Version 1.6 full list of changes](http://java.sun.com/javase/6/features.jsp).
25. [Java Lobby](http://www.javalobby.org/java/forums/t66270.html).
26. [Mustang's HotSpot](http://weblogs.java.net/blog/opinali/archive/2005/11/mustangs_hotspo.html) , Sun weblogs.
27.
28.
29.
30.
31.
32.
33. <https://java.com/en/download/faq/java_7.xml>
34.
35. [Java SE 6 Update 10 Overview](http://java.sun.com/developer/technicalArticles/javase/java6u10/index.html)
36. [Java Deployment Toolkit](http://java.sun.com/javase/downloads/ea/6u10/deploymentToolkit.jsp)
37. [Version Download and Pack200 Support](http://java.sun.com/javase/downloads/ea/6u10/newJavaSystemProperties.jsp)
38. [Nimbus](https://nimbus.dev.java.net/)
39. [Release Notes for the Next-Generation Java Plug-In Technology](http://java.sun.com/javase/downloads/ea/6u10/plugin2/index.jsp)
40.
41. [Update Release Notes, Changes in 1.6.0_11](http://www.oracle.com/technetwork/java/javase/6u11-139394.html)
42.
43.
44.
45.
46.
47.
48.
49.
50.
51.
52.
53.
54.
55.
56.
57.
58.
59.
60.
61.
62. [Oracle Java SE Critical Patch Update Advisory – June 2011](http://www.oracle.com/technetwork/topics/security/javacpujune2011-313339.html)
63.
64.
65. [Oracle Java SE Critical Patch Update Advisory – October 2011](http://www.oracle.com/technetwork/topics/security/javacpuoct2011-443431.html)
66.
67.
68.
69.
70.
71.
72.
73.
74.
75. [Java SE Development Kit 6 Update 38 Bug Fixes](http://www.oracle.com/technetwork/java/javase/2col/6u38-bugfixes-1880999.html), Oracle.com
76.
77.
78.
79.
80. [Oracle Java SE Critical Patch Update Advisory – April 2013](http://www.oracle.com/technetwork/topics/security/javacpuapr2013-1928497.html)
81. <http://java.com/en/download/faq/why_upgrade.xml>
82.
83. [Oracle Java SE Critical Patch Update Advisory – June 2013](http://www.oracle.com/technetwork/topics/security/javacpujun2013-1899847.html)
84.
85. [Oracle Critical Patch Update Advisory – October 2013](http://www.oracle.com/technetwork/topics/security/cpuoct2013-1899837.html)
86.
87.
88.
89. [Oracle Critical Patch Update Advisory – April 2014](http://www.oracle.com/technetwork/topics/security/cpuapr2014-1972952.html)
90.
91. [Oracle Critical Patch Update Advisory – July 2014](http://www.oracle.com/technetwork/topics/security/cpujul2014-1972956.html)
92.
93. [Oracle Critical Patch Update Advisory – October 2014](http://www.oracle.com/technetwork/topics/security/cpuoct2014-1972960.html)
94.
95.
96. [Oracle Critical Patch Update Advisory – January 2015](http://www.oracle.com/technetwork/topics/security/cpujan2015-1972971.html)
97. [Oracle Critical Patch Update Advisory – April 2015](http://www.oracle.com/technetwork/topics/security/cpuapr2015-2365600.html)
98. [Oracle Critical Patch Update Advisory – July 2015](http://www.oracle.com/technetwork/topics/security/cpujul2015-2367936.html#AppendixJAVA)
99. [Oracle Critical Patch Update Advisory - October 2015](http://www.oracle.com/technetwork/topics/security/cpuoct2015-2367953.html#AppendixJAVA)
100.
101.
102.
103.
104.
105. [JDK7](http://jdk7.java.net/), Sun.
106.
107.
108. [JDK 7 at OpenJDK](http://openjdk.java.net/projects/jdk7/)
109.
110.
111.
112.
113.
114.
115.
116.
117.
118.
119.
120.
121.
122.
123.
124.
125. <https://blogs.oracle.com/java-platform-group/entry/introducing_deployment_rule_sets>
126.
127.
128.
129. [Critical Patch Update table shows four dates per year](http://www.oracle.com/technetwork/topics/security/alerts-086861.html)
130. [Java SE 7 Release Notes](http://www.oracle.com/technetwork/java/javase/jdk7-relnotes-429209.html)
131. [Update Release Notes, Java SE 7 Update 1](http://www.oracle.com/technetwork/java/javase/7u1-relnotes-507962.html)
132. [Update Release Notes, Java SE 7 Update 2](http://www.oracle.com/technetwork/java/javase/7u2-relnotes-1394228.html)
133. [Update Release Notes, Java SE 7 Update 3](http://www.oracle.com/technetwork/java/javase/7u3-relnotes-1481928.html)
134. [Oracle Java SE Critical Patch Update Advisory – February 2012](http://www.oracle.com/technetwork/topics/security/javacpufeb2012-366318.html)
135. [Update Release Notes, Java SE 7 Update 4](http://www.oracle.com/technetwork/java/javase/7u4-relnotes-1575007.html)
136. [Update Release Notes, Java SE 7 Update 5](http://www.oracle.com/technetwork/java/javase/7u5-relnotes-1653274.html)
137. [Oracle Java SE Critical Patch Update Advisory – June 2012](http://www.oracle.com/technetwork/topics/security/javacpujun2012-1515912.html)
138. [Update Release Notes, Java SE 7 Update 6](http://www.oracle.com/technetwork/java/javase/7u6-relnotes-1729681.html)
139. [Java SE 7 Update 6 Released](https://blogs.oracle.com/java/entry/oracle_releases_java_se_7)
140. [Update Release Notes, Java SE 7 Update 7](http://www.oracle.com/technetwork/java/javase/7u7-relnotes-1835816.html)
141.
142. [Update Release Notes, Java SE 7 Update 9](http://www.oracle.com/technetwork/java/javase/7u9-relnotes-1863279.html)
143. [Java SE 7 Update 9 Released](http://www.oracle.com/technetwork/topics/security/javacpuoct2012-1515924.html)
144. [Update Release Notes, Java SE 7 Update 10](http://www.oracle.com/technetwork/java/javase/7u10-relnotes-1880995.html)
145. [Update Release Notes, Java SE 7 Update 11](http://www.oracle.com/technetwork/java/javase/7u11-relnotes-1896856.html)
146.
147. [Oracle Java SE Critical Patch Update Advisory – February 2013](http://www.oracle.com/technetwork/topics/security/javacpufeb2013-1841061.html)
148. [Oracle Java SE 7 U15 Release Notes](http://www.oracle.com/technetwork/java/javase/7u15-relnotes-1907738.html)
149. [Oracle Java SE 7 U17 Release Notes](http://www.oracle.com/technetwork/java/javase/7u17-relnotes-1915289.html)
150. [Oracle Java SE 7 U21 Release Notes](http://www.oracle.com/technetwork/java/javase/7u21-relnotes-1932873.html)
151. [Oracle Java SE 7 U25 Release Notes](http://www.oracle.com/technetwork/java/javase/7u25-relnotes-1955741.html)
152. [Oracle releases fixes for 40 Java holes](http://www.h-online.com/security/news/item/Oracle-releases-fixes-for-40-Java-holes-1892400.html)
153. [Oracle Java SE 7 U40 Release Notes](http://www.oracle.com/technetwork/java/javase/7u40-relnotes-2004172.html)
154. [Java™ SE Development Kit 7 Update 40 Bug Fixes](http://www.oracle.com/technetwork/java/javase/2col/7u40-bugfixes-2007733.html)
155. [Oracle JDK 7u40 released – security features, hardfloat ARM, Java Mission Control and more](https://blogs.oracle.com/henrik/entry/oracle_jdk_7u40_released_security)
156. [Java SE Development Kit 7, Update 45 – Update Release Notes](http://www.oracle.com/technetwork/java/javase/7u45-relnotes-2016950.html)
157. [Oct 2013 CPU](http://www.oracle.com/technetwork/topics/security/cpuoct2013-1899837.html#AppendixJAVA)
158. [Java™ SE Development Kit 7 Update 51 Release Notes](http://www.oracle.com/technetwork/java/javase/7u51-relnotes-2085002.html)
159. [Oracle to patch Java, other products Tuesday](http://www.zdnet.com/oracle-to-patch-java-other-products-tuesday-7000025023/), \[//en.wikipedia.org/wiki/ZDNet ZDNet\],
160. [Oracle Critical Patch Update Advisory – January 2014](http://www.oracle.com/technetwork/topics/security/cpujan2014-1972949.html#AppendixJAVA)
161. [Java™ SE Development Kit 7 Update 55 Release Notes](http://www.oracle.com/technetwork/java/javase/7u55-relnotes-2177812.html)
162. [Oracle Critical Patch Update Advisory – April 2014](http://www.oracle.com/technetwork/topics/security/cpuapr2014-1972952.html#AppendixJAVA)
163. [Java™ SE Development Kit 7 Update 55 Bug Fixes](http://www.oracle.com/technetwork/java/javase/2col/7u55-bugfixes-2180733.html)
164. [Java™ SE Development Kit 7 Update 60 Release Notes](http://www.oracle.com/technetwork/java/javase/7u60-relnotes-2200106.html)
165. [Java Mission Control 5.3 Release Notes](http://www.oracle.com/technetwork/java/javase/jmc53-release-notes-2157171.html)
166. [Java™ SE Development Kit 7 Update 60 Bug Fixes](http://www.oracle.com/technetwork/java/javase/2col/7u60-bugfixes-2202029.html)
167. [Java™ SE Development Kit 7 Update 65 Release Notes](http://www.oracle.com/technetwork/java/javase/7u65-relnotes-2229169.html)
168. [Java™ SE Development Kit 7 Update 65 Bug Fixes](http://www.oracle.com/technetwork/java/javase/2col/7u65-bugfixes-2229174.html)
169. [Java™ SE Development Kit 7 Update 67 Release Notes](http://www.oracle.com/technetwork/java/javase/7u67-relnotes-2251330.html)
170. [Java™ SE Development Kit 7 Update 67 Bug Fixes](http://www.oracle.com/technetwork/java/javase/7u67-relnotes-2251330.html)
171. [Java™ SE Development Kit 7 Update 71 Release Notes](http://www.oracle.com/technetwork/java/javase/7u71-relnotes-2296187.html)
172. [Java™ SE Development Kit 7 Update 71 Bug Fixes](http://www.oracle.com/technetwork/java/javase/2col/7u71-bugfixes-2298226.html)
173. [Java™ SE Development Kit 7 Update 72 Release Notes](http://www.oracle.com/technetwork/java/javase/7u72-relnotes-2296190.html)
174. [Java CPU and PSU Releases Explained](http://www.oracle.com/technetwork/java/javase/downloads/cpu-psu-explained-2331472.html)
175. [Java™ SE Development Kit 7 Update 72 Bug Fixes](http://www.oracle.com/technetwork/java/javase/2col/7u72-bugfixes-2298229.html)
176. [Java™ SE Development Kit 7 Update 75 Release Notes](http://www.oracle.com/technetwork/java/javase/7u75-relnotes-2389086.html)
177. [Java™ SE Development Kit 7 Update 75 Bug Fixes](http://www.oracle.com/technetwork/java/javase/2col/7u75-bugfixes-2389097.html)
178. [Java™ SE Development Kit 7 Update 76 Release Notes](http://www.oracle.com/technetwork/java/javase/7u76-relnotes-2389087.html)
179. [Java™ SE Development Kit 7 Update 76 Bug Fixes](http://www.oracle.com/technetwork/java/javase/2col/7u76-bugfixes-2389098.html)
180. [Java™ SE Development Kit 7 Update 79 Release Notes](http://www.oracle.com/technetwork/java/javase/7u79-relnotes-2494161.html)
181. [Java™ SE Development Kit 7 Update 79 Bug Fixes](http://www.oracle.com/technetwork/java/javase/2col/7u79-bugfixes-2494165.html)
182. [Java™ SE Development Kit 7 Update 80 Release Notes](http://www.oracle.com/technetwork/java/javase/7u80-relnotes-2494162.html)
183. [Java™ SE Development Kit 7 Update 80 Bug Fixes](http://www.oracle.com/technetwork/java/javase/2col/7u80-bugfixes-2494167.html)
184.
185.
186.
187.
188.
189.
190.
191.
192.
193.
194.
195. <http://openjdk.java.net/jeps/104>
196. <https://blogs.oracle.com/darcy/entry/unsigned_api>
197. <http://openjdk.java.net/jeps/120>
198. <http://openjdk.java.net/jeps/150>
199. <http://openjdk.java.net/jeps/178>
200. <http://openjdk.java.net/jeps/153>
201. <http://openjdk.java.net/jeps/122>
202.
203.
204. Blog By Tori Wieldt-Oracle on Oct 27, 2014
205.
206.
207.
208.
209. [Java™ SE Development Kit 8 Update 20 Bug Fixes](http://www.oracle.com/technetwork/java/javase/2col/8u20-bugfixes-2257730.html)
210.
211.
212.
213. [Java™ SE Development Kit 8 Update 40 Bug Fixes](http://www.oracle.com/technetwork/java/javase/2col/8u40-bugfixes-2423829.html)
214.
215.
216.
217. [Java™ SE Development Kit 8 Update 60 Bug Fixes](http://www.oracle.com/technetwork/java/javase/2col/8u60-bugfixes-2620228.html)
218.
219.
220.
221.
222.
223.
224.
225.
226.
227.
228.
229.
230.
231.
232.
233.
234.
235.
236.
237.
238.
239.
240.
241.
242. [Java Countdown](http://www.java-countdown.xyz/), Countdown to Java 11 Release Date
243.
244.
245.
246.
247.
248.
249.
250.
251.
252.
253.