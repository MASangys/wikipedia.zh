> 本文内容由[COM+](https://zh.wikipedia.org/wiki/COM+)转换而来。


**微軟元件服務**（Microsoft Component Services，俗稱為COM+）是微軟在Windows 2000開始，針對[Microsoft Transaction Server所強化更新的](https://zh.wikipedia.org/wiki/Microsoft_Transaction_Server "wikilink")[COM服務實作](https://zh.wikipedia.org/wiki/COM "wikilink")，作為Windows平台上的應用程式伺服器服務，目前的版本為1.5（Windows XP、Windows Server 2003以後的版本），是利用微軟平台開發分散式應用程式不可或缺的一個服務，就連.NET Framework也提供System.EnterpriseServices.dll以支援COM+的開發。

## 服務

COM+目前已有十九種服務：

  - COM+ Application Pooling：提供單一執行緒（single thread）應用程式的擴充能力，並且提供由其他應用程式來復原中斷的應用程式的能力。
  - COM+ Application Recycling：提供應用程式自動回收（recycle）的能力。
  - COM+ Applications Running as NT Services：允許元件可以與Windows Service的方式來執行。
  - COM+ Compensating Resource Manager：提供交易元件補償能力的機制。
  - COM+ Events：鬆散藕合式事件的支援。
  - COM+ Instrumentation：COM+應用程式與元件的效能資訊評估。
  - COM+ Just-in-Time Activation：COM+元件的即時活化（JIT-activation）能力。
  - COM+ Low-Memory Activation Gates：在記憶體不足時通報COM+核心，使用虛擬記憶體來啟動元件。
  - COM+ Object Constructor Strings：使用建構式字串來活化元件。
  - COM+ Object Pooling：將物件暫存在暫存區中，待應用程式呼叫時取用，可減少資源耗用。
  - COM+ Partitions：提供不同版本的COM+元件的相容性。
  - COM+ Queued Components：開發支援[MSMQ元件的實作](../Page/Microsoft_Message_Queuing.md "wikilink")。
  - COM+ Resource Dispenser Service：在COM+元件間存取共享資訊的服務。
  - COM+ Security：COM+提供角色為主（Role-Based）安全性。
  - COM+ Services Without Components：可讓元件在不安裝於COM+服務之下，叫用COM+的服務。
  - COM+ Shared Property Manager：在元件中使用Shared Property Manager來做狀態轉移的服務。
  - COM+ SOAP Service：顯露COM+元件為Web Service。
  - COM+ Synchronization：在COM+元件之間進行同步化。
  - COM+ Transactions：由MTS強化而來，元件的交易服務。

## 外部連結

  - \[<http://msdn.microsoft.com/en-us/library/ms686988（VS.85>）.aspx Microsoft COM+\]

[Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink")

[en:Component Object Model\#COM+](https://zh.wikipedia.org/wiki/en:Component_Object_Model#COM+ "wikilink")