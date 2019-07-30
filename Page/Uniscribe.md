**Uniscribe**是[微軟公司開發的](https://zh.wikipedia.org/wiki/微軟 "wikilink")[Windows作業系統為正確演示](https://zh.wikipedia.org/wiki/Windows "wikilink")[Unicode文字而開發的組件](https://zh.wikipedia.org/wiki/Unicode "wikilink")。系統的核心是一個名為*USP10.DLL*的[DLL](https://zh.wikipedia.org/wiki/DLL "wikilink")。它從[Windows 2000開始連同Windows一起綑綁](../Page/Windows_2000.md "wikilink")；Win9x的用戶在更新至[Internet Explorer](../Page/Internet_Explorer.md "wikilink") 5.0之後，系統亦會安裝有本組件。此外，[Windows CE從](https://zh.wikipedia.org/wiki/Windows_CE "wikilink")5.0開始亦支援Uniscribe。

其實從[Windows 7開始](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")，Uniscribe已經隨着功能更多的[DirectWrite](../Page/DirectWrite.md "wikilink")的引入而被取代，但這組件依然仍有繼續開發及維護。

## USP10.dll

USP其實是[英語](https://zh.wikipedia.org/wiki/英語 "wikilink")的簡稱，意思就是“Unicode文字系統處理器”。它主要包括以下的部件：

1.  把文字從輸入次序重排成為顯示次序
2.  把文字按前文後理作出適當的變換
3.  按文字顯示的方向作出字元的替換

其他常見的版本號碼如下：

<table>
<thead>
<tr class="header">
<th><p>檔案版本</p></th>
<th><p>檔案大小</p></th>
<th><p>檔案日期</p></th>
<th><p>编译日期</p></th>
<th><p>相隨軟件</p></th>
<th><p>新增功能</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>1.626.7600.20602</p></td>
<td><p>623 KiB<br />
</p></td>
<td><p>2010-01-07</p></td>
<td><p>2009-12-22</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Microsoft_Office_2010" title="wikilink">Microsoft Office 2010</a>（RTM）</p></td>
<td><p>支援PR-37：澄清<a href="https://zh.wikipedia.org/wiki/零字距連接字符" title="wikilink">零字距連接字符在</a><a href="https://zh.wikipedia.org/wiki/印度文字" title="wikilink">印度文字的用途</a>[1]</p></td>
</tr>
<tr class="even">
<td><p>1.626.7600.16385</p></td>
<td><p>628 KiB<br />
</p></td>
<td><p>2009-08-04</p></td>
<td></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Microsoft_Office_2010" title="wikilink">Microsoft Office 2010</a>（Beta）</p></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p>612 KiB<br />
</p></td>
<td><p>2009-07-14</p></td>
<td><p>2009-07-14</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Windows_7" title="wikilink">Windows 7</a>（RTM）</p></td>
<td><p>?</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.626.7100.0</p></td>
<td><p>612 KiB<br />
</p></td>
<td><p>2009-04-22</p></td>
<td></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Windows_7" title="wikilink">Windows 7</a> RC</p></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p>1.626.6002.22402</p></td>
<td><p>491 KiB<br />
</p></td>
<td><p>2010-07-11</p></td>
<td><p>2010-05-12</p></td>
<td><p><a href="../Page/Microsoft_Office_2007.md" title="wikilink">Microsoft Office 2007</a>（SP2）安全性更新KB2288621 <a href="http://support.microsoft.com/kb/2288621">1</a></p></td>
<td><p>MS10-063:说明2007 Office套件安全性更新：2010年9月14日</p></td>
</tr>
<tr class="even">
<td><p>1.626.6002.22384</p></td>
<td><p>491 KiB<br />
</p></td>
<td><p>2010-04-16</p></td>
<td><p>2010-04-16</p></td>
<td><p><a href="../Page/Windows_Server_2008.md" title="wikilink">Windows Server 2008</a> SP2, <a href="https://zh.wikipedia.org/wiki/Windows_Vista_SP2" title="wikilink">Windows Vista SP2安全性更新KB</a>981322 <a href="http://support.microsoft.com/kb/981322">2</a></p></td>
<td><p>MS10-063:说明Windows Unicode Scripts Processor安全性更新：2010年9月14日</p></td>
</tr>
<tr class="odd">
<td><p>1.626.6002.18244</p></td>
<td><p>491 KiB<br />
</p></td>
<td><p>2010-04-16</p></td>
<td><p>2010-04-16</p></td>
<td><p><a href="../Page/Windows_Server_2008.md" title="wikilink">Windows Server 2008</a> SP2, <a href="https://zh.wikipedia.org/wiki/Windows_Vista_SP2" title="wikilink">Windows Vista SP2安全性更新KB</a>981322 <a href="http://support.microsoft.com/kb/981322">3</a></p></td>
<td><p>MS10-063:说明Windows Unicode Scripts Processor安全性更新：2010年9月14日</p></td>
</tr>
<tr class="even">
<td><p>1.626.6002.18005</p></td>
<td><p>491 KiB<br />
</p></td>
<td><p>2009-04-11</p></td>
<td></td>
<td><p><a href="../Page/Windows_Server_2008.md" title="wikilink">Windows Server 2008</a> SP2, <a href="https://zh.wikipedia.org/wiki/Windows_Vista_SP2" title="wikilink">Windows Vista SP2</a></p></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p>1.626.6001.22672</p></td>
<td><p>491 KiB<br />
</p></td>
<td><p>2010-04-16</p></td>
<td><p>2010-04-16</p></td>
<td><p><a href="../Page/Windows_Server_2008.md" title="wikilink">Windows Server 2008</a>, <a href="https://zh.wikipedia.org/wiki/Windows_Vista_SP1" title="wikilink">Windows Vista SP1安全性更新KB</a>981322 <a href="http://support.microsoft.com/kb/981322">4</a></p></td>
<td><p>MS10-063:说明Windows Unicode Scripts Processor安全性更新：2010年9月14日</p></td>
</tr>
<tr class="even">
<td><p>1.626.6001.18461</p></td>
<td><p>490 KiB<br />
</p></td>
<td><p>2010-04-16</p></td>
<td><p>2010-04-16</p></td>
<td><p><a href="../Page/Windows_Server_2008.md" title="wikilink">Windows Server 2008</a>, <a href="https://zh.wikipedia.org/wiki/Windows_Vista_SP1" title="wikilink">Windows Vista SP1安全性更新KB</a>981322 <a href="http://support.microsoft.com/kb/981322">5</a></p></td>
<td><p>MS10-063:说明Windows Unicode Scripts Processor安全性更新：2010年9月14日</p></td>
</tr>
<tr class="odd">
<td><p>1.626.6001.18000</p></td>
<td><p>490 KiB<br />
</p></td>
<td><p>2008-01-19</p></td>
<td></td>
<td><p><a href="../Page/Windows_Server_2008.md" title="wikilink">Windows Server 2008</a>（RTM）, <a href="https://zh.wikipedia.org/wiki/Windows_Vista_SP1" title="wikilink">Windows Vista SP1</a>, VOLT補充文件 (July 2008), MS VOLT 1.3 <a href="http://www.microsoft.com/downloads/details.aspx?FamilyID=F1C481EA-7D76-4A70-BDCE-0DA53D1B864A&amp;displaylang=en">6</a>（2008-07-31發行）, SIL FieldWorks, Keyman Desktop 7.1</p></td>
<td><p>Supports newer OpenType table features; improved support for ligatures and contextual shapes in Indic scripts with simpler fonts</p></td>
</tr>
<tr class="even">
<td><p>1.626.6001.16510</p></td>
<td><p>491 KiB<br />
</p></td>
<td><p>2007-04-18</p></td>
<td></td>
<td><p><a href="../Page/Windows_Server_2008.md" title="wikilink">Windows Server "Longhorn"</a>（Beta 3）</p></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p>1.626.6000.21258</p></td>
<td><p>491 KiB<br />
</p></td>
<td><p>2010-04-16</p></td>
<td><p>2010-04-16</p></td>
<td><p><a href="../Page/Microsoft_Office_2003.md" title="wikilink">Microsoft Office 2003</a>（SP3）安全性更新KB2288613 <a href="http://support.microsoft.com/kb/2288613">7</a></p></td>
<td><p>MS10-063:说明2003 Office组件安全性更新：2010年9月14日</p></td>
</tr>
<tr class="even">
<td><p>1.626.6000.20581</p></td>
<td><p>491 KiB<br />
(502,784位元組)</p></td>
<td><p>2007-04-19 02:15:55 <a href="https://zh.wikipedia.org/wiki/UTC" title="wikilink">UTC</a></p></td>
<td></td>
<td><p><a href="../Page/Windows_Vista.md" title="wikilink">Windows Vista修補程序</a><a href="http://support.microsoft.com/kb/936176/zh-tw">KB936176</a></p></td>
<td><p>修復：incorrect rendering of fully decomposed characters in NFD form encoded in sequences with more than 2 characters（affects 114 Latin characters decomposed in sequences of 3 codes）</p></td>
</tr>
<tr class="odd">
<td><p>1.626.6000.16386</p></td>
<td><p>491 KiB<br />
(502,784位元組)</p></td>
<td><p>2006-11-02 09:44:03 <a href="https://zh.wikipedia.org/wiki/UTC" title="wikilink">UTC</a></p></td>
<td></td>
<td><p><a href="../Page/Windows_Vista.md" title="wikilink">Windows Vista</a> Ultimate（RTM）</p></td>
<td><p>DirectX 10? WDDM?</p></td>
</tr>
<tr class="even">
<td><p>1.626.5756.0</p></td>
<td><p>491 KiB<br />
</p></td>
<td><p>2006-10-13</p></td>
<td></td>
<td><p><a href="../Page/Microsoft_Office_2007.md" title="wikilink">Microsoft Office 2007</a> Ultimate（RTM）</p></td>
<td><p>支援<a href="../Page/奧里亞文.md" title="wikilink">奧里亞以及</a><a href="../Page/卡納達文.md" title="wikilink">卡納達文</a>字</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.615.5384.4</p></td>
<td><p>484 KiB<br />
</p></td>
<td><p>2006-06-17</p></td>
<td></td>
<td><p><a href="../Page/Windows_Vista.md" title="wikilink">Windows Vista</a>（Beta 2）</p></td>
<td><p>DirectX 9?</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.614.5315.0</p></td>
<td><p>454 KiB<br />
</p></td>
<td><p>2006-03-13</p></td>
<td></td>
<td><p><a href="../Page/Microsoft_Office_2007.md" title="wikilink">Microsoft Office 2007</a>（Beta 2）</p></td>
<td><p>OpenType排版功能?</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.613.5291.0</p></td>
<td><p>481 KiB<br />
(492,544位元組)</p></td>
<td><p>2006-01-04</p></td>
<td></td>
<td><p><a href="../Page/Windows_Vista.md" title="wikilink">Windows Vista</a>（Beta 1）</p></td>
<td><p>Microsoft VOLT 1.2 <a href="https://web.archive.org/web/20080116073850/http://groups.msn.com/MicrosoftVOLTuserscommunity/homepage.msnw">8</a></p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.609.5219.0</p></td>
<td><p>469 KiB<br />
</p></td>
<td><p>2005-08-17</p></td>
<td></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Microsoft_Office_12" title="wikilink">Microsoft Office 12</a> Professional（Beta 1）</p></td>
<td><p>OpenType排版功能?</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.606.5065.1</p></td>
<td><p>?<br />
</p></td>
<td><p>?</p></td>
<td></td>
<td><p>第三方軟件</p></td>
<td><p>支援<a href="https://zh.wikipedia.org/wiki/蒙古文" title="wikilink">蒙古文</a></p></td>
</tr>
<tr class="odd">
<td><p>1.606.5078.0</p></td>
<td><p>?<br />
</p></td>
<td><p>?</p></td>
<td></td>
<td><p>SIL字體修復</p></td>
<td><p>修復：Combining mark sequences in Latin script may be incorrectly rendered</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1.601.5022.8</p></td>
<td><p>428 KiB<br />
</p></td>
<td><p>2005-01-07</p></td>
<td></td>
<td><p><a href="../Page/人文学科.md" title="wikilink">WinXP僧伽羅語增益插件0.42版</a>（參見“How to write Sinhala”部分）</p></td>
<td><p>正式支援<a href="https://zh.wikipedia.org/wiki/僧伽羅語" title="wikilink">僧伽羅語</a></p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1.473.4067.0</p></td>
<td><p>415 KiB<br />
(424,960位元組)</p></td>
<td><p>2004-10-22</p></td>
<td></td>
<td><p>第三方軟件</p></td>
<td><p>支援<a href="../Page/馬拉雅拉姆文.md" title="wikilink">馬拉雅拉姆文</a>；VOLT補充文件（2004年11月）; rendering improvement up to 3 diacritics with CGJ</p></td>
</tr>
<tr class="even">
<td><p>1.473.4067.15</p></td>
<td><p>? KiB<br />
</p></td>
<td><p>2004-10-22</p></td>
<td></td>
<td><p>第三方軟件</p></td>
<td><p>Microsoft Visual OpenType Layout Tool (VOLT) 1.1.225更新程序</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.471.4063.0</p></td>
<td><p>415 KiB<br />
(424,960位元組)</p></td>
<td><p>2004-02-04</p></td>
<td></td>
<td><p><a href="../Page/Microsoft_Office.md" title="wikilink">Microsoft Office</a> 2003 (修補程序), <a href="../Page/SIL國際.md" title="wikilink">SIL</a> FieldWorks（Speech Tools Phonology Assistant 3.0.1）</p></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p>1.471.4030.0</p></td>
<td><p>404 KiB<br />
(413,184位元組)</p></td>
<td><p>2004-04-15</p></td>
<td></td>
<td><p><a href="../Page/Microsoft_Office.md" title="wikilink">Microsoft Office</a> 2003, <a href="https://zh.wikipedia.org/wiki/Google_Earth" title="wikilink">Google Earth</a></p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1.468.4015.0</p></td>
<td><p>? KiB</p></td>
<td><p>?</p></td>
<td></td>
<td><p>Paratext 6</p></td>
<td><p>支援<a href="https://zh.wikipedia.org/wiki/藏文字母" title="wikilink">藏語文字顯示</a>。</p></td>
</tr>
<tr class="even">
<td><p>1.468.4011.0</p></td>
<td><p>? KiB</p></td>
<td><p>?</p></td>
<td></td>
<td><p>?</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.460.3707.0</p></td>
<td><p>? KiB</p></td>
<td><p>?</p></td>
<td></td>
<td><p>MS VOLT 1.1.206</p></td>
<td><p>支援<a href="https://zh.wikipedia.org/wiki/高棉語" title="wikilink">高棉文字</a></p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.453.3665.0</p></td>
<td><p>? KiB</p></td>
<td><p>?</p></td>
<td></td>
<td><p>VOLT補充文件（2002年8月）</p></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.422.3790.4695</p></td>
<td><p>371 KiB</p></td>
<td><p>2010-04-20</p></td>
<td><p>2010-04-20</p></td>
<td><p><a href="../Page/Windows_Server_2003.md" title="wikilink">Windows Server 2003</a>（SP2）安全性更新KB981322 <a href="http://support.microsoft.com/kb/981322">9</a></p></td>
<td><p>MS10-063：说明Windows Unicode Scripts Processor安全性更新：2010年9月14日</p></td>
</tr>
<tr class="odd">
<td><p>1.422.3790.3959</p></td>
<td><p>371 KiB</p></td>
<td><p>2007-02-17</p></td>
<td><p>2007-02-17</p></td>
<td><p><a href="../Page/Windows_Server_2003.md" title="wikilink">Windows Server 2003</a>（SP2）</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.422.3790.1830</p></td>
<td><p>355 KiB<br />
(364,032位元組)</p></td>
<td><p>2005-03-30</p></td>
<td></td>
<td><p><a href="../Page/Windows_Server_2003.md" title="wikilink">Windows Server 2003</a>（SP1）</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.421.3790.0</p></td>
<td><p>345 KiB<br />
(353,280位元組)</p></td>
<td><p>2003-03-25</p></td>
<td></td>
<td><p><a href="../Page/Windows_Server_2003.md" title="wikilink">Windows Server 2003</a></p></td>
<td><p>支援DirectX、GDI+以及較新的顯示驅動程序模型</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.420.2600.5969</p></td>
<td><p>397 KiB<br />
(406,016位元組)</p></td>
<td><p>2010-04-16</p></td>
<td><p>2010-04-16</p></td>
<td><p><a href="../Page/Windows_XP.md" title="wikilink">Windows XP</a>（SP3）安全性更新KB981322 <a href="http://support.microsoft.com/kb/981322">10</a><br />
<a href="https://zh.wikipedia.org/wiki/Microsoft_Office_XP" title="wikilink">Microsoft Office XP</a>（SP3）安全性更新KB2288608 <a href="http://support.microsoft.com/kb/2288608">11</a></p></td>
<td><p>MS10-063：說明Windows Unicode Scripts Processor安全性更新：2010年9月14日</p></td>
</tr>
<tr class="odd">
<td><p>1.420.2600.5512</p></td>
<td><p>397 KiB<br />
(406,016位元組)</p></td>
<td><p>2008-04-14</p></td>
<td><p>2008-04-14</p></td>
<td><p><a href="../Page/Windows_XP.md" title="wikilink">Windows XP</a> Build 5512（SP3）</p></td>
<td><p>修復?</p></td>
</tr>
<tr class="even">
<td><p>1.420.2600.3163</p></td>
<td><p>397 KiB<br />
(406,016位元組)</p></td>
<td><p>2007-06-26</p></td>
<td></td>
<td><p><a href="../Page/Windows_XP.md" title="wikilink">Windows XP</a>（SP2）修補程序KB939450 <a href="http://support.microsoft.com/kb/939450">12</a></p></td>
<td><p>修復：The GetCharacterPlacement function unexpectedly returns zero</p></td>
</tr>
<tr class="odd">
<td><p>1.420.2600.2791</p></td>
<td><p>397 KiB<br />
(406,016位元組)</p></td>
<td><p>2005-11-05</p></td>
<td></td>
<td><p><a href="../Page/Windows_XP.md" title="wikilink">Windows XP</a>（SP2）修補程序KB910466 <a href="http://support.microsoft.com/kb/910466">13</a></p></td>
<td><p>修復：你可能在使用Windows XP SP2的電腦收到"MEM_BAD_POINTER"出錯信息</p></td>
</tr>
<tr class="even">
<td><p>1.420.2600.2180</p></td>
<td><p>397 KiB<br />
(406,528位元組)</p></td>
<td><p>2004-08-12</p></td>
<td><p>2004-08-17</p></td>
<td><p><a href="../Page/Windows_XP.md" title="wikilink">Windows XP</a> Build 2180（SP2）</p></td>
<td><p>支援<a href="https://zh.wikipedia.org/wiki/孟加拉文" title="wikilink">孟加拉文以及</a><a href="../Page/馬拉雅拉姆文.md" title="wikilink">馬拉雅拉姆文</a>；支援複雜拉丁字符（越南語字母）；修復：聲調輪廓的結紮</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.409.2600.1106</p></td>
<td><p>331 KiB<br />
(339,456位元組)</p></td>
<td><p>2002-08-29</p></td>
<td></td>
<td><p><a href="../Page/Windows_XP.md" title="wikilink">Windows XP</a> Build 1106（SP1）</p></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.408.2600.1020</p></td>
<td><p>331 KiB<br />
(339,456位元組)</p></td>
<td><p>2002-04-17</p></td>
<td><p>2002-04-17</p></td>
<td><p><a href="../Page/Internet_Explorer.md" title="wikilink">Internet Explorer</a> 6.0.2800.1106（SP1）</p></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.407.2600.0</p></td>
<td><p>331 KiB<br />
(339,456位元組)</p></td>
<td><p>2001-08-17</p></td>
<td></td>
<td><p><a href="../Page/Windows_XP.md" title="wikilink">Windows XP</a></p></td>
<td><p>支援<a href="../Page/它拿字母.md" title="wikilink">它拿字母</a>、<a href="../Page/古吉拉特文.md" title="wikilink">古吉拉特文</a>、<a href="../Page/卡納達文.md" title="wikilink">卡納達文</a>、<a href="../Page/古木基文.md" title="wikilink">古木基文</a>（旁遮普語）、<a href="https://zh.wikipedia.org/wiki/敘利亞字母" title="wikilink">敘利亞字母以及</a><a href="../Page/泰卢固文.md" title="wikilink">泰盧固字</a></p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.405.2416.1</p></td>
<td><p>317 KiB<br />
(325,120位元組)</p></td>
<td><p>2001-01-15</p></td>
<td><p>2001-01-06</p></td>
<td><p><a href="../Page/Microsoft_Office.md" title="wikilink">Microsoft Office</a> XP (2002), <a href="../Page/Microsoft_Word.md" title="wikilink">Microsoft Word</a> 2000（SP1）</p></td>
<td><p>完全支援<a href="https://zh.wikipedia.org/wiki/希伯來文" title="wikilink">希伯來文</a>、<a href="https://zh.wikipedia.org/wiki/天城文" title="wikilink">天城文</a>、<a href="../Page/泰米爾文.md" title="wikilink">泰米爾文</a></p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.400.2411.1</p></td>
<td><p>316 KiB<br />
(323,072位元組)</p></td>
<td><p>2000-12-13</p></td>
<td></td>
<td><p><a href="../Page/Internet_Explorer.md" title="wikilink">Internet Explorer</a> 6 <a href="http://support.microsoft.com/kb/298624">14</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.325.2195.6692</p></td>
<td><p>308 KiB<br />
(315,664位元組)</p></td>
<td><p>2003-06-19</p></td>
<td></td>
<td><p><a href="../Page/Windows_2000.md" title="wikilink">Windows 2000</a> SP4</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1.325.2195.4506</p></td>
<td><p>308 KiB<br />
(315,664位元組)</p></td>
<td><p>2002-07-22</p></td>
<td><p>2002-07-23</p></td>
<td><p><a href="../Page/Windows_2000.md" title="wikilink">Windows 2000</a> SP3</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.325.2195.1340</p></td>
<td><p>308 KiB<br />
(315,664位元組)</p></td>
<td><p>2000-07-21</p></td>
<td></td>
<td><p><a href="../Page/Windows_2000.md" title="wikilink">Windows 2000</a> SP1</p></td>
<td><p>完全支援<a href="../Page/阿拉伯字母.md" title="wikilink">阿拉伯字母</a></p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.325.2180.1</p></td>
<td><p>316 KiB<br />
(323,584位元組)</p></td>
<td><p>2000-06-08</p></td>
<td><p>2000-06-28</p></td>
<td><p><a href="../Page/Windows_Me.md" title="wikilink">Windows Me</a></p></td>
<td><p>Improved API for scripts with bidirectional and complex layouts ; minimum support for Arabic and Hebrew scripts (no contextual letter forms, requires compatibility character mappings in fonts)<br />
Needed for Microsoft viewers (which otherwise require 98SE at least) of Powerpoint 2003 (and later) presentations on Windows 95 and 98</p></td>
</tr>
<tr class="odd">
<td><p>307 KiB<br />
(315,152位元組)</p></td>
<td><p>1999-11-30</p></td>
<td><p>1999-11-30</p></td>
<td><p>Microsoft Windows Installer 2.0 Redistributable for <a href="../Page/Windows_95.md" title="wikilink">Windows 95</a>/98/Me <a href="http://support.microsoft.com/?scid=kb;en-us;827763&amp;x=8&amp;y=14">KB827763</a><br />
Microsoft Global IME for <a href="../Page/Microsoft_Office.md" title="wikilink">Microsoft Office</a> XP<br />
<a href="../Page/Internet_Explorer.md" title="wikilink">Internet Explorer</a> 5.5 release, SP1 &amp; SP2</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.175.0.1</p></td>
<td><p>268 KiB<br />
(274,432位元組)</p></td>
<td><p>1999-05-05</p></td>
<td><p>1999-05-12</p></td>
<td><p><a href="../Page/Windows_98.md" title="wikilink">Windows 98</a> SE</p></td>
<td><p>Uniscribe API的第一個穩定版本；支援簡單字母系統——包括個別附加符號（<a href="../Page/拉丁字母.md" title="wikilink">拉丁字母</a>、<a href="https://zh.wikipedia.org/wiki/希臘字母" title="wikilink">希臘字母</a>、<a href="../Page/西里尔字母.md" title="wikilink">西里尔字母</a></p></td>
</tr>
<tr class="odd">
<td><p>258 KiB<br />
(264,976位元組)</p></td>
<td><p>1999-01-28</p></td>
<td></td>
<td><p><a href="../Page/Internet_Explorer.md" title="wikilink">Internet Explorer</a> 5.01</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1.163.1890.1</p></td>
<td><p>262 KiB<br />
(268,288位元組)</p></td>
<td><p>1998-09-22</p></td>
<td></td>
<td><p>第三方軟件</p></td>
<td><p>多語言文字編排以及複雜文字（MTLCS）快照（早期發行於測試者）</p></td>
</tr>
</tbody>
</table>

## 如何更新？

雖然Uniscribe從Windows 2000開始隨系統提供，但不同版本的Uniscribe對各地不同的文字有不同的支援：最初的版本只支援顯示[泰語](https://zh.wikipedia.org/wiki/泰語 "wikilink")、[越南語](https://zh.wikipedia.org/wiki/越南語 "wikilink")，之後到[希伯來語和](https://zh.wikipedia.org/wiki/希伯來語 "wikilink")[阿拉伯語](https://zh.wikipedia.org/wiki/阿拉伯語 "wikilink")。從[Windows XP開始支援幾個主要的南亞文字及](../Page/Windows_XP.md "wikilink")[亞述語](https://zh.wikipedia.org/wiki/亞述語 "wikilink")，但[僧加羅語](https://zh.wikipedia.org/wiki/僧加羅語 "wikilink")、[高棉語](https://zh.wikipedia.org/wiki/高棉語 "wikilink")、[緬甸語及各種使用](https://zh.wikipedia.org/wiki/緬甸語 "wikilink")[蒙古文字的語言](https://zh.wikipedia.org/wiki/蒙古文字 "wikilink")，由於他們的具體編碼方式在Windows XP推出時還未落實，因此未能正式支援。現時不少為這些語言而設計的軟件，在USP10.dll未更新之前，都不能正確操作。

過往要更新USP10.dll並不容易，因為當時微軟並未有提及載件讓用戶透過安裝來自行更新有關檔案，而必須要透過安裝其他應用程式來更新。現時，有關更新已可透過安裝特別的應用程式來達成\[2\]。

## 备注

## 參考

  - [Uniscribe](https://web.archive.org/web/20071024185416/http://www.microsoft.com/typography/developers/uniscribe/default.htm)
  - [Microsoft Typography](http://www.microsoft.com/typography)
  - [SIL國際](../Page/SIL國際.md "wikilink")。[Uniscribe versions](http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&item_id=UniscribeVersions)

## 參看

  - [國際Unicode元件](https://zh.wikipedia.org/wiki/國際Unicode元件 "wikilink")（ICU）

## 外部連結

  - [如何在Windows 2000系統上更新USP10.dll（英語）](https://archive.is/20070928155732/http://www.aksharamala.com/help/chm/Installation/win2k.html)
  - [有關USP10.dll的各種疑難（英語）](http://uniburma.sourceforge.net/node/13)

[Category:Unicode](https://zh.wikipedia.org/wiki/Category:Unicode "wikilink") [Category:數碼字體排印](https://zh.wikipedia.org/wiki/Category:數碼字體排印 "wikilink")

1.  [公开评议议题\#37](http://www.unicode.org/review/pr-37.pdf) 提议书：澄清与统一[零字距連接字符在](https://zh.wikipedia.org/wiki/零字距連接字符 "wikilink")[印度文字的用途](https://zh.wikipedia.org/wiki/印度文字 "wikilink")，統一碼聯盟
2.  <http://www.mongolfont.com/en/windows/index.html>