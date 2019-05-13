**urpmi**是[Mageia](../Page/Mageia.md "wikilink")/[Mandriva
Linux及其衍生發行版的](../Page/Mandriva_Linux.md "wikilink")[軟體包管理系統](https://zh.wikipedia.org/wiki/軟體包管理系統 "wikilink")，用於安裝、移除、升級和查詢本機或遠端（即提供軟體包的伺服器）的軟體包。它解決了[RPM套件管理員容易讓用戶經常遇到](../Page/RPM套件管理員.md "wikilink")[相依性地獄的問題](https://zh.wikipedia.org/wiki/相依性地獄 "wikilink")。它可以從官方或非官方的來源獲得軟體包（非官方來源如）。它有一個圖形前端：[Rpmdrake](https://zh.wikipedia.org/wiki/Rpmdrake "wikilink")。

除了被[Mandriva
Linux所使用外](../Page/Mandriva_Linux.md "wikilink")，它也被用在[Mageia
Linux](../Page/Mageia.md "wikilink")（一個基於Mandriva
Linux的[衍生版本](https://zh.wikipedia.org/wiki/復刻_\(軟體工程\) "wikilink")），以及ROSA
Linux（同樣是基於Mandriva Linux的分支）。

## 歷史

**urpmi**原先是作為一個解決[RPM套件管理員安裝侷限的實驗而由Pascal](../Page/RPM套件管理員.md "wikilink")
Rigaux所開發，爾後被[Mandriva
Linux所採用](../Page/Mandriva_Linux.md "wikilink")，故由François
Pons及其他[Mandriva公司的雇員所維護](../Page/Mandriva.md "wikilink")。目前（2010年至2013年）由同時也是rpmdrake的維護者的Thierry
Vignaud所維護（見[1](https://web.archive.org/web/20150523165549/http://svn.mandriva.com/viewvc/soft/rpmdrake/trunk/NEWS?revision=273200&view=markup)）。

Per Øyvind Karlsen目前（截至2013年止）維護著Rosa Linux的一個urpmi的分支，同時也由Thierry
Vignaud進行修復程式錯誤及改進效能的工作（如：
[2](http://svnweb.mageia.org/soft?view=revision&revision=7297) -\>
[3](https://abf.rosalinux.ru/proyvind/urpmi/commit/11e4718ce2a1bf814bcb1a68d2490e2ff3a8ca34.patch)），但這並不是Mandriva
Business Server所使用的版本。

## 指令

### 通用指令

|                       |                             |
| --------------------- | --------------------------- |
| 安裝軟體包                 | urpmi <軟體包名稱>               |
| 移除軟體包（包含依賴該軟體包的其他軟體包） | urpme <軟體包名稱>               |
| 查詢軟體包資料庫              | urpmq <軟體包名稱>               |
| 查詢包含了某一個檔案的軟體包        | urpmf <檔案名稱>                |
| 查詢只知道一部份名稱的軟體包        | urpmq --fuzzy <部份軟體包名稱>     |
| 升級軟體包列表               | urpmi.update -a             |
| 升級系統（使用所有的套件庫）        | urpmi --auto-select         |
| 升級系統（只使用升級的套件庫）       | urpmi --update--auto-select |

### 有用的指令

|                       |                        |
| --------------------- | ---------------------- |
| 尋找包含<字串>在其名稱裡的軟體包     | urpmi -y <字串>          |
| 尋找沒有相依性（沒有與其有相依性）的軟體包 | urpmi_rpm-find-leaves |

## 外部連結

  -
  - [鏡像選擇（easy
    urpmi）](https://web.archive.org/web/20130425023021/http://easyurpmi.zarb.org/)

  - [URPMI與RPM教學](https://web.archive.org/web/20100204094643/http://www.cs.utexas.edu/users/walter/geek/rpm-howto.html)