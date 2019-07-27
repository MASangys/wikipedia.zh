**Boyce-Codd范式**（，缩写），是[数据库规范化](../Page/数据库规范化.md "wikilink")的一种[正规形式](https://zh.wikipedia.org/wiki/数据库规范化#范式 "wikilink")。是在[第三范式的基础上加上稍微更严格约束](https://zh.wikipedia.org/wiki/第三范式 "wikilink")，每个BCNF关系都满足[第三范式](https://zh.wikipedia.org/wiki/第三范式 "wikilink")。BCNF去除了属性间的不必要的函数依赖。

BCNF的定义是：

  -
    如果对于[关系模式R中存在的任意一个非平凡函数依赖X](https://zh.wikipedia.org/wiki/关系模式 "wikilink")-\>A，都满足X是R的一个[超键](https://zh.wikipedia.org/wiki/超键 "wikilink")，那么关系模式R就属于BCNF。

对上述定义，可以理解为：平凡函数依赖关系是指，如果属性集合X包含了属性集合A，那么就一定有X-\>A；超键是指能够唯一确定表中各行的属性集合，因此一个超键的最小化就是一个[候選鍵](https://zh.wikipedia.org/wiki/候选键 "wikilink")；BCNF是说，如果一个属性集合X能“不平凡”地推导出另一个属性集合A，而且X还不能唯一区分表的各行，那么这个表中一定包含了一些冗余信息。

BCNF与[第三范式的不同之处在于](https://zh.wikipedia.org/wiki/第三范式 "wikilink")：第三范式中不允许[非主属性被另一个非主属性决定](https://zh.wikipedia.org/wiki/非主属性 "wikilink")，但第三范式允许主属性被非主属性决定；而在BCNF中，任何属性（包括非主属性和主属性）都不能被非主属性所决定。

任何一个BCNF必然满足：

  - 所有非主属性都完全函数依赖于每个候选键
  - 所有主属性都完全函数依赖于每个不包含它的候选键
  - 没有任何属性完全函数依赖于非候选键的任何一组属性

## 范例

关系模式R：

| *Property_id\#*(主键) | County_name | Lot\# | Area |
| -------------------- | ------------ | ----- | ---- |
|                      |              |       |      |

其中依赖关系如下： Property_id\#-\>{County_name,Lot\#,Area};
{County_name,Lot\#}-\>{Property_id\#,Area}; Area-\>County_name;

很明显最后一个依赖违反了BC范式的要求，Area不是关系模式R的主键，而依赖于它的County_name是能够决定其他属性的主属性。故应当规范化为：

| *Property_id\#*(主键) | Area | Lot\# |
| -------------------- | ---- | ----- |
|                      |      |       |

| *Area*(主键) | County_name |
| ---------- | ------------ |
|            |              |

## 参考文獻

  - [Litt's Tips:
    Normalization](http://www.troubleshooters.com/littstip/ltnorm.html)
  - [Rules Of Data
    Normalization](https://web.archive.org/web/20080805014412/http://www.datamodel.org/NormalizationRules.html)
  - [Temporal Data & the Relational
    Model](http://www.elsevier.com/wps/product/cws_home/680662) (1st
    ed.). Morgan Kaufmann. ISBN 1-55860-855-9.Date, C. J., & Lorentzos,
    N., & Darwen, H. (2002).
  - [An Introduction to Database
    Systems](https://web.archive.org/web/20050404010227/http://www.aw-bc.com/catalog/academic/product/0%2C1144%2C0321197844%2C00.html)
    (8th ed.). Addison-Wesley Longman. ISBN 0-321-19784-4. Date, C. J.
    (1999),
  - [A Simple Guide to Five Normal Forms in Relational Database
    Theory](http://www.bkent.net/Doc/simple5.htm)'', Communications of
    the ACM, vol. 26, pp. 120-125 Kent, W. (1983)
  - [Database Debunkings](http://www.dbdebunk.com) Date, C.J., & Darwen,
    H., & Pascal, F.
  - H.-J. Schek, P.Pistor Data Structures for an Integrated Data Base
    Management and Information Retrieval System

## 外部連結

  - [Database Normalization
    Basics](http://databases.about.com/od/specificproducts/a/normalization.htm)
    by Mike Chapple (About.com)
  - [An Introduction to Database
    Normalization](https://web.archive.org/web/20110606025027/http://dev.mysql.com/tech-resources/articles/intro-to-normalization.html)
    by Mike Hillyer.
  - [Normalization](https://web.archive.org/web/20100106115112/http://www.utexas.edu/its/archive/windows/database/datamodeling/rm/rm7.html)
    by ITS, University of Texas.
  - [A tutorial on the first 3 normal
    forms](http://phlonx.com/resources/nf3/) by Fred Coulson
  - [Free PDF poster
    available](https://web.archive.org/web/20071227154911/http://www.marcrettig.com/poster/)
    by Marc Rettig
  - [Description of the database normalization
    basics](http://support.microsoft.com/kb/283878) by Microsoft

{{-}}

[de:Normalisierung (Datenbank)\#Boyce-Codd-Normalform
(BCNF)](https://zh.wikipedia.org/wiki/de:Normalisierung_\(Datenbank\)#Boyce-Codd-Normalform_\(BCNF\) "wikilink")

[Category:資料庫正規化](https://zh.wikipedia.org/wiki/Category:資料庫正規化 "wikilink")