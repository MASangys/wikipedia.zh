> 本文内容由[Kad網路](https://zh.wikipedia.org/wiki/Kad網路)转换而来。


**Kad網路**（）是一個利用[Kademlia](../Page/Kademlia.md "wikilink")點對點重疊協定的[點對點網路](https://zh.wikipedia.org/wiki/點對點 "wikilink")。大多數Kad Network上的用戶，均會連接到[eDonkey网络伺服器](https://zh.wikipedia.org/wiki/eDonkey网络 "wikilink")。而Kad Network客戶端，一般會查詢eDonkey Network上已知的節點，來取得Kad Network的初始節點。

Kad Network利用[UDP](https://zh.wikipedia.org/wiki/用戶數據報協議 "wikilink")

  - 尋找[ed2k散列來源](https://zh.wikipedia.org/wiki/ed2k "wikilink")
  - 使用檔案名稱的關鍵字，來搜尋ed2k散列
  - 尋找檔案的註解與評分（散列）
  - 為防火牆內的節點（低ID）提供夥伴服務（buddy service）
  - 貯存位置、註解與（來自關鍵字的）檔名

注意Kad並不會實際用來在點對點網路中傳送檔案，而是在檔案開始傳送時，使用者之間彼此直接連線（透過標準IP網路）。

## 客戶端

目前支援Kad的客戶端程式如下。不過，這些客戶端程式的ed2k使用者佔所有使用者的80%，程式安裝數量接近ed2k總安裝量的95%（[eDonkey Network](https://zh.wikipedia.org/wiki/eDonkey_Network "wikilink")）：

  - [eMule](https://zh.wikipedia.org/wiki/eMule "wikilink")：一個最流行的[開放原始碼](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[Windows客戶端](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，亦可透過[Wine](../Page/Wine.md "wikilink")在Linux下運行，佔網路用戶的80%。eMule同時擁有許多修改版。
  - [aMule](https://zh.wikipedia.org/wiki/aMule "wikilink")：一個衍生自[lMule與](https://zh.wikipedia.org/wiki/lMule "wikilink")[xMule的](https://zh.wikipedia.org/wiki/xMule "wikilink")[跨平台版本](https://zh.wikipedia.org/wiki/跨平台 "wikilink")，集中於[Unix平台](https://zh.wikipedia.org/wiki/Unix "wikilink")。
  - [MLDonkey](../Page/MLDonkey.md "wikilink")：一個可在多個平台運行及支援無數檔案分享協定的[免費客戶端軟體](../Page/免費軟體.md "wikilink")。
  - kMule：由[WiZaRd与](https://zh.wikipedia.org/wiki/WiZaRd "wikilink")[Tuxman合作开发的首个舍弃eD](https://zh.wikipedia.org/wiki/Tuxman "wikilink")2k、完全基于Kad的[eMule](https://zh.wikipedia.org/wiki/eMule "wikilink") v0.50a mod。kMule的口号是“The First Kad Only Mule”，其特性为放弃了传统的基于服务器的[eD2k网络而仅使用无中心的](../Page/EDonkey网络.md "wikilink")[Kad网络](../Page/Kademlia.md "wikilink")。

## 节点

KAD网络中每一个客户端都是一个节点，组成了KAD网络

节点减少：[eMule使用过程中节点有时会减少](https://zh.wikipedia.org/wiki/eMule "wikilink")，这是KAD网络自我优化造成的。

节点文件：通过快速连接一些KAD节点，使客户端更快速的连接KAD网络

## 断头档

原理：断头档文件是一个不完整的下载文件，无法下载完成，但在下载过程中，KAD会不断检测拥有这个档案的客户端，将它们加入到本地客户端的KAD网络，从而达到连接更多相同需求用户的效果，如音乐类断头档会将连接此类断头档用户。

但一部分用户认为断头档会消耗更多资源，而且节点文件的效果也较好。

## 請參閱

  - [分散式雜湊表](../Page/分散式雜湊表.md "wikilink")
  - [ED2k网络](https://zh.wikipedia.org/wiki/ED2k网络 "wikilink")

[Category:檔案分享網絡](https://zh.wikipedia.org/wiki/Category:檔案分享網絡 "wikilink")