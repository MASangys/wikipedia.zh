**GmailFS**是一個[虛擬檔案系統](../Page/虛擬檔案系統.md "wikilink")，由[理查德·瓊斯開發](../Page/理查德·瓊斯.md "wikilink")，透過用戶的[Gmail電郵帳號來作檔案儲存](../Page/Gmail.md "wikilink")。GmailFS本身是為[Linux系統而寫](../Page/Linux.md "wikilink")，並應用了其[FUSE技術](../Page/FUSE.md "wikilink")，但亦有人把這系統轉移到[Microsoft
Windows及](../Page/Microsoft_Windows.md "wikilink")[Mac OS
X上運行](../Page/Mac_OS_X.md "wikilink")。

GmailFS的核心是一個以[Python編寫的](../Page/Python.md "wikilink")`libgmail`程式庫，作為FUSE與Gmail系統溝通的中介。整個GmailFS亦是以Python來創建。

GmailFS的速度主要受到用戶的互聯網連線速度限制，亦受到Gmail伺服器的存取速度而定。理論上，GmailFS裡的檔案存放可以是任何大小，但事實上由於受到Gmail郵件信箱的大小限制，GmailFS亦有其上限。檔案及目錄以郵件及附件的形式儲存在Gmail裡。

## 參看

  - [FUSE](../Page/FUSE.md "wikilink")：Linux的虛擬檔案系統
  - [Gmail](../Page/Gmail.md "wikilink")
  - [GMail Drive](../Page/GMail_Drive.md "wikilink")：一個在Windows上使用的近似系統。
  - [PhpGmailDrive](../Page/PhpGmailDrive.md "wikilink")

## 外部連結

  - [GmailFS official
    site](http://arquivo.pt/wayback/20090707151753/http%3A//richard.jones.name/google%2Dhacks/gmail%2Dfilesystem/gmail%2Dfilesystem.html)
  - [FON
    Backup](http://arquivo.pt/wayback/20091223201652/http://labs.fon.com/fonbackup)
  - [libgmail homepage](http://libgmail.sourceforge.net/)
  - [gDisk for Mac OS X](http://gdisk.sourceforge.net/)

[Category:Gmail](https://zh.wikipedia.org/wiki/Category:Gmail "wikilink")
[Category:云存储](https://zh.wikipedia.org/wiki/Category:云存储 "wikilink")
[Category:用Python編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Python編程的自由軟體 "wikilink")
[Category:特殊目的自由文件系统](https://zh.wikipedia.org/wiki/Category:特殊目的自由文件系统 "wikilink")
[Category:用户空间文件系统](https://zh.wikipedia.org/wiki/Category:用户空间文件系统 "wikilink")