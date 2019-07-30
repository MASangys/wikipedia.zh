**unmarshalling**，或译作“解集”，是[计算机科学](../Page/计算机科学.md "wikilink")中把已经变换为适合于存储或[传输的](../Page/数据传输.md "wikilink")[对象的表示](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")，变换为[可执行的对象表示的过程](https://zh.wikipedia.org/wiki/可执行 "wikilink")。一个unmarshalling接口把[序列化](../Page/序列化.md "wikilink")对象变换为可执行形式。*Unmarshalling*是[marshalling的逆过程](../Page/Marshalling_\(计算机科学\).md "wikilink")。

## 用途

通常，[进程间通信时](https://zh.wikipedia.org/wiki/进程间通信 "wikilink")，需要发送[XML](../Page/XML.md "wikilink")对象。接收到数据的进程需要把它转化回可执行对象以便使用。因此unmarshalling通常用于[Java远程方法调用](https://zh.wikipedia.org/wiki/Java远程方法调用 "wikilink")（RMI）与[远程过程调用](https://zh.wikipedia.org/wiki/远程过程调用 "wikilink")（RPC）机制实现的接收端以把传送的对象转化为可执行形式。

### JAXB

[JAXB](../Page/JAXB.md "wikilink")或[Java语言架构的](https://zh.wikipedia.org/wiki/Java语言 "wikilink")是最常用的架构，实现marshal与unmarshal Java对象。JAXB提供了在Java的基本数据类型与[XML schema标准支持的数据类型之间的相互转化](https://zh.wikipedia.org/wiki/XML_schema "wikilink")。\[1\]

### XmlSerializer

XmlSerializer是[C\#实现marshal与unmarshal](https://zh.wikipedia.org/wiki/C_Sharp "wikilink") C\#对象的框架。由于包含XmlSerializer类，C\#本地支持marshalling。\[2\]

### XML与可执行程序的表示

Unmarshalling的一个例子是把一个对象的XML表示转化为该对象在任何编程语言的默认可执行的表示。例如，下述类：

``` java
public class Student
{
    private char name[50];
    private int ID;
    public String getName()
    {
        return this.name;
    }
    public int getID()
    {
        return this.ID;
    }
    void setName(String name)
    {
        this.name = name;
    }
    void setID(int ID)
    {
        this.ID = ID;
    }
}
```

  - *Student*对象的XML表示:

<!-- end list -->

``` xml
<!-- Code Snippet: 1 -->

<?xml version = “1.0” encoding = “UTF-8”?>
    <student id = “11235813”>
        <name>Jayaraman</name>
    </student>
    <student id = “21345589”>
        <name>Shyam</name>
    </student>
```

  - *Student*对象的可执行表示:

<!-- end list -->

``` java
//Code Snippet: 2

Student s1 = new Student();
s1.setID(11235813);
s1.setName(“Jayaraman”);
Student s2 = new Student();
s2.setID(21345589);
s2.setName(“Shyam”);
```

从对象的XML表示（在代码片段1中）到Java默认的可执行表示（在代码片段2中）的转换过程称为unmarshalling。

## JAXB的Unmarshaller

对象的XML表示到Java默认的可执行表示的转换过程，由内建的Unmarshaller类负责。同时也验证了收到的XML的有效性。Unmarshaller类中的unmarshal方法对不同类型的XML输入是[重载的](../Page/函数重载.md "wikilink")。一些比较重要的unmarshal方法的实现有：\[3\]

  - 从XML文件Unmarshalling：

<!-- end list -->

``` java
JAXBContext jcon = JAXBContext.newInstance( "com.acme.foo" );
Unmarshaller umar = jcon.createUnmarshaller();
Object obj = umar.unmarshal( new File( "input.xml" ) );
```

  - 从一个XML文件作为输入流中Unmarshalling：

<!-- end list -->

``` java
InputStream istr = new FileInputStream( "input.xml" );
JAXBContext jcon = JAXBContext.newInstance( "com.acme.foo" );
Unmarshaller umar = jcon.createUnmarshaller();
Object obj = umar.unmarshal( istr );
```

  - 从一个来自于URL的XML文件中Unmarshalling：

<!-- end list -->

``` java
JAXBContext jcon = JAXBContext.newInstance( "com.acme.foo" );
Unmarshaller umar = jcon.createUnmarshaller();
URL url = new URL( "http://merrilllynch.employee/input.xml" );
Object obj = umar.unmarshal( url );
```

## XML数据的Unmarshalling

Unmarshal方法可以反序列化（deserialize）整个XML文档或者它的一部分。

### Unmarshal一个全局XML根元素

当XML根元素被全局声明，这些方法利用JAXBContext把XML根元素映射为JAXB的映射类以初始化unmarshalling。JAXBContext对象总是维护全局声明的XML元素到JAXB映射类名字之间的映射。如果XML元素名字或它的`@xsi:type`属性匹配JAXB映射类，unmarshal方法把XML数据变换为合适的JAXB映射类。但是如果XML元素名字不匹配，unmarshal过程将abort并抛出*UnmarshalException*。可用declaredType参数unmarshal以避免这种异常。\[4\]

### Unmarshal一个局部XML根元素

如果映射不是充分的且根元素被局部声明，unmarshal方法是用应用程序提供的declaredType参数来unmarshalling过程。\[5\]根据优先次序，即使根名字映射到一个合适的JAXB类，declaredType能覆盖这个映射。但是如果XML数据的`@xsi:type`属性映射到合适的JAXB类，将优先于declaredType参数。有declaredType参数的Unmarshal方法总是返回`JAXBElement`<declaredType>实例。该JAXBElement实例属性总是如下设置：\[6\]

| JAXBElement属性 | 值                            |
| ------------- | ---------------------------- |
| name          | *xml属性名字*                    |
| value         | *instanceof declaredType*    |
| declaredType  | unmarshal方法的*declaredType*参数 |
| scope         | *null*（实际尺寸未知）               |

## 与反序列化的对比

对象的[序列化](../Page/序列化.md "wikilink")是把它表示为字节流；反序列化是转化为最初对象的副本。

对象被marshalled是从最初的内存状态与所包含的codebase记录下来；unmarshaller接口自动转化被marshalled的数据为Java在JAXB中可执行的代码。可被反序列化的对象就可被unmarshalled；反之不然。

## 参见

  - [Marshalling (计算机科学)](../Page/Marshalling_\(计算机科学\).md "wikilink")
  - [Java Architecture for XML Binding](https://zh.wikipedia.org/wiki/Java_Architecture_for_XML_Binding "wikilink")

## 参考文献

[Category:遠端程序呼叫](https://zh.wikipedia.org/wiki/Category:遠端程序呼叫 "wikilink")

1.

2.

3.

4.

5.
6.