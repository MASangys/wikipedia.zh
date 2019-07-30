**ipconfig**是[微軟](https://zh.wikipedia.org/wiki/微軟 "wikilink")[作業系統的電腦上用來控制](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[網路連線的一個](https://zh.wikipedia.org/wiki/電腦網路 "wikilink")[命令列工具](https://zh.wikipedia.org/wiki/命令列 "wikilink")。它的主要功用，包括用來顯示現時網路連線的設定（/all參數），或透過/release參數來釋放取得的ip位置，和透過 /renew 來重新獲取ip位置的分配。

在Win9x系統上，過去亦有一個[GUI版本的](https://zh.wikipedia.org/wiki/GUI "wikilink")[winipcfg](https://zh.wikipedia.org/wiki/winipcfg "wikilink")，但在Win2K之後即不再復見。後來，微軟在他們的網頁提供了wntipcfg供用戶下載。此外，本命令其實脫胎自Unix的[ifconfig](https://zh.wikipedia.org/wiki/ifconfig "wikilink")。

## 參數表

  - /? : 顯示幫助信息
    /all : 顯示現時所有網路連線的設定
    /release : 釋放某一個網路上的IP位置
    /renew : 更新某一個網路上的IP位置
    /flushdns : 把DNS解析器的暫存內容全數刪除

## 結果範例

Windows 2000 IP Configuration

``` doscon
 C:\>ipconfig /all
 Windows 2000 IP Configuration
 Host Name . . . . . . . . . . . . : wikipedia
 Primary DNS Suffix . . . . . . . :
 Node Type . . . . . . . . . . . . : Hybrid
 IP Routing Enabled. . . . . . . . : No
 WINS Proxy Enabled. . . . . . . . : No
 DNS Suffix Search List. . . . . . : wikipedia.org
 Ethernet adapter Local Area Connection 2:
 Connection-specific DNS Suffix . : wikipedia.org
 Description . . . . . . . . . . . : Intel(R) PRO/100 VE Netwon #3
 Physical Address. . . . . . . . . : 00-D0-B7-A6-F1-11
 DHCP Enabled. . . . . . . . . . . : Yes
 Autoconfiguration Enabled . . . . : Yes
 IP Address. . . . . . . . . . . . : 192.168.0.100
 Subnet Mask . . . . . . . . . . . : 255.255.0.0
 Default Gateway . . . . . . . . . : 192.168.0.3
 DHCP Server . . . . . . . . . . . : 192.168.0.1
 DNS Servers . . . . . . . . . . . : 192.168.0.1
 Primary WINS Server . . . . . . . : 192.168.0.75
 what is lease. . . . . . . . . . : 27 May 2004 09:04:06
 Lease Expires . . . . . . . . . . : 30 May 2004 09:04:06
 C:\>ipconfig /release
 Windows 2000 IP Configuration
 IP address successfully released for adapter "Local Area Connection 2"
 C:\>ipconfig /renew
 Windows 2000 IP Configuration
 Ethernet adapter Local Area Connection 2:
 Connection-specific DNS Suffix . : wikipedia.org
 IP Address. . . . . . . . . . . . : 192.168.0.100
 Subnet Mask . . . . . . . . . . . : 255.255.0.0
 Default Gateway . . . . . . . . . : 192.168.0.1
```

## 參看

  - [ifconfig](https://zh.wikipedia.org/wiki/ifconfig "wikilink")：在[Linux](../Page/Linux.md "wikilink")/[BSD](../Page/BSD.md "wikilink")與ipconfig等同的命令。
  - [wntipcfg](http://www.windowsnetworking.com/articles_tutorials/wntipcfg.html)
  - [wntipcfg下載網址（更新）](https://web.archive.org/web/20070122104523/http://www.microsoft.com/downloads/details.aspx?displaylang=en&FamilyID=00A974B4-0BFA-4065-8081-BBAEBF2A5CB6)

[Category:Windows通訊服務](https://zh.wikipedia.org/wiki/Category:Windows通訊服務 "wikilink")