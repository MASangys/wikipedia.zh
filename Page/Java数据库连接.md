[Crystal_source_java.png](https://zh.wikipedia.org/wiki/File:Crystal_source_java.png "fig:Crystal_source_java.png")

**Java数据库连接**，（，简称）是[Java语言中用来规范](../Page/Java语言.md "wikilink")[客户端程序如何来访问](../Page/客户端.md "wikilink")[数据库的](../Page/数据库.md "wikilink")[应用程序接口](../Page/应用程序接口.md "wikilink")，提供了诸如查询和更新数据库中数据的方法。JDBC也是[Sun
Microsystems的](../Page/Sun_Microsystems.md "wikilink")[商标](../Page/商标.md "wikilink")\[1\]。JDBC是面向[关系型数据库的](../Page/关系型数据库.md "wikilink")。

在[J2SE中](../Page/J2SE.md "wikilink")，提供了一个称之为JDBC-ODBC桥（JDBC-ODBC
Bridge\[2\]）的API。通过[ODBC](../Page/ODBC.md "wikilink")，JDBC-ODBC桥[驱动程序可以访问所有支持ODBC的关系型数据库](../Page/驱动程序.md "wikilink")。与JDBC
API不同的是，这个驱动程序并不是由Java代码而是由[機器碼](../Page/机器语言.md "wikilink")（native
code）编写，并且不是[开放源代码的](../Page/开放源代码.md "wikilink")\[3\]。

## 驱动程序类型

JDBC驱动程序共分四种类型：

### 类型1：JDBC-ODBC桥

这种类型的驱动把所有JDBC的调用传递给ODBC，再让后者调用数据库本地驱动代码（也就是数据库厂商提供的数据库操作二进制代码库，例如[Oracle中的oci](../Page/Oracle.md "wikilink").dll）。

优点：

  - 只要有对应的ODBC驱动（大部分数据库厂商都会提供），几乎可以访问所有的数据库。

缺点：

  - 执行效率比较低，不适合大数据量存取的应用；
  - 由于需要客户端预装对应的ODBC驱动，不适合Internet/Intranet应用。

### 类型2：本地API驱动

这种类型的驱动通过客户端加载数据库厂商提供的本地代码库（[C](../Page/C语言.md "wikilink")／[C++等](../Page/C++.md "wikilink")）来访问数据库，而在驱动程序中则包含了Java代码。

优点：

  - 速度快于第一类驱动（但仍比不上第3、第4类驱动）。

缺点

  - 由于需要客户端预装对应的数据库厂商代码库，仍不适合Internet/Intranet应用。

### 类型3：网络协议驱动

这种类型的驱动给客户端提供了一个网络API，客户端上的JDBC驱动程序使用[套接字](../Page/套接字.md "wikilink")（Socket）来调用服务器上的中间件程序，后者在将其请求转化为所需的具体API调用。

优点：

  - 不需要在客户端加载数据库厂商提供的代码库，单个驱动程序可以对多个数据库进行访问，可扩展性较好。

缺点：

  - 在中间件层仍需对最终数据进行配置；
  - 由于多出一个中间件层，速度不如第四类驱动程序。

### 类型4：本地协议驱动

这种类型的驱动使用Socket，直接在客户端和数据库间通信。

优点：

  - 访问速度最快；
  - 这是最直接、最纯粹的[Java实现](../Page/Java.md "wikilink")。

缺点：

  - 几乎只有数据库厂商自己才能提供这种类型的JDBC驱动。
  - 需要针对不同的数据库使用不同的驱动程序。

## API概述

*参看[JavaSE以及](../Page/JavaSE.md "wikilink")[java.sql
API](https://web.archive.org/web/20050709074831/http://java.sun.com/j2se/1.4.2/docs/api/java/sql/package-summary.html)*

JDBC
API主要位于JDK中的java.sql包中（之后扩展的内容位于javax.sql包中），主要包括（斜体代表接口，需驱动程序提供者来具体实现）：

  - DriverManager：负责加载各种不同驱动程序（Driver），并根据不同的请求，向调用者返回相应的数据库连接（Connection）。
  - *Driver*：驱动程序，会将自身加载到DriverManager中去，并处理相应的请求并返回相应的数据库连接（Connection）。
  - *Connection*：数据库连接，负责进行与数据库间的通讯，[SQL执行以及事务处理都是在某个特定Connection环境中进行的](../Page/SQL.md "wikilink")。可以产生用以执行SQL的Statement。
  - *Statement*：用以执行SQL查询和更新（针对静态SQL语句和单次执行）。
  - *PreparedStatement*：用以执行包含动态参数的SQL查询和更新（在服务器端编译，允许重复执行以提高效率）。
  - *CallableStatement*：用以调用数据库中的[存储过程](../Page/存储过程.md "wikilink")。
  - SQLException：代表在数据库连接的建立和关闭和SQL语句的执行过程中发生了例外情况（即错误）。

### 数据类型的映射

| SQL类型         | Java类型               |
| ------------- | -------------------- |
| CHAR          | java.lang.String     |
| VARCHAR       | java.lang.String     |
| LONGVARCHAR   | java.lang.String     |
| NUMERIC       | java.math.BigDecimal |
| DECIMAL       | java.math.BigDecimal |
| BIT           | boolean              |
| TINYINT       | byte                 |
| SMALLINT      | short                |
| INTEGER       | int                  |
| BIGINT        | long                 |
| REAL          | float                |
| FLOAT         | double               |
| DOUBLE        | double               |
| BINARY        | byte\[\]             |
| VARBINARY     | byte\[\]             |
| LONGVARBINARY | byte\[\]             |
| DATE          | java.sql.Date        |
| TIME          | java.sql.Time        |
| TIMESTAMP     | java.sql.Timestamp   |
| BLOB          | java.sql.Blob        |
| CLOB          | java.sql.Clob        |
| Array         | java.sql.Array       |
| REF           | java.sql.Ref         |
| Struct        | java.sql.Struct      |

从SQL到Java数据类型映射的JDBC规范

<small>注：这种类型匹配不是强制性标准，特定的JDBC厂商可能会改变这种类型匹配。例如Oracle中的DATE类型是包含时分秒，而java.sql.Date仅仅支持年月日。</small>

## 例子

利用Class.forName()方法来加载JDBC驱动程序（*Driver*）至DriverManager：

``` java
Class.forName( "com.somejdbcvendor.TheirJdbcDriver" );
```

然后，从DriverManager中，通过JDBC
[URL](../Page/URL.md "wikilink")，用户名，密码来获取相应的数据库连接（*Connection*）：

``` java
Connection conn = DriverManager.getConnection(
      "jdbc:somejdbcvendor:other data needed by some jdbc vendor", // URL
      "myLogin", // 用户名
      "myPassword" ); // 密码
```

不同的JDBC驱动程序的URL是不同的，它永远以“jdbc：”开始，但后面的内容依照驱动程序类型不同而各异。在获取*Connection*之后，便可以建立*Statement*用以执行SQL语句。下面是一个插入（INSERT）的例子：

``` java
 Statement stmt = conn.createStatement();
 stmt.executeUpdate( "INSERT INTO MyTable( name ) VALUES ( 'my name' ) " );
```

查询（SELECT）的结果存放于结果集（*ResultSet*）中，可以按照顺序依次访问：

``` java
 Statement stmt = conn.createStatement();
 ResultSet rs = stmt.executeQuery( "SELECT * FROM MyTable" );
 while ( rs.next() ) {
     int numColumns = rs.getMetaData().getColumnCount();
     for ( int i = 1 ; i <= numColumns ; i++ ) {
        // 与大部分Java API中下标的使用方法不同，字段的下标从1开始
        // 当然，还有其他很多的方式（ResultSet.getXXX()）获取数据
        System.out.println( "COLUMN " + i + " = " + rs.getObject(i) );
     }
 }
 rs.close();
 stmt.close();
```

但是，通常，Java[程序员们更倾向于使用](../Page/程序员.md "wikilink")*PreparedStatement*。下面的例子使用上例中的conn对象：

``` java
 PreparedStatement ps = null;
 ResultSet rs = null;
 try {
 ps = conn.prepareStatement( "SELECT i.*, j.* FROM Omega i, Zappa j
      WHERE i = ? AND j = ?" );
 // 使用问号作为参数的标示

 // 进行参数设置
 // 与大部分Java API中下标的使用方法不同，字段的下标从1开始，1代表第一个问号
 // 当然，还有其他很多针对不同类型的类似的PreparedStatement.setXXX()方法
 ps.setString(1, "Poor Yorick");
 ps.setInt(2, 8008);

 // 结果集
 rs = ps.executeQuery();
 while ( rs.next() ) {
     int numColumns = rs.getMetaData().getColumnCount();
     for ( int i = 1 ; i <= numColumns ; i++ ) {
        // 与大部分Java API中下标的使用方法不同，字段的下标从1开始
        // 当然，还有其他很多的方式（ResultSet.getXXX()）获取数据
        System.out.println( "COLUMN " + i + " = " + rs.getObject(i) );
     }

 }
 catch (SQLException e) {
  // 异常处理
 }
 finally { // 使用finally进行资源释放
  try {
   rs.close();
   ps.close();
  } catch( SQLException e){} // 异常处理：忽略close()时的错误
 }
```

如果数据库操作失败，JDBC将抛出一个[SQLException](../Page/SQLException.md "wikilink")。一般来说，此类异常很少能够恢复，唯一能做的就是尽可能详细的打印异常日记。推荐的做法是将SQLException翻译成应用程序领域相关的异常（非强制处理异常）并最终回滚数据库和通知用户。

一个[数据库事务代码如下](../Page/数据库事务.md "wikilink")：

``` java
boolean autoCommitDefault = conn.getAutoCommit();
try {
    conn.setAutoCommit(false);

    /* 在此基于有事务控制的conn执行你的代码 */

    conn.commit();
} catch (Throwable e) {
    try { conn.rollback(); } catch (Throwable ignore) {}
    throw e;
} finally {
    try { conn.setAutoCommit(autoCommitDefault); } catch (Throwable ignore) {}
}
```

## 参考文献

## 外部链接

  - [Sun提供的JDBC驱动程序及其供应商列表](https://archive.is/20030803212350/http://servlet.java.sun.com/products/jdbc/drivers)
  - [Sun提供的教程](https://web.archive.org/web/20041209205155/http://java.sun.com/docs/books/tutorial/post1.0/whatsnew/jdbc.html)
  - [Sun Java 2 1.4.2 API](http://java.sun.com/j2se/1.4.2/docs/api/)
  - [一个订单系统的原形](http://java.sun.com/developer/technicalArticles/Database/dukesbakery/)
  - [DBAccessor:
    JDBC数据库访问封装类](http://java.sun.com/developer/technicalArticles/Database/dbaccessor/)
  - [开源的JDBC驱动程序列表](http://java-source.net/open-source/database-engines)
  - <http://blog.csdn.net/cho3en1/article/details/52695808>

## 参见

  - [数据库](../Page/数据库.md "wikilink")
  - [Java](../Page/Java.md "wikilink")
  - [J2SE](../Page/J2SE.md "wikilink")
  - [J2EE](../Page/J2EE.md "wikilink")
  - [ODBC](../Page/ODBC.md "wikilink")
  - [ADO](../Page/ADO.md "wikilink")
  - [ADO.NET](../Page/ADO.NET.md "wikilink")

{{-}}

[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")
[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")
[Category:Java规范请求](https://zh.wikipedia.org/wiki/Category:Java规范请求 "wikilink")
[Category:数据库](https://zh.wikipedia.org/wiki/Category:数据库 "wikilink")

1.  [1](http://java.sun.com/j2se/1.5.0/docs/guide/jdbc/getstart/intro.html#1018466)
2.
3.  [2](http://java.sun.com/products/jdbc/jdbc-3_0-fr-spec-license.html)