**PowerBASIC**由位於[美國](../Page/美國.md "wikilink")[佛羅里達州](../Page/佛羅里達州.md "wikilink")[威尼斯的PowerBASIC公司所製作](../Page/威尼斯.md "wikilink")，為一種[BASIC編譯器](../Page/BASIC.md "wikilink")，分別擁有[DOS版本及](../Page/DOS.md "wikilink")[Windows版本](../Page/Windows.md "wikilink")（其中又有[命令行版本及](../Page/命令行.md "wikilink")[圖形界面開發版本](../Page/圖形界面.md "wikilink")）。DOS版本使用的語法類似[QBasic和](../Page/QBasic.md "wikilink")[QuickBASIC](../Page/QuickBASIC.md "wikilink")，而Windows版本則類似其他程式編譯器，結合標準BASIC語言和[API調用](../Page/API.md "wikilink")。最早發布的版本被稱作BASIC/Z，之後由[Borland發行時叫做](../Page/Borland.md "wikilink")[Turbo
BASIC](../Page/Turbo_BASIC.md "wikilink")。1989年Borland不再販售Turbo
BASIC與[Turbo Pascal](../Page/Turbo_Pascal.md "wikilink")，Turbo
BASIC由原開發者成立公司，而以PowerBASIC為名繼續發行。\[1\]

## 語言特色

**PowerBASIC**的Windows版本並沒有類似[Visual
Basic的圖形開發界面](../Page/Visual_Basic.md "wikilink")，取而代之的是一個包含調試工具的純文字開發界面，但官方及其他團體均有提供另外開發的圖形開發界面以解決文字開發界面的不足，例如官方開發的PowerBASIC
Forms及HelloBasic.com開發的[PwrDev
Developer等等](../Page/PwrDev_Developer.md "wikilink")。PowerBASIC能編譯出[機器代碼](../Page/機器代碼.md "wikilink")，即不需要[運行庫的程式](../Page/函式庫.md "wikilink")，並以編譯得出程式的體積小與運行速度快作為招徠，試圖擺脫過往BASIC語言運行速度慢的特點，其運行速度甚至比當今流行的語言仍要快，例如Visual
Basic,
[C++](../Page/C++.md "wikilink")。\[2\]同時PowerBASIC支援開發更多範疇的程序，例如[DLL](../Page/DLL.md "wikilink")，[控制台程式甚至](../Page/控制面板.md "wikilink")[驅動程式](../Page/驅動程式.md "wikilink")。

## 版本更新\[3\]

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>發佈日期</p></th>
<th><p>主要更新內容</p></th>
<th><p>後續更新</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>PB/WIN 7.0</strong></p></td>
<td><p>2003年5月5日[4]</p></td>
<td><p>---</p></td>
<td><p>於2003年5月29日更新7.02版本。[5]</p></td>
</tr>
<tr class="even">
<td><p>於2004年4月15日更新7.03版本。[6]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>於2004年5月10日更新7.04版本。[7]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>PB/WIN 8.0</strong></p></td>
<td><p>2005年3月18日[8]</p></td>
<td><p>---</p></td>
<td><p>於2006年9月21日更新8.02版本。</p></td>
</tr>
<tr class="odd">
<td><p>於2006年11月20日更新8.03版本。[9]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>於2007年10月9日更新8.04版本。[10]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>PB/WIN 9.0</strong></p></td>
<td><p>2008年8月12日[11]</p></td>
<td><ol>
<li>加入對<a href="../Page/物件_(電腦科學).md" title="wikilink">物件的支持</a></li>
</ol></td>
<td><p>於2009年3月3日更新9.01版本。[12]</p></td>
</tr>
<tr class="even">
<td><p>於2009年10月8日更新9.02版本。[13]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>於2010年1月6日更新9.03版本。[14]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>於2010年3月15日更新9.04版本。[15]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>於2010年7月30日更新9.05版本。[16]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>PB/WIN 10.0</strong></p></td>
<td><p>2011年1月29日[17]</p></td>
<td><ol>
<li>加入<a href="../Page/靜態連結函式庫.md" title="wikilink">靜態連結庫</a>（.sll）的支持；</li>
<li>加強對<a href="../Page/Unicode.md" title="wikilink">Unicode字串的支持</a>；</li>
<li>加強對<a href="../Page/多線程.md" title="wikilink">多線程的支持</a>。</li>
</ol></td>
<td><p>尚未有版本更新。</p></td>
</tr>
</tbody>
</table>

## 代碼範例

  - 編寫靜態連結庫的範例代碼：

<!-- end list -->

``` freebasic
'編譯為conversion.sll檔案
#COMPILE SLL "conversion.sll"
#DIM ALL

'由毫米換算成吋的函數
FUNCTION MillimetersToInches (BYVAL mm AS DOUBLE) COMMON AS DOUBLE
    FUNCTION = mm * 0.03937#
END FUNCTION
```

  - 編寫動態連結庫的範例代碼：

<!-- end list -->

``` freebasic
#COMPILE DLL "conversion.dll"
#DIM ALL

FUNCTION LIBMAIN (BYVAL hInstance   AS LONG, _
                  BYVAL fwdReason   AS LONG, _
                  BYVAL lpvReserved AS LONG) AS LONG
    SELECT CASE fwdReason
    CASE %DLL_PROCESS_ATTACH
        FUNCTION = 1
    CASE %DLL_PROCESS_DETACH
        FUNCTION = 1
    CASE %DLL_THREAD_ATTACH
        FUNCTION = 1
    CASE %DLL_THREAD_DETACH
        FUNCTION = 1
    END SELECT
END FUNCTION

'由毫米換算成吋的函數
FUNCTION MillimetersToInches ALIAS "MillimetersToInches" (BYVAL mm AS DOUBLE) EXPORT AS DOUBLE
    FUNCTION = mm * 0.03937#
END FUNCTION
```

## 参考文献

<div class="references-small">

<references />

</div>

## 外部連結

  - [PowerBASIC官方網站](http://www.powerbasic.com)

[Category:BASIC程序设计语言家族](https://zh.wikipedia.org/wiki/Category:BASIC程序设计语言家族 "wikilink")

1.
2.  [PowerBASIC官方介紹](http://www.powerbasic.com/products/pbdll32/)
3.  [版本更新資料來源：PowerBASIC官方論壇產品發佈頁](http://www.powerbasic.com/support/pbforums/forumdisplay.php?f=6)

4.  [Free Updates to PB/CC 3 and PB/Win 7.0 - PowerBASIC Peer Support
    Forums](http://www.powerbasic.com/support/pbforums/showthread.php?t=11)

5.  [Free Updates to PB/CC 3 and PB/Win 7（x.02 release） - PowerBASIC
    Peer Support
    Forums](http://www.powerbasic.com/support/pbforums/showthread.php?t=12)

6.  [Free Updates to PB/CC 3 and PB/Win 7（x.03 release） - PowerBASIC
    Peer Support
    Forums](http://www.powerbasic.com/support/pbforums/showthread.php?t=14)

7.  [Free Updates to PB/CC 3 and PB/Win 7（x.04 release） - PowerBASIC
    Peer Support
    Forums](http://www.powerbasic.com/support/pbforums/showthread.php?t=15)

8.  [Free Updates to PB/CC 4, PB/Win 8, and PB/Forms 1.5 - PowerBASIC
    Peer Support
    Forums](http://www.powerbasic.com/support/pbforums/showthread.php?t=16)

9.  [Free Updates to PB/CC 4 and PB/Win 8（x.03 release） - PowerBASIC
    Peer Support
    Forums](http://www.powerbasic.com/support/pbforums/showthread.php?t=17)

10. [Free Updates to PB/CC 4 and PB/Win 8（x.04 release） - PowerBASIC
    Peer Support
    Forums](http://www.powerbasic.com/support/pbforums/showthread.php?t=35131)

11. [Release of PowerBASIC 9.0 for Windows - PowerBASIC Peer Support
    Forums](http://www.powerbasic.com/support/pbforums/showthread.php?t=38203)

12. [Free Updates to PB/CC 5 and PB/Win 9（x.01 release） - PowerBASIC
    Peer Support
    Forums](http://www.powerbasic.com/support/pbforums/showthread.php?t=40039)

13. [Free Updates to PB/CC 5 and PB/Win 9（x.02 release） - PowerBASIC
    Peer Support
    Forums](http://www.powerbasic.com/support/pbforums/showthread.php?t=41656)

14. [Free Updates to PB/CC 5 and PB/Win 9（x.03 release） - PowerBASIC
    Peer Support
    Forums](http://www.powerbasic.com/support/pbforums/showthread.php?t=42452)

15. [Free Updates to PB/CC 5 and PB/Win 9（x.04 release） - PowerBASIC
    Peer Support
    Forums](http://www.powerbasic.com/support/pbforums/showthread.php?t=43084)

16. [Free Updates to PB/CC 5 and PB/Win 9（x.05 release） - PowerBASIC
    Peer Support
    Forums](http://www.powerbasic.com/support/pbforums/showthread.php?t=44187)

17. [PB/Win 10 & PB/CC 6 -- What's new? - PowerBASIC Peer Support
    Forums](http://www.powerbasic.com/support/pbforums/showthread.php?t=46443)