**MAME**
是一套設計給[個人電腦使用的軟體](../Page/個人電腦.md "wikilink")[應用程式](../Page/應用程式.md "wikilink")，其目標在於盡可能的忠實且精確地[模擬許多](../Page/模擬器.md "wikilink")[街機遊戲](../Page/街機.md "wikilink")，宗旨在於保存遊戲的歷史，並防止古老的遊戲被遺失或遺忘。程式名稱是由全名
**M**ultiple **A**rcade **M**achine **E**mulator（多重大型電玩模擬器）的首位字母縮寫成的單字。

## MAME 版本

MAME
主要是由[C語言寫成的](../Page/C語言.md "wikilink")[跨平台應用程式](../Page/跨平台.md "wikilink")（從
0.137 版開始支援[C++語言](../Page/C++語言.md "wikilink")），有許多不同平台的衍生版本，官方只发布对应
Windows 平台的[執行檔](../Page/執行檔.md "wikilink")。開發目前是以
[Windows](../Page/Microsoft_Windows.md "wikilink")
平台的[命令列版本為主](../Page/命令列.md "wikilink")（在 0.37b14
版之前的開發是以 [MS-DOS](../Page/MS-DOS.md "wikilink") 平台為主，現已停止發佈），從 0.137
版開始提供 [SDL](../Page/SDL.md "wikilink") 跨平臺函式庫的 SDLMAME
原始碼（不提供執行檔）；其他非官方的衍生版有加入
[Windows](../Page/Windows.md "wikilink")
[圖形使用介面的](../Page/GUI.md "wikilink") MAMEUI，以及
[Unix-like](../Page/Unix-like.md "wikilink") 系統的 XMAME、[Mac OS
X](../Page/Mac_OS_X.md "wikilink") 系統的 MacMAME。

根據 MAME 官方網站描述，第一個公眾 MAME 版本 (0.1)
是在1997年2月5日，由義大利[程式設計師](../Page/程式設計師.md "wikilink")
Nicola Salmoria 發佈。目前 MAME
發展至今已超過十年，官方為了紀念十周年這個里程碑，選在2007年2月5日的十週年生日推出新版本
(0.112) 以茲紀念。一直以來，除了 MAME
官方開發團隊致力於程式開發之外，尚有數百名來自全世界的非官方程式設計師參與編寫，目前此開發專案由官方開發團隊核心成員
[Angelo Salese](http://mamedev.emulab.it/kale/) \[1\] 負責管理與發佈。

### 中間更新

MAME
除了正式發行的版本之外，在開發團隊官方網站尚有階段性的發佈中間更新，這是介於現時官方正式版和未來正式版之間的最新更新。中間更新是以[原始碼差異部分的補綴文件形式發佈](../Page/原始碼.md "wikilink")，並未提供可執行的檔案，使用者必須自行編譯成[執行檔才能使用](../Page/EXE.md "wikilink")，或是使用同版號的
MAME 衍生版本。

## MAME 宣告

MAME 是一套模擬器：或多或少忠實的重現了部分業務機台的性能，但是沒有軟體的硬體是毫無用處的，所以必須要有 ROM 映像檔配合執行，這種
ROM 檔跟其它任何一種商業軟體一樣都具有版權，因此如果您並不擁有原始機台而去使用它們，乃是違法的行為。不言而喻，這些 ROM 檔不能連同
MAME 一起散佈，將 MAME 和 ROM 映像檔一起散佈的行為已經違反了著作權法，應該盡速向這些作者回報，以便採取適當的法律措施。

### 軟體費用

MAME 是免費的，其[原始碼也是免費的](../Page/原始碼.md "wikilink")，但在2016年3月更改授權許可前不允許銷售。

### 軟體授權

MAME
是公開原始碼的[免費軟體（Freeware）](../Page/免費軟體.md "wikilink")，雖然使用其軟體及原始碼完全免費，也可以重新分配，但卻不允許銷售，也不允許製成商業產品或是用於商業活動，故不能歸類為標準的[開放原始碼（Open
source）或](../Page/開放原始碼.md "wikilink")[自由軟體（Free
software）](../Page/自由軟體.md "wikilink")，因為在某些授權條例上是有所牴觸的，所有授權規範一切依照官方制定的
[MAME
授權協議](http://www.mamedev.org/legal.html)為準則。按照[理查德·斯托曼的说法](../Page/理查德·斯托曼.md "wikilink")，MAME是准自由软件(Semi-free
Software)。

不過在特定情況下，無論是修改或是未修改過，且「再次散佈的情形下不得被販售，或者是被用於商業產品及活動」，MAME
即能以[原始碼或是](../Page/原始碼.md "wikilink")[執行檔的形式再次散佈](../Page/EXE.md "wikilink")。但另外修改過的再次散佈版（衍生版本）必須包含完整的對應原始碼（類似
[Copyleft](../Page/Copyleft.md "wikilink")）。參考 [MAME
授權協議](http://www.mamedev.org/legal.html)。

MAME已於2015年5月開始更改其授權許可，至2016年3月止已改爲使用[BSD
license和](../Page/BSD_license.md "wikilink")[GNU GPL
v2+](../Page/GNU_General_Public_License.md "wikilink")，成爲真正的[自由軟體](../Page/自由軟體.md "wikilink")。

## 工作原理

MAME 由多個元件組成，包含：中央處理器模擬器，用以模擬各種街機中的 CPU
裝置；輸入系統模擬，用以模擬各種街機輸入設備，例如按鈕、搖桿、光線槍和其他控制器的輸入系統；街機顯示和聲音的模擬器。MAME
唯一不包含的是 ROM 映像，也就是原始街機遊戲中的軟體。在 MAME
運行時，就如同多年前的原本遊戲在運行，只不過是在不同的設備上，以模擬原始設備的方式運行罷了。

## ROM 的定義

在大多數的街機中，遊戲資料（包含了執行的程式、圖形及音效等）都是儲存於遊戲機板上的[唯讀記憶體](../Page/唯讀記憶體.md "wikilink")（**R**ead-**O**nly
**M**emory）晶片裡（因此這些資料被簡稱為
ROM），當然也有採用其他儲存媒介的，像是[卡匣](../Page/卡匣.md "wikilink")、[磁片](../Page/磁片.md "wikilink")、[硬碟](../Page/硬碟.md "wikilink")、[光碟](../Page/光碟.md "wikilink")、[鐳射光碟等](../Page/鐳射影碟.md "wikilink")。將儲存於其中的遊戲資料讀出後儲存成為一般電腦使用的檔案格式，這個過程稱為轉儲或吸出（dumping）。因為大多數遊戲資料都是儲存於唯讀記憶體，漸漸地不管這些檔案原先是被儲存於怎樣的媒介，吸出後的檔案都通稱為
ROM 映像檔或 ROM。

在要執行某一特定的遊戲時，MAME 就需要這些吸出自原始街機的整組檔案，這一整組的檔案稱之為「ROM 集合」，但是礙於法規 MAME
不會自帶這些檔案。

### ROM 存放形式

1.  一般的 ROM 集合。將一個遊戲中所包含的全部吸出資料後，以壓縮方式存放於一個內定名稱的
    **[ZIP](../Page/ZIP_\(文件格式\).md "wikilink")**
    格式壓縮檔（也可以未壓縮方式存放於同名的資料夾）。
2.  CHD 的 ROM 集合。只針對遊戲中包含硬碟、光碟的大型儲存媒介，將單一媒介中的資料吸出為映像檔後，再壓縮為單一
    **CHD**（**C**ompressed **H**unks of **D**ata）格式的壓縮檔。

### ROM 集合類型

1.  原作版遊戲 ROM 集合，又稱之為主版本。這些 ROM 檔包含供遊戲執行所需要的所有資料，但不包含 BIOS 檔案。
    MAME 開發團隊會訂定每種遊戲的原作版，通常都是挑選最新的版本當成原作版，如果有多種區域版本的話，則通常挑選世界版或是美國版。
2.  仿製版遊戲 ROM 集合，又稱之為子版本。與原作版本有差異的版本，或是變體版（例如 *Street Fighter II Turbo*
    為 *Street Fighter II Champion Edition* 的變體版）。包含有：替換版
    (alternate)、盜版 (bootleg)、駭客版 (hack)、解密版 (decrypted)、衍生版
    (derivative)、開發版 (prototype)、複製版、相容版、授權版、變體版、新舊版、各種區域版、各種語言版等。
    通常會被歸類為仿製版和原作版此兩者相依性關係的遊戲，主要原因在於這些遊戲的 ROM
    結構有雷同的內容，所以便將其中之一個歸類為該另一個遊戲的子版本。仿製版的遊戲一定會有一個原作版，原作版遊戲卻不一定帶有仿製版、而有些原作版遊戲還帶有一個以上的仿製版。
3.  BIOS 的 ROM 集合，這是通用於標準化的街機系統（例如
    [NeoGeo](../Page/NEOGEO.md "wikilink")），主要用於啟動硬體，然後交由遊戲軟體接管系統。

### ROM 取得管道

1.  如果擁有實際的街機遊戲基版及 [EPROM](../Page/EPROM.md "wikilink") 吸出工具，可自行讀出這些 ROM
    檔案。
2.  部分像是 [Capcom](../Page/Capcom.md "wikilink") 及
    [Atari](../Page/Atari.md "wikilink") 公司提供自家已淘汰的老舊街機遊戲 ROM
    販賣服務，採個別販售或是包含於其他產品中。
3.  還有一些 ROM 集合因為遊戲的版權持有人開放了在非商業行為下的自由散佈權利，這些集合可以在 [MAME
    網站](http://mamedev.org/roms)上取得（例如 *Robby Roto*）。

## 外部連結

### 官方網站

  - [MAME 開發團隊官方網站](http://www.mamedev.org) - 提供
    [Windows](../Page/Windows.md "wikilink")
    [命令列版本和中間更新](../Page/命令列.md "wikilink")
  - [SDLMAME 官方原始碼](http://mamedev.org/release.html) - 官方提供的 SDLMAME
    原始碼，採用 [SDL](../Page/SDL.md "wikilink") 跨平臺多媒體函式庫
  - [MAME 開發團隊維基網站](http://mamedev.org/devwiki/index.php/Main_Page) -
    提供給開發人員各種相關資訊

### 衍生版本

  - [MAMEUI 官方網站](http://www.mameui.info/) -
    [Windows](../Page/Windows.md "wikilink")
    [圖形使用介面的官方授權改版](../Page/GUI.md "wikilink")
  - [MAME Plus\!](../Page/MAME_Plus!.md "wikilink") - Windows
    圖形使用介面的多國語言版本
  - [XMAME](http://freshmeat.net/projects/xmame/) -
    [Unix-like](../Page/Unix-like.md "wikilink") 版本
  - [MacMAME](http://www.macmame.org/) - [Mac
    OS](../Page/Mac_OS.md "wikilink")（[麥金塔](../Page/麥金塔.md "wikilink")）版本
  - [BeMAME](http://www.beemulated.net/arcade/multi.phtml) -
    [BeOS](../Page/BeOS.md "wikilink") 版本

### 相關資料

  - [MAMEWorld.net](http://www.mameworld.net/) - 提供 MAME 豐富資源、相關週邊的連結等
  - [Mame History.dat](http://www.arcade-history.com) - 記錄各個遊戲的歷史資料
  - [Mameinfo.dat](http://www.mameworld.net/mameinfo/) - 記錄各個驅動的模擬進度
  - MAME
    遊戲的非官方譯名对照：[Za-Zz](https://web.archive.org/web/20071224151508/http://towerhe.javaeye.com/blog/93711)

## 引用資料

[Category:免費軟件](https://zh.wikipedia.org/wiki/Category:免費軟件 "wikilink")
[Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink")
[Category:遊戲機模擬器](https://zh.wikipedia.org/wiki/Category:遊戲機模擬器 "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")
[Category:街機](https://zh.wikipedia.org/wiki/Category:街機 "wikilink")

1.