**Java注解**又称**Java标注**，是[Java语言](../Page/Java.md "wikilink")5.0版本开始支持加入[源代码的特殊语法](../Page/源代码.md "wikilink")[元数据](../Page/元数据.md "wikilink")\[1\]。

Java语言中的类、方法、变量、参数和包等都可以被标注。和[Javadoc不同](../Page/Javadoc.md "wikilink")，Java标注可以通过反射获取标注内容。在[编译器生成](https://zh.wikipedia.org/wiki/编译器 "wikilink")[类文件时](https://zh.wikipedia.org/wiki/类文件 "wikilink")，标注可以被嵌入到[字节码中](https://zh.wikipedia.org/wiki/字节码 "wikilink")。[Java虚拟机可以保留标注内容](../Page/Java虚拟机.md "wikilink")，在运行时可以获取到标注内容\[2\]。
当然它也支持自定义Java标注\[3\]

## 历史

Java 平台有许多特别的注解，例如 `transient` 修饰符, `@deprecated` javadoc 标签。2002 年，文案
JSR-175 提出了通用需求的注解(或者说元注解)手段，并在 2004 年 9 月收到许多人的赞赏。\[4\] 从 JDK 1.5
开始，java 开始支持注解。Annotation Processing tool (或者说 `apt` tool)
提供了一个补充性的编译时注解操作的接口。文档 JSR-269 将它规范化，在 JDK 1.6 写入编译器
javac 中。

## 内置的注解

Java 定义了一套注解，共有 7 个，3 个在 java.lang 中，剩下 4 个在 java.lang.annotation
中\[5\]\[6\]

**作用在代码的注解是**

  - `@Override` - 检查该方法是否是重载方法。如果发现其父类，或者是引用的接口中并没有该方法时，会报编译错误。
  - `@Deprecated` - 标记过时方法。如果使用该方法，会报编译警告。
  - `@SuppressWarnings` - 指示编译器去忽略注解中声明的警告。

**作用在其他注解的注解(或者说 元注解)是:**

  - `@Retention` - 标识这个注解怎么保存，是只在代码中，还是编入class文件中，或者是在运行时可以通过反射访问。
  - `@Documented` - 标记这些注解是否包含在用户文档中。
  - `@Target` - 标记这个注解应该是哪种 Java 成员。
  - `@Inherited` - 标记这个注解是继承于哪个注解类(默认 注解并没有继承于任何子类)

从 Java 7 开始，额外添加了 3 个注解:

  - `@SafeVarargs` - Java 7 开始支持，忽略任何使用参数为泛型变量的方法或构造函数调用产生的警告。
  - `@FunctionalInterface` - Java 8 开始支持，标识一个匿名函数或函数式接口。
  - `@Repeatable` - Java 8 开始支持，标识某注解可以在同一个声明上使用多次。

## 实例

``` java
  // @Twizzle标注toggle()方法。
  @Twizzle
  public void toggle() {
  }

  // 声明Twizzle标注
  public @interface Twizzle {
  }
```

标注可以包含一个关键字和值的对所构成的列表：

``` java
  //等同于 @Edible(value = true)
  @Edible(true)
  Item item = new Carrot();

  public @interface Edible {
    boolean value() default false;
  }

  @Author(first = "Oompah", last = "Loompah")
  Book book = new Book();

  public @interface Author {
    String first();
    String last();
  }
```

标注声明中可以用标注说明使用方式、时间和对象：

``` java
  @Retention(RetentionPolicy.RUNTIME) // 该标注可以在运行时通过反射访问。
  @Target({ElementType.METHOD})       // 该标注只用于类内方法。
  public @interface Tweezable {
  }
```

编译器保留一组标注用于特定语法目的 (包括 `@Deprecated`, `@Override`和`@SuppressWarnings`等)。

标注通常用于软件[框架为用户定义的类和方法提供引用外部资源的情形](https://zh.wikipedia.org/wiki/框架 "wikilink")，如XML配置文件、事务环境等。以下是一个标注过的EJB
3.0的类：

``` java
  @Entity                                           // 声明实体类
  @Table(name = "people")                           // 映射该类到 "people"表
  class Person implements Serializable {
    @Id                                             // 映射到主键
    @GeneratedValue(strategy = GenerationType.AUTO) // 数据库自动生成键值
    private Integer id;

    @Column(length = 32)                            // 限长32个字符
    private String name;

    public Integer getId() {
      return id;
    }

    public void setId(Integer id) {
      this.id = id;
    }

    public String getName() {
      return name;
    }

    public void setName(String name) {
      this.name = name;
    }
  }
```

以上代码中标注不执行任何特定行为，而是为在运行时，EJB容器获得足够的信息，生成对象到关系数据库的映射。

## 参考引用

<references/>

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")

1.  .
2.  .
3.
4.
5.
6.