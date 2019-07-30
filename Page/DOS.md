[FreeDOS_Beta_9_pre-release5_(command_line_interface)_on_Bochs_sshot20040912.png](https://zh.wikipedia.org/wiki/File:FreeDOS_Beta_9_pre-release5_\(command_line_interface\)_on_Bochs_sshot20040912.png "fig:FreeDOS_Beta_9_pre-release5_(command_line_interface)_on_Bochs_sshot20040912.png") **DOS**，是**磁碟作業系統**（英文：**D**isk **O**perating **S**ystem）的縮寫，是[個人電腦上的一類](https://zh.wikipedia.org/wiki/個人電腦 "wikilink")[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")。從1981年直到1995年的15年間，DOS在[IBM PC相容機市場中佔有舉足輕重的地位](https://zh.wikipedia.org/wiki/IBM_PC兼容機 "wikilink")。而且，。

DOS家族包括[MS-DOS](../Page/MS-DOS.md "wikilink")、[PC-DOS](../Page/PC-DOS.md "wikilink")、[DR-DOS](../Page/DR-DOS.md "wikilink")、[FreeDOS](../Page/FreeDOS.md "wikilink")、[PTS-DOS](https://zh.wikipedia.org/wiki/PTS-DOS "wikilink")、[ROM-DOS](https://zh.wikipedia.org/wiki/ROM-DOS "wikilink")、JM-OS等，其中以MS-DOS最為著名。雖然這些系統常被簡稱為"DOS"，但沒有任何一個系統單純以"DOS"命名（只有一個毫無關連的1960年代[IBM大型主機作業系統以此命名](https://zh.wikipedia.org/wiki/DOS/360 "wikilink")）。此外，有幾個和DOS無關、在非x86的微電腦系統上執行的磁碟作業系統在名稱中也有"DOS"字眼，而且在專門討論該機器的場合中也會簡稱為"DOS"（例如：[AmigaDOS](https://zh.wikipedia.org/wiki/AmigaDOS "wikilink")、[AMSDOS](https://zh.wikipedia.org/wiki/AMSDOS "wikilink")、[ANDOS](https://zh.wikipedia.org/wiki/ANDOS "wikilink")、[Apple DOS](https://zh.wikipedia.org/wiki/Apple_DOS "wikilink")、[Atari DOS](https://zh.wikipedia.org/wiki/Atari_DOS "wikilink")、[Commodore DOS](https://zh.wikipedia.org/wiki/Commodore_DOS "wikilink")、[CSI-DOS](https://zh.wikipedia.org/wiki/CSI-DOS "wikilink")、[ProDOS](https://zh.wikipedia.org/wiki/ProDOS "wikilink")、[TRS-DOS等](https://zh.wikipedia.org/wiki/TRS-DOS "wikilink")），但這些系統和[DOS執行檔以及](https://zh.wikipedia.org/wiki/DOS執行檔 "wikilink")[MS-DOS API並不相容](../Page/MS-DOS_API.md "wikilink")。

## 設計架構

[IBM_Floppy_Drive_With_DOS.jpg](https://zh.wikipedia.org/wiki/File:IBM_Floppy_Drive_With_DOS.jpg "fig:IBM_Floppy_Drive_With_DOS.jpg") 所有DOS類的作業系統都是在使用[Intel](https://zh.wikipedia.org/wiki/Intel "wikilink") [x86或其相容](https://zh.wikipedia.org/wiki/x86 "wikilink")[CPU的機器上運行的](https://zh.wikipedia.org/wiki/CPU "wikilink")（主要是[IBM PC及其](../Page/IBM_PC.md "wikilink")[相容機](https://zh.wikipedia.org/wiki/IBM_PC兼容機 "wikilink")）。最早的時候，DOS並未受限於此；為了在許多以[x86為基礎](https://zh.wikipedia.org/wiki/x86 "wikilink")，但和IBM PC不相容的機器上運行，產生了不少特定機器版本的DOS及類似的作業系統。\[1\]

DOS是單一使用者、單工的作業系統，擁有[不可重入的基本](../Page/可重入.md "wikilink")[核心函式](https://zh.wikipedia.org/wiki/內核 "wikilink")（意即同時間只能有一個程式呼叫這些函式）。有一個例外的狀況，就是[常駐程式](https://zh.wikipedia.org/wiki/常駐程式 "wikilink")（Terminate and Stay Resident，縮寫為TSR）。某些常駐程式允許使用者[多工操作](https://zh.wikipedia.org/wiki/多工 "wikilink")；然而此時仍有「核心不可重入」的問題：當一個行程（process）呼叫了作業系統核心中的服務函式（也就是[系統呼叫](https://zh.wikipedia.org/wiki/系統呼叫 "wikilink")）時，在這個呼叫結束之前，其他的行程絕對不能進行系統呼叫、打斷第一個行程。\[2\]

DOS的核心為使用者程式提供了各式各樣的函式，例如：在螢幕上顯示文字、從鍵盤讀入字元、存取磁碟上的檔案等等。

### 腳本語言

DOS透過*批次檔*（[副檔名為](https://zh.wikipedia.org/wiki/副檔名 "wikilink")**.BAT**）提供[界面腳本的功能](https://zh.wikipedia.org/wiki/界面腳本 "wikilink")。這些檔案是純文字格式的，可以用任何的文字編輯器（像是edit.com）編輯。他們執行起來和編譯而成的程式沒有兩樣。檔案中的每一行都被視為命令來執行。批次檔也可以使用數個內部命令，例如[goto和](https://zh.wikipedia.org/wiki/goto "wikilink")[條件運算式](https://zh.wikipedia.org/wiki/條件運算式 "wikilink")。\[3\]

### 硬體存取

DOS提供了簡單的[硬體抽象層](../Page/硬體抽象層.md "wikilink")，讓程式員可以開發文字界面的應用程式；但這個硬體抽象層無法存取大部份的[計算機硬體](https://zh.wikipedia.org/wiki/硬體 "wikilink")，像是[顯示卡](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")、[印表機](https://zh.wikipedia.org/wiki/印表機 "wikilink")，或是[滑鼠等](https://zh.wikipedia.org/wiki/滑鼠 "wikilink")。這使得程式員必須直接存取硬體，導致每個應用程式都有屬於自己的一組硬體週邊[驅動程式](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")。硬體製造商會將他們的硬體規格書釋出，以確保在受歡迎的應用程式中有它們的驅動程式。\[4\]

### 裝置保留名稱

在DOS中，有數個名稱保留給裝置使用，無法拿來當一般檔案的名稱（不管副檔名是什麼）；這些保留名稱是用來將應用程式的輸出傳送給硬體週邊用的。這樣的限制也影響到數個版本的Windows，在某些情況下甚至會造成當機和安全性弱點。\[5\]

其中一些保留名稱有：`NUL:`、`COM1:`或`AUX:`、`COM2:`、`COM3:`、`COM4:`、`CON:`、`LPT1:`或`PRN:`、`LPT2:`、`LPT3:`，以及`CLOCK$`。\[6\]

### 磁碟命名法

在DOS中，磁碟機是利用不同的字母命名的。標準的作法是保留"A"和"B"給[軟碟機](https://zh.wikipedia.org/wiki/軟碟機 "wikilink")。若是系統只有一台軟碟機的話，DOS允許這台軟碟機同時使用這兩個代號，然後DOS會要求使用者更換磁片。這麼做可以讓使用者把檔案拷貝到不同的軟碟片上，或是執行某一片軟碟片上的程式，然後把資料檔案存放在另一片軟碟片上。最早[硬碟的代號為](https://zh.wikipedia.org/wiki/硬碟 "wikilink")"C"和"D"。在一台硬碟機上，DOS只允許一個活動分割區的存在。隨著支援的硬碟數量越來越多，磁碟代號的命名方法演變為：先將磁碟代號指派給每一顆硬碟機的活動[主分割區](https://zh.wikipedia.org/wiki/主分割區 "wikilink")，然後第二輪將代號指派給[延伸分割區中的邏輯磁碟區](https://zh.wikipedia.org/wiki/延伸分割區 "wikilink")，第三輪再把代號指定給非活動的[主分割區](https://zh.wikipedia.org/wiki/主分割區 "wikilink")。（前題是：它們存在，而且包含了DOS可以讀取的檔案系統。）最後，DOS才將代號指派給[光碟機](https://zh.wikipedia.org/wiki/光碟機 "wikilink")、[RAM disk](../Page/RAM_disk.md "wikilink")，以及其他的硬體。一般來說，磁碟代號都是依照驅動程式的載入順序，按字母順序指派的，但驅動程式也可以要求DOS指派不同的字母。例如網路磁碟機的驅動程式通常會指派最後的幾個字母。\[7\]

因為DOS的應用程式會直接使用這些磁碟代號（和[Unix類系統使用](https://zh.wikipedia.org/wiki/類Unix系統 "wikilink")／dev目錄的方法不同），因此若是新增了需要分配磁碟代號的硬體，可能會導致這些應用程式出錯。舉例來說：若是原本硬碟中的延伸分割區中存在邏輯磁碟區，此時新增一顆有主分割區的硬碟的話，由於主分割區擁有較高的分配優先權，所以原本硬碟的邏輯磁碟區的代號就會改變。此外，就算是新增一顆只有延伸分割區和邏輯磁碟區的硬碟，還是會影響到RAM disk及光碟機的代號。這個問題一直到9x系列的Windows都仍然存在；NT系列才有解決方案：磁碟代號會保留給已存在的磁碟機機，除非使用者手動更改。\[8\]

### 開機流程

PC相容機的[開機磁區](https://zh.wikipedia.org/wiki/開機磁區 "wikilink")（MBR）位于第 0 [扇区](https://zh.wikipedia.org/wiki/扇区 "wikilink")。對於DOS來說，這段代碼會將DOS的[HAL讀入記憶體中然後執行](https://zh.wikipedia.org/wiki/HAL "wikilink")。在DR DOS及PC DOS中，這個HAL放在[IBMBIO.COM文件中](https://zh.wikipedia.org/wiki/IBMBIO.COM "wikilink")；而MS DOS則是放在[IO.SYS](https://zh.wikipedia.org/wiki/IO.SYS "wikilink")。接下來這個HAL會載入位于[IBMDOS.COM](https://zh.wikipedia.org/wiki/IBMDOS.COM "wikilink")（PC DOS或DR DOS）或是[MSDOS.SYS](https://zh.wikipedia.org/wiki/MSDOS.SYS "wikilink")（MS DOS）裡面的DOS内核。Windows 9x中附的DOS版本（MS DOS 7和8）將HAL和核心合併放在IO.SYS裡面，而MSDOS.SYS則是文字格式的組態檔案。然後DOS核心會去執行[CONFIG.SYS這個檔案](https://zh.wikipedia.org/wiki/CONFIG.SYS "wikilink")。在CONFIG.SYS中，`SHELL`這個命令指定了SHELL的檔案位置（通常是[COMMAND.COM](https://zh.wikipedia.org/wiki/COMMAND.COM "wikilink")）。接下來這個SHELL會被執行，然後它會去開啟开机启动项（通常是[AUTOEXEC.BAT](../Page/AUTOEXEC.BAT.md "wikilink")）\[9\]

## 歷史

MS-DOS（以及經授權更換商標而成的IBM PC-DOS）以及它的前身[86-DOS是受到](https://zh.wikipedia.org/wiki/86-DOS "wikilink")[Digital Research公司的](https://zh.wikipedia.org/wiki/Digital_Research "wikilink")[CP/M](https://zh.wikipedia.org/wiki/CP/M "wikilink")（Control Program / (for) Microcomputers）啟發而完成的。CP/M是當時使用[Intel 8080及](https://zh.wikipedia.org/wiki/Intel_8080 "wikilink")[Zilog](https://zh.wikipedia.org/wiki/Zilog "wikilink") [Z80這兩顆](https://zh.wikipedia.org/wiki/Zilog_Z-80 "wikilink")8位元CPU的微電腦上最受歡迎的磁碟作業系統。

在1980年的時候，IBM使用[Intel 8088微處理器](../Page/Intel_8088.md "wikilink")，開發出了他們的第一台[微電腦](https://zh.wikipedia.org/wiki/微電腦 "wikilink")。他們需要一套能夠在這台微電腦上使用的作業系統。IBM在找一套能和Intel 8088 (1979-1982)相容的CP/M，一開始找上了[微軟](https://zh.wikipedia.org/wiki/微軟 "wikilink")（Microsoft）的執行長[比爾·蓋茨](https://zh.wikipedia.org/wiki/比爾·蓋茨 "wikilink")（可能是因為當時微軟開發出了讓CP/M可以在[Apple II上執行的](../Page/Apple_II.md "wikilink")[Z-80 SoftCard](https://zh.wikipedia.org/wiki/Z-80_SoftCard "wikilink")，所以IBM相信微軟擁有CP/M\[10\]）。IBM被轉介到Digital Research，並且舉行了相關的會議。然而，關於CP/M的使用權的初次談判破裂了—因為Digital Research希望以權利金的方式販售CP/M，但IBM希望單一授權，並且將名稱改為"PC-DOS"。DR的創始人[Gary Kildall拒絕簽約](https://zh.wikipedia.org/wiki/Gary_Kildall "wikilink")，IBM因此放棄購買CP/M。\[11\]\[12\]

IBM再次找上比爾·蓋茨。蓋茨轉而找上了[Seattle Computer Products](https://zh.wikipedia.org/wiki/Seattle_Computer_Products "wikilink")（SCP）。SCP的程式員[Tim Paterson開發了一套](https://zh.wikipedia.org/wiki/Tim_Paterson "wikilink")[CP/M-80的變體作業系統](https://zh.wikipedia.org/wiki/CP/M-80 "wikilink")，原本是打算用來測試SCP為[S-100匯流排新開發的](https://zh.wikipedia.org/wiki/S-100匯流排 "wikilink")[16位元](https://zh.wikipedia.org/wiki/16位元 "wikilink")[Intel 8086](../Page/Intel_8086.md "wikilink") [CPU界面卡](https://zh.wikipedia.org/wiki/中央處理單元 "wikilink")。這套系統原本的名稱是"QDOS"（"Quick and Dirty Operating System"的縮寫），後來在商業發行前改名為[86-DOS](https://zh.wikipedia.org/wiki/86-DOS "wikilink")。微軟買下了86-DOS（據說成交金額為50,000美元），後來成了1981年發行的Microsoft Disk Operating System，簡稱MS-DOS。\[13\]

微軟也將這套系統授權給數個電腦公司。這些電腦公司販售給他們的硬體使用的MS-DOS，有時使用他們自己的名稱。微軟後來要求他們使用MS-DOS這個名稱，除了IBM以外。IBM持續為IBM PC開發新版的[PC-DOS](../Page/PC-DOS.md "wikilink")。Digital Research查覺到IBM正在販售和CP/M很類似的作業系統（而且還跟當初IBM談判時堅持的名稱相同），於是揚言要提出法律訴訟。IBM以一項協議回應他們：IBM讓使用者可以自行選擇要使用PC-DOS還是[CP/M-86](https://zh.wikipedia.org/wiki/CP/M-86 "wikilink")（Kildall開發的8086版CP/M）。兩者相較，CP/M比PC-DOS貴上近200美元，銷售量也低。CP/M逐漸淡出，而MS-DOS和PC-DOS則成了PC和PC相容機的主力作業系統。\[14\]

Digital Research曾試圖挽回CP/M-86錯失的市場。一開始是發行了[DOS Plus](https://zh.wikipedia.org/wiki/DOS_Plus "wikilink")，後來又發行了[DR-DOS](../Page/DR-DOS.md "wikilink")（這兩者都同時與MS-DOS和CP/M-86的軟體相容）。Digital Research被[Novell](../Page/Novell.md "wikilink")買下，DR-DOS變成了Novell DOS 7。之後，它又成為[Caldera Systems](../Page/SCO_Group.md "wikilink")（以[OpenDOS及DR](https://zh.wikipedia.org/wiki/OpenDOS "wikilink") DOS 7為名）、[Lineo以及](https://zh.wikipedia.org/wiki/Lineo "wikilink")[DeviceLogics的一部份](https://zh.wikipedia.org/wiki/DeviceLogics "wikilink")。

後來，微軟和IBM在兩套DOS的繼任作業系統（微軟的Windows和IBM的[OS/2](https://zh.wikipedia.org/wiki/OS/2 "wikilink")）上發生了一連串爭執。\[15\]他們在DOS系統上的開發也因此分道揚鑣。\[16\] MS-DOS在某些層面上轉型成為Windows；而PC-DOS的最後一個版本為1998年發行的PC-DOS 2000。

[FreeDOS](../Page/FreeDOS.md "wikilink")計劃開始於1994年6月26日。當天微軟宣佈他們將不再販賣MS-DOS，也不再提供支援。於是[Jim Hall張貼了一份宣言](https://zh.wikipedia.org/wiki/Jim_Hall_\(programmer\) "wikilink")，宣佈要開發DOS的開放源始碼替代品。在幾個星期內，包括Pat Villani和Tim Norman的幾位程式員加入了這個計劃。他們利用共享他們撰寫或現有程式碼的方式，產生了核心、command.com命令直譯器（shell界面）以及核心公用程式。在歷經了數個版本的官方預覽版本之後，FreeDOS 1.0版在2006年9月3日正式發佈。使用FreeDOS不需支付任何的版權費用或權利金。\[17\]\[18\]

## 淡出

早期版本的[Microsoft Windows只是在DOS之上執行的應用程式](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。\[19\]大約在90年代初，Windows仍相當依賴新版本的DOS。一直到[Windows for Workgroups 3.11](https://zh.wikipedia.org/wiki/Windows_3.1x "wikilink")，DOS才逐漸退居負責開機及載入Windows核心的角色。在Windows 95（以及其後發生的Windows 98與Me）中，MS-DOS核心依然存在，只是加上Windows當作系統的圖型界面。Windows 95與98的MS-DOS元件可以在不開啟Windows的情況下獨立執行（但Windows Me不行）。\[20\]隨著Windows的普及，大部份的電腦使用者都使用Windows，DOS也越來越少人使用。英特爾計畫於2020年徹底捨棄Intel平台的UEFI CSM（即UEFI的Legacy BIOS開機支援），屆時Intel平台的個人電腦將無法啟動DOS系統。

## 持續發展

有些電腦製造商（包括[Dell和](https://zh.wikipedia.org/wiki/Dell "wikilink")[HP](https://zh.wikipedia.org/wiki/HP "wikilink")）會預載FreeDOS當作[OEM作業系統出貨](https://zh.wikipedia.org/wiki/OEM "wikilink")。\[21\]\[22\]

有一套以[GPL方式授權的DOS](https://zh.wikipedia.org/wiki/GPL "wikilink")，名為NX-DOS，目前正在開發中。它是一套16位元的即時作業系統，擁有網路功能，可以從軟碟片開機，還有一個不太完整的USB驅動程式。NX-DOS專案從1992年就開始了，原本是個個人專案，在2005年的時候以GPL方式釋出。\[23\]

目前仍可取得的DOS系統有DR-DOS（以及加強的DR-DOS）、俄國人開發的[PTS-DOS](https://zh.wikipedia.org/wiki/PTS-DOS "wikilink")、ROM-DOS、FreeDOS、NX-DOS、[Multiuser DOS](https://web.archive.org/web/20081229091247/http://www.conctrls.com/CCInews.html)（以Digital Research的Concurrent DOS為基礎）....等等。

### 嵌入式系統

由於DOS可以直接存取硬體，因此它很適合拿來控制嵌入式裝置。新版本的DR-DOS便瞄準了這塊市場。\[24\] [佳能](../Page/佳能.md "wikilink")的數位相機[PowerShot Pro](https://zh.wikipedia.org/wiki/PowerShot_Pro "wikilink") 70使用ROM-DOS做為嵌入式系統。\[25\]

### 模擬器

在[Linux](../Page/Linux.md "wikilink")下，使用*[DOSEMU](https://zh.wikipedia.org/wiki/DOSEMU "wikilink")*（一套用來執行[真實模式](../Page/真實模式.md "wikilink")程式的Linux原生[虛擬機器](../Page/虛擬機器.md "wikilink")）可以執行DOS及其衍生版本。另外在各個版本的UNIX下也有許多用來執行DOS的[模擬器](https://zh.wikipedia.org/wiki/模擬器 "wikilink")，有些甚至在非[x86的平台上也可以執行](https://zh.wikipedia.org/wiki/x86 "wikilink")，像是[DOSBox](../Page/DOSBox.md "wikilink")。\[26\]\[27\]

由於[Windows XP和](../Page/Windows_XP.md "wikilink")[Vista無法和純DOS相容](../Page/Windows_Vista.md "wikilink")，DOS模擬器在這些系統上也越來越流行。這些模擬器可以用來執行過去的[老軟體或其他DOS軟體](https://zh.wikipedia.org/wiki/老軟體 "wikilink")。其中一個最為知名的是[DOSBox](../Page/DOSBox.md "wikilink")，主要的設計目標是在當前的作業系統上執行DOS的遊戲程式。\[28\]\[29\]

在[Microsoft Virtual PC下也可以執行DOS的應用程式](../Page/Microsoft_Virtual_PC.md "wikilink")，相容性比DOS模擬器好。使用者可以安裝合法的MS-DOS，然後除了那些最難對付的應用程式以外，絕大部份的DOS應用程式都可以在上面執行。\[30\]

### 與Microsoft Windows的關係

純32位元版本的Windows（從NT開始；包含了2003、XP和Vista）並非以DOS為基礎的。這些系統中內含了一個[NT DOS虛擬機器](https://zh.wikipedia.org/wiki/DOS虛擬機器 "wikilink")（NT Virtual DOS Machine，縮寫為NTVDM），在上面執行一個修改過的DOS。原本以DOS為基礎的系統使用傳統的[COMMAND.COM做為](https://zh.wikipedia.org/wiki/COMMAND.COM "wikilink")[命令列界面](../Page/命令行界面.md "wikilink")，而[Windows NT及其衍生版本則是使用](../Page/Windows_NT.md "wikilink")[cmd.exe](https://zh.wikipedia.org/wiki/cmd.exe "wikilink")（不過cmd.exe也移植了許多DOS的命令）。[x64架構的Windows也有cmd](https://zh.wikipedia.org/wiki/x64 "wikilink").exe（命令提示字元），但是無法執行16位元DOS程式（沒有NTVDM）。

## 軟體

[Arachne_VESA_Mode.png](https://zh.wikipedia.org/wiki/File:Arachne_VESA_Mode.png "fig:Arachne_VESA_Mode.png")

由於DOS在长时间内是PC相容機的主要平台，有許多為DOS撰寫的知名軟體。例如：

  - [AutoCAD](../Page/AutoCAD.md "wikilink")；一套工業用的繪圖軟件, 是少數能成功由DOS過度至WINDOWS的軟件[繪圖軟件](https://zh.wikipedia.org/wiki/繪圖軟件 "wikilink")
  - [Lotus 1-2-3](../Page/Lotus_1-2-3.md "wikilink")；一套在企業市場中被廣泛運用的[試算表軟體](https://zh.wikipedia.org/wiki/試算表 "wikilink")。被許多人視為IBM PC成功的主因\[31\]
  - [中文系統](https://zh.wikipedia.org/wiki/中文系統 "wikilink")；外掛在DOS以便顯示中文字形, 常見的有 [倚天](https://zh.wikipedia.org/wiki/倚天 "wikilink") 震漢 零壹 國喬等[外掛中文系統](https://zh.wikipedia.org/wiki/外掛中文系統 "wikilink")
  - [WordPerfect](../Page/WordPerfect.md "wikilink")；一套目前出在[Windows平台的](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[文字編輯器](https://zh.wikipedia.org/wiki/文字編輯器 "wikilink")
  - [WordStar](https://zh.wikipedia.org/wiki/WordStar "wikilink")；[文字編輯器](https://zh.wikipedia.org/wiki/文字編輯器 "wikilink")
  - [PE](https://zh.wikipedia.org/wiki/PE "wikilink")；一套[文字編輯器](https://zh.wikipedia.org/wiki/文字編輯器 "wikilink"), 由IBM公司所開發, 只有簡單排版功能, 當時常用於編寫程式原始碼.
  - [Copywrite](https://zh.wikipedia.org/wiki/Copywrite "wikilink")；一套[拷貝軟件](https://zh.wikipedia.org/wiki/拷貝軟件 "wikilink"), 用以備份具防拷保護的5.25吋磁片.
  - [CopyIIPC](https://zh.wikipedia.org/wiki/CopyIIPC "wikilink")；另一套[拷貝軟件](https://zh.wikipedia.org/wiki/拷貝軟件 "wikilink"), 用以備份具防拷保護的5.25吋磁片.
  - [WPS](../Page/WPS文字处理系统.md "wikilink")，DOS时代中国最流行的文字处理软件，现已改名为[WPS Office运行于](../Page/WPS_Office.md "wikilink")[Windows平台](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。
  - [CCED](https://zh.wikipedia.org/wiki/CCED "wikilink"); DOS时代在中国流行的中文字表处理软件。
  - [慧星一號](https://zh.wikipedia.org/wiki/慧星一號 "wikilink")，DOS時代香港及台灣最流行的中文文書處理软件，引入視窗操作概念。
  - [dBase](https://zh.wikipedia.org/wiki/dBase "wikilink")；最早的[資料庫軟體之一](https://zh.wikipedia.org/wiki/資料庫 "wikilink")
  - [CLIPPER](https://zh.wikipedia.org/wiki/CLIPPER "wikilink")；是dBASE的編譯器.
  - [Dr compiler](https://zh.wikipedia.org/wiki/Dr_compiler "wikilink")；是CLIPPER的加強版, 台灣在原有的CLIPPER加上新加入的LIB而成[資料庫軟體之一](https://zh.wikipedia.org/wiki/資料庫 "wikilink")

<!-- end list -->

  - [Pctools](https://zh.wikipedia.org/wiki/Pctools "wikilink"); [工具軟件整合DOS的COPY](https://zh.wikipedia.org/wiki/工具軟件 "wikilink") DISKCOPY FORMAT 等多項功能於一身的軟體, 以選單形式耒操作.

  - [Telix](https://zh.wikipedia.org/wiki/Telix "wikilink"); [數據機通訊軟體](https://zh.wikipedia.org/wiki/數據機 "wikilink"), 是BBS時期常用的軟件.

  - [PkZIP](https://zh.wikipedia.org/wiki/PkZIP "wikilink"); [壓縮軟體](https://zh.wikipedia.org/wiki/壓縮軟體 "wikilink") DOS 年代已出現的ZIP壓縮格式, WINDOWS 現已內含這功能.

  - [Arachne](https://zh.wikipedia.org/wiki/Arachne_\(web_browser\) "wikilink")；一套DOS版的[網路瀏覽器](https://zh.wikipedia.org/wiki/網路瀏覽器 "wikilink")

  - , [gcc的DOS移植版](https://zh.wikipedia.org/wiki/GNU_Compiler_Collection "wikilink")

  - ，取代原本的[命令列界面的軟體](../Page/命令行界面.md "wikilink")

  - [Borland](../Page/Borland.md "wikilink")的[整合式開發環境](https://zh.wikipedia.org/wiki/整合式開發環境 "wikilink")，包括了[Turbo Pascal](../Page/Turbo_Pascal.md "wikilink")、[Turbo BASIC](../Page/Turbo_BASIC.md "wikilink")、[Turbo C](https://zh.wikipedia.org/wiki/Turbo_C "wikilink")，以及[Turbo Assembler](https://zh.wikipedia.org/wiki/Turbo_Assembler "wikilink")

  - 撥接式[電子佈告欄 (BBS)架站軟體](../Page/BBS.md "wikilink")[RemoteAccess](https://zh.wikipedia.org/wiki/RemoteAccess "wikilink")、[Spitfire](https://zh.wikipedia.org/wiki/Spitfire_\(BBS\) "wikilink")、[Maximus](https://zh.wikipedia.org/wiki/Maximus_\(BBS\) "wikilink")、[McBBS](https://zh.wikipedia.org/wiki/McBBS "wikilink")，以及[TAG](https://zh.wikipedia.org/wiki/TAG_\(BBS\) "wikilink")

  - [BASIC](../Page/BASIC.md "wikilink")語言工具程式[BASICA](../Page/BASICA.md "wikilink")以及[GW-BASIC](../Page/GW-BASIC.md "wikilink")

  - 許多的[第一人稱射擊遊戲](https://zh.wikipedia.org/wiki/第一人稱射擊 "wikilink")：由[Id Software以及Apogee](../Page/Id_Software.md "wikilink") Software（後來改名為[3D Realms](https://zh.wikipedia.org/wiki/3D_Realms "wikilink")）合資開發的[德軍總部3D](../Page/德軍總部3D.md "wikilink")；Id Software的[Doom以及](https://zh.wikipedia.org/wiki/毀滅戰士 "wikilink")[Quake](https://zh.wikipedia.org/wiki/Quake "wikilink")；3D Realms的[Duke Nukem 3D](https://zh.wikipedia.org/wiki/Duke_Nukem_3D "wikilink")、[Shadow Warrior](https://zh.wikipedia.org/wiki/Shadow_Warrior "wikilink")，以及[Rise of the Triad](https://zh.wikipedia.org/wiki/Rise_of_the_Triad "wikilink")。3D Realms開發的這3套遊戲使用的都是DOS上的「[Build引擎](https://zh.wikipedia.org/wiki/Build引擎 "wikilink")」。Build引擎的作者是[Ken Silverman](https://zh.wikipedia.org/wiki/Ken_Silverman "wikilink")，這個引擎也被用於Silverman的[Ken's Labyrinth這個遊戲上](https://zh.wikipedia.org/wiki/Ken's_Labyrinth "wikilink")。

## 易用性

### 用户界面

所有的DOS均使用[命令列界面](../Page/命令行界面.md "wikilink")。執行程式的方法是在命令列中鍵入程式的名稱。DOS系統包含一些公用程式，也提供了一些不是以程式方式存在的命令（通常被稱為*內部命令*）。\[32\]

為了提供對使用者更友善的操作環境，許多的軟體廠商紛紛推出各式各樣的[檔案管理程式](https://zh.wikipedia.org/wiki/檔案管理程式 "wikilink")。這些程式通常使用選單及圖示做為界面。Microsoft Windows就是其中最有名的例子，最後發展成為[完整的作業系統](../Page/Windows_9x.md "wikilink")，取代DOS成了PC相容機上最受歡迎的作業系統。-{[使用文字模式的使用者界面](https://zh.wikipedia.org/wiki/使用文字模式的使用者界面 "wikilink")}-有：[Norton Commander](https://zh.wikipedia.org/wiki/Norton_Commander "wikilink")、[Dos Navigator](https://zh.wikipedia.org/wiki/Dos_Navigator "wikilink")、[Volkov Commander](https://zh.wikipedia.org/wiki/Volkov_Commander "wikilink")、Quarterdesk的[DESQview](https://zh.wikipedia.org/wiki/DESQview "wikilink")，以及[SideKick](https://zh.wikipedia.org/wiki/SideKick "wikilink")。使用[图形用户界面](../Page/图形用户界面.md "wikilink")的程式有：Digital Research的[Graphical Environment Manager](https://zh.wikipedia.org/wiki/Graphical_Environment_Manager "wikilink")（最早是寫給CP/M用的）以及[GEOS](https://zh.wikipedia.org/wiki/GEOS "wikilink")。

發展到最後，主要的DOS廠商開始在DOS中加入自己的環境管理程式。MS/PC-DOS 4中有[DOS Shell](https://zh.wikipedia.org/wiki/DOS_Shell "wikilink")；\[33\]而次年發行的DR-DOS 5則加入了以GEM為基礎的[ViewMAX](https://zh.wikipedia.org/wiki/ViewMAX "wikilink")。\[34\]

### 多工

在最初的設計中，DOS是一個單工的作業系統。MS/PC-DOS使用DOS shell做到[工作切換的功能](https://zh.wikipedia.org/wiki/工作切換 "wikilink")，\[35\]而DR-DOS則是在DR-DOS 6中利用*TaskMAX*做到類似的功能。\[36\] MS/PC-DOS自始至終都沒有[多工的能力](https://zh.wikipedia.org/wiki/多工 "wikilink")；\[37\] DR-DOS則是在DR-DOS 7中提供了這個功能（DR-DOS的[DPMI必須啟用](https://zh.wikipedia.org/wiki/DPMI "wikilink")）。\[38\]

## 限制

DOS的架構有數項惱人的限制。最早的8088微處理器只能定址到1 [MB的實體記憶體空間](https://zh.wikipedia.org/wiki/Megabyte "wikilink")。由於附加的硬體裝置也必須映射到這段空間，因此最高可以使用的記憶體只有640 [KB](https://zh.wikipedia.org/wiki/Kilobyte "wikilink")（被稱為「[傳統記憶體](https://zh.wikipedia.org/wiki/傳統記憶體 "wikilink")」）。在DOS的結構上，640 KB被視為最大的記憶體空間，DOS無法定址更高的位址。早期避開這個問題的做法是使用[擴展記憶體](../Page/擴展記憶體.md "wikilink")；[80286出來之後](https://zh.wikipedia.org/wiki/80286 "wikilink")，發展出了[延伸記憶體](https://zh.wikipedia.org/wiki/延伸記憶體 "wikilink")。雖然這些技術提供了更多的記憶體應用程式，但應用程式仍必須從傳統記憶體開始執行，佔用640 KB中的部份空間。[80386微處理器使用了重新設計的](https://zh.wikipedia.org/wiki/80386 "wikilink")[保護模式](../Page/保護模式.md "wikilink")，應用程式可以透過[DOS extender及](https://zh.wikipedia.org/wiki/DOS_extender "wikilink")[DOS保護模式界面](https://zh.wikipedia.org/wiki/DOS保護模式界面 "wikilink")（DOS Protected Mode Interface，縮寫為DPMI）等技術使用額外的記憶體，也可以有多工的功能。\[39\]\[40\]

DOS還有[硬碟分割區大小的限制](https://zh.wikipedia.org/wiki/硬碟 "wikilink")。造成這個問題的原因有兩個。首先，許多DOS類的作業系統只支援到[FAT](../Page/FAT.md "wikilink")16，而FAT16在設計上就不支援超過2.1 [GB的硬碟分割區](https://zh.wikipedia.org/wiki/Gigabyte "wikilink")。\[41\]另外，DOS存取硬碟的方式是透過[INT 13這個中斷呼叫](https://zh.wikipedia.org/wiki/INT_13 "wikilink")，然後往下再利用[CHS](../Page/CHS.md "wikilink")系統對應到磁碟上的資料。在這個架構下，作業系統只能看到8 GB的硬碟空間。\[42\]比較新的作業系統使用軟體的方式（例如：[32位元磁碟存取](https://zh.wikipedia.org/wiki/32位元磁碟存取 "wikilink")）存取硬碟。

FAT16和[FAT](../Page/FAT.md "wikilink")12（用於軟碟片）上的檔案名稱必須遵守「[8.3命名規則](https://zh.wikipedia.org/wiki/8.3 "wikilink")」：檔案的主檔名不得超個8個字元，而[副檔名則不得超過](https://zh.wikipedia.org/wiki/副檔名 "wikilink")3個字元。

## 命令集

**（部分）**

| 命令       | 備註         |
| -------- | ---------- |
| MD       | 建立子目錄      |
| CD       | 改變當前目錄     |
| RD       | 刪除子目錄命令    |
| DIR      | 示磁盤目錄命令    |
| PATH     | 路徑設置命令     |
| TREE     | 顯示磁盤目錄結構命令 |
| DELTREE  | 刪除整個目錄命令   |
| FORMAT   | 磁盤格式化命令    |
| SCANDISK | 檢查磁盤當前狀態命令 |
| UNFORMAT | 恢復格式化命令    |
| DISKCOPY | 整盤複製命令     |
| VOL      | 顯示磁盤捲標命令   |
| SCANDISK | 檢測、修復磁盤命令  |
| DEFRAG   | 重整磁盤命令     |
| SYS      | 系統複製命令     |
| COPY     | 文件複製命令     |
| XCOPY    | 目錄複製命令     |
| TYPE     | 顯示文件內容命令   |
| REN      | 文件改名命令     |
| FC       | 文件比較命令     |
| ATTRIB   | 修改文件屬性命令   |
| DEL      | 刪除文件命令     |
| UNDELETE | 恢復刪除命令     |
| VER      | 查看系統版本號命令  |
| DATE     | 查看日期命令     |

## 參考文獻

## 參見

  - [COMMAND.COM](https://zh.wikipedia.org/wiki/COMMAND.COM "wikilink")，DOS和[Windows 9x的命令列直譯器](../Page/Windows_9x.md "wikilink")
  - [MS-DOS API](../Page/MS-DOS_API.md "wikilink")
  - [MS-DOS](../Page/MS-DOS.md "wikilink")
  - [IBM PC-DOS](../Page/PC-DOS.md "wikilink")
  - [DR-DOS](../Page/DR-DOS.md "wikilink")
  - [FreeDOS](../Page/FreeDOS.md "wikilink")
  - [作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")
  - [作業系統列表](https://zh.wikipedia.org/wiki/作業系統列表 "wikilink")
  - [微軟作業系統列表](../Page/微軟作業系統列表.md "wikilink")

[Category:磁盘操作系统](https://zh.wikipedia.org/wiki/Category:磁盘操作系统 "wikilink") [Category:磁盤作業系統](https://zh.wikipedia.org/wiki/Category:磁盤作業系統 "wikilink")

1.  參閱[MS-DOS](../Page/MS-DOS.md "wikilink")條目

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

13.

14.
15.

16.

17.

18.

19.
20.

21.

22.

23.

24.

25.

26.
27.

28.

29.

30.

31.

32.

33.

34.

35.

36.

37.

38.

39.

40.

41.

42.