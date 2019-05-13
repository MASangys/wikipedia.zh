**MPEG2-TS 傳輸串流**（MPEG-2 Transport
Stream；又称MPEG-TS、MTS、TS）是一種傳輸和儲存包含視訊、音訊與通訊協定各種資料的標準格式，用於數位電視廣播系統，如[DVB](../Page/DVB.md "wikilink")、[ATSC](../Page/ATSC.md "wikilink")、[ISDB](../Page/ISDB.md "wikilink")、[IPTV等等](../Page/IPTV.md "wikilink")。

MPEG2-TS定義於[MPEG-2第一部份](../Page/MPEG-2.md "wikilink")：系統（即[ISO](../Page/ISO.md "wikilink")/[IEC標準](../Page/IEC.md "wikilink")13818-1或[ITU-T](../Page/ITU-T.md "wikilink")
Rec. H.222.0）。

MPEG2-TS面向的传输介质是[地面和](../Page/地面电视.md "wikilink")[卫星等](../Page/卫星电视.md "wikilink")[可靠性较低的传输介质](../Page/可靠性_\(计算机网络\).md "wikilink")，这一点与面向较可靠介质如[DVD等的](../Page/DVD.md "wikilink")不同。

## 传输协议

[MPEG_Transport_Stream_HL.svg](https://zh.wikipedia.org/wiki/File:MPEG_Transport_Stream_HL.svg "fig:MPEG_Transport_Stream_HL.svg")功能的电视机）接收射频信号并解码后进行播放\]\]
1个TS承载多个子TS，通常子TS是（）；分组化基本流上承载（），或者非MPEG的编码流，例如[AC-3](../Page/杜比数字#杜比數位.md "wikilink")、[DTS音频流](../Page/DTS.md "wikilink")，[MJPEG](../Page/MJPEG.md "wikilink")、[JPEG
2000视频流](../Page/JPEG_2000.md "wikilink")、字幕所需要的文本和图像、用于定义基本流的表、乃至电视台定义的[电子节目表](../Page/电子节目表.md "wikilink")（EPG）等。

一些相互独立的流可以被[复用在一个TS里](../Page/多路复用.md "wikilink")，例如几个不同的电视频道或者同一个电影的多个拍摄角度。

TS分组（TS
Packet）大小最大为188字节，它是多路复用的基本单位。多个不同的ES的内容会分别被封装到TSP中通过同一个TS传输。由于封包（分组）尺寸较小，复用对各个ES造成的时延也较低，对传输误码的耐受性也强于那些将一帧画面封装到一整个包里的容器格式，如MPEG
PS和[AVI](../Page/AVI.md "wikilink")、[MOV](../Page/QuickTime文件格式.md "wikilink")/[MP4](../Page/MP4.md "wikilink")、[MKV等](../Page/Matroska.md "wikilink")。这对于[视频会议等对实时性要求高的场景特别有意义](../Page/视频会议.md "wikilink")：单个分组损坏不会造成很大的语音延迟。

TS通常以[固定码率传输](../Page/固定码率.md "wikilink")。固定码率传输时，如果上层待传输内容不足，会发送[空分组](../Page/#空分组.md "wikilink")以占位。[蓝光光碟中使用的MPEG-2
TS也使用了固定码率](../Page/#蓝光.md "wikilink")。

下表为MPEG-2
TS协议的一个实际应用的例子：日本地面数字电视[ISDB-T](../Page/ISDB-T.md "wikilink")。表中列举了TS、PES、ES层次上，ISDB-T这个具体的系统使用的具体标准。

<table>
<thead>
<tr class="header">
<th><p>MPEG-2 TS<br />
协议层次划分</p></th>
<th><p>ISDB-T的协议栈</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>ES/Table</p></td>
<td><p>MPEG-2 视频（<a href="../Page/H.262.md" title="wikilink">H.262</a>）<br />
（ISO/IEC 13818-2）</p></td>
</tr>
<tr class="even">
<td><p>（加密）<br />
（<a href="../Page/ARIB.md" title="wikilink">ARIB</a> STD-B25）</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>PES/Section</p></td>
<td><p>MPEG-2 PES<br />
（ISO/IEC 13818-1、<a href="../Page/ARIB.md" title="wikilink">ARIB</a> STD-B32）</p></td>
</tr>
<tr class="even">
<td><p>TS</p></td>
<td><p><strong>MPEG-2 TS</strong><br />
（ISO/IEC 13818-1）</p></td>
</tr>
</tbody>
</table>

## TS中的主要概念

### TS分组

TS分组（TS
packet）是TS的基本传输单位。在TS范围以外并不存在描述一个TS的属性的全局性的描述体。TS自身的全部信息仅由其自身描述，TS仅由一系列的TS分组构成。

每个TS分组以固定的起始，这个同步字节的值为0x47，它也是TS分组头的一部分。TS分组的必选头长度为4字节，其后为可选部分，为[载荷或](../Page/负载_\(计算机\).md "wikilink")[适配域](../Page/#适配域.md "wikilink")。TS分组的头部固定以[大端序读写](../Page/字节序#大端序.md "wikilink")。TS分组长度为188字节。

如同所有的传输协议一样，虽然TS分组本身长度为188字节，其底层传输机制可以为每个TS分组附加一些信息以便传输，例如[前向纠错用的校验部分](../Page/前向纠错.md "wikilink")。[DVB和](../Page/DVB.md "wikilink")[ISDB数字电视制式的前向纠错信息有](../Page/ISDB.md "wikilink")16个字节，而[ATSC制式有](../Page/ATSC.md "wikilink")20个字节。

### TS分组格式

TS分组包括头部和载荷两部分。头部包括固定长度部分和可选部分，可选部分中包括适配域。适配域有可选的扩展部分。

本节介绍TS分组头部中的固定部分和适配域（不包含适配域扩展部分）。

<table>
<caption>TS分组格式</caption>
<thead>
<tr class="header">
<th></th>
<th><p>名稱</p></th>
<th><p><a href="../Page/位元.md" title="wikilink">比特數</a></p></th>
<th><p>描述</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>固定部分<br />
（4字节）</p></td>
<td><p>同步字节</p></td>
<td><p>sync byte</p></td>
<td><p>8</p></td>
</tr>
<tr class="even">
<td><p>传输错误指示位</p></td>
<td><p>Transport Error Indicator (TEI)</p></td>
<td><p>1</p></td>
<td><p>发送时（调制前）值为0。接收方的解调器在无法成功解调（即使有前向纠错机制）TS分组内容时，将该位设置为1，表示该TS分组损坏。</p></td>
</tr>
<tr class="odd">
<td><p>载荷单元开始指示位</p></td>
<td><p>Payload Unit Start Indicator</p></td>
<td><p>1</p></td>
<td><p>值1表示载荷部分为数据或<a href="../Page/节目专用信息.md" title="wikilink">PSI数据</a>，否则为零。</p></td>
</tr>
<tr class="even">
<td><p>传输优先级</p></td>
<td><p>Transport Priority</p></td>
<td><p>1</p></td>
<td><p>值为1时，在相同PID的分组中具有更高的优先权。</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/#PID.md" title="wikilink">分组ID</a></p></td>
<td><p><a href="../Page/#PID.md" title="wikilink">PID</a></p></td>
<td><p>13</p></td>
<td><p>用于识别TS分组的ID。一个PID对应一种特定的PSI消息或者一个特定的PES。</p></td>
</tr>
<tr class="even">
<td><p>传输加扰控制</p></td>
<td><p>Transport Scrambling control (TSC)</p></td>
<td><p>2</p></td>
<td><p>值为'00'时表示载荷未加密。其余值由具体系统定义。以<a href="../Page/DVB.md" title="wikilink">DVB的</a>和<a href="../Page/ATSC.md" title="wikilink">ATSC的</a><a href="../Page/数据加密标准.md" title="wikilink">DCS为例</a>：</p>
<ul>
<li>'01' = 保留 (供未來使用),</li>
<li>'10' = 以奇数密钥加密</li>
<li>'11' = 以偶数密钥加密</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>适配域存在标志</p></td>
<td><p>Adaptation field exist</p></td>
<td><p>2</p></td>
<td><ul>
<li>'00' = 保留 (供未來使用)</li>
<li>'01' = 无适配域，仅有载荷</li>
<li>'10' = 仅有适配域</li>
<li>'11' = 适配域和载荷都存在</li>
</ul></td>
</tr>
<tr class="even">
<td><p>连续性计数器</p></td>
<td><p>Continuity counter</p></td>
<td><p>4</p></td>
<td><p>取值为0x00到0x0F，循环。用于检查同一个PID的TS分组的连续性。每当一个TS分组中包含载荷时，该计数器加1。</p></td>
</tr>
<tr class="odd">
<td><p>可选部分</p></td>
<td><p>适配域</p></td>
<td><p>Adaptation field</p></td>
<td><p>0或更多</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/负载_(计算机).md" title="wikilink">载荷</a></p></td>
<td><p>Payload Data</p></td>
<td><p>0或更多</p></td>
<td><p>当适配域存在标志为'01'或'11'时存在</p></td>
</tr>
</tbody>
</table>

#### 适配域

<table>
<caption>适配域格式</caption>
<thead>
<tr class="header">
<th></th>
<th><p>名稱</p></th>
<th><p>位元數</p></th>
<th><p>描述</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>固定部分<br />
（2字节）</p></td>
<td><p>适配域长度</p></td>
<td><p>Adaptation Field Length</p></td>
<td><p>8</p></td>
</tr>
<tr class="even">
<td><p>不连续指示位</p></td>
<td><p>Discontinuity indicator</p></td>
<td><p>1</p></td>
<td><p>如果根据连续性计数器或PCR计算，确认当前分组处于不连续状态，则取值为1。</p></td>
</tr>
<tr class="odd">
<td><p>随机访问指示位</p></td>
<td><p>Random Access indicator</p></td>
<td><p>1</p></td>
<td><p>如果当前分组是一个PES的起始，取值为1。</p></td>
</tr>
<tr class="even">
<td><p>ES优先级指示位</p></td>
<td><p>Elementary stream priority indicator</p></td>
<td><p>1</p></td>
<td><p>取值为1时ES优先级更高。</p></td>
</tr>
<tr class="odd">
<td><p>PCR标识</p></td>
<td><p>PCR flag</p></td>
<td><p>1</p></td>
<td><p>1表示适配域中有PCR域</p></td>
</tr>
<tr class="even">
<td><p>OPCR标识</p></td>
<td><p>OPCR flag</p></td>
<td><p>1</p></td>
<td><p>1表示适配域中有OPCR域</p></td>
</tr>
<tr class="odd">
<td><p>接续点标识</p></td>
<td><p>Splicing point flag</p></td>
<td><p>1</p></td>
<td><p>1表示适配域中有接续倒数计数器域</p></td>
</tr>
<tr class="even">
<td><p>传输私有数据标识</p></td>
<td><p>Transport private data flag</p></td>
<td><p>1</p></td>
<td><p>1表示适配域中有私有数据域</p></td>
</tr>
<tr class="odd">
<td><p>适配域扩展标识</p></td>
<td><p>Adaptation field extension flag</p></td>
<td><p>1</p></td>
<td><p>1表示适配域中有适配域扩展域</p></td>
</tr>
<tr class="even">
<td><p>可选部分</p></td>
<td><p><a href="../Page/#PCR.md" title="wikilink">PCR</a></p></td>
<td><p>33+6+9</p></td>
<td><p>Program Clock Reference。结构为33位的低精度部分+6位的填充部分+9位的高精度部分。具体说明参见<a href="../Page/#PCR.md" title="wikilink">PCR一节</a>。</p></td>
</tr>
<tr class="odd">
<td><p>原PCR</p></td>
<td><p>OPCR</p></td>
<td><p>33+6+9</p></td>
<td><p>Original PCR。格式与PCR相同。在TS复制时使用。</p></td>
</tr>
<tr class="even">
<td><p>接续倒数计时器</p></td>
<td><p>Splice countdown</p></td>
<td><p>8</p></td>
<td><p>指示从当前分组起多少个分组之后接续点出现（取值可为负）。</p></td>
</tr>
<tr class="odd">
<td><p>填充字节</p></td>
<td><p>可变长度</p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### PID

每一种PSI表和每个ES都对应一个PID值，它是将TS解复用为ES和PSI表的依据。常见的实现中，多个PES在TS中以[时分复用方式存在](../Page/时分复用.md "wikilink")，故而各ES的PID会轮流出现。

### 节目

节目（Program）这个概念存在于TS中。每个节目在TS中对应一个[节目映射表](../Page/#PMT.md "wikilink")（[PMT](../Page/#PMT.md "wikilink")），不同的节目的PMT具有不同的PID。PMT中会指定与这个节目相关的所有ES的PID。

数字电视的一个TS中可能包含3个或更多的节目。假设每个节目包含1个视频ES，1到2个音频ES，以及一些对应的PSI、数据服务等，播放电视节目的设备并不需要解析所有节目的视频、音频流，只需要根据PID，选择相应的ES，解析并播放即可，与节目无关的PID对应的[TS分组可以全部丢弃](../Page/#TS分组.md "wikilink")。

包含多个节目的TS称为多节目TS（MPTS），只包含1个节目的TS成为单节目TS（SPTS）。

### PSI

节目专用信息（PSI，Program Specific
Information），描述特定节目相关的属性。MPEG-2标准规定了4种PSI：节目关联表（PAT，Program
Association Table）、节目映射表（PMT，Program Map Table）、条件访问表（CAT，Conditional
Access Table）以及网络信息表（NIT，Network Information
Table）。其中MPEG-2标准规定了PAT和PMT的具体结构。

在基于MPEG-2
TS的一些系统，如[地面数字电视](../Page/地面数字电视.md "wikilink")[DVB](../Page/DVB.md "wikilink")、[ATSC](../Page/ATSC.md "wikilink")、[ISDB-T](../Page/ISDB-T.md "wikilink")等扩展了MPEG2-TS，引入了服务信息（SI，Service
Information）这一概念。SI是PSI的补充，在协议层次上与PSI相同。

#### PAT

PAT (PAT: Program Association
Table)列出该TS内所有节目。其PID固定为0x0000。每个节目由一个16比特的字段program_number指定。每个program_number都有一个对应的PID，用来指定该节目的PMT。PAT中不包含节目信息时，program_number为0x0000，则应从NIT（PID为0x0010）获取节目信息。

#### PMT

PMT (PMT: Program Map
Table)包含特定[节目相关的信息](../Page/#节目.md "wikilink")，每一个节目有一个PMT。虽然MPEG-2协议标准允许多个PMT使用相同的PID，常见的系统中，如ATSC、SCTE中，不同的PMT有各自的PID。

PMT包含的信息有特定节目的program_number，以及该节目对应的所有ES的PID。此外还有可选的描述子用来提供整个MPEG-2系统的属性和特定ES的属性。

#### CAT

CAT (CAT: Conditional Access Table) 用于节目的加密與解密。CAT对应PID为0x0001。

#### NIT

NIT (NIT: Network Information Table
网络信息表)提供TS的相关信息，如频率、调制方式。在扫描所有频道的节目时，关键信息来自各频道的TS中的NIT。

### PCR

节目时钟参考（PCR，Program Clock
Reference）使得解码后的内容可以正确地同步播放。最多每100ms，接收方会从TS分组的适配域中得到特定节目的PCR值，PCR的PID由该节目的PMT中的PCR_PID域指定。解码系统应当基于PCR生成高精度的系统校时时钟（System
Timing Clock，STC），用于同步声音ES和视频ES的内容。STC是MPEG-2系统里校时的基准。例如，（Presentation
timestamp，PTS）的值即是以PCR值为基准的偏移量。

PCR包括一个33比特的低精度部分（90kHz）和一个9比特的高精度部分（27MHz，取值为0-299）。PCR容许的最大[抖动](../Page/抖动.md "wikilink")为+/-500ns。

### 空分组

空分组（null
packet）存在于某些使用MPEG2-TS的系统中，例如[地面数字电视系统ATSC和DVB](../Page/地面数字电视.md "wikilink")，用于保证固定码率。在从ES复用到TS的过程中，如果ES的数据量不足用尽TS的比特率，则[复用器模块会插入空分组](../Page/多路复用器.md "wikilink")。空分组使用保留的PID值0x1FFF。空分组的载荷没有意义，接收者应当丢弃。

## 数字电视以外的应用

### 数码摄像机

MPEG-2
TS原本的设计用途是数字电视广播，不过后来用在数码摄像机、录像机、播放机上。用于非广播类用途时，其TS分组格式有所不同：在分组上增加了4个字节长的时间码（Time
Code），使分组长度变为192字节。时间码使得播放系统可以在允许[随机读取的存储介质中快速找到特定时间点的视频内容](../Page/隨機存取.md "wikilink")。借助时间码也可以用来同步多个摄像机拍摄的内容。

[JVC在基于](../Page/JVC.md "wikilink")[硬盘存储的](../Page/硬盘.md "wikilink")产品中将这种流称为。

### 蓝光

以前述格式构成的流被[蓝光光碟联盟称为](../Page/蓝光光碟联盟.md "wikilink")“[BDAV MPEG-2
transport
stream](../Page/M2TS.md "wikilink")”（字面意思为BDAV版本的MPEG2-TS），其文件扩展名为.m2ts，俗称[M2TS流](../Page/M2TS.md "wikilink")。蓝光的影碟以BDAV（Blu-ray
Disc Movie）格式的BDMV容器存储音频、视频以及其他内容，用于BD-R和BD-RE等格式的录制中。由于蓝光的M2TS和标准的MPEG
TS格式基本相同，其设备能够以非常小的延迟转录数字电视内容。由于MPEG-2
TS原本就是面向实时播放的格式，使得蓝光的内容可以简单地从流中截取任意一段，降低了视频剪辑的处理成本。此外，这种流格式也使得存储介质的物理损坏对内容的影响降到最小。

## 关联条目

  - （MPEG media transport, MMT）

      -
  - [节目专用信息](../Page/节目专用信息.md "wikilink")（PSI）

  - （PES）

  - [实时传输协议](../Page/实时传输协议.md "wikilink")（RTP）

  - （Unidirectional Lightweight Encapsulation，ULE）

## 注释

## 参考来源 

## 外部連結

  - [ITU-T H.222.0 |
    ISO/IEC 13818-1系统标准文档](http://www.itu.int/rec/T-REC-H.222.0)
      - [上述文档的最近免费公开版本（2015年1月）](http://www.itu.int/rec/T-REC-H.222.0-201410-S/en)
  - [解释TS分组、PES、几种PSI结构的资料](http://kangun.tistory.com/attachment/ik0.pdf)
  - [MPEG-4系统FAQ](http://mpeg.chiariglione.org/faq/mp4-sys/mp4-sys.htm)

[Category:MPEG](https://zh.wikipedia.org/wiki/Category:MPEG "wikilink")
[Category:ITU-建議書](https://zh.wikipedia.org/wiki/Category:ITU-建議書 "wikilink")
[Category:數碼電視](https://zh.wikipedia.org/wiki/Category:數碼電視 "wikilink")