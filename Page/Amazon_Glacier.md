{{ infobox website | name = Amazon Glacier | logo =| logocaption = | type = [在线备份服务](https://zh.wikipedia.org/wiki/在线备份 "wikilink") | language = [英语](../Page/英语.md "wikilink") | current status = 活跃 | url =  | ipv6 = | commercial = 是 | registration = 需要 | owner = [亞馬遜公司](../Page/亞馬遜公司.md "wikilink") | launch date = 2012年8月21日\[1\] }}

**Amazon Glacier**是由[亚马逊公司提供的一个归档与](https://zh.wikipedia.org/wiki/亚马逊公司 "wikilink")[备份](../Page/备份.md "wikilink")数据的[在线存储](../Page/云存储.md "wikilink")[Web服务](../Page/Web服务.md "wikilink")，于2012年8月21日推出。\[2\]

该服务是[亚马逊云计算服务](../Page/亚马逊云计算服务.md "wikilink")的组成部分，设计上用来长期存储不常访问的数据，这些数据应可以接受3到5小时的检索延迟。其存储成本为每月每千兆字节（1GiB）0.004美元，这明显低于亚马逊的[简单存储服务（S3）的价格](../Page/Amazon_S3.md "wikilink")。\[3\]

亚马逊希望企业能依靠这项服务从内部部署的[磁带机](../Page/磁带机.md "wikilink")备份转移到基于[云存储](../Page/云存储.md "wikilink")的备份服务。\[4\]

## 存储设备

据ZDNet报道称，根据私下的电子邮件，Glacier采用廉价的商用硬件运行。\[5\]于2012年引述一名前亚马逊员工称，Glacier服务基于定制的低转速硬盘驱动器，驱动器连接到定制的逻辑板，同一时间下只有一部分机架驱动器可以全速旋转。\[6\]\[7\]（[Facebook](../Page/Facebook.md "wikilink")也使用类似的技术\[8\]）

由于亚马逊将Glacier定位为磁带备份服务（内部部署或基于云服务）的直接竞争对手，一些用户相信Glacier存储的底层硬件基于磁带。\[9\]Glacier的存档检索延迟（档案在3-5小时后可用）类似基于磁带的系统，以及阻止频繁数据检索的定价模型加深了这种印象。\[10\]

《》报道称Glacier在基于磁带的磁带库上运行。\[11\]\[12\]其他报道则猜测亚马逊使用离线的硬盘、多层[藍光光碟](../Page/藍光光碟.md "wikilink")或其他专有的存储技术。\[13\]

数据存储顾问罗宾·哈里斯基于公开信息推测，其存储基于廉价的光碟，如[藍光光碟](../Page/藍光光碟.md "wikilink")。\[14\]

## 定价

Glacier有两项成本，存储与检索。将数据上传到Glacier不收费用。存储定价很简单，目前为每月每千兆字节0.4美分，比S3 Standard便宜82%。

Glacier过去根据每月的峰值检索速率收取检索费用，这意味着如果你用4个小时下载了4 GB数据（忽略免费配额），费用与你在30天的一个月里用720小时下载了720 GB数据相同。

该算法使得用较长的时间来检索数据的成本更低，如果不这样做，可能会产生惊人的高额费用。在一个案例中，用户在Glacier中存储了15 GB的数据，检索了693 MB用于测试，由于该检索率算法，最终被收取126 GB的费用。\[15\]这样的“检索”定价策略被广泛认为是一颗“定时炸弹”。\[16\]

2016年，AWS修订了其检索定价模型。\[17\]新模型的检索费用取决于检索到的千兆字节数。对于一个月只进行一次Glacier检索的用户，这可以降低99%的价格。与此同时，AWS引入了新的不同时间量的检索方法。“加速”检索每个请求需要1美分，每GB需要3美分，可以在一到五分钟内检索数据。“标准”检索每千个请求需要5美分，每GB需要1美分，需要3到5个小时。“批量”检索成本为每千个请求2.5美分，每GB 0.25美分，需要7到12个小时。AWS还引入了加快检索的“预备容量”，每单位每月100美元，并保证每五分钟至少三次加速的检索，检索带宽高达150 MB/s。如果没有预备容量，则在可用容量的基础上进行加速检索。\[18\]

从Glacier中删除少于90天的数据会产生对象实际被存储了90天的费用（事实上，用户最少支付90天的费用）。此举是为防止用该服务替代更适合实时访问场景的其他亚马逊存储产品（如[S3](../Page/Amazon_S3.md "wikilink")）。数据存储90天后，从Glacier中删除不收费。

从Glacier检索数据分为两步。第一步是将数据检索到暂存区域，它将在那里停留24小时。\[19\]第二步是从暂存区域下载数据，这可能产生带宽费用。\[20\]

Glacier也可作为S3中的“存储类”使用。\[21\]对象只能根据生命周期规则放入Glacier，可以配置为对象达到特定时长后被放入Glacier。这样做的定价不变，但不存在暂存区域，改为将检索的对象同时存储在Glacier和Reduced Redundancy类中，持续用户指定的天数。

## 参考资料

## 外部連結

  -
[Category:雲端運算](https://zh.wikipedia.org/wiki/Category:雲端運算 "wikilink") [Category:Amazon_Web_Services](https://zh.wikipedia.org/wiki/Category:Amazon_Web_Services "wikilink")

1.

2.

3.

4.

5.
6.

7.

8.  <https://arstechnica.com/information-technology/2015/11/to-go-green-facebook-puts-petabytes-of-cat-pics-on-ice-and-likes-windfarming/>

9.

10.

11.

12.

13.

14. <https://storagemojo.com/2014/04/25/amazons-glacier-secret-bdxl/>

15.

16. <https://www.wired.com/2012/08/glacier/>

17.

18.

19.

20.

21.