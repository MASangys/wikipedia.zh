> 本文内容由[Varnish cache](https://zh.wikipedia.org/wiki/Varnish_cache)转换而来。


**Varnish cache**，或稱**Varnish**，是一套高效能的反向[網站](../Page/網站.md "wikilink")[快取](https://zh.wikipedia.org/wiki/快取 "wikilink")[伺服器](https://zh.wikipedia.org/wiki/伺服器 "wikilink")（reverse proxy server）。

Varnish目前被用在[挪威](../Page/挪威.md "wikilink")最大的報社Verdens Gang上。

## 起因

Poul-Henning Kamp認為現在的電腦比起1975年已經複雜許多。在1975年時，儲存媒介只有兩種：[記憶體與](https://zh.wikipedia.org/wiki/記憶體 "wikilink")[硬碟](https://zh.wikipedia.org/wiki/硬碟 "wikilink")。但現在電腦系統的記憶體除了[主記憶體外](https://zh.wikipedia.org/wiki/主記憶體 "wikilink")，還包括了[CPU內的L](https://zh.wikipedia.org/wiki/CPU "wikilink")1、L2，甚至有L3快取。硬碟上也有自己的快取裝置，因此[Squid cache自行處理物件替換的架構不可能得知這些情況而做到](https://zh.wikipedia.org/wiki/Squid_cache "wikilink")[最佳化](https://zh.wikipedia.org/wiki/最佳化 "wikilink")，但[作業系統可以得知這些情況](https://zh.wikipedia.org/wiki/作業系統 "wikilink")，所以這部份的工作應該交給作業系統處理。\[1\]

## 參考資料

<div class="references-small">

<references />

</div>

## 相關條目

  - [代理伺服器](https://zh.wikipedia.org/wiki/代理伺服器 "wikilink")
  - [Squid cache](https://zh.wikipedia.org/wiki/Squid_cache "wikilink")

## 外部連結

  - [Varnish](https://www.varnish-cache.org/)，官方網站。

<!-- end list -->

1.  [Notes from the Architect](http://varnish.projects.linpro.no/wiki/ArchitectNotes) ，[Poul-Henning Kamp](https://zh.wikipedia.org/wiki/Poul-Henning_Kamp "wikilink") 對於Varnish cache設計架構的介紹。