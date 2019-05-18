**Listaller**是一個[自由的電腦軟體安裝系統](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")（類似[軟體包管理系統](https://zh.wikipedia.org/wiki/軟體包管理系統 "wikilink")），目標是讓創建可在所有的[Linux發行版上安裝的軟體包變得容易](https://zh.wikipedia.org/wiki/Linux發行版 "wikilink")，它也提供了許多工具及API讓Linux上的軟體管理更加友善。

## 歷史

2007年12月由[freedesktop.org的其中一個開發者](https://zh.wikipedia.org/wiki/freedesktop.org "wikilink")，Matthias
Klumpp，開始了這個專案，希望使用通用的使用者介面管理所有種類的Linux軟體（而不論其如何安裝）的實驗性專案。
因此，Listaller擁有可管理[Autopackage](../Page/Autopackage.md "wikilink")，LOKI，[Mojo](http://icculus.org/mojosetup/)以及原生發行版軟體包的後端。原始的專案提供了一個使用者介面以管理所有已安裝的軟體包。並使用它自己的抽象層與發行版原生的軟體包管理系統進行溝通，但之後被[PackageKit取代](../Page/PackageKit.md "wikilink")\[1\]。
Listaller也提供了一個跨發行版的軟體安裝格式，以便創建的軟體包能在大多數的發行版上運行。Listaller的安裝程式部份也可以用來協助安裝[Autopackage的軟體包](../Page/Autopackage.md "wikilink")。
最早期的版本是用[Object Pascal寫成的](../Page/Object_Pascal.md "wikilink")。

雖然這個專案一開始是實驗性的，但很快就變成[Autopackage及Mojo的競爭對手](../Page/Autopackage.md "wikilink")。
到2011為止，Listaller仍未有穩定的釋出版。而因為[AppStream基本上已經完成了Listaller原先大多數的目標](../Page/AppStream.md "wikilink")，所以作者決定把Listaller變成一個單純的軟體安裝程式而不是完整的軟體管理器，並且加入[AppStream專案](../Page/AppStream.md "wikilink")。
因為Pascal並不被認為是一個理想的可與其他專岸合作的語言，而該專案又已經花了許多時間在Pascal與其他第三方函式庫的綁定，所以Listaller便以[Vala重寫](../Page/Vala.md "wikilink")，並且目標變為與AppStream及PackageKit進行無縫整合。也因此把通用軟體管理器的部份移除，而該專案現在的目標是創造一個跨發行版的二進制Linux檔案格式。

## 目的

Listaller是用來安裝那些二進制，或是預編譯的非核心應用程式（如[文書處理器](https://zh.wikipedia.org/wiki/文書處理器 "wikilink")、[網頁瀏覽器](https://zh.wikipedia.org/wiki/網頁瀏覽器 "wikilink")、或是[電腦遊戲](https://zh.wikipedia.org/wiki/電腦遊戲 "wikilink")），而不是核心[函式庫或是如](../Page/函式庫.md "wikilink")[作業系統殼層等的核心應用程式](../Page/殼層.md "wikilink")。Listaller因為一些安全問題而不提供安裝系統函式庫。
Listaller使用自己的軟體包格式，稱為IPK軟體包（為**I**nstallation
**p**ac**k**age的縮寫），是以[LZMA方式壓縮的](../Page/LZMA.md "wikilink")[Tar檔](../Page/Tar.md "wikilink")。

IPK軟體包只包含了小型的配置檔案來修改安裝過程
。並且不提供安裝腳本。所有的安裝過程都由Listaller內部預置的例行程序控制，但必要時也可以由第三方程式來修改安裝過程。

Listaller的重要性在於它可以跟桌面環境、已存在的軟體管理工具以及發行版整合。因此，它預設提供了幾個整合的組件，可以使用任何支援[PackageKit或](../Page/PackageKit.md "wikilink")[AppStream的第三方軟體管理利用Listaller安裝的軟體](../Page/AppStream.md "wikilink")。

所有已安裝的第三方工具預設會在[沙盒裡運行](../Page/沙盒_\(電腦安全\).md "wikilink")\[2\]。

那些使用Listaller的軟體包也必須重新定位，這表示每個軟體包必須被安裝到不同的目錄中。這可以讓Listaller可以安裝軟體包在非root用戶的家目錄下，雖然這個模式很容易啟用，但並不鼓勵使用這種方式安裝。Listaller開發工具提供了文件以及必須的工具給應用程式開發者，讓他們可以將軟體重新定位。

## Listaller和Autopackage的關係

2010年8月時兩個專案宣佈將會合併\[3\]。合併後，[Autopackage放棄了自己的二進制軟體包格式以及所有安裝Autopackage包的使用者介面](../Page/Autopackage.md "wikilink")。
Autopackage所開發的工具，像是BinReloc（用來重新定位應用程式）或是APBuild，現在都以Listaller專案的一部份進行開發。
Autopackage決定要併入Listaller的原因是，兩個專案都極度缺乏開發者，所以他們決定合併。

## 整合

[KDE以](../Page/KDE.md "wikilink")[Apper的形式對Listaller提供支援](../Page/Apper.md "wikilink")，雖然開發者需要在編譯時對其進行調整。而[GNOME則是將其作為GNOME](../Page/GNOME.md "wikilink")-PackageKit套裝的一部份進行開發。
理論上，任何可以運行PackageKit（版本號須大於0.8.6）的發行版都應該要對Listaller提供支援。
[Ubuntu宣佈他們將不會使用Listaller作為Ubuntu](../Page/Ubuntu.md "wikilink")
Phone上的第三方軟體安裝工具，而會開發一個Ubuntu特有的解決方案\[4\]。

## 參見

  - [AppStream](../Page/AppStream.md "wikilink")

## 註釋

## 外部連結

  - [Project homepage](http://listaller.tenstral.net/)

[Category:歸檔格式](https://zh.wikipedia.org/wiki/Category:歸檔格式 "wikilink")

1.  [Launchpad.net announcement: Listaller switches to
    PackageKit](https://launchpad.net/listaller/+announcement/2493)
2.  [Developer blog: Listaller - The next
    steps](http://blog.nlinux.org/2011/02/listaller-the-next-steps/)
3.  [Launchpad.net announcement: Listaller and Autopackage will
    merge](https://launchpad.net/listaller/+announcement/6593/)
4.  [Ubuntu dev proposes new package format for mobile
    apps](http://www.theregister.co.uk/2013/05/09/ubuntu_click_packages/)