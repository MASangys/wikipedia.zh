，是種用來讓[UNIX系列的](../Page/UNIX.md "wikilink")[作業系統與](../Page/作業系統.md "wikilink")[微軟](../Page/微軟.md "wikilink")[Windows作業系統的](../Page/Windows.md "wikilink")[SMB/CIFS](../Page/伺服器訊息區塊.md "wikilink")（Server
Message Block/Common Internet File
System）網路協定做連結的[自由軟體](../Page/自由軟體.md "wikilink")。第三版不僅可存取及分享SMB的資料夾及印表機，本身還可以整合入Windows
Server的[網域](../Page/網域.md "wikilink")，扮演為網域控制站（Domain
Controller）以及加入[Active
Directory成員](../Page/活動目錄.md "wikilink")。簡而言之，此軟體在Windows與UNIX系列操作系统之間搭起一座橋樑，讓兩者的資源可互通有無。

## 歷史

[安德魯·垂鳩](../Page/安德魯·垂鳩.md "wikilink")（Andrew
Tridgell）於1992年在[澳洲國立大學](../Page/澳洲國立大學.md "wikilink")（ANU）開發了第一版的Samba
Unix軟件。

## 功能

Samba是許多服務以及協議的實現，其包括[TCP/IP上的](../Page/TCP/IP.md "wikilink")[NetBIOS](../Page/NetBIOS.md "wikilink")（[NBT](../Page/NetBIOS_over_TCP/IP.md "wikilink")）、SMB、[CIFS](../Page/CIFS.md "wikilink")（SMB的增強版本）、[DCE/RPC或者更具體來說](../Page/DCE/RPC.md "wikilink")[MSRPC](../Page/MSRPC.md "wikilink")（-{A|zh-hans:網絡鄰居;zh-hant:網路芳鄰}-協議套件）、一種[WINS伺服器](../Page/WINS.md "wikilink")（也被稱作NetBIOS
Name Server（NBNS））、NT域協議套件（包括NT Domain Logons、Secure Accounts
Manager（SAM）數據庫、Local Security
Authority（LSA）服務、NT-style打印服務（SPOOLSS）、[NTLM以及近來出現的包括一種改進的](../Page/NTLM.md "wikilink")[Kerberos協議與改進的](../Page/Kerberos.md "wikilink")[輕型目錄訪問協議](../Page/輕型目錄訪問協議.md "wikilink")（[LDAP](../Page/LDAP.md "wikilink")）在內的Active
Directory Logon服務）。以上這些服務以及協議經常被錯誤地歸類為NetBIOS或者SMB。Samba也能夠用於共享打印機。

Samba能夠為選定的Unix目錄（包括所有子目錄）建立網絡共享。該功能使得Windows用戶可以像訪問普通Windows下的文件夾那樣來通過網絡訪問這些Unix目錄。

## 相關軟件

  - [Samba TNG](../Page/Samba_TNG.md "wikilink")
    Samba的一個分支，其在NT域服務關鍵部分的結構及實現具有明顯的不同。
  - [LinNeighborhood](../Page/LinNeighborhood.md "wikilink")
  - [LDAP Account Manager](../Page/LDAP_Account_Manager.md "wikilink")
  - [Kerberos protocol](../Page/Kerberos_protocol.md "wikilink")
  - [Smb4K](../Page/Smb4K.md "wikilink") SMB/CIFS Share Browser for
    [KDE](../Page/KDE.md "wikilink")。
  - [Smbldap-Tools用戶](../Page/Smbldap-Tools.md "wikilink")／群管理工具

## 參見

  - [AppleTalk](../Page/AppleTalk.md "wikilink")
  - [网络文件系统](../Page/网络文件系统.md "wikilink")
  - [Remote File System](../Page/Remote_File_System.md "wikilink")
  - [伺服器訊息區塊](../Page/伺服器訊息區塊.md "wikilink")
  - [NBNS](../Page/NBNS.md "wikilink")
  - [Microsoft Windows Services for
    UNIX](../Page/Microsoft_Windows_Services_for_UNIX.md "wikilink")

## 参考文献

## 外部連結

  - [Samba官方網站](http://www.samba.org/)
  - [10 years of Samba\!](http://www.samba.org/samba/docs/10years.html)
  - [Samba是怎樣編寫的](http://samba.org/ftp/tridge/misc/french_cafe.txt)
  - [Samba "how to"](https://calomel.org/samba.html) and [Samba
    Optimization and Speed
    Tuning](https://calomel.org/samba_optimize.html)
  - [Using Samba 2nd
    ed.](https://archive.is/20130112041920/http://www.bibsyst.no/samba/docs/using_samba/toc.html)，book
    licensed under the [GFDL](../Page/GFDL.md "wikilink")
  - [Samba-3 by
    Example](http://www.informit.com/content/images/0131472216/downloads/0131472216_book.pdf)，book
    licensed under the
    [OPL](../Page/Open_Publication_License.md "wikilink")
  - [Setting up
    Samba](https://web.archive.org/web/20080522080223/http://www.linux.ie/articles/tutorials/samba.php)
    Samba教程
  - [File and Printer
    sharing](https://web.archive.org/web/20080624200655/http://showmedo.com/videos/series?name=LinuxCadieuxSamba)在Suse
    Linux上使用Samba
  - [Configuring Windows Vista to map drives to Samba
    Shares](https://web.archive.org/web/20080222082252/http://nobluescreens.com/solutions/samba_vista.php)
  - [A history of Samba, written
    in 1994](http://www.rxn.com/services/faq/smb/samba.history.txt)，作者Andrew
    Tridgell
  - [Samba 4 - Active
    Directory](http://samba.org/samba/news/articles/abartlet_thesis.pdf)，作者Andrew
    Bartlett
  - [SSH Tunneling Samba on
    Windows](http://www.cs.toronto.edu/support/remote_ssh_tunneling_windows_samba.html)
  - [一個Samba伺服器的加密解決方案](http://www.packetgeneral.com)
  - [\#samba](irc://irc.freenode.net/samba) on freenode

[Category:開放源代碼](https://zh.wikipedia.org/wiki/Category:開放源代碼 "wikilink")
[Category:文件传输协议](https://zh.wikipedia.org/wiki/Category:文件传输协议 "wikilink")