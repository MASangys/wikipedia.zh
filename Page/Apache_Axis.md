> 本文内容由[Apache Axis](https://zh.wikipedia.org/wiki/Apache_Axis)转换而来。


**阿帕奇 Axis** 是一個開源、建基於XML的Web服務架構。它包含了Java和C++語言實現的SOAP伺服器，以及各種公用服務及[API以生成和部署Web服務應用](https://zh.wikipedia.org/wiki/API "wikilink")。用阿帕奇Axis開發者能夠創造可互操作的，分佈式的計算應用。Axis由Apache軟件基金會主持下制訂的。

## Axis Java

當利用Java版Axis有兩個途徑，以Java碼作為Web服務。最簡單的一種是使用原生的jws（Java Web Service的文件）。另一種方法是使用定制的部署文件。定制部署讓您能自選資源，什麼要予以曝光。

參見Apache [AXIS2](https://zh.wikipedia.org/wiki/AXIS2 "wikilink")。

### JWS Webservice 創作

jws文件包含Java類的源代碼要予以作為Web Service。一個普通的Java文件與jws文件主要區別是擴展名。另一個區別是，jws檔案部署源代碼，而不是編譯的類文件。

下面的例子是取自 <http://ws.apache.org/axis/java/user-guide.html#PublishingWebServicesWithAxis>. 它將揭露方法加減類計算器。

``` java
 public class Calculator {
   public int add(int i1, int i2) {
     return i1 + i2;
   }

   public int subtract(int i1, int i2) {
     return i1 - i2;
   }
 }
```

#### JWS webservice 的部署

一個 Axis Servlet的部署，你只需要拷貝jws檔案 到伺服器的 Axis 目錄。如果你使用的是Apache 的container 如[tomcat](https://zh.wikipedia.org/wiki/tomcat "wikilink")。

#### JWS webservice 進入

進入jws Web Service是方便使用的URL"<http://localhost:8080/axis/Calculator.jws>". 如果您正在運行一個定制配置踞是[tomcat或者不同的容器中](https://zh.wikipedia.org/wiki/tomcat "wikilink")，URL中可能會不同。

## 相關技術

  - [Apache Axis2](../Page/Apache_Axis2.md "wikilink") - 重寫及重新設計的 Axis
  - [Java的Web服務開發套件](https://zh.wikipedia.org/wiki/Java的Web服務開發套件 "wikilink") - Java的Web服務開發套件
  - [XML界面，對網絡服務](https://zh.wikipedia.org/wiki/XML界面，對網絡服務 "wikilink") - RPC/web services 技術架構
  - [Web服務調用框架](https://zh.wikipedia.org/wiki/Web服務調用框架 "wikilink") - JavaAPI引用Web服務

## 外部链接

  - [Apache AXIS Homepage](http://ws.apache.org/axis/) 在Apache軟件基金會
  - [Apache AXIS C++ Homepage](http://ws.apache.org/axis/cpp/) 在Apache軟件基金會
  - [1](http://ws.apache.org/axis/cpp/arch/End-2-End-Sample.html) Axis-C++ 語言補習班於Apache軟件基金會
  - [Apache Axis2/Java](http://ws.apache.org/axis2/) 在Apache軟件基金會
  - [Apache Axis2/C](http://ws.apache.org/axis2/c/)在Apache軟件基金會

[Category:Apache軟件基金會](https://zh.wikipedia.org/wiki/Category:Apache軟件基金會 "wikilink") [Category:Web服務](https://zh.wikipedia.org/wiki/Category:Web服務 "wikilink")