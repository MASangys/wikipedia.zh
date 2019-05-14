**MyBatis**是一个[Java](../Page/Java.md "wikilink")，它通过[XML描述符或注解把](../Page/XML.md "wikilink")[对象与](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")[存储过程或](https://zh.wikipedia.org/wiki/存储过程 "wikilink")[SQL语句关联起来](../Page/SQL.md "wikilink")。

MyBatis是在[Apache许可证](../Page/Apache许可证.md "wikilink")
2.0下分发的[自由软件](../Page/自由软件.md "wikilink")，是[iBATIS](../Page/iBATIS.md "wikilink")
3.0的[分支版本](https://zh.wikipedia.org/wiki/复刻_\(软件工程\) "wikilink")。其维护团队也包含[iBATIS的初创成员](../Page/iBATIS.md "wikilink")。

## 功能概况

与其他的[对象关系映射框架不同](../Page/对象关系映射.md "wikilink")，MyBatis并没有将[Java](../Page/Java.md "wikilink")[对象与](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")[数据库表关联起来](../Page/数据库.md "wikilink")，而是将Java方法与[SQL语句关联](../Page/SQL.md "wikilink")。MyBatis允许用户充分利用[数据库的各种功能](../Page/数据库.md "wikilink")，例如存储过程、[视图](../Page/视图.md "wikilink")、各种复杂的查询以及某数据库的专有特性。如果要对遗留数据库、不规范的数据库进行操作，或者要完全控制SQL的执行，MyBatis是一个不错的选择。

与[JDBC相比](https://zh.wikipedia.org/wiki/JDBC "wikilink")，MyBatis简化了相关代码：SQL语句在一行代码中就能执行。MyBatis提供了一个映射引擎，声明式的把SQL语句执行结果与对象树映射起来。通过使用一种内建的类XML表达式语言，或者使用[Apache
Velocity集成的插件](https://zh.wikipedia.org/wiki/Apache_Velocity "wikilink")，SQL语句可以被动态的生成。

MyBatis与[Spring
Framework和](../Page/Spring_Framework.md "wikilink")集成，这使开发者免于依赖性问题。

MyBatis支持声明式数据缓存（declarative data
caching）。当一条SQL语句被标记为“可缓存”后，首次执行它时从数据库取得的所有数据会被存储在一段[高速缓存中](https://zh.wikipedia.org/wiki/高速缓存 "wikilink")，今后执行这条语句时就会从高速缓存中读取结果，而不是再次命中数据库。MyBatis提供了基于
Java HashMap
的默认缓存实现，以及用于与、、和[Memcached连接的默认连接器](../Page/Memcached.md "wikilink")。MyBatis还提供[API供其他缓存实现使用](https://zh.wikipedia.org/wiki/API "wikilink")。

## 用法

[SQL语句存储在](../Page/SQL.md "wikilink")[XML文件或](../Page/XML.md "wikilink")[Java
注解中](https://zh.wikipedia.org/wiki/Java_注解 "wikilink")。一个MyBatis映射的示例（其中用到了[Java接口和MyBatis](../Page/接口_\(Java\).md "wikilink")[注解](https://zh.wikipedia.org/wiki/Java_注解 "wikilink")）：

``` java
package org.mybatis.example;

public interface BlogMapper {
    @Select("select * from Blog where id = #{id}")
    Blog selectBlog(int id);
}
```

执行的示例：

``` java
BlogMapper mapper = session.getMapper(BlogMapper.class);
Blog blog = mapper.selectBlog(101);
```

[SQL语句和映射也可以外化到一个XML文件中](../Page/SQL.md "wikilink")：

``` xml
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd">

<mapper namespace="org.mybatis.example.BlogMapper">
    <select id="selectBlog" parameterType="int" resultType="Blog">
        select * from Blog where id = #{id}
    </select>
</mapper>
```

也可以使用MyBatis API执行语句：

``` java
Blog blog = session.selectOne("org.mybatis.example.BlogMapper.selectBlog", 101);
```

详细信息可以参考MyBatis网站所提供的用户手册。参见外部链接。

## 与Spring集成

MyBatis与[Spring
Framework集成](../Page/Spring_Framework.md "wikilink")。Spring
Framework允许MyBatis参与Spring事务，建立了MyBatis映射器和会话，并把他们注入到其他[bean中](../Page/JavaBeans.md "wikilink")。

如下所示是一个基本的XML配置示例：建立了映射器，并注入到“BlogService”[bean中](../Page/JavaBeans.md "wikilink")。

``` xml
<bean id="sqlSessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean">
    <property name="dataSource" ref="dataSource" />
</bean>

<bean id="blogMapper" class="org.mybatis.spring.mapper.MapperFactoryBean">
    <property name="sqlSessionFactory" ref="sqlSessionFactory" />
    <property name="mapperInterface" value="org.mybatis.example.BlogMapper" />
</bean>

<bean id="blogService" class="org.mybatis.example.BlogServiceImpl">
    <property name="blogMapper" ref="blogMapper" />
</bean>
```

现在调用MyBatis只需要调用一个[bean](../Page/JavaBeans.md "wikilink"):

``` java
public class BlogServiceImpl implements BlogService {

    private BlogMapper blogMapper;

    public void setBlogMapper(BlogMapper blogMapper) {
        this.blogMapper = blogMapper;
    }

    public void doSomethingWithABlog(int blogId) {
        Blog blog = blogMapper.selectBlog(blogId);
        ...
    }
}
```

## Velocity语言

Velocity语言[驱动程序允许用户使用](../Page/驱动程序.md "wikilink")[Apache
Velocity来快速生成动态SQL查询](https://zh.wikipedia.org/wiki/Apache_Velocity "wikilink")。

``` xml
<select id="findPerson" lang="velocity">
  #set( $pattern = $_parameter.name + '%' )
  SELECT *
  FROM person
  WHERE name LIKE @{pattern, jdbcType=VARCHAR}
</select>
```

## MyBatis生成器

MyBatis提供了代码生成器。MyBatis生成器（MyBatis
Generator）能对数据库表内省，生成执行的（CRUD）时所需的MyBatis代码。有相关的[Eclipse插件可供使用](../Page/Eclipse.md "wikilink")。

## MyBatis Migrations

MyBatis
Migrations\[1\]是一个[Java](../Page/Java.md "wikilink")[控制台应用程序](../Page/控制台应用程序.md "wikilink")，它通过管理[数据定义语言](https://zh.wikipedia.org/wiki/数据定义语言 "wikilink")（DDL）文件来跟踪的变更。\[2\]

Migrations可以查询当前数据库的状态，应用或恢复对的变更。它也有助于发现和解决由多个开发人员并行修改数据库模式的情况。

## 历史

MyBatis项目继承自[iBATIS](../Page/iBATIS.md "wikilink")
3.0，其维护团队也包含[iBATIS的初创成员](../Page/iBATIS.md "wikilink")。

2010年5月19日项目创建。当时Apache [iBATIS](../Page/iBATIS.md "wikilink")
3.0发布，其开发团队宣布会在新的名字、新的站点中继续开发\[3\]。

2013年11月10日，项目迁移到了[GitHub](../Page/GitHub.md "wikilink")。\[4\]

## 参见

  - [Hibernate](../Page/Hibernate.md "wikilink")

  - [iBATIS](../Page/iBATIS.md "wikilink")

  - [JDBC](https://zh.wikipedia.org/wiki/JDBC "wikilink")

  - [Java持久化API](https://zh.wikipedia.org/wiki/Java持久化API "wikilink")（JPA）

  -
  -
  - [面向Java对象查询](../Page/面向Java对象查询.md "wikilink")（jOOQ）

  -
  - [pureQuery](https://zh.wikipedia.org/wiki/pureQuery "wikilink")

  -
  - [Hydrate](http://hydrate.sourceforge.net/)

  -
  - [Spring Framework](../Page/Spring_Framework.md "wikilink")

  -
  - [O/R Broker](http://www.orbroker.org)

## 参考文献

## 外部链接

  -
[Category:对象关系映射](https://zh.wikipedia.org/wiki/Category:对象关系映射 "wikilink")
[Category:持久化框架](https://zh.wikipedia.org/wiki/Category:持久化框架 "wikilink")

1.  可译作“MyBatis数据库迁移管理工具”。
2.  即
3.
4.