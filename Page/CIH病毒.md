**CIH**（英语又称为Chernobyl或Spacefiller）是一种[电脑病毒](https://zh.wikipedia.org/wiki/电脑病毒 "wikilink")，其名稱源自它的作者，當時仍然是[台灣大同工學院](https://zh.wikipedia.org/wiki/台灣 "wikilink")（現[大同大學](https://zh.wikipedia.org/wiki/大同大學 "wikilink")）學生[陈盈豪的名字](https://zh.wikipedia.org/wiki/陈盈豪 "wikilink")[拼音或](https://zh.wikipedia.org/wiki/拼音 "wikilink")[注音](https://zh.wikipedia.org/wiki/注音 "wikilink")（**C**hen
**I**ng-**h**au）縮寫。它被认为是最有害的广泛传播的病毒之一，会破坏用户系统上的全部信息，在某些情况下，会重写系统的[BIOS](../Page/BIOS.md "wikilink")。因為CIH病毒的1.2和1.3版發作日期為4月26日（第一版病毒創造出來的時間），正好是[前蘇聯](https://zh.wikipedia.org/wiki/前蘇聯 "wikilink")（位於今日烏克蘭）核電廠災害“[切尔诺贝利核事故](../Page/切尔诺贝利核事故.md "wikilink")”的紀念日，故曾被認為病毒作者撰寫動機和切尔诺贝利事件有關，因此CIH病毒也被稱作切尔诺贝利（Chernobyl）病毒。

## 歷史

1998年9月，[山葉公司為感染了該病毒的](https://zh.wikipedia.org/wiki/山葉 "wikilink")[CD-R400驅動提供一個](https://zh.wikipedia.org/wiki/CD-R400驅動 "wikilink")[韌體更新](../Page/韌體.md "wikilink")。1998年10月，使用者傳播的[Activision公司遊戲](https://zh.wikipedia.org/wiki/Activision "wikilink")[SiN的一個演示版本因為在某一使用者的主機上接觸被感染檔而受到感染](https://zh.wikipedia.org/wiki/SiN "wikilink")。這個公司的傳染源來自[IBM](../Page/IBM.md "wikilink")1999年3月間發售的已感染CIH病毒的一組[Aptiva品牌](https://zh.wikipedia.org/wiki/Aptiva "wikilink")[個人電腦](https://zh.wikipedia.org/wiki/個人電腦 "wikilink")。1999年4月26日，公眾開始關注CIH首次發作時，這些電腦已經運行一個月了。這是一宗大災難，全球不計其數的電腦硬碟被垃圾資料覆蓋，甚至破壞BIOS，無法啟動。至2000年4月26日，[亞洲報稱發生多宗損壞](https://zh.wikipedia.org/wiki/亞洲 "wikilink")，但病毒沒有傳播開來。2001年3月發現[Anjulie蠕蟲病毒](https://zh.wikipedia.org/wiki/Anjulie蠕蟲病毒 "wikilink")，它將CIH
v1.2植入感染的系統。

针对CIH病毒可能篡改主版BIOS的特性，2000年以后生产的很多主板配备了所谓的‘反CIH系统’，其原理就是通过一个硬件跳线使得BIOS芯片（EEPROM或Flash）不能获得写入数据所需的电压，功能类似于磁带的‘消磁防止挡舌’和软盘的‘写保护’系统。该系统置于‘打开’则有效的从硬件上阻止CIH对BIOS的篡改，反之需要升级主板固件时，则必须将该跳线置于‘关闭’。

這個病毒的死灰復燃是在2001年。一個用[珍妮佛羅培茲的裸照偽裝的](https://zh.wikipedia.org/wiki/珍妮佛羅培茲 "wikilink")[VBScript檔案裡的蠕蟲病毒的一個變種包含CIH病毒的掛鉤常式](../Page/VBScript.md "wikilink")，從而使該病毒在網際網路上傳播開來。

一個修改版本是CIH.1106，發現於2002年12月，但是沒有嚴重的破壞性。

只有CIH感染大量發信的[電腦蠕蟲](../Page/電腦蠕蟲.md "wikilink")（如[求職信病毒](https://zh.wikipedia.org/wiki/求職信病毒 "wikilink")）所使用的程式，或有Anjulie蠕蟲病毒參與時，CIH才會被看成是一個威脅。但是CIH病毒只在[Windows
95](../Page/Windows_95.md "wikilink")，[98和](https://zh.wikipedia.org/wiki/windows_98 "wikilink")[Windows
Me系統上發作](../Page/Windows_Me.md "wikilink")，影響有限。現在由於人們對它的威脅有了認知，且它只能運行於舊的Windows
9X作業系統，CIH不再像他剛出現時分佈那麼廣泛傳播。

## 病毒特征

CIH以可移植可执行文件格式在[Windows 95](../Page/Windows_95.md "wikilink")、[Windows
98和](../Page/Windows_98.md "wikilink")[Windows
ME上传播](https://zh.wikipedia.org/wiki/Windows_ME "wikilink")。CIH不会在[Windows
NT内核的操作系统上运行或传播](../Page/Windows_NT.md "wikilink")。如[Windows
2000](../Page/Windows_2000.md "wikilink")、[Windows
XP](../Page/Windows_XP.md "wikilink")、[Windows
7等](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")。

由于CIH会感染可执行文件，它会占据一般的可执行文件剩余的位置。因此，CIH又有一个绰号叫“空间填充者（*Spacefiller*）”。这个病毒大小不到1[KB](https://zh.wikipedia.org/wiki/KB "wikilink")，但是文件不会增大。它使用从处理器Ring3到Ring0跳转的方法触发系统调用。

CIH會感染Windows的PE（Portable
Executable）执行文件，並且把它不到1[KB](https://zh.wikipedia.org/wiki/KB "wikilink")（1024
bytes）的程序代码分割成几個部分，分別寫入PE执行文件中各個段所尚未填滿的地方。因此被感染的执行文件大小並不會增加。因為[Windows
95](../Page/Windows_95.md "wikilink")、[Windows
98](../Page/Windows_98.md "wikilink")、[Windows
ME等等這些非](https://zh.wikipedia.org/wiki/Windows_ME "wikilink")[Windows
NT的核心](../Page/Windows_NT.md "wikilink")，存在有處理結構化例外處理（SEH, Structured
Exception Handling）的問題，以及Windows 95/98/ME沒有保護中斷描述表（IDT, Interrupt
Description Table）的機制（正確保護模式下的應用程序無權改动。Windows
NT系列則有保護，因此病毒無法順利執行），CPU會用最高的權限Ring
0直接去執行這個SEH所指向的程序代码。因此一開始病毒被執行後，他會置換掉原本程式或Windows預設的SEH位址，透過觸發代码異常中斷而讓CPU切換回Ring
0模式去執行這部分CIH所設計的程式順利取得Ring 0權限。由於CPU處在Ring
0模式下，CIH可以任意地存取Windows內核部分和系統API的掛鉤，進而繼續感染其他文件，或是發作時候對硬件做些直接I/O動作。

当它发作时，是非常危险的。首先病毒会在[硬件和](../Page/硬件.md "wikilink")[软件中从第](../Page/软件.md "wikilink")0扇区开始写入零数据。这样经常删除了分区表的内容，将有可能死机。

第二个，它也会尝试将垃圾信息写入[Flash
BIOS](https://zh.wikipedia.org/wiki/Flash_BIOS "wikilink")。如果保护跳线是关闭的，这一过程会在基于[Intel](https://zh.wikipedia.org/wiki/Intel "wikilink")
[430TX芯片组的机器上起作用](https://zh.wikipedia.org/wiki/430TX "wikilink")，上述芯片组将允许电脑程序刷写[Flash
BIOS](https://zh.wikipedia.org/wiki/Flash_BIOS "wikilink")。

对于第一个，如果数据很重要，可以将硬盘交给一些专业恢复数据的公司，这将有可能使数据恢复；或者在某些情况下，可以使用[Fix
CIH](http://www.grc.com/cih.htm)，一个由[史蒂夫·吉布森编写的](https://zh.wikipedia.org/wiki/史蒂夫·吉布森 "wikilink")[免费软件](https://zh.wikipedia.org/wiki/免费软件 "wikilink")。否则，必须运行[FDISK重新划分分区](https://zh.wikipedia.org/wiki/FDISK "wikilink")。不过，当第二种情况发生时，电脑将无法启动。需要请技术人员重写或更换[Flash
BIOS芯片](https://zh.wikipedia.org/wiki/Flash_BIOS "wikilink")。

### CIH v1.2（CIH.1103）

这是最常见的版本，他的发作时间为4月26日。 它包含这个字符串：`CIH v1.2 TTIT`。

### CIH v1.3（CIH.1010A和CIH1010.B）

这个版本的CIH也是在4月26日发作。 它包含这个字符串：`CIH v1.3 TTIT`。

### CIH v1.4（CIH.1019）

它在每月26日发作。它仍然存在，虽然它并不常见。 它包含这个字符串：`CIH v1.4 TATUNG`。

### CIH.1106

它还是个变化很小的一个变种，出现在2002年12月。

## 参见

  - [知名病毒及蠕蟲的歷史年表](../Page/知名病毒及蠕蟲的歷史年表.md "wikilink")
  - [電腦病毒](https://zh.wikipedia.org/wiki/電腦病毒 "wikilink")

## 外部链接

  - [CIH at
    linkedin](https://archive.is/20130816110952/http://tw.linkedin.com/pub/cih-taiwan/4b/322/209)
    CIH at linkedin
  - [F-Secure CIH技术支持网页](http://www.f-secure.com/v-descs/cih.shtml)
  - [Symantec
    CIH技术支持网页](https://archive.is/20030811102608/http://securityresponse1.symantec.com/sarc/sarc.nsf/html/cih.html)
  - [关于珍妮佛洛佩茲邮件的新闻](http://news.zdnet.co.uk/hardware/emergingtech/0,39020357,2088013,00.htm)
  - [20年来破坏力最大的10种计算机病毒（排名）](http://news.ccidnet.com/art/1032/20060706/597391_1.html)

[Category:计算机病毒](https://zh.wikipedia.org/wiki/Category:计算机病毒 "wikilink")