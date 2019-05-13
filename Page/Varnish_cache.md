**Varnish
cache**，或稱**Varnish**，是一套高效能的反向[網站](../Page/網站.md "wikilink")[快取](../Page/快取.md "wikilink")[伺服器](../Page/伺服器.md "wikilink")（reverse
proxy server）。

Varnish目前被用在[挪威最大的報社Verdens](../Page/挪威.md "wikilink") Gang上。

## 起因

Poul-Henning
Kamp認為現在的電腦比起1975年已經複雜許多。在1975年時，儲存媒介只有兩種：[記憶體與](../Page/記憶體.md "wikilink")[硬碟](../Page/硬碟.md "wikilink")。但現在電腦系統的記憶體除了[主記憶體外](../Page/主記憶體.md "wikilink")，還包括了[CPU內的L](../Page/CPU.md "wikilink")1、L2，甚至有L3快取。硬碟上也有自己的快取裝置，因此[Squid
cache自行處理物件替換的架構不可能得知這些情況而做到](../Page/Squid_cache.md "wikilink")[最佳化](../Page/最佳化.md "wikilink")，但[作業系統可以得知這些情況](../Page/作業系統.md "wikilink")，所以這部份的工作應該交給作業系統處理。\[1\]

## 參考資料

<div class="references-small">

<references />

</div>

## 相關條目

  - [代理伺服器](../Page/代理伺服器.md "wikilink")
  - [Squid cache](../Page/Squid_cache.md "wikilink")

## 外部連結

  - [Varnish](https://www.varnish-cache.org/)，官方網站。

<!-- end list -->

1.  [Notes from the
    Architect](http://varnish.projects.linpro.no/wiki/ArchitectNotes)
    ，[Poul-Henning Kamp](../Page/Poul-Henning_Kamp.md "wikilink")
    對於Varnish cache設計架構的介紹。