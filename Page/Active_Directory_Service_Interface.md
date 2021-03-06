> 本文内容由[Active Directory Service Interface](https://zh.wikipedia.org/wiki/Active_Directory_Service_Interface)转换而来。


**Active Directory Service Interface** (ADSI) 是一組植基於 [COM](https://zh.wikipedia.org/wiki/COM "wikilink") 技術上的應用程式開發介面，程式開發人員可以利用這些介面來連接並存取 [Active Directory](../Page/Active_Directory.md "wikilink")，並執行查詢，更新或刪除等管理功能，ADSI同時可支援以[LDAP](https://zh.wikipedia.org/wiki/LDAP "wikilink")（輕量級目錄存取協定）為主的目錄服務（例如Novell Directory Service），以及以 Windows NT 網域為主所組成的 WinNT 網域目錄。

## 介面結構

ADSI 由 COM 以及原生函式庫所組成，並封裝在 activeds.dll 檔案中，部份則被封裝在 advaip32.dll 中，以 COM 原生介面方式呈現，以提供給 C/C++ 程式語言透過 COM 介面來取用，不過由於所有的原生介面均支援 COM Automation，因此 Visual Basic 或是 .NET Framework 的語言也可以利用 COM Interop 能力存取 ADSI 中的介面。

### 原生介面 (Native interfaces)

activeds.dll 中封裝了幾個 ADSI 中最核心的介面：

  - **IADs**：作為所有 Active Directory 物件最頂層的介面，擁有最基礎的功能，
  - **IADsContainer**：作為所有可收納 Active Directory 物件的收納器 (Container) 最頂層的介面，具有收納器的基礎功能。
  - **IADsOpenDSObject**：連接 Active Directory 之用（它只有 OpenDSObject() 一個方法），同時它會快取住用來連接的安全資訊內容。
  - **IADsNamespace**：由目錄服務提供者 (directory service provider) 提供，用來識別目錄結構的命名空間之用。

activeds.dll 亦提供了幾個依物件不同而實作的介面，像是：

  - **IADsComputer**：提供目錄服務中的電腦 (computer) 物件。
  - **IADsDomain**：提供目錄服務中的網域 (domain) 物件。
  - **IADsUser**：提供目錄服務中的使用者 (user) 物件。
  - **IADsGroup**：提供目錄服務中的使用者群組 (group) 物件。
  - **IADsOU**：提供目錄服務中的組織單元 (organization unit) 物件。
  - **IADsCollection**：提供目錄服務物件集合。

在使用 ADSI 之時，有時會需要一些工具型功能，像是 DOMAIN\\user 和 User Principal Name 間的轉換，或是取得系統資訊等，ADSI 也提供了這類的介面：

  - **IADsNameTranslate**：在目錄服務中在不同的名稱間轉換。
  - **IADsWinNTSystemInfo**：在目錄服務中取得 Windows NT Directory Service 系統資訊。
  - **IADsADSystemInfo**：在目錄服務中取得 LDAP Directory Service 系統資訊。
  - **IADsPathname**：剖析 X.500 名稱與路徑。

這些介面多是使用 C/C++ 程式語言來存取，若是使用 VB 或是 Scripting Language 時，則可以使用另外的方法來存取。

``` vb
' Get user object from Active Directory.
Dim mach As IADsContainer
Dim usr as IADsUser

On Error GoTo Cleanup
Set mach = GetObject("WinNT://MyMachine,Computer")
Set usr = mach.Create("user","jeffsmith")
usr.SetInfo

Cleanup:
    If(Err.Number<>0) Then
        MsgBox("An error has occurred. " & Err.Number)
    End If
    Set mach = Nothing
    Set usr = Nothing
```

``` cpp
// binding Active Directory using C++ and native interface.
IADs *pObject;
HRESULT hr;

// Initialize COM.
CoInitialize(NULL);

hr = ADsGetObject(L"LDAP://CN=jeffsmith,DC=fabrikam,DC=com",
        IID_IADs,
        (void**) &pObject);
if(SUCCEEDED(hr))
{
    // Use the object.

    // Release the object.
    pObject->Release()
}

// Uninitialize COM.
CoUninitialize();
```

### 函式

ADSI 除了介面以外，也將部份功能使用函式方式顯露，以簡化呼叫原生介面需要處理的工作，較重要且經常被使用的有：

  - **ADsOpenDSObject()**，封裝取得 IADs 或 IADsContainer 等物件的工作。
  - **ADsGetObject()**，封裝利用已開啟的 Active Directory Session 取得物件的工作。
  - **ADsGetLastError()**，取得在 ADSI 作業中，最後一個引發的錯誤。
  - **AllocADsMem()**, **FreeADsMem()**, **AllocADsStr()**, **FreeADsStr()**，配置與釋放 ADSI 使用的資源。
  - **ADsBuildEnumerator()**, **ADsEnumerateNext()**, **ADsFreeEnumerator()**：處理 ADSI 物件的列舉工作。

下列的例子，是使用 ADsOpenDSObject() 取得 IADs 物件的範例程式碼：

``` cpp
IADs *pObject;
LPWSTR szUsername = NULL;
LPWSTR szPassword = NULL
HRESULT hr;

// Insert code to securely retrieve the username and password.

hr = ADsOpenObject(L"LDAP://CN=Jeff,DC=Fabrikam,DC=com",
                   "jeffsmith",
                   "etercespot",
                   ADS_SECURE_AUTHENTICATION,
                   IID_IADs,
                   (void**) &pObject);
```

### .NET Framework 原生介面

在 [.NET Framework](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink") 中，另外提供了一個 .NET 專用的 ADSI 介面程式庫 System.DirectoryService.dll，程式開發人員可以加入此程式庫的參考來取得 ADSI 的功能，在這個原生類別庫中，封裝了兩個類別，作為存取 Active Directory 的入口之用。

  - **DirectoryEntry**：此類別封裝了 IADs 以及 IADsContainer 等原生介面，用來存取 Active Directory 的物件資料，以及 Schema 封裝的資訊等等。
  - **DirectorySearcher**：此類別封裝了 IDirectorySearch 介面，作為搜尋 Active Directory 的主要工具，並使用 SearchResult 物件封裝搜尋結果，讓 .NET 開發人員可以簡化處理搜尋結果的工作。

截至 .NET Framework 3.5 為止，ADSI 在 Managed Class Library 中有四個命名空間：

  - **System.DirectoryServices**：原生的 ADSI Managed 介面，封裝 DirectoryEntry 和 DirectorySearcher 與工具類別。
  - **System.DirectoryServices.AccountManagement**：封裝對 IADsUser, IADsComputer, IADsGroup 等介面，簡化處理物件的工具。
  - **System.DirectoryServices.ActiveDirectory**：封裝對 Active Directory 結構物件的工具。
  - **System.DirectoryServices.Protocol**：封裝對 LDAP 協定與目錄服務通訊的工具與基礎類別。

下列為使用 C\# 存取 DirectoryEntry 的範例程式碼：

``` csharp
DirectoryEntry ent = new DirectoryEntry();
DirectoryEntry ou = ent.Children.Find("OU=Consulting");

// Use the Add method to add a user to an organizational unit.
DirectoryEntry usr = ou.Children.Add("CN=New User","user");
// Set the samAccountName, then commit changes to the directory.
usr.Properties["samAccountName"].Value = "newuser";
usr.CommitChanges();
```

## 目錄服務提供者 (directory service provider)

ADSI 因為是使用了 LDAP 以及開放式目錄等標準，因此只要目錄服務的平台是以開放式目錄標準實作 IADsNamespace 與其他目錄服務提供者介面時，即可由 ADSI 來支援，目前 ADSI 有五種提供者：

  - ADSI LDAP Provider：Active Directory 官方主要的支援介面，連接字串使用 <LDAP://> 為主。
  - ADSI WinNT Provider：以 Windows NT 為主的支援介面，連接字串使用 WinNT:// 為主。
  - ADSI NDS Provider：支援 Novell Directory Service，連接字串使用 NDS:// 為主。
  - ADSI NWCOMPAT Provider：支援 Novell Netware 3.x 的網路服務，連接字串使用 NWCOMPAT:// 為主。
  - ADSI IIS Provider：支援 IIS 內部的提供者，連接字串以 IIS:// 為主，用於存取 IIS Metabase。

## OLE DB Provider for Directory Services

除了 ADSI 原生介面外，微軟也為了 SQL Server 或是 ADO 應用程式開發人員發展了可使用 ADO 來存取 Active Directory 的驅動程式，此驅動程式使用 OLE DB 來開發，並且使用類似 SQL 指令的方式來存取 Active Directory，此驅動程式稱為 OLE DB Provider for Directory Service，其 COM 的 Prog ID 為 **ADsDSOObject**。

下例為使用 ADO 存取 Active Directory 的範例程式碼：

``` vb
Dim Con As New Connection
Dim rs As New Recordset
Dim command As New Command
Dim usr As IADsUser

' Replace department for all users in OU=sales.
Set con = Server.CreateObject("ADODB.Connection")
con.Provider = "ADsDSOObject"

Set command = CreateObject("ADODB.Command")
Set command.ActiveConnection = con

command.CommandText = "SELECT AdsPath, cn FROM 'LDAP://OU=Sales,DC=Fabrikam,DC=com' WHERE objectClass = 'user'"

command.Properties("searchscope") = ADS_SCOPE_ONELEVEL
Set rs = command.Execute
While Not rs.EOF
    Set usr = GetObject(rs.Fields("AdsPath").Value)
    usr.Put "department", "1001"
    usr.SetInfo
    rs.MoveNext
Wend
```

下列指令為使用 SQL Server 查詢來合併存取 Active Directory 的指令碼\[1\]：

``` sql

-- create a linked server to active directory interface
EXEC sp_addlinkedserver 'ADSI', 'Active Directory Services 2.5', 'ADSDSOObject', 'adsdatasource'

-- configure SQL Server to allow ad-hoc query and openquery statement.
EXEC sp_configure 'show advanced options', 1
reconfigure with override

EXEC sp_configure 'Ad Hoc Distributed Queries', 1
reconfigure

-- execute query via OpenQuery() statement
SELECT * FROM OpenQuery(ADSI, 'SELECT * FROM ''LDAP://DC=kodyaz,DC=com'' WHERE objectCategory=''user'' ')

SELECT * FROM OpenQuery(ADSI, 'SELECT mail, displayName, userPrincipalName FROM ''LDAP://DC=kodyaz,DC=com'' WHERE objectCategory=''user'' ')
```

## 開發 Directory-Enabled 應用程式時可用的工具

由於 ADSI 和 Active Directory 的特性，開發人員若沒有使用適當的工具時，很難發展與目錄服務連結 (directory-enabled) 的應用程式，因此微軟為 Active Directory 提供了兩種工具：

  - **Active Directory Explorer**：由 Sysinternals 團隊所開發\[2\]，現已併入 Microsoft TechNet 團隊中，可用來瀏覽 AD 網域或樹系的 LDAP 階層字串，以及物件的屬性資料。
  - **ADSIEdit**：在 Windows 2000 和 Windows Server 2003 時，由 Resource Kit Support Tools 安裝包提供，到了 Windows Server 2008 時，則內建在系統中\[3\]。

## 參考資料

內容參考：

<div class="references-small">

<references />

</div>

文章參考：

1.  \[<http://msdn.microsoft.com/en-us/library/aa772170(VS.85>).aspx MSDN Library: Active Directory Service Interface\]
2.  [Directory Service in .NET Framework](http://msdn.microsoft.com/en-us/library/ms180826.aspx)

[Category:Windows_API](https://zh.wikipedia.org/wiki/Category:Windows_API "wikilink")

1.  [Running Active Directory Services Queries Using MS SQL Server OPENQUERY Command](http://www.kodyaz.com/articles/active-directory-services-queries-using-openquery.aspx)
2.  [AD Explorer](http://technet.microsoft.com/en-us/sysinternals/bb963907.aspx)
3.  [Adsiedit Overview: Active Directory](http://technet.microsoft.com/en-us/library/cc773354.aspx)