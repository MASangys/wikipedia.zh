**InfluxDB**是一个由[InfluxData](https://www.influxdata.com/)开发的[开源](https://zh.wikipedia.org/wiki/开源 "wikilink")[时序型数据库](https://zh.wikipedia.org/wiki/时序型数据库 "wikilink")\[1\]。它由[Go写成](../Page/Go.md "wikilink")，着力于高性能地查询与存储时序型数据。InfluxDB被广泛应用于存储系统的监控数据，[IoT行业的实时数据等场景](../Page/物联网.md "wikilink")。

## 历史

Errplane公司\[2\]在2013年下半年开始以开源项目的形式开始了InfluxDB的开发。其目的是为了提供一个高性能的监控以及告警的解决方案。在2014年11月，Errplane获得了由与[Trinity
Ventures领投的](https://zh.wikipedia.org/wiki/Trinity_Ventures "wikilink")投资，金额高达810万美元\[3\]。在次年的2015年，Errplane正式更名为**InfluxData
Inc.**，而更名后的InfluxData又分别于2016年9月，2018年2月获得了金额高达1600万美元和3500万美元的，C轮投资。\[4\]

## 技术概览

  - InfluxDB在技术实现上充分利用了[Go语言的特性](../Page/Go.md "wikilink")，无需任何外部依赖即可独立部署\[5\]。
  - InfluxDB提供了一个类似于[SQL的查询语言并且一系列内置函数方便用户进行数据查询](../Page/SQL.md "wikilink")。
  - InfluxDB存储的数据从逻辑上由 **Measurement**, **tag组**以及
    **field组**以及一个**时间戳**组成的：
      - Measurement：
        由一个字符串表示该条记录对应的含义。比如它可以是监控数据"cpu_load"，也可以是测量数据"average_temperature"
      - tag组：
        由一组组成，表示的是该条记录的一系列属性信息。同样的measurement数据所拥有的tag组不一定相同，它是无模式的(Schema-free)。tag信息是默认被索引的。
      - field组：也是由一组组成，表示的是该条记录具体的value信息(有名称)。field组中可定义的value类型包括：64位整型，64位浮点型，字符串以及[布尔型](https://zh.wikipedia.org/wiki/布尔型 "wikilink")。Field信息是无法被索引的。
      - 时间戳：就是该条记录的时间属性。如果插入数据时没有明确指定时间戳，则默认存储在数据库中的时间戳则为该条记录的入库时间。
  - InfluxDB支持基于HTTP的数据插入与查询。同时也接受直接基于TCP或UDP协议的连接.比如下面的示例就显示了一个基于HTTP协议的[POST请求的数据插入操作](https://zh.wikipedia.org/wiki/POST "wikilink")：

<!-- end list -->

``` shell
$curl -i -XPOST 'http://localhost:8086/write?db=mydb' --data-binary 'cpu_load_short,host=server01,region=us-west value=0.64 1434055562000000000'
```

  - InfluxDB允许用户定义数据保存策略(Retention
    Policies)来实现对存储超过指定时间的数据进行删除\[6\]或者[降采样](../Page/降采样.md "wikilink")。

## 闭源的集群组件

在向InfluxDB开源社区贡献了一个名为**InfluxDB-Relay**\[7\]的[高可用套件后](../Page/高可用性.md "wikilink")。2016年3月，InfluxData宣布他们会将用于支撑InfluxDB集群[水平扩展的组件作为闭源产品单独销售](https://zh.wikipedia.org/wiki/水平扩展 "wikilink")，从而为InfluxDB的持续开发建立一个稳定的收入来源\[8\]。

## 附注

<references group="note" />

## 参考资料

[Category:数据库](https://zh.wikipedia.org/wiki/Category:数据库 "wikilink")
[Category:開源資料庫管理系統](https://zh.wikipedia.org/wiki/Category:開源資料庫管理系統 "wikilink")

1.  InfluxDB的代码托管于[Github](https://zh.wikipedia.org/wiki/Github "wikilink")。请参见：
    <https://github.com/influxdata/influxdb>
2.
3.
4.
5.
6.  作为时序型数据库，InfluxDB不提供用户直接删除或更新数据的途径
7.  Influx-relay的代码也托管于[Github](https://zh.wikipedia.org/wiki/Github "wikilink").
    请参见：https://github.com/influxdata/influxdb-relay
8.