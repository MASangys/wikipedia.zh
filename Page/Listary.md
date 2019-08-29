**Listary**是一款用于[Windows的文件名定位](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")/搜索辅助软件。它为Windows传统低效的文件打开/保存对话框提供了便捷、人性化的文件（夹）定位方式\[1\]，同时改善了常见[文件管理器中文件夹切换的效率](https://zh.wikipedia.org/wiki/文件管理器 "wikilink")。

## 源起

Listary从标准列表控件搜索辅助工具的最初定位到目前成为文件浏览增强工具，是一个受用户驱动而转型的过程\[2\]。

作者在使用Windows标准列表控件\[3\]所提供的简单搜索——通过输入开头几个字母快速定位一个条目的功能时，因“无法看到自己已输入的内容”、“输入错误后无法修改”同时“必须快速输入，否则会清除需重新开始”等感到诸多不便，于是开发了Listary的最初版本——一个列表搜索辅助工具。不管什么程序只要是采用了Windows标准的列表控件，都可以用Listary搜索定位（例如[任务管理器](../Page/任务管理器.md "wikilink")的任务列表、[注册表编辑器右侧的键值列表](https://zh.wikipedia.org/wiki/注册表#使用注册表编辑器 "wikilink")）。

发布后在与用户交流中发现大多数用户只用于[资源管理器长长的文件列表中定位文件](https://zh.wikipedia.org/wiki/资源管理器 "wikilink")\[4\] ，感受到用户在这方面的强烈需求，于是逐步增加了文件管理和搜索定位等相关功能。

Windows系统发展了几十年，版本更新了数代，但系统中文件打开/保存对话框的操作方式却没有多少改善，即使在目前最新的[Windows 8.1中](../Page/Windows_8.1.md "wikilink")，在该对话框中浏览文件的方式依然如此繁琐、低效，一直为大多数用户所诟病。并且与系统其他组件，如[记事本](https://zh.wikipedia.org/wiki/记事本 "wikilink")、[Internet Explorer可以很方便找到大量强大的替代程序不同](../Page/Internet_Explorer.md "wikilink")，传统打开/保存对话框的替代工具几乎完全是一个空白。Listary的出现很好的弥补了这点，它为该对话框增加了热键支持的快速文件（夹）定位方式\[5\]，使用方便、高效且人性化，因此很快受到广大用户的欢迎。

## 主要功能

免费版具有以下功能：

  - **随打即找**：无需目标文件/文件夹的完整名称，只需根据自己的记忆输入，无论是文件名的前缀、后缀或其他任意部分，结果即时呈现。在大量文件中寻找某个文件或寻找很久以前名称以及已模糊的文件时，很有用。
  - **磁盘搜索**：Listary使用了与[Everything类似的原理](../Page/Everything_\(软件\).md "wikilink")，因此可快速访问磁盘中各个角落的文件，无论硬盘多大、文件在多深的目录。这种特性非常适合于如今大容量硬盘、系统中常常包含几十上百万甚至更多文件的情况。
  - **快速切换**\[6\]：在文件管理器或文件打开/保存对话框中浏览时，可直接跳到任何文件夹，无论它们在其他驱动器或哪个位置，具体包括：
      - 在文件对话框中，按可立即跳转到文件管理器中正在浏览的文件夹。
      - 在文件对话框中，切换到文件管理器并切换回来（无论以何种方式），对话框中会自动切换为刚才文件管理器中浏览的文件夹。
      - 在文件对话框中，按可直接打开之前在文件管理器中选择的文件。
      - 在智能菜单中列出所有文件管理器中已打开的文件，方便快速访问。
  - **收藏和历史**：可收藏文件夹及自动保存文件夹访问历史，通过Listary工具栏快速访问收藏文件夹、资源管理器中的最近文件夹和最近打开的文件。
  - **智能命令**：包括了许多有用命令的集合，只需使用按键或单键点击鼠标即可访问，如打开命令行（以当前路径）、复制当前文件夹、显示隐藏文件等。提供了比资源管理器处理文件更好的方式。这里定义了许多[快捷键](../Page/快捷键.md "wikilink")供快速访问，用户也可根据情况自定义。
  - **随心访问**：可在任意位置、通过各种方式快速访问文件和文件夹，如在桌面、文件管理器、打开/保存对话框的空白处双击鼠标左键或点击中键打开菜单，或通过热键调用菜单。
  - **Total Commander集成**：使用[Total Commander可完全代替文件对话框浏览功能](../Page/Total_Commander.md "wikilink")，具体操作如下：
    1.  在文件对话框中，首先像平常那样选择文件类型过滤器，接着按；
    2.  Listary会在TC中的新标签页中打开当前文件夹并应用过滤器（必须确保TC在运行中）；
    3.  在TC中结束操作后再次按，这样之前的文件对话框就会打开刚才在TC中选择的文件（未选择文件或者这是文件夹对话框则会切换到TC中浏览的文件夹）。
    <!-- end list -->
      - 此外，同样支持**快速切换**包含的功能，并会自动添加TC的常用文件夹到Listary中的收藏夹中。

专业版在免费版基础上增加以下功能\[7\]并提供多项服务：

  - **项目管理**：将频繁访问的文件夹添加到项目（即设置访问关键字）后，可在任何位置通过该关键字搜索该文件夹及其子文件夹中的所有内容。这样排除了未使用关键字限定文件夹进行搜索时得到的许多无关结果。
  - **快捷操作**：在选择文件/文件夹后按右方向键，即可像搜索文件那样快捷定位并执行上下文菜单中的各种操作。在该菜单中除了包含资源管理器上下文菜单中的功能外，还包含了许多常用的默认命令，如打开文件或复制路径等。
  - **模糊导航**：无需记得文件名中空格位置、甚至不输入空格或仅输入文件名的几个残缺部分，如搜索“photoshop”时输入“ptshp”；或
  - **更多**：使用子菜单组织收藏夹、自动选择上次打开/保存的文件、增加自定义命令等。

## 软件特色

  - **极速体验**：媲美[Everything的速度](https://zh.wikipedia.org/wiki/Everything "wikilink")，索引和搜索过程执行非常快速（几乎无法察觉）、占用资源低，同时能实时更新搜索结果。
  - **渐进式搜索**：输入文件名的一部分后，若结果较多，则可按空格后接着输入文件名的另一部分，此时会在已有结果中搜索。便于快速定位。
  - **智能排序**：自动记忆输入过的搜索关键字，并根据搜索历史对结果排序，因此使用越多，结果越准确。
  - **键盘化操作**：几乎所有操作都可通过键盘完成，例如选择文件后按右方向键将出现操作菜单，此时可像定位文件一样定位命令来执行操作。
  - **拼音首字母支持**：可使用文件名汉字的拼音首字母定位，且同样可应用于过滤命令，这是中文用户的一大福音。
  - **无缝集成**：Listary与系统各方面及相关程序融合为一体，它默默出现在需要打开/保存文件、打开/切换目录或过滤列表等环境中，主要指文件（夹）打开/保存对话框（支持标准及常见的非标准对话框）和ListView控件，具体包括标准的打开/保存文件对话框、打开文件夹对话框、[资源管理器](https://zh.wikipedia.org/wiki/资源管理器 "wikilink")、[任务管理器](../Page/任务管理器.md "wikilink")、[桌面及后面众多的常用程序](https://zh.wikipedia.org/wiki/桌面 "wikilink")：[WinRAR](../Page/WinRAR.md "wikilink")、[7zip](https://zh.wikipedia.org/wiki/7zip "wikilink")、[FileZilla](../Page/FileZilla.md "wikilink")、[Total Commander](../Page/Total_Commander.md "wikilink")\[8\]、、xplorer2、\[9\]、[Free Commander XE等](https://zh.wikipedia.org/wiki/Free_Commander_XE "wikilink")，这样可以方便的为这些程序定位所需文件、切换目录或执行其他相关命令。

## 其他情况

### 原理与局限

与Everything类似，Listary依赖[NTFS](../Page/NTFS.md "wikilink")文件系统，它通过[主文件表快速建立并利用USN日志实时更新索引](https://zh.wikipedia.org/wiki/NTFS#主文件表 "wikilink")，因此具有下列局限性：

  - **需要管理权限**：这样才能读取[USN日志](https://zh.wikipedia.org/wiki/NTFS#NTFS_日志 "wikilink")，由此带来了安全上的问题。
  - **仅支持NTFS卷**：不支持目前移动设备中广泛使用的[FAT](../Page/FAT.md "wikilink")文件系统，也不支持除Windows外的其他操作系统中常见的[文件系统](../Page/文件系统.md "wikilink")。
  - **仅支持文件名**：在搜索时仅能根据路径和文件名进行过滤，而不支持传统搜索工具通常支持的其他文件特性，如文件日期、大小和属性等。
  - **多用户安全**：Listary通过服务（*ListaryService.exe*）建立和更新索引使得可通过普通权限执行主程序（*Listary.exe*），这样避免了多用户环境中普通用户权限提升的问题，但它无法根据当前用户凭据过滤搜索结果而导致用户可列出其他用户的私有文件，可能出现隐私泄漏问题。

### 与Everything比较

许多用户都将Listary与Everything进行比较甚至视为同类软件\[10\]，实际上从前面的功能说明可以看出它们除了建立索引的方法相似外，实际上几乎没有共同点。例如两者的定位：Everything的定位为替代传统的本地搜索工具，如[Google桌面](../Page/Google桌面.md "wikilink")，Listary则为基于搜索的文件定位与操作和文件夹切换辅助工具。

## 开发历史

2010年3月17日，发布了首个公开版本0.95.21\[11\]，此时定位为标准列表控件的搜索增强工具。

0.96.32版本在Listary Pro中增加了定位文件（夹）时的[正则表达式](../Page/正则表达式.md "wikilink")支持。

3.23.563版本开始增加了[多语言支持](https://zh.wikipedia.org/wiki/多國語言 "wikilink")。

版本4完全重写，增加了项目、操作、模糊导航等新功能，且较大提升了性能，不过同时失去了一些原有功能，如[正则表达式](../Page/正则表达式.md "wikilink")。

4.00.1087版本中，Listary使用自身的搜索功能代替了Everything，搜索速度相仿且可为用户提供更丰富的搜索功能和多样化体验。\[12\]

6.0.5.16版本完全重寫,簡潔高效的主介面、優化搜索排序算法、外掛程式系統（開發中）能夠創建並分享自己的外掛程式,默認包含小算盤外掛,翻譯外掛、支持正則排序的文件搜索引擎、帶搜索推薦的網頁搜尋...等功能。

## 相关条目

  - [Everything](../Page/Everything_\(软件\).md "wikilink")
  - [桌面搜索](https://zh.wikipedia.org/wiki/桌面搜索 "wikilink")

## 参考资料

## 用户评价

  - [能极大幅度提高你Windows文件浏览与搜索速度效率的「超级神器」](http://www.iplaysoft.com/listary.html)异次元软件世界推荐

  - [Listary 4.10.1446 - 強化系統的即時搜尋功能](http://portable.easylife.tw/2586)綠色工廠評測

  - [Listary讓檔案總管也能「隨打即找」](http://blog.joaoko.net/archives/2979)

  - [Supercharge Windows File Management with Listary](http://windows.appstorm.net/reviews/supercharge-windows-file-management-with-listary/) Appstorm's Review

  - [Reviewing Listary, an Awesome File Browsing and Searching tool For Windows](http://www.guidingtech.com/9293/listary-awesome-file-browsing-searching-tool-windows/) GuidingTech's Review

  - [Listary](http://download.cnet.com/Listary/3000-2248_4-75118772.html) CNET Editors' review

  - [Listary - Smart solution for browsing and finding files or folders](http://listary.findmysoft.com/) FindMySoft Editor's Review

## 外部链接

  -
  - [Listary作者访谈：自然成长，朴实幸福](http://xbeta.info/listary-interview.htm)

[Category:桌面搜索引擎](https://zh.wikipedia.org/wiki/Category:桌面搜索引擎 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.