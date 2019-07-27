**Docker**是一個[開放原始碼軟體專案](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")，讓應用程式部署在[軟體貨櫃下的工作可以自動化進行](../Page/作業系統層虛擬化.md "wikilink")，藉此在[Linux](../Page/Linux.md "wikilink")作業系統上，提供一個額外的軟體[抽象層](https://zh.wikipedia.org/wiki/抽象層 "wikilink")，以及[作業系統層虛擬化](../Page/作業系統層虛擬化.md "wikilink")的自動管理機制\[1\]。

Docker利用[Linux核心中的資源分離機制](https://zh.wikipedia.org/wiki/Linux核心 "wikilink")，例如[cgroups](https://zh.wikipedia.org/wiki/cgroups "wikilink")，以及Linux核心（namespaces），來建立獨立的[容器](../Page/作業系統層虛擬化.md "wikilink")（containers）。這可以在單一Linux實體下運作，避免啟動一個[虛擬機器](../Page/虛擬機器.md "wikilink")造成的額外負擔\[2\]。Linux核心對命名空間的支援完全隔離了工作環境中應用程式的視野，包括行程樹、[網路](../Page/计算机网络.md "wikilink")、用户ID與掛載檔案系統，而核心的cgroup提供资源隔離，包括[CPU](https://zh.wikipedia.org/wiki/CPU "wikilink")、[記憶體](../Page/電腦記憶體.md "wikilink")、block
I/O與網路。從0.9版本起，Dockers在使用抽象虛擬是經由[libvirt的](https://zh.wikipedia.org/wiki/libvirt "wikilink")[LXC](../Page/LXC.md "wikilink")與systemd
- nspawn提供界面的基礎上，開始包括libcontainer函式庫做為以自己的方式開始直接使用由Linux核心提供的虛擬化的設施，

依據行業分析公司「451研究」：「Dockers是有能力打包應用程式及其虛擬容器，可以在任何Linux伺服器上執行的依賴性工具，這有助於實現靈活性和便攜性，應用程式在任何地方都可以執行，無論是公有雲、私有雲、單機等。」
\[3\]。

## 参考文献

## 外部連結

  -
  - [Source code repository](https://github.com/docker/docker-ce)

  - [Multi-tenancy using
    Docker](http://www.slideshare.net/AaterSuleman/docker-at-flux7/)

  - [Docker 101
    Tutorial](http://www.youtube.com/watch?v=VeiUjkiqo9E#t=60)

  - [libcontainer git repo](https://github.com/docker/libcontainer/)

  - [如何在Linux下安装Docker](https://www.ytyzx.org/index.php/%E5%A6%82%E4%BD%95%E5%9C%A8Linux%E4%B8%8B%E5%AE%89%E8%A3%85Docker)

  - [Windows
    容器](https://docs.microsoft.com/zh-tw/virtualization/windowscontainers/about/)
    - 在 Windows 10 部署 Docker

## 参见

  - [作業系統層虛擬化](../Page/作業系統層虛擬化.md "wikilink")
  - [cgroups](https://zh.wikipedia.org/wiki/cgroups "wikilink")
  - [LXC](../Page/LXC.md "wikilink")
  - [Dotcloud](../Page/Dotcloud.md "wikilink")

{{-}}

[Category:操作系统技术](https://zh.wikipedia.org/wiki/Category:操作系统技术 "wikilink")
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")
[Category:虛擬化軟體](https://zh.wikipedia.org/wiki/Category:虛擬化軟體 "wikilink")
[Category:Linux容器化](https://zh.wikipedia.org/wiki/Category:Linux容器化 "wikilink")

1.
2.
3.