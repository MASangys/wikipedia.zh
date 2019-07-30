**SAP HANA**（全称SAP **H**igh-performance **AN**alytic **A**ppliance)是由[SAP开发的一款内置](../Page/SAP公司.md "wikilink")[列式数据库](../Page/列式数据库.md "wikilink")的系统平台。狭义上SAP HANA指的是其内置的[数据库管理系统](../Page/数据库管理系统.md "wikilink")，其主要功能是存储和检索数据。广义上，SAP HANA指的是HANA数据库系统及周边的各种功能组成的平台。SAP HANA除内置数据库以外，还具有高级分析（例如预测分析，[空间数据处理](https://zh.wikipedia.org/wiki/空间数据处理 "wikilink")，[文本分析](https://zh.wikipedia.org/wiki/文本分析 "wikilink")，文本搜索，流分析，图形数据处理）功能\[1\]，[ETL功能](https://zh.wikipedia.org/wiki/ETL "wikilink")，并内置了[应用程序服务器](https://zh.wikipedia.org/wiki/应用程序服务器 "wikilink")。

## 概要

SAP HANA向内存中加载大量系统数据，实现数据的高速读写。同时，每隔一段时间向硬盘写入当前内存中数据的快照，保证数据不会丢失。 由于可以从内存中直接访问所需的系统数据，HANA便可以实现传统ERP系统无法实现的一些功能，比如实时报表分析，短时间内多次执行[物料需求计划等](https://zh.wikipedia.org/wiki/MRP "wikilink")。

SAP HANA具有以下版本

  - Public Cloud Edition
  - Private Cloud Edition
      - On-primes Edition
      - Managed Service Edition

## 特征

  - 内存数据库系统

<!-- end list -->

  -
    SAP HANA可以把系统所有的数据都载入内存中。因此，与传统的将数据存储在硬盘上的数据库相比，HANA的性能可以提升10\~10，000倍。\[2\]

<!-- end list -->

  - 列式存储

<!-- end list -->

  -
    HANA使用了列式存储，可以提高内存的使用率和数据的检索效率。

<!-- end list -->

  - 自动压缩数据
  - 并行处理

<!-- end list -->

  -
    SAP HANA专门针对并行处理做了优化。

<!-- end list -->

  - 对应非结构化数据
  - 搭载数据仓库引擎
  - 应用程序平台
  - 可对接大数据工具

<!-- end list -->

  -
    HANA可以对接大数据处理工具（例如[Hadoop和](https://zh.wikipedia.org/wiki/Hadoop "wikilink")[R语言](../Page/R语言.md "wikilink")）。

## 参考文献

[Category:数据库管理系统](https://zh.wikipedia.org/wiki/Category:数据库管理系统 "wikilink") [Category:列式数据库](https://zh.wikipedia.org/wiki/Category:列式数据库 "wikilink") [Category:SAP公司产品](https://zh.wikipedia.org/wiki/Category:SAP公司产品 "wikilink")

1.
2.