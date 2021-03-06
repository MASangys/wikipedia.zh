**PHP标准库**（**Standard PHP Library**，缩写：**SPL**），是[PHP](../Page/PHP.md "wikilink")5.0之后新添加的重要库。它提供了一系列的[接口](https://zh.wikipedia.org/wiki/接口 "wikilink")（interface）和[类](https://zh.wikipedia.org/wiki/类 "wikilink")（classes）解决网站开发中普遍碰到的问题。源码在ext/spl目录下。

## 介绍

SPL主要提供了以下几个方面的内容：

  - iterator：[迭代器](../Page/迭代器.md "wikilink")，这是SPL中最重要的内容。它提供了一系列的接口和内置迭代器类。
  - exception：异常类，它声明一了组和C++标准的异常类。
  - Observer：观察者模式，观察者模式在MVC中经常用到。
  - 以及一些单体函数。

## SPL主要的类

## 主要接口

  - ArrayAccess：其功能是使类可以像PHP中的数组一样操作。有点类似于[.NET平台的index操作](https://zh.wikipedia.org/wiki/.NET "wikilink")。
  - Traversable：是Zend引擎的内置接口，它是能让类用于foreach语句的接口，但是在PHP中并不能直接实现Traversable。只能间接地通过Iterator或IteratorAggregate接口实现。
  - IteratorAggregate（继承Traversable，是他的儿子）是除Iterator之外另一个从Traversable接口中继承而来的。其接口也很简单，只有一个函数。就是返回一个迭代器实例。
  - Iterator（也是继承Traversable，是他的儿子），SPL中大部分接口和类都是从这个接口继承而来的。
  - RecursiveIterator（继承Iterator，为Traversable的孙子），递归迭代器，通过hasChildre()和getChildren()两个函数实现递归遍历子元素。
  - Countable：这接口就一个count()函数，返回结果集的数量。实现这个接口的类可以用count()函数查询其结果集。
  - Serializable：该接口实现序列化和反序列化的接口。在没有SPL之前，可以通过__sleep()和__wakeup()实现相同的功能，若同时实现了Serializable接口和_sleep()和__wakeup()，则只有Serializable接口的函数启作用。
  - OuterIterator：它的实现者可以包含一个或多个迭代器成员，即可以通过getInnerIterator()接口函数获取内部的迭代器，也可以直接通过类本身实现的Iterator接口遍历内部的迭代器数据。这在SPL是一个非常重要的接口，SPL中很多内置的迭代器实现了这个接口。
  - SplObserver：观察者模式的中的观察者接口。
  - SplSubject：观察者模式的中的发布者接口。

## 主要类

  - DirectoryIterator：这个类用来查看一个目录中的所有文件和子目录。
  - FilterIterator：这是一个抽象类，它实现了OuterIterator接口。它包装一个已有的迭代器类，通过抽象方法accept()过滤掉不需要的内容，形成一个新的迭代器。
  - LimitIterator：这也是一个实现OuterIterator的类。它有点类似于SQL中的LIMIT语句。它通过包装一个已有迭代器，然后截取其中某一段数据形成一个新的迭代器。
  - RecursiveDirectoryIterator：递归查看一个目录中的所有文件的子目录。
  - SimpleXMLIterator：一个遍历XML内容的类
  - IteratorIterator：实现对迭代器的包装，这也是SPL中对OuterIterator默认实现。
  - InfiniteIterator：从字面意思就知道，这是个无限循环的迭代器，当next()到达最后时，会自动调用rewind()函数，又从头开始。
  - AppendIterator：它实现了对一系统迭代器的包装，并且可以在运行过程中添加新的迭代器。
  - SplFileInfo：获取文件信息类。SplFileObject从该类继承。
  - SplFileObject：文件操作类，可以按行的方式遍历文件内容。同时还能获取文件的大小及其它详细信息。

## 异常类

  - Exception：异常基类
      - LogicException：逻辑错误异常类。
          - BadFunctionCallException：不合法的函数被调用产生的异常类。
          - BadMethodCallException：不合法的方法被调用产生的异常类。
          - DomainException：表示一个值不在有效范围内的异常。
          - InvalidArgumentException：表示传递了无效的参数产生的异常。
          - LengthException：表示一个参数超过了许可的长度的异常。
          - OutOfRangeException：表示请求检索超越了数组等容器最大长度的异常。
      - RuntimeException：运行时错误异常类。
          - OutOfBoundsException：表示请求检索超越了数组等容器最大长度的异常。
          - OverflowException：表示算法/缓存溢出异常。
          - RangeException：运行期间的范围异常。
          - UnderflowException：运行期间的算法/缓存的向下溢出异常。

## 一此其它函数

  - iterator_apply：为迭代器中每个元素调用一个用户自定义函数
  - iterator_count：计算迭代器中元素的个数
  - iterator_to_array：将迭代器中的元素拷贝到数组
  - spl_autoload_call：尝试调用所有已注册的__autoload()函数来装载请求类
  - spl_autoload_extensions：注册并返回spl_autoload函数使用的默认文件扩展名。
  - spl_autoload_functions：返回所有已注册的__autoload()函数。
  - spl_autoload_register：注册__autoload()函数
  - spl_autoload_unregister：注销已注册的__autoload()函数
  - spl_autoload __autoload()：函数的默认实现
  - spl_classes：返回所有可用的SPL类

## 6.0中新增的数据结构

  - SplDoublyLinkedList
  - SplStack
  - SplQueue
  - SplHeap
  - SplMaxHeap
  - SplMinHeap
  - SplPriorityQueue
  - SplFixedArray这是个固定大小的数组，性能比系统内置的array()要快些。
  - SplObjectStorage

## 参考

## 外部链接

  - <http://www.php.net/~helly/php/ext/spl/>
  - <http://www.caixw.com/archives/intro-to-spl-iterator.html>

[en:PHP\#Data types](https://zh.wikipedia.org/wiki/en:PHP#Data_types "wikilink")

[Category:PHP](https://zh.wikipedia.org/wiki/Category:PHP "wikilink")