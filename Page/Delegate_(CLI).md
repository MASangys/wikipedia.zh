**委托**（delegate）是一种类型安全的[函数指针](../Page/函数指针.md "wikilink")，用于[通用语言运行库](https://zh.wikipedia.org/wiki/通用语言运行库 "wikilink")(CLI)。在[C\#中](https://zh.wikipedia.org/wiki/C_Sharp "wikilink")，delegate是一种class，包装了一个或多个函数指针及绑定的类实例。Delegate用来实现函数回调与事件接收（event listener）。Delegate对象可以作为参数传递给其他函数，以引用（referenced）封装在delegate对象中的函数，而无需在编译时刻就绑定被调用函数。 \[1\]

一旦为委托分配了函数方法，委托将与该函数方法具有完全相同的行为。 与委托的**[类型特征](https://zh.wikipedia.org/wiki/类型特征 "wikilink")**（由返回类型和参数组成）匹配的任何方法都可以分配给该委托。

## C\#例子

声明一个`delegate`类型，称作`SendMessageDelegate`, 以一个`Message`类型为参数，返回类型为`void`:

``` csharp
delegate void SendMessageDelegate(Message message);
```

下述代码定义了一个函数，以一个实例化的delegate类型作为形参:

``` csharp
void SendMessage(SendMessageDelegate sendMessageDelegateReference)
{
  // call the delegate and any other chained delegates synchronously
  sendMessageDelegateReference(new Message("hello this is a sample message"));
}
```

将要封装入delegate中的一个函数的定义：

``` csharp
void HandleSendMessage(Message message)
{
  // the implementation for the Sender and Message classes are not relevant to this example
  Sender.Send(message);
}
```

函数SendMessage，以SendMessageDelegate作为委托的实例作为实参：

``` csharp
SendMessage(new SendMessageDelegate(HandleSendMessage));
```

委托实例可以封装多个函数：

``` csharp
delegateType de1=fun1；
delegateType de2=fun2;
delegateType de3=de1+de2;//de3中有fun1、fun2两个函数的引用
```

## 技术实现细节

“委托”作为类，继承自System.MulticastDelegate（抽象类）。可以认为包含：一个类对象实例的地址（Target属性），该类的一个方法的地址（Method属性），以及另一个“委托”实例的引用（reference）。因此引用一个“委托”对象，可能实际上引用了多个“委托”的实例。“委托”对象被调用时，依次调用里面的多个“委托”的实例。这对于[事件驱动的程序比较有用](https://zh.wikipedia.org/wiki/事件驱动的程序 "wikilink")。

如果“委托”封装了一个静态函数，则其内部的绑定的类对象地址为null。

可以通过Delegate类的GetInvocationList()取出这些委托，并查看其Target和Method属性，获取所引用的方法名等信息。

## 用途

一个常用的用途是事件处理。CLI定义了控件的标准的事件处理函数是一个“委托”，声明如下：

``` csharp
 public delegate void EventHandler(object sender, EventArgs e)
```

这里第一个参数是发出该事件的控件的基类型object；后一个参数是事件数据的基类型EventArgs。以Button控件类为例，它有一个属性Click，定义为一个EventHandle类型的delegate:

``` csharp
 public event EventHandle Click;
```

至此，我们对一个具体的button实例变量，可以给它的Click事件追加上一个或多个事件处理函数：

``` csharp
 this.button1.Click += new System.EventHandler(this.button1_click);
```

对于Visual Basic，上述语句的写法是：

``` vb.net
 AddHandler button1.click, AddressOf button1_Click
```

## 参考文献

## 外部链接

  - [MSDN documentation for Delegates](http://msdn2.microsoft.com/en-us/library/system.delegate.aspx)
  - [Delegates with sample code](http://net-informations.com/faq/net/delegates.htm)
  - [Sun's White Paper on Delegates](https://web.archive.org/web/20120627043929/http://java.sun.com/docs/white/delegates.html)
  - [Microsoft answer to Sun](http://msdn.microsoft.com/en-us/vjsharp/bb188664.aspx)
  - [Inner workings of Delegates](http://blog.monstuff.com/archives/000037.html)
  - [PerfectJPattern Open Source Project](http://perfectjpattern.sourceforge.net/dp-delegates.html), Provides componentized i.e. context-free and type-safe implementation of the Delegates Pattern in Java

[Category:子程序](https://zh.wikipedia.org/wiki/Category:子程序 "wikilink") [Category:.NET](https://zh.wikipedia.org/wiki/Category:.NET "wikilink")

1.