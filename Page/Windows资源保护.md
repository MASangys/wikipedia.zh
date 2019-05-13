**Windows资源保护**（）是[Windows
Vista的新功能](../Page/Windows_Vista.md "wikilink")，它取代了[Windows文件保护](../Page/Windows文件保护.md "wikilink")，会保护[注册表键值](../Page/注册表.md "wikilink")、文件夹和关键系统文件。它保护资源的方式与Windows文件保护完全不同。<span class="cx-segment" data-segmentid="26"></span>

## 概述

Windows文件保护基于在[Winlogon中注册文件更改通知](../Page/Winlogon.md "wikilink")。如果检测到任何对受保护系统文件的修改，修改的文件会被恢复为位于压缩文件夹`%WinDir%\System32\dllcache`
的缓存副本。Windows资源保护（WRP）基于对预定义的受保护资源设置自主访问控制列表（DACL）和[访问控制列表](../Page/访问控制列表.md "wikilink")（ACL）工作。完全访问和修改WRP保护的资源被限制到使用Windows模块安装服务（`TrustedInstaller.exe`）的进程。管理员不再拥有对系统文件的完全访问权，他们必须使用SetupAPI，或者获取资源的所有权并添加适当的访问控制条目（ACE）才能修改或替换它。“Trusted
Installer”帐户用于保护核心操作系统文件和[注册表键值](../Page/注册表.md "wikilink")。

## 受保护资源

Windows资源保护会保护大量文件类型：

`*.acm *.ade *.adp *.app *.asa *.asp *.aspx *.ax *.bas *.bat *.bin *.cer
*.chm *.clb *.cmd`
`*.cnt *.cnv *.com *.cpl *.cpx *.crt *.csh *.dll *.drv *.dtd *.exe *.fxp
*.grp *.h1s *.hlp`
`*.hta *.ime *.inf *.ins *.isp *.its *.js *.jse *.ksh *.lnk *.mad *.maf
*.mag *.mam *.man`
`*.maq *.mar *.mas *.mat *.mau *.mav *.maw *.mda *.mdb *.mde *.mdt *.mdw
*.mdz *.msc *.msi`
`*.msp *.mst *.mui *.nls *.ocx *.ops *.pal *.pcd *.pif *.prf *.prg *.pst
*.reg *.scf *.scr`
`*.sct *.shb *.shs *.sys *.tlb *.tsp *.url *.vb *.vbe *.vbs *.vsmacros
*.vss *.vst *.vsw *.ws`
`*.wsc *.wsf *.wsh *.xsd *.xsl`

WRP还保护几个关键文件夹。只包含WRP保护文件的文件夹可能被锁定，目的是使仅“trusted
installer”可以在该文件夹中创建文件和子文件夹。文件夹很可能被锁定为仅管理员可以在文件夹内创建文件和子文件夹。Windows
Vista安装的重要[注册表键值也会受到保护](../Page/注册表.md "wikilink")。如果一个键被WRP保护，其所有子键和值也会被保护。另外，WRP只复制重启Windows所需的文件到位于
`%WinDir%\WinSxS\Backup`
的缓存目录。重启Windows时不需要的文件不会复制到缓存目录，这不同于Windows文件保护会在
*Dllcache* 文件夹中缓存所有受保护的文件类型。缓存目录的大小和复制到缓存目录的文件类型不能修改。

Windows资源保护采用更严格的措施保护文件。因此，Windows文件保护不再在Windows
Vista上使用。为了取代单一保护文件，Windows文件保护已被完全禁用。Windows资源保护可以在各个项目上设置ACL来达成使命。因此，即便获取单个项目的所有权，只有该项会被替换，其他项目仍受保护。

[系統文件檢查器也与WRP集成](../Page/系統文件檢查器.md "wikilink")。在Windows
Vista上，sfc.exe可以检查特定文件夹路径，包括Windows文件夹和引导文件夹。

## 参见

  - [Windows文件保护](../Page/Windows文件保护.md "wikilink")
  - [系統文件檢查器](../Page/系統文件檢查器.md "wikilink")
  - [存取控制串列](../Page/存取控制串列.md "wikilink")
  - [安全标识符](../Page/安全标识符.md "wikilink")

## 外部链接

  - [Windows Resource Protection in Windows
    Vista](http://msdn2.microsoft.com/en-us/library/aa382503.aspx)
  - [More information on WRP and application
    compatibility](http://blogs.msdn.com/cjacks/archive/2007/04/20/windows-resource-protection-wrp-and-activex-control-installation-on-windows-vista.aspx)

[Category:Windows_Vista](https://zh.wikipedia.org/wiki/Category:Windows_Vista "wikilink")
[Category:Windows管理](https://zh.wikipedia.org/wiki/Category:Windows管理 "wikilink")
[Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink")