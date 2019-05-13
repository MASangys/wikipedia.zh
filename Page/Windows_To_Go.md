**Windows To Go**是[Windows
8.1与](https://zh.wikipedia.org/wiki/Windows_8.1 "wikilink")[Windows
10的一种企业功能](https://zh.wikipedia.org/wiki/Windows_10 "wikilink")，被内置于Windows
8企业版（Windows 8 Enterprise）与Windows 10企业版（Windows 10
Enterprise）中。对于满足Windows 8或Windows10硬件要求的电脑，Windows To
Go可使Windows
7以后的系统从[USB](../Page/USB.md "wikilink")[儲存裝置中启动并运行](../Page/儲存裝置.md "wikilink")，不必考虑电脑上运行的[操作系统](../Page/操作系统.md "wikilink")（Mac和[Windows
RT不被支持](../Page/Windows_RT.md "wikilink")）。

这是一個完全的可管理的電腦環境，Windows To
Go工作区可将相同的映像企业版功能用于其台式计算机和便携式计算机，还可采用相同的方式加以管理。Windows
To Go可以为有效使用备用的工作场所方案资源提供支持。

## 功能简介

### 歷史

[Windows
3.1有类似于Windows](https://zh.wikipedia.org/wiki/Windows_3.1 "wikilink")
To Go的功能，它有執行到位ROM的選項；\[1\]Windows Embedded Standard
7也有類似的功能，可從USB驱动器中啟用。因此这可以看成Windows To
Go的前代。\[2\]\[3\]

2011年4月，在泄漏的Windows 8 7850版本中，“Portable Workspace
Creator”的功能被内置在程序中。\[4\]\[5\]\[6\]

2011年9月，微軟正式公布Windows To Go，並发布已预装好的32GB Windows To Go USB驱动器。

2012年4月18日，微軟將以Windows Software Assurance授權方式授權企業授權員工在他們的個人設備上工作。\[7\]

### 兼容性

Windows To Go驱动器可在多台计算机上启动。 当Windows To
Go工作区在主计算机上首次启动时，它会检测计算机的所有硬件，并安装任何需要的驱动程序。当Windows
To Go工作区在该主计算机再度启动时，它会识别出该主计算机，并自动加载正确的各种驱动程序。

硬件方面，Windows To Go兼容[USB
2.0和](https://zh.wikipedia.org/wiki/USB_2.0 "wikilink")[USB
3.0连接以及](../Page/USB_3.0.md "wikilink")[BIOS和](../Page/BIOS.md "wikilink")[UEFI固件](https://zh.wikipedia.org/wiki/UEFI "wikilink")。\[8\]

### 安全性

作为一项安全措施以防止数据的丢失，如USB驱动器被移除，系統將处于“凍結”状态，用戶要在60秒內插回Windows To
Go驱动器才能繼續运行。否則電腦將自動關閉，为防止顯示在屏幕上的或储存于[RAM的信息被泄漏](https://zh.wikipedia.org/wiki/隨機存取記憶體 "wikilink")。

如果拔出USB储存设备，并在60秒之内重新插入计算机，那么系统将会显示“保持插入USB驱动器”的提示，以告知用户在系统运行时拔出USB储存设备将会导致未储存的数据丢失。

在某些情况下（如系统启用了[UASP协议](https://zh.wikipedia.org/wiki/UASP协议 "wikilink")），在系统运行时拔出USB储存设备将会使系统直接蓝屏，这时再次将USB储存设备插入也无法恢复系统。

用戶亦可以使用BitLocker来加密Windows To Go驱动器。\[9\]

### 差异性

Windows To Go工作区的操作和任何其他Windows一样，但一些例外情况除外。这些例外情况包括：

  - **内部磁盘处于离线状态。**为确保数据不会意外泄露，启动进入 Windows To Go
    工作区时，主计算机上的内部硬盘处于离线状态。诚如将
    Windows To Go驱动器插入正在运行的系统时，Windows To Go 驱动器将不在 Windows 资源管理器中显现一样。

<!-- end list -->

  - **受信任的平台模块 (TPM) 不可用。**当使用 BitLocker 驱动器加密时，为安全起见，将使用预操作系统启动密码，而非
    TPM，因为 TPM 已绑定到特定的计算机，Windows To Go 驱动器将在各台计算机之间移动。

<!-- end list -->

  - **默认情况下，禁用休眠功能。**为确保 Windows To Go
    工作区能够在计算机之间迁移，默认情况下，禁用休眠功能。使用组策略设置可以重新启用休眠功能。

<!-- end list -->

  - **Windows 恢复环境不可用。**有时候你需要恢复你的 Windows To Go 驱动器，此时你应采用 Windows
    的新映像，对该驱动器进行重镜像。

<!-- end list -->

  - **不支持刷新或重置 Windows To Go 工作区。**当运行 Windows To Go
    工作区时，无法将计算机重置到制造商的标准设置，因此禁用该功能。

<!-- end list -->

  - **默认情况下，禁用存储。**通过存储授权的应用程序将连接到硬件上进行授权。因为 Windows To Go
    旨在实现在不同主机之间漫游，所以禁用对存储的访问。如果 Windows To
    Go 工作区不会在多台主机之间漫游，则可以启用存储。

## 硬件要求

### USB驱动器

  - USB驱动器容量至少为32GB，支持USB 2.0或USB 3.0（推荐使用USB3.0）。
      - 在网络上亦有方法在容量小于32GB的USB驱动器上安装。\[10\]
      - 若使用Windows To Go安装向导进行安装，必须使用经过Windows To
        Go认证的USB驱动器，**使用未经认证的USB驱动器在Windows
        8将不被支持，然而在Windows 10，未经认证的USB驱动器可以使用，但不保證相容性**。已通过认证的USB驱动器如下：
          - Windows To Go 的 Kingston DataTraveler 工作区
          - Spyrus 便携工作区
          - Spyrus 安全便携工作区
          - Windows To Go 的 Super Talent Express RC8
          - Western Digital My Passport Enterprise

### 计算机

  - 不支持从运行 Windows RT 的计算机运行 Windows To Go 工作区。

<!-- end list -->

  - 不支持在 Mac 计算机上运行 Windows To Go 工作区。

<!-- end list -->

  - 满足Windows 8的硬件要求。

<!-- end list -->

  - BIOS需要支持USB启动。

## 安装步骤

Windows To Go可使用标准Windows 8部署工具（如DISM部署映像服务和管理（仅限于[Windows
8與](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")[Windows
10](https://zh.wikipedia.org/wiki/Windows_10 "wikilink")）、DiskPart、ImageX等工具）进行安装，也可使用Windows
To Go安装向导进行安装（仅限于[Windows
8企业版](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")/[Windows
10企业版和專業版](https://zh.wikipedia.org/wiki/Windows_10 "wikilink")）。企业可使用配置管理软件（如System
Center Configuration Manager）将 Windows 安装到很大一组计算机中。\[11\]

相比较而言，使用Windows To Go安装向导进行安装步骤比较简单，但对USB驱动器有较高的要求，且仅限于[Windows
8企业版的环境下安装](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")；ImageX和DISM步骤较繁琐，但对USB驱动器无较高的要求，不仅限于[Windows
8企业版环境](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")。

安装完成后，就可以从USB驱动器进入Windows To Go，启动方式如下

  - 在[Windows
    8企业版](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")/[Windows
    10企业版和專業版的系统环境下](https://zh.wikipedia.org/wiki/Windows_10 "wikilink")，进入“控制面板”的“Windows
    To Go”的选项，选择Windows To Go驱动器启动。
  - 在BIOS中，设置USB启动设置为首选项。

### Windows To Go安装向导

  - 在[Windows
    8企业版](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")/[Windows
    10企业版和專業版的系统环境下](https://zh.wikipedia.org/wiki/Windows_10 "wikilink")，双击或右键ISO镜像文件进行“装载”，使镜像装载到虚拟光驱。

<!-- end list -->

  - 进入“控制面板”的“Windows To Go”的选项，根据提示进行安装。

### ImageX

  - 将ISO镜像文件中source\\install.wim与ImageX放在同一目录下。

<!-- end list -->

  - 将USB驱动器快速格式化为[NTFS格式](../Page/NTFS.md "wikilink")，并设置为[活动分区](https://zh.wikipedia.org/wiki/活动分区 "wikilink")。

<!-- end list -->

  - 使用管理员身份运行[命令提示符](https://zh.wikipedia.org/wiki/命令提示符 "wikilink")
      - 输入 “CD 文件夹路径”
      - 输入 “imagex.exe /apply install.wim 1 X:\\” （X为USB记忆体的盘符）
      - 输入 “bcdboot X:\\windows /s X: （X为USB记忆体的盘符）

### DISM

  - 在[Windows
    8系统环境下](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")，提取出ISO镜像文件中的source\\install.wim。

<!-- end list -->

  - 新建格式为cmd的文件，输入如下内容后用管理员身份运行。
      - @echo off
        cd..
        cd "C:\\Windows\\System32\\Dism"
        Dism /Mount-Image /ImageFile:文件路径 /Name:"Windows 8 Enterprise"
        /MountDir:要装载的路径
        pause

### 第三方软件

在网络上亦有针对Windows To Go的辅助软件，使安装无需繁琐的步骤。\[12\]\[13\]

如果用户使用第三方软件安装windows to go，那么对硬件限制将会更小。同时，第三方软件一般都会有相应的论坛或支持网站。

## 參考

<references/>

## 外部連結

  - [如何建立 Windows To Go
    工作區](https://archive.is/20130418224819/http://www.dotblogs.com.tw/esyc2001/posts/75291.aspx)
  - [Windows 8 RP 繁體中文版製作 Windows To Go - USB
    隨身系統碟](http://chenweichi.blogspot.tw/2012/06/windows-8-rp-windows-to-go-usb.html)
  - [轻松将Windows安装到USB移动硬盘或者U盘！](http://www.easyuefi.com/wintousb/index-cn.html)

[Category:Microsoft_Windows](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows "wikilink")
[Category:Windows_8](https://zh.wikipedia.org/wiki/Category:Windows_8 "wikilink")

1.   Windows 8: Windows To Go | ZDNet UK
2.  <http://msdn.microsoft.com/en-us/library/ff793778%28v=winembedded.60%29.aspx>
3.  <http://msdn.microsoft.com/en-us/library/ff794931%28v=winembedded.60%29.aspx>
4.  <http://www.engadget.com/2011/04/13/windows-8-leaked-caught-looking-a-lot-like-windows-7/>
5.
6.  <http://www.engadget.com/2011/04/15/windows-8-to-feature-usb-runnable-portable-workspaces-sales-of/>
7.  Introducing Windows 8 Enterprise and Enhanced Software Assurance for
    Today’s Modern Workforce". Microsoft.
8.  <http://techie-buzz.com/microsoft/windows-8-usb-to-go-demo.html>
9.  <http://news.softpedia.com/news/Windows-8-Running-on-a-USB-Windows-To-Go-221470.shtml>
10.
11. <http://technet.microsoft.com/library/hh831833.aspx>
12.
13. <http://www.easyuefi.com/wintousb/index-cn.html>