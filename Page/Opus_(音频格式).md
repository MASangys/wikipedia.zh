**Opus**是一個[有損聲音編碼的格式](https://zh.wikipedia.org/wiki/破壞性資料壓縮#音訊壓縮 "wikilink")，由[Xiph.Org基金會](../Page/Xiph.Org基金會.md "wikilink")開發，之後由[網際網路工程任務組進行標準化](../Page/互联网工程任务组.md "wikilink")，目標是希望用單一格式包含聲音和語音，取代[Speex和](https://zh.wikipedia.org/wiki/Speex "wikilink")[Vorbis](https://zh.wikipedia.org/wiki/Vorbis "wikilink")，且適用於網路上低延遲的即時聲音傳輸，標準格式定義於RFC 6716文件。Opus格式是一個[開放格式](https://zh.wikipedia.org/wiki/開放格式 "wikilink")，使用上沒有任何[專利或限制](https://zh.wikipedia.org/wiki/專利 "wikilink")。

Opus整合了兩種聲音編碼的技術：以語音編碼為導向的[SILK](../Page/SILK.md "wikilink")和低延遲的[CELT](https://zh.wikipedia.org/wiki/CELT "wikilink")。Opus可以无缝调节高低[比特率](../Page/比特率.md "wikilink")。在编码器内部它在较低比特率时使用[线性预测编码](../Page/线性预测编码.md "wikilink")在高比特率时候使用[变换编码](https://zh.wikipedia.org/wiki/变换编码 "wikilink")（在高低比特率交界处也使用两者结合的编码方式）。Opus具有非常低的演算法延遲（預設為22.5 ms）\[1\]，非常適合用於低延遲語音通話的編碼，像是網路上的即時聲音串流、即時同步聲音旁白等等，此外Opus也可以透過降低編碼位元率，達成更低的演算法延遲，最低可以到5 ms。在多個聽覺盲測中，Opus都比[MP3](../Page/MP3.md "wikilink")、[AAC](https://zh.wikipedia.org/wiki/AAC "wikilink")、[HE-AAC等常見格式](https://zh.wikipedia.org/wiki/HE-AAC "wikilink")，有更低的延遲和更好的聲音壓縮率。

## 技术特性

[Opus_bitrate+latency_comparison.svg](https://zh.wikipedia.org/wiki/File:Opus_bitrate+latency_comparison.svg "fig:Opus_bitrate+latency_comparison.svg") Opus可以處理各種音頻應用，包括IP語音、視頻會議、遊戲內聊天、串流音樂、甚至遠端現場音樂表演。它可以從低比特率窄帶語音擴展到非常高音質的立體聲音樂。支持的功能包括：

1.  6 kb/秒到510 kb/秒的[比特率](../Page/比特率.md "wikilink")；單一頻道最高256 kb/秒
2.  采样率从8 kHz（窄带）到48 kHz（全频）
3.  帧大小从2.5毫秒到60毫秒
4.  支持恒定比特率（CBR）、受約束比特率（CVBR）和可变比特率（VBR）
5.  支持语音（SILK層）和音乐（CELT層）的單獨或混合模式
6.  支持单声道和立体声；支持多达255个音軌（多数据流的帧）
7.  可动态调节比特率，音频带宽和帧大小
8.  良好的鲁棒性丢失率和数据包丢失隐藏（PLC）
9.  浮点和定点实现

## 開發歷史

Opus被提出用於在IETF上標準化新的音頻格式，最終被IETF編解碼器工作組接受和授予。它基於[Xiph.Org基金會](../Page/Xiph.Org基金會.md "wikilink")和[Skype](../Page/Skype.md "wikilink")技術公司兩項最初分開的標準提案。其主要開發人員包括Jean-Marc Valin（Xiph.Org，Octasic，Mozilla Corporation），Koen Vos（Skype）和Timothy B. Terriberry（Xiph.Org，Mozilla Corporation）。其中包括Juin-Hwey（Raymond）Chen（Broadcom），Gregory Maxwell（Xiph.Org，Wikimedia）和Christopher Montgomery（Xiph.Org）也參與其中。

CELT的發展部分格式可以追溯到[Vorbis的繼任者的工作名稱Ghost下](https://zh.wikipedia.org/wiki/Vorbis "wikilink")。作為Xiph.Org基金會的新一代語音編解碼器，Opus取代了Xiph的較早的語音編解碼器[Speex](https://zh.wikipedia.org/wiki/Speex "wikilink")，該版本是Jean-Marc Valin先前的一個項目。CELT自2007年11月起開始工作。

SILK部分自2007年1月起一直在Skype開發，作為其SVOPC的繼任者，該公司是一個內部項目，使公司獨立於[iSAC和](https://zh.wikipedia.org/wiki/iSAC "wikilink")[iLBC等第三方編解碼器和相應的許可證付款](https://zh.wikipedia.org/wiki/iLBC "wikilink")。

2009年3月，Skype建議在IETF內開發和規範寬帶音頻格式。近一年來，成立了一個適當的工作組，進行了大量辯論\[2\]。參與專利保護競爭格式標準化的幾家公司的代表表示反對開始免版稅格式的標準化過程：[Polycom](../Page/Polycom.md "wikilink")和[愛立信](../Page/愛立信.md "wikilink")的代表（G.719的創始人和許可人）以及[法國電信](https://zh.wikipedia.org/wiki/法國電信 "wikilink")，[華為和](https://zh.wikipedia.org/wiki/華為 "wikilink")[橙色實驗室](../Page/Orange_\(公司\).md "wikilink")（法國電信部門），參與創建G.718。

2010年7月，提出了一種混合格式的原型，將兩種提出格式的候選者SILK和CELT相結合。2010年9月，Opus作為標準化提案提交給IETF。在短時間內，格式在2010年10月獲得現有名稱之前，以Harmony的名義出現\[3\]。2011年2月初，比特流格式暫時凍結，但有待最後更改\[4\]。2011年7月底，Jean-Marc Valin被[Mozilla公司](../Page/Mozilla公司.md "wikilink")僱用，繼續開發Opus\[5\]。2011年11月，工作組最近發出了關於比特流格式的更改的通知。比特流自2012年1月8日以來已被凍結\[6\]。2012年7月2日，Opus被IETF批准用於標準化\[7\]。參考軟件中輸入8月8日發布的候選狀態\[8\]最後的規範發布的RFC 6716於2012年9月10日\[9\]\[10\]，和版本為1.0和1.0.1 參考實現被釋放一天之後。

2013年7月11日，Opus 1.0.3帶來了錯誤修復和一個新的Surround聲音API，可以提高音軌分配和質量，特別是低頻音軌（LFE）\[11\]。

### 1.1

2013年12月5日，Opus 1.1發布\[12\]，整體速度提升和顯著的編碼器質量改進：調諧估計提高了以前有問題的樣本的比特率和質量（如大鍵）、自動語音/音樂檢測提高了混合音頻的質量、中端立體聲降低了許多歌曲的比特率需求、提高瞬態帶寬精度、以及DC抑制低於3 Hz。增加了兩種新的VBR模式：不受限制的更一致的質量以及時間VBR，可以提升響亮的畫面，並通常提高畫質。

Opus 1.1.1於2015年11月26日發布，並於2016年1月12日發布了1.1.2，同時增加了速度優化和錯誤修復。2016年7月15日發布版本1.1.3，並包含錯誤修復、優化、文檔更新和實驗性的Ambisonics工作。

### 1.2

2017年6月26日，Opus 1.2.1版本发布，精简了音频文件体积，改善了音频质量，增强了部分情况下的安全性，编解码器效率提升。准备推动RFC 6716标准更新，标准未更新之前继续兼容RFC 6716。此版本也带来了面向VR的立体声音频解决方案。

## 音質和低延遲比較

[Opus_quality_comparison_colorblind_compatible.svg](https://zh.wikipedia.org/wiki/File:Opus_quality_comparison_colorblind_compatible.svg "fig:Opus_quality_comparison_colorblind_compatible.svg")

Opus在更高的[比特率](../Page/比特率.md "wikilink")下，已被證明具有優異的音質，而它的音頻格式比[AAC](https://zh.wikipedia.org/wiki/AAC "wikilink")、[HE-AAC和](https://zh.wikipedia.org/wiki/HE-AAC "wikilink")[Vorbis更具有競爭力](https://zh.wikipedia.org/wiki/Vorbis "wikilink")\[13\]。

在64kbit / s的聽力測試中，與HE-AAC編解碼器相比，Opus表現出更優異的音質，HE-AAC由於使用了專利的[頻譜帶複製](https://zh.wikipedia.org/wiki/頻譜帶複製 "wikilink")（SBR）技術，這些編解碼器在以前占主導地位\[14\]\[15\]。在96 kbit / s的聽力測試中，Opus顯示出比Vorbis略高的音質，與AAC和[MP3](../Page/MP3.md "wikilink")相比音質明顯更好\[16\]。

Opus具有非常低的算法延遲，作為低音頻延遲通信鏈路一部分的必要性，可以在現場活動中允許自然對話，[網絡音樂表演或](https://zh.wikipedia.org/wiki/網絡音樂 "wikilink")[對嘴表演](https://zh.wikipedia.org/wiki/對嘴 "wikilink")。音頻格式的總算法延遲是無論處理速度和傳輸速度如編碼器和實況音頻流的解碼器必須承擔的延遲的總和，例如將音頻樣本緩衝到塊或幀中，允許[窗口重疊和可能允許對噪聲整形在解碼器中先行和任何其他形式的先行的](../Page/改進的離散餘弦變換.md "wikilink")，或用於將MP3編碼器，使用的比特儲存器\[17\]。

150毫秒以下的單向延遲是大多數[VoIP](../Page/VoIP.md "wikilink")系統的首選目標\[18\] ，使自然對話與轉向受到延遲的影響很小。音樂家通常會感覺到高達約30毫秒音頻延遲的時間\[19\]，大致符合Haas效果的融合時間，儘管將每個用戶自己的樂器的播放延遲與往返延遲相匹配也可以有所幫助\[20\]。音頻╱視頻同步，約45-100毫秒的音頻延遲可能是可以接受的\[21\]。

Opus允許減少質量或提高比特率以實現更小的算法延遲（最小5.0 ms）\[22\]。雖然參考實現的默認Opus幀為20.0 ms長，但SILK層需要進一步5.0 ms的前瞻加1.5 ms進行重採樣，默認延遲為26.5 ms。當CELT層處於活動狀態時，默認情況下，為了與SILK層同步，[窗口重疊需要](../Page/改進的離散餘弦變換.md "wikilink")2.5 ms的前視，其中添加了4.0 ms的匹配延遲。如果編碼器在特殊限制低延遲模式下實例化，則刪除4.0 ms匹配延遲，並禁用SILK層，允許5.0 ms的最小算法延遲\[23\]。

## 部署與採用

格式和算法是公開記錄的，參考實作是作為[自由軟件發布的](https://zh.wikipedia.org/wiki/自由軟件 "wikilink")。Xiph的參考實現稱為libopus，一個名為opus-tools的包提供命令行編碼器和解碼器實用程序。它是根據[BSD授權條款發布的](https://zh.wikipedia.org/wiki/BSD授權條款 "wikilink")。它是用C語言編寫的，可以針對具有或不具有浮點單元的硬件架構進行編譯。隨附的診斷工具opusinfo報告有關Opus文件的詳細技術信息，包括有關比特流格式標準符合性的信息。它是基於ogginfo從因此，與編碼器和解碼器不同，vorbis-tools可以在[GPL第](https://zh.wikipedia.org/wiki/GPL "wikilink")2版​​的條款下使用。

### 實作

RFC 6716包含用C編寫的參考實現的完整源代碼。[FFmpeg](../Page/FFmpeg.md "wikilink")的項目\[24\]和[GStreamer](../Page/GStreamer.md "wikilink")的項目\[25\]具有編碼器和解碼器的實現不是從參考庫的。libopus引用庫已作為名為Concentus的項目的一部分移植到[C＃和](https://zh.wikipedia.org/wiki/C＃ "wikilink")[Java](../Page/Java.md "wikilink")。這些移植版本犧牲了性能，以便輕鬆集成到跨平台應用程序中。\[26\]

### 軟件

該GatesAir Intraplex IP Link和Tieline廣播IP音頻編解碼器的梅林和精靈族和Tieline報告-IT移動編解碼器添加到嵌入式和移動設備的作品的支持。\[27\]Digital Radio Mondiale - AM頻率的數字無線電格式 - 可以使用Dream 軟件定義的無線電廣播和接收Opus音頻（儘管在官方標準中未被識別）。在維基媒體基金會贊助的免費和開源的在線的JavaScript作品編碼器，瀏覽器支持所需的HTML5功能。\[28\]信號從Speex切換到Opus音頻編解碼器，在2017年初提供更好的音頻質量。

#### 作業系統支持

大多數最終用戶軟件依賴於操作系统提供的多媒體框架。Native Opus編解碼器支持在類Unix操作系统的大多數主要多媒體框架中實現，包括GStreamer，FFmpeg和Libav庫。\[29\]\[30\]\[31\]

谷歌在Android 5.0（“Lollipop”）中添加了對Opus音頻播放的原生支持。\[32\]將載體限定，然而，對作品的音頻包封在Matroska的容器，如.mkv和.webm文件。\[33\]\[34\]Android 6.0（“Marshmallow”）和Android 7.0（“Nougat”）增加了對封裝在Ogg容器中的Opus音頻的支持。

由於在Apple的[WebKit](../Page/WebKit.md "wikilink")[渲染引擎中增加了](https://zh.wikipedia.org/wiki/渲染引擎 "wikilink")[WebRTC](../Page/WebRTC.md "wikilink")支持，macOS High Sierra和iOS 11為封裝在核心音頻格式(Core Audio Format)容器中的Opus音頻提供原生播放支持。\[35\]

在Windows 10上，Microsoft為封裝在Matroska中的 Opus音頻和Windows 10週年更新（1607）設備的WebM文件提供本機支持。\[36\] Web Media Extensions提供了對封裝在Ogg容器中的Opus音頻的支持，Web Media Extensions是Windows 10 Fall Creators Update（1709）設備的可選附件。\[37\]在Windows 8.1及更早版本中，第三方解碼器（如LAV過濾器）可用於提供有限的支持。\[38\]

<table>
<caption>Opus支援不同的操作系统</caption>
<thead>
<tr class="header">
<th></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Microsoft_Windows" title="wikilink">Microsoft Windows</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/macOS" title="wikilink">macOS</a></p></th>
<th><p><a href="../Page/Linux.md" title="wikilink">Linux</a></p></th>
<th><p><a href="../Page/Android.md" title="wikilink">Android</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/iOS" title="wikilink">iOS</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>編解碼器支援</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>容器支援</p></td>
<td><p><strong>在Windows 10週年更新（1607）</strong>:<br />
<a href="../Page/WebM.md" title="wikilink">WebM</a> (.webm)<br />
<a href="../Page/Matroska.md" title="wikilink">Matroska</a> (.mka, .mkv)<br />
<br />
<strong>在Windows 10 Fall Creators更新（1709）上使用Web Media Extensions附加組件</strong>:<br />
<a href="../Page/Ogg.md" title="wikilink">Ogg</a></p></td>
<td><p>核心音頻格式 (.caf)</p></td>
<td><p><a href="../Page/Ogg.md" title="wikilink">Ogg</a> (.opus)<br />
<a href="../Page/WebM.md" title="wikilink">WebM</a> (.webm)<br />
<a href="../Page/Matroska.md" title="wikilink">Matroska</a> (.mka, .mkv)<br />
<a href="https://zh.wikipedia.org/wiki/MPEG-TS" title="wikilink">MPEG-TS</a> (.ts)<br />
<a href="../Page/MP4.md" title="wikilink">MP4</a> (.mp4)</p></td>
<td><p><strong>在 <a href="https://zh.wikipedia.org/wiki/Android_5" title="wikilink">Android 5</a></strong>:<br />
<a href="../Page/WebM.md" title="wikilink">WebM</a> (.webm)<br />
<a href="../Page/Matroska.md" title="wikilink">Matroska</a> (.mka, .mkv)<br />
<br />
<strong>在 <a href="https://zh.wikipedia.org/wiki/Android_6" title="wikilink">Android 6</a>/<a href="https://zh.wikipedia.org/wiki/Android_7" title="wikilink">Android 7</a></strong>:<br />
<a href="../Page/Ogg.md" title="wikilink">Ogg</a></p></td>
<td><p>核心音頻格式 (.caf)</p></td>
</tr>
<tr class="odd">
<td><p>備註</p></td>
<td><p><strong>在Windows 10上</strong>:<br />
- 需要Fall Creators Update（1709）並安裝<a href="https://www.microsoft.com/store/productId/9N5TDP8VCMHS">Web Media Extensions</a>附加組件以支持Ogg容器。<br />
- 在<a href="../Page/通用Windows平台.md" title="wikilink">通用Windows平台</a>應用程序（<a href="https://zh.wikipedia.org/wiki/Groove_Music" title="wikilink">Groove Music</a>，<a href="https://zh.wikipedia.org/wiki/Microsoft_Movies" title="wikilink">Microsoft Movies</a>＆TV）上受支援。Windows Media Player上不支援。<br />
- 無法識別文件擴展名.opus（替換為.m4a）[39]<br />
<br />
<strong>在Windows 8.1及更早版本中</strong>:<br />
- 需要安裝<a href="https://zh.wikipedia.org/wiki/LAV_Filters" title="wikilink">LAV Filters</a></p></td>
<td><p>僅支持CAF容器中的Opus音頻。</p></td>
<td><p>–</p></td>
<td><p>無法識別文件擴展名.opus。（用.ogg或.m4a代替）[40]</p></td>
<td><p>僅支持CAF容器中的Opus音頻。</p></td>
</tr>
</tbody>
</table>

#### 媒體播放器支持

雖然多媒體框架中的支持自動支持Opus對基於此類框架構建的軟件的支持，但是一些應用程序開發人員為在其軟件中支持Opus音頻格式做出了額外的努力。這種支持被添加到AIMP\[41\]， Amarok\[42\]，cmus，音樂播放器守護進程，foob​​ar2000\[43\]，Mpxplay，MusicBee\[44\]，[SMplayer](https://zh.wikipedia.org/wiki/SMplayer "wikilink")，[VLC多媒體播放器](../Page/VLC多媒體播放器.md "wikilink")\[45\]， Winamp\[46\] 和Xmplay音頻播放器; Icecast\[47\]，Airtime（軟件）\[48\]音頻流軟件; 和[Asunder音頻CD](https://zh.wikipedia.org/wiki/Asunder "wikilink")，CDBurnerXP CD刻錄機，FFmpeg，Libav和MediaCoder媒體編碼工具。流媒體Icecast無線電試驗自2012年9月和2013年1月開始實施\[49\]\[50\]。SteamOS使用Opus或Vorbis進行流式音頻\[51\]。

#### 瀏覽器支持

對於WebRTC實現，Opus支持是強制性的\[52\]。Opus在Mozilla Firefox\[53\]，[Chromium](../Page/Chromium.md "wikilink")和[Google Chrome](../Page/Google_Chrome.md "wikilink")\[54\]，基於Blink的Opera\[55\]\[56\]，以及依賴GStreamer支持多媒體格式的類Unix系統的所有瀏覽器中得到支持。雖然Internet Explorer不會本機提供Opus播放，但[Microsoft Edge瀏覽器和](../Page/Microsoft_Edge.md "wikilink")[VP9](../Page/VP9.md "wikilink")內置了對格式的支持，以提供完整的WebM支持\[57\]\[58\]。Safari支持iOS 11和MacOS High Sierra的Opus\[59\]。

#### VoIP支持

由於其能力，Opus從VoIP軟件供應商那裡獲得了早期的興趣。幾個SIP客戶端，包括Acrobits Softphone，Bria X-Lite，CSipSimple（通過附加插件），Empathy（通過GStreamer），Jitsi\[60\]，Tuenti\[61\]，Line2（目前僅在iOS上）\[62\]，Linphone\[63\]，Phoner和PhonerLite\[64\]，SFLphone\[65\]，Mumble，Discord\[66\]和TeamSpeak 3語音聊天軟件也支持Opus\[67\]\[68\]\[69\]。TrueConf在其VoIP產品中支持Opus\[70\]。由於法律原因，Asterisk缺乏內置的Opus支持\[71\]，但第三方補丁可供下載\[72\]並且2016年9月增加了通過二進制blob的官方支持\[73\]。Tox P2P視頻會議軟件使用Opus只\[74\]。分類廣告分佈式消息傳遞應用程序在其VoIP實現中在TLS套接字內發送原始opus幀\[75\]。的[PlayStation 4遊戲機也採用了CELT](../Page/PlayStation_4.md "wikilink") /電視劇編解碼器，其系統黨的聊天\[76\]。

### 硬件

從版本3.13開始，Rockbox在支持的便攜式媒體播放器上播放Opus ，包括Apple的[iPod系列產品](https://zh.wikipedia.org/wiki/iPod "wikilink")，iriver，Archos和Sandisk製造的設備，以及使用“Rockbox as a Application”的Android設備\[77\]\[78\]。所有最近的Grandstream IP電話都支持Opus音頻編碼和解碼。OBihai OBi1062，OBi1032和OBi1022 IP電話全部支持Opus。最近的BlueSound無線揚聲器支持Opus播放\[79\]。

## 注釋

## 參考資料

## 外部連結

  -
  - [關於Hydrogenaudio知識庫](http://wiki.hydrogenaud.io/index.php?title=Opus)

[Category:互联网标准](https://zh.wikipedia.org/wiki/Category:互联网标准 "wikilink") [Category:开源软件](https://zh.wikipedia.org/wiki/Category:开源软件 "wikilink") [Category:數位音訊](https://zh.wikipedia.org/wiki/Category:數位音訊 "wikilink") [Category:音频编解码器](https://zh.wikipedia.org/wiki/Category:音频编解码器 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.
14. [Next-Gen Low-Latency Open Codec Beats HE-AAC](http://news.slashdot.org/story/11/04/14/2345238), Slashdot-Meldung vom 14. April 2011.
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
32.
33.
34.
35. [iOS 11: Opus support in podcast feeds](https://hetzel.net/2017-06-12/ios-11-opus-support-in-podcast-feeds/)
36. [WebM, VP9 and Opus Support in Microsoft Edge - Microsoft Edge Dev Blog](https://blogs.windows.com/msedgedev/2016/04/18/webm-vp9-and-opus-support-in-microsoft-edge/)
37. [Microsoft adding Ogg, Theora, and Vorbis open media formats to Windows 10 - Ctrl blog](https://www.ctrl.blog/entry/windows-ogg)
38.
39.
40.
41.
42.
43.
44.
45.
46.
47.
48.
49.
50.
51.
52.
53.
54.
55.
56.
57.
58.
59.
60.
61.
62.
63.
64.
65.
66.
67.
68.
69.
70.
71.
72.
73.
74.
75.
76.
77.
78.
79.