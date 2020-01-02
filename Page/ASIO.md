> 本文内容由[ASIO](https://zh.wikipedia.org/wiki/ASIO)转换而来。


**ASIO**（Audio stream input output），[音頻設備驅動程序的一種](https://zh.wikipedia.org/wiki/音頻設備 "wikilink")。

## 概要

ASIO是由[德國](https://zh.wikipedia.org/wiki/德國 "wikilink")[Steinberg公司所提出的音頻流輸入輸出應用程序](https://zh.wikipedia.org/wiki/Steinberg "wikilink")，為[音頻](https://zh.wikipedia.org/wiki/音頻 "wikilink")[API標準之一](https://zh.wikipedia.org/wiki/Application_Programming_Interface "wikilink")。現今販售的高級[音效卡多具備此一規格](https://zh.wikipedia.org/wiki/音效卡 "wikilink")，亦有支援[Windows和](https://zh.wikipedia.org/wiki/Windows "wikilink")[Mac OS的驅動](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")，已成為業界大多採用的標準。與[Mac OS X的](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[Core Audio是同等級的技術](https://zh.wikipedia.org/wiki/Core_Audio "wikilink")。另外[Linux](../Page/Linux.md "wikilink")方面，也具備低延遲內核。

[Windows和](https://zh.wikipedia.org/wiki/Windows "wikilink")[Mac](https://zh.wikipedia.org/wiki/Mac "wikilink") [OS皆擁有支援ASIO的驅動程式](https://zh.wikipedia.org/wiki/OS "wikilink")。ASIO可實現低延遲、高同步、高[吞吐率](https://zh.wikipedia.org/wiki/吞吐率 "wikilink")。其開發目的是為了改善過去OS所搭載的驅動無法進行多通道傳輸，而提出的改善方案。ASIO可依照機器所能處理的情況下進行多通道、[採樣率](https://zh.wikipedia.org/wiki/採樣率 "wikilink")、[位元](../Page/位元.md "wikilink")資料處理。

### 低延遲

Windows自有的[MME驅動程式其延遲時間為](https://zh.wikipedia.org/wiki/MME "wikilink")200\~500毫秒，[DirectSound](../Page/DirectSound.md "wikilink")為50\~100毫秒，Mac OS的[Sound Manager則為](https://zh.wikipedia.org/wiki/Sound_Manager "wikilink")20\~50毫秒，使用ASIO的情況下，[緩衝器依照設定的不同可至](https://zh.wikipedia.org/wiki/緩衝器 "wikilink")10毫秒以下，也有因環境較佳而到1毫秒以下的情況產生。因此，在錄音作業與音樂製作上，可達到實時處理的效果。

### 多軌、多通道

ASIO可同時處理多通道音頻流，進行多軌傳輸。

## ASIO 2.0

ASIO 1.0的後繼規格。最大的不同點為，支援輸入訊號在合適的音效硬體中直接監聽，達到零延遲的效果。

## ASIO 2.1

由於[SONY的影響](https://zh.wikipedia.org/wiki/SONY "wikilink")，增加[DSD對應](https://zh.wikipedia.org/wiki/DSD "wikilink")，除此之外沒有其他的變更。

## 開發

Steinberg提供免費的[SDK](https://zh.wikipedia.org/wiki/SDK "wikilink")，包含用於開發宿主和驅動程序的原始碼。但根據其授權許可協議的限制，用戶不能對原始碼進行二次分發。

## 於音樂播放的應用

於電腦音源，早期AC'97規範（[Intel制訂AC](https://zh.wikipedia.org/wiki/Intel "wikilink")'97規範規定晶片處理音效時要以48[KHz取樣](https://zh.wikipedia.org/wiki/KHz "wikilink")）及部分音效卡設計上的缺陷（硬體做即時的取樣頻率轉換，受限於成本，轉換品質差），導致音頻輸出會強制SRC為48kHz。在當時Windows NT 5.x環境下，也由於使用者想規避[Kmixer](https://zh.wikipedia.org/wiki/Kmixer "wikilink")（Kmixer本身不會主動取樣頻率轉換，除非在同時播放不同取樣頻率音效的情況下），進而使用PPHS（or SSRC），而ASIO的使用也是其中一種手段（[Kernel Streaming亦同](https://zh.wikipedia.org/wiki/Kernel_Streaming "wikilink")）。但這方法並非能套用在所有環境與硬體上，亦有無法規避的情形存在。

### 音質上的差異？

在[Windows NT 5.x環境下](https://zh.wikipedia.org/wiki/Windows_NT_5.x "wikilink")，有部分使用者套用ASIO設定之後，得到音質提升的結論。這是因為，ASIO避開Windows NT 5.x [Kmixer的音量](https://zh.wikipedia.org/wiki/Kmixer "wikilink")、音頻控制，所以不會受到原先音量設定的影響，而得到音量0dB的音頻輸出。許多使用者不會特意去調整音效主控台的音量設定，所以當音量0dB化之後，聲音變得更大聲（音量的差異），便往往產生「音質獲得提升」的主觀聽感。事實上在其它的[API](https://zh.wikipedia.org/wiki/API "wikilink")（[DirectSound](../Page/DirectSound.md "wikilink")、[waveOut](https://zh.wikipedia.org/wiki/waveOut "wikilink")），只要將主音量、Wave（或設備相關設定）拉桿拉至最高（或音效驅動程式定義的0dB位置），音質與ASIO是完全沒有差別的。

## 關連項目

  - [MME](https://zh.wikipedia.org/wiki/MME "wikilink")
  - [DirectSound](../Page/DirectSound.md "wikilink")
  - [Sound Manager](https://zh.wikipedia.org/wiki/Sound_Manager "wikilink")
  - [Core Audio](https://zh.wikipedia.org/wiki/Core_Audio "wikilink")
  - [VST](https://zh.wikipedia.org/wiki/Virtual_Studio_Technology "wikilink")

## 外部連結

  - [Steinberg Developers](https://www.steinberg.net/en/company/developers.html) - Steinberg免費SDK發布網頁，可直接下載到ASIO、VST等SDK的原始碼與授權協議。
  - [ASIO SDK](https://www.steinberg.net/asiosdk) - Steinberg ASIO SDK直接下載鏈接。

[Category:聲音技術](https://zh.wikipedia.org/wiki/Category:聲音技術 "wikilink")