[Windows_Azure_AppFabric_Management_Portal.png](https://zh.wikipedia.org/wiki/File:Windows_Azure_AppFabric_Management_Portal.png "fig:Windows_Azure_AppFabric_Management_Portal.png")

**Windows Azure Platform AppFabric** 是[Windows Azure雲端運算服務的一部份](https://zh.wikipedia.org/wiki/Windows_Azure "wikilink")，亦為平台即服務(PaaS)的一種類型，它是Windows Azure上的應用程式伺服器 (Application Server) 平台，作為開發身份驗證，存取控制以及服務匯流排 (Service Bus) 應用程式之用。它本身也是奠基於 Windows Azure 作業系統之上，並且以 WCF ([Windows Communication Foundation](https://zh.wikipedia.org/wiki/Windows_Communication_Foundation "wikilink")) 為核心開發的。

## 概觀

Windows Azure Platform AppFabric 一開始命名是**.NET Service**，要作為在 Windows Azure 上的 .NET Framework 特殊服務的一種服務平台，原始的規劃中包含了存取控制 (Access Control)，服務匯流排以及工作流程引擎 (Workflow Engine)，但到了 2009 年的 PDC，正式發表 AppFabric SDK 1.0 時，工作流程引擎被抽掉，原因可能是微軟在開發 Workflow Engine 時，尚未解決因雲端運算特性所導致的分散式運算與狀態整合與管理的問題，因此在 AppFabric 1.0 版中這項服務被抽掉了。

在 AppFabric 中，每一項服務都有一個服務命名空間 (service namespace)，這個命名空間會作為應用程式呼叫 AppFabric 時所使用的 URL 的一部份\[1\]，

## 服務

AppFabric 目前包含兩種服務：存取控制以及服務匯流排，作為開發企業[服務導向架構](https://zh.wikipedia.org/wiki/服務導向架構 "wikilink") (SOA) 應用程式的基礎平台，同時可與其他不同的驗證服務整合，形成邦聯化驗證與存取控制服務 (Federated Access Control)。 在2010年10月28日舉辦的PDC 2010中，微軟宣布將會在 Windows Azure Platform AppFabric 中加入像 Cache, Integration 與 Composite Applications 等功能，讓 Windows Azure AppFabric 在雲端應用程式上的作為中介應用程伺服器的角色更明確\[2\]。

### 存取控制

存取控制是 AppFabric 中作為應用程式使用者身份驗證的資料庫，並作為服務匯流排服務與其他 AppFabric 上的身份驗證服務。

#### v1.0

Access Control v1.0 遵循 [OAuth](https://zh.wikipedia.org/wiki/OAuth "wikilink") [Web Resource Authorization Protocol](https://web.archive.org/web/20110616140211/http://wiki.oauth.net/w/page/12238537/OAuth-WRAP) (WRAP)v0.9 的規格，可作為企業的[單一簽入](https://zh.wikipedia.org/wiki/單一簽入 "wikilink") (Single Sign On) 服務的資料儲存地，當使用者在系統中發出登入指令時，要求會先送到 AppFabric，由 AppFabric 驗證身份後，回傳以安全符記服務 (Security Token Service; STS) 協定格式傳回身份驗證的資料後，再由應用程式轉送給授權程式，檢查符記的資料內容 (會包含部份授權資訊) 後，授予使用者系統存取權限。

存取控制是由四個部份組成\[3\]：

  - Token Policy (符記原則)：這是驗證的根資訊，有了它，才可以建立範圍資訊。
  - Scope (範圍)：在這裡會要求記錄應用程式或服務的 URL，以作為授權憑據之一。
  - Issuer (使用者)：這是使用者帳戶與密碼的組成，IssuerName 是使用者名稱，Key 則是密碼，演算法目前支援 SHA256 雜湊演算法，以及使用憑證的 X.509 演算法。
  - Rule (規則)：這是 Scope 和 Issuer 組合的配對規則，以登錄使用者是否具有存取指定範圍的權利。

應用程式開發人員要利用 AppFabric SDK 中的 acm.exe 或是 AppFabric Management Services 將應用程式存取控制的四個部份都建立起來後，再改寫 Web 應用程式，將驗證資訊送到 AppFabric 中驗證：

``` csharp
private static string GetTokenFromACS()
{
    WebClient acsClient = new WebClient();
    acsClient.BaseAddress = "https://myservice.accesscontrol.windows.net";
    NameValueCollection values = new NameValueCollection();
    values.Add("wrap_name", "myserviceconsumer");
    values.Add("wrap_password", "jC1n221++AXhzvvZtzQZO7ohsqKR6491N51B6A0UHZE=");
    values.Add("wrap_scope", "http://localhost/myservice");

    byte[] acsResponseInBytes = acsClient.UploadValues("WRAPv0.9", values);
    string acsResponse = Encoding.UTF8.GetString(acsResponseInBytes);
}
```

當 AppFabric 驗證後傳回 STS 授權資訊，再由應用程式將它轉給應用程式內的驗證與授權單元進行分析與授權即可。

#### v2.0

為了實行單一簽入並與社群等主要身份驗證提供者 (Identity Provider, IdP) 相互介接，Access Control v2.0 開始支援 Google, Yahoo, Facebook, Windows Live ID 等支援 [Open ID](https://zh.wikipedia.org/wiki/Open_ID "wikilink") 或 [OAuth](https://zh.wikipedia.org/wiki/OAuth "wikilink") 等主流的身份認證服務，並進一步針對企業內環境的身份認證，提供了介接 Active Directory Federation Service (ADFS) v2.0 的功能，Access Control v2.0 的使用者先在管理介面中建立橋接機制，當使用者向 IdP 要求認證通過後，會得到 IdP Token，而透過 IdP Token 可在 Access Control Service 中交換成 ACS Token 再送交用戶端程式，之後的流程就和 v1.0 相同。

ACS v2.0 可支援下列協定：

  - OAuth WRAP v0.9
  - OAuth v1.0a
  - WS-Security
  - WS-Federation

雖然 ACS v2.0 只支援 Google, Yahoo, Facebook, Windows Live ID 等驗證服務，但如果有新的 Open ID 認證服務，ACS v2.0 也允許由開發人員手動加入。

### 服務匯流排

服務匯流排是要讓 Windows Azure 可作為企業服務應用程式前端 (顯露服務與轉接訊息等) 的一個服務，它本身是由 WCF 所組成，同時由於服務匯流排是負責處理使用者呼叫的前端介面，基於服務匯流排的特性，AppFabric Service Bus 會將要求訊息轉送給服務應用程式，這個程序被稱為 Relay，因此 AppFabric SDK 中內含了一個 Microsoft.ServiceBus.dll 組件，它封裝了改寫 WCF 通訊協定的各項必要元件，像是 TCP 與 HTTP 均可以透過 Service Bus 進行轉傳，但並不是所有的 WCF 協定都可以被轉傳，像是 MSMQ 以及具名管道等都不在受支援之列\[4\]。

AppFabric Service Bus 由於是利用 WCF 進行通訊，因此使用它的服務應用程式也需要以 WCF 來開發。

下列程式是一個 AppFabric Service Bus 服務應用程式的簡單範例：

``` csharp
using System;
using System.ServiceModel;
using System.ServiceModel.Description;
using Microsoft.ServiceBus;
using Microsoft.ServiceBus.Description;
using System.Text;

namespace Microsoft.ServiceBus.Samples
{

#region Service Contract

    [ServiceContract(Name = "IEchoContract", Namespace = "http://samples.microsoft.com/ServiceModel/Relay/EchoV1")]

    public interface IEchoContract
    {
        [OperationContract]
        String Echo(string text);
    }

    public interface IEchoChannel : IEchoContract, IClientChannel { };

#endregion

#region Echo Service

    [ServiceBehavior(Name = "EchoService", Namespace = "http://samples.microsoft.com/ServiceModel/Relay/EchoV1")]

    public class EchoService : IEchoContract
    {
        public string Echo(string text)
        {
            Console.WriteLine("Echoing: {0}", text);
            return text;
        }
    }

#endregion

#region Host Service

    class Program
    {
        static void Main(string[] args)
        {

            ServiceBusEnvironment.SystemConnectivity.Mode = ConnectivityMode.AutoDetect;


            // Hard-code the service namespace, issuer name, and issuer secret into the application.
            // Note: The credentials are hard-coded in this sample for simplicity purposes but doing so is not considered a secure programming practice.
            string serviceNamespace = "putServiceNamespaceHere";
            string issuerName= "putIssuerNameHere";
            string issuerSecret = "putIssuerSecretHere";

            // Create the service URI based on the solution name.
            Uri address = ServiceBusEnvironment.CreateServiceUri("sb", serviceNamespace, "EchoService");



           // create the credentials object for the endpoint
            TransportClientEndpointBehavior sharedSecretServiceBusCredential = new TransportClientEndpointBehavior();
            sharedSecretServiceBusCredential.CredentialType = TransportClientCredentialType.SharedSecret;
            sharedSecretServiceBusCredential.Credentials.SharedSecret.IssuerName = issuerName;
            sharedSecretServiceBusCredential.Credentials.SharedSecret.IssuerSecret = issuerSecret;

            // create the service host reading the configuration
            ServiceHost host = new ServiceHost(typeof(EchoService), address);

            // create the ServiceRegistrySettings behavior for the endpoint
            IEndpointBehavior serviceRegistrySettings = new ServiceRegistrySettings(DiscoveryType.Public);

            // add the Service Bus credentials to all endpoints specified in configuration
            foreach (ServiceEndpoint endpoint in host.Description.Endpoints)
            {
                endpoint.Behaviors.Add(serviceRegistrySettings);
                endpoint.Behaviors.Add(sharedSecretServiceBusCredential);
            }

            // open the service
            host.Open();

            Console.WriteLine("Service address: " + address);
            Console.WriteLine("Press [Enter] to exit");
            Console.ReadLine();

            // close the service
            host.Close();
        }
    }

    #endregion

}
```

AppFabric Service Bus 除了基本的服務通訊轉送之外，它還支援了服務登錄 (Service Registration)，服務搜尋 (Service Discovery) 以及訊息緩衝區 (Message Buffer，類似 queue 服務) \[5\] 等功能。

### 快取服務

Windows Azure AppFabric 的快取服務 (Caching Services)，是以微軟的 Windows Server AppFabric 內的 Cache Service (研發代號為 Velocity) 為核心所組成，它是與[memcached相同能力的分散式快取服務](https://zh.wikipedia.org/wiki/memcached "wikilink") (Distributed Cache Services)，現階段會直接支援 ASP.NET 的快取 API (Cache API)，不過基於雲端的特殊環境，它不支援所有在 Windows Server AppFabric Cache Service 上支援的快取功能，Caching Service 在[2011年4月](../Page/2011年4月.md "wikilink")正式投入商轉，並以快取容量 (Cache Capability) 為單位計費。

Caching Service 的 API 相當直覺，以 ASP.NET 來說，只要設定 Cache Provider (ASP.NET v4.0 以後的版本) 即可直接取用 Caching Service 的服務，或是如下程式碼，直接以 API 來存取 Caching Service。

``` csharp
// Declare array for cache host.
DataCacheServerEndpoint[] servers = new DataCacheServerEndpoint[1];
servers[0] = new DataCacheServerEndpoint("mytest.cache.int4.windows-test.net", 22233);

// Setup DataCacheSecurity configuration.
string strACSKey = "YWNzOmh0dHBzzzzvanJvdGhkb2N1bWVudGF0aW9udGVzdGluZy111WNoZS5hY2Nlc3Njb250cm9sLmlud" +
    "DMud2luZG93cy1pbnQubmV0L1dSQVB2MC45LyZvd25lciY0eDhHZTA5SlZTTUQ2VWIyWkNiaWlES1c0NXNzOFIxZjdWZVp0Y3lF" +
    "T2FFPSZodHRwOi8vSnJvdGhEb2N1bWVudGF0aW9uVGVzdGluZy5jYWNoZS5pbnQzLndpbmRvd3MtaW50Lm5ldA==";
var secureACSKey = new SecureString();
foreach (char a in strACSKey)
{
   secureACSKey.AppendChar(a);
}
secureACSKey.MakeReadOnly();
DataCacheSecurity factorySecurity = new DataCacheSecurity(secureACSKey);

// Setup the DataCacheFactory configuration.
DataCacheFactoryConfiguration factoryConfig = new DataCacheFactoryConfiguration();
factoryConfig.Servers = servers;
factoryConfig.SecurityProperties = factorySecurity;

// Create a configured DataCacheFactory object.
DataCacheFactory cacheFactory = new DataCacheFactory(factoryConfig);

// Get a cache client for the default cache.
DataCache defaultCache = cacheFactory.GetDefaultCache();

// Add and retrieve a test object from the default cache.
defaultCache.Add("testkey", "testobject");
string strObject = (string)defaultCache.Get("testkey");
```

### 整合服務

整合服務 (Integration Services) 是以 BizTalk Server 的核心引擎為主，透過 Windows Azure AppFabric Integration Services 的功能，企業可以很快的將應用程式與合作夥伴或第三方應用程式整合。

### 複合式應用程式

複合式應用程式 (Composite Application) 是 Windows Azure AppFabric 身為中間層應用程式伺服器服務的最重要元件，它除了能讓企業在雲端上實現工作流程應用程式 (Workflow Application)，更可以整合現有在雲端上的應用程式，不論是 Windows Azure 本身的或是 Windows Azure AppFabric 內的各項服務，都可以運用這個複合式應用程式模型 (Composition Model) 來發展複雜的企業應用。

## 應用程式開發支援

AppFabric 的存取控制以及 Service Bus 的必要功能，都顯露了 REST API 供不同的用戶端存取，開發人員只需要利用這些 API 即可存取 AppFabric 中的服務，尤其是 Access Control 在建立帳戶這個程序上，若利用 REST API 會較使用 acm.exe 工具快很多。

同時，AppFabric SDK 也包含了文件以及 Service Bus 所必要的組件 (即 Microsoft.ServiceBus.dll)，以供開發人員使用\[6\]。

## 參考

<references />

## 外部連結

1.  [MSDN Windows Azure AppFabric Developer Center](https://web.archive.org/web/20100614055207/http://msdn.microsoft.com/en-us/azure/netservices.aspx)
2.  [Windows Azure AppFabric Team Blog](http://blogs.msdn.com/b/netservices/)
3.  [Windows Azure AppFabric Announcement Blog](http://blogs.msdn.com/b/netservicesannounce/)
4.  [Windows Azure AppFabric SDK Documentation](http://msdn.microsoft.com/en-us/library/ee173584.aspx)
5.  [Windows Azure AppFabric Lab Enviroment](https://portal.appfabriclabs.com/)
6.  [Windows Azure AppFabric Management Portal](https://appfabric.azure.com)

[Category:微軟](https://zh.wikipedia.org/wiki/Category:微軟 "wikilink") [Category:Microsoft_Windows](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows "wikilink") [Category:Microsoft_Azure](https://zh.wikipedia.org/wiki/Category:Microsoft_Azure "wikilink")

1.
2.  [Windows Azure AppFabric Middle Software Services](http://www.microsoft.com/en-us/appfabric/azure/middleware-services.aspx)
3.
4.  [MSDN 邊做邊學 Windows Azure AppFabric Service Bus：打造服務導向應用程式](http://msdn.microsoft.com/zh-tw/azure/ff629018.aspx)
5.
6.  [Windows Azure AppFabric SDK](http://msdn.microsoft.com/en-us/library/ee173584.aspx)