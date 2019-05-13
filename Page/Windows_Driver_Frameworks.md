**Windows Driver Frameworks**（Windows驱动程序框架，簡稱**WDF**，前称**Windows Driver
Foundation**），是微軟公司所提供的驅動程式開發技術的集合，包括Kernel-Mode Driver
Framework（核心模式驅動程式架構，[KMDF](../Page/KMDF.md "wikilink")）、User-Mode
Driver
Framework（使用者模式驅動程式架構，[UMDF](../Page/UMDF.md "wikilink")）以及PREfast
plug-in for
Drivers（[PFD](../Page/PREFast_for_Drivers.md "wikilink")），目的是要改善目前Windows平台的驅動程式品質，可支援[Windows
2000](../Page/Windows_2000.md "wikilink")、[Windows
XP](../Page/Windows_XP.md "wikilink")、[Windows Server
2003](../Page/Windows_Server_2003.md "wikilink")、[Windows
Vista](../Page/Windows_Vista.md "wikilink")、[Windows Server
2008和](../Page/Windows_Server_2008.md "wikilink")[Windows
7](../Page/Windows_7.md "wikilink")，以及更新的作業系統上之最新驅動程式架構。WDF架構提供了非同步輸入輸出、分層式驅動程式、隨插即用（PNP）、電源管理（Power
Manager），以及視窗管理規範（Windows Management Instrumentation，WMI）等功能。

## User-Mode Driver Framework

用户模式驱动程序框架（User-Mode Driver Framework）是内核模式驱动程序框架（Kernel-Mode Driver
Framework）的子集合，提供即插即用（PNP）、电源管理（Power Manager）、异步输入输出等功能。

## Kernel-Mode Driver Framework

Kernel-Mode Driver
Framework（核心模式驅動程式架構，簡稱KMDF），是美國微軟公司推出的視窗驅動程式基礎（Windows
Driver Foundation）之一，建構Windows XP與Windows Server
2003的核心模式（Kernel-Mode）驅動程式所需的基本功能，包括對隨插即用（PNP）、電源管理（Power
Manager）、I/O佇列、直接記憶體存取（DMA）、Windows Management
Instrumentation（WMI）和同步處理等的完整支援。KMDF的設計並不能用來取代WDM，它提供「Skeletal
WDM」（一個骨架）建置來替代WDM；目前，KMDF並不支援匯流排篩選驅動程式（Bus Filter Driver）。

## PREfast

PREfast（Prefast.exe）是靜態的原始碼分析工具（static source code analysis
tool），可偵測原始程式碼中不易用一般編譯器找到的特定類型錯誤，目前已整合至Visual Studio
2005 Team Suite中，使用時只要設定‘Enable Code Analysis For C/C++’為Yes即可。

### PREfast的工作

  - 變數未初始化

<!-- end list -->

``` cpp
 void init() {
     int a;
     int b;
     b = a;
 }
```

  - 運算元優先權的問題

<!-- end list -->

``` cpp
 void priority() {
     int a = 1;
     int b = 1;
     int c = 1;
     if(a & b == c)
        return ;
 }
```

  - 記憶體溢位問題

<!-- end list -->

``` cpp
 void overrun() {
      char buf[100];
     char buf2[200];
     int  i = 100;

     sprintf(buf, "size%d" , i);
     strcpy(buf, buf2);
 }
```

## Kernel-Mode Code Signing

微軟提供測試時期的類別簽章認證，可以讓使用者產生所需要的CER檔與CAT檔。

首先，使用文字編輯器建立一個 .cdf 檔案，包含要加入目錄的檔案及其屬性的清單。

``` ini
 [CatalogHeader]
 Name=Good.cat
 PublicVersion=0x0000001
 EncodingType=0x00010001
 CATATTR1=0x10010001:OSAttr:2:6.0

 [CatalogFiles]
 ...
```

  - 產生一個cer檔

<!-- end list -->

``` dos
 makecert -pe -ss PrivateCertStore -n CN=Contoso.com(Test) ContosoTest.cer
```

`makecert.exe` 可制作cer格式的证书，即[X.509证书](../Page/X.509.md "wikilink")。

  - 產生一個cat檔

<!-- end list -->

``` dos
 MakeCat -v Good.cdf
 Signability.exe /auto /cat /driver:package_directory /os:512
```

  - 產生cat檔簽證

<!-- end list -->

``` dos
 SignTool sign /v /ac CrossCertificateFile /s SPCCertificateStore /n SPCSubjectName /t
 http://timestamp.verisign.com/scripts/timestamp.dll Good.cat
```

  - 安裝簽證過的cat檔

使用`CryptCATAdminAddCatalog` API

  - 驗證

<!-- end list -->

``` dos
 Signtool verify /kp /c tstamd64.cat toaster.sys
```

## 相關條目

  - [Windows Driver Model](../Page/Windows_Driver_Model.md "wikilink")
  - [KMDF](../Page/KMDF.md "wikilink")
  - [UMDF](../Page/UMDF.md "wikilink")

## 外部連結

  - [Kernel-Mode Code Signing
    Walkthrough](http://www.microsoft.com/taiwan/whdc/winlogo/drvsign/kmcs_walkthrough.mspx)
  - [Windows Driver Foundation
    Homepage](https://web.archive.org/web/20080206174045/http://www.microsoft.com/whdc/driver/wdf/default.mspx)
  - [Windows Driver
    Kit](https://web.archive.org/web/20061205134139/http://www.microsoft.com/whdc/devtools/wdk/default.mspx)
  - [1](https://web.archive.org/web/20070730233021/http://www.osronline.com/)
    OSR Online, including many articles about WDF, KMDF, and Windows
    driver development.
  - [Introducing Windows Driver
    Framework](http://www.wd-3.com/archive/FrameworkIntro.htm)，written
    by well-known Windows driver developer, Walter Oney.
  - [Building and deploying a basic WDF Kernel Mode
    Driver](https://web.archive.org/web/20060422192541/http://www.codeproject.com/system/wdf_kmdf_basic.asp)，CodeProject
  - [Developing a WDF USB Kernel Mode Driver for the OSR USB
    FX2](https://web.archive.org/web/20071014004348/http://www.codeproject.com/system/kmdf_osr_usb_fx2.asp)，CodeProject

[Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink")
[Category:驱动程序](https://zh.wikipedia.org/wiki/Category:驱动程序 "wikilink")