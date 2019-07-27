**Peterson算法**是一个实现[互斥锁](../Page/互斥锁.md "wikilink")的[并发程序设计](https://zh.wikipedia.org/wiki/并发程序设计 "wikilink")[算法](../Page/算法.md "wikilink")，可以控制两个进程访问一个共享的单用户资源而不发生访问冲突。Gary
L. Peterson于1981年提出此算法\[1\] \[2\]。

## 算法概要

Peterson算法是基于双线程互斥访问的LockOne与LockTwo算法而来。\[3\]LockOne算法使用一个flag布尔数组，LockTwo使用一个turn的整型量，都实现了互斥，但是都存在死锁的可能。Peterson算法把这两种算法结合起来，完美地用软件实现了双线程互斥问题。

算法使用两个控制变量*flag*与*turn*.
其中*flag\[n\]*的值为真，表示ID号为n的进程希望进入该[临界区](https://zh.wikipedia.org/wiki/临界区 "wikilink").
变量*turn*保存有权访问共享资源的进程的ID号.

<center>

<table>
<tbody>
<tr class="odd">
<td><div class="sourceCode" id="cb1"><pre class="sourceCode cpp"><code class="sourceCode cpp"><span id="cb1-1"><a href="#cb1-1"></a><span class="co">//flag[] is boolean array; and turn is an integer</span></span>
<span id="cb1-2"><a href="#cb1-2"></a>flag[<span class="dv">0</span>]   = <span class="kw">false</span>;</span>
<span id="cb1-3"><a href="#cb1-3"></a>flag[<span class="dv">1</span>]   = <span class="kw">false</span>;</span>
<span id="cb1-4"><a href="#cb1-4"></a><span class="dt">int</span> turn;</span></code></pre></div></td>
</tr>
<tr class="even">
<td><div class="sourceCode" id="cb2"><pre class="sourceCode cpp"><code class="sourceCode cpp"><span id="cb2-1"><a href="#cb2-1"></a>P0: flag[<span class="dv">0</span>] = <span class="kw">true</span>;</span>
<span id="cb2-2"><a href="#cb2-2"></a>    turn = <span class="dv">1</span>;</span>
<span id="cb2-3"><a href="#cb2-3"></a>    <span class="cf">while</span> (flag[<span class="dv">1</span>] == <span class="kw">true</span> &amp;&amp; turn == <span class="dv">1</span>)</span>
<span id="cb2-4"><a href="#cb2-4"></a>    {</span>
<span id="cb2-5"><a href="#cb2-5"></a>        <span class="co">// busy wait</span></span>
<span id="cb2-6"><a href="#cb2-6"></a>    }</span>
<span id="cb2-7"><a href="#cb2-7"></a>    <span class="co">// critical section</span></span>
<span id="cb2-8"><a href="#cb2-8"></a>    ...</span>
<span id="cb2-9"><a href="#cb2-9"></a>    <span class="co">// end of critical section</span></span>
<span id="cb2-10"><a href="#cb2-10"></a>    flag[<span class="dv">0</span>] = <span class="kw">false</span>;</span></code></pre></div></td>
</tr>
</tbody>
</table>

</center>

该算法满足解决临界区问题的三个必须标准：互斥访问, 进入（即不死锁）, 有限等待（即不饿死）.\[4\]

### 互斥访问

P0与P1显然不会同时在临界区:
如果进程P0在临界区内，那么或者flag\[1\]为假(意味着P1已经离开了它的临界区)，或者turn为0(意味着P1只能在临界区外面等待，不能进入临界区).

### 空闲让进

进入(Progress)定义为：如果没有进程处于临界区内且有进程希望进入临界区, 则只有那些不处于剩余区(remainder
section)的进程可以参与到哪个进程获得进入临界区这个决定中，且这个决定不能无限推迟。剩余区是指进程已经访问了临界区，并已经执行完成退出临界区的代码，即该进程当前的状态与临界区关系不大。

### 有限等待

有限等待(Bounded
waiting)意味着一个进程在提出进入临界区请求后，只需要等待临界区被使用有上限的次数后，该进程就可以进入临界区。\[5\]即进程不论其优先级多低，不应该饿死(starvation)在该临界区入口处。Peterson算法显然让进程等待不超过1次的临界区使用，即可获得权限进入临界区。

## 注解

Peterson算法不需要原子(atomic)操作，即它是纯软件途径解决了互斥锁的实现。但需要注意限制CPU对内存的访问顺序的优化改变。

## 扩展到N个线程互斥访问一个资源的filter算法

``` cpp
// initialization
level[N] = { -1 };     // current level of processes 0...N-1
waiting[N-1] = { -1 }; // the waiting process of each level 0...N-2

// code for process #i
for(l = 0; l < N-1; ++l) {
    level[i] = l;
    waiting[l] = i;
    while(waiting[l] == i &&
          (there exists k ≠ i, such that level[k] ≥ l)) {
        // busy wait
    }
}

// critical section

level[i] = -1; // exit section
```

数组level表示每个线程的等待级别，最小为0，最高为N-1，-1表示未设置。数组waiting模拟了一个阻塞（忙等待）的线程队列，从位置0为入队列，位置越大则入队列的时间越长。每个线程为了进入临界区，需要在队列的每个位置都经过一次，如果没有更高优先级的线程（考察数组level），cd
或者被后入队列的线程推着走（上述程序waiting\[l\] ≠ i），则当前线程在队列中向前走过一个位置。可见该算法满足互斥性。

由filter算法去反思Peterson算法，可见其中的flags数组表示两个进程的等待级别，而turn变量则是阻塞（忙等待）的线程队列，这个队列只需要容纳一个元素。

## 参考文献

## 参见

  - [Dekker算法](https://zh.wikipedia.org/wiki/Dekker算法 "wikilink")
  - [Eisenberg_&_McGuire算法](https://zh.wikipedia.org/wiki/Eisenberg_&_McGuire算法 "wikilink")
  - [Lamport面包店算法](../Page/Lamport面包店算法.md "wikilink")
  - [Szymanski算法](../Page/Szymanski算法.md "wikilink")
  - [信号量](../Page/信号量.md "wikilink")

[Category:并发控制算法](https://zh.wikipedia.org/wiki/Category:并发控制算法 "wikilink")

1.  G. L. Peterson: "Myths About the Mutual Exclusion Problem",
    *Information Processing Letters* 12(3) 1981, 115–116

2.  As discussed in *Operating Systems Review*, January 1990 ("Proof of
    a Mutual Exclusion Algorithm", M Hofri).

3.  Maurice Herlihy, Nir Shavit: The art of multiprocessor
    programming,§2.3.3 Peterson Lock, Elsevier Publisher, 2008.

4.  Silberschatz. Operating Systems Concepts: Seventh Edition. John
    Wiley and Sons, 2005., Pages 194

5.