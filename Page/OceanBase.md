**OceanBase**(OB)是阿里巴巴集團研發的[資料庫軟體](https://zh.wikipedia.org/wiki/資料庫 "wikilink")，用於[淘寶網和諸多阿里集團的雲端服務](https://zh.wikipedia.org/wiki/淘寶網 "wikilink")、部分政府機構、銀行，擅長於海量資料處理，目前速度為全球排名第一。

2019年10月在視為資料庫界的國際聖杯TPC-C测试中，OceanBase以每分鐘存取6000多萬筆資訊的速度，擊敗蟬聯九年冠軍的美國[甲骨文資料庫](../Page/甲骨文公司.md "wikilink")(Oracle )拿下冠軍，且擊敗幅度是超越甲骨文的3000多萬筆效能近一倍。\[1\]

## 概述

淘寶網早期與眾多公司一樣採用甲骨文資料庫，但公司發展迅速每日交易量也逐漸邁向天量，甲骨文的授權費和增設費極貴，[馬雲決定研發自主資料庫](https://zh.wikipedia.org/wiki/馬雲 "wikilink")。2009年淘宝宣布要放弃甲骨文，转投自研的数据库架构，遭到公司內外諸多質疑。但公司認為如果现在不刮骨疗毒那將來全公司命運就操在別人手裡。\[2\]

研發至2016年“双11”前夕，OB全面取代了Oracle。在双11凌晨平稳支撑住12万笔/秒支付峰值，證明其實用性達成。2017年起OceanBase数据库开始对外銷售银行、保险等金融机构。OceanBase另一特性是幾乎不必採用專用[硬體](https://zh.wikipedia.org/wiki/硬體 "wikilink")，很多公司高性能資料庫還須使用訂製的專用硬體([伺服器](https://zh.wikipedia.org/wiki/伺服器 "wikilink")、高端存储器等)這些硬體產量少所以天然維修昂貴且價格由單一廠商掌控，而OB可以用一般量產市場價的PC服務器為主，硬體成本低廉甚至可以併入企業其他項目閒置淘汰的電腦。測試規則中TPC-C 综合计算软硬件价格以及三年服务价格，软硬价格除数据库和存储器还包括针对 TPC-C考試开发应用軟體的成本，甚至连测试使用的台式机成本也需要计算在内，但这是用于业界再现性評估確保參賽者沒使用非常難以獲得的獨特硬體而不作為比賽項，若是有[成本](../Page/成本.md "wikilink")優勢這一比賽項則OB優勢更大。\[3\]

有人質疑OceanBase採用2019年的硬體設備而上一次Oracle受測是在2013年是否得益於硬體進步，OB主架構設計師杨传辉則表示，\[4\]資料庫領域的競爭技術難點在於分布式運算的工序分配問題演算法，TPC-C基准测试无法简单地通过增加[CPU来提升性能否則這比賽就不會難度如此高](https://zh.wikipedia.org/wiki/CPU "wikilink")、榜單更新如此慢。因TPC-C考察分布式事务，数据库软件如寫得不好，无论怎增加CPU也无法提升TPC-C分數。Oracle和[IBM](../Page/IBM.md "wikilink")等美商領先的秘訣在於能將幾十台服務器調用分配其餘小廠商的單機式運算軟件沒有上榜可能，所以基本不參賽 \[5\]而OB实现廣域OLTP分布式数据库技术是拿下冠軍的關鍵。另一方面資料庫這種基础软件重大创新时间周期是很长的，一般需10年以上积累，所以很多[銀行](../Page/銀行.md "wikilink")現在還用20年前的資料庫，這一行業發展步調是軟體界最慢的因為其難度高，Oracle若認為自身技術與上一次2013年受測時又有重大進展則它自然會參賽更新紀錄，但它直到目前終究沒有。

## 歷史

  - 2010 年：總師阳振坤加入阿里巴巴OceanBase 立项\[6\]
  - 2011 年：OceanBase 0.1 版发布，用于淘宝收藏夹
  - 2014 年：OceanBase 0.5 版发布，替代 Oracle 在支付宝交易系统上线，负担双十一10% 流量
  - 2015 年：网商银行成立，OceanBase 成为全球首个应用在金融核心业务系统的分布式关系数据库
  - 2016 年：OceanBase 1.0 版本在支付宝账务系统上线，支撑 12万笔/秒支付峰值
  - 2017 年：支付宝首次把账务库在内所有核心数据搬到 OceanBase 上，创造4200 万次 / 秒数据库处理峰值纪录。同年OceanBase 1.x 版本在多家商业银行上线
  - 2018 年：OceanBase 2.0 版本正式发布，重點降低[金融](../Page/金融.md "wikilink")行業轉換資料庫的難度
  - 2019 年：OceanBase 获得 TPC-C 榜首

## 參看

  - [阿里達摩院](../Page/阿里達摩院.md "wikilink")
  - [阿里雲](../Page/阿里雲.md "wikilink")

## 参考文献

[分類:阿里巴巴集團](https://zh.wikipedia.org/wiki/分類:阿里巴巴集團 "wikilink")

[Category:数据库管理系统](https://zh.wikipedia.org/wiki/Category:数据库管理系统 "wikilink")

1.  [OceanBase登頂之路](https://tech.antfin.com/community/articles/602)
2.  [觀察者-OceanBase的故事](https://user.guancha.cn/main/content?id=181817&s=fwzwyzzwzbt)
3.  [刷新尘封九年记录 阿里数据库真的超过Oracle了么？](https://news.mydrivers.com/1/651/651075.htm)
4.
5.  [《OceanBase TPC-C测试技术解析》PDF](https://www.yuque.com/pockry/dvkxsk/dtk0ig?language=en-us)
6.