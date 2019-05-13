**JUnit**是一个[Java语言的](../Page/Java.md "wikilink")[单元测试框架](../Page/单元测试.md "wikilink")。它由[肯特·貝克和](../Page/肯特·貝克.md "wikilink")[埃里希·伽瑪](../Page/埃里希·伽瑪.md "wikilink")（Erich
Gamma）建立，逐渐成为源于Kent
Beck的[sUnit的](../Page/sUnit.md "wikilink")[xUnit家族中为最成功的一个](../Page/xUnit.md "wikilink")。
JUnit有它自己的[JUnit扩展](https://web.archive.org/web/20051013060403/http://www.junit.org/news/extension/index.htm)生态圈。

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

来自**JUnit**的体验对[测试驱动开发是很重要的](../Page/测试驱动开发.md "wikilink")，所以一些
**JUnit**知识经常 和测试驱动开发的讨论融合在一起。可以参考Kent Beck的 《Test-Driven Development:
By Example》一书（有中文版和影印版）。

## 外部链接

  - [JUnit](http://junit.org/)
  - [TestNG](http://beust.com/testng)有一些和**JUnit**相同的目标
  - [JUnit单元测试](https://web.archive.org/web/20051125204241/http://www.linux.ie/articles/tutorials/junit.php)
  - [JUnit的反模式](https://web.archive.org/web/20071023090127/http://www.ibm.com/developerworks/opensource/library/os-junit/?ca=dgr-lnxw07JUnite)
  - [JUnit 4](http://www.ibm.com/developerworks/java/library/j-junit4.html?ca=dgr-lnxw01JUnit4)
  - [51testing单元测试](http://www.51testing.com/html/94/category-catid-94.html)

## 衍生工具

  - [HttpUnit](../Page/HttpUnit.md "wikilink")
  - [CUnit](../Page/CUnit.md "wikilink")
  - [NUnit](../Page/NUnit.md "wikilink")
  - [CPPUnit](../Page/CPPUnit.md "wikilink")
  - [PHPUnit](../Page/PHPUnit.md "wikilink")
  - [OCUnit](../Page/OCUnit.md "wikilink")
  - [ASPUnit](../Page/ASPUnit.md "wikilink")

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")
[Category:軟體測試](https://zh.wikipedia.org/wiki/Category:軟體測試 "wikilink")