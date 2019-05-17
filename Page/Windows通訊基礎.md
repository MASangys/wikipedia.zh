**Windows通訊基礎**（）是由微軟發展的一組資料通訊的應用程式開發介面，它是[.NET框架的一部分](../Page/.NET框架.md "wikilink")，由.NET
Framework 3.0开始引入，與[Windows Presentation
Foundation及](../Page/Windows_Presentation_Foundation.md "wikilink")
[Windows Workflow
Foundation並列為新一代Windows作業系統以及WinFX的三個重大應用程式開發類別庫](../Page/Windows_Workflow_Foundation.md "wikilink")。

在.NET Framework 2.0以及前版本中，微軟發展了Web Service（SOAP with HTTP
communication），.NET Remoting（TCP/HTTP/Pipeline
communication）以及基礎的Winsock等通訊支援，由於各個通訊方法的設計方法不同，而且彼此之間也有相互的重疊性（例如.NET
Remoting可以開發SOAP,
HTTP通訊），對於開發人員來說，不同的選擇會有不同的程式設計模型，而且必須要重新學習，讓開發人員在使用时有許多不便。同時，**[服務導向架構](https://zh.wikipedia.org/wiki/服務導向架構 "wikilink")**（Service-Oriented
Architecture）也開始盛行於軟體工業中，因此微軟重新檢視了這些通訊方法，並設計了一個統一的程式開發模型，對於資料通訊提供了最基本最有彈性的支援，這就是Windows
Communication Foundation。

## 概念

WCF由於集合了幾乎由.NET
Framework所提供的通訊方法，因此學習曲線比較陡峭，開發人員必須要針對各個部份的內涵做深入的了解，才能夠操控WCF來開發應用程式。

  - 通訊雙方的溝通方式，由**合約 (Contract)**來訂定。
  - 通訊雙方所遵循的通訊方法 (communication protocol)，由**協定繫結 (Binding)**來訂定。
  - 通訊期間的安全性，由雙方約定的**安全性層次**來訂定。

### 合約（Contract）

WCF的基本概念是以[合約](https://zh.wikipedia.org/wiki/合約 "wikilink")（Contract）來定義雙方溝通的協定，合約必須要以[介面的方式來呈現](https://zh.wikipedia.org/wiki/介面 "wikilink")，而實際的服務程式碼必須要由這些合約介面衍生並實作。合約分成了四種：

1.  資料合約（Data Contract），訂定雙方溝通時的資料格式。
2.  服務合約（Service Contract），訂定服務的定義。
3.  營運合約（Operation Contract），訂定服務提供的方法。
4.  訊息合約（Message Contract），訂定在通訊期間覆寫訊息內容的規範。

一個WCF中的合約，就如同下列程式碼所示：

``` csharp
using System;
using System.ServiceModel;
namespace Microsoft.ServiceModel.Samples
{
  [ServiceContract(Namespace = "http://Microsoft.ServiceModel.Samples")] // 服務合約
  public interface ICalculator
  {
    [OperationContract] // 營運合約
    double Add（double n1, double n2）;
    [OperationContract] // 營運合約
    double Subtract（double n1, double n2）;
    [OperationContract] // 營運合約
    double Multiply（double n1, double n2）;
    [OperationContract] // 營運合約
    double Divide（double n1, double n2）;
  }
}
```

### 協定繫結（Binding）

由於WCF支援了[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")，[TCP](https://zh.wikipedia.org/wiki/TCP "wikilink")，[Named
Pipe](https://zh.wikipedia.org/wiki/Named_Pipe "wikilink")，[MSMQ](https://zh.wikipedia.org/wiki/MSMQ "wikilink")，Peer-To-Peer
TCP等協定，而HTTP又分為基本HTTP支援（BasicHttpBinding）以及WS-HTTP支援（WsHttpBinding），而TCP亦支援NetTcpBinding，NetPeerTcpBinding等通訊方式，因此，雙方必須要統一通訊的協定，並且也要在編碼以及格式上要有所一致。

一個設定通訊協定繫結的範例如下：

``` xml
<?xml version="1.0" encoding="utf-8" ?>
<configuration>
  <system.serviceModel>
    <!-- 設定服務繫結的資訊 -->
    <services>
      <service name=" CalculatorService" >
        <endpoint address="" binding="wsHttpBinding" bindingConfiguration="Binding1"
            contract="ICalculator" />
      </service>
    </services>
    <!-- 設定通訊協定繫結的資訊 -->
    <bindings>
      <wsHttpBinding>
        <binding name="Binding1">
        </binding>
      </wsHttpBinding>
   </bindings>
  </system.serviceModel>
</configuration>
```

雖然WCF也可以使用[SOAP做通訊格式](https://zh.wikipedia.org/wiki/SOAP "wikilink")，但它和以往的[ASP.NET](../Page/ASP.NET.md "wikilink")
[XML Web
Services不同](https://zh.wikipedia.org/wiki/XML_Web_Services "wikilink")，因此有部份技術文章中，會將ASP.NET的XML
Web Services稱為**ASMX Service**。

WCF的服務可以掛載於Console Application，Windows
Application，IIS（ASP.NET）Application，[Windows
Service以及](https://zh.wikipedia.org/wiki/Windows_Service "wikilink")[Windows
Activation
Services中](https://zh.wikipedia.org/wiki/Windows_Activation_Services "wikilink")，但大多都會掛在Windows
Service。

### 安全性層次

WCF實作上已經支援了傳輸層次安全性（Transport-level security）以及訊息層次安全性（Message-level
security）兩種。

  - 傳輸層次安全性：在資料傳輸時期加密，例如[SSL](https://zh.wikipedia.org/wiki/SSL "wikilink")。
  - 訊息層次安全性：在資料處理時就加密，例如使用[數位簽章](../Page/數位簽章.md "wikilink")，[雜湊或是使用](https://zh.wikipedia.org/wiki/雜湊 "wikilink")[金鑰加密法等](https://zh.wikipedia.org/wiki/金鑰 "wikilink")。

## 用戶端

對於WCF的用戶端來說，WCF服務就像是一個Web Service一樣，在Visual Studio
2008中，所有WCF服務的連接都是由用戶端的**WCF Service
Proxy**來執行，開發人員不用花費太多心思在通訊上，而WCF Service Proxy在Visual
Studio中被稱為**服務參考**（Service Reference）。

在Visual Studio中加入WCF的服務參考時，Visual
Studio會自動幫開發人員做掉一些必要工作（例如組態建立以及產生Service
Proxy等），開發人員只需要在程式碼中取用WCF Service Proxy物件即可。

## 参考文献

  - [MSDN .NET Framework Developer Center:
    WCF](http://msdn.microsoft.com/en-us/netframework/aa663324.aspx)
  - [MSDN Library: WCF
    Portal](http://msdn.microsoft.com/en-us/library/ms735119.aspx)
      - 本文中的範例均來自MSDN Library: WCF Portal中。

{{-}}

[Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink")
[Category:Windows_Server_2008](https://zh.wikipedia.org/wiki/Category:Windows_Server_2008 "wikilink")
[Category:Windows_Vista](https://zh.wikipedia.org/wiki/Category:Windows_Vista "wikilink")
[Category:Web服务](https://zh.wikipedia.org/wiki/Category:Web服务 "wikilink")
[Category:SOA相关产品](https://zh.wikipedia.org/wiki/Category:SOA相关产品 "wikilink")
[Category:.NET](https://zh.wikipedia.org/wiki/Category:.NET "wikilink")