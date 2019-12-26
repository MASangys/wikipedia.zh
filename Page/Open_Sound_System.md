**开放声音系统**（Open Sound System，OSS）是一個在 Unix 操作系統上用於發出和取得聲音的介面。它是基於標準的 Unix 設備（即 POSIX 的讀、寫、ioctl 等）。

OSS 是在 1992年由 [Hannu Savolainen](https://zh.wikipedia.org/wiki/Hannu_Savolainen "wikilink") 創造的，目前可用於11個主流的類Unix操作系統。OSS 可以在4種授權選擇下發布，其中3種是自由軟體授權，因此 OSS 是自由軟體。\[1\]

## API

這個 API 設計成使用傳統 Unix 的 open()、read()、write() 和 ioctl() 架構，存取特定的設備。例如，聲音輸入和輸出的預設設備是 **/dev/dsp**。使用Shell 的例子：

`cat `[`Open_Sound_System//dev/urandom`](https://zh.wikipedia.org/wiki/Open_Sound_System/dev/urandom "wikilink")` >/dev/dsp # plays `[`white``   ``noise`](https://zh.wikipedia.org/wiki/white_noise "wikilink")` through the speaker`
`cat /dev/dsp >a.a # reads data from the microphone and copies it to file a.a`

## 免費，專有，自由

2007年7月，4Front Technologies 發布用於 OpenSolaris 的 [CDDL](https://zh.wikipedia.org/wiki/CDDL "wikilink") 和用於 [Linux](../Page/Linux.md "wikilink") 的 GPL 授權的 OSS 原始碼。\[2\] 2008年1月4Front Technologies發布基於 [FreeBSD](../Page/FreeBSD.md "wikilink") （和其它 [BSD](../Page/BSD.md "wikilink") 系統）下[BSD許可證的](https://zh.wikipedia.org/wiki/BSD許可證 "wikilink") OSS。\[3\]

## 参见

  - [ALSA](../Page/ALSA.md "wikilink")

## 參考文獻

## 外部链接

  - [Open Sound System - 首頁](http://www.opensound.com/)
  - [Building the Open Sound System From Source](http://www.4front-tech.com/wiki/index.php/Building_OSSv4_from_source)
  - [Sorry State of Sound in Linux](http://insanecoding.blogspot.com/2007/05/sorry-state-of-sound-in-linux.html)
  - [State of sound in Linux not so sorry after all](http://insanecoding.blogspot.com/2009/06/state-of-sound-in-linux-not-so-sorry.html)

[Category:Linux](https://zh.wikipedia.org/wiki/Category:Linux "wikilink") [Category:Unix](https://zh.wikipedia.org/wiki/Category:Unix "wikilink") [Category:自由音訊軟體](https://zh.wikipedia.org/wiki/Category:自由音訊軟體 "wikilink") [Category:應用程序介面](https://zh.wikipedia.org/wiki/Category:應用程序介面 "wikilink") [Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink")

1.
2.
3.