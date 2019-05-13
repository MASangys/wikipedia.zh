**Nuva**语言是一种[面向对象的](../Page/面向对象.md "wikilink")[动态](../Page/型態系統.md "wikilink")[脚本语言](../Page/脚本语言.md "wikilink")。Nuva对应汉语的「[女娲](../Page/女娲.md "wikilink")」（[中国](../Page/中国.md "wikilink")[上古时代的神话传说人物](../Page/上古时代.md "wikilink")）一词。

## 设计目的

设计目的是用于基于模板的代码生成。除了用于代码生成领域外，也能用于开发应用程序，如文本和数据处理、[GUI应用程序等](../Page/GUI.md "wikilink")。

## 特点

  - 语法简单灵活：采用类似[虛擬碼](../Page/虛擬碼.md "wikilink")[演算法](../Page/演算法.md "wikilink")/[伪码的语法风格](../Page/伪码.md "wikilink")，结构之间可以任意嵌套，关键字和运算符兼容大部分现有的编程语言，非常容易学习。

<!-- end list -->

```
  <.
    if (a = b && c == d or e <> f)
      ?? foo()

      function foo()
        Result = 'foo'
      end function
    end if
  .>
```

  - 动态的，无类型约束：采用动态类型，使用时不需声明类型，赋值计算时自动进行类型转换，如下：

<!-- end list -->

```
  <.
    var a = '1'
    a ++
    ?? 'a' ~ a
    // 结果为: a2
  .>
```

  - 支持面向对象的编程方法：支持继承性和多态性。
  - 支持自动垃圾回收：程序员不需显式释放其所创建的对象。
  - 模板专用的语言元素
      - 模板标记（「\<.」、「.\>」、「\[.」、「.\]」）可以混合配对使用，对于格式要求很严格的场合非常有用。

<!-- end list -->

    [.='Hello, Nuva!'.]

    <.='Hello, Nuva!'.>

    [.='Hello, Nuva!'.>

    <.='Hello, Nuva!'.]

  -   - 凡「\[.」之前的所有空白字符原样输出，「.\]」之后的所有空白字符（包括换行）也原样输出；
      - 如果行首到「\<.」之间均为空白字符，则该部分空白字符不输出，否则原样输出；
      - 如果「.\>」到行尾之间均为空白字符，则该部分空白字符和换行不输出，否则也原样输出。
      - 特有的**file**和**assign**结构能够非常方便的对输出进行组合、分解，从而方便了模板的编写。

## Nuva虚拟机特点

  - 内置[正则表达式引擎](../Page/正则表达式.md "wikilink")：能够方便的进行文本处理。

<!-- end list -->

```
  <.
    var text = System.File.Load('Regex_Test.nuva')
    foreach(str = text.RegexMatchs('\w+', ''))
      ?? str
    end foreach
  .>
```

输出如下的结果：

```
  var
  text
  System
  File
  Load
  Regex_Test
  nuva
  foreach
  str
  text
  RegexMatches
  w
  str
  end
  foreach
```

  - 内置O/R Mapping引擎：可以通过面向对象的方式直接存取数据库架构和数据。
  - 内置基于[HTML](../Page/HTML.md "wikilink")/[XML的界面引擎](../Page/XML.md "wikilink")：能够方便的编写GUI应用程序，典型的例子就是[Macrobject
    CodeAuto代码生成器](http://www.macrobject.com/cn/codeauto/index.htm)。

## 代码示例

### Hello, Nuva\!

```
  <.. "Hello, Nuva!" Demo ..>
  <.
  //======================================
  //    Hello, Nuva! (1)
  //======================================
  ?? 'Hello, Nuva!'

  /*======================================
        Hello, Nuva! (2)
  ======================================*/
  function HelloNuva()
    ?? "Hello, Nuva!";
  end function

  HelloNuva();

  /*======================================
        Hello, Nuva! (3)
  ======================================*/
  class Nuva()
    function Hello()
      ?? 'Hello, Nuva!';
    end function
  end class

  var n = Nuva();
  n.Hello();
  .>
```

### foreach | O/R Mapping

```
  <.
  function Foreach_Demo()
    // Load Schema from a Xml file
    var schema = System.Data.LoadSchema(
        System.Path.ProjectPath ~ '..\Northwind\Northwind.xobject'
      );

    ?? '--------------------'
    ?? 'Tables Order by Name'
    ?? '--------------------'
    foreach(table = schema.Tables.OrderbyName)
      ?? table.Name
    end foreach

    ?? '---------------------------------'
    ?? 'Tables Filter by Name.Length < 10'
    ?? '---------------------------------'
    foreach(table = schema.Tables | table.Name.Length < 10)
      ?? table.Name
    end foreach
  end function
  .>
```

### file | 生成文件

```
  <.
  function File_Demo()
    ?? \r\n ~ '--Read file and Output here--'
    file('codeexamples.nuvaproj') end file

    // Read file and write to 'Target', overwrite it if exist
    file('codeexamples.nuvaproj', true)
      Target = 'temp.target'
    end file

    ?? \r\n ~ '--Read file dynamically and Output here--'
    file('')
      FileName = System.Path.ProjectPath ~ 'output\temp.target'
    end file

    // Delete file
    System.File.Delete(System.Path.ProjectPath ~ 'output\temp.target')
  end function
  .>
```

### assign | 捕获输出

```
  <.
  function Assign_Demo()
    // 'Result' assigned from the output in the assign statement
    assign(Result).]
      Generate Text ... @[.=System.Now.] ...
  <.end assign
  end function
  .>
```

### 函数 | 递归调用

```
  <.
  /*--------------------------------------------------------
    Factorial
  --------------------------------------------------------*/
  function Factorial ( N )
    if (N <= 1)
      Result = 1;
    else
      Result = N * Factorial(N - 1); // Recursion Call
    end if;
  end function;
  .>
```

### 类 | 多态性

```
  <.
  function Class_Demo()
    class ClassA()
      function Do()
        this.DynDo()
      end function

      function DynDo()
        ?? 'ClassA'
      end function
    end class

    class ClassB = ClassA()
      function DynDo()
        ?? 'ClassB'
      end function
    end class

    var c1 = ClassA()
    var c2 = ClassB()
    c1.Do()
    c2.Do()
  end function
  .>
```

## 外部链接

  - [Nuva语言官方主页](http://www.macrobject.com/cn/nuva_language/index.htm) -
    可選或

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")
[Category:脚本语言](https://zh.wikipedia.org/wiki/Category:脚本语言 "wikilink")