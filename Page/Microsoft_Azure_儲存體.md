> 本文内容由[Microsoft Azure 儲存體](https://zh.wikipedia.org/wiki/Microsoft_Azure_儲存體)转换而来。


**Azure 儲存服務** (Azure Storage) 是 [Microsoft Azure](../Page/Microsoft_Azure.md "wikilink") 平台內實作的資料儲存服務，目前為 Azure 平台服務的主要資料保存地。

Azure 儲存服務提供了四種不同格式的儲存體，用來提供給Azure上運行的應用程式儲存資料使用。依據不同的儲存格式會有不同的限制，因為這些儲存服務都是以分散式巨量儲存（Distributed Mass Storage）為核心概念所設計出來的，為了要達成快速在分散式儲存空間中儲存與管理資料（還包含高可用度的贅餘儲存管理），微軟有在資料的儲存上做一些限制。

不論是哪一種儲存服務，Azure都有REST API\[1\]，並符合Simple Cloud的標準\[2\]。

Azure 儲存服務提供 99.9% 的服務水準，而唯讀式備援的唯讀端 (備援端) 為 99.99%。

## Blob

Blob （[大型二進位物件](https://zh.wikipedia.org/wiki/blob "wikilink")）資料是用來儲存像是檔案，圖片，視訊檔，可執行檔，壓縮檔等二進位格式的檔案，基本上它的儲存單位就是檔案，為了要讓BLOB的功能應用更寬廣，微軟也在 Blob 服務上開發了[內容傳遞網路](../Page/內容傳遞網路.md "wikilink")（Content Delivery Network）的服務，讓 Blob 可以作為大容量的檔案或資料儲存與供應的地方，以支持類似YouTube這樣的大型Web應用程式的服務。

Blob 依照性質分為兩種：

  - **Block Blob**（區塊型 Blob 儲存體），這類的儲存以4MB為一個區塊單位 (可依需調整，範圍為 16KB\~4MB)，單一檔案最大可以儲存 200GB，且區塊不會連續儲存，可能會打散到不同的儲存伺服器中存放，當應用程式要求時，會依照檔案的Key以及區塊由儲存區提取資料。另外，區塊在儲存時會經過一道認可程序，以讓應用程式決定是否要重新傳送。

<!-- end list -->

  - **Page Blob**（分頁型 Blob 儲存體），它會在儲存區中劃分一個連續的區域供應用程式存放資料，它本身可以視為一個大型的VHD（虛擬機器磁碟），在Page Blob 的資料寫入會直接認可。而基於Page Blob 的特性，微軟特別在Page Blob 上提供了一組將Page Blob 虛擬成磁碟的功能，稱為**Azure Drive**（研發代號為XDrive），它能夠支援NTFS API，也就是說應用程式可以利用現有的檔案管理API（包含System.IO的類別）來存取Azure Drive中的資料夾與檔案資料，並且這些資料會保存在Azure資料中心內。

Blob 服務由 Blob 本身以及其收納容器（Container）構成，容器可視為一般本機上的資料夾。而容器和 Blob 都支援額外的Metadata設定，這些Metadata會附掛在HTTP Header中傳輸給用戶端，每一個Metadata的大小限制為8KB。Blob 也支援權限管理的功能，透過Shared Access Signature可設定 Blob 或Container的存取權限與有效期限等。

``` csharp
private void EnsureContainerExists(）
{
    var container = GetContainer();
    container.CreateIfNotExist();

    var permissions = container.GetPermissions();
    permissions.PublicAccess = BlobContainerPublicAccessType.Container;
    container.SetPermissions(permissions);
}

private CloudBlobContainer GetContainer()
{
    var account = CloudStorageAccount.FromConfigurationSetting("DataConnectionString");
    var client = account.CreateCloudBlobClient();

    return client.GetContainerReference(RoleEnvironment.GetConfigurationSettingValue("ContainerName"));
}
```

## Table

Table（表格）是給具結構化資料的應用程式儲存與管理的一種儲存服務，它在Azure儲存區中會以Key-Value鍵值對方式儲存，並且由Partition來切割在Azure儲存區的儲存位置，它實際的資料是XML，透過REST API呼叫時，會需要依據SDK上的說明，自行建置XML的要求與解析回應的資料，但若是.NET Framework的開發人員，在Azure SDK中提供的Microsoft.WindowsAzure.StorageClient命名空間就有提供輔助的API以及類別，將這件事在API中處理掉了。SDK提供的輔助組件所應用的技術是[WCF Data Services](../Page/WCF_Data_Services.md "wikilink")，因此若對WCF Data Services熟悉的開發人員，會很容易的上手Table儲存的開發。

``` csharp
namespace TableExample
{
    public class Contact : TableServiceEntity
    {
        public string Name { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public string Cellphone { get; set; }

        public Contact()
        {
            base.PartitionKey = "ContactTable";
            base.RowKey = Guid.NewGuid().ToString();
        }
    }
}
```

雖然Table可以儲存結構化的資料，但它並不是關聯性資料庫，所以像是join，彙總函數等都無法使用，要由開發人員另外處理。

## Queue

Queue（佇列）是一種先到先服務（First-Come, First-Serve），或稱為FIFO（先入先出）的儲存服務，它可以允許應用程式將訊息儲存到佇列中排隊，然後由負責處理的應用程式（通常是Worker）由佇列提取訊息並處理以後，將訊息由佇列中移除。訊息可以是字串或是最長8KB的二進位資料，佇列經常會作為跨執行個體通訊以及工作切割通知的訊息傳遞之用。

``` csharp
protected void cmdAddQueue_Click（object sender, EventArgs e）
{
    CloudStorageAccount account = CloudStorageAccount.FromConfigurationSetting("DataConnectionString"）;
    CloudQueueClient queueClient = account.CreateCloudQueueClient();
    CloudQueue queue = queueClient.GetQueueReference("theaterseatorders");

    queue.CreateIfNotExist();

    queue.AddMessage(new CloudQueueMessage("SEATNUM=1-1,EMAIL=test@test.com"));
    queue = null;
}
```

## File

檔案服務是 Azure 近期 (2014) 才加入的新規資料儲存服務，它也是用來儲存二進位檔案，但它和 Blob 不同的是 Blob 是 Internet-facing (面向 Internet) 的檔案儲存服務，檔案服務則是給同一區域內的 Azure 服務 (如虛擬機器服務) 共享檔案資源的服務，它使用 SMB 2.1 (推出時) 與 SMB 3.0 (GA時) 網路芳鄰的方式簡化存取檔案的工作，同時也可以支援由資料中心外部的網路芳鄰連線。

## 備援

自v1.5版起的 Azure Storage 開始支援異地備援 (Geo-replication)的功能\[3\]，只要應用程式將資料傳送到TABLE或BLOB儲存，Azure會自動將資料往鄰近的資料中心傳遞，以備援儲存服務，當主要的資料中心發生斷線或是無法提供服務時，Azure核心中的DNS Service會自動將要求導向到備援的資料中心繼續提供服務。

  - 異地備援所產生的網路與儲存成本由微軟自行吸收，不另計費。
  - 異地備援的工作是非同步且自動化，應用程式無需做任何修改。
  - 異地備援可以透過聯繫Windows Azure支援團隊的方式停用。

目前 Azure 儲存服務支援下列備援類型：

  - LRS (Local Redundant Service): 在區域內將資料產生三份複本儲存。
  - ZRS (Zone Redundant Service): 在區域內除了原本的三份複本之外，再額外產生三份複本，此模式只支援 Blob 格式。
  - GRS (Geo-Replication Service): 在已配對的資料中心間異地備援，兩邊都產生三份的複本。
  - RA-GRS (Read-Only Geo-Replication Service): 在已配對的資料中心間異地備援，但另一邊的儲存可讀取 (但唯讀)。

## 涼儲存

涼儲存 (Cool Storage) 是微軟在 Build 2016 研討會中所發表的新儲存功能，它可以將資料儲存在較持久的儲存裝置，並且利用資料保存技術將儲存成本壓低，以適用於長時間儲存又不需經常存取的資料 (經常存取的稱為熱資料)，涼儲存僅適用於區塊式 Blob 儲存體 (Block Blob)，每單位 GB 的儲存成本比一般儲存功能便宜約 50%，但由涼儲存將資料取出或存入時除本身的交易成本外，尚需要支付額外每 GB 單位的取出與寫入成本 (Data Retrival/Data Write)，取出成本比寫入成本要高。

## 參考

<references />

[Category:微軟](https://zh.wikipedia.org/wiki/Category:微軟 "wikilink") [Category:Microsoft_Azure](https://zh.wikipedia.org/wiki/Category:Microsoft_Azure "wikilink")

1.  [Windows Azure Storage Service REST API References](http://msdn.microsoft.com/en-us/library/dd179355.aspx)
2.  [Simple Cloud API](http://www.simplecloud.org/api)
3.  [Inside Windows Azure storage: what's new and under the hood deep dive @ BUILD WINDOWS](http://channel9.msdn.com/Events/BUILD/BUILD2011/SAC-961T)