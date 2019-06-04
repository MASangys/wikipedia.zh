**Apache
Derby**是[Apache軟件基金會所研發的開放源碼](https://zh.wikipedia.org/wiki/Apache軟件基金會 "wikilink")[資料庫管理系統](https://zh.wikipedia.org/wiki/資料庫管理系統 "wikilink")；由於Derby是一個純[Java程式](../Page/Java.md "wikilink")，因此只需要[操作系統支援](https://zh.wikipedia.org/wiki/操作系統 "wikilink")[Java虛擬機](https://zh.wikipedia.org/wiki/Java虛擬機 "wikilink")，Derby便可執行。

## 特性

Derby是特別地為Java環境進行優化，Derby本身不僅是一個純Java程式，而且Derby在執行用戶的[SQL程式時](../Page/SQL.md "wikilink")，能夠把SQL[編譯成Java](https://zh.wikipedia.org/wiki/編譯 "wikilink")
bytecode並以系統的Java虛擬機執行。由於SQL程式轉成的Java
bytecode能被[JIT動態翻譯](https://zh.wikipedia.org/wiki/JIT "wikilink")，因此Derby可能比傳統的資料庫管理系統更佳的性能。

其他特性包括：

  - 支援[主從架構或](https://zh.wikipedia.org/wiki/客戶端/服務器結構 "wikilink")
    [嵌入環境](https://zh.wikipedia.org/wiki/嵌入式系統 "wikilink")
  - [多線程](https://zh.wikipedia.org/wiki/多線程 "wikilink")
  - [ACID](../Page/ACID.md "wikilink")
  - [Java數據庫連接](https://zh.wikipedia.org/wiki/Java數據庫連接 "wikilink")（JDBC）
  - 低系統需求：約佔2
    [MB的硬盤空間](../Page/Mebibyte.md "wikilink")，[壓縮後更只是](https://zh.wikipedia.org/wiki/壓縮 "wikilink")600[KB](https://zh.wikipedia.org/wiki/KB "wikilink")
    \[1\]

## 商業的版本

  - Cloudscape － [IBM的Derby版本](../Page/IBM.md "wikilink")。
  - Java DB － [昇陽電腦自Java](https://zh.wikipedia.org/wiki/昇陽 "wikilink")
    6把Derby包括於[JDK](../Page/JDK.md "wikilink")。

## 安装

下载解压后，只需要配置好相关的环境变量：

1.  建立DERBY_HOME，值例：D:\\db-derby-10.10.2.0-bin
2.  在Path加入：%DERBY_HOME%\\bin
3.  在CLASSPATH加入：%DERBY_HOME%\\lib\\derby.jar;%DERBY_HOME%\\lib\\derbyclient.jar;%DERBY_HOME%\\lib\\derbytools.jar;%DERBY_HOME%\\lib\\derbynet.jar

<!-- end list -->

  - derby.jar 是引擎库。对嵌入式是必须的；对客户/服务器模式，服务器端必须此库
  - derbytools.jar 是Derby工具库，如ij, dblook, import/export
  - derbyoptionaltools.jar
  - derbynet.jar 通过网络服务器连接Derby（非嵌入方式）
  - derbyclient.jar: 网络客户端启动程序
  - derbyrun.jar: 执行jar文件用于简便地启动Derby工具或服务器。需要与其他jar文件在同一目录下
      - java -jar %DERBY_HOME%\\lib\\derbyrun.jar ij \[-p
        propertiesfile\] \[sql_script\]
      - java -jar %DERBY_HOME%\\lib\\derbyrun.jar sysinfo \[-cp ...\]
        \[-cp help\]
      - java -jar %DERBY_HOME%\\lib\\derbyrun.jar dblook \[arg\]\* (or
        no arguments for usage)
      - java -jar %DERBY_HOME%\\lib\\derbyrun.jar server \[arg\]\* (or
        no arguments for usage)

## 使用

sysinfo或java org.apache.derby.tools.sysinfo 查看安装信息版本

启动derby的网络服务器，默认监听127.0.0.1的1527端口，可以修改监听的IP和PORT

`   java org.apache.derby.drda.NetworkServerControl start -p 1388  #指定端口`

或者

`   startNetworkServer -h myhost -p 1388   #指定ip和端口`

或者

`java -jar derby/lib/derbyrun.jar server start`

dblook工具是一个Data Definition Language
(DDL)生成工具，可以卸载（dump）所有或部分用户指定的DDL到一个文件或控制台。

启动JDBC客户端工具ij，可以执行SQL脚本或者交互式查询：

` ij或java org.apache.derby.tools.ij 或 java -jar derby/lib/derbyrun.jar ij -p ij.properties`

ij命令行参数：

` ij -Dij.connection.mynetconnection=jdbc:derby://myserver:1527/mydb -Dij.user=me -Dij.password=nocansay`

也可以创建一个名为ij.properties，用于默认连接数据库：

` ij.driver=org.apache.derby.jdbc.ClientDriver`
` ij.protocol=jdbc:derby://localhost:1527/`
` ij.database=COREJAVA;create=true`

或者先设置环境变量：

` set DERBY_OPTS=-Dij.protocol=jdbc:derby://localhost/`

在ij客户端工具内部，不区分大小写，每条命令都应以分号结尾。

连接数据库并在必要时创建数据库：

`   connect 'jdbc:derby:mydb;create=true;user=test;password=test';   //创建/连接嵌入式数据库,`
`                                                                    //如果只写数据库名则会在当前目录下创建数据库目录`
`            //也可以指定其他位置进行创建"jdbc:derby:d:/a/b/userDB;create=true;user=test;password=test"`
`   connect 'jdbc:derby://host:1527/dbname;create=true';    //创建/链接网络数据库`

查看ij的命令：

`   help;`

运行sql文件：

`   run 'D:/derby/demo/ToursDB_schema.sql'  [RunResultOutput.txt]；`

断开数据库连接（并停止内嵌模式数据库）

`   disconnect;`

退出客户端：

`   exit ;`

关闭数据库服务器：

`java -jar derby/lib/derbyrun.jar server shutdown`

命令行当前目录中derby.log日志文件，derby在其中记录的数据库启动、关闭的信息。

Java程序访问Derby数据库：

``` java
package test;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class EmbeddedDerbyTester {
    public static void main(String[] args) {
        String driver = "org.apache.derby.jdbc.EmbeddedDriver";//在derby.jar里面
        String dbName="EmbeddedDB";
        String dbURL = "jdbc:derby:"+dbName+";create=true";//create=true表示当数据库不存在时就创建它
        try {
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(dbURL);//启动/连接嵌入式数据库
            Statement st = conn.createStatement();
            st.execute("create table foo (FOOID INT NOT NULL,FOONAME VARCHAR(30) NOT NULL)");//创建foo表
            st.executeUpdate("insert into foo(FOOID,FOONAME) values (1,'chinajash')");//插入一条数据
            ResultSet rs = st.executeQuery("select * from foo");//读取刚插入的数据
            while(rs.next()){
                int id = rs.getInt(1);
                String name = rs.getString(2);
                System.out.println("id="+id+";name="+name);
            }
        } catch(Exception e){
            e.printStackTrace();
        }
    }
}
```

启动Derby网络服务器的Java程序：

``` java
package test;
import java.io.PrintWriter;
import java.sql.DriverManager;
import org.apache.derby.drda.NetworkServerControl;

public class NetworkServerDerbyTester {
    public static void main(String[] args) {
        String driver = "org.apache.derby.jdbc.ClientDriver";//在derbyclient.jar里面
        String dbName="NetworkDB";
        String connectionURL = "jdbc:derby://localhost:1527/" + dbName + ";create=true";
        try {
            /*
                启动Derby网络服务器,默认端口是1527,也可以通过运行
                        <Derby_Home>/frameworks/NetworkServer/bin/startNetworkServer.bat
                来启动Derby网络服务器；如果是Unix,用startNetworkServer
            */

            NetworkServerControl derbyServer = new NetworkServerControl();//NetworkServerControl类在derbynet.jar里面
            PrintWriter pw = new PrintWriter(System.out);//用系统输出作为Derby数据库的输出
            derbyServer.start(pw);//启动Derby服务器
            Class.forName(driver);
            DriverManager.getConnection(connectionURL);
            //do something here..........
            derbyServer.shutdown();//关闭Derby服务器
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
```

## [Schema实现](../Page/Schema_\(数据库\).md "wikilink")

[Apache Derby数据库](../Page/Apache_Derby.md "wikilink")（即[Java
DB](https://zh.wikipedia.org/wiki/Java_DB "wikilink")）的任何connection的当前[schema](../Page/Schema_\(数据库\).md "wikilink")，默认是对应于该用户名的一个schema。如果无用户名被提供，那么当前用户名与当前schema缺省是APP。

但即使当前schema被设置为用户名，这个schema仍然可能不存在。一个schema只能被创建：通过CREATE
SCHEMA语句显式创建或者创建一个对象（例如表等）来隐式创建。

APP schema总是存在，不需要创建。

如果你的程序试图访问当前schema但该schema下没有创建任何对象，就会遇到“schema not exists”错误。\[2\]

## 註釋

<references/>

## 參見

  - [Berkeley DB Java Edition](../Page/Berkeley_DB.md "wikilink") -
    另一純Java資料庫管理系統。

## 外部連結

  - [Derby官方網站](http://db.apache.org/derby/)

  - [Cloudscape官方網站](http://www-306.ibm.com/software/data/cloudscape/)

  - [Java DB官方網站](http://developers.sun.com/javadb/)

  - [Apache Derby 项目资源
    (IBM)](http://www.ibm.com/developerworks/cn/opensource/top-projects/derby.html)

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")
[Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink")
[Category:開源資料庫管理系統](https://zh.wikipedia.org/wiki/Category:開源資料庫管理系統 "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")

1.
2.  [Apache Derby数据库（即Java DB） Frequently Asked Questions 5.3. Why do I
    get the error 'schema does not
    exist'?](http://db.apache.org/derby/faq.html)