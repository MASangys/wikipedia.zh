[A_jailbreaking_iPhone_with_Electra.png](https://zh.wikipedia.org/wiki/File:A_jailbreaking_iPhone_with_Electra.png "fig:A_jailbreaking_iPhone_with_Electra.png")

**iOS越狱**（）是获取[iOS设备的](../Page/IOS设备列表.md "wikilink")[Root权限的技术手段](../Page/超级用户.md "wikilink")。iOS系统的Root用户对除Apple特定私有进程之外的其他进程不开放，使用Root用户运行的进程在进程树中的PID为0。程序员在iOS中挖掘出一些可以将进程提权至PID0的漏洞（例如Task For PID0）。利用Root用户运行的进程意味着可以任意读取设备其中的APFS分区表和内核缓存地址，拥有一个用户可以随意控制的PID0进程还不能称之为一个完整的越狱。之后还需要利用Bypass（旁路）手段绕过Apple在iOS系统中设置的其他安全防护措施，将APFS或HFS+文件系统中的ROOTFS分区重新挂载（Remount）为可读写（R/W），从而达到添加二进制文件和守护进程的目的。通常大众用户认为能够正常使用Cydia才能被称为越狱，但其实这种说法是不正确的。但通过此软件可以完成越狱前不可能进行的动作，例如安装[App Store以外未经过签名的应用](../Page/App_Store_\(iOS\).md "wikilink")、修改SpringBoard、运行[Shell程序](https://zh.wikipedia.org/wiki/Shell "wikilink")、使有运营商锁的设备利用卡贴解锁后通过替换配置文件形式实现本地化（例如“去除+86”，解锁FaceTime功能）。\[1\]

越狱软件分发商店Cydia的创始人Jay Freeman在2010年10月估计，全球大概有10%的iPhone曾进行过越狱\[2\]。 当iOS设备越狱后，用户可對系統進行編輯或是運行不被蘋果公司所驗證的軟體。

## 种类

[Cydia_on_ios11.png](https://zh.wikipedia.org/wiki/File:Cydia_on_ios11.png "fig:Cydia_on_ios11.png")

目前对越狱的完美程度，业界开发人员给出了三种定义\[3\]：

  - **引导式越狱**（Tethered Jailbreak），指的是，当处于此状态的iOS设备开机重启后，之前进行的越狱程序就会失效，用户将失去Root权限，需要將設備连接电脑来使用（如：红雪（redsn0w））等越狱软件进行引导开机以後，才可再次使用越狱程序。否则设备將无法正常開機。

<!-- end list -->

  - **不完美越狱**（Semi-tethered Jailbreak）設備在重啟後，將遺失越獄狀態，並恢復成未越獄狀態。而若想要再获得Root权限，则需再次進行越狱。

<!-- end list -->

  - **完美越狱**（Untethered Jailbreak），指设备在進行重啟後，越獄狀態仍被完整保留。

## 用途

  - **使用第三方软件：**越狱的主要原因之一是可以扩展苹果App Store的有限的应用程序。\[4\]苹果会检查即将发布在App Store中的应用程序是否符合iOS开发者许可协议，然后再将其发布在App Store上。越狱后可以下载并安装苹果不允许出现在App Store上的应用程序\[5\]\[6\]。Cydia上的应用程序并不需要完全按照App Store上的指导方针和要求，其中不少是适用于iOS或其他应用程序的扩展和定制。用户安装这些应用程序,更多被称作“插件”（Tweaks） 。这些插件可以达到个性化的目的，定制用户界面和字体，为iOS设备添加新功能等（苹果公司近几年的iOS系统更新所添加的新功能有很多都是从越狱插件中借鉴的）\[7\] 。并且可以访问文件系统和安装命令行工具，使得在iOS设备上的开发工作更加容易\[8\]\[9\] 。在允许安装第三方输入法的**[iOS 8](https://zh.wikipedia.org/wiki/iOS_8 "wikilink")**发布之前，很多中国的iOS用户也因为安装第三方的中文输入法而越狱iOS设备，因为它们比原生输入法更容易使用\[10\]。在[中国大陆](../Page/中国大陆.md "wikilink")，通过越狱获取的[root权限被某些软件用于安装](https://zh.wikipedia.org/wiki/root "wikilink")[盗版](../Page/盗版.md "wikilink")软件，\[11\]并造成了部分人存在越狱等于盗版的误解。\[12\]\[13\]
  - **解除限制：**越狱也可以非正式地解开运营商对iPhone的锁定，使得能够使用其它运营商提供的服务\[14\]。基于软件的解锁，每一个不同的基带版本都对应了一个不同的解锁工具\[15\]。
  - **修复漏洞：**2011年7月15日，越狱工具[JailbreakMe](../Page/JailbreakMe.md "wikilink") 3.0利用了一个[Safari](../Page/Safari.md "wikilink")浏览器在显示PDF文档时达到越狱的目的。这也就意味着iOS用户可能在不知不觉中丢失自己的个人信息或者被安装恶意软件\[16\]。在苹果发布4.3.4更新修补该漏洞之前，越狱开发者comex就已经先行修补了这个漏洞。

## 动机

將iOS裝置越狱的原因是为了突破[苹果公司及其](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")[App Store的限制](../Page/App_Store_\(iOS\).md "wikilink")，其中最主要的原因是为了能安装那些未遭苹果公司审核的应用程序。

苹果公司對应用程序审核程序的原因不仅局限于安全问题，有时也可能有意的禁止某些应用程序上架，（比如苹果公司[禁止普利策获奖](https://zh.wikipedia.org/wiki/禁止 "wikilink")[漫画家所编写的应用程序上架](https://zh.wikipedia.org/wiki/漫画家 "wikilink")，並聲稱其违反了开发许可协议。除外，协议上也明確規定禁止上架含有“嘲笑、醜化[公众人物](https://zh.wikipedia.org/wiki/公众人物 "wikilink")”之類的应用程序。因此为了能夠成功运行被禁止上架的应用程序，用户不得不依靠越狱手段来脫離此類限制。

## 历史

仅仅在iPhone上市的几天后的2007年7月，开发人员就发布了第一个越狱工具\[17\]，并且很快，一个仅支持越狱后iPhone的游戏应用就发布了\[18\]。2007年10月，[JailbreakMe](../Page/JailbreakMe.md "wikilink") 1.0（也被称为AppSnapp）就正式开始提供iPhone OS 1.1.1的iPhone和iPod touch越狱了\[19\]\[20\] 。2008年2月，Zibri发布了ZiPhone，可以越狱iPhone OS 1.1.3和1.1.4的工具\[21\]。

iPhone Dev Team发布了一系列的越狱工具。2008年7月，PwnageTool提供针对iPhone OS 2.0的[iPhone 3G和iPod](https://zh.wikipedia.org/wiki/iPhone_3G "wikilink") touch的越狱\[22\]，更新包括作为越狱软件中主要的第三方安装程序[Cydia](../Page/Cydia.md "wikilink")\[23\]；QuickPwn可以用来越狱iPhone OS 2.2版本的设备\[24\]；在苹果推出iPhone OS 3.0时，Dev Team发布了一个更简单的针对于Windows和Mac的越狱工具[redsn0w](https://zh.wikipedia.org/wiki/redsn0w "wikilink")，并继续更新PwnageTool\[25\]。更新版本的redsn0w也可以越狱iOS 4和iOS 5的版本。

## 安全

2009年11月，21岁的澳大利亚学生编寫第一个iPhone蠕虫iKee。在其接受媒体採訪時表示，他之所以编写出iOS蠕虫病毒，是為提升人们对安全问题的重视。同時，也表示越狱后iOS裝置可使用[SSH協議進行通訊](https://zh.wikipedia.org/wiki/SSH "wikilink")\[26\] \[27\]\[28\]。

2011年7月15日，[苹果公司封锁了一个被](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")[JailbreakMe](../Page/JailbreakMe.md "wikilink") 3.0利用的漏洞。德国联邦信息安全办公室称，已发现JailbreakMe 3.0可利用的[PDF显示方面的漏洞](https://zh.wikipedia.org/wiki/PDF "wikilink")，會使iOS用户的個人信息在不知不覺的情況下被盗取或是被控制下载恶意软體\[29\]。

部分[黑客](../Page/黑客.md "wikilink")可远程控制已越狱iOS裝置，以便其安装恶意软件或竊取用戶資料。

[意大利](../Page/意大利.md "wikilink")网络安全公司Hacking Team向执法机构出售黑客软件并建议警方將其安裝至已越狱的iOS裝置中，以便在進行位置跟踪。

## 法律地位

越狱iOS系统的法律地位受到不同国家的法律的影响，例如：保护数字版权管理（DRM）机制的法律。但许多国家并没有这样的法律。除此之外国际性的条约影响到越狱法律的发展，例如：1996 年世界知识产权组织（知识产权组织）版权条约要求条约的国家缔约国颁布有关规避DRM规则的法律。美国的实施是“ 数字千年版权法案”（DMCA），其中包括为违法侵权目的豁免程序，包括越狱。 虽然[苹果公司不赞同用户自行越狱](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")，但越狱社区一般也没有受到苹果公司的法律威胁。目前至少有两名杰出的越狱者在苹果公司获得职位。有时候苹果公司也经常（半开玩笑的）感谢越狱社区帮助iOS系统检测安全[漏洞](https://zh.wikipedia.org/wiki/漏洞 "wikilink")。 苹果公司发布对于越狱iOS系统的的支持文章中声称：“拒绝为已经越狱的iPhone、iPad或iPod touch提供保修服务”。

### 澳大利亚

2010年，[澳大利亚](../Page/澳大利亚.md "wikilink")政府表示，澳大利亚越狱iOS系统的法律地位中的合法地位尚不明确，其很可能是受“2006年版权修正法”影响。

### 加拿大

2012年11月，[加拿大](../Page/加拿大.md "wikilink")政府修改“版权法”，其中包括禁止篡改数字锁，但除了软件操作以外。

2008-2011年，加拿大政府修改“版权法案”（C-60号法案，C-61号法案和第C-32号法案），内容包括禁止篡改数字锁，以及对限制性更强的C-11的提出初步建议， 但目前这些法案被搁置了。

2011年，加拿大版权学者迈克尔·盖斯（Michael Geist）将越狱iOS系统的人行为视为违反版权法的行为。

### 新西兰

新西兰的版权法允许使用技术保护措施（TPM）的规避方法，但这些只适用于法律，并且建立在非侵犯版权的范围内。目前，新西兰政府将“2008年版权（新技术）修正法”的一部分内容添加到“1994年版权法”。

### 新加坡

目前在新加坡越狱iOS系统可能处于合法状态，但新加坡当局政府并未对此公开声明。

## 设备

### 首次越狱

<table>
<thead>
<tr class="header">
<th><p>设备名称/系统版本</p></th>
<th><p>发布到成功越狱所花时间<br />
<small>以天计算，包括不完美越狱</small></p></th>
<th><p>首次越狱使用工具</p></th>
<th><p>越狱开发者</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>第一代iPhone/iPhone OS 1.0</p></td>
<td><p>11</p></td>
<td><p>无名字</p></td>
<td><p>iPhone Dev Team[30]</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_3G" title="wikilink">iPhone 3G</a>/iPhone OS 2.0</p></td>
<td><p>9</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/PwnageTool" title="wikilink">PwnageTool</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>第二代iPod touch</p></td>
<td><p>143</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/redsn0w" title="wikilink">redsn0w</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPad_(第三代)" title="wikilink">iPad (第三代)</a><br />
<small>也称iPad 3、the New iPad</small></p></td>
<td><p>70</p></td>
<td><p>Absinthe 2.0</p></td>
<td><p>pod2g, Chronic Dev Team, iPhone Dev Team</p></td>
</tr>
<tr class="odd">
<td><p>iOS 6.0－6.1.2</p></td>
<td><p>0</p></td>
<td><p>redsn0w</p></td>
<td><p>iPhone Dev Team</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_5" title="wikilink">iPhone 5</a></p></td>
<td><p>136</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/evasi0n" title="wikilink">evasi0n</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/evad3rs" title="wikilink">evad3rs</a></p></td>
</tr>
<tr class="odd">
<td><p>第五代<a href="https://zh.wikipedia.org/wiki/iPod_touch" title="wikilink">iPod touch</a></p></td>
<td><p>104</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPad_(第四代)" title="wikilink">iPad (第四代)</a></p></td>
<td><p>94</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPad_Mini" title="wikilink">iPad Mini</a></p></td>
<td><p>94</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_5C" title="wikilink">iPhone 5C</a></p></td>
<td><p>93</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/evasi0n" title="wikilink">evasi0n</a>7</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_5S" title="wikilink">iPhone 5S</a></p></td>
<td><p>93</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPad_Air" title="wikilink">iPad Air</a></p></td>
<td><p>51</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPad_mini_2" title="wikilink">iPad mini 2</a></p></td>
<td><p>40</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iOS_7" title="wikilink">iOS 7</a> 7.1－7.1.2</p></td>
<td><p>25</p></td>
<td><p><a href="../Page/盘古越狱.md" title="wikilink">盘古越狱</a>v1.1.0~v1.2.1</p></td>
<td><p><a href="../Page/盘古越狱.md" title="wikilink">盘古越狱</a>团队</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iOS_8" title="wikilink">iOS 8</a></p></td>
<td><p>35</p></td>
<td><p><a href="../Page/盘古越狱.md" title="wikilink">盘古越狱</a>for iOS 8</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_6" title="wikilink">iPhone 6</a></p></td>
<td><p>33</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_6_Plus" title="wikilink">iPhone 6 Plus</a></p></td>
<td><p>33</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPad_Air_2" title="wikilink">iPad Air 2</a></p></td>
<td><p>0</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPad_mini_3" title="wikilink">iPad mini 3</a></p></td>
<td><p>0</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>iOS 8.1.1</p></td>
<td><p>12</p></td>
<td><p>太极越狱V1.0</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/太极越狱" title="wikilink">太极越狱团队</a></p></td>
</tr>
<tr class="odd">
<td><p>iOS 8.1.2</p></td>
<td><p>1</p></td>
<td><p>太极越狱V1.2.0</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>iOS 8.1.3</p></td>
<td><p>147</p></td>
<td><p>太极越狱V2.0</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>iOS 8.2</p></td>
<td><p>106</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>iOS 8.3</p></td>
<td><p>76</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>iOS 8.4</p></td>
<td><p>0</p></td>
<td><p>太极越狱V2.2.0</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>iOS 8.4.1</p></td>
<td><p>-</p></td>
<td><p>EtasonJB</p></td>
<td><p>tihmstar</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_6S" title="wikilink">iPhone 6S</a></p></td>
<td><p>5</p></td>
<td><p><a href="../Page/盘古越狱.md" title="wikilink">盘古越狱</a></p></td>
<td><p><a href="../Page/盘古越狱.md" title="wikilink">盘古越狱</a>团队</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_6s_Plus" title="wikilink">iPhone 6s Plus</a></p></td>
<td><p>5</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>iOS 9.0</p></td>
<td><p>25</p></td>
<td><p><a href="../Page/盘古越狱.md" title="wikilink">盘古越狱</a>V1.0.0</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>iOS 9.0.1</p></td>
<td><p>20</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>iOS 9.0.2</p></td>
<td><p>13</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>iOS 9.1</p></td>
<td><p>142</p></td>
<td><p><a href="../Page/盘古越狱.md" title="wikilink">盘古越狱</a>V1.3.0（Windows版）<br />
<a href="../Page/盘古越狱.md" title="wikilink">盘古越狱</a>V1.1.0（Mac版）<br />
<a href="https://zh.wikipedia.org/wiki/Jailbreakme" title="wikilink">Jailbreakme</a> 4.0 (jailbreak.me)</p></td>
<td><p><a href="../Page/盘古越狱.md" title="wikilink">盘古越狱</a>团队<br />
<a href="https://zh.wikipedia.org/wiki/Tihmstar" title="wikilink">Tihmstar</a>(jailbreakme4.0)(支援32位元設備)</p></td>
</tr>
<tr class="odd">
<td><p>iOS 9.2</p></td>
<td><p>228</p></td>
<td><p>PP助手 v5.0.3.1142<br />
<a href="https://zh.wikipedia.org/wiki/Jailbreakme" title="wikilink">Jailbreakme</a> 4.0</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>iOS 9.2.1</p></td>
<td><p>186</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>iOS 9.3</p></td>
<td><p>124</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>iOS 9.3.1</p></td>
<td><p>114</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>iOS 9.3.2</p></td>
<td><p>68<br />
51</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>iOS 9.3.3</p></td>
<td><p>5</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>iOS 9.3.4</p></td>
<td><p>155</p></td>
<td><p>Trident<br />
Home Depot<br />
<a href="https://zh.wikipedia.org/wiki/Jailbreakme" title="wikilink">Jailbreakme</a> 4.0 (jailbreak.me)</p></td>
<td><p>antiquedev<br />
NSO, Benjamin, qwertyoruiop, planetbeing, Jon Seals, Tihmstar, ih8sn0w<br />
<a href="https://zh.wikipedia.org/wiki/Tihmstar" title="wikilink">Tihmstar</a>(jailbreakme4.0)(支援32位元設備)</p></td>
</tr>
<tr class="even">
<td><p>iOS 9.3.5</p></td>
<td><p>-</p></td>
<td><p>Phoenix</p></td>
<td><p>Siguza, tihmstar, mbazaliy, qwertyoruiop, realkjcmember</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_7" title="wikilink">iPhone 7</a></p></td>
<td><p>103</p></td>
<td><p>yalu</p></td>
<td><p>Luca Todesco</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_7_Plus" title="wikilink">iPhone 7 Plus</a></p></td>
<td><p>103</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>iOS 10.0.1</p></td>
<td><p>91</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>iOS 10.0.2</p></td>
<td><p>87</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>iOS 10.1</p></td>
<td><p>59</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>iOS 10.1.1</p></td>
<td><p>49</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>iOS 10.2</p></td>
<td><p>23</p></td>
<td><p>yalu102</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>iOS 10.2.1</p></td>
<td><p>-</p></td>
<td><p>Saigon</p></td>
<td><p>cheesecakeufo, Ian Beer, Adam Donenfeld, xerub, Luca Todesco, Siguza</p></td>
</tr>
<tr class="odd">
<td><p>iOS 10.3.x</p></td>
<td><p>-</p></td>
<td><p>h3lix (32位元)<br />
g0blin (64位元)<br />
Meridian (64位元)</p></td>
<td><p>tihmstar, siguza, @FoxletFox, Jacky C<br />
Jakeashacks<br />
PsychoTea（@iBSparkes）</p></td>
</tr>
<tr class="even">
<td><p>iOS 11 - iOS 11.1.2</p></td>
<td><p>160</p></td>
<td><p>FilzaEscaped<br />
LiberiOS<br />
Electra</p></td>
<td><p>Ian Beer, Bas vT, theninjaprawn, Jakeashacks<br />
Jonathan Levin, QiLin（麒麟）<br />
CoolStar,xerub,Siguza, theninjaprawn, stek29</p></td>
</tr>
<tr class="odd">
<td><p>iOS 11.2 - iOS 11.4 Beta 3</p></td>
<td><p>31</p></td>
<td><p>Electra<br />
RootlessJB</p></td>
<td><p>lan Beer, CoolStar, xerub, Siguza, pwn20wnd, theninjaprawn, stek29, PsychoTea, aesign_<br />
Jakeashacks</p></td>
</tr>
<tr class="even">
<td><p>iOS 11 - iOS 11.4.1</p></td>
<td><p>-</p></td>
<td><p>unc0ver</p></td>
<td><p>pwn20wnd, Sam Bingner, DennisBednarz, Samg_is_a_Ninja, xerub, iBSparkes, stek29, theninjaprawn</p></td>
</tr>
<tr class="odd">
<td><p>iOS 12 - iOS 12.1.2</p></td>
<td><p>-</p></td>
<td><p>RootlessJB<br />
unc0ver<br />
Chimera (支援A12機種)</p></td>
<td><p>Jakeashacks<br />
pwn20wnd, Sam Bingner, DennisBednarz, Samg_is_a_Ninja, Jakeashacks, notcom<br />
CoolStar, nullpixel, tri'angle, ninjaprawn, Brandon Azad, PsychoTea, AppleBetas, aesign</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### 停止支持的设备

<table>
<thead>
<tr class="header">
<th><p>设备名称</p></th>
<th><p>发布时间</p></th>
<th><p>首次越狱时间</p></th>
<th><p>支持的最新版本的iOS系统</p></th>
<th><p>越狱所用软件（最新版本適用）</p></th>
<th><p>越狱后是否需要引导启动（是否为完美越狱）</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_(第一代)" title="wikilink">iPhone</a><br />
</p></td>
<td><p>2007年6月29日</p></td>
<td><p>2007年10月10日[31]</p></td>
<td><p>3.1.3</p></td>
<td><ul>
<li>redsn0w 0.9.4[32]</li>
<li>Spirit</li>
<li>Jailbreakme 2.0</li>
<li>Sn0wbreeze 2.0.2</li>
<li>PwnageTool 3.1.5</li>
<li>Whited00r</li>
</ul></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_3G" title="wikilink">iPhone 3G</a><br />
</p></td>
<td><p>2008年7月11日</p></td>
<td><p>2008年7月20日[33]</p></td>
<td><p>4.2.1</p></td>
<td><ul>
<li>redsn0w 0.9.6rc18</li>
<li>PwnageTool 4.2</li>
<li>Sn0wbreeze 2.2.1</li>
<li>Whited00r</li>
<li>Greenpois0n RC6.2</li>
</ul></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/IPod_touch#%E7%AC%AC%E4%B8%80%E4%BB%A3" title="wikilink">iPod touch</a><br />
</p></td>
<td><p>2007年9月5日</p></td>
<td><p>2007年10月10日[34]</p></td>
<td><p>3.1.3</p></td>
<td><ul>
<li>redsn0w 0.9.4[35]</li>
<li>Spirit</li>
<li>Jailbreakme 2.0</li>
<li>Sn0wbreeze 2.0.2</li>
<li>PwnageTool 3.1.5</li>
<li>Whited00r</li>
<li>greenpois0n</li>
</ul></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPod_touch" title="wikilink">iPod touch</a> 2<br />
<small>MB Model</small><br />
</p></td>
<td><p>2008年9月9日</p></td>
<td><p>2009年3月11日[36]</p></td>
<td><p>4.2.1</p></td>
<td><ul>
<li>redsn0w 0.9.6rc18</li>
<li>PwnageTool 4.2</li>
<li>Sn0wbreeze 2.2.1</li>
<li>Whited00r</li>
<li>Greenpois0n RC6.2</li>
</ul></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_3GS" title="wikilink">iPhone 3GS</a><br />
<small>(16GB 32GB)<br />
(旧bootrom)</small></p></td>
<td><p>2009年6月19日</p></td>
<td><p>2009年7月3日</p></td>
<td><p>6.1.6</p></td>
<td><ul>
<li>redsn0w</li>
<li>Absinthe 2.0.4</li>
<li>evasi0n</li>
</ul></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPod_touch" title="wikilink">iPod touch</a> 2<br />
<small>MC model</small><br />
</p></td>
<td><p>2009年9月9日</p></td>
<td><p>2009年10月25日</p></td>
<td><p>4.2.1</p></td>
<td><ul>
<li>redsn0w 0.9.6rc18</li>
<li>PwnageTool 4.2</li>
<li>Sn0wbreeze 2.2.1</li>
<li>Greenpois0n RC6.2</li>
</ul></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPod_touch" title="wikilink">iPod touch</a> 3<br />
</p></td>
<td><p>2009年9月9日</p></td>
<td><p>2009年10月11日</p></td>
<td><p>5.1.1</p></td>
<td><ul>
<li>redsn0w 0.9.12b2</li>
<li>Absinthe 2.0.4</li>
</ul></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPad" title="wikilink">iPad</a><br />
<small>(Wi-Fi model)</small></p></td>
<td><p>2010年4月3日</p></td>
<td><p>2010年5月2日</p></td>
<td><p>5.1.1</p></td>
<td><ul>
<li>redsn0w 0.9.12b2</li>
<li>Absinthe 2.0.4</li>
<li>Jailbreakme</li>
</ul></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPad" title="wikilink">iPad</a><br />
<small>(3G model)</small></p></td>
<td><p>2010年4月30日</p></td>
<td><p>2010年5月2日</p></td>
<td><p>5.1.1</p></td>
<td><ul>
<li>redsn0w 0.9.12b2</li>
<li>Absinthe 2.0.4</li>
<li>Jailbreakme</li>
</ul></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_3GS" title="wikilink">iPhone 3GS</a><br />
<small>(8GB)<br />
(新bootrom)</small></p></td>
<td><p>2010年6月24日</p></td>
<td><p>2010年8月1日</p></td>
<td><p>6.1.6</p></td>
<td><ul>
<li>redsn0w 0.9.12b2</li>
<li>Absinthe 2.0.4</li>
</ul></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPod_touch" title="wikilink">iPod touch</a> 4</p></td>
<td><p>2010年9月1日</p></td>
<td><p>2010年10月9日</p></td>
<td><p>6.1.6</p></td>
<td><ul>
<li>redsn0w 0.9.12b2</li>
<li>evasi0n</li>
<li>Absinthe 2.0.4</li>
</ul></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_4" title="wikilink">iPhone 4</a><br />
<small>(16GB 32GB)</small></p></td>
<td><p>2010年6月24日</p></td>
<td><p>2009年8月1日</p></td>
<td><p>7.1.2</p></td>
<td><ul>
<li>redsn0w</li>
<li>Absinthe 2.0.4</li>
<li>evasi0n</li>
<li>evasi0n7</li>
</ul></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_4S" title="wikilink">iPhone 4S</a><br />
</p></td>
<td><p>2011年10月4日</p></td>
<td><p>2012年1月21日</p></td>
<td><p>9.3.5</p></td>
<td><ul>
<li>Phoenix</li>
</ul></td>
<td><p>需要引导启动（不完美越狱）</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPad_(第二代)" title="wikilink">iPad 2</a><br />
</p></td>
<td><p>2012年3月7日</p></td>
<td><p>2012年5月25日</p></td>
<td><p>9.3.5</p></td>
<td><ul>
<li>Phoenix</li>
</ul></td>
<td><p>需要引导启动（不完美越狱）</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPad_(第三代)" title="wikilink">iPad 3</a><br />
<small>(Global model)</small></p></td>
<td><p>2012年3月7日</p></td>
<td><p>2012年5月25日</p></td>
<td><p>9.3.5</p></td>
<td><ul>
<li>Phoenix</li>
</ul></td>
<td><p>需要引导启动（不完美越狱）</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPad_4" title="wikilink">iPad 4</a></p></td>
<td><p>2012年11月2日</p></td>
<td><p>2013年2月5日</p></td>
<td><p>10.3.3</p></td>
<td><ul>
<li>h3lix</li>
</ul></td>
<td><p>需要引导启动（不完美越狱）</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_5" title="wikilink">iPhone 5</a></p></td>
<td><p>2012年9月13日</p></td>
<td><p>2013年2月5日</p></td>
<td><p>10.3.3</p></td>
<td><ul>
<li>h3lix</li>
</ul></td>
<td><p>需要引导启动（不完美越狱）</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPad_mini" title="wikilink">iPad mini</a><br />
<small>包括所有的iPad mini版本</small></p></td>
<td><p>2012年11月2日</p></td>
<td><p>2013年2月5日</p></td>
<td><p>9.3.5</p></td>
<td><ul>
<li>Phoenix</li>
</ul></td>
<td><p>需要引导启动（不完美越狱）</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPod_touch" title="wikilink">iPod touch</a> 5</p></td>
<td><p>2012年9月13日</p></td>
<td><p>2013年2月5日</p></td>
<td><p>9.3.5</p></td>
<td><ul>
<li>Phoenix</li>
</ul></td>
<td><p>需要引导启动（不完美越狱）</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_5C" title="wikilink">iPhone 5C</a></p></td>
<td><p>2013年9月20日</p></td>
<td><p>2013年12月22日</p></td>
<td><p>10.3.3</p></td>
<td><ul>
<li>h3lix</li>
</ul></td>
<td><p>需要引导启动（不完美越狱）</p></td>
</tr>
</tbody>
</table>

### 支持中的设备

<table>
<thead>
<tr class="header">
<th><p>支持的最新版本的iOS系统</p></th>
<th><p>越狱所用软件</p></th>
<th><p>可正常越狱的固件版本号</p></th>
<th><p>最新正常越狱可使用的软件</p></th>
<th><p>越狱后是否需要引导启动（是否为完美越狱）</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>12.1.2</p></td>
<td><p>unc0ver<br />
Chimera</p></td>
<td><p>IOS 12 - iOS 12.1.2</p></td>
<td><p>unc0ver<br />
Chimera</p></td>
<td><p>需要引导启动（不完美越狱）</p></td>
</tr>
</tbody>
</table>

## 相关条目

  - [Chronic dev team](https://zh.wikipedia.org/wiki/Chronic_dev_team "wikilink")
  - [Greenpois0n](https://zh.wikipedia.org/wiki/Greenpois0n "wikilink")
  - [盘古越狱](../Page/盘古越狱.md "wikilink")
  - [evasi0n](https://zh.wikipedia.org/wiki/evasi0n "wikilink")
  - [Root (Android)](../Page/Root_\(Android\).md "wikilink")

## 参考注释

[Category:自制软件](https://zh.wikipedia.org/wiki/Category:自制软件 "wikilink") [Category:IOS越獄](https://zh.wikipedia.org/wiki/Category:IOS越獄 "wikilink")

1.  <http://unloc.kr/>
2.
3.
4.
5.
6.  [FoxNews](http://www.foxnews.com/tech/2010/07/26/apple-iphone-jailbreak-unapproved-apps/)
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
32. <http://www.redmondpie.com/jailbreak-iphone-os-3.1.3-firmware-with-redsn0w-0.9.4/>
33.
34.
35. <http://www.redmondpie.com/jailbreak-iphone-os-3.1.3-firmware-with-redsn0w-0.9.4/>
36.