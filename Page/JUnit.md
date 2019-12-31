> 本文内容由[JUnit](https://zh.wikipedia.org/wiki/JUnit)转换而来。


**JUnit**是一个[Java](../Page/Java.md "wikilink")语言的[单元测试](../Page/单元测试.md "wikilink")框架。它由[肯特·貝克](../Page/肯特·貝克.md "wikilink")和[埃里希·伽瑪](https://zh.wikipedia.org/wiki/埃里希·伽瑪 "wikilink")（Erich Gamma）建立，逐渐成为源于Kent Beck的[sUnit的](https://zh.wikipedia.org/wiki/sUnit "wikilink")[xUnit家族中为最成功的一个](https://zh.wikipedia.org/wiki/xUnit "wikilink")。 JUnit有它自己的[JUnit扩展](https://web.archive.org/web/20051013060403/http://www.junit.org/news/extension/index.htm)生态圈。

## 例子

JUnit 3.8 和更早版本中的"Hello world" :

``` java
  public class HelloWorld extends TestCase
  {
    public void testMultiplication()
    {
      // Testing if 3*2=6:
      assertEquals ("Multiplication", 6, 3*2);
    }
  }
```

`testMultiplication`的方法会自动被发现和调用。

JUnit 4.0 的"Hello world" ：

``` java
  public class HelloWorld
  {
    @Test public void testMultiplication()
    {
      // Testing if 3*2=6:
      assertEquals ("Multiplication", 6, 3*2);
    }
  }
```

`testMultiplication`由 **Test**的标签所定义。

来自**JUnit**的体验对[测试驱动开发](../Page/测试驱动开发.md "wikilink")是很重要的，所以一些 **JUnit**知识经常 和测试驱动开发的讨论融合在一起。可以参考Kent Beck的 《Test-Driven Development: By Example》一书（有中文版和影印版）。

## 外部链接

  - [JUnit](http://junit.org/)
  - [TestNG](http://beust.com/testng)有一些和**JUnit**相同的目标
  - [JUnit单元测试](https://web.archive.org/web/20051125204241/http://www.linux.ie/articles/tutorials/junit.php)
  - [JUnit的反模式](https://web.archive.org/web/20071023090127/http://www.ibm.com/developerworks/opensource/library/os-junit/?ca=dgr-lnxw07JUnite)
  - [JUnit 4](http://www.ibm.com/developerworks/java/library/j-junit4.html?ca=dgr-lnxw01JUnit4)
  - [51testing单元测试](http://www.51testing.com/html/94/category-catid-94.html)

## 衍生工具

  - [HttpUnit](https://zh.wikipedia.org/wiki/HttpUnit "wikilink")
  - [CUnit](https://zh.wikipedia.org/wiki/CUnit "wikilink")
  - [NUnit](https://zh.wikipedia.org/wiki/NUnit "wikilink")
  - [CPPUnit](https://zh.wikipedia.org/wiki/CPPUnit "wikilink")
  - [PHPUnit](https://zh.wikipedia.org/wiki/PHPUnit "wikilink")
  - [OCUnit](https://zh.wikipedia.org/wiki/OCUnit "wikilink")
  - [ASPUnit](https://zh.wikipedia.org/wiki/ASPUnit "wikilink")

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink") [Category:軟體測試](https://zh.wikipedia.org/wiki/Category:軟體測試 "wikilink")