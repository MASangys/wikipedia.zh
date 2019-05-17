**fetch-and-add**是[CPU指令](https://zh.wikipedia.org/wiki/CPU "wikilink")（FAA），对内存位置执行增加一个数量的原子操作。具体内容为：

  -
    令 变为，其中是个内存位置，是个值

FAA可用于实现[互斥锁](../Page/互斥锁.md "wikilink")、[信号量](../Page/信号量.md "wikilink")。

1991年，证明fetch-and-add具有一个有限的数，能解决不超过两个并发进程的无等待consensus问题。\[1\]

## 用途

下述伪代码用[ticket
lock算法实现了互斥锁](https://zh.wikipedia.org/wiki/ticket_lock "wikilink")：

` `**`record`**` locktype {`
`    `*`int`*` ticketnumber`
`    `*`int`*` turn`
` }`
` `**`procedure`**` LockInit( `*`locktype`*`* lock ) {`
`    lock.ticketnumber := 0`
`    lock.turn := 0`
` }`
` `**`procedure`**` Lock( `*`locktype`*`* lock ) {`
`    `*`int`*` myturn := FetchAndIncrement( &lock.ticketnumber ) //must be atomic, since many threads might ask for a lock at the same time`
`    `**`while`**` lock.turn ≠ myturn `
`        `**`skip`**` // `*`spin``   ``until``   ``lock``   ``is``
 ``acquired`*
` }`
` `**`procedure`**` UnLock( `*`locktype`*`* lock ) {`
`    FetchAndIncrement( &lock.turn ) //this need not be atomic, since only the possessor of the lock will execute this`
` }`

## 硬件软件支持

[C++11标准定义了原子的](../Page/C++11.md "wikilink")函数。\[2\]
GCC把它作为对C语言的扩展。\[3\]

### x86实现

从[8086起](https://zh.wikipedia.org/wiki/8086 "wikilink")，以内存为目的操作数的ADD指令就是fetch-and-add。如果使用LOCK前缀，那么它对多处理器是原子操作。但不能返回原值，直至[486引入XADD指令](https://zh.wikipedia.org/wiki/80486 "wikilink")。

下述GCC编译的[C语言函数](https://zh.wikipedia.org/wiki/C语言 "wikilink")，在x86的32位与64位平台上，使用扩展asm语法：

``` c
  static inline int fetch_and_add(int* variable, int value)
  {
      __asm__ volatile("lock; xaddl %0, %1"
        : "+r" (value), "+m" (*variable) // input+output
        : // No input-only
        : "memory"
      );
      return value;
  }
```

## 参见

  - [Test-and-set](https://zh.wikipedia.org/wiki/Test-and-set "wikilink")
  - [Test and
    Test-and-set](https://zh.wikipedia.org/wiki/Test_and_Test-and-set "wikilink")
  - [Compare-and-swap](https://zh.wikipedia.org/wiki/Compare-and-swap "wikilink")
  - [Load-Link/Store-Conditional](https://zh.wikipedia.org/wiki/Load-Link/Store-Conditional "wikilink")

## 参考文献

<references/>

[Category:協同控制](https://zh.wikipedia.org/wiki/Category:協同控制 "wikilink")

1.
2.
3.