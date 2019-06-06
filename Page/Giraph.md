**Giraph** 是一个[迭代的](../Page/迭代.md "wikilink")系统。

Apache Giraph
是一个[Apache项目](https://zh.wikipedia.org/wiki/Apache "wikilink")，用于对[大数据执行图形处理](https://zh.wikipedia.org/wiki/大数据 "wikilink")。

Giraph
计算的输入是由点和两点之间直连的边所组成的图，例如，点可以表示人，边可以表示朋友请求。每个顶点保存一个值，每个边也保存一个值。输入不仅取决于图的[拓扑逻辑](https://zh.wikipedia.org/wiki/拓扑 "wikilink")，也取决于定点和边的初始值。

举一个例子，假设有这样一个计算，需要查找某个预先设置的初始人物到社交图谱中任何一个人的距离。在这个计算中，边的值是一个[浮点数](../Page/浮点数.md "wikilink")，表示相邻的人之间的距离，顶点V也是一个浮点数，表示从预设的顶点s到v的最短距离的上限值。预设的源顶点的初始值是0，其它顶点的初始值是[无穷大](https://zh.wikipedia.org/wiki/无穷大 "wikilink")。

计算过程由一序列的迭代进行，在[BSP中叫做supersteps](https://zh.wikipedia.org/wiki/BSP "wikilink")。最初，每个顶点都active。在每个superstep中，每个active的顶点触发用户提供的计算方法。这些方法实现了将要输入的图中执行的图算法。直观说，在设计Giraph算法的时候要像顶点一样思考。计算方法如下：

\- 接受上一个superstep发送给顶点的消息;

\- 用消息、定点和伸出的边的值，可能导致值被修改，发送消息给其它顶点;

计算方法并没有直接获取其它顶点的值以及他们的伸出的边。顶点之间通过传递消息来通信。

在我们的单源最短路径的例子中，一个计算方法是：

（1）从所有收到的消息中计算最小的值；

（2）确定各个节点的当前值大小；

（3）最小的值被接受作为顶点的值；

（4）值和边的值沿着每一个外出的边发送。

` public void compute(Iterable`<DoubleWritable>` messages) {`
`   double minDist = Double.MAX_VALUE;`
`   for (DoubleWritable message : messages) {`
`     minDist = Math.min(minDist, message.get());`
`   }`
`   if (minDist < getValue().get()) {`
`     setValue(new DoubleWritable(minDist));`
`     for (Edge<LongWritable, FloatWritable> edge : getEdges()) {`
`       double distance = minDist + edge.getValue().get();`
`       sendMessage(edge.getTargetVertexId(), new DoubleWritable(distance));`
`     }`
`   }`
`   voteToHalt();`
` }`

## 基础原理

Giraph基于[Hadoop而建](https://zh.wikipedia.org/wiki/Hadoop "wikilink")，将[MapReduce中Mapper进行封装](../Page/MapReduce.md "wikilink")，未使用reducer。在Mapper中进行多次迭代，每次迭代等价于BSP模型中的SuperStep。一个Hadoop
Job等价于一次BSP作业。\[1\]

Giraph : Large-scale graph processing on Hadoop

Web and online social graphs have been rapidly growing in size and scale
during the past decade. In 2008, Google estimated that the number of web
pages reached over a trillion. Online social networking and email sites,
including Yahoo\!, Google, Microsoft, Facebook, LinkedIn, and Twitter,
have hundreds of millions of users and are expected to grow much more in
the future. Processing these graphs plays a big role in relevant and
personalized information for users, such as results from a search engine
or news in an online social networking site.

Graph processing platforms to run large-scale algorithms (such as page
rank, shared connections, personalization-based popularity, etc.) have
become quite popular. Some recent examples include Pregel and HaLoop.
For general-purpose big data computation, the map-reduce computing model
has been well adopted and the most deployed map-reduce infrastructure is
Apache Hadoop. We have implemented a graph-processing framework that is
launched as a typical Hadoop job to leverage existing Hadoop
infrastructure, such as Amazon’s EC2. Giraph builds upon the
graph-oriented nature of Pregel but additionally adds fault-tolerance to
the coordinator process with the use of ZooKeeper as its centralized
coordination service.

Giraph follows the bulk-synchronous parallel model relative to graphs
where vertices can send messages to other vertices during a given
superstep. Checkpoints are initiated by the Giraph infrastructure at
user-defined intervals and are used for automatic application restarts
when any worker in the application fails. Any worker in the application
can act as the application coordinator and one will automatically take
over if the current application coordinator fails.

\-------------------------------

Hadoop versions for use with Giraph:

Secure Hadoop versions:

\- Apache Hadoop 1 (latest version: 1.2.1)

This is the default version used by Giraph: if you do not specify a
profile with the -P flag, maven will use this version. You may also
explicitly specify it with "mvn -Phadoop_1 <goals>".

\- Apache Hadoop 2 (latest version: 2.5.1)

This is the latest version of Hadoop 2 (supporting YARN in addition to
MapReduce) Giraph could use. You may tell maven to use this version with
"mvn -Phadoop_2 <goals>".

\- Apache Hadoop Yarn with 2.2.0

You may tell maven to use this version with "mvn -Phadoop_yarn
-Dhadoop.version=2.2.0 <goals>".

\- Apache Hadoop 3.0.0-SNAPSHOT

You may tell maven to use this version with "mvn -Phadoop_snapshot
<goals>".

Unsecure Hadoop versions:

\- Facebook Hadoop releases: https://github.com/facebook/hadoop-20,
Master branch

You may tell maven to use this version with "mvn -Phadoop_facebook
<goals>"

\-- Other versions reported working include: --- Cloudera CDH3u0, CDH3u1

While we provide support for unsecure and Facebook versions of Hadoop
with the maven profiles 'hadoop_non_secure' and 'hadoop_facebook',
respectively, we have been primarily focusing on secure Hadoop releases
at this time.

\-------------------------------

Building and testing:

You will need the following: - Java 1.8 - Maven 3 or higher. Giraph uses
the munge plugin (http://sonatype.github.com/munge-maven-plugin/), which
requires Maven 3, to support multiple versions of Hadoop. Also, the web
site plugin requires Maven 3.

Use the maven commands with secure Hadoop to: - compile (i.e mvn
compile) - package (i.e. mvn package) - test (i.e. mvn test)

For the non-secure versions of Hadoop, run the maven commands with the
additional argument '-Phadoop_non_secure'. Example compilation
commands is 'mvn -Phadoop_non_secure compile'.

For the Facebook Hadoop release, run the maven commands with the
additional arguments '-Phadoop_facebook'. Example compilation commands
is 'mvn -Phadoop_facebook compile'.

\-------------------------------

Developing:

Giraph is a multi-module maven project. The top level generates a POM
that carries information common to all the modules. Each module creates
a jar with the code contained in it.

The giraph/ module contains the main giraph code. If you just want to
work on the main code only you can do all your work inside this
subdirectory. Specifically you would do something like:

giraph-root/giraph/ $ mvn verify \# build from current state
giraph-root/giraph/ $ mvn clean \# wipe out build files
giraph-root/giraph/ $ mvn clean verify \# build from fresh state
giraph-root/giraph/ $ mvn install \# install jar to local repository

The giraph-formats/ module contains hooks to read/write from various
formats (e.g. Accumulo, HBase, Hive). It depends on the giraph module.
This means if you make local changes to the giraph codebase you will
first need to install the giraph/ jar locally so that giraph-formats/
will pick it up. In other words something like this:

giraph-root/giraph/ $ mvn install giraph-root/giraph-formats $ mvn
verify

To build everything at once you can issue the maven commands at the top
level. Note that we use the "install" target so that if you have any
local changes to giraph/ which formats needs it will get picked up
because it will install locally first.

giraph-root/ $ mvn clean install

\-------------------------------

Scripting:

Giraph has support for writing user logic in languages other than Java.
A Giraph job involves at the very least a Computation and Input/Output
Formats. There are other optional pieces as well like Aggregators and
Combiners.

As of this writing we support writing the Computation logic in Jython.
The Computation class is at the core of the algorithm so it was a
natural starting point. Eventually it is our goal to allow users to
write any / all components of their algorithms in any language they
desire.

To use Jython with our job launcher, GiraphRunner, pass the path to the
script as the Computation class argument. Additionally, you should set
the -jythonClass option to let Giraph know the name of your Jython
Computation class. Lastly, you will need to set -typesHolder to a class
that extends Giraph's TypesHolder so that Giraph can infer the types you
use. Look at page-rank.py as an example.

\-------------------------------

How to run the unittests on a local pseudo-distributed Hadoop instance:

As mentioned earlier, Giraph supports several versions of Hadoop. In
this section, we describe how to run the Giraph unittests against a
single node instance of Apache Hadoop 0.20.203.

Download Apache Hadoop 0.20.203
(hadoop-0.20.203.0/hadoop-0.20.203.0rc1.tar.gz) from a mirror picked at
http://www.apache.org/dyn/closer.cgi/hadoop/common/ and unpack it into a
local directory

Follow the guide at
http://hadoop.apache.org/common/docs/r0.20.2/quickstart.html\#PseudoDistributed
to setup a pseudo-distributed single node Hadoop cluster.

Giraph’s code assumes that you can run at least 4 mappers at once,
unfortunately the default configuration allows only 2. Therefore you
need to update conf/mapred-site.xml:

<property> <name>mapred.tasktracker.map.tasks.maximum</name>
<value>4</value> </property>

<property> <name>mapred.map.tasks</name> <value>4</value> </property>

After preparing the local filesystem with:

rm -rf /tmp/hadoop-<username> /path/to/hadoop/bin/hadoop namenode
-format

you can start the local hadoop instance:

/path/to/hadoop/bin/start-all.sh

and finally run Giraph’s unittests:

mvn clean test -Dprop.mapred.job.tracker=localhost:9001

Now you can open a browser, point it to http://localhost:50030 and watch
the Giraph jobs from the unittests running on your local Hadoop
instance\!

Notes: Counter limit: In Hadoop 0.20.203.0 onwards, there is a limit on
the number of counters one can use, which is set to 120 by default. This
limit restricts the number of iterations/supersteps possible in Giraph.
This limit can be increased by setting a parameter
"mapreduce.job.counters.limit" in job tracker's config file
mapred-site.xml.

## 參考資料

## 外部链接

[Graph基础介绍 - Hama White
的博客](http://blog.csdn.net/xin_jmail/article/details/22194057)

[1](https://github.com/apache/giraph)

[Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink")
[Category:Hadoop](https://zh.wikipedia.org/wiki/Category:Hadoop "wikilink")
[Category:数据挖掘和机器学习软件](https://zh.wikipedia.org/wiki/Category:数据挖掘和机器学习软件 "wikilink")

1.