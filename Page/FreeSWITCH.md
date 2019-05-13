**FreeSWITCH** 是一个
[免费](https://zh.wikipedia.org/wiki/free_software "wikilink")、
[开源](https://zh.wikipedia.org/wiki/open_source_software "wikilink")
的软交换软件。 它采用 [Mozilla Public
License](https://zh.wikipedia.org/wiki/Mozilla_Public_License "wikilink")
(MPL)授权协议, MPL是一个
[开源的软件协议](https://zh.wikipedia.org/wiki/free_software_license "wikilink").
它的核心库libfreeswitch可以嵌入其它系统或产品中，也可以做一个单独的应用存在。

## 历史

FreeSWITCH 项目最初于2006年1月在[O'Reilly
Media](https://zh.wikipedia.org/wiki/O'Reilly_Media "wikilink")'s ETEL
会议上发布。\[1\] 2007年6月，FreeSWITCH
被[Truphone](https://zh.wikipedia.org/wiki/Truphone "wikilink")
采用\[2\]。2007年8月, Gaboogie 宣布使用FreeSWITCH作为电话会议平台。\[3\]

FreeSWITCH的第一个官方的1.0.0版 (Phoenix)
发布于2008年5月26日。\[4\]2008年7月24日发布了一个小的更新版。\[5\]
1.2.1版发布于2012年8月. Anthony Minessale announced\[6\]在ClueCon
2012上宣布了1.2.0版的发布\[7\].现阶段FreeSWITCH 开发团队维护稳定版 (1.6版) 以及开发版
(1.7版) 两个分支。2018年5月8号发表1.8.0版本,截至2019年3月3号最新版本是1.8.5。

## 设计

据其主要开发者[Anthony
Minessale所说](https://zh.wikipedia.org/wiki/Anthony_Minessale "wikilink")，\[8\]
FreeSWITCH 致力于做一个
[软交换](../Page/软交换.md "wikilink")，它建立于一个坚实的核心上面，由一个[有限状态机驱动](https://zh.wikipedia.org/wiki/Finite-state_machine "wikilink")。\[9\]
该项目的目标包括稳定，[可伸缩性](https://zh.wikipedia.org/wiki/可伸缩性 "wikilink")，以及[抽象性](https://zh.wikipedia.org/wiki/抽象性 "wikilink")。

为了减少复杂性及避免重复发明轮子，FreeSWITCH
使用其它开源免费的[软件库来提供必要的功能](https://zh.wikipedia.org/wiki/library_\(computing\) "wikilink")。典型的有：\[10\]

  - [Apache Portable
    Runtime](https://zh.wikipedia.org/wiki/Apache_Portable_Runtime "wikilink")
    (APR and APR-Util)
  - [SQLite](../Page/SQLite.md "wikilink") – 一个轻量级的SQL引擎
  - [PCRE](https://zh.wikipedia.org/wiki/Perl_Compatible_Regular_Expressions "wikilink")
    – Perl兼容的正则表达式引擎
  - [Sofia-SIP](https://zh.wikipedia.org/wiki/Sofia-SIP "wikilink") –
    一个开源的
    [SIP](https://zh.wikipedia.org/wiki/Session_Initiation_Protocol "wikilink")
    UA 库
  - libspeex – [Speex](https://zh.wikipedia.org/wiki/Speex "wikilink")
    DSP 库
  - [mod_spandsp](http://wiki.freeswitch.org/wiki/Mod_spandsp) 支持
    [T.38](https://zh.wikipedia.org/wiki/T.38 "wikilink") 传真
  - libSRTP – [Secure Real-time Transport
    ProtocolSRTP的一个开源实现](https://zh.wikipedia.org/wiki/Secure_Real-time_Transport_ProtocolSRTP "wikilink")

编译FreeSWITCH时并不是所有这些库都是必要的，只是在某些模块需要用到它们，如Codec模块等。FreeSWITCH是一个模块化结构的程序，模块可以扩展核心的功能，而内部的抽象层则可以避免模块间的相互依赖关系。目标是避免加载一个模块时又依赖其它模块。

## 特性

FreeSWITCH包含大量的模块，如缺省的包括
[会议](https://zh.wikipedia.org/wiki/Conference_call "wikilink")，使用[XML-RPC](../Page/XML-RPC.md "wikilink")
控制呼叫，[Interactive voice
response](https://zh.wikipedia.org/wiki/Interactive_voice_response "wikilink")
(IVR),
[TTS](https://zh.wikipedia.org/wiki/Speech_synthesis "wikilink")/[ASR](https://zh.wikipedia.org/wiki/Speech_recognition "wikilink")
(语音合成和语音识别), [Public switched telephone
network](https://zh.wikipedia.org/wiki/Public_switched_telephone_network "wikilink")
(PSTN) 接口，可连接模拟和数字中继，[VoIP](../Page/VoIP.md "wikilink") 协议包括
[SIP](https://zh.wikipedia.org/wiki/Session_Initiation_Protocol "wikilink")，[SCCP](https://zh.wikipedia.org/wiki/Skinny_Client_Control_Protocol "wikilink"),
[H.323](../Page/H.323.md "wikilink"),
[XMPP](https://zh.wikipedia.org/wiki/Extensible_Messaging_and_Presence_Protocol "wikilink"),
[GoogleTalk](https://zh.wikipedia.org/wiki/GoogleTalk "wikilink"),
[t.38](https://zh.wikipedia.org/wiki/t.38 "wikilink") 等等。\[11\]

使用FreeSWITCH库开发程序可以使用
[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")/[C++](../Page/C++.md "wikilink"),
[Python](../Page/Python.md "wikilink")，
[Perl](../Page/Perl.md "wikilink")，
[Lua](https://zh.wikipedia.org/wiki/Lua_\(programming_language\) "wikilink")，[JavaScript](../Page/JavaScript.md "wikilink")，
[Java](../Page/Java.md "wikilink") 以及 Microsoft .NET 通过Microsoft 的 CLR
或[Mono](https://zh.wikipedia.org/wiki/Mono_\(software\) "wikilink")。不管是何种语言，FreeSWITCH都能提供对外的呼叫控制接口以及IVR控制功能，以便于开发人员使用。\[12\]

呼叫控制接口可以使用Event Socket，它是一个
[网络套接字](https://zh.wikipedia.org/wiki/Internet_socket "wikilink")
连接软件和协议。基本上任何语言都可以通过Event Socket与它通信，进而控制呼叫流程。FreeSWITCH也自带了一个 Event
Socket 库 (ESL) 以及 "ESL-wrappers"，支持
[Erlang](https://zh.wikipedia.org/wiki/Erlang_\(programming_language\) "wikilink"),
JavaScript, Lua, Perl, PHP, Python, and
[Ruby](https://zh.wikipedia.org/wiki/Ruby_\(programming_language\) "wikilink").

## 编解码支持

FreeSWITCH 支持很多的语音编解码:\[13\]

  - PCMU – [G.711](../Page/G.711.md "wikilink") µ-law
  - PCMA – [G.711](../Page/G.711.md "wikilink") A-law
  - [G.722](https://zh.wikipedia.org/wiki/G.722 "wikilink")
  - [G.722.1](https://zh.wikipedia.org/wiki/G.722.1 "wikilink")
  - [G.722.1c](https://zh.wikipedia.org/wiki/G.722.1 "wikilink")
  - [G.726](https://zh.wikipedia.org/wiki/G.726 "wikilink")
  - [G.726](https://zh.wikipedia.org/wiki/G.726 "wikilink") with
    [AAL2](https://zh.wikipedia.org/wiki/AAL2 "wikilink") packing
  - [G.729](https://zh.wikipedia.org/wiki/G.729 "wikilink")
    (默认透传模式，转码可以在FreeSWITCH官网购买许可，每通道10美金，或使用Sangoma转码卡)\[14\]
  - [GSM](https://zh.wikipedia.org/wiki/Global_System_for_Mobile_Communications "wikilink")
  - [CELT](https://zh.wikipedia.org/wiki/CELT "wikilink")
  - [iLBC](https://zh.wikipedia.org/wiki/Internet_Low_Bit_Rate_Codec "wikilink")
  - DVI4 ([IMA
    ADPCM](https://zh.wikipedia.org/wiki/IMA_ADPCM "wikilink"))
  - [BroadVoice](https://zh.wikipedia.org/wiki/BroadVoice "wikilink")
  - [SILK](https://zh.wikipedia.org/wiki/SILK "wikilink")
  - [Speex](https://zh.wikipedia.org/wiki/Speex "wikilink")
  - [CODEC2](https://zh.wikipedia.org/wiki/CODEC2 "wikilink")
  - [Siren](https://zh.wikipedia.org/wiki/Siren_Codec "wikilink")
  - [LPC-10](https://zh.wikipedia.org/wiki/LPC-10 "wikilink")
  - [G.723.1](https://zh.wikipedia.org/wiki/G.723.1 "wikilink")
    (默认透传模式，转码可以使用Sangoma转码卡)
  - [AMR](https://zh.wikipedia.org/wiki/Adaptive_Multi-Rate_audio_codec "wikilink")
    (默认透传模式，转码可以使用Sangoma转码卡-仅限AMR-NB)
  - [iSAC](../Page/Internet_Speech_Audio_Codec.md "wikilink")
  - [Opus](https://zh.wikipedia.org/wiki/Opus "wikilink")（测试阶段）

FreeSWITCH支持的视频编码（1.7版支持视频转码）:\[15\]

  - [H261](https://zh.wikipedia.org/wiki/H261 "wikilink")
  - [H263](https://zh.wikipedia.org/wiki/H263 "wikilink")
  - [H263+](https://zh.wikipedia.org/wiki/H263+ "wikilink")
    ([H263-1998](https://zh.wikipedia.org/wiki/H263-1998 "wikilink"))
  - [H263++](https://zh.wikipedia.org/wiki/H263++ "wikilink")
    ([H263-2000](https://zh.wikipedia.org/wiki/H263-2000 "wikilink"))
  - [H264](https://zh.wikipedia.org/wiki/H264 "wikilink")
  - [VP8](../Page/VP8.md "wikilink")
  - [Theora](../Page/Theora.md "wikilink")
  - [MP4](../Page/MP4.md "wikilink")

某些编码只支持透传，这意味着FreeSWITCH对这些媒体不进行任何处理，而把原始压缩的内容直接“透传”到对方。这使得双方都有兼容的编码时可以相互通信，而这些编码可能因为专利等原因不能在FreeSWITCH内部提供。由于使用这些编码里数据无法解码，某些IVR或录音应用就受到限制。

FreeSWITCH也支持硬件编码软件卡，如Sangoma的板卡。\[16\]
通过硬件实现编解码，可以节约服务器端的CPU，而且通过硬件实现的转码都已经包含正常的许可证，这也解决了上面的透传问题。

## 操作系统与编译环境支持

  - [AuroraUX](https://zh.wikipedia.org/wiki/AuroraUX "wikilink")
    (LLVM+Clang/gmake)
  - Sun [Solaris](../Page/Solaris.md "wikilink") 10 UNIX ([Sun
    Studio](https://zh.wikipedia.org/wiki/Sun_Studio_\(software\) "wikilink"))
  - [BSD系统](https://zh.wikipedia.org/wiki/BSD系统 "wikilink")（包括FreeBSD
    8-10，NetBSD 6，OpenBSD 5） (gmake)
  - [Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink") (make)
  - [Linux系统](https://zh.wikipedia.org/wiki/Linux系统 "wikilink")（包括Red
    Hat Enterprise Linux，CentOS，Debian(可以运行于树莓派)，Ubuntu等）
  - [Microsoft
    Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")
    (原生支持，有二进制安装程序)
  - [Pfsense](https://zh.wikipedia.org/wiki/Pfsense "wikilink")

## 问题

  - [BRI](https://zh.wikipedia.org/wiki/Basic_rate_interface "wikilink")
    支持需要基于Sangoma硬件板卡\[17\]

## 与其它类似的电话软件比较

<http://en.wikipedia.org/wiki/Comparison_of_VoIP_software> FreeSWITCH
填补了简单的仅仅是路由电话的纯交换软件如
[GnuGK](https://zh.wikipedia.org/wiki/GnuGK "wikilink") 和
[SER](https://zh.wikipedia.org/wiki/SIP_Express_Router_\(SER\) "wikilink"),
和那些主要用于
[PABX](https://zh.wikipedia.org/wiki/Private_branch_exchange "wikilink")
或
[IVR的应用如](https://zh.wikipedia.org/wiki/Interactive_voice_response "wikilink")
[Asterisk](https://zh.wikipedia.org/wiki/Asterisk_PBX "wikilink")
以及其衍生品之间的空白。FreeSWITCH 可以作为，如一个 PABX，一个
[voicemail](https://zh.wikipedia.org/wiki/voicemail "wikilink") 系统, 一个
[电话会议系统或一个](https://zh.wikipedia.org/wiki/conference_call "wikilink")
[电话卡系统](https://zh.wikipedia.org/wiki/Telephone_card "wikilink") –
可以使用任何语言来构建这样的产品。

## 衍生产品

FreeSWITCH 是很多商业的和开源的*装在盒子里的PABX*的核心组件。某些商业产品是软硬件结合的。

例如 [Barracuda
Networks](https://zh.wikipedia.org/wiki/Barracuda_Networks "wikilink")
[CudaTel VOIP
PBX](https://zh.wikipedia.org/wiki/CudaTel_VOIP_PBX "wikilink") 系列以及
[Gemeinschaft_(PBX)](https://zh.wikipedia.org/wiki/Gemeinschaft_\(PBX\) "wikilink").

## 参见

  - [自由软件列表](https://zh.wikipedia.org/wiki/自由软件列表 "wikilink") – 其它相关的软件



## 参考资料

## 外部链接

  - [FreeSWITCH Project Home Page](http://www.freeswitch.org/) –
    FreeSWITCH官方网站
  - [FreeSWITCH
    Confluence](https://freeswitch.org/confluence/display/FREESWITCH/FreeSWITCH+Explained)
    – FreeSWITCH官方文档
  - [FreeSWITCH-CN中文社区](http://www.freeswitch.org.cn/) – 中文社区和文档大本营
  - [\#freeswitch](irc://irc.freenode.net/freeswitch) on freenode

[Category:VoIP軟體](https://zh.wikipedia.org/wiki/Category:VoIP軟體 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10. A complete list of dependencies can be found in the [dependencies
    page](http://wiki.freeswitch.org/wiki/FreeSwitch_Dependencies)
    section of the FreeSWITCH documentation.
11.
12.
13. <https://freeswitch.org/confluence/display/FREESWITCH/Codecs+and+Media>
14. <https://billing.freeswitch.org/cart.php?a=confproduct&i=1>
15. <http://wiki.freeswitch.org/wiki/Codecs>
16. <http://wiki.sangoma.com/sangoma-media-transcoding#sng_freeswitch_usage>

17. [FreeSWITCH Wiki
    FAQ](http://wiki.freeswitch.org/wiki/FreeSwitch_FAQ#Q:_Can_I_use_freeSwitch_with_isdn_BRI.2FBRA_lines_.28S0_Basic_Rate_Interface.29.3F)