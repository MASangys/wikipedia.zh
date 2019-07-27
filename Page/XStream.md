**XStream**是[Java](../Page/Java.md "wikilink")类库，用来将[对象](../Page/面向对象程序设计.md "wikilink")[序列化](../Page/序列化.md "wikilink")成[XML](../Page/XML.md "wikilink")
（[JSON](../Page/JSON.md "wikilink")）或反序列化为对象。\[1\]

XStream是[自由软件](../Page/自由软件.md "wikilink"),可以在[BSD许可证](../Page/BSD许可证.md "wikilink")的许可下分发。

## XStream库

XStream在[运行时使用Java](../Page/執行期.md "wikilink")[反射机制对要进行序列化的对象树的结构进行探索](../Page/反射_\(计算机科学\).md "wikilink")，并不需要对对象作出修改。XStream可以序列化内部字段，包括私private和final字段，并且支持非公开类以及内部类。\[2\]

在缺省情况下，XStream不需要配置映射关系，对象和字段将映射为同名XML元素。但是当对象和字段名与XML中的元素名不同时，XStream支持指定别名。XStream支持以方法调用的方式，或是[Java
标注的方式指定别名](https://zh.wikipedia.org/wiki/Java_标注 "wikilink")。

XStream在进行数据类型转换时，使用系统缺省的类型转换器。同时，也支持用户自定义的类型转换器。

### 对象图的序列化

当序列化一个对象时，XStream将序列化整个对象图。如果在对象图中遇到重复引用，在生成的XML中奖保留这些引用。以下面的CD类为例：

``` java
package com.abc.xstream;
public class Cd {
    private String id;

    private Cd bonusCd;

    Cd(String id, Cd bonusCd) {
        this.id = id;
        this.bonusCd = bonusCd;
    }

    Cd(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public Cd getBonusCd() {
        return bonusCd;
    }
}
```

并且向列表添加一些Cd对象

``` java
Cd bj = new Cd("basement_jaxx_singles");
Cd mr = new Cd("maria rita");

List order = new ArrayList();
order.add(mr);
// 两次添加同一个CD（两个引用指向同一个对象）
order.add(bj);
order.add(bj);

// 添加自己 （循环）
order.add(order);

XStream xstream = new XStream();
xstream.alias("cd", Cd.class);
System.out.println(xstream.toXML(order));
```

如果在XStream的缺省的相对引用模式下执行以上程序，程序将生成下面的XML：

``` xml
<list>
  <cd>
    <id>maria rita</id>
  </cd>
  <cd>
    <id>basement_jaxx_singles</id>
  </cd>
  <cd reference="../cd[2]"/>
  <list reference=".."/>
</list>
```

## 使用

  - [Confluence](https://zh.wikipedia.org/wiki/Confluence "wikilink")\[3\]
  - [Apache
    Muse](https://zh.wikipedia.org/wiki/Apache_Muse "wikilink")\[4\]

## 参考文献

## 外部链接

  - [XStream类库主页](https://web.archive.org/web/20120711075012/http://xstream.codehaus.org/)

[Category:XML软件](https://zh.wikipedia.org/wiki/Category:XML软件 "wikilink")
[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")
[Category:Java平台軟體](https://zh.wikipedia.org/wiki/Category:Java平台軟體 "wikilink")
[Category:计算机程序库](https://zh.wikipedia.org/wiki/Category:计算机程序库 "wikilink")
[Category:自由電腦程式設計工具](https://zh.wikipedia.org/wiki/Category:自由電腦程式設計工具 "wikilink")

1.

2.

3.

4.