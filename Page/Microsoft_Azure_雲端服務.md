**Microsoft Azure 雲端服務** (Cloud Service) 是 Microsoft Azure
最早開始供應的服務之一，它提供了抽象化的運算資源給雲端應用程式 (Cloud
Application) 使用，開發人員可以部署雲端應用程式到 Azure 雲端服務，以獲取所需的執行環境與運算能力，是一種
[PaaS](../Page/PaaS.md "wikilink") 服務，而它也是 Azure 供應的 PaaS
服務中彈性最大，客制能力最高的服務。

它也是早期[Azure虛擬機器所使用的邏輯管理單位](../Page/Microsoft_Azure_Virtual_Machine.md "wikilink")，[Azure虛擬網路的原型](../Page/Microsoft_Azure_Virtual_Network.md "wikilink")
Azure Connect 服務也是由雲端服務所起，因此它被稱為 Azure 運算與網路服務的源頭也不為過。

## 架構與開發方法

雲端服務一開始的設計是給開發人員部署其雲端應用程式為概念，因此設計上較針對開發人員的需求，使得 Azure
虛擬機器服務在推出時就有一些不便性存在，但這是雲端服務本身的限制使然。

### 角色類型

雲端服務提供了兩種服務角色：

  - Web Role: 用來代管以 HTTP/HTTPS (SSL) 為主的服務，包含網站、Web Service、WCF HTTP
    Service 或 Web API 等，早期以 Hosted Web Component (HWC) 為主 HTTP
    服務，2011年起回歸到[IIS](../Page/IIS.md "wikilink")。
  - Worker Role: 用來處理背景工作，它也可以利用 WCF 或 Web API Self-hosting Service 掛用
    HTTP 的服務，沒有 IIS，因此可用的系統資源比 Web Role 要多。

另外，早期還沒有虛擬機器服務時，雲端服務有提供另一個角色，稱為 VM
Role，它可以產生可用遠端桌面控制的虛擬機器，是虛擬機器服務的原型實作，後來
VM Role 演化成虛擬機器服務。

### 開發支援

雲端服務由於需要較多的組態設定，因此無法以很簡單的方式開發與部署，微軟在早期就開始提供 Azure SDK 以及雲端服務的模擬器
(包含運算模擬器與儲存模擬器，早期名稱為 Development Fabric 與 Development
Storage，後來定名為 Compute Emulator 與 Storage Emulator)，以及 Microsoft Azure
Tools for Visual Studio，給 Visual Studio 的開發人員充分的支援。

但隨著 Azure 平台的開放程度愈來愈高，[PHP](../Page/PHP.md "wikilink")
\[1\]、[node.js](../Page/node.js.md "wikilink") \[2\] 以及
[Java](../Page/Java.md "wikilink") \[3\] 的開發人員也可以使用雲端服務來代管其應用程式。

## 運算資源

雲端服務的運算資源是由虛擬機器提供，虛擬機器依照運算能力區分為數種類型 \[4\]，共分為一般性運算能量的 A 類型、經效能提升的 D
類型以及擁有最強運算效能的 G 類型，未來也會推出使用[GPU運算的](../Page/GPU.md "wikilink")
N 類型。

不過雲端服務可用的虛擬機器類型只有 A 類型和 D 類型\[5\]。

### A 類型

A 類型是 Azure 一開始就提供的標準虛擬機器類型，使用 [AMD](../Page/AMD.md "wikilink") 的 CPU
以及傳統 [SATA](../Page/SATA.md "wikilink")
介面的硬碟，提供最標準不需太高運算能量的應用，早期是以五種規格推出，分別是
Extra Small (XS)、Small (S)、Medium (M)、Large (L) 以及 Extra Large (XL)
五種，除了 XS 記憶體使用 0.75GB 記憶體外，其他是以 1.75GB
記憶體，每晉一級就會加倍，可作為衡量運算資源與成本的標準之一。不過在虛擬機器種類愈來愈多的情況下，A
類型也做了擴充，現在除了原有的五類外，還多加了 A5\~A7、A8\~A11等七種規格。

A5\~A7 與 A8\~A11 均使用 Intel Xeon E5 系列 CPU，但 A5\~A7 的記憶體量比 A2\~A4
高；A8\~A9 與 A10\~A11 規格相同，但 A8\~A9 有支援 HPC 的 InfiniBand 網路介面與 RDMA
技術，A10\~A11 則無。

| 規格            | CPU核心數 | 記憶體量   | 暫存硬碟大小 (SATA) | 可用網卡數 | 可用資料磁碟數 | 最高[IOPS](../Page/IOPS.md "wikilink") | 說明                   |
| ------------- | ------ | ------ | ------------- | ----- | ------- | ------------------------------------ | -------------------- |
| Standard_A0  | 1      | 0.75GB | 20GB          | 1     | 1       | 1x500                                | Extra Small          |
| Standard_A1  | 1      | 1.75GB | 70GB          | 1     | 2       | 2x500                                | Small                |
| Standard_A2  | 2      | 3.5GB  | 135GB         | 1     | 4       | 4x500                                | Medium               |
| Standard_A3  | 4      | 7GB    | 285GB         | 2     | 8       | 8x500                                | Large                |
| Standard_A4  | 8      | 14GB   | 605GB         | 4     | 16      | 16x500                               | Extra Large          |
| Standard_A5  | 2      | 14GB   | 135GB         | 1     | 4       | 4x500                                |                      |
| Standard_A6  | 4      | 28GB   | 285GB         | 2     | 8       | 8x500                                |                      |
| Standard_A7  | 8      | 56GB   | 605GB         | 4     | 16      | 16x500                               |                      |
| Standard_A8  | 8      | 56GB   | 382GB         | 2     | 16      | 16x500                               | 支援 InfiniBand 與 RDMA |
| Standard_A9  | 16     | 112GB  | 382GB         | 4     | 16      | 16x500                               | 支援 InfiniBand 與 RDMA |
| Standard_A10 | 8      | 56GB   | 382GB         | 2     | 16      | 16x500                               |                      |
| Standard_A11 | 16     | 112GB  | 382GB         | 4     | 16      | 16x500                               |                      |

### D 類型

D 類型是 Azure 在 2013 年推出的類型，它使用比 A 類型更好的 CPU，並且在實體伺服器上使用固態硬碟
([SSD](../Page/SSD.md "wikilink"))，以加速在本地運算時的 I/O 速度，另外，為滿足提升虛擬機器本身的 I/O
量的需求，微軟開發了高階儲存體 (Premium Storage) 用來保存虛擬機使用的 VHD (稱為 OS Disk)，而使用高階儲存體的
D 類型虛擬機器，稱為 DS 類型。

<table>
<thead>
<tr class="header">
<th><p>規格</p></th>
<th><p>CPU核心數</p></th>
<th><p>記憶體量</p></th>
<th><p>暫存硬碟大小 (SSD)</p></th>
<th><p>可用網卡數</p></th>
<th><p>可用資料磁碟數</p></th>
<th><p>最高<a href="../Page/IOPS.md" title="wikilink">IOPS</a></p></th>
<th><p>最高<a href="../Page/IOPS.md" title="wikilink">IOPS</a> (DS類型)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Standard_D1<br />
Standard_DS1</p></td>
<td><p>1</p></td>
<td><p>3.5GB</p></td>
<td><p>50GB</p></td>
<td><p>1</p></td>
<td><p>2</p></td>
<td><p>2x500</p></td>
<td><p>3,200</p></td>
</tr>
<tr class="even">
<td><p>Standard_D2<br />
Standard_DS2</p></td>
<td><p>2</p></td>
<td><p>7GB</p></td>
<td><p>100GB</p></td>
<td><p>2</p></td>
<td><p>4</p></td>
<td><p>4x500</p></td>
<td><p>6,400</p></td>
</tr>
<tr class="odd">
<td><p>Standard_D3<br />
Standard_DS3</p></td>
<td><p>4</p></td>
<td><p>14GB</p></td>
<td><p>200GB</p></td>
<td><p>4</p></td>
<td><p>8</p></td>
<td><p>8x500</p></td>
<td><p>12,800</p></td>
</tr>
<tr class="even">
<td><p>Standard_D4<br />
Standard_DS4</p></td>
<td><p>8</p></td>
<td><p>28GB</p></td>
<td><p>400GB</p></td>
<td><p>8</p></td>
<td><p>16</p></td>
<td><p>16x500</p></td>
<td><p>25,600</p></td>
</tr>
<tr class="odd">
<td><p>Standard_D11<br />
Standard_DS11</p></td>
<td><p>2</p></td>
<td><p>14GB</p></td>
<td><p>100GB</p></td>
<td><p>2</p></td>
<td><p>4</p></td>
<td><p>4x500</p></td>
<td><p>6,400</p></td>
</tr>
<tr class="even">
<td><p>Standard_D12<br />
Standard_DS12</p></td>
<td><p>4</p></td>
<td><p>28GB</p></td>
<td><p>200GB</p></td>
<td><p>4</p></td>
<td><p>8</p></td>
<td><p>8x500</p></td>
<td><p>12,800</p></td>
</tr>
<tr class="odd">
<td><p>Standard_D13<br />
Standard_DS13</p></td>
<td><p>8</p></td>
<td><p>56GB</p></td>
<td><p>400GB</p></td>
<td><p>8</p></td>
<td><p>16</p></td>
<td><p>16x500</p></td>
<td><p>25,600</p></td>
</tr>
<tr class="even">
<td><p>Standard_D14<br />
Standard_DS14</p></td>
<td><p>16</p></td>
<td><p>112GB</p></td>
<td><p>800GB</p></td>
<td><p>8</p></td>
<td><p>32</p></td>
<td><p>32x500</p></td>
<td><p>50,000</p></td>
</tr>
</tbody>
</table>

2015年，微軟利用新的 Intel Xeon E5-2673 v3 CPU 的伺服器組建了 D 類型的第二版，稱為 Dv2，可獲取 D
類型虛擬機高 35% 的效能。

| 規格                | CPU核心數 | 記憶體量  | 暫存硬碟大小 (SSD) | 可用網卡數 | 可用資料磁碟數 | 最高[IOPS](../Page/IOPS.md "wikilink") | 說明 |
| ----------------- | ------ | ----- | ------------ | ----- | ------- | ------------------------------------ | -- |
| Standard_D1_v2  | 1      | 3.5GB | 50GB         | 1     | 2       | 2x500                                |    |
| Standard_D2_v2  | 2      | 7GB   | 100GB        | 2     | 4       | 4x500                                |    |
| Standard_D3_v2  | 4      | 14GB  | 200GB        | 4     | 8       | 8x500                                |    |
| Standard_D4_v2  | 8      | 28GB  | 400GB        | 8     | 16      | 16x500                               |    |
| Standard_D5_v2  | 16     | 56GB  | 800GB        | 8     | 32      | 32x500                               |    |
| Standard_D11_v2 | 2      | 14GB  | 100GB        | 2     | 4       | 4x500                                |    |
| Standard_D12_v2 | 4      | 28GB  | 200GB        | 4     | 8       | 8x500                                |    |
| Standard_D13_v2 | 8      | 56GB  | 400GB        | 8     | 16      | 16x500                               |    |
| Standard_D14_v2 | 16     | 112GB | 800GB        | 8     | 32      | 32x500                               |    |

## 作業系統

雲端服務提供的虛擬機器都是標準的作業系統虛擬機，其可用作業系統稱為客座作業系統 (Guest Operating System, Guest
OS)，依照作業系統世代不同分為四個版本 (後續 [Windows Server
2016](../Page/Windows_Server_2016.md "wikilink") 推出時也會新增 5.0 版) \[6\]。

| 版本  | 基礎作業系統                                                                    | 現行客座作業系統的版本                       |
| --- | ------------------------------------------------------------------------- | --------------------------------- |
| 4.x | [Windows Server 2012 R2](../Page/Windows_Server_2012_R2.md "wikilink")    | 4.29 (.NET Framework 4.5.2)       |
| 3.x | [Windows Server 2012](../Page/Windows_Server_2012.md "wikilink")          | 3.35 (.NET Framework 4.5.2)       |
| 2.x | [Windows Server 2008 R2](../Page/Windows_Server_2008_R2.md "wikilink")    | 2.48 (.NET Framework 3.5 & 4.5.2) |
| 1.x | [Windows Server 2008](../Page/Windows_Server_2008.md "wikilink") with SP2 | 已淘汰 \[7\]                         |

雲端服務使用的客座作業系統能在服務組態檔中的 osFamily 項設定版本 (例如 osFamily="4"
表示使用第四版的客座作業系統)，osVersion 設定版本號 (或是
"\*"，表示直接用取新版本)。

## 組態架構

雲端服務使用兩個主要的設定檔來組態服務功能，一個是服務定義檔
(ServiceDefinition.csdef)，它定義了一個雲端服務要使用到的雲端基礎資源，包含使用的虛擬機器角色類型
(Web Role 或 Worker Role)、虛擬機器的大小、使用的網路組態、負載平衡器組態、憑證資訊、使用的組態項目、IIS
使用的網站繫結資訊等，這些資訊在部署雲端服務之後不可改變。例如下列 XML：

``` xml
<?xml version="1.0" encoding="utf-8"?>
<ServiceDefinition name="AzureWebFarm.Example.Cloud" ns="http://schemas.microsoft.com/ServiceHosting/2008/10/ServiceDefinition" schemaVersion="2012-10.1.8">
  <LoadBalancerProbes>
    <LoadBalancerProbe name="WebDeploy" protocol="http" port="80" path="Probe.aspx" intervalInSeconds="5" timeoutInSeconds="100" />
  </LoadBalancerProbes>
  <WebRole name="AzureWebFarm.Example.Web" vmsize="Small">
    <Runtime executionContext="elevated" />
    <Sites>
      <Site name="Web">
        <Bindings>
          <Binding name="HttpIn" endpointName="HttpIn" />
          <Binding name="HttpsIn" endpointName="HttpsIn" />
        </Bindings>
      </Site>
    </Sites>
    <Endpoints>
      <InputEndpoint name="HttpIn" protocol="http" port="80" localPort="80" />
      <InputEndpoint name="HttpsIn" protocol="https" port="443" localPort="443" certificate="HTTPS" />
      <InputEndpoint name="Microsoft.WindowsAzure.Plugins.WebDeploy.InputEndpoint" protocol="tcp" port="8172" localPort="8172" loadBalancerProbe="WebDeploy" />
      <!-- unused, just there so instance discovery works -->
      <InternalEndpoint name="UnusedInternal" protocol="http" port="88" />
    </Endpoints>
    <Imports>
      <Import moduleName="Diagnostics" />
      <Import moduleName="RemoteAccess" />
      <Import moduleName="RemoteForwarder" />
      <Import moduleName="WebDeploy" />
    </Imports>
    <LocalResources>
      <LocalStorage name="Sites" cleanOnRoleRecycle="true" sizeInMB="2500" />
      <LocalStorage name="TempSites" cleanOnRoleRecycle="true" sizeInMB="2500" />
      <LocalStorage name="Execution" cleanOnRoleRecycle="true" sizeInMB="2500" />
      <LocalStorage name="Config" cleanOnRoleRecycle="true" sizeInMB="10" />
    </LocalResources>
    <ConfigurationSettings>
      <Setting name="DataConnectionString" />
      <Setting name="SyncEnabled" />
      <Setting name="SitesContainerName" />
      <Setting name="DirectoriesToExclude" />
      <Setting name="SyncIntervalInSeconds" />
    </ConfigurationSettings>
    <Certificates>
      <Certificate name="HTTPS" storeLocation="LocalMachine" storeName="My" />
    </Certificates>
  </WebRole>
</ServiceDefinition>
```

另一個是服務組態檔 (ServiceConfiguration.cscfg)，用來設定使用的 VM
作業系統類型與版本、虛擬機器數量、角色的設定值、憑證的使用等，這些設定在服務部署後仍然可以修改。如下列XML：

``` xml
<?xml version="1.0" encoding="utf-8"?>
<ServiceConfiguration serviceName="AzureWebFarm.Example.Cloud" ns="http://schemas.microsoft.com/ServiceHosting/2008/10/ServiceConfiguration" osFamily="3" osVersion="*" schemaVersion="2012-10.1.8">
  <Role name="AzureWebFarm.Example.Web">
    <Instances count="2" />
    <ConfigurationSettings>
      <Setting name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" value="UseDevelopmentStorage=true" />
      <Setting name="DataConnectionString" value="UseDevelopmentStorage=true" />
      <Setting name="SyncEnabled" value="true" />
      <Setting name="SitesContainerName" value="sites" />
      <Setting name="DirectoriesToExclude" value="App_Data/TEMP;TEMP" />
      <Setting name="SyncIntervalInSeconds" value="60" />
      <Setting name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" value="true" />
      <Setting name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" value="admin" />
      <Setting name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" value="MIIBnQYJKoZIhvcNAQcDoIIBjjCCAYoCAQAxggFOMIIBSgIBADAyMB4xHDAaBgNVBAMME1dpbmRvd3MgQXp1cmUgVG9vbHMCEEF7rZmMJyaEREi+EJC4WpUwDQYJKoZIhvcNAQEBBQAEggEAQrruo8G67TRXvYsMWJQsLywZTz1X7KvEeyrCH2OtgmAzw/LoNrrD8xZMCuTcExlueCsiMjCn1utf3/Zvs+6CnyeZCpRfE3Px8giMEg2qDLJYY9Q85qnSYaU8Z1VEwZLtWH2FG9lgsXYaGyd2/GWeITCFOiPjBvRheB6dfG2LMXaj7gYe0MOinqqTpAbsdE1yRsU55iUmCpTbuGjXpQzUsOQtW5ZriQR3JfSEtXVWBhWnRVRVInCtxI/vlAHiLbtjwOiyCQOTlgjOvnz2ovb1Ykzi9dzrLGEMYTldeJffKD/OzJHdGBIkdjW/4BJORc7ZO4+7tLXqe7h9MBzaw2AEATAzBgkqhkiG9w0BBwEwFAYIKoZIhvcNAwcECDHnafJ4LBBbgBBpTi79EDhW34Woo0JED7Xx" />
      <Setting name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" value="2013-01-30T23:59:59.0000000-08:00" />
      <Setting name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" value="true" />
    </ConfigurationSettings>
    <Certificates>
      <Certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" thumbprint="B6E8A99CB3B0174C053DAF5A48DACB504C5889EC" thumbprintAlgorithm="sha1" />
      <Certificate name="HTTPS" thumbprint="B6E8A99CB3B0174C053DAF5A48DACB504C5889EC" thumbprintAlgorithm="sha1" />
    </Certificates>
  </Role>
</ServiceConfiguration>
```

## 參考

<references />

[Category:微軟](https://zh.wikipedia.org/wiki/Category:微軟 "wikilink")
[Category:Microsoft_Azure](https://zh.wikipedia.org/wiki/Category:Microsoft_Azure "wikilink")

1.  [How to create PHP web and worker
    roles](https://azure.microsoft.com/en-us/documentation/articles/cloud-services-php-create-web-role/)
2.  [Build and deploy a Node.js application to an Azure Cloud
    Service](https://azure.microsoft.com/en-us/documentation/articles/cloud-services-nodejs-develop-deploy-app/)
3.  [How to Migrate Java Applications to Azure
    Cloud](http://www.developer.com/java/how-to-migrate-java-applications-to-azure-cloud.html)
4.  [虛擬機器的大小](https://azure.microsoft.com/zh-tw/documentation/articles/virtual-machines-size-specs/)
5.  [Sizes for Cloud
    Services](https://azure.microsoft.com/en-us/documentation/articles/cloud-services-sizes-specs/)
6.  [Azure 客體 OS 版次與 SDK
    相容性矩陣](https://azure.microsoft.com/zh-tw/documentation/articles/cloud-services-guestos-update-matrix/)
7.  [客體作業系統系列 1
    淘汰通知](https://azure.microsoft.com/zh-tw/documentation/articles/cloud-services-guestos-family1-retirement/)