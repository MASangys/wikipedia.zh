**Lamport面包店算法**是解决多个[线程](../Page/线程.md "wikilink")[并发访问一个共享的单用户资源的](https://zh.wikipedia.org/wiki/并发程序设计 "wikilink")[互斥问题的算法](../Page/互斥锁.md "wikilink")。 由[莱斯利·兰波特](../Page/莱斯利·兰波特.md "wikilink")发明\[1\]。

## 算法

### 类比

Lamport把这个并发控制算法非常直观地类比为顾客去面包店采购。面包店一次只能接待一位顾客的采购。已知有n位顾客要进入面包店采购，按照次序安排他们在前台登记一个签到号码。该签到号码逐次增加1。顾客根据签到号码的由小到大的顺序依次入店购货。完成购买的顾客在前台把其签到号码归0。 如果完成购买的顾客要再次进店购买，就必须重新排队。

这个类比中的顾客就相当于线程，而入店购货就是进入[临界区独占访问该共享资源](https://zh.wikipedia.org/wiki/临界区 "wikilink")。由于计算机实现的特点，存在两个线程获得相同的签到号码的情况，这是因为两个线程几乎同时申请排队的签到号码，读取已经发出去的签到号码情况，这两个线程读到的数据是完全一样的，然后各自在读到的数据上找到最大值，再加1作为自己的排队签到号码。为此，该算法规定如果两个线程的排队签到号码相等，则线程id号较小的具有优先权。

### 进入临界区

已经拿到排队签到号码的线程，要轮询检查自己是否可以进入临界区。即检查n个线程中，自己是否具有最小的非0排队签到号码；或者自己是具有最小的非0排队签到号码的线程中，id号最小的。

可以用伪代码表示上述检查:

`(a, b) < (c, d)`

等价于:

`(a < c) or ((a == c) and (b < d))`

### 非临界区

一旦线程在临界区执行完毕，需要把自己的排队签到号码置为0，表示处于**非临界区**.

## 算法实现

### 定义

  - 数组Entering\[i\]为真，表示进程i正在获取它的排队登记号；
  - 数组Number\[i\]的值，是进程i的当前排队登记号。如果值为0，表示进程i未参加排队，不想获得该资源。规定这个数组元素的取值没有上界。
  - 正在访问临界区的进程如果失败，规定它进入非临界区，Number\[i\]的值置0，即不影响其它进程访问这个互斥资源。

### 伪代码

``` cpp
     // declaration and initial values of global variables
     Entering: array [1..NUM_THREADS] of bool = {};
     Number: array [1..NUM_THREADS] of integer = {};

  1  lock(integer i) {
  2      Entering[i] = true;
  3      Number[i] = 1 + max(Number[1], ..., Number[NUM_THREADS]);
  4      Entering[i] = false;
  5      for (j = 1; j <= NUM_THREADS; j++) {
  6          // Wait until thread j receives its number:
  7          while (Entering[j]) { /* nothing */ }
  8          // Wait until all threads with smaller numbers or with the same
  9          // number, but with higher priority, finish their work:
 10          while ((Number[j] != 0) && ((Number[j], j) < (Number[i], i))) { /* nothing */ }
 11      }
 12  }
 13
 14  unlock(integer i) {
 15      Number[i] = 0;
 16  }
 17
 18  Thread(integer i) {
 19      while (true) {
 20          lock(i);
 21          // The critical section goes here...
 22          unlock(i);
 23          // non-critical section...
 24      }
 25  }
```

### 讨论

每个线程只写它自己的Entering\[i\]、Number\[i\]，只读取其它线程的这两个数据项。

这个算法不需要基于硬件的原子(atomic)操作实现，即它可以纯软件实现。

使用Entering数组是必须的。假设不使用Entering数组，那么就可能会出现这种情况：设进程i的优先级高于进程j(即`i<j`)，两个进程获得了相同的排队登记号(Number数组的元素值相等)。进程i在写`Number[i]`之前，被优先级低的进程j抢先获得了CPU时间片，这时进程j读取到的`Number[i]`为0，因此进程j进入了临界区. 随后进程i又获得CPU时间片，它读取到的`Number[i]`与`Number[j]`相等，且`i<j`，因此进程i也进入了临界区。这样，两个进程同时在临界区内访问，可能会导致[数据腐烂](https://zh.wikipedia.org/wiki/数据腐烂 "wikilink")(data corruption)。算法使用了*Entering*数组变量，使得修改Number数组的元素值变得“原子化”，解决了上述问题。

具体实现时，可以把上述伪代码中的忙等待(busy wait)，换成交出线程的执行权，例如`yield`操作.

## 参见

  - [Peterson算法](../Page/Peterson算法.md "wikilink")
  - [Szymanski算法](../Page/Szymanski算法.md "wikilink")
  - [信号量](../Page/信号量.md "wikilink")

## 外部链接

  - [Wallace Variation of Bakery Algorithm](http://www.onjava.com/pub/a/onjava/2006/04/05/ajax-mutual-exclusion.html) which overcomes limitations of Javascript language
  - [Lamport's Bakery Algorithm](http://research.microsoft.com/users/lamport/pubs/pubs.html#bakery)
  - [Another JavaScript implementation](https://web.archive.org/web/20100311201833/http://www.aitk.info/Bakery/Bakery.html) by a.in.the.k

## 参考文献

<references/>

  - On his [publications page](http://research.microsoft.com/users/lamport/pubs/pubs.html#bakery), Lamport has added some remarks regarding the algorithm.

[Category:并发控制算法](https://zh.wikipedia.org/wiki/Category:并发控制算法 "wikilink")

1.  [Original Paper](http://research.microsoft.com/users/lamport/pubs/bakery.pdf)