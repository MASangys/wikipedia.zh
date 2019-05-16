**亞馬遜彈性雲端運算**（，简称）
，是由[亞馬遜公司提供的](../Page/亞馬遜公司.md "wikilink")[Web服務](https://zh.wikipedia.org/wiki/Web服務 "wikilink")，是一個讓使用者可以租用[雲端電腦運行所需應用的系統](../Page/雲端運算.md "wikilink")。EC2藉由提供Web服務的方式讓使用者可以彈性地運行自己的Amazon機器映像檔，使用者將可以在這個[虛擬機器上運行任何自己想要的軟體或應用程式](../Page/虛擬機器.md "wikilink")。

使用者可以隨時創建、執行、終止自己的虛擬伺服器，使用多少時間算多少錢，也因此這個系統是“彈性”使用的。EC2讓使用者可以控制執行虛擬伺服器的主機地理位置，這可以改善讓延遲還有備援性例如，為了讓系統維護時間最短，用戶可以在每個時區都運行自己的虛擬伺服器。Amazon.com以[Amazon
Web
Services](https://zh.wikipedia.org/wiki/Amazon_Web_Services "wikilink")
(AWS)的品牌提供EC2的服務。

## 歷史

[AmazonWebServicesPriceReductions.JPG](https://zh.wikipedia.org/wiki/File:AmazonWebServicesPriceReductions.JPG "fig:AmazonWebServicesPriceReductions.JPG")

  - 2006年8月25日，Amazon發佈EC2受限公眾Beta版本\[1\]

<!-- end list -->

  - 2010年12月1日，由於[維基解密泄露美国外交电报事件](../Page/维基解密泄露美国外交电报事件.md "wikilink")，[Amazon.com在美國政府壓力下把](https://zh.wikipedia.org/wiki/Amazon.com "wikilink")[维基解密託管在](../Page/維基解密.md "wikilink")[EC2的資料全部刪除](../Page/Amazon_EC2.md "wikilink")\[2\]。

## 虛擬機器

EC2使用[Xen虛擬化技術](../Page/Xen.md "wikilink")。每個虛擬機器，又稱作「實例」（），能夠運行小、大、極大三種能力的虛擬私有伺服器。Amazon.com利用EC2
Compute Units去分配硬體資源（一個ECU相當與一個[Sandy
Bridge級](https://zh.wikipedia.org/wiki/Sandy_Bridge "wikilink")[Xeon](https://zh.wikipedia.org/wiki/Xeon "wikilink")）。EC2系統提供以下的虛擬機器實例類型

;

| vCPU            | ECU | 記憶體 (GiB) | 執行個體儲存體 (GB) | Linux/UNIX 使用量    |
| --------------- | --- | --------- | ------------ | ----------------- |
| 一般用途 – 最新一代     |     |           |              |                   |
| t2.nano         | 1   | 變數        | 0.5          | 僅 EBS             |
| t2.micro        | 1   | 變數        | 1            | 僅 EBS             |
| t2.small        | 1   | 變數        | 2            | 僅 EBS             |
| t2.medium       | 2   | 變數        | 4            | 僅 EBS             |
| t2.large        | 2   | 變數        | 8            | 僅 EBS             |
| t2.xlarge       | 4   | 變數        | 16           | 僅 EBS             |
| t2.2xlarge      | 8   | 變數        | 32           | 僅 EBS             |
| m4.large        | 2   | 6.5       | 8            | 僅 EBS             |
| m4.xlarge       | 4   | 13        | 16           | 僅 EBS             |
| m4.2xlarge      | 8   | 26        | 32           | 僅 EBS             |
| m4.4xlarge      | 16  | 53.5      | 64           | 僅 EBS             |
| m4.10xlarge     | 40  | 124.5     | 160          | 僅 EBS             |
| m4.16xlarge     | 64  | 188       | 256          | 僅 EBS             |
| 運算優化 – 最新一代     |     |           |              |                   |
| c4.large        | 2   | 8         | 3.75         | 僅 EBS             |
| c4.xlarge       | 4   | 16        | 7.5          | 僅 EBS             |
| c4.2xlarge      | 8   | 31        | 15           | 僅 EBS             |
| c4.4xlarge      | 16  | 62        | 30           | 僅 EBS             |
| c4.8xlarge      | 36  | 132       | 60           | 僅 EBS             |
| GPU 執行個體 – 最新一代 |     |           |              |                   |
| p2.xlarge       | 4   | 12        | 61           | 僅 EBS             |
| p2.8xlarge      | 32  | 94        | 488          | 僅 EBS             |
| p2.16xlarge     | 64  | 188       | 732          | 僅 EBS             |
| p3.2xlarge      | 8   | 23.5      | 61           | 僅 EBS             |
| p3.8xlarge      | 32  | 94        | 244          | 僅 EBS             |
| p3.16xlarge     | 64  | 188       | 488          | 僅 EBS             |
| g3.4xlarge      | 16  | 47        | 122          | 僅 EBS             |
| g3.8xlarge      | 32  | 94        | 244          | 僅 EBS             |
| g3.16xlarge     | 64  | 188       | 488          | 僅 EBS             |
| 記憶體優化 – 最新一代    |     |           |              |                   |
| x1.16xlarge     | 64  | 174.5     | 976          | 1 x 1920 SSD      |
| x1.32xlarge     | 128 | 349       | 1952         | 2 x 1920 SSD      |
| r3.large        | 2   | 6.5       | 15           | 1 x 32 SSD        |
| r3.xlarge       | 4   | 13        | 30.5         | 1 x 80 SSD        |
| r3.2xlarge      | 8   | 26        | 61           | 1 x 160 SSD       |
| r3.4xlarge      | 16  | 52        | 122          | 1 x 320 SSD       |
| r3.8xlarge      | 32  | 104       | 244          | 2 x 320 SSD       |
| r4.large        | 2   | 7         | 15.25        | 僅 EBS             |
| r4.xlarge       | 4   | 13.5      | 30.5         | 僅 EBS             |
| r4.2xlarge      | 8   | 27        | 61           | 僅 EBS             |
| r4.4xlarge      | 16  | 53        | 122          | 僅 EBS             |
| r4.8xlarge      | 32  | 99        | 244          | 僅 EBS             |
| r4.16xlarge     | 64  | 195       | 488          | 僅 EBS             |
| 儲存優化 – 最新一代     |     |           |              |                   |
| i3.large        | 2   | 7         | 15.25        | 1 x 475 NVMe SSD  |
| i3.xlarge       | 4   | 13        | 30.5         | 1 x 950 NVMe SSD  |
| i3.2xlarge      | 8   | 27        | 61           | 1 x 1900 NVMe SSD |
| i3.4xlarge      | 16  | 53        | 122          | 2 x 1900 NVMe SSD |
| i3.8xlarge      | 32  | 99        | 244          | 4 x 1900 NVMe SSD |
| i3.16xlarge     | 64  | 200       | 488          | 8 x 1900 NVMe SSD |
| h1.2xlarge      | 8   | 26        | 32           | 1 x 2000 HDD      |
| h1.4xlarge      | 16  | 53.5      | 64           | 2 x 2000 HDD      |
| h1.8xlarge      | 32  | 99        | 128          | 4 x 2000 HDD      |
| h1.16xlarge     | 64  | 188       | 256          | 8 x 2000 HDD      |
| d2.xlarge       | 4   | 14        | 30.5         | 3 x 2000 HDD      |
| d2.2xlarge      | 8   | 28        | 61           | 6 x 2000 HDD      |
| d2.4xlarge      | 16  | 56        | 122          | 12 x 2000 HDD     |
| d2.8xlarge      | 36  | 116       | 244          | 24 x 2000 HDD     |

\[3\]

;

## 作業系統

支援[Windows以及](https://zh.wikipedia.org/wiki/Windows "wikilink")[\*nix](https://zh.wikipedia.org/wiki/*nix "wikilink"),所有平臺使用微型（免費）實例可免費使用.

## 自動配置

Amazon EC2自動配置容量的功能允許用戶自動調整Amazon
EC2的容量。假如用戶的流量達到尖峰，自動配置功能可以自動增加更多的容量至虛擬主機上以維持效能。

## 参考文献

{{-}}

[Category:雲端運算](https://zh.wikipedia.org/wiki/Category:雲端運算 "wikilink")
[Category:Amazon_Web_Services](https://zh.wikipedia.org/wiki/Category:Amazon_Web_Services "wikilink")
[Category:雲端平台](https://zh.wikipedia.org/wiki/Category:雲端平台 "wikilink")

1.
2.  [AMAZON SEVERS TIES WITH
    WIKILEAKS](http://lieberman.senate.gov/index.cfm/news-events/news/2010/12/amazon-severs-ties-with-wikileaks)

3.