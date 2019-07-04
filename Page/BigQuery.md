**BigQuery**是一个[RESTful的](../Page/表现层状态转换.md "wikilink")[Web服务](../Page/Web服务.md "wikilink")
，可以对与[Google
Storage结合使用的大型数据集进行交互式分析](https://zh.wikipedia.org/wiki/Google_Storage "wikilink")。它是一种无服务器的平台即服务（
[PaaS](../Page/平台即服务.md "wikilink")
），且可与[MapReduce相互补充使用](../Page/MapReduce.md "wikilink")。

## 历史

谷歌在2010年进行了有限度测试之后，于2011年11月在Google Atmosphere会议上宣布BigQuery全面可用。\[1\]

2016年4月，此服务的欧洲用户经历了12小时的中断。\[2\]2016年5月，谷歌宣布了对[Google表单的支持](https://zh.wikipedia.org/wiki/Google表单 "wikilink")。\[3\]

## 设计

BigQuery提供对[Dremel技术的外部访问](https://zh.wikipedia.org/wiki/Dremel "wikilink")\[4\]\[5\]，是一个可扩展的交互式[即席查询系统](https://zh.wikipedia.org/wiki/即席查询 "wikilink")，用于分析只读嵌套数据。BigQuery要求对所有请求进行身份验证，其支持许多Google专有的验证机制以及[OAuth](../Page/开放授权.md "wikilink")。

## 特征

  - **管理数据** - 基于[JSON编码模式创建和删除表](../Page/JSON.md "wikilink")，从Google
    Storage导入编码为[CSV或JSON的数据](https://zh.wikipedia.org/wiki/CSV "wikilink")。
  - **查询** - 以标准SQL方言查询\[6\]，以JSON格式返回结果，最大答复长度约为128
    MB，启用大型查询结果时无大小限制。\[7\]
  - **集成** - 可以从Google Apps
    Script\[8\]使用BigQuery（例如，作为[Google文档中的绑定脚本](https://zh.wikipedia.org/wiki/Google文档 "wikilink")），也可以从使用其REST
    API或客户端库的任何语言使用BigQuery\[9\] 。
  - **访问控制** - 可以与任意个人，团体或世界共享数据集。

## 参考

<references group="" responsive="">

</references>

## 外部链接

  - [官方网站](https://cloud.google.com/bigquery/what-is-bigquery)

[Category:2010年软件](https://zh.wikipedia.org/wiki/Category:2010年软件 "wikilink")
[Category:Google](https://zh.wikipedia.org/wiki/Category:Google "wikilink")
[Category:Web服务](https://zh.wikipedia.org/wiki/Category:Web服务 "wikilink")
[Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.