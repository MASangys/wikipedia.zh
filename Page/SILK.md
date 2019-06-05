**SILK**是一个开发的[音频压缩格式和](../Page/数据压缩.md "wikilink")[音频编解码器](../Page/音频编解码器.md "wikilink")。它被开发用于[Skype](../Page/Skype.md "wikilink")，以取代编解码器。自从提供许可，它也已被用于其他目的。它已被扩展为互联网标准[Opus的编解码器](https://zh.wikipedia.org/wiki/Opus_codec "wikilink")。

## 详细情况

[缩略图](https://zh.wikipedia.org/wiki/File:SILK_encoder_block_diagram.svg "fig:缩略图")
Skype有限公司宣称SILK可以使用8、12、16或24 kHz的[采样率](../Page/取樣.md "wikilink")，以及6至40
kbit/s的[比特率](../Page/比特率.md "wikilink")。它也可以使用一个25ms的低算法（20ms帧大小+5ms预留）。\[1\]参考实现采用C语言编写。该编解码器的技术基于[线性预测编码](../Page/线性预测编码.md "wikilink")（LPC）。\[2\]
SILK有[二进制](https://zh.wikipedia.org/wiki/執行檔 "wikilink")[SDK提供](../Page/软件开发工具包.md "wikilink")。\[3\]

## 许可协议

SILK编解码器拥有专利，并且SILK
SDK有独立的许可协议。\[4\]该编解码器是一个[开源的](../Page/开放源代码.md "wikilink")[免费软件](../Page/免費軟體.md "wikilink")，可以有限定的[買斷式授權用于使用和分发](../Page/買斷式授權.md "wikilink")。\[5\]\[6\]
该
SDK最初只需要提供姓名、地址、电话和如何使用SILK的描述即可被应用程序使用。\[7\]（版本1.0.9），该SDK可以直接下载，但授权仅限于内部评估和测试目的，不包括软件分发或在任何商业产品或服务中使用。\[8\]\[9\]

## 历史

SILK取代了早前在Skype中使用的，其是一个取代[iSAC和](../Page/Internet_Speech_Audio_Codec.md "wikilink")[iLBC的内部解决方案](https://zh.wikipedia.org/wiki/iLBC "wikilink")，这也是再次从[Global
IP
Solutions取得授权](../Page/Global_IP_Solutions.md "wikilink")。SILK编解码器是一个与SVOPC独立的开发分支，并且已被开发超过3年。\[10\]
它于2009年1月在 [Consumer Electronics
Show](../Page/消費電子展.md "wikilink")\[11\] 被宣布，并在2009年1月7日在4.0
beta
3版本中被首次整合到Skype\[12\]，最终版本在2月3日发布。\[13\]2009年3月3日，Skype有限公司宣布SILK编解码器将以[買斷式授權面向第三方软件和硬件开发者](../Page/買斷式授權.md "wikilink")。\[14\]
*SILK Speech
Codec*的首个草稿在2009年7月6日被提交给[互联网工程任务组](../Page/互联网工程任务组.md "wikilink")（IETF）作为一个新的“互联网宽带音频编解码器”的标准化候选者，从而公开发布了其格式和参考实现的源代码。\[15\]同时还有一份[RTP](../Page/实时传输协议.md "wikilink")
Payload Format and File Storage Format for SILK Speech and Audio
Codec的初稿。\[16\]

### Opus

SILK（配以[CELT](https://zh.wikipedia.org/wiki/CELT "wikilink")）是混合的编解码器[Opus的基础](https://zh.wikipedia.org/wiki/Opus_codec "wikilink")，这在2010年9月被递交给IETF\[17\]，并且被选定为新标准的最终候选者。Opus已作为一项IETF提议标准在2012年9月被发布。\[18\]

## 使用

  - SILK的稳定版本最早在Skype 4.0 Beta 3 for Windows中引入，于2009年1月7日发布。\[19\]
  - Skype 4.0的最终版本发布于2009年2月3日。\[20\]\[21\]
  - 2011年3月22日，[Steam游戏平台开始将SILK编解码器用于其集成的游戏和社区语音聊天](../Page/Steam.md "wikilink")
  - 之后的4月14日，在[絕地要塞2](../Page/絕地要塞2.md "wikilink")（TF2）中，该编解码器被实现到游戏中的语音聊天中。\[22\]
  - 2013年1月29日，更新的SteamPipe平台[GoldSrc引擎开始使用SILK编解码器用于游戏中语音聊天](../Page/GoldSrc引擎.md "wikilink")。

## 参见

  - [Skype協定](../Page/Skype協定.md "wikilink")
  - [音频编码格式的比较](https://zh.wikipedia.org/wiki/音频编码格式的比较 "wikilink")
  - [前向錯誤更正](../Page/前向錯誤更正.md "wikilink")

## 参考资料

## 外部链接

  -
  -
[Category:音频编解码器](https://zh.wikipedia.org/wiki/Category:音频编解码器 "wikilink")

1.
2.  [Audio-Mitschnitt](http://nagasaki.bogus.com/ietf79/ietf79-ch8-tue-noon.mp3)
     vom Treffen der IETF-Codec-Arbeitsgruppe auf der Konferenz IETF79
    in Peking, China mit einer Darstellung der grundlegenden
    Funktionsprinzipien durch Koen Vos (MP3, \~70 MiB)

3.
4.  [SILK Patent License](http://developer.skype.com/silk/license),
    Retrieved 2012-12-26

5.
6.  [Skype publishes SILK audio codec source
    code](http://www.h-online.com/open/news/item/Skype-publishes-SILK-audio-codec-source-code-955264.html),
    Retrieved 2012-12-26

7.
8.
9.  [Skype Developer Forum - SILK SDK
    license](http://devforum.skype.com/t5/Developer-Corner/SILK-SDK-license/td-p/12848)
    , Retrieved 2012-12-26

10. Michael Stanford (2009-01-13) [Skype’s new super-wideband
    codec](http://www.wirevolution.com/2009/01/13/skypes-new-super-wideband-codec/),
    Retrieved 2009-09-01

11. Michael Stanford (2009-01-13) [Skype’s new super-wideband
    codec](http://www.wirevolution.com/2009/01/13/skypes-new-super-wideband-codec/),
    Retrieved 2009-09-01

12. Skype Journal (2009-01-07)[Skype for Windows 4.0 Beta 3 Hotfix
    Introduces New Audio
    Codec](http://skypejournal.com/2009/01/skype-for-windows-40-beta-3-hotfix.html),
    Retrieved 2009-09-01

13.

14. Jonathan Christensen (2009-03-03) [SILK, our super wideband audio
    codec, is now available for
    free](http://share.skype.com/sites/en/2009/03/silk_now_available_for_free.html)
    , Retrieved 2009-09-01

15. IETF (2009-07-06) [SILK Speech Codec -
    draft-vos-silk-00.txt](http://tools.ietf.org/html/draft-vos-silk-00#page-4),
    Retrieved 2009-09-01

16. IETF (2009-07-06) [RTP Payload Format and File Storage Format for
    SILK Speech and Audio
    Codec](http://tools.ietf.org/html/draft-spittka-silk-payload-format-00),
    Retrieved 2009-09-01

17. [Definition of the Harmony Audio
    Codec](http://tools.ietf.org/html/draft-ietf-codec-harmony-00)

18.

19. Skype Journal (2009-01-07)[Skype for Windows 4.0 Beta 3 Hotfix
    Introduces New Audio
    Codec](http://skypejournal.com/2009/01/skype-for-windows-40-beta-3-hotfix.html),
    Retrieved 2009-09-01

20. PCWorld (2009-02-04)[Skype Upgrade Simplifies VoIP Video
    Calls](http://www.pcworld.com/businesscenter/article/158941/skype_upgrade_simplifies_voip_video_calls.html?tk=rel_news),
    Retrieved 2009-09-01

21. (2009-02-04) [Skype 4.0 audio: smooth as
    SILK](http://saunderslog.com/2009/02/04/skype-40-audio-smooth-as-silk/),
    Retrieved 2009-09-01

22. <http://www.teamfortress.com/hatless/>