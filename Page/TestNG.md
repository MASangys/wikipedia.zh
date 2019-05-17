**TestNG**是一个[Java语言的测试](https://zh.wikipedia.org/wiki/Java语言 "wikilink")[框架](https://zh.wikipedia.org/wiki/软件框架 "wikilink")，由Cédric
Beust受到[JUnit和](../Page/JUnit.md "wikilink")的启发而创建。TestNG的设计目标是，覆盖更广泛的测试类别范围：单元测试、功能测试、端到端测试、集成测试等，并且功能更强大、更易于使用。

## 功能

TestNG的主要功能包括：

1.  支持注解。
2.  支持参数化和[数据驱动测试](https://zh.wikipedia.org/wiki/数据驱动测试 "wikilink")（用`@DataProvider`和/或XML配置）。
3.  支持同一个类的多个实例（用`@Factory`）。
4.  灵活的执行模式。TestNG的运行，既可以通过[Ant的build](../Page/Apache_Ant.md "wikilink").xml（有或没有一个测试套定义），又可以通过带有可视化效果的IDE插件。不需要`TestSuite`类，测试套件、测试组及选择运行的测试，都通过XML文件来定义和配置。
5.  并发测试：测试运行在任意大的线程池中，并有多种策略可选（所有方法都有他们自己的线程，或每个测试类一个线程，等等）；测试代码是否线程安全。
6.  嵌入可以获得更大的灵活性。
7.  默认的[JDK运行时和日志功能](../Page/JDK.md "wikilink")（无依赖）。
8.  应用服务器测试的依赖方法。
9.  分布式测试：允许在从机上进行分布式测试。

### 数据提供者

TestNG中的数据提供者是测试类中的一个方法，该类为依赖测试方法提供了一个不同实际值的数组。

例如：

``` java
    /**
     * 本方法可为任何测试方法提供数据，只要声明测试方法的数据提供者名为
     * “provider1”即可。
     */
    @DataProvider( name = "provider1" )
    public Object[][] createData1()
    {
        Object[][] objects = new Object[2][];
        objects[0] = new Object[] { "Cedric", 36 };
        objects[1] = new Object[] { "Anne", 37 };
        return  objects;
    }

    /**
     * 本测试方法声明其数据应由名为“provider1”的数据提供者提供。
     */
    @Test( dataProvider = "provider1" )
    public void verifyData1( String s, Integer i )
    {
        System.out.println( s + ' ' + i );
    }

    /**
     * 本数据提供者返回一个参数数组的迭代器。
     */
    @DataProvider( name = "provider2" )
    public Iterator<Object[]> createData()
    {
        return new MyIterator( ... );
    }

    /**
     * 本数据提供者带有一个 java.lang.reflect.Method 类型的参数。如果多个测试方
     * 法使用同一个提供者，而且你又希望它能根据不同的测试方法返回不同的值，本方
     * 法就非常有用。
     */
    @DataProvider( name = "provider3" )
    public Object[][] createData( Method m )
    {
        System.out.println( m.getName() );
        return new Object[][] { new Object[] { "Cedric" } };
    }
```

数据提供者的返回值类型可以是以下两种类型之一：

  - 一个Object二维数组（`Object[][]`），其中第一维的大小是测试方法将被调用的次数，第二维的大小包含一个对象数组，对象数组必须与测试方法的参数类型一致。
  - 一个Object迭代器（`Iterator<Object[]>`）。它与前一种类型的唯一区别是，迭代器可以让你延迟创建你的测试数据。TestNG将先后调用该迭代器和测试方法，而测试方法的参数则由该迭代器依次返回。如果你有很多参数集要传递给测试方法，而你又不想事先把它们全部创建出来，这就非常有用了。

### 工具支持

TestNG既有现成软件，又可以通过IDE插件来调用。目前三大主流Java
IDE——[Eclipse](../Page/Eclipse.md "wikilink")、[IntelliJ
IDEA和](../Page/IntelliJ_IDEA.md "wikilink")[NetBeans](../Page/NetBeans.md "wikilink")——都有针对TestNG的插件。它也可以配置为[Apache
Ant的定制任务](../Page/Apache_Ant.md "wikilink")，并且支持[Apache
Maven构建系统](../Page/Apache_Maven.md "wikilink")。[Hudson的](https://zh.wikipedia.org/wiki/Hudson_\(软件\) "wikilink")[持续集成服务器已经内建了对TestNG的支持](https://zh.wikipedia.org/wiki/持续集成 "wikilink")，并能进行跟踪，及随时间推移对测试结果进行可视化。多数Java[代码覆盖率工具](https://zh.wikipedia.org/wiki/代码覆盖率 "wikilink")，如，都可以与TestNG无缝衔接。

### 测试报告

TestNG可以生成HTML和XML格式的测试报告。Ant的JUnitReport任务\[1\]可以转换XML输出，生成与使用JUnit时所获得的类似的报告。从4.6版开始，TestNG还提供了一个报告API。\[2\]通过该API可以使用第三方的报告生成器，如ReportNG、\[3\]PDFngreport\[4\]和TestNG-XSLT。\[5\]

## 与JUnit的对比

TestNG和[JUnit是两个相似且相互竞争的Java工具](../Page/JUnit.md "wikilink")，它们之间的差异及各自优势已经讨论了多年。两大阵营都有强大的基础和支持者。[Stack
Overflow的讨论可以反映这一争议](../Page/Stack_Overflow.md "wikilink")。\[6\]\[7\]\[8\]

### 注解

在JUnit 4中，@BeforeClass和@AfterClass方法必须被声明为静态的。而TestNG没有这个限制。

TestNG为套件、测试和组提供了四对额外的装/卸注解，即@BeforeSuite和@AfterSuite，@BeforeTest和@AfterTest，@BeforeGroup和@AfterGroup，@BeforeMethod和@AfterMethod。

### 参数化测试

这两个工具都实现了这个功能，但实现方式截然不同。

TestNG有两种方式来为测试方法提供不同的参数值：设置testng.xml，及定义@DataProvider的方法。

在JUnit
4中，使用@RunWith和@Parameters一起来实现参数化测试，而@Parameters方法必须返回List\[\]，它携带所有实际的值，这些值将作为参数被传递给专门的类构造器。

### 结论

JUnit常常被主流IDE默认支持，这有助于其更广泛的普及。而TestNG的目标则更广泛，不仅包括单元测试，还支持集成测试和验收测试等。哪一个更好或更适合，取决于使用情况和要求。

## 参见

  -
  - [JUnit](../Page/JUnit.md "wikilink")

  -
## 参考文献

## 外部链接

  -
  -
  -
  -
  -
  -
  -
  -
  -
[Category:Java平台](https://zh.wikipedia.org/wiki/Category:Java平台 "wikilink")
[Category:使用Apache许可证的软件](https://zh.wikipedia.org/wiki/Category:使用Apache许可证的软件 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.