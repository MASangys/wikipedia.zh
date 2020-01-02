> 本文内容由[POSIX线程](https://zh.wikipedia.org/wiki/POSIX线程)转换而来。


**POSIX线程**（，常被縮寫為）是[POSIX的](https://zh.wikipedia.org/wiki/POSIX "wikilink")[线程](../Page/线程.md "wikilink")标准，定义了创建和操纵线程的一套[API](https://zh.wikipedia.org/wiki/Application_programming_interface "wikilink")。

实现POSIX 线程标准的库常被称作**Pthreads**，一般用于[Unix-like](https://zh.wikipedia.org/wiki/Unix-like "wikilink") POSIX 系统，如[Linux](../Page/Linux.md "wikilink")、 [Solaris](../Page/Solaris.md "wikilink")。但是[Microsoft Windows上的实现也存在](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，例如直接使用Windows API实现的第三方库pthreads-w32；而利用Windows的SFU/SUA子系统，则可以使用微软提供的一部分原生POSIX API。

## API具体内容

Pthreads定义了一套C语言的类型、函数与常量，它以[`pthread.h`](http://opengroup.org/onlinepubs/007908799/xsh/pthread.h.html)头文件和一个线程库实现。

Pthreads API中大致共有100个函数调用，全都以"pthread_"开头，并可以分为四类：

  - 线程管理，例如创建线程，等待(join)线程，查询线程状态等。
  - [互斥锁](../Page/互斥锁.md "wikilink")（Mutex）：创建、摧毁、锁定、解锁、设置属性等操作
  - [条件变量](https://zh.wikipedia.org/wiki/条件变量 "wikilink")（Condition Variable）：创建、摧毁、等待、通知、设置与查询属性等操作
  - 使用了互斥锁的线程间的[同步管理](https://zh.wikipedia.org/wiki/同步_\(計算機科學\) "wikilink")

POSIX的[Semaphore](https://zh.wikipedia.org/wiki/信号标 "wikilink") API可以和Pthreads协同工作，但这并不是Pthreads的标准。因而这部分API是以"sem_"打头，而非"pthread_"。

### 数据类型

  - `pthread_t`：线程句柄.出于移植目的，不能把它作为整数处理，应使用函数pthread_equal()对两个线程ID进行比较。获取自身所在线程id使用函数pthread_self()。
  - `pthread_attr_t`：线程属性。主要包括scope属性、detach属性、堆栈地址、堆栈大小、优先级。主要属性的意义如下：
      - __detachstate，表示新线程是否与进程中其他线程脱离同步。如果设置为PTHREAD_CREATE_DETACHED，则新线程不能用pthread_join()来同步，且在退出时自行释放所占用的资源。缺省为PTHREAD_CREATE_JOINABLE状态。可以在线程创建并运行以后用pthread_detach()来设置。一旦设置为PTHREAD_CREATE_DETACHED状态，不论是创建时设置还是运行时设置，则不能再恢复到PTHREAD_CREATE_JOINABLE状态。
      - __schedpolicy，表示新线程的调度策略，包括SCHED_OTHER（正常、非实时）、SCHED_RR（实时、轮转法）和SCHED_FIFO（实时、先入先出）三种，缺省为SCHED_OTHER，后两种调度策略仅对超级用户有效。运行时可以用过pthread_setschedparam()来改变。
      - __schedparam，一个struct sched_param结构，目前仅有一个sched_priority整型变量表示线程的运行优先级。这个参数仅当调度策略为实时（即SCHED_RR或SCHED_FIFO）时才有效，并可以在运行时通过pthread_setschedparam()函数来改变，缺省为0。系统支持的最大和最小的优先级值可以用函数sched_get_priority_max和sched_get_priority_min得到。
      - __inheritsched，有两种值可供选择：PTHREAD_EXPLICIT_SCHED和PTHREAD_INHERIT_SCHED，前者表示新线程使用显式指定调度策略和调度参数（即attr中的值），而后者表示继承调用者线程的值。缺省为PTHREAD_EXPLICIT_SCHED。
      - __scope，表示线程间竞争CPU的范围，也就是说线程优先级的有效范围。POSIX的标准中定义了两个值：PTHREAD_SCOPE_SYSTEM和PTHREAD_SCOPE_PROCESS，前者表示与系统中所有线程一起竞争CPU时间，后者表示仅与同进程中的线程竞争CPU。目前LinuxThreads仅实现了PTHREAD_SCOPE_SYSTEM一值。
  - `pthread_barrier_t`：[同步屏障数据类型](https://zh.wikipedia.org/wiki/同步屏障 "wikilink")
  - `pthread_mutex_t`：[mutex数据类型](https://zh.wikipedia.org/wiki/mutex "wikilink")
  - `pthread_cond_t`：[条件变量数据类型](https://zh.wikipedia.org/wiki/条件变量 "wikilink")

### 函数

线程操纵函数（简介起见，省略参数）:

  - `pthread_create()`：创建一个线程
  - `pthread_exit()`：终止当前线程
  - `pthread_cancel()`：请求中断另外一个线程的运行。被请求中断的线程会继续运行，直至到达某个**取消点**(Cancellation Point)。取消点是线程检查是否被取消并按照请求进行动作的一个位置。POSIX 的取消类型（Cancellation Type）有两种，一种是延迟取消(PTHREAD_CANCEL_DEFERRED)，这是系统默认的取消类型，即在线程到达取消点之前，不会出现真正的取消；另外一种是异步取消(PHREAD_CANCEL_ASYNCHRONOUS)，使用异步取消时，线程可以在任意时间取消。系统调用的取消点实际上是函数中取消类型被修改为异步取消至修改回延迟取消的时间段。几乎可以使线程挂起的库函数都会响应CANCEL信号，终止线程，包括sleep、delay等延时函数。
  - `pthread_join()`：阻塞当前的线程，直到另外一个线程运行结束
  - `pthread_kill()`：向指定ID的线程发送一个[信号](../Page/Signal.h.md "wikilink")，如果线程不处理该信号，则按照信号默认的行为作用于整个进程。信号值0为保留信号，作用是根据函数的返回值判断线程是不是还活着。
  - `pthread_cleanup_push()`：线程可以安排异常退出时需要调用的函数，这样的函数称为线程清理程序，线程可以建立多个清理程序。线程清理程序的入口地址使用栈保存，实行先进后处理原则。由pthread_cancel或pthread_exit引起的线程结束，会次序执行由pthread_cleanup_push压入的函数。线程函数执行return语句返回不会引起线程清理程序被执行。
  - `pthread_cleanup_pop()`：以非0参数调用时，引起当前被弹出的线程清理程序执行。
  - `pthread_setcancelstate()`：允许或禁止取消另外一个线程的运行。
  - `pthread_setcanceltype()`：设置线程的取消类型为延迟取消或异步取消。

线程属性函数：

  - `pthread_attr_init()`：初始化线程属性变量。运行后，pthread_attr_t结构所包含的内容是操作系统支持的线程的所有属性的默认值。
  - `pthread_attr_setdetachstate()`：设置线程属性变量的detachstate属性（决定线程在终止时是否可以被joinable）
  - `pthread_attr_getdetachstate()`：获取脱离状态的属性
  - `pthread_attr_setscope()`：设置线程属性变量的__scope属性
  - `pthread_attr_setschedparam()`：设置线程属性变量的schedparam属性，即调用的优先级。
  - `pthread_attr_getschedparam()`：获取线程属性变量的schedparam属性，即调用的优先级。
  - `pthread_attr_destroy()`：删除线程的属性，用无效值覆盖

[mutex函数](https://zh.wikipedia.org/wiki/mutex "wikilink")：

  - `pthread_mutex_init()` 初始化互斥锁
  - `pthread_mutex_destroy()` 删除互斥锁
  - `pthread_mutex_lock()`：占有互斥锁（阻塞操作）
  - `pthread_mutex_trylock()`：试图占有互斥锁（不阻塞操作）。即，当互斥锁空闲时，将占有该锁；否则，立即返回。
  - `pthread_mutex_unlock()`: 释放互斥锁
  - `pthread_mutexattr_()`: 互斥锁属性相关的函数

[条件变量函数](https://zh.wikipedia.org/wiki/条件变量 "wikilink")：

  - `pthread_cond_init()`：初始化条件变量
  - `pthread_cond_destroy()`：销毁条件变量
  - `pthread_cond_signal()`: 发送一个[信号给正在当前条件变量的线程队列中处于阻塞等待状态的线程](../Page/Signal.h.md "wikilink")，使其脱离阻塞状态，唤醒后继续执行。如果没有线程处在阻塞等待状态，pthread_cond_signal也会成功返回。一般只给一个阻塞状态的线程发信号。假如有多个线程正在阻塞等待当前条件变量，则根据各等待线程优先级的高低确定哪个线程接收到信号开始继续执行。如果各线程优先级相同，则根据等待时间的长短来确定哪个线程获得信号。但pthread_cond_signal在多处理器上可能同时唤醒多个线程，当只能让一个被唤醒的线程处理某个任务时，其它被唤醒的线程就需要继续wait。POSIX规范要求pthread_cond_signal至少唤醒一个pthread_cond_wait上的线程，有些实现为了简便，在单处理器上也会唤醒多个线程。所以最好对pthread_cond_wait()使用while循环对条件变量是否满足做条件判断。
  - `pthread_cond_wait()`: 等待条件变量的特殊条件发生；pthread_cond_wait() 必须与一个pthread_mutex配套使用。该函数调用实际上依次做了3件事：对当前pthread_mutex解锁、把当前线程挂起到当前条件变量的线程队列、被其它线程的信号唤醒后对当前pthread_mutex申请加锁。如果线程收到一个信号被唤醒，将被配套的互斥锁重新锁住，pthread_cond_wait() 函数将不返回直到线程获得配套的互斥锁。需要注意的是，一个条件变量不应该与多个互斥锁配套使用。
  - `pthread_cond_broadcast()`: 某些应用，如[线程池](../Page/线程池.md "wikilink")，pthread_cond_broadcast唤醒全部线程，但我们通常只需要一部分线程去做执行任务，所以其它的线程需要继续wait.
  - `pthread_condattr_()`: 条件变量属性相关的函数

线程私有存储（Thread-local storage）:

  - `pthread_key_create()`: 分配用于标识进程中线程特定数据的pthread_key_t类型的键
  - `pthread_key_delete()`: 销毁现有线程特定数据键
  - `pthread_setspecific()`: 为指定线程的特定数据键设置绑定的值
  - `pthread_getspecific()`: 获取调用线程的键绑定值，并将该绑定存储在 value 指向的位置中

同步屏障函数

  - `pthread_barrier_init()`: 同步屏障初始化
  - `pthread_barrier_wait()`:
  - `pthread_barrier_destory()`:

其它多线程同步函数：

  - `pthread_rwlock_*()`: 读写锁

工具函数：

  - `pthread_equal()`: 对两个线程的线程标识号进行比较
  - `pthread_detach()`: 分离线程
  - `pthread_self()`: 查询线程自身线程标识号
  - `pthread_once()`： 某些需要仅执行一次的函数。其中第一个参数为pthread_once_t类型，是内部实现的互斥锁，保证在程序全局仅执行一次。

[信号量](../Page/信号量.md "wikilink")函数，包含在`semaphore.h`中：

  - sem_open：创建或者打开已有的命名信号量。可分为二值信号量与计数信号量。命名信号量可以在进程间共享使用。
  - sem_close：关闭一个信号灯，但没有将它从系统中删除。命名信号灯是随内核持续的，即使当前没有进程打开着某个信号灯，它的值仍然保持。
  - sem_unlink：从系统中删除信号灯。
  - sem_getvalue：返回所指定信号灯的当前值。如果该信号灯当前已上锁，那么返回值或为0，或为某个负数，其绝对值就是等待该信号灯解锁的线程数。
  - sem_wait：申请共享资源，所指定信号灯的值如果大于0，那就将它减1并立即返回，就可以使用申请来的共享资源了。如果该值等于0，调用线程就被进入睡眠状态，直到该值变为大于0，这时再将它减1，函数随后返回。sem_wait操作必须是原子操作。
  - sem_trywait：申请共享资源，当所指定信号灯的值已经是0时，后者并不将调用线程投入睡眠。相反，它返回一个EAGAIN错误。
  - sem_post：释放共享资源。与sem_wait恰相反。
  - sem_init：初始化非命名（内存）信号量
  - sem_destroy：摧毁非命名信号量

[共享内存函数](https://zh.wikipedia.org/wiki/共享内存 "wikilink")，包含在`sys/mman.h`中，链接时使用rt库：

  - mmap：把一个文件或一个POSIX共享内存区对象映射到调用进程的地址空间。使用该函数的目的： 1.使用普通文件以提供内存映射I/O 2.使用特殊文件以提供匿名内存映射。 3.使用shm_open以提供无亲缘关系进程间的Posix共享内存区。
  - munmap： 删除一个映射关系
  - msync：文件与内存同步函数
  - shm_open：创建或打开共享内存区
  - shm_unlink：删除一个共享内存区对象的名字，删除一个名字仅仅防止后续的open,msq_open或sem_open调用取得成功。
  - ftruncate:调整文件或共享内存区大小
  - fstat来获取有关该对象的信息

## 例子

C中使用 Pthreads的示例：

``` c
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <pthread.h>

static void wait(void)
{
    time_t start_time = time(NULL);

    while (time(NULL) == start_time)
    {
        /* do nothing except chew CPU slices for up to one second */
    }
}

static void *thread_func(void *vptr_args)
{
    int i;

    for (i = 0; i < 20; i++)
    {
        fputs("  b\n", stderr);
        wait();
    }

    return NULL;
}

int main(void)
{
    int i;
    pthread_t thread;

    if (pthread_create(&thread, NULL, thread_func, NULL) != 0)
    {
        return EXIT_FAILURE;
    }

    for (i = 0; i < 20; i++)
    {
        puts("a");
        wait();
    }

    if (pthread_join(thread, NULL) != 0)
    {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
```

这段程序创建了一个新线程，打印含有“b”的行，主线程打印含有“a”的行。当两个线程相互切换执行时输出结果为'a'和'b'交替出现。

## 参考

  - ：*Programming with POSIX Threads*, Addison-Wesley, ISBN 0-201-63392-2

  - ，[Dick Buttlar](https://zh.wikipedia.org/wiki/Dick_Buttlar "wikilink")，[Jacqueline Proulx Farell](https://zh.wikipedia.org/wiki/Jacqueline_Proulx_Farell "wikilink")：*Pthreads Programming*, O'Reilly & Associates, ISBN 1-56592-115-1

  - ：*Programming with UNIX Threads*, John Wiley & Sons, ISBN 0-471-13751-0

  - and ，*UNIX Systems Programming*, Prentice-Hall, ISBN 0-13-042411-0

## 参见

  - [Native POSIX Thread Library](../Page/Native_POSIX_Thread_Library.md "wikilink") (NPTL)

  -
  -
  - [GNU可移植线程库](../Page/GNU可移植线程库.md "wikilink")

  -
## 外部链接

  - [Pthread Win-32](http://sources.redhat.com/pthreads-win32/)，Basic Programming
  - [Pthreads Tutorial](http://www.llnl.gov/computing/tutorials/pthreads/)
  - [C/C++ Tutorial: using Pthreads](http://yolinux.com/TUTORIALS/LinuxTutorialPosixThreads.html)
  - Article "[POSIX threads explained](http://www.ibm.com/developerworks/library/l-posix1/)" by [Daniel Robbins](https://zh.wikipedia.org/wiki/Daniel_Robbins "wikilink") ([Gentoo Linux创建者](../Page/Gentoo_Linux.md "wikilink"))
  - Interview "[Ten Questions with David Butenhof about Parallel Programming and POSIX Threads](http://www.thinkingparallel.com/2007/04/11/ten-questions-with-david-butenhof-about-parallel-programming-and-posix-threads/)" by [Michael Suess](https://zh.wikipedia.org/wiki/Michael_Suess "wikilink")
  - [Open Source POSIX Threads for Win32](http://sources.redhat.com/pthreads-win32/)
  - [The Open Group Base Specifications Issue 6, IEEE Std 1003.1](http://www.opengroup.org/onlinepubs/007904975/basedefs/pthread.h.html)
  - [GNU Portable threads](http://www.gnu.org/software/pth/)
  - [Pthreads Presentation at 2007 OSCON (O'Reilly Open Source Convention) by Adrien Lamothe. An overview of Pthreads with current trends.](http://conferences.oreillynet.com/presentations/os2007/os_lamothe.pdf)

[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink") [Category:IEEE标准](https://zh.wikipedia.org/wiki/Category:IEEE标准 "wikilink") [Category:并发计算](https://zh.wikipedia.org/wiki/Category:并发计算 "wikilink")