在[程序设计](../Page/程序设计.md "wikilink")中，尤其是在[C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[C++](../Page/C++.md "wikilink")、[C\#和](../Page/C♯.md "wikilink")[Java](../Page/Java.md "wikilink")语言中，使用volatile关键字声明的[变量或](../Page/变量_\(程序设计\).md "wikilink")[对象通常具有与优化](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")、多线程相关的特殊属性。通常，**volatile**关键字用来阻止（伪）编译器认为的无法“被代码本身”改变的代码（变量/对象）进行优化。如在C语言中，**volatile**关键字可以用来提醒编译器它后面所定义的变量随时有可能改变，因此编译后的程序每次需要存储或读取这个变量的时候，都会直接从变量地址中读取数据。如果没有volatile关键字，则编译器可能优化读取和存储，可能暂时使用寄存器中的值，如果这个变量由别的程序更新了的话，将出现不一致的现象。

在C环境中，**volatile**关键字的真实定义和适用范围经常被误解。虽然C++、C\#和Java都保留了C中的**volatile**关键字，但在这些编程语言中**volatile**的用法和语义却大相径庭。

## C和C++中的volatile

在C，以及C++中，volatile关键字的作用\[1\]：

  - 允许访问内存映射设备
  - 允许在[`setjmp`和`longjmp`之间使用变量](https://zh.wikipedia.org/wiki/setjmp.h "wikilink")
  - 允许在信号处理函数中使用sig_atomic_t变量

根据相关的标准（C,C++,POSIX,WIN32)和目前绝大多数实现，对volatile变量的操作并不是原子的，也不能用来为线程建立严格的happens-before关系。`volatile`关键字就像便携式线程构建一样基本没什么用处\[2\]\[3\]\[4\]\[5\]\[6\]。

[Visual C++](https://zh.wikipedia.org/wiki/Visual_C++ "wikilink") 2005 保证volatile变量是一种[内存屏障](../Page/内存屏障.md "wikilink")，阻止编译器和CPU重新安排读入和写出语义。\[7\] 在先前版本的Visual C++则没有此类保证。在其他方面将指针定义为volatile可能会影响程序的性能。例如，如果指针定义对代码的其他地方可见，强制编译器将指针视为屏障，就会降低程序的性能，这是完全不必要的。

### 对用户定义的非基本数据类型使用volatile

基本类型的对象用volatile修饰后，仍旧支持所有的操作（加、乘、赋值等）。但是，用户定义的非基本类型（class、struct、union）的对象被volatile修饰后，具有不同行为：

  - 只能调用volatile成员函数；即只能访问它的接口的子集。
  - 只能通过const_cast运算符转为没有volatile修饰的普通对象。即由此可以获得对类型接口的完全访问。
  - volatile性质会传递给它的数据成员。

### volatile与多线程语义

[临界区内部](https://zh.wikipedia.org/wiki/临界区 "wikilink")，通过[互斥锁](../Page/互斥锁.md "wikilink")（mutex）保证只有一个线程可以访问，因此临界区内的变量不需要是volatile的；而在临界区外部，被多个线程访问的变量应为volatile，这也符合了volatile的原意：防止编译器[缓存](../Page/缓存.md "wikilink")（cache）了被多个线程并发用到的变量。volatile对象只能调用volatile成员函数，这意味着应仅对多线程并发安全的成员函数加volatile修饰，这种volatile成员函数可自由用于多线程并发或者[重入而不必使用临界区](../Page/可重入.md "wikilink")；非volatile的成员函数意味着单线程环境，只应在临界区内调用。在多线程编程中可以令该数据对象的所有成员函数均为普通的非volatile修饰，从而保证了仅在进入临界区（即获得了互斥锁）后把该对象显式转为普通对象之后才能调用该数据对象的成员函数。这种用法避免了编程者的失误——在临界区以外访问共享对象的内容：

``` cpp
template <typename T> class LockingPtr{
  public:
    LockingPtr(volatile T& obj, Mutex& mtx)
        :pObj_(const_cast<T*>(&obj) ),  pMtx_(&mtx)
        {  mtx.Lock();  }
    ~LockingPtr()
        { pMtx->Unlock();  }
    T& operator*()
        {  return *pObj_;  }
    T* operator->()
        {  return pObj_;   }
  private:
    T* pObj_;
    Mutex* pMtx_;
    LockingPtr(const LockingPtr&);
    LockingPtr& operator=(const LockingPtr&);
}
```

对于内建类型，不应直接用volatile，而应把它包装为结构的成员，就可以保护了volatile的结构对象不被不受控制地访问。

### C语言中MMIO的例子

在这里例子中，代码将`foo`的值设置为`0`。然后开始不断地[轮询它的值直到它变成](https://zh.wikipedia.org/wiki/轮询 "wikilink")`255`：

``` c
static int foo;

void bar(void) {
    foo = 0;

    while (foo != 255)
         ;
}
```

一个[执行优化的编译器会提示没有代码能修改](https://zh.wikipedia.org/wiki/执行优化的编译器 "wikilink")`foo`的值，并假设它永远都只会是`0`.因此编译器将用类似下列的[无限循环替换函数体](https://zh.wikipedia.org/wiki/无限循环 "wikilink")：

``` c
void bar_optimized(void) {
    foo = 0;

    while (true)
         ;
}
```

但是，foo可能指向一个随时都能被计算机系统其他部分修改的地址，例如一个连接到[中央处理器](../Page/中央处理器.md "wikilink")的设备的[硬件寄存器](https://zh.wikipedia.org/wiki/硬件寄存器 "wikilink")，上面的代码永远检测不到这样的修改。如果不使用volatile关键字，编译器将假设当前程序是系统中唯一能改变这个值部分（这是到目前为止最广泛的一种情况）。 为了阻止编译器像上面那样优化代码，需要使用volatile关键字：

``` c
static volatile int foo;

void bar (void) {
    foo = 0;

    while (foo != 255)
        ;
}
```

这样修改以后循环条件就不会被优化掉，当值改变的时候系统将会检测到。

### C语言中的优化对比

下面的C程序和后面的汇编代码展示了`volatile`关键字如何影响编译器的输出。这里使用的编译器是GCC。

<table>
<thead>
<tr class="header">
<th><p>汇编对照</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>不使用volatile</p></td>
</tr>
<tr class="even">
<td><div class="sourceCode" id="cb1"><pre class="sourceCode c"><code class="sourceCode c"><span id="cb1-1"><a href="#cb1-1"></a><span class="pp">#include </span><span class="im">&lt;stdio.h&gt;</span></span>
<span id="cb1-2"><a href="#cb1-2"></a></span>
<span id="cb1-3"><a href="#cb1-3"></a><span class="dt">int</span> main() {</span>
<span id="cb1-4"><a href="#cb1-4"></a>    <span class="dt">int</span> a = <span class="dv">10</span>, b = <span class="dv">100</span>, c = <span class="dv">0</span>, d = <span class="dv">0</span>;</span>
<span id="cb1-5"><a href="#cb1-5"></a></span>
<span id="cb1-6"><a href="#cb1-6"></a>    printf(<span class="st">&quot;%d&quot;</span>, a + b);</span>
<span id="cb1-7"><a href="#cb1-7"></a></span>
<span id="cb1-8"><a href="#cb1-8"></a>    a = b;</span>
<span id="cb1-9"><a href="#cb1-9"></a>    c = b;</span>
<span id="cb1-10"><a href="#cb1-10"></a>    d = b;</span>
<span id="cb1-11"><a href="#cb1-11"></a></span>
<span id="cb1-12"><a href="#cb1-12"></a>    printf(<span class="st">&quot;%d&quot;</span>, c + d);</span>
<span id="cb1-13"><a href="#cb1-13"></a></span>
<span id="cb1-14"><a href="#cb1-14"></a>    <span class="cf">return</span> <span class="dv">0</span>;</span>
<span id="cb1-15"><a href="#cb1-15"></a>}</span></code></pre></div></td>
</tr>
<tr class="odd">
<td><p>gcc -O3 -S without.c -o without.s</p></td>
</tr>
<tr class="even">
<td><div class="sourceCode" id="cb2"><pre class="sourceCode asm"><code class="sourceCode fasm"><span id="cb2-1"><a href="#cb2-1"></a>    .<span class="dt">file</span>   <span class="st">&quot;without.c&quot;</span></span>
<span id="cb2-2"><a href="#cb2-2"></a>    .<span class="bu">section</span>    .rodata.str1<span class="fl">.1</span>,<span class="st">&quot;aMS&quot;</span>,@progbits,<span class="dv">1</span></span>
<span id="cb2-3"><a href="#cb2-3"></a><span class="fu">.LC0:</span></span>
<span id="cb2-4"><a href="#cb2-4"></a>    .string <span class="st">&quot;%d&quot;</span></span>
<span id="cb2-5"><a href="#cb2-5"></a>    .text</span>
<span id="cb2-6"><a href="#cb2-6"></a>    .p2align <span class="dv">4</span>,,<span class="dv">15</span></span>
<span id="cb2-7"><a href="#cb2-7"></a>.globl main</span>
<span id="cb2-8"><a href="#cb2-8"></a>    .type   main, @function</span>
<span id="cb2-9"><a href="#cb2-9"></a><span class="fu">main:</span></span>
<span id="cb2-10"><a href="#cb2-10"></a>    leal    <span class="dv">4</span>(%<span class="kw">esp</span>), %<span class="kw">ecx</span></span>
<span id="cb2-11"><a href="#cb2-11"></a>    andl    <span class="dv">$</span>-<span class="dv">16</span>, %<span class="kw">esp</span></span>
<span id="cb2-12"><a href="#cb2-12"></a>    pushl   <span class="dv">-4</span>(%<span class="kw">ecx</span>)</span>
<span id="cb2-13"><a href="#cb2-13"></a>    pushl   %<span class="kw">ebp</span></span>
<span id="cb2-14"><a href="#cb2-14"></a>    movl    %<span class="kw">esp</span>, %<span class="kw">ebp</span></span>
<span id="cb2-15"><a href="#cb2-15"></a>    pushl   %<span class="kw">ecx</span></span>
<span id="cb2-16"><a href="#cb2-16"></a>    subl<span class="bn">    $20, </span>%<span class="kw">esp</span></span>
<span id="cb2-17"><a href="#cb2-17"></a>    movl<span class="bn">    $110, </span><span class="dv">4</span>(%<span class="kw">esp</span>)</span>
<span id="cb2-18"><a href="#cb2-18"></a>    movl    <span class="dv">$</span>.LC0, (%<span class="kw">esp</span>)</span>
<span id="cb2-19"><a href="#cb2-19"></a>    <span class="bu">call</span>    printf</span>
<span id="cb2-20"><a href="#cb2-20"></a>    movl<span class="bn">    $200, </span><span class="dv">4</span>(%<span class="kw">esp</span>)</span>
<span id="cb2-21"><a href="#cb2-21"></a>    movl    <span class="dv">$</span>.LC0, (%<span class="kw">esp</span>)</span>
<span id="cb2-22"><a href="#cb2-22"></a>    <span class="bu">call</span>    printf</span>
<span id="cb2-23"><a href="#cb2-23"></a>    addl<span class="bn">    $20, </span>%<span class="kw">esp</span></span>
<span id="cb2-24"><a href="#cb2-24"></a>    xorl    %<span class="kw">eax</span>, %<span class="kw">eax</span></span>
<span id="cb2-25"><a href="#cb2-25"></a>    popl    %<span class="kw">ecx</span></span>
<span id="cb2-26"><a href="#cb2-26"></a>    popl    %<span class="kw">ebp</span></span>
<span id="cb2-27"><a href="#cb2-27"></a>    leal    <span class="dv">-4</span>(%<span class="kw">ecx</span>), %<span class="kw">esp</span></span>
<span id="cb2-28"><a href="#cb2-28"></a>    <span class="bu">ret</span></span>
<span id="cb2-29"><a href="#cb2-29"></a>    .size   main, .-main</span>
<span id="cb2-30"><a href="#cb2-30"></a>    .ident  <span class="st">&quot;GCC: (GNU) 4.2.1 20070719  [FreeBSD]&quot;</span></span></code></pre></div></td>
</tr>
</tbody>
</table>

## Java中的volatile

[Java](../Page/Java.md "wikilink")也支持`volatile`关键字，但它被用于其他不同的用途。当`volatile`用于一个作用域时，Java保证如下：

1.  （适用于Java所有版本）读和写一个volatile变量有全局的排序。也就是说每个[线程](../Page/线程.md "wikilink")访问一个volatile作用域时会在继续执行之前读取它的当前值，而不是（可能）使用一个缓存的值。(但是并不保证经常读写volatile作用域时读和写的相对顺序，也就是说通常这并不是有用的线程构建)。
2.  （适用于Java5及其之后的版本）volatile的读和写建立了一个happens-before关系，类似于申请和释放一个互斥锁<ref>

Section 17.4.4: Synchronization Order  </ref>。 使用`volatile`会比使用[锁更快](https://zh.wikipedia.org/wiki/锁_\(计算机科学\) "wikilink")，但是在一些情况下它不能工作。`volatile`使用范围在Java5中得到了扩展，特别是双重检查锁定现在能够正确工作\[8\]。

## Ada中的volatile

在[Ada](../Page/Ada.md "wikilink")中，比起关键字，`Volatile`标记更像是一种指令。“对于volatile对象而言，所有读和更新都会作为一个整体直接执行到内存”\[9\]。

## 参考

## 外部链接

  - [Ada Reference Manual C.6: Shared Variable Control](http://www.adaic.com/standards/05rm/html/RM-C-6.html)

[Category:C語言](https://zh.wikipedia.org/wiki/Category:C語言 "wikilink") [Category:变量](https://zh.wikipedia.org/wiki/Category:变量 "wikilink") [Category:協同控制](https://zh.wikipedia.org/wiki/Category:協同控制 "wikilink")

1.  *Publication on C++ standards committee website*; <http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2006/n2016.html>
2.  *Publication on C++ standards committee website*; <http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2006/n2016.html>
3.  *Volatile Keyword In Visual C++*; <http://msdn2.microsoft.com/en-us/library/12a04hfd.aspx>
4.  *Linux Kernel Documentation - Why the "volatile" type class should not be used*;
5.  *Volatile: Almost Useless for Multi-Threaded Programming (Intel Software Network)*;
6.  *C++ and the Perils of Double-Checked Locking*; <http://www.aristeia.com/Papers/DDJ_Jul_Aug_2004_revised.pdf>
7.  <http://msdn.microsoft.com/en-us/library/12a04hfd(VS.100>).aspx
8.
9.  "C.6 Shared Variable Control"