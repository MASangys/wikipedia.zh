> 本文内容由[Future与promise](https://zh.wikipedia.org/wiki/Future与promise)转换而来。


在[计算机科学](../Page/计算机科学.md "wikilink")中，**future**、**promise**、**delay**和**deferred**是指用于在某些并发编程语言中同步程序执行的构造。由于某些计算（或者网络请求）尚未结束，我们需要一个对象来代理这个未知的结果，于是就有了上述这些构造（future、promise等）。

*promise*一词由丹尼尔·福瑞得曼和David Wise在1976年提出，\[1\] Peter Hibbard称之为*eventual* 。\[2\] 1977年Henry Baker和Carl Hewitt在一篇论文中介绍了一个类似的概念*future*。\[3\]

术语*future*、*promise*、*delay*和*deferred*通常可以互换使用，而*future*与*promise*之间的使用差异，我们将在下面讨论。具体来说，当区分使用时，future是变量的*只读*占位符视图，而promise是可写的单赋值容器，用于设置future的值。 \[4\] 值得注意的是，无须指定可以设置其值的promise就可以定义future，并且不同的promise可以设置同一个future的值，尽管对于给定的future仅可以执行一次。在其他情况下，future和promise是一起创建的，并且相互关联：future是值，promise是设定值的函数——本质上是异步函数（promise）的返回值（future）。设置future的值的过程也称为*resolve*（解析）、*fulfil*（实现）或*bind*（绑定）它。

## 应用

future和promise起源于[函数式编程和相关范例](https://zh.wikipedia.org/wiki/函數程式語言 "wikilink")（如[逻辑编程](../Page/邏輯編程.md "wikilink") ），目的是将值（future）与其计算方式（promise）分离，从而允许更灵活地进行计算，特别是通过并行化。后来，它在[分布式计算](../Page/分布式计算.md "wikilink")中得到了应用 ，减少了通信往返的延迟。再后来，它变得更有用了，因为它允许以直接风格编写异步程序，而不是以连续传递风格的方式。

## 隐式与显式

对future的使用可能是*隐式的*（任何对future的使用都会自动获得它的值，它就像是普通的引用一样）或*显式的*（用户必须调用函数来获取值，例如[Java](../Page/Java.md "wikilink")中的或的`get`方法）。获得一个显式的future的值可以称为*stinging*或*forcing*。显式future可以作为库来实现，而隐式future则通常作为语言的一部分来实现。

最初的Baker和Hewitt论文描述了隐式future，它们在[角色模型和纯](https://zh.wikipedia.org/wiki/參與者模式 "wikilink")[面向对象编程语言](../Page/面向对象程序设计.md "wikilink")（如[Smalltalk](../Page/Smalltalk.md "wikilink")）中自然得到支持。Friedman和Wise的论文只描述了显式的future，可能反映了在老旧硬件上有效实施隐式future的困难。难点在于老旧硬件不能处理原始数据类型（如整数）的future。例如，add指令不会处理` 3 +  `*`future`*`  factorial(100000) ` 。在纯角色模型或面向对象语言中，这个问题可以通过发送*`future`*`  factorial(100000) `消息`+[3]`，它要求future自己加`3`并返回结果。请注意，无论`factorial(100000)`何时完成计算，消息传递方法都可以工作，而且不需要任何sting或force。

## promise流水线

在[分布式系统中使用future可以显著地减少延迟](../Page/分布式计算.md "wikilink")。例如，future让*promise流水线*成为了可能，\[5\]\[6\] 就像在E语言和Joule语言中实现的那样，在Argus语言中这也被称为*call-stream*\[7\]。

考虑一个涉及常规[远程过程调用的表达式](../Page/遠程過程調用.md "wikilink")，例如：

```
 t3 := ( x.a() ).c( y.b() )
```

可以扩展为

```
 t1 := x.a();
 t2 := y.b();
 t3 := t1.c(t2);
```

每个语句需要发送一条消息，并在下一个语句可以继续之前收到一个答复。例如，假设`x`、`y`、`t1`和`t2`都位于同一台远程机器上。在这种情况下，在开始执行第三条语句之前，必须对该机器进行两次完整的网络往返。然后，第三条语句将引起另一个到同一个远程机器的往返。

使用future，上面的表达式可以写成

```
 t3 := (x <- a()) <- c(y <- b())
```

可以扩展为

```
 t1 := x <- a();
 t2 := y <- b();
 t3 := t1 <- c(t2);
```

这里使用的语法是E语言的语法，其中`x <- a()`表示将消息`a()`异步发送给`x`。所有三个变量都会立即为其结果分配future，执行过程将继续进行到后面的语句。之后尝试解决`t3`的值可能会导致延迟；但是，流水线操作可以减少所需的往返次数。如果与前面的示例一样，`x`、`y`、`t1`和`t2`都位于相同的远程机器上，则流水线实现可以用一次往返来计算`t3`，不必用三次。由于所有三条消息都指向同一远程计算机上的对象，因此只需要发送一个请求，只需要接收一个包含结果的响应。另请注意，即使`t1`和`t2`位于不同机器上，或者位于与`x`或`y`不同的机器上，发送`t1 <- c(t2)`也不会阻塞。

promise流水线应与并行异步消息传递区分开来。在支持并行消息传递但不支持流水线操作的系统中，上面示例中的消息发送`x <- a()`和`y <- b()`可以并行进行，但发送`t1 <- c(t2)`将不得不等到`t1`和`t2`都被接收，即使`x`、`y`、`t1`和`t2`在同一个远程机器上。在涉及许多消息的更复杂情况下，流水线的相对延迟优势变得更大。

promise流水线操作也不应与角色系统中的流水线消息处理相混淆，在这种系统中，角色可以在完成当前消息的处理之前指定并开始执行下一个消息的行为。

## 只读视图

在某些编程语言（如Oz\\E和AmbientTalk）中 ，可以获得未来的*只读视图* ，该视图允许在resolve后读取其值，但不允许resolve它：

  - 在Oz语言中，

\!\!运算符用于获得只读视图

  - 在E语言和AmbientTalk中，future由一对称为*promise/resolver对*的值表示。promise表示只读视图，需要resolver来设置future的值。
  - 在C++11中，`std::future`提供了一个只读视图。该值通过使用`std::promise`直接设置，或使用`std::packaged_task`或`std::async`设置为函数调用的结果。
  - 在Dojo Toolkit的1.5版本的Deferred API中， *仅限consumer的promise对象*表示只读视图。\[8\]
  - 在Alice ML中，future提供*只读视图* ，而promise包含future和resolve future的能力\[9\]\[10\]
  - 在.NET 4.0中，`System.Threading.Task.Task`<T>表示只读视图。解析值可以通过`System.Threading.Task.TaskCompletionSource`<T>来完成。

对只读视图的支持符合[最小特权原则](../Page/最小权限原则.md "wikilink")，因为它允许将值设置为仅限于需要设置该值的主体。在同样支持流水线的系统中，异步消息的发送方（包括结果）接收结果的只读承诺promise，消息的目标接收resolver。

## 针对特定线程的future

某些语言（如Alice ML ）定义了与计算future值的特定线程相关联的future。\[11\] 这种计算可以在创建future时[及早开始](https://zh.wikipedia.org/wiki/及早求值 "wikilink")，或者在首次需要其值时[懒惰地开始](../Page/惰性求值.md "wikilink")。在延迟计算的意义上，懒惰的future类似于thunk 。

Alice ML还支持可由任何线程解决的future，并调用这些*promise*。\[12\] *promise*的这种使用不同于上文所述的在E语言中的使用。在Alice中，promise不是只读视图，并且不支持promise流水线操作。相反，对于future未来，包括与promise相关的future，流水线是自然而然地发生的。

## 阻塞与非阻塞语义

如果future的值是异步访问的，例如通过向它发送消息，或者通过使用类似于E语言中的`when`的构造显式地等待它，那么在收到消息或完成等待之前，推迟到future得到resolve没有任何困难。这是在纯异步系统（如纯角色语言）中唯一需要考虑的情况。

然而，在某些系统中，还可能尝试*立即*或*同步*访问未来的值。这样的话就需要做出一个设计选择：

  - 访问权限可能会阻塞当前线程或进程，直到future得到resolve（可能需要超时）。这是Oz语言中*数据流变量*的语义。
  - 尝试同步访问总是会发出错误信号，例如抛出异常 。这是E语言中远程promise的语义。 \[13\]
  - 如果future已经resolve，则访问可能成功，但如果未resolve，则发出错误信号。这样做的缺点是引入了不确定性和潜在的竞争条件，这似乎是一种不常见的设计选择。

作为第一种可能性的示例，在C++11中 ，需要future值的线程可以通过调用`wait()`或`get()`成员函数来阻塞，直到可用为止。您还可以使用`wait_for()`或`wait_until()`成员函数指定等待超时，以避免无限期阻塞。如果future对`std::async`的调用，那么阻塞等待（没有超时）可能导致函数的同步调用以计算等待线程上的结果。

## 相关结构

*future*是Event（同步原语）的特例，只能完成一次。通常，event可以重置为初始空状态，因此可以根据需要多次完成。\[14\]

*I-var*（如在语言Id中）是具有上面定义的阻塞语义的future。*I-structure*是包含I-var的[数据结构](../Page/数据结构.md "wikilink")。可以使用不同值多次设置的相关同步构造称为*M-var*。M-var支持*采用*或*放置*当前值的原子操作，其中取值还将M-var设置回其初始*空*状态。 \[15\]

*并发逻辑变量*与future类似，但是通过[合一](../Page/合一.md "wikilink")更新，与[逻辑编程中的](../Page/邏輯編程.md "wikilink")*逻辑变量*相同。因此，它可以多次绑定到可合一的值，但不能设置回空或unresolved状态。Oz的数据流变量充当并发逻辑变量，并且还具有上面提到的阻塞语义。

*并发约束变量*是并发逻辑变量的一般化，以支持约束逻辑编程：约束可以多次*缩小*，表示可能值的较小集合。通常，有一种方法可以指定每当约束进一步缩小时应该运行的hunk；这是支持*约束传播*所必需的。

## 不同形式future的表达能力之间的关系

通过在创建future的同时创建一个计算值的线程，可以在非线程特有的promise中直接实现及早求值的线程特有的future。在这种情况下，future将只读视图返回给客户端，以便仅让新创建的线程能够解决这个future。

要在非线程特有的promise中实现隐式延迟线程特有的promise（比如由Alice ML提供），需要一种机制来确定何时首先需要future的值（例如，Oz中的`WaitNeeded`构造\[16\] ）。 如果所有值都是对象，那么实现透明转发对象的能力就足够了，因为发送给转发器的第一条消息表明需要future的值。

假定系统支持消息传递，通过让resolve线程向future自己的线程发送消息，可以在线程特有的future中实现非线程特有的future。但是，这可以被视为不必要的复杂性。在基于线程的编程语言中，最具表现力的方法似乎是提供非线程特有的future，只读视图以及*WaitNeeded*构造或支持透明转发的混合。

## 求值策略

future的[求值策略](../Page/求值策略.md "wikilink")（可称为*传future调用*）是非确定性的：future的值将在创建future和使用其值之间的某个时间进行求值，但确切的时间不确定的，一次运行和另一次运行的求值时间会不一样。计算可以在创建future时开始（[及早求值](https://zh.wikipedia.org/wiki/及早求值 "wikilink")），或者仅在实际需要值时开始（[懒惰求值](../Page/惰性求值.md "wikilink")），并且可以在中途暂停，或在一次运行中执行。一旦future被赋值，它就不会在访问future的时候重新计算；这就像传需求调用时使用的记忆化。

**懒惰future**是确定性具有惰性求值评估语义的future：future值的计算在首次需要时开始，与传需要调用一样。懒惰future在求值策略默认不是懒惰求值的语言中使用。例如，在C++11中，可以通过将`std::launch::deferred`启动策略传递给`std::async`以及计算值的函数来创建这种惰性future。

## 角色模型中的future语义

在角色模型中，形式为*`future`*`   `<Expression>的表达式由它对`Eval`消息（环境为*E*，客户为*C*）的响应方式定义：future表达式通过向客户*C*发送新创建的角色来响应`Eval`消息*F* （计算<Expression>的响应的代理）作为返回值，*与此同时*向<Expression>发送环境*E*和客户*C*的`Eval`消息。*F*的默认行为如下：

  - 当*F*收到请求*R*时，它会通过评估<Expression>继续检查它是否已收到响应（可以是返回值或抛出异常），如下所示：
    1.  如果它已经有响应*V*，那么
          - 如果*V*是返回值，则发送请求*R*.
          - 如果*V*是一个异常，那么就会把这个异常抛给请求*R*的客户。
    2.  如果它还没有响应，则*R*存储在*F*内的请求队列中。
  - 当*F*从评估<Expression>接到响应*V*时，则*V*存储在*F*中
      - 如果*V*是返回值，则将所有排队的请求发送到*V*.
      - 如果*V*是一个异常，那么就会把这个异常抛出给每个排队请求的客户。

但是，一些future可以通过特殊方式处理请求以提供更大的并行性。例如，表达式`1 + future factorial(n)`可以创建一个新的future，其行为类似于数字`1+factorial(n)` 。这个技巧并不总是有效。例如，以下条件表达式：

  -
    *`if`*`  m>future factorial(n)  `*`then`*`  print("bigger")  `*`else`*`  print("smaller") `

会挂起，直到`factorial(n)`这个future已回应询问`m`是否大于其自身的请求。

## 历史

*future*与*promise*构造首先在诸如MultiLisp和[Act 1之类的编程语言中实现](https://zh.wikipedia.org/wiki/參與者模式 "wikilink")。在并发[逻辑编程语言中使用逻辑变量进行通信非常类似于future](../Page/邏輯編程.md "wikilink")。这些开始于*Prolog with Freeze*和*IC Prolog*，并成为真正的并发原语，包括关系语言、Concurrent [Prolog](../Page/Prolog.md "wikilink")、守卫[霍恩子句](https://zh.wikipedia.org/wiki/霍恩子句 "wikilink")（GHC）、Parlog、Strand、Vulcan、Janus、Oz-Mozart、Flow Java和Alice ML。来自数据流编程语言的单一赋值*I-var* ，源自Id并包含在Reppy的*Concurrent ML*中，非常类似于并发逻辑变量。

promise流水线技术（使用future来克服延迟）是[Barbara Liskov和Liuba](../Page/芭芭拉·利斯科夫.md "wikilink") Shrira于1988年发明的\[17\]，由Mark S. Miller、Dean Tribble和Rob Jellinghaus在大约1989年的Xanadu项目中独立发明。\[18\]

*promise*一词是由Liskov和Shrira创造的，尽管他们通过名称*call-stream*引用了流水线机制，现在很少使用它。

Liskov和Shrira的论文中描述的设计以及Xanadu中的promise流水线的实现都有一个限制，即promise值不是一等的：一个参数，或者一个call或send返回的值不能直接成为一个promise （所以前面给出的promise流水线的例子，它使用一个发送的结果作为另一个发送的参数的承诺，在call-stream设计或Xanadu实现中不能直接表达）。似乎promise和call-stream从未在Argus的任何公开发布中实现， \[19\] Liskov和Shrira论文中使用的编程语言。Argus的开发在1988年左右停止了。\[20\] Xanadu实现的promise流水线仅在1999年Udanax Gold\[21\]的源代码发布时才公开发布，并且在任何已发布的文档中都没有解释过。\[22\] Joule和E的后续实现支持完全一等的promise和resolver。

一些早期的角色语言，包括Act系列，\[23\]\[24\] 支持并行消息传递和流水线消息处理，但不支持promise流水线。（虽然技术上可以在前两个中实现最后一个功能，但没有证据表明Act语言这样做了。）

2000年之后，由于消息传递的请求-响应模型，future和promise在用户界面响应和web开发中的应用重新引起了人们的兴趣。现在有几种主流语言对future和promise都有语言支持，最着名的是Java 5中的`FutureTask`（2004年公布）\[25\]以及.NET 4.5中的`async`和`await`结构（2010年发布，2012年发布）\[26\]\[27\]很大程度上受到F\#的*异步工作流程*（可追溯到2007年\[28\]）的启发\[29\]。 随后被其他语言采用，特别是Dart（2014）\[30\]，Python（2015）\[31\]， Hack（HHVM）以及ECMAScript 7（JavaScript）、Scala和C++的草案。

## 实现列表

支持future、promise、并发逻辑变量、数据流变量或I-vars的语言，无论是通过直接语言支持还是在标准库中，包括：

  - FreeFuture 通过 [FreeFuture](https://github.com/politrons/FreeFuture)
  - ABCL/f\[32\]
  - Alice ML
  - AmbientTalk（包含一流的解析器和只读promise）
  - [C ++](../Page/C++.md "wikilink")，从C++11开始：std::future和std::promise
      - μC++

<!-- end list -->

  -   - Compositional C++

  - Crystal语言

  - Dart（使用*Future*/*Completer*类\[33\]以及关键字*await*和*async*\[34\]）

  - Elm语言通过*Task*模块\[35\]

  - Glasgow [Haskell](../Page/Haskell.md "wikilink") （仅限I-vars和M-vars）

  - Id （仅限I-vars和M-vars）

  - Io\[36\]

  - [Java](../Page/Java.md "wikilink")通过或

      - Flow Java

  - [JavaScript](../Page/JavaScript.md "wikilink")（有限，从[ECMAScript](../Page/ECMAScript.md "wikilink") 6起支持）

  - Lucid（仅限数据流）

  - 一些[Lisp](../Page/LISP.md "wikilink")

      - [Clojure](../Page/Clojure.md "wikilink")\[37\]
      - MultiLisp

  - [.NET通过](../Page/.NET框架.md "wikilink")*Tasks*

      - [C\#](../Page/C♯.md "wikilink")，自.NET 4.5起，\[38\]通过关键字`async`与`await`\[39\]

  - Nim

  - Oxygene

  - Oz版本3 \[40\]

  - [Perl 6](../Page/Perl_6.md "wikilink")\[41\]

  - [Python](../Page/Python.md "wikilink") [concurrent.futures](https://docs.python.org/3/library/concurrent.futures.html), since 3.2,\[42\] as proposed by the [PEP 3148](https://www.python.org/dev/peps/pep-3148/), and Python 3.5 added async and await\[43\]

  - [R](../Page/R语言.md "wikilink")（延迟计算的promise，仍然是单线程）

  - Racket\[44\]

  - [Scala](../Page/Scala.md "wikilink")通过[scala.concurrent包](http://docs.scala-lang.org/overviews/core/futures.html)

  - [Scheme](../Page/Scheme.md "wikilink")

  - Squeak [Smalltalk](../Page/Smalltalk.md "wikilink")

  - Strand

  - Swift （仅通过第三方库）

  - Visual Basic 11（通过关键字*Async*和*Await* ）\[45\]

还支持promise流水线的语言包括：

  - E
  - Joule

基于非标准库的future实现：

  - 对于[Common Lisp](../Page/Common_Lisp.md "wikilink")：
      - Blackbird\[46\]
      - Eager Future2\[47\]
      - lparallel\[48\]
      - PCall\[49\]
  - 对于C++：
      - Boost library\[50\]
      - Dlib\[51\]
      - Qt\[52\]
      - Seastar\[53\]
      - Folly\[54\]
      - POCO C++ Libraries (Active Results)\[55\]
  - 对于[C\#和其他](../Page/C♯.md "wikilink")[.NET语言](../Page/.NET框架.md "wikilink")：Parallel Extensions库
  - 对于[Groovy](../Page/Groovy.md "wikilink")：GPars\[56\]
  - 对于[JavaScript](../Page/JavaScript.md "wikilink")：
      - Cujo.js'\[57\] when.js\[58\]提供符合Promises/A+\[59\] 1.1规范的promise
      - Dojo Toolkit提供promises\[60\]和Twisted方式延迟
      - MochiKit \[61\]受Twisted's Deferreds的启发
      - [jQuery的](http://jquery.com/) \[//api.jquery.com/category/deferred-object/ Deferred Object\]基于[CommonJS Promises/A](http://wiki.commonjs.org/wiki/Promises/A)设计。
      - Angularjs\[62\]
      - node-promise\[63\]
      - Q，作者为Kris Kowal，符合Promises/A+ 1.1\[64\]
      - RSVP.js，符合Promises/A+ 1.1\[65\]
      - YUI的\[66\]promise类\[67\]符合Promises/A+ 1.0规范。
      - Bluebird，作者Petka Antonov\[68\]
      - Closure Library的[promise](https://github.com/google/closure-library/tree/master/closure/goog/promise)包符合Promises/A+规范。
      - 有关基于Promise/A+设计的更多实现，请参阅[Promise/A+](http://promisesaplus.com/implementations)列表。
  - 对于[Java](../Page/Java.md "wikilink")：
      - JDeferred提供了与[JQuery](../Page/JQuery.md "wikilink")类似的deferred-promise API和行为。Deferred对象\[69\]
      - ParSeq\[70\]提供task-promise API，由[LinkedIn维护](https://zh.wikipedia.org/wiki/LinkedIn "wikilink")，适用于异步流水线和分支
  - 对于[Objective-C](../Page/Objective-C.md "wikilink")：MAFuture\[71\]\[72\]、RXPromise\[73\]、ObjC-CollapsingFutures\[74\]、PromiseKit\[75\]、objc-promise\[76\]、OAPromise\[77\]，
  - 对于OCaml：Lazy模块实现了懒惰的显式期货\[78\]
  - 对于[Perl](../Page/Perl.md "wikilink")：Future\[79\]、Promises\[80\]、和Reflex\[81\]
  - 对于[PHP](../Page/PHP.md "wikilink")：React/Promise \[82\]
  - 对于[Python](../Page/Python.md "wikilink")：
      - 内置实现\[83\]
      - pythonfutures\[84\]
      - Twisted's Deferreds\[85\]
  - 对于[R](../Page/R语言.md "wikilink")：
      - future，实现可扩展的future API与懒惰和及早同步和（多核或分布式）异步期货\[86\] \[87\]
  - 对于[Ruby](../Page/Ruby.md "wikilink")：
      - Promise gem\[88\]
      - libuv gem，实现promise\[89\]
      - Celluloid gem，实现future\[90\]
      - future-resource\[91\]
  - 对于Rust：
      - futures-rs\[92\]
  - 对于[Scala](../Page/Scala.md "wikilink")：
      - Twitter的util库\[93\]
  - 对于Swift：
      - 异步框架，实现C\#风格的`async`/非阻塞`await`\[94\]
      - FutureKit\[95\]、实现了Apple GCD的版本\[96\]
      - FutureLib，纯Swift 2库实现的Scala风格的future和promise与TPL风格的取消\[97\]
      - Deferred，纯Swift库，受到OCaml的Deferred启发\[98\]
      - BrightFutures\[99\]
  - 对于Tcl：tcl-promise\[100\]

### 协程

future可以用[协程](../Page/协程.md "wikilink")\[101\]或生成器实现，\[102\] 从而产生相同的评估策略（例如，协同多任务或延迟评估）。

### channel

future可以很容易地用channel实现：future是一个单元素的channel，而promise是一个发送到channel，实现future的过程。 \[103\] \[104\] 这允许future在支持channel（如CSP和[Go](../Page/Go.md "wikilink")）的并发编程语言中实现。由此产生的future是显式的，因为它们必须通过从channel读取而不是仅仅通过评估来获取。

## 参见

  - 纤程
  - [Futex](../Page/Futex.md "wikilink")

## 参考资料

## 外部链接

  - [Concurrency patterns presentation](http://shairosenfeld.com/concurrency.html) given at [scaleconf](http://scaleconf.org)
  - [Future Value](http://c2.com/cgi/wiki?FutureValue) and [Promise Pipelining](http://c2.com/cgi/wiki?PromisePipelining) at the Portland Pattern Repository
  - [Easy Threading with Futures](http://aspn.activestate.com/ASPN/Cookbook/Python/Recipe/84317) in Python

[Category:进程间通信](https://zh.wikipedia.org/wiki/Category:进程间通信 "wikilink") [Category:角色模型](https://zh.wikipedia.org/wiki/Category:角色模型 "wikilink")

1.
2.
3.
4.  "[SIP-14 – Futures and Promises](http://docs.scala-lang.org/sips/completed/futures-promises.html)"
5.
6.  [Promise Pipelining on the C2 wiki](http://c2.com/cgi/wiki?PromisePipelining)
7.   Also published in *ACM SIGPLAN Notices* **23**(7).
8.
9.
10.
11.
12.
13.
14. [500 lines or less, "A Web Crawler With asyncio Coroutines" by A. Jesse Jiryu Davis and Guido van Rossum](http://aosabook.org/en/500L/a-web-crawler-with-asyncio-coroutines.html#fn13) says "implementation uses an asyncio.Event in place of the Future shown here. The difference is an Event can be reset, whereas a Future cannot transition from resolved back to pending."
15.
16.
17.
18.
19.
20.
21.
22.
23.
24.
25.
26.
27.
28.
29.
30.
31.
32.
33.
34.
35.
36.
37.
38.
39.
40.
41.
42.
43.
44.
45.
46.
47.
48. [- Common Lisp的并行编程库](https://lparallel.org并行Lisp)
49.
50.
51.
52.
53.
54.
55.
56. [Groovy GPars](http://gpars.codehaus.org)
57.
58.
59.
60.
61.
62.
63.
64.
65.
66.
67.
68.
69.
70.
71.
72.
73.
74.
75.
76.
77.
78.
79.
80.
81.
82.
83.
84.
85.
86.
87.
88.
89.
90.
91.
92.
93.
94.
95.
96.
97.
98.
99.
100.
101.
102.
103.
104.