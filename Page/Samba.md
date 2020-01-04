> 本文内容由[Samba](https://zh.wikipedia.org/wiki/Samba)转换而来。


，是種用來讓[UNIX](../Page/UNIX.md "wikilink")系列的[作業系統與](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[微軟](https://zh.wikipedia.org/wiki/微軟 "wikilink")[Windows作業系統的](https://zh.wikipedia.org/wiki/Windows "wikilink")[SMB/CIFS](../Page/伺服器訊息區塊.md "wikilink")（Server Message Block/Common Internet File System）網路協定做連結的[自由軟體](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")。第三版不僅可存取及分享SMB的資料夾及印表機，本身還可以整合入Windows Server的[網域](https://zh.wikipedia.org/wiki/網域 "wikilink")，扮演為網域控制站（Domain Controller）以及加入[Active Directory成員](https://zh.wikipedia.org/wiki/活動目錄 "wikilink")。簡而言之，此軟體在Windows與UNIX系列操作系统之間搭起一座橋樑，讓兩者的資源可互通有無。

## 歷史

[安德魯·垂鳩](https://zh.wikipedia.org/wiki/安德魯·垂鳩 "wikilink")（Andrew Tridgell）於1992年在[澳洲國立大學](https://zh.wikipedia.org/wiki/澳洲國立大學 "wikilink")（ANU）開發了第一版的Samba Unix軟件。

## 功能

Samba是許多服務以及協議的實現，其包括[TCP/IP上的](https://zh.wikipedia.org/wiki/TCP/IP "wikilink")[NetBIOS](../Page/NetBIOS.md "wikilink")（[NBT](https://zh.wikipedia.org/wiki/NetBIOS_over_TCP/IP "wikilink")）、SMB、[CIFS](https://zh.wikipedia.org/wiki/CIFS "wikilink")（SMB的增強版本）、[DCE/RPC或者更具體來說](https://zh.wikipedia.org/wiki/DCE/RPC "wikilink")[MSRPC](https://zh.wikipedia.org/wiki/MSRPC "wikilink")（-{A|zh-hans:網絡鄰居;zh-hant:網路芳鄰}-協議套件）、一種[WINS](../Page/WINS.md "wikilink")伺服器（也被稱作NetBIOS Name Server（NBNS））、NT域協議套件（包括NT Domain Logons、Secure Accounts Manager（SAM）數據庫、Local Security Authority（LSA）服務、NT-style打印服務（SPOOLSS）、[NTLM以及近來出現的包括一種改進的](https://zh.wikipedia.org/wiki/NTLM "wikilink")[Kerberos](../Page/Kerberos.md "wikilink")協議與改進的[輕型目錄訪問協議](https://zh.wikipedia.org/wiki/輕型目錄訪問協議 "wikilink")（[LDAP](https://zh.wikipedia.org/wiki/LDAP "wikilink")）在內的Active Directory Logon服務）。以上這些服務以及協議經常被錯誤地歸類為NetBIOS或者SMB。Samba也能夠用於共享打印機。

Samba能夠為選定的Unix目錄（包括所有子目錄）建立網絡共享。該功能使得Windows用戶可以像訪問普通Windows下的文件夾那樣來通過網絡訪問這些Unix目錄。

## 相關軟件

  - [Samba TNG](https://zh.wikipedia.org/wiki/Samba_TNG "wikilink") Samba的一個分支，其在NT域服務關鍵部分的結構及實現具有明顯的不同。
  - [LinNeighborhood](https://zh.wikipedia.org/wiki/LinNeighborhood "wikilink")
  - [LDAP Account Manager](https://zh.wikipedia.org/wiki/LDAP_Account_Manager "wikilink")
  - [Kerberos protocol](https://zh.wikipedia.org/wiki/Kerberos_protocol "wikilink")
  - [Smb4K](https://zh.wikipedia.org/wiki/Smb4K "wikilink") SMB/CIFS Share Browser for [KDE](../Page/KDE.md "wikilink")。
  - [Smbldap-Tools用戶](https://zh.wikipedia.org/wiki/Smbldap-Tools "wikilink")／群管理工具

## 參見

  - [AppleTalk](https://zh.wikipedia.org/wiki/AppleTalk "wikilink")
  - [网络文件系统](../Page/网络文件系统.md "wikilink")
  - [Remote File System](https://zh.wikipedia.org/wiki/Remote_File_System "wikilink")
  - [伺服器訊息區塊](../Page/伺服器訊息區塊.md "wikilink")
  - [NBNS](https://zh.wikipedia.org/wiki/NBNS "wikilink")
  - [Microsoft Windows Services for UNIX](https://zh.wikipedia.org/wiki/Microsoft_Windows_Services_for_UNIX "wikilink")

## 参考文献

## 外部連結

  - [Samba官方網站](http://www.samba.org/)
  - [10 years of Samba\!](http://www.samba.org/samba/docs/10years.html)
  - [Samba是怎樣編寫的](http://samba.org/ftp/tridge/misc/french_cafe.txt)
  - [Samba "how to"](https://web.archive.org/web/20080314133602/http://calomel.org/samba.html) and [Samba Optimization and Speed Tuning](https://web.archive.org/web/20080328223953/http://calomel.org/samba_optimize.html)
  - [Using Samba 2nd ed.](https://archive.is/20130112041920/http://www.bibsyst.no/samba/docs/using_samba/toc.html)，book licensed under the [GFDL](https://zh.wikipedia.org/wiki/GFDL "wikilink")
  - [Samba-3 by Example](http://www.informit.com/content/images/0131472216/downloads/0131472216_book.pdf)，book licensed under the [OPL](https://zh.wikipedia.org/wiki/Open_Publication_License "wikilink")
  - [Setting up Samba](https://web.archive.org/web/20080522080223/http://www.linux.ie/articles/tutorials/samba.php) Samba教程
  - [File and Printer sharing](https://web.archive.org/web/20080624200655/http://showmedo.com/videos/series?name=LinuxCadieuxSamba)在Suse Linux上使用Samba
  - [Configuring Windows Vista to map drives to Samba Shares](https://web.archive.org/web/20080222082252/http://nobluescreens.com/solutions/samba_vista.php)
  - [A history of Samba, written in 1994](http://www.rxn.com/services/faq/smb/samba.history.txt)，作者Andrew Tridgell
  - [Samba 4 - Active Directory](http://samba.org/samba/news/articles/abartlet_thesis.pdf)，作者Andrew Bartlett
  - [SSH Tunneling Samba on Windows](http://www.cs.toronto.edu/support/remote_ssh_tunneling_windows_samba.html)
  - [一個Samba伺服器的加密解決方案](http://www.packetgeneral.com)
  - [\#samba](irc://irc.freenode.net/samba) on freenode

[Category:開放源代碼](https://zh.wikipedia.org/wiki/Category:開放源代碼 "wikilink") [Category:文件传输协议](https://zh.wikipedia.org/wiki/Category:文件传输协议 "wikilink")