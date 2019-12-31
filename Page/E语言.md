> 本文内容由[E语言](https://zh.wikipedia.org/wiki/E语言)转换而来。


**E语言**是1997年由、[Dan Bornstein和Electric](../Page/Dalvik虚拟机.md "wikilink") Communities的其他人创建的用于[安全](../Page/计算机安全.md "wikilink")[分布式计算](../Page/分布式计算.md "wikilink")的[面向对象程序设计](../Page/面向对象程序设计.md "wikilink")语言。E语言主要源自于安全分布式编程中Java的并行语言和Original-E，后者是Java的一组扩展。E将基于[消息的计算与类](https://zh.wikipedia.org/wiki/訊息傳遞_\(軟體\) "wikilink")[Java](../Page/Java.md "wikilink")语法相结合。基于[事件循环和](../Page/事件驅動程式設計.md "wikilink")的[并发模型确保永远不会发生](../Page/并发计算.md "wikilink")[死锁](../Page/死锁.md "wikilink")。

## 开发理念以及过程

E语言在设计时考虑到了[安全计算](../Page/计算机安全.md "wikilink"); 这主要是通过严格遵守面向对象计算模型来实现的，面向对象计算模型的纯形式具有支持安全计算的属性。E语言及其标准库始终采用的设计理念，以帮助程序员构建安全的软件，并使软件组件即使彼此不完全信任也能够合作。在E语言中，对象引用用作功能，因此功能不增加计算或概念性开销。该语言的语法被设计为便于人们审查安全性缺陷。例如，词法[作用域](../Page/作用域.md "wikilink")限制了必须检查对给定变量的影响的代码数量。另一个例子，语言使用**==**运算符进行比较，使用**:=**运算符进行赋值; 为了避免混淆的可能性，没有**=**运算符。

## 计算模型

在E语言中，所有值都是[对象](../Page/面向对象程序设计.md "wikilink")，计算是通过向对象发送消息来执行的。每个物体都属于一个*vat*（类似[行程](../Page/行程.md "wikilink")）。每个vat都有一个执行线程、一个堆栈帧和一个事件队列。[分布式编程只是向远程对象](../Page/分布式计算.md "wikilink")（其他vat中的对象）发送消息的问题。与远程方的所有通信都由E运行时[加密](../Page/加密.md "wikilink")。到达的消息被放置到vat的事件队列中; vat的事件循环按到达的次序逐个处理传入的消息。

E语言有两种发送消息的方式：**即时呼叫**和**eventual发送**。立即调用类似于非并发语言中的典型函数或方法调用：发送方等待接收方完成并返回值。eventual发送发送消息，同时为结果生成一个占位符，称为[promise](../Page/Future与promise.md "wikilink")。发送者立即带着promise继续执行。之后，当接收者完成并产生结果时，promise将解析为结果。由于在与远程对象通信时只允许eventual发送，因此不会发生[死锁](../Page/死锁.md "wikilink")。在分布式系统中，promise机制还可以最小化由网络延迟引起的延迟。

## 语法和示例

E的语法与[Java](../Page/Java.md "wikilink")最为相似，尽管它也与[Python和](https://zh.wikipedia.org/wiki/Python编程语言 "wikilink")[Pascal有些相似](../Page/Pascal_\(程式語言\).md "wikilink")。变量都是[动态类型的](../Page/資料類型.md "wikilink")，并且有词法[作用域](../Page/作用域.md "wikilink")。然而，与Java或Python不同的是，E完全由组成。下面是一个非常简单的E语言程序：

``` python
 println("Hello, world!")
```

这里有一个递归函数，用于计算一个数的阶乘，它是用E语言写的。函数使用**def**关键字定义。

``` python
 def factorial(n :int) :int {
   if (n == 1) {
     return 1
   } else if (n > 0) {
     return n * factorial(n-1)
   } else {
     throw("invalid argument to factorial: "+n)
   }
 }
```

在第一行中，**:int**是约束函数的参数和结果的“守卫”。守卫与类型声明并不完全相同；守卫是可选的，可以指定约束。第一个**:int**确保函数体只需要处理整数参数。如果没有上面的第二个**:int**参数，函数将不能返回值。能够事先看到函数的信息泄漏，有利于安全审计。

由于E的目的是支持安全合作，因此E程序的典型例子是挖矿，它是一个简单的电子货币系统，只需几行E代码。下面的代码定义了一个挖矿的函数，其中每个矿厂都有自己的货币。每个矿厂可以制造装有自己货币的钱包，任何两个同一种货币的钱包的持有者都可以安全地在两个钱包之间转账。通过快速检查源代码，E程序员可以很容易地验证只有矿厂可以改变流通中的货币数量，货币只能被创造而不能被销毁，矿厂只能创造自己的货币，只有钱包的持有者才能改变它的余额。

``` python
 def makeMint(name) :any {
   def [sealer, unsealer] := makeBrandPair(name)
   def mint {
     to makePurse(var balance :(int >= 0)) :any {
       def decr(amount :(0..balance)) :void {
         balance -= amount
       }
       def purse {
         to getBalance() :int { return balance }
         to sprout() :any { return mint.makePurse(0) }
         to getDecr() :any { return sealer.seal(decr) }
         to deposit(amount :int, src) :void {
           unsealer.unseal(src.getDecr())(amount)
           balance += amount
         }
       }
       return purse
     }
   }
   return mint
 }
```

在E语言中使用**def**关键字定义对象，在对象定义中，**to**关键字开始每个方法。本例中的守卫表达式说明了如何指定值约束（如**:(int \>= 0)**或**:(0..balance)**）。

挖矿的例子使用了一个内置的机制，称为sealer。函数**makeBrandPair**创建了两个关联对象，一个sealer和一个unsealer，这样sealer就可以在一个盒子中封口一个对象，而unsealer就是唯一可以检索盒子中内容的对象。有关此货币示例的更详细说明，请参阅E语言的网站。\[1\]

## 参考文献

## 外部链接

  -
[Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink") [Category:JVM程式語言](https://zh.wikipedia.org/wiki/Category:JVM程式語言 "wikilink") [Category:動態編程語言](https://zh.wikipedia.org/wiki/Category:動態編程語言 "wikilink") [Category:动态类型编程语言](https://zh.wikipedia.org/wiki/Category:动态类型编程语言 "wikilink") [Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink") [Category:1997年软件](https://zh.wikipedia.org/wiki/Category:1997年软件 "wikilink")

1.