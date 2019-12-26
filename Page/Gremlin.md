**Gremlin**是[Apache软件基金会](../Page/Apache软件基金会.md "wikilink")下的Apache TinkerPop开发的[图遍历语言和](https://zh.wikipedia.org/wiki/图遍历 "wikilink")[虚拟机](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")。Gremlin适用于基于[OLTP的图数据库以及基于](https://zh.wikipedia.org/wiki/OLTP "wikilink")[OLAP的图处理器](https://zh.wikipedia.org/wiki/OLAP "wikilink")。Gremlin的[函数式语言和](https://zh.wikipedia.org/wiki/函数式语言 "wikilink")[自动机基础使Gremlin能够自然地支持](https://zh.wikipedia.org/wiki/自动机 "wikilink")[命令式和](https://zh.wikipedia.org/wiki/命令式程式設計 "wikilink")[声明式查询](https://zh.wikipedia.org/wiki/声明式编程 "wikilink")、主机语言不可知性、用户定义的[领域特定语言](../Page/领域特定语言.md "wikilink")、可扩展的编译器/优化器、单机和多机运行模型、混合深度和广度优先评估以及[图灵完备性](https://zh.wikipedia.org/wiki/图灵完备性 "wikilink")。\[1\]

作为一个解释性的类比，Apache TinkerPop和Gremlin之于[图数据库](../Page/图数据库.md "wikilink")，就如同[JDBC和](https://zh.wikipedia.org/wiki/JDBC "wikilink")[SQL](../Page/SQL.md "wikilink")之于[关系型数据库](https://zh.wikipedia.org/wiki/关系型数据库 "wikilink")。 同样，Gremlin遍历机与图计算的关系也类似于为[Java虚拟机](../Page/Java虚拟机.md "wikilink")与通用计算之间的关系。\[2\]

## 历史

  - 2009-10-30 项目诞生，并被命名为“TinkerPop”
  - 2009-12-25 v0.1是第一个版本
  - 2011-05-21 v1.0发布
  - 2012-05-24 v2.0发布
  - 2015-01-16 TinkerPop成为Apache孵化器项目
  - 2015-07-09 v3.0.0 孵化版发布
  - 2016-05-23 Apache TinkerPop成为一个Apache顶级项目
  - 2016-07-18 v3.1.3和v3.2.1是第一次作为Apache TinkerPop发布的版本
  - 2017-12-17 v3.3.1发布
  - 2018-05-08 v3.3.3发布

## 供应商的一体化

Gremlin是[Apache2许可的图遍历语言](../Page/Apache许可证.md "wikilink")，可供图系统供应商使用。通常有两种类型的图系统供应商：OLTP图数据库和OLAP图处理器。下表概述了支持Gremlin的图系统供应商。

| 供应商                                                                                         | 图系统         |
| ------------------------------------------------------------------------------------------- | ----------- |
| Neo4j                                                                                       | 图数据库        |
| OrientDB                                                                                    | 图数据库        |
| DataStax Enterprise(5.0+)                                                                   | 图数据库        |
| [Hadoop](../Page/Apache_Hadoop.md "wikilink") ([Giraph](../Page/Giraph.md "wikilink"))      | 图处理器        |
| [Hadoop](../Page/Apache_Hadoop.md "wikilink") ([Spark](../Page/Apache_Spark.md "wikilink")) | 图处理器        |
| InfiniteGraph                                                                               | 图数据库        |
| [JanusGraph](../Page/JanusGraph.md "wikilink")                                              | 图数据库        |
| Cosmos DB                                                                                   | 图数据库        |
| Amazon Neptune                                                                              | 图数据库        |
| Ontotext GraphDB                                                                            | Triplestore |

## 图遍历示例

以下Gremlin-Groovy环境中的Gremlin查询和响应示例与[MovieLens](http://grouplens.org/datasets/movielens/)数据集的图表示有关。\[3\] 该数据集包括为电影评分的用户，每个用户都有各自的职业，每部电影都有一个或多个与之相关的类别，MovieLens图表架构详述如下。

``` cypher
user--rated[stars:0-5]-->movie
user--occupation-->occupation
movie--category-->category
```

### 简单遍历

|   |                                                                        |   |
| - | ---------------------------------------------------------------------- | - |
| " | 对于图中的每个[顶点](../Page/顶点_\(图论\).md "wikilink")，从其标签出发，然后对每个不同的标签进行分组和计数。 | " |

``` groovy
gremlin> g.V().label().groupCount()
==>[occupation:21, movie:3883, category:18, user:6040]
```

|   |                 |   |
| - | --------------- | - |
| " | 最老的一部电影是哪一年制作的？ | " |

``` groovy
gremlin> g.V().hasLabel('movie').values('year').min()
==>1919
```

|   |                     |   |
| - | ------------------- | - |
| " | 电影Die Hard的平均评分是多少？ | " |

``` groovy
gremlin> g.V().has('movie','name','Die Hard').inE('rated').values('stars').mean()
==>4.121848739495798
```

### 投影遍历

|   |                       |   |
| - | --------------------- | - |
| " | 对于每个类别，列出其名称和各自的电影数量。 | " |

``` groovy
gremlin> g.V().hasLabel('category').as('a','b').
           select('a','b').
             by('name').
             by(inE('category').count())
==>[a:Animation, b:105]
==>[a:Children's, b:251]
==>[a:Comedy, b:1200]
==>[a:Adventure, b:283]
==>[a:Fantasy, b:68]
==>[a:Romance, b:471]
==>[a:Drama, b:1603]
==>[a:Action, b:503]
==>[a:Crime, b:211]
==>[a:Thriller, b:492]
==>[a:Horror, b:343]
==>[a:Sci-Fi, b:276]
==>[a:Documentary, b:127]
==>[a:War, b:143]
==>[a:Musical, b:114]
==>[a:Mystery, b:106]
==>[a:Film-Noir, b:44]
==>[a:Western, b:68]
```

|   |                                                                 |   |
| - | --------------------------------------------------------------- | - |
| " | 对于每部至少有11个评级的电影，列出其名称和各自的平均评分，并按平均分按降序排列，展示前10个结果（即评分最高的10部电影）。 | " |

``` groovy
gremlin> g.V().hasLabel('movie').as('a','b').
           where(inE('rated').count().is(gt(10))).
           select('a','b').
             by('name').
             by(inE('rated').values('stars').mean()).
           order().by(select('b'),decr).
           limit(10)
==>[a:Sanjuro, b:4.608695652173913]
==>[a:Seven Samurai (The Magnificent Seven), b:4.560509554140127]
==>[a:Shawshank Redemption, The, b:4.554557700942973]
==>[a:Godfather, The, b:4.524966261808367]
==>[a:Close Shave, A, b:4.52054794520548]
==>[a:Usual Suspects, The, b:4.517106001121705]
==>[a:Schindler's List, b:4.510416666666667]
==>[a:Wrong Trousers, The, b:4.507936507936508]
==>[a:Sunset Blvd. (a.k.a. Sunset Boulevard), b:4.491489361702127]
==>[a:Raiders of the Lost Ark, b:4.47772]
```

### 声明式模式匹配遍历

Gremlin支持类似于[SPARQL](../Page/SPARQL.md "wikilink")的声明式图模式匹配。例如，下面的查询使用了Gremlin的match() 步骤。

|   |                                                        |   |
| - | ------------------------------------------------------ | - |
| " | 哪些80年代的动作电影受30多岁的程序员喜欢？按名称对电影进行分组计数，并按降序进行排序，列出前10条结果。 | " |

``` groovy
gremlin> g.V().
           match(
             __.as('a').hasLabel('movie'),
             __.as('a').out('category').has('name','Action'),
             __.as('a').has('year',between(1980,1990)),
             __.as('a').inE('rated').as('b'),
             __.as('b').has('stars',5),
             __.as('b').outV().as('c'),
             __.as('c').out('occupation').has('name','programmer'),
             __.as('c').has('age',between(30,40))).
           select('a').groupCount().by('name').
           order(local).by(valueDecr).
           limit(local,10)
==>Raiders of the Lost Ark=26
==>Star Wars Episode V - The Empire Strikes Back=26
==>Terminator, The=23
==>Star Wars Episode VI - Return of the Jedi=22
==>Princess Bride, The=19
==>Aliens=18
==>Boat, The (Das Boot)=11
==>Indiana Jones and the Last Crusade=11
==>Star Trek The Wrath of Khan=10
==>Abyss, The=9
```

### OLAP遍历

|   |                    |   |
| - | ------------------ | - |
| " | 哪些电影在隐含的5星图中处在最中心？ | " |

``` groovy
gremlin> g = graph.traversal(computer(SparkGraphComputer))
==>graphtraversalsource[hadoopgraph[gryoinputformat->gryooutputformat], sparkgraphcomputer]
gremlin> g.V().repeat(outE('rated').has('stars', 5).inV().
                 groupCount('m').by('name').
                 inE('rated').has('stars', 5).outV()).
               times(4).cap('m')
==>Star Wars Episode IV - A New Hope      35405394353105332
==>American Beauty    31943228282020585
==>Raiders of the Lost Ark  31224779793238499
==>Star Wars Episode V - The Empire Strikes Back  30434677119726223
==>Godfather, The   30258518523013057
==>Shawshank Redemption, The    28297717387901031
==>Schindler's List 27539336654199309
==>Silence of the Lambs, The    26736276376806173
==>Fargo     26531050311325270
==>Matrix, The   26395118239203191
```

## Gremlin图遍历机

Gremlin是一个由指令集和执行引擎组成的[虚拟机](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")。下表在Gremlin和Java之间进行了类比。

| Java生态系统                                          | Gremlin生态系统     |
| ------------------------------------------------- | --------------- |
| [Apache Groovy编程语言](../Page/Groovy.md "wikilink") | Gremlin-Groovy  |
| [Scala](../Page/Scala.md "wikilink")编程语言          | Gremlin-Scala   |
| [Clojure](../Page/Clojure.md "wikilink")编程语言      | Gremlin-Clojure |
| …                                                 | …               |
| [Java](../Page/Java.md "wikilink")编程语言            | Gremlin-Java8   |
| Java指令集                                           | Gremlin步骤库      |
| [Java虚拟机](../Page/Java虚拟机.md "wikilink")          | Gremlin遍历机      |

### Gremlin步骤(指令集)

以下历是一个Gremlin遍历在Gremlin-Java8的方言。

``` java
g.V().as("a").out("knows").as("b").
  select("a","b").
    by("name").
    by("age")
```

Gremlin语言（即表达图遍历的[流式接口](../Page/流式接口.md "wikilink")）可以用任何支持[函数组合和函数嵌套的宿主语言表示](https://zh.wikipedia.org/wiki/函数复合 "wikilink")。由于这个简单的要求，存在各种Gremlin方言，包括Gremlin-Groovy、Gremlin-Scala和Gremlin-Clojure等。上面的Gremlin-Java8遍历最终被编译成称为*遍历（traversal）*的步骤序列。下面提供了遍历的字符串表示。

``` java
[GraphStep([],vertex)@[a], VertexStep(OUT,[knows],vertex)@[b], SelectStep([a, b],[value(name), value(age)])]
```

这些*步骤（steps）*是Gremlin图遍历机的原语。它们是机器最终执行的参数化指令。Gremlin[指令集大约有](../Page/指令集架構.md "wikilink")30个步骤。这些步骤足以提供通用计算以及表达任何图遍历查询的共同主题通常所需的内容。

鉴于Gremlin是一种语言、一个指令集和一个虚拟机，可以设计另一种编译为Gremlin遍历机器的遍历语言（类似于Scala如何编译到JVM）。例如，可以编译流行的SPARQL图模式匹配语言以在Gremlin机器上执行。以下SPARQL查询

``` sparql
SELECT ?a ?b ?c
WHERE {
  ?a a Person .
  ?a ex:knows ?b .
  ?a ex:created ?c .
  ?b ex:created ?c .
  ?b ex:age ? d .
    FILTER(?d < 30)
}
```

将被编译到

``` java
[GraphStep([],vertex), MatchStep(AND,[[MatchStartStep(a),_LabelStep,_IsStep(eq(Person)),_MatchEndStep],_[MatchStartStep(a),_VertexStep(OUT,[knows],vertex),_MatchEndStep(b)],_[MatchStartStep(a),_VertexStep(OUT,[created],vertex),_MatchEndStep(c)],_[MatchStartStep(b),_VertexStep(OUT,[created],vertex),_MatchEndStep(c)],_[MatchStartStep(b),_PropertiesStep([age],value),_MatchEndStep(d)],_[MatchStartStep(d),_IsStep(gt(30)),_MatchEndStep|MatchStartStep(a), LabelStep, IsStep(eq(Person)), MatchEndStep], [MatchStartStep(a), VertexStep(OUT,[knows],vertex), MatchEndStep(b)], [MatchStartStep(a), VertexStep(OUT,[created],vertex), MatchEndStep(c)], [MatchStartStep(b), VertexStep(OUT,[created],vertex), MatchEndStep(c)], [MatchStartStep(b), PropertiesStep([age],value), MatchEndStep(d)], [MatchStartStep(d), IsStep(gt(30)), MatchEndStep]]), SelectStep([a, b, c])].
```

在Gremlin-Java8中，上面的SPARQL查询将被编译为相同的Gremlin步骤序列（即遍历），其表示如下。

``` java
g.V().match(
  as("a").label().is("person"),
  as("a").out("knows").as("b"),
  as("a").out("created").as("c"),
  as("b").out("created").as("c"),
  as("b").values("age").as("d"),
  as("d").is(gt(30))).
    select("a","b","c")
```

### Gremlin机(虚拟机)

Gremlin图遍历机可以在单台机器上执行，也可以在多机计算集群上执行。执行不可知论允许Gremlin在图数据库（OLTP）和图处理器（OLAP）上运行。

## 参考文献

<references group="" responsive="">

</references>

## 外部链接

1.  [Apache TinkerPop主页](http://tinkerpop.apache.org/)
2.  [GremlinDocs.com (TinkerPop2)](https://web.archive.org/web/20180208095222/http://gremlindocs.com/)
3.  [sql2gremlin.com (TinkerPop2)](http://sql2gremlin.com/)
4.  Rodriguez, M.A., "[The Gremlin Graph Traversal Machine and Language](https://zh.wikipedia.org/wiki/arxiv:1508.03843 "wikilink")," Proceedings of the ACM Database Programming Languages Conference, October, 2015.

[Category:宣告式編程語言](https://zh.wikipedia.org/wiki/Category:宣告式編程語言 "wikilink") [Category:Java平台](https://zh.wikipedia.org/wiki/Category:Java平台 "wikilink") [Category:使用Apache许可证的软件](https://zh.wikipedia.org/wiki/Category:使用Apache许可证的软件 "wikilink") [Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink") [Category:Hadoop](https://zh.wikipedia.org/wiki/Category:Hadoop "wikilink") [Category:数据挖掘和机器学习软件](https://zh.wikipedia.org/wiki/Category:数据挖掘和机器学习软件 "wikilink") [Category:叢集計算](https://zh.wikipedia.org/wiki/Category:叢集計算 "wikilink") [Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.
2.
3.