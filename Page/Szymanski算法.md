**Szymanski算法**是解决多个[线程](../Page/线程.md "wikilink")[并发访问一个共享资源的](https://zh.wikipedia.org/wiki/并发程序设计 "wikilink")[互斥问题的一个算法](../Page/互斥锁.md "wikilink")。由Boleslaw Szymanski于1988年提出。\[1\]\[2\]\[3\]该算法具有很多优良性能，如线性等待，解决了由Leslie Lamport提出的[开问题](https://zh.wikipedia.org/wiki/开问题 "wikilink")。\[4\]

## 算法的类比解释

该算法可以用等候室(waiting room)做一个直观地类比。等候室有一个入口门与一个出口门。起初，入口门是打开的。所有想要进入[临界区的线程在差不多同一时间由入口进入等候室](https://zh.wikipedia.org/wiki/临界区 "wikilink")。最后一个进入的线程负责关闭进口门。然后在等候室的线程根据优先级高低依次进入临界区。最后退出临界区的线程负责打开入口门。

## 算法的实现

每个线程有一个*flag*变量表示该线程所处的状态。规定其含义为：

  - 0: 在外面，未申请访问临界区
  - 1: 在入口门外等待
  - 2: 在入口门内等待其它提出申请的进程都进入入口门
  - 3: 正在进入入口门
  - 4: 入口门关闭，在等候室里等待进入临界区，或正在访问临界区

可以把这些*flag*变量表示为一个数组，共有n个元素。每个进程只写属于自己的*flag*数组元素，只读取其它线程的*flag*数组元素。这种“单独写”策略有助于提高cache性能。入口门的状态由所有的*flag*变量共同确定。

算法的伪代码实现:

``` Python
#进入临界区的协议：
flag[self] ← 1                    #站在入口门外，申请进入等候室
await_until(all flag[1..N] ∈ {0, 1, 2}) #等待入口门打开。即不存在有进程处于3、4状态，包括正在进门、正在使用临界区
flag[self] ← 3                    #站在入口门处，即正在进入。
if any flag[1..N] = 1:            #如果还有在入口门外等待进入的线程
    flag[self] ← 2                #把自己置为在入口门内，等待所有提出申请的线程都完成进入等候室
    await_until(any flag[1..N] = 4)     #等待最后进门的线程关闭入口门

flag[self] ← 4                    #门处于关闭状态，线程在等候室
await_until(all flag[1..self-1] ∈ {0, 1})   #等待所有具有更高优先级的线程访问完临界区，退出等候室

#这里是临界区
#...

#退出临界区的协议
await_until(all flag[self+1..N] ∈ {0, 1, 4}) #确保所有比自己优先级低的已经通过入口门的线程都进入了等候室
flag[self] ← 0 #离开等候室，如果自己是最后离开的，则入口门被打开
```

上述伪代码中的"all"与"any"分别表示"所有"与"存在".

该算法容易直观理解其正确性。但是其正确性的[形式验证比较难](https://zh.wikipedia.org/wiki/形式验证 "wikilink")。一些文献给出了形式验证\[5\]\[6\].

## 参考文献

## 参见

  - [Peterson算法](../Page/Peterson算法.md "wikilink")
  - [Lamport面包店算法](../Page/Lamport面包店算法.md "wikilink")
  - [信号量](../Page/信号量.md "wikilink")

[Category:并发控制算法](https://zh.wikipedia.org/wiki/Category:并发控制算法 "wikilink")

1.
2.
3.
4.
5.
6.