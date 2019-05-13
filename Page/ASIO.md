**ASIO**（Audio stream input
output），[音頻設備驅動程序的一種](../Page/音頻設備.md "wikilink")。

## 概要

ASIO是由[德國](../Page/德國.md "wikilink")[Steinberg公司所提出的音頻流輸入輸出應用程序](../Page/Steinberg.md "wikilink")，為[音頻](../Page/音頻.md "wikilink")[API標準之一](../Page/Application_Programming_Interface.md "wikilink")。現今販售的高級[音效卡多具備此一規格](../Page/音效卡.md "wikilink")，亦有支援[Windows和](../Page/Windows.md "wikilink")[Mac
OS的驅動](../Page/Mac_OS.md "wikilink")，已成為業界大多採用的標準。與[Mac OS
X的](../Page/Mac_OS_X.md "wikilink")[Core
Audio是同等級的技術](../Page/Core_Audio.md "wikilink")。另外[Linux方面](../Page/Linux.md "wikilink")，也具備低延遲內核。

[Windows和](../Page/Windows.md "wikilink")[Mac](../Page/Mac.md "wikilink")
[OS皆擁有支援ASIO的驅動程式](../Page/OS.md "wikilink")。ASIO可實現低延遲、高同步、高[吞吐率](../Page/吞吐率.md "wikilink")。其開發目的是為了改善過去OS所搭載的驅動無法進行多通道傳輸，而提出的改善方案。ASIO可依照機器所能處理的情況下進行多通道、[採樣率](../Page/採樣率.md "wikilink")、[位元資料處理](../Page/位元.md "wikilink")。

### 低延遲

Windows自有的[MME驅動程式其延遲時間為](../Page/MME.md "wikilink")200\~500毫秒，[DirectSound為](../Page/DirectSound.md "wikilink")50\~100毫秒，Mac
OS的[Sound
Manager則為](../Page/Sound_Manager.md "wikilink")20\~50毫秒，使用ASIO的情況下，[緩衝器依照設定的不同可至](../Page/緩衝器.md "wikilink")10毫秒以下，也有因環境較佳而到1毫秒以下的情況產生。因此，在錄音作業與音樂製作上，可達到實時處理的效果。

### 多軌、多通道

ASIO可同時處理多通道音頻流，進行多軌傳輸。

## ASIO 2.0

ASIO 1.0的後繼規格。最大的不同點為，支援輸入訊號在合適的音效硬體中直接監聽，達到零延遲的效果。

## ASIO 2.1

由於[SONY的影響](../Page/SONY.md "wikilink")，增加[DSD對應](../Page/DSD.md "wikilink")，除此之外沒有其他的變更。

## 開發

Steinberg提供免費的[SDK](../Page/SDK.md "wikilink")。

## 於音樂播放的應用

於電腦音源，早期AC'97規範（[Intel制訂AC](../Page/Intel.md "wikilink")'97規範規定晶片處理音效時要以48[KHz取樣](../Page/KHz.md "wikilink")）及部分音效卡設計上的缺陷（硬體做即時的取樣頻率轉換，受限於成本，轉換品質差），導致音頻輸出會強制SRC為48kHz。在當時Windows
NT
5.x環境下，也由於使用者想規避[Kmixer](../Page/Kmixer.md "wikilink")（Kmixer本身不會主動取樣頻率轉換，除非在同時播放不同取樣頻率音效的情況下），進而使用PPHS（or
SSRC），而ASIO的使用也是其中一種手段（[Kernel
Streaming亦同](../Page/Kernel_Streaming.md "wikilink")）。但這方法並非能套用在所有環境與硬體上，亦有無法規避的情形存在。

### 音質上的差異？

在[Windows NT
5.x環境下](../Page/Windows_NT_5.x.md "wikilink")，有部分使用者套用ASIO設定之後，得到音質提升的結論。這是因為，ASIO避開Windows
NT 5.x
[Kmixer的音量](../Page/Kmixer.md "wikilink")、音頻控制，所以不會受到原先音量設定的影響，而得到音量0dB的音頻輸出。許多使用者不會特意去調整音效主控台的音量設定，所以當音量0dB化之後，聲音變得更大聲（音量的差異），便往往產生「音質獲得提升」的主觀聽感。事實上在其它的[API](../Page/API.md "wikilink")（[DirectSound](../Page/DirectSound.md "wikilink")、[waveOut](../Page/waveOut.md "wikilink")），只要將主音量、Wave（或設備相關設定）拉桿拉至最高（或音效驅動程式定義的0dB位置），音質與ASIO是完全沒有差別的。

## 關連項目

  - [MME](../Page/MME.md "wikilink")
  - [DirectSound](../Page/DirectSound.md "wikilink")
  - [Sound Manager](../Page/Sound_Manager.md "wikilink")
  - [Core Audio](../Page/Core_Audio.md "wikilink")
  - [VST](../Page/Virtual_Studio_Technology.md "wikilink")

## 外部連結

  - [ASIO SDK](http://www.steinberg.de/329+M52087573ab0.html) -
    Steinberg免費SDK發布申請網頁。

[Category:聲音技術](https://zh.wikipedia.org/wiki/Category:聲音技術 "wikilink")