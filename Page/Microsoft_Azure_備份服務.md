**Microsoft Azure 備份服務** 是 Microsoft Azure
利用[Azure儲存體所發展的資料備份服務](../Page/Microsoft_Azure_儲存體.md "wikilink")
(Backup as a Service)，用來備份雲端或是地端的資料。

Azure 備份服務可提供最長99年的保存，且不限制復原點數量的備份工作。

## 元件

Azure Backup 依照備份的需要提供不同的元件供選用：

  - 備份代理員 (Backup Agent)：將資料備份到雲端上的 Azure Backup 收納庫 (Vault) 內，可安裝在任何的
    [Windows Server](../Page/Windows_Server.md "wikilink")
    虛擬機器或實體機器，也可以安裝在[Microsoft Azure
    虛擬機器服務的虛擬機器內](../Page/Microsoft_Azure_虛擬機器服務.md "wikilink")。
  - [System Center](../Page/System_Center.md "wikilink") Data Protection
    Manager (DPM)：SCDPM R2 Update 3 開始支援 Azure Backup 的功能，可備份至本地端或是
    Azure Backup 收納庫\[1\]。
  - 備份伺服器 (Backup Server)：為 Azure Backup 提供的元件，可備份至本地或是 Azure Backup
    收納庫\[2\]。
  - 備份擴充套件 (Backup VM Extension)：可選擇性安裝於[Microsoft Azure
    虛擬機器服務的虛擬機器](../Page/Microsoft_Azure_虛擬機器服務.md "wikilink")，可備份於
    Azure Backup 收納庫\[3\]。

## 備份能力

Azure Backup 可支援下列應用或工作負載的備份能力 \[4\]：

| 工作負載                                                                             | 來源機器                                                   | 備份方案                                         |
| -------------------------------------------------------------------------------- | ------------------------------------------------------ | -------------------------------------------- |
| 檔案與資料夾                                                                           | [Windows Server](../Page/Windows_Server.md "wikilink") | Azure Backup Agent、SCDPM、Azure Backup Server |
| 檔案與資料夾                                                                           | [Windows Client](../Page/Windows_Client.md "wikilink") | Azure Backup Agent、SCDPM、Azure Backup Server |
| Hyper-V 虛擬機器 (Windows)                                                           | Windows Server                                         | SCDPM、Azure Backup Server                    |
| Hyper-V 虛擬機器 (Linux)                                                             | Windows Server                                         | SCDPM、Azure Backup Server                    |
| [Microsoft SQL Server](../Page/Microsoft_SQL_Server.md "wikilink")               | Windows Server                                         | SCDPM、Azure Backup Server                    |
| [Microsoft Exchange Server](../Page/Microsoft_Exchange_Server.md "wikilink")     | Windows Server                                         | SCDPM、Azure Backup Server                    |
| [Microsoft SharePoint Server](../Page/Microsoft_SharePoint_Server.md "wikilink") | Windows Server                                         | SCDPM、Azure Backup Server                    |
| Azure 虛擬機器 (Windows)                                                             | \-                                                     | Azure Backup (VM Extension)                  |
| Azure 虛擬機器 (Linux)                                                               | \-                                                     | Azure Backup (VM Extension)                  |

## 參考

<references />

[Category:微軟](https://zh.wikipedia.org/wiki/Category:微軟 "wikilink")
[Category:Microsoft_Azure](https://zh.wikipedia.org/wiki/Category:Microsoft_Azure "wikilink")

1.  [Preparing your environment for System Center 2012 R2 Data
    Protection Manager
    (DPM)](https://technet.microsoft.com/en-us/library/hh758176.aspx)
2.  [Preparing to back up workloads using Azure Backup
    Server](https://azure.microsoft.com/en-us/documentation/articles/backup-azure-microsoft-azure-backup/)
3.  [Plan your VM backup infrastructure in
    Azure](https://azure.microsoft.com/en-us/documentation/articles/backup-azure-vms-introduction/)
4.  [Which applications and workloads can be backed
    up?](https://azure.microsoft.com/en-us/documentation/articles/backup-introduction-to-azure-backup/)