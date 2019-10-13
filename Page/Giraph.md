**Giraph** 是一个[迭代](../Page/迭代.md "wikilink")的系统。

Apache Giraph 是一个[Apache项目](https://zh.wikipedia.org/wiki/Apache "wikilink")，用于对[大数据执行图形处理](https://zh.wikipedia.org/wiki/大数据 "wikilink")。

Giraph 计算的输入是由点和两点之间直连的边所组成的图，例如，点可以表示人，边可以表示朋友请求。每个[顶点保存一个值](../Page/顶点_\(图论\).md "wikilink")，每个边也保存一个值。输入不仅取决于图的[拓扑逻辑](https://zh.wikipedia.org/wiki/拓扑 "wikilink")，也取决于定点和边的初始值。

举一个例子，假设有这样一个计算，需要查找某个预先设置的初始人物到社交图谱中任何一个人的距离。在这个计算中，边的值是一个[浮点数](../Page/浮点数.md "wikilink")，表示相邻的人之间的距离，[顶点V也是一个浮点数](../Page/顶点_\(图论\).md "wikilink")，表示从预设的顶点s到v的最短距离的上限值。预设的源顶点的初始值是0，其它顶点的初始值是[无穷大](https://zh.wikipedia.org/wiki/无穷大 "wikilink")。

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

Giraph基于[Hadoop而建](https://zh.wikipedia.org/wiki/Hadoop "wikilink")，将[MapReduce](../Page/MapReduce.md "wikilink")中Mapper进行封装，未使用reducer。在Mapper中进行多次迭代，每次迭代等价于BSP模型中的SuperStep。一个Hadoop Job等价于一次BSP作业。\[1\]

## 參考資料

## 外部链接

[Graph基础介绍 - Hama White 的博客](http://blog.csdn.net/xin_jmail/article/details/22194057)

[Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink") [Category:Hadoop](https://zh.wikipedia.org/wiki/Category:Hadoop "wikilink") [Category:数据挖掘和机器学习软件](https://zh.wikipedia.org/wiki/Category:数据挖掘和机器学习软件 "wikilink")

1.