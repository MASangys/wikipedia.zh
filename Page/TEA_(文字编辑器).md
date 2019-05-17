**TEA**是一個具有圖形化使用者界面的文字編輯器，名稱是從英文*Text Editor of the Atomic
Era*（意為“原子時代的文字編輯器”）的首字母縮略而衍生。它是為了資源低消耗、廣泛的函式功能和適應性而設計的\[1\]，並且可用於Qt
5或4.6版本以上支援的所有桌面作業系統，其使用者界面也有多種語言的版本。

## 使用者界面概念

TEA的應用範圍超過純文字編輯器的範疇，因為它被設計為用於文字編輯的桌面環境。軟件視窗的右側有五個標籤頁：

  - “editor”編輯頁：表示實際的文字編輯器。在主視窗頂端會有排放名稱標籤的一列，可在多個開啟的文件之間切換。編輯選項包含文字編輯主視窗。在該視窗下方有一顯示編輯歷史的訊息列，最㡳下一列是FIF，“著名輸入字段”如下。
    FIF是用於輸入TEA特定命令的特殊命令行。編輯歷史記錄和FIF也可以在四個其他選項卡中看到。

<!-- end list -->

  - “files”檔案頁：可瀏覽及選擇計算機系統中文件檔案的管理器。

<!-- end list -->

  - “options”選項頁：設置選項，用於更改TEA的行為並修改選單的內容。

<!-- end list -->

  - “dates”日曆頁：包含一個日曆。

<!-- end list -->

  - “manual”學習頁：包含詳細的用戶手冊，包括FIF的說明。

## 軟件特點

  - 語法高亮顯示：C編程語言，C++，Bash腳本，BASIC，C\#編程語言，Fortran，Java編程語言，LilyPond，Lout,
    Lua語言，NASM，Pascal編程語言，Perl，PHP，Python編程語言，TeX/LaTeX，Verilog。
  - TEA提供一些選用的主題方案，可改變外觀的顏色顯示。
  - 在“調諧”中，可以激活當前行的突出顯示，這是對於校對特別有用的功能，其中非電子文本和包含文本的位圖必須與屏幕上的文本進行比較。典型的用途是使用OCR程序編輯被轉換成文本文件的掃描文本，例如。用於在語言學中創建語料庫。
  - 在檔案頁（文件管理器）中有一個書籤選單，其中可儲存快速導航的文件夾路徑。
  - 拼寫檢查器
  - 自由定義的文字片段
  - 套版格式：HTML，XHTML，DocBook，LaTeX，Lout，DokuWiki和MediaWiki
  - 文字轉換功能（大寫、小寫、摩斯碼等）
  - 文本統計功能：字數統計；提取詞字長；UNITAZ數排序；UNITAZ字母排序；子字串計數與子字串併計數（regexp）
  - 數學函數

### FIF

The *Famous Input Field* is a TEA specific command line. In order to
find and replace text, enter e.g. `SOURCETEXT~TARGETTEXT` and click on
*Replace*, *Replace All* or *Replace all in opened files* in the
*Search* menu. The string `SOURCETEXT` well be replaced by the string
`TARGETTEXT` in the chosen way.

In addition, the FIF includes three separate search buttons, located on
the right side.

### 插件

TEA網站有個名為“Acalc”的插件，它支援JavaScript的Math函數（sin
，cos，sqrt等）。例如在編輯器中輸入`2+2*sqrt(13)`數式，選擇它並在插件選單中點擊Acalc，可求得數式的解答。

## 歷史

<table>
<thead>
<tr class="header">
<th><p>Release date</p></th>
<th><p>Win32 API</p></th>
<th><p>GTK+</p></th>
<th><p>Qt</p></th>
<th><p>Comment</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>December 19, 2001</p></td>
<td><p>1.0.0.46</p></td>
<td><p>—</p></td>
<td><p>—</p></td>
<td><p>Alpha</p></td>
</tr>
<tr class="even">
<td><p>April 26, 2006</p></td>
<td><p>12.1</p></td>
<td><p>13.0</p></td>
<td><p>—</p></td>
<td><p>First GTK+ version<br />
(still parallelly with Win32)</p></td>
</tr>
<tr class="odd">
<td><p>July 4, 2008</p></td>
<td><p>—</p></td>
<td><p>—</p></td>
<td><p>18.0.0</p></td>
<td><p>First Qt version (Qt 3 &amp; Qt 4)<br />
(rewrite from scratch)</p></td>
</tr>
<tr class="even">
<td><p>August 6, 2008</p></td>
<td><p>—</p></td>
<td><p>17.6.6</p></td>
<td><p>—</p></td>
<td><p>Last regular GTK+ 2 version<br />
(does not compile on modern systems)</p></td>
</tr>
<tr class="odd">
<td><p>December 24, 2010</p></td>
<td><p>—</p></td>
<td><p>—</p></td>
<td><p>28.1.4</p></td>
<td><p>Last version supporting Windows 98</p></td>
</tr>
<tr class="even">
<td><p>April 27, 2013</p></td>
<td><p>—</p></td>
<td><p>17.6.7</p></td>
<td><p>—</p></td>
<td><p>Adaptation of the old GTK+ 2 version for modern systems</p></td>
</tr>
<tr class="odd">
<td><p>July 3, 2013</p></td>
<td><p>—</p></td>
<td><p>18.0.0</p></td>
<td><p>—</p></td>
<td><p>Port of the adapted GTK+ 2 version to GTK+ 3</p></td>
</tr>
<tr class="even">
<td><p>April 21, 2016</p></td>
<td><p>—</p></td>
<td><p>—</p></td>
<td><p>41.1.1</p></td>
<td><p>newest version (Qt 4.6+ &amp; Qt 5)</p></td>
</tr>
</tbody>
</table>

網站歷史:

| From           | To             | Site                                                                                                  |
| -------------- | -------------- | ----------------------------------------------------------------------------------------------------- |
| December 2001  | June 26, 2006  | [<http://www.roxton.kiev.ua/>](https://web.archive.org/web/20020109232923/http://www.roxton.kiev.ua/) |
| June 26, 2006  | March 24, 2013 | <http://tea-editor.sourceforge.net/>                                                                  |
| March 24, 2013 | now            | [semiletov.org/tea/](http://semiletov.org/tea/) & [tea.ourproject.org](http://tea.ourproject.org/)    |

## 參考

## 外部連結

  - [semiletov.org/tea/](http://semiletov.org/tea/) &
    [tea.ourproject.org](http://tea.ourproject.org/)
  - historically:
    [tea-editor.sourceforge.net](http://tea-editor.sourceforge.net/) /
    www.roxton.kiev.ua
  - [TEA: A Smooth Text Editor That Hits the Sweet
    Spot](http://www.linuxinsider.com/story/74677.html)
  - [The Qt-based Tea Text Editor: Managing Image and Text Files in One
    Application](http://www.freesoftwaremagazine.com/articles/tea_text_editor_managing_image_and_text_files_one_application)
  - [跨平台的文字編輯器 -
    TEA](https://www.openfoundry.org/tw/foss-programs/2390--tea)

[Category:Linux文本编辑器](https://zh.wikipedia.org/wiki/Category:Linux文本编辑器 "wikilink")
[Category:文本编辑器](https://zh.wikipedia.org/wiki/Category:文本编辑器 "wikilink")
[Category:Unix文本编辑器](https://zh.wikipedia.org/wiki/Category:Unix文本编辑器 "wikilink")
[Category:Windows文本编辑器](https://zh.wikipedia.org/wiki/Category:Windows文本编辑器 "wikilink")
[Category:自由文本编辑器](https://zh.wikipedia.org/wiki/Category:自由文本编辑器 "wikilink")
[Category:自由整合開發環境](https://zh.wikipedia.org/wiki/Category:自由整合開發環境 "wikilink")
[Category:用C++編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C++編程的自由軟體 "wikilink")

1.