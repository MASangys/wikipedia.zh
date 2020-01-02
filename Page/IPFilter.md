> 本文内容由[IPFilter](https://zh.wikipedia.org/wiki/IPFilter)转换而来。


****（通用簡稱：）是一个[开源的软件项目](../Page/开源软件.md "wikilink")，可以为[类Unix操作系统提供](https://zh.wikipedia.org/wiki/类Unix "wikilink")[防火墙](../Page/防火墙.md "wikilink")和[网络地址转换](../Page/网络地址转换.md "wikilink")（）服务。

## 目的

一、阻擋不安全的[IP](../Page/IP地址.md "wikilink")。二、標記安全的IP。三、標記可疑的IP。檔案名稱通常為**/etc/ipf.rules**，是一個[純文字檔案](https://zh.wikipedia.org/wiki/純文字檔案 "wikilink")，但內容僅可使用[英文](https://zh.wikipedia.org/wiki/英文 "wikilink")、[阿拉伯數字](https://zh.wikipedia.org/wiki/阿拉伯數字 "wikilink")、[半形](https://zh.wikipedia.org/wiki/半形 "wikilink")[標點符號](https://zh.wikipedia.org/wiki/標點符號 "wikilink")，主要用於Unix類作業系統，例如Solaris、NetBSD、FreeBSD。

## 格式

IPFilter由\[block/pass\]，\[out/in\]，\[log/quick on網路介面\]，\[proto tcp/udp...\]，\[from來源IP to目的IP\]等多個項目依序構成，分別以空格為分界。

  - **IP**僅可使用阿拉伯數字，以32位地址表示區段或單一主機，零不可被省略。
  - **防護值**僅可使用阿拉伯數字，範圍由000到255，通常數字小表示封鎖，數字大表示開放，細節可以在防火牆軟體內設定。
  - **註記**可使用英文、阿拉伯數字、半形標點符號，用於註明該IP的詳細內容。

### 範例

    block in quick on em0 from 10.0.0.4/24 to any

（阻擋來源為10.0.0.4的進入封包）

    pass out all

（出去封包皆不阻擋）

## 參見

  - [網路地址轉換](https://zh.wikipedia.org/wiki/網路地址轉換 "wikilink")
  - [路由](../Page/路由.md "wikilink")
  - [IPv4](../Page/IPv4.md "wikilink")

## 外部链接

  - [IPfilter官方網站](http://coombs.anu.edu.au/~avalon/)

[Category:網路地址轉換](https://zh.wikipedia.org/wiki/Category:網路地址轉換 "wikilink") [Category:網路安全](https://zh.wikipedia.org/wiki/Category:網路安全 "wikilink") [Category:路由](https://zh.wikipedia.org/wiki/Category:路由 "wikilink")