**Windows
NT**，**新技术视窗操作系统**（）的簡稱，是[美国](../Page/美国.md "wikilink")[微软公司](../Page/微软公司.md "wikilink")1993年推出的纯[32位](../Page/32位.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")[核心](../Page/内核.md "wikilink")。其基于OS/2
NT的基础构造。[OS/2是由微软和](../Page/OS/2.md "wikilink")[IBM联合研制](../Page/IBM.md "wikilink")，分为微软的**Microsoft
OS/2 NT**与IBM的**IBM
OS/2**。由于双方在协作后来不欢而散，IBM继续向[市场提供先前的OS](../Page/市场.md "wikilink")/2版本；而微软则把**OS/2
NT**改名为**Windows NT**，并在1988年11月开始了对于“WinNT”（即第一代的Windows NT
3.1）的产品研发。在研发初期，“WinNT”曾一度被认为将会是原先OS/2的3.0版本，但面世之后的**Windows
NT**是一种纯[32位操作系统](../Page/32位.md "wikilink")，采用NT核心技术。

## 名字由来

有说法认为，NT一名源自原NT首席领导者[戴夫·卡特勒](../Page/戴夫·卡特勒.md "wikilink")，曾经开发过[OpenVMS系统的他将](../Page/OpenVMS.md "wikilink")“VMS”一词，利用[恺撒密码原理将每个字母向前递增一位](../Page/恺撒密码.md "wikilink")，使之成为“WNT”\[1\]。但NT的其中一名原设计师[馬克·洛考夫斯基曾提到](../Page/馬克·洛考夫斯基.md "wikilink")，NT一名源自该系统的目标处理器，代号为“N-Ten”的处理器\[2\]。
在1998年[比尔·盖茨的一次问答环节上](../Page/比尔·盖茨.md "wikilink")，他透露“NT”一词曾经以[逆向首字母缩略词的形式派生为](../Page/逆向首字母缩略词.md "wikilink")“新技术”（New
Technology）之意，但现已不再包含任何特定意义\[3\]。尽管微软对于NT架构的系统产品仍描述为“基于NT技术”（Built on NT
Technology），但自[Windows
2000之后基于NT架构的系统均抛弃了](../Page/Windows_2000.md "wikilink")“NT”一词\[4\]。

## 歷史

[Windows_NT_logo.svg](https://zh.wikipedia.org/wiki/File:Windows_NT_logo.svg "fig:Windows_NT_logo.svg")
1988年10月，微软公司从[迪吉多](../Page/迪吉多.md "wikilink")（Digital Equipment
Corporation）雇佣了一批人员，由[戴夫·卡特勒領導](../Page/戴夫·卡特勒.md "wikilink")，开发这个新系统\[5\]。这个系统的很多元素反映了早期的带有[VMS和](../Page/OpenVMS.md "wikilink")[RSX-11的](../Page/RSX-11.md "wikilink")[DEC](../Page/DEC.md "wikilink")（迪吉多）概念。

## Windows NT核心架構

[Windows_2000_architecture.svg](https://zh.wikipedia.org/wiki/File:Windows_2000_architecture.svg "fig:Windows_2000_architecture.svg")
Windows
NT採用[用戶模式與](../Page/使用者空間.md "wikilink")[核心模式的分層設計並且是](../Page/使用者空間.md "wikilink")[搶佔式和](../Page/搶占式多任務處理.md "wikilink")[可重入的](../Page/可重入.md "wikilink")。可運行在單處理器或[對稱多處理器](../Page/對稱多處理.md "wikilink")（SMP）上，並利用[I/O請求包與異步I](../Page/I/O請求包.md "wikilink")/O來處理所有的I/O請求。在[Windows
2000](../Page/Windows_2000.md "wikilink")（含）之前採用的Windows
NT皆為32位元版本的，第一版64位元的Windows NT首先用於64位元的[Windows
XP](../Page/Windows_XP版本列表#64.E4.BD.8D.E7.89.88.md "wikilink")。

Windows
NT採用的核心是屬於[混合核心](../Page/混合核心.md "wikilink")。其體系結構包括簡單內核、[硬體抽象層](../Page/硬體抽象層.md "wikilink")（HAL）、驅動程式、服務（總稱為執行體）,
這些均屬於核心模式。用戶模式下的程式與子系統僅能存取其可存取的資源，核心模式下的程式則可以存取所有資源與外部裝置。

## 各發佈版本

<table>
<caption>Windows NT各發佈版本</caption>
<thead>
<tr class="header">
<th><p>NT版本</p></th>
<th><p>市場名稱</p></th>
<th><p>版本</p></th>
<th><p>發行日期</p></th>
<th><p>RTM<br />
Build</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>NT 3.1</p></td>
<td><p><a href="../Page/Windows_NT_3.1.md" title="wikilink">Windows NT 3.1</a></p></td>
<td><p>Workstation（僅被命名為“Windows NT”）、Advanced Server</p></td>
<td><p>1993年7月27日</p></td>
<td><p>528</p></td>
</tr>
<tr class="even">
<td><p>NT 3.5</p></td>
<td><p><a href="../Page/Windows_NT_3.5.md" title="wikilink">Windows NT 3.5</a></p></td>
<td><p>Workstation、Advanced Server</p></td>
<td><p>1994年9月5日</p></td>
<td><p>807</p></td>
</tr>
<tr class="odd">
<td><p>NT 3.51</p></td>
<td><p><a href="../Page/Windows_NT_3.51.md" title="wikilink">Windows NT 3.51</a></p></td>
<td><p>Workstation、服务器版</p></td>
<td><p>1995年5月30日</p></td>
<td><p>1057</p></td>
</tr>
<tr class="even">
<td><p>NT 4.0</p></td>
<td><p><a href="../Page/Windows_NT_4.0.md" title="wikilink">Windows NT 4.0</a></p></td>
<td><p>Workstation、服务器版、Server Enterprise Edition,<br />
Terminal Server、Embedded</p></td>
<td><p>1996年7月29日</p></td>
<td><p>1381</p></td>
</tr>
<tr class="odd">
<td><p>NT 5.0</p></td>
<td><p><a href="../Page/Windows_2000.md" title="wikilink">Windows 2000</a></p></td>
<td><p>专业版、服务器版、Advanced Server、DataCenter Server</p></td>
<td><p>2000年2月17日</p></td>
<td><p>2195</p></td>
</tr>
<tr class="even">
<td><p>NT 5.1</p></td>
<td><p><a href="../Page/Windows_XP.md" title="wikilink">Windows XP</a></p></td>
<td><p>家庭版、专业版、Media Center、Tablet PC、入门版、Embedded、N</p></td>
<td><p>2001年10月15日</p></td>
<td><p>2600</p></td>
</tr>
<tr class="odd">
<td><p>NT 5.2</p></td>
<td><p><a href="../Page/Windows_XP.md" title="wikilink">Windows XP</a></p></td>
<td><p>64-bit Edition Version 2003（For IA64）、专业版 x64 Edition（For AMD64）</p></td>
<td><ul>
<li>IA64: 2003年3月28日</li>
<li>x64: 2005年4月25日</li>
</ul></td>
<td><p>3790</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Windows_Server_2003.md" title="wikilink">Windows Server 2003</a></p></td>
<td><p>Standard、企业版、DataCenter、Web、Small Business Server</p></td>
<td><p>2003年4月24日</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Windows_Server_2003_R2.md" title="wikilink">Windows Server 2003 R2</a></p></td>
<td><p>Standard、企业版、DataCenter、Web、Small Business Server</p></td>
<td><p>2005年12月6日</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>NT 6.0</p></td>
<td><p><a href="../Page/Windows_Vista.md" title="wikilink">Windows Vista</a></p></td>
<td><p>入门版、家庭普通版、家庭高级版、Business、企业版、旗舰版</p></td>
<td><p>2007年1月30日</p></td>
<td><ul>
<li>6000（RTM）</li>
<li>6001（SP1）</li>
<li>6002（SP2）</li>
</ul></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Windows_Server_2008.md" title="wikilink">Windows Server 2008</a></p></td>
<td><p>Foundation、Standard、企业版、Datacenter、Web Server、HPC Server、Itanium-Based Systems</p></td>
<td><p>2008年8月27日</p></td>
<td><ul>
<li>6001（RTM）</li>
<li>6002（SP2）</li>
</ul></td>
<td></td>
</tr>
<tr class="even">
<td><p>NT 6.1</p></td>
<td><p><a href="../Page/Windows_7.md" title="wikilink">Windows 7</a></p></td>
<td><p>入门版、家庭普通版、家庭高级版、专业版、企业版、旗舰版</p></td>
<td><p>2009年10月22日</p></td>
<td><ul>
<li>7600（RTM）</li>
<li>7601（SP1）</li>
</ul></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Windows_Server_2008_R2.md" title="wikilink">Windows Server 2008 R2</a></p></td>
<td><p>Foundation、Standard、企业版、Datacenter、Web Server、HPC Server、Itanium-Based Systems</p></td>
<td><p>2009年10月22日</p></td>
<td><ul>
<li>7600（RTM）</li>
<li>7601（SP1）</li>
</ul></td>
<td></td>
</tr>
<tr class="even">
<td><p>NT 6.2</p></td>
<td><p><a href="../Page/Windows_8.md" title="wikilink">Windows 8</a></p></td>
<td><p>Windows 8、专业版、企业版、Windows RT</p></td>
<td><p>2012年10月26日</p></td>
<td><p>9200</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Windows_Phone_8.md" title="wikilink">Windows Phone 8</a></p></td>
<td></td>
<td><p>2012年10月30日</p></td>
<td><p>9200</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Windows_Server_2012.md" title="wikilink">Windows Server 2012</a></p></td>
<td><p>Foundation、Essentials、Standard、Datacenter</p></td>
<td><p>2012年9月4日</p></td>
<td><p>9200</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>NT 6.3</p></td>
<td><p><a href="../Page/Windows_8.1.md" title="wikilink">Windows 8.1</a></p></td>
<td><p>Windows 8.1、专业版、企业版、Windows RT 8.1</p></td>
<td><p>2013年10月18日</p></td>
<td><p>9600</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Windows_Server_2012_R2.md" title="wikilink">Windows Server 2012 R2</a></p></td>
<td><p>Essentials、Standard、Datacenter</p></td>
<td><p>2013年10月18日</p></td>
<td><p>9600</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>NT 10.0</p></td>
<td><p><a href="../Page/Windows_10.md" title="wikilink">Windows 10</a></p></td>
<td><p>个人使用：家庭版（包括S模式的家庭版）[6]、专业版（包括S模式的专业版）[7]、专业工作站版 商用：企业版、教育版、专业教育版（包括S模式的专业教育版）[8]</p>
<p>移动设备：移动版、移动企业版</p>
<p>物联网设备：Windows 10 IoT</p></td>
<td><p>2015年7月29日</p></td>
<td><p>10240（TH1）<br />
10586（TH2）<br />
14393（RS1）<br />
15063（RS2）<br />
16299（RS3）<br />
17134（RS4） 17763（RS5）</p>
<p>18362（19H1）</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Windows_Server_2016.md" title="wikilink">Windows Server 2016</a></p></td>
<td><p>Essentials、Standard、Datacenter</p></td>
<td><p>2016年9月26日</p></td>
<td><p>14393（RS1）<br />
16299（RS3）<br />
17134（RS4）</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Windows_Server_2019.md" title="wikilink">Windows Server 2019</a></p></td>
<td><p>Essentials、Standard、Datacenter</p></td>
<td><p>2018年10月2日</p></td>
<td><p>17763</p></td>
<td></td>
</tr>
</tbody>
</table>

## 参考文献

## 参见

  - [微软视窗历史](../Page/微软视窗历史.md "wikilink")
      - [蓝屏死机](../Page/蓝屏死机.md "wikilink")
  - [操作系统](../Page/操作系统.md "wikilink")
      - [操作系统列表](../Page/操作系统列表.md "wikilink")
          - [微軟操作系统列表](../Page/微軟操作系统列表.md "wikilink")

{{-}}

[Category:Windows_NT](https://zh.wikipedia.org/wiki/Category:Windows_NT "wikilink")

1.

2.

3.

4.

5.  《Windows NT的历史全景》，戴夫·卡特勒（David Cutler）为《Microsoft Windows
    Internals》第四版写的序

6.

7.
8.