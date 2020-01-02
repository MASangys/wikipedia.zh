> 本文内容由[EMule模糊協定](https://zh.wikipedia.org/wiki/EMule模糊協定)转换而来。


**模糊協定**（，又稱**迷惑協定**、**協定迷惑**、**協定加密**、**迷惑协议**）是[eMule在](https://zh.wikipedia.org/wiki/eMule "wikilink")0.47b之後的版本正式加入的一項功能，這個功能主要是針對[ISP的流量限制做出反擊](https://zh.wikipedia.org/wiki/ISP "wikilink")。

## 簡介

在網路上傳輸的封包，大致上可以很簡單的分為兩個部份：標頭與資料。在標頭的部份都含有特定的識別資訊，因此只要透過特定的觀察器，去擷取在網路上傳播的封包，就可以知道「誰」正在用何種「通訊協定」在傳輸訊息。而eMule所使用的eD2k通訊協定，在每個封包的標頭的部份，自然也包含著特定的識別資訊。最近幾年，各國的ISP業者因為感受到P2P流量對自身網路所帶來的衝擊，因此紛紛開始研究去限制P2P的流量。而eMule所使用的eD2k通訊協定，自然是主要的目標之一，因為同時在使用eMule的人可能有數百萬到數千萬人以上。

為了對ISP的流量限制做出反制，eMule的開發團隊，開發出「模糊協定」這項功能。開啟這個功能，eMule傳輸的封包標頭看起來就會變成一群亂數而無意義的資料，因為缺乏固定的特徵，所以沒有辦法被簡單的識別出來，如此一來ISP的流量限制也就變得毫無效果。

## 注意事項

「模糊協定」經常在某些地方會被誤解：

  - 模糊協定無法增加隱匿性，因為這個功能不會加密封包，它只是利用某種演算法讓封包標頭的資訊變成一串看似無意義的亂數。
  - 因為封包沒有加密，對那些告密者而言，他們還是能知道「誰」正在傳輸「特定的資料」。

目前模糊協定已經在eD2k TCP與UDP、伺服器的TCP與UDP、[Kad的TCP上實做](https://zh.wikipedia.org/wiki/Kad "wikilink")，至於Kad的UDP則尚未實做。

開啟這項功能會使CPU的佔用率稍微提高，並且在傳輸資料時，會需要多傳數Bytes的資料，然而這並不是什麼大問題。

## L7-filter與IPP2P

L7-filter是針對[OSI模型](../Page/OSI模型.md "wikilink")的第七層－應用層所設計，是Linux防火牆[Netfilter](../Page/Netfilter.md "wikilink")的分類器。它可以對每個封包所使用的通訊協定做出分類，進而讓Netfilter對特定的通訊協定進行阻擋或者是頻寬控管。目前針對eD2k的比對檔只測試到eMule 0.47a的版本，之後的版本因為模糊協定的關係，應該無法對經過模糊化的eD2k封包做出有效的比對。

IPP2P則是Netfilter的模組，專門針對P2P通訊協定來設計。在IPP2P的網站並沒有任何關於成功辨識模糊協定的消息，因此可以認定IPP2P無法對經過模糊化的eD2k封包做出有效的比對。

## 參考資料

  - eMule網站關於模糊協定的說明與設定方式（[英文版](http://www.emule-project.net/home/perl/help.cgi?l=1&rm=show_topic&topic_id=848)）
  - [L7-filter](http://l7-filter.sourceforge.net/)
  - [IPP2P](http://ipp2p.org/)

[Category:传输层协议](https://zh.wikipedia.org/wiki/Category:传输层协议 "wikilink") [Category:EMule](https://zh.wikipedia.org/wiki/Category:EMule "wikilink")