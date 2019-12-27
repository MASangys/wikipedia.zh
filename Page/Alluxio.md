**Alluxio**是一个[开源的虚拟分布式文件系统](https://zh.wikipedia.org/wiki/開源 "wikilink")( Virtual Distributed File System, VDFS)。 Alluxio最初起源于一个叫Tachyon的研究项目，它是[加州大学伯克利分校AMPLab实验室由师从Scott](https://zh.wikipedia.org/wiki/UC_Berkeley "wikilink") Shenker教授和Ion Stoica教授的李浩源博士的博士论文课题\[1\] 。Alluxio位于大数据栈中的计算和存储之间。它为计算框架提供了数据抽象层，使得应用能够通过一个共同的接口连接底层不同的存储系统。这个软件是以[Apache License的开源协议进行发布的](https://zh.wikipedia.org/wiki/Apache_License "wikilink")。

2919年, 首届数据编排峰会\[2\]在位于加州山景城的计算机历史博物馆举办。众多业界巨擘介绍了他们在构架数据编排平台方面的观点和经验。数据分析、机器学习和人工智能等一系列数据驱动型应用能够通过Alluxio提供的API（例如Hadoop HDFS API, S3 API, FUSE API)高速交互访问底层多种存储系统中的数据。另外，Alluxio之上还能够运行多种流行的计算框架，包括[Presto](../Page/Presto.md "wikilink"), [Apache Spark](../Page/Apache_Spark.md "wikilink"),[Apache Hive](https://zh.wikipedia.org/wiki/Apache_Hive "wikilink"), 以及[Tensorflow等](https://zh.wikipedia.org/wiki/Tensorflow "wikilink")。

Alluxio能够部署在私有环境，云环境(例如[Microsoft Azure](../Page/Microsoft_Azure.md "wikilink"), [AWS](https://zh.wikipedia.org/wiki/Amazon_Web_Services "wikilink"), [Google Cloud Platform](../Page/Google雲端平台.md "wikilink"))，或者混合云环境中。它可以直接运行在物理机之上或者类似于[Kubernetes](../Page/Kubernetes.md "wikilink"), [Docker](../Page/Docker.md "wikilink"), [Apache Mesos的容器化环境当中](https://zh.wikipedia.org/wiki/Apache_Mesos "wikilink")。

## 历史

Alluxio最初由李浩源于2013年在加州大学伯克利分校AMP实验室创建并在2014年进行了开源。直至2018年，Alluxio开源项目已经有超过1000名贡献者\[3\]，从这个数据来看Alluxio已经成为了数据生态系统中最为活跃的项目之一。

<table>
<thead>
<tr class="header">
<th><p>版本号</p></th>
<th><p>初始发布日期</p></th>
<th><p>最终版本</p></th>
<th><p>发布日期</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>2013-04-08</p></td>
<td><p>0.2.1</p></td>
<td><p>2013-04-25</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2013-10-21</p></td>
<td><p>0.3.0</p></td>
<td><p>2013-10-21</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2014-02-02</p></td>
<td><p>0.4.1</p></td>
<td><p>2014-02-25</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2014-07-20</p></td>
<td><p>0.5.0</p></td>
<td><p>2014-07-20</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2015-03-01</p></td>
<td><p>0.6.4</p></td>
<td><p>2015-04-23</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2015-07-17</p></td>
<td><p>0.7.1</p></td>
<td><p>2015-08-10</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2015-10-21</p></td>
<td><p>0.8.2</p></td>
<td><p>2015-11-10</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2016-02-23</p></td>
<td><p>1.0.1</p></td>
<td><p>2016-03-27</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2016-06-06</p></td>
<td><p>1.1.1</p></td>
<td><p>2016-07-04</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2016-07-17</p></td>
<td><p>1.2.0</p></td>
<td><p>2016-07-17</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2016-10-05</p></td>
<td><p>1.3.0</p></td>
<td><p>2016-10-05</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2017-01-12</p></td>
<td><p>1.4.0</p></td>
<td><p>2017-01-12</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2017-06-11</p></td>
<td><p>1.5.0</p></td>
<td><p>2017-06-11</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2017-09-24</p></td>
<td><p>1.6.1</p></td>
<td><p>2017-11-02</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2018-01-14</p></td>
<td><p>1.7.1</p></td>
<td><p>2018-03-26</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2018-07-07</p></td>
<td><p>1.8.1</p></td>
<td><p>2018-09-26</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2019-06-27</p></td>
<td><p>2.0.1</p></td>
<td><p>2019-09-03</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2019-11-06</p></td>
<td><p>2.1.0</p></td>
<td><p>2019-11-06</p></td>
</tr>
<tr class="odd">
<td><p><small></small></p></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 使用Alluxio的企业机构

以下是一些使用Alluxio的知名企业的名录列表：

## 参看

  - [集群文件系统](../Page/集群文件系统.md "wikilink")
  - [文件系统列表](../Page/文件系统列表.md "wikilink")

## 参考来源

## 外部链接

  -
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink") [Category:开源软件](https://zh.wikipedia.org/wiki/Category:开源软件 "wikilink")

1.
2.  [Data Orchestration Summit 2019](https://www.alluxio.io/data-orchestration-summit-2019/)
3.  [Open HUB Alluxio development activity](https://www.openhub.net/p/tachyon)