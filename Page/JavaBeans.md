**JavaBeans**是[Java](../Page/Java.md "wikilink")中一种特殊的[类](../Page/类_\(计算机科学\).md "wikilink")，可以将多个[对象封装到一个对象](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")（bean）中。特点是可[序列化](../Page/序列化.md "wikilink")，提供，提供访问对象的属性。名称中的“Bean”是用于Java的可重用软件组件的惯用叫法。

## 优点

  - Bean可以控制它的属性、事件和方法是否暴露给其他程序。
  - Bean可以接收来自其他对象的事件，也可以产生事件给其他对象。
  - 有软件可用来配置Bean。
  - Bean的属性可以被序列化，以供日后重用。

## JavaBeans规范

要成为JavaBean[类](../Page/类_\(计算机科学\).md "wikilink")，则必须遵循关于命名、构造器、方法的特定规范。有了这些规范，才能有可以使用、复用、替代和连接JavaBeans的工具。

规范如下：

  - 有一个public的無參數建構元。
  - 属性可以通过*get*、*set*、*is*（可以替代get，用在布尔型属性上）方法或遵循特定命名规范的其他方法访问。
  - 可序列化。

<!-- end list -->

``` Java

package player;

public class PersonBean implements java.io.Serializable {

    /**
     * name 属性(注意大小写)
     */
    private String name = null;

    private boolean deceased = false;

    /** 无参构造器(没有参数) */
    public PersonBean() {
    }

    /**
     * name 属性的Getter方法
     */
    public String getName() {
        return name;
    }

    /**
     * name 属性的Setter方法
     * @param value
     */
    public void setName(final String value) {
        name = value;
    }

    /**
     * deceased 属性的Getter方法
     * 布尔型属性的Getter方法的不同形式(这里使用了is而非get)
     */
    public boolean isDeceased() {
        return deceased;
    }

    /**
     * deceased 属性的Setter方法
     * @param value
     */
    public void setDeceased(final boolean value) {
        deceased = value;
    }
}
```

**<u>`TestPersonBean.java`</u>**:

``` Java

import player.PersonBean;

/**
 * <code>TestPersonBean</code>类
 */
public class TestPersonBean {
    /**
     * PersonBean 类测试方法的main函数
     * @param ARGS
     */
    public static void main(String[] args) {
        PersonBean person = new PersonBean();

        person.setName("张三");
        person.setDeceased(false);

        // 输出: "张三[活着]"
        System.out.print(person.getName());
        System.out.println(person.isDeceased() ? " [已故]" : " [活着]");
    }
}
```

**<u>`testPersonBean.jsp`</u>**;

``` HTML4Strict
<% // 在JSP中使用PersonBean类 %>
<jsp:useBean id="person" class="player.PersonBean" scope="page"/>
<jsp:setProperty name="person" property="*"/>

<html>
    <body>
        姓名：<jsp:getProperty name="person" property="name"/><br/>
        已故与否？<jsp:getProperty name="person" property="deceased"/><br/>
        <br/>
        <form name="beanTest" method="POST" action="testPersonBean.jsp">
            输入姓名：<input type="text" name="name" size="50"><br/>
            选择选项：
            <select name="deceased">
                <option value="false">活着</option>
                <option value="true">已故</option>
            </select>
            <input type="submit" value="测试这个JavaBean">
        </form>
    </body>
</html>
```

## 参考文献

## 外部連結

  - [Oracle's JavaBeans tutorials](http://download.oracle.com/javase/tutorial/javabeans/)
  - [JavaBeans specification](http://www.oracle.com/technetwork/java/javase/documentation/spec-136004.html)

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")