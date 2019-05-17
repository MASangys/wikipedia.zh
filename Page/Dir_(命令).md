**`dir`**
（directory，目錄）是一個條列[檔案及](../Page/電腦檔案.md "wikilink")[目錄的](../Page/目录_\(文件系统\).md "wikilink")[命令行界面](../Page/命令行界面.md "wikilink")[指令](https://zh.wikipedia.org/wiki/指令_\(電腦\) "wikilink")，在[CP/M](https://zh.wikipedia.org/wiki/CP/M "wikilink")、[VMS](https://zh.wikipedia.org/wiki/OpenVMS "wikilink")、[DOS](../Page/DOS.md "wikilink")、[OS/2](https://zh.wikipedia.org/wiki/OS/2 "wikilink")、[Singularity及](../Page/Singularity.md "wikilink")[Microsoft
Windows等](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[作業系統中都有此指令](https://zh.wikipedia.org/wiki/作業系統 "wikilink")。

`dir`指令基本上會會列出目录中的檔案及子目录的名稱，也可以列出其檔案大小，建立時間等相關資訊，並且列出所在的[磁碟機](https://zh.wikipedia.org/wiki/磁碟機 "wikilink")、可用空間等資訊。`dir`指令也可以尋找其[檔案名稱符合特定條件的檔案](../Page/檔案名稱.md "wikilink")。

## 用法範例

以下的範例是在[Windows
7中給](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")`dir`指令，沒有指令列引數時的輸出：

``` doscon
 C:\Users\Public\Pictures\Sample Pictures>dir
  Volume in drive C is System
  Volume Serial Number is C8D0-76E2

  Directory of C:\Users\Public\Pictures\Sample Pictures

 14-07-2009  06:41    <DIR>          .
 14-07-2009  06:41    <DIR>          ..
 14-07-2009  06:52           879,394 Chrysanthemum.jpg
 14-07-2009  06:52           845,941 Desert.jpg
 14-07-2009  06:52           595,284 Hydrangeas.jpg
 14-07-2009  06:52           775,702 Jellyfish.jpg
 14-07-2009  06:52           780,831 Koala.jpg
 14-07-2009  06:52           561,276 Lighthouse.jpg
 14-07-2009  06:52           777,835 Penguins.jpg
 14-07-2009  06:52           620,888 Tulips.jpg
                8 File(s)      5,837,151 bytes
                2 Dir(s)  57,925,980,160 bytes free

 C:\Users\Public\Pictures\Sample Pictures>dir /w
  Volume in drive C is System
  Volume Serial Number is C8D0-76E2

  Directory of C:\Users\Public\Pictures\Sample Pictures

 [.]                 [..]                Chrysanthemum.jpg   Desert.jpg          Hydrangeas.jpg      Jellyfish.jpg
 Koala.jpg           Lighthouse.jpg      Penguins.jpg        Tulips.jpg
                8 File(s)      5,837,151 bytes
                2 Dir(s)  57,925,992,448 bytes free

 C:\Users\Public\Pictures\Sample Pictures>
```

## 選項及指令列引數

以下是[Microsoft
Windows下](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，`dir`指令的選項及指令列引數

``` doscon
 DIR [drive:][path][filename] [/A[[:]attributes|:]attributes]] [/B] [/C] [/D] [/L] [/N]
  [/O[[:]sortorder|:]sortorder]] [/P] [/Q] [/R] [/S] [/T[[:]timefield|:]timefield]] [/W] [/X] [/4]

  [drive:][path][filename]
              Specifies drive, directory, and/or files to list.

  /A          Displays files with specified attributes.
  attributes   D  Directories                R  Read-only files
               H  Hidden files               A  Files ready for archiving
               S  System files               I  Not content indexed files
               L  Reparse Points             -  Prefix meaning not
  /B          Uses bare format (no heading information or summary).
  /C          Display the thousand separator in file sizes.  This is the
              default.  Use /-C to disable display of separator.
  /D          Same as wide but files are list sorted by column.
  /L          Uses lowercase.
  /N          New long list format where filenames are on the far right.
  /O          List by files in sorted order.
  sortorder    N  By name (alphabetic)       S  By size (smallest first)
               E  By extension (alphabetic)  D  By date/time (oldest first)
               G  Group directories first    -  Prefix to reverse order
  /P          Pauses after each screenful of information.
  /Q          Display the owner of the file.
  /R          Display alternate data streams of the file.
  /S          Displays files in specified directory and all subdirectories.
  /T          Controls which time field displayed or used for sorting timefield.
               C  Creation
               A  Last Access
               W  Last Written
  /W          Uses wide list format.
  /X          This displays the short names generated for non-8dot3 file names.  The format is that of /N with the
              name inserted before the long name.  If no short name is present, blanks are displayed in its place.
  /4          Displays four-digit years.
```

選項可以放在DIRCMD[環境變數中](https://zh.wikipedia.org/wiki/環境變數 "wikilink")，若要關閉現有的設定，可以在選項前加上-，例如/-W。
\[1\]

## Unix

`dir`不是[Unix指令](https://zh.wikipedia.org/wiki/Unix "wikilink")，Unix有類似的指令[`ls`](https://zh.wikipedia.org/wiki/ls "wikilink")，不過[GNU/Linux作業系統中有](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")`dir`指令，等效於`ls -C -b`\[2\]。

## 相關條目

  - [MS-DOS命令列表](../Page/MS-DOS命令列表.md "wikilink")

## 參考資料

[Category:内部DOS命令](https://zh.wikipedia.org/wiki/Category:内部DOS命令 "wikilink")
[Category:Windows管理](https://zh.wikipedia.org/wiki/Category:Windows管理 "wikilink")
[Category:文件系统目录](https://zh.wikipedia.org/wiki/Category:文件系统目录 "wikilink")

1.  Windows 7
2.  \[//www.gnu.org/software/coreutils/manual/html_node/dir-invocation.html
    dir invocation\] (GNU coreutils) at www.gnu.org