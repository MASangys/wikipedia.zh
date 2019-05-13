**MapReduce**是[Google提出的一个](../Page/Google.md "wikilink")[软件架构](../Page/软件架构.md "wikilink")，用于大规模数据集（大于1[TB](../Page/terabyte.md "wikilink")）的[并行运算](../Page/并行运算.md "wikilink")。概念“Map（映射）”和“Reduce（归纳）”，及他们的主要思想，都是从[函数式编程语言借来的](../Page/函数式编程语言.md "wikilink")，还有从[矢量编程语言借来的特性](../Page/矢量编程语言.md "wikilink")。

当前的软件实现是指定一个*Map（映射）*函数，用来把一组键值对映射成一组新的键值对，指定并发的*Reduce（归纳）*函数，用来保证所有映射的键值对中的每一个共享相同的键组。

## 映射和归纳

简单来說，一个映射函数就是对一些独立元素组成的概念上的列表（例如，一个测试成绩的列表）的每一个元素进行指定的操作（比如，有人发现所有学生的成绩都被高估了一分，他可以定义一个“减一”的映射函数，用来修正这个错误。）。事实上，每个元素都是被独立操作的，而原始列表没有被更改，因为这里创建了一个新的列表来保存新的答案。这就是说，Map操作是可以高度并行的，这对高性能要求的应用以及[并行计算领域的需求非常有用](../Page/并行计算.md "wikilink")。

而归纳操作指的是对一个列表的元素进行适当的合并（继续看前面的例子，如果有人想知道班级的平均分该怎么做？他可以定义一个归纳函数，通过让列表中的奇數（odd）或偶數（even）元素跟自己的相邻的元素相加的方式把列表减半，如此递归运算直到列表只剩下一个元素，然后用这个元素除以人数，就得到了平均分）。虽然他不如映射函数那么并行，但是因为归纳总是有一个简单的答案，大规模的运算相对独立，所以归纳函数在高度并行环境下也很有用。

## 分布和可靠性

MapReduce通过把对数据集的大规模操作分发给网络上的每个节点实现可靠性；每个节点会周期性的把完成的工作和状态的更新报告回来。如果一个节点保持沉默超过一个预设的时间间隔，主节点（类同[Google檔案系統中的主服务器](../Page/Google檔案系統.md "wikilink")）记录下这个节点状态为死亡，并把分配给这个节点的数据发到别的节点。每个操作使用命名文件的不可分割操作以确保不会发生并行线程间的冲突；当文件被改名的时候，系统可能会把他们复制到任务名以外的另一个名字上去。（避免[副作用](../Page/副作用_\(计算机科学\).md "wikilink")）。

归纳操作工作方式很类似，但是由于归纳操作在并行能力较差，主节点会尽量把归纳操作调度在一个节点上，或者离需要操作的数据尽可能近的节点上了；这个特性可以满足Google的需求，因为他们有足够的带宽，他们的内部网络没有那么多的机器。

## 其他实现

  - [Hadoop](../Page/Hadoop.md "wikilink")－[Apache軟件基金會的](../Page/Apache軟件基金會.md "wikilink")[開放源碼項目](../Page/開放源碼.md "wikilink")，提供與MapReduce檔案系統類似的功能。

## 参考

  - Dean, Jeffrey & Ghemawat, Sanjay (2004)."MapReduce：大规模集群上的简单数据处理方式"
    2005年4月6日。

*"我们的灵感来自lisp和其他函数式编程语言中的古老的映射和归纳操作."* -"MapReduce：大规模集群上的简单数据处理方式"

## 外部链接

  - [Interpreting the Data: Parallel Analysis with
    Sawzall](https://web.archive.org/web/20060613123221/http://labs.google.com/papers/sawzall.html)-
    a paper on an internal tool at Google, Sawzall, which acts as an
    interface to MapReduce, intended to make MapReduce much easier to
    use.
  - [Discussion](http://lambda-the-ultimate.org/node/view/329) on
    *Lambda the Ultimate*.

{{-}}

[Category:Google](https://zh.wikipedia.org/wiki/Category:Google "wikilink")
[Category:程序架構](https://zh.wikipedia.org/wiki/Category:程序架構 "wikilink")
[Category:并发计算](https://zh.wikipedia.org/wiki/Category:并发计算 "wikilink")