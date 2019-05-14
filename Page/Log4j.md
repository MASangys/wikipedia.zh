Apache **Log4j**是一个基于[Java的日志记录工具](../Page/Java.md "wikilink")。它是由Ceki
Gülcü首创的，现在则是[Apache软件基金会的一个项目](../Page/Apache软件基金会.md "wikilink")。
log4j是几种之一。

Gülcü此后开创了[SLF4J和](../Page/SLF4J.md "wikilink")[Logback](http://logback.qos.ch/)项目，意图成为log4j的继任者。

log4j团队创建了log4j的继任者，版本号为[2.0](http://logging.apache.org/log4j/2.x/)的新版本。log4j
2.0着重于log4j 1.2、1.3、java.util.logging和logback中的问题，并解决这些框架中的架构问题。此外，log4j
2.0提供了一个插件架构，这使得其更可扩展。log4j 2.0不是与1.x向后兼容的版本\[1\]，虽然有一个“适配器”可用。

## log4j 1的日志等级

下表中定义的log4j 1的日志级别和消息，以严重性递减排序。左栏列出了log4j的日志级别定义，右列提供了每个日志级别的简要说明。

| **级别**    | **描述**                                                              |
| --------- | ------------------------------------------------------------------- |
| **OFF**   | 最高级别，用于关闭日志记录。                                                      |
| **FATAL** | 导致应用程序提前终止的严重错误。一般这些信息将立即呈现在状态控制台上。                                 |
| **ERROR** | 其他运行时错误或意外情况。一般这些信息将立即呈现在状态控制台上。                                    |
| **WARN**  | 使用已过时的API，API的滥用，潜在错误，其他不良的或意外的运行时的状况（但不一定是错误的）。一般这些信息将立即呈现在状态控制台上。 |
| **INFO**  | 令人感兴趣的运行时事件（启动/关闭）。一般这些信息将立即呈现在状态控制台上，因而要保守使用，并保持到最低限度。             |
| **DEBUG** | 流经系统的详细信息。一般这些信息只记录到日志文件中。                                          |
| **TRACE** | 最详细的信息。一般这些信息只记录到日志文件中。自版本1.2.12\[2\]。                              |

## 配置log4j 1.2

有三种方法来配置log4j：通过[.properties文件](https://zh.wikipedia.org/wiki/.properties "wikilink")，通过[XML文件](../Page/XML.md "wikilink")，通过Java代码。通过上述任意方法，你可以定义log4j的三个主要组件：Logger、Appender和Layout。通过文件配置log4j，具有无需修改应用即可打开或关闭日志的好处。例如，应用程序可以在日志关闭的情况下运行，直到问题出现后，再日志功能可以简单地通过修改配置文件重新打开。

**Logger**（记录器）是日志的逻辑文件名。其使用已知的Java应用程序的名称。每个记录器当前以什么日志记录级别（FATAL、ERROR等）记录是独立配置的。在log4j的早期版本中，这些被称为类别（category）和优先级（priority），但现在他们分别被称为logger（记录器）和level（级别）。

实际的输出是通过**Appender**（输出源）。有许多可用的Appender，比如FileAppender、ConsoleAppender、SocketAppender、SyslogAppender、NTEventLogAppender，甚至SMTPAppender。多个Appender可以被关联到任何Logger上，所以可以到多个输出文件上记录相同的信息，例如同时到一个本地文件和通过[套接字监听器到另一台计算机上](https://zh.wikipedia.org/wiki/套接字 "wikilink")。

Appender使用**Layout**（布局）格式化日志条目。常用的格式化为“一次一行”式日志文件的布局是PatternLayout，其使用一个模式字符串，就像[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")/[C++函数](../Page/C++.md "wikilink")[printf那样](https://zh.wikipedia.org/wiki/printf "wikilink")。此外还有HTMLLayout和XMLLayout，使用[HTML或XML格式的时候会更方便](../Page/HTML.md "wikilink")。

要调试一个表现异常的配置文件，使用[Java
VM参数](https://zh.wikipedia.org/wiki/Java_VM "wikilink")`-Dlog4j.debug`通过[标准输出输出Log](../Page/標準串流.md "wikilink")4j自身的信息。要获知log4j.propeties的路径，检查`getClass().getResource("/log4j.properties")`或`getClass().getResource("/log4j.xml")`。

log4j还有一个隐含的“未配置”配置，即一个缺乏log4j的配置但使用了log4j的Java应用程序。这将把一个警告（该程序未配置log4j）打印到标准输出，并提供log4j网站的[URL](https://zh.wikipedia.org/wiki/URL "wikilink")，在那里可以找到警告和配置的详细信息。除了打印此警告，未配置的log4j的应用程序不会打印INFO、DEBUG或TRACE级别的消息，而且还可能不输出更高级别的消息。

### log4j 1.2 配置示例

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE log4j:configuration PUBLIC "-//LOGGER" "http://logging.apache.org/log4j/1.2/apidocs/org/apache/log4j/xml/doc-files/log4j.dtd">
<log4j:configuration>
    <!--
         appender指定输出目的地，如控制台或文件；
         appender的名称任意
    -->
    <appender name="stdout" class="org.apache.log4j.ConsoleAppender">
        <layout class="org.apache.log4j.PatternLayout">
            <param name="ConversionPattern"
                value="%d{ABSOLUTE} %5p %c{1}:%L - %m%n" />
        </layout>
    </appender>

    <!--
         category（类别）为'org.springframework'的logger只记录level为“info”或更高级别的消息；
         即：如果您使用的类名获取logger（如Logger.getLogger(AClass.class)）
         而且AClass是org.springframework包的一部分，则它属于这一category
    -->
    <logger name="org.springframework">
        <level value="info"/>
    </logger>

    <!--
         spring的所有日志消息都被设置为“info”等级，但对于类PropertyEditorRegistrySupport，
         我们想将其日志消息设置为“debug”等级
    -->
    <logger name="org.springframework.beans.PropertyEditorRegistrySupport">
        <level value="debug"/>
    </logger>

    <logger name="org.acegisecurity">
        <level value="info"/>
    </logger>


    <root>
        <!--
            所有日志消息的级别为“debug”或更高的将被记录，除非另有定义
            所有日志消息将都记录到appender “stdout”中，除非另有定义
        -->
        <level value="debug" />
        <appender-ref ref="stdout" />
    </root>
</log4j:configuration>
```

## TTCC

TTCC是log4j使用的消息格式。TTCC是*Time Thread Category
Component*（时间、线程、类别、组件）的缩写。例如，采用以下模式（pattern）：

` %r [%t] %-5p %c %x - %m%n`

模式转换表为：

| 模式参数    | 描述                                                                                                                                                                          |
| ------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| %r      | 用于输出从layout（布局）的构建到日志事件创建所经过的毫秒数。                                                                                                                                           |
| %t      | 用来输出生成该日志事件的线程的名称。                                                                                                                                                          |
| %p      | 用于输出日志事件的优先级。                                                                                                                                                               |
| %c      | 用于输出日志事件的category（类别）。                                                                                                                                                      |
| %x      | 用于输出与产生该日志事件的线程相关联的[NDC](https://web.archive.org/web/20070820182511/http://logging.apache.org/log4j/docs/api/org/apache/log4j/NDC.html)（嵌套诊断上下文，nested diagnostic context）。 |
| %X{key} | 用于输出与产生指定的key的日志事件的线程相关联的[MDC](http://logging.apache.org/log4j/1.2/apidocs/org/apache/log4j/MDC.html)（映射诊断上下文，mapped diagnostic context）\[3\]                               |
| %m      | 用于输出与日志记录事件相关联的应用程序提供的消息。                                                                                                                                                   |
| %n      | 用来输出该其所在的特定平台的[换行字符](https://zh.wikipedia.org/wiki/换行 "wikilink")。                                                                                                          |

**示例输出**
467 \[main\] INFO org.apache.log4j.examples.Sort - Exiting main method.

## 移植

  - *log4c*——一个[C语言下的移植](https://zh.wikipedia.org/wiki/C语言 "wikilink")。最新的版本为2013年发布的1.2.4版。该项目已不再活跃。\[4\]
  - *log4js*——一个[JavaScript下的移植](../Page/JavaScript.md "wikilink")。最新的版本为2008年发布的1.1版。\[5\]
  - [log4javascript](http://log4javascript.org/)——JavaScript下的另一个移植。最新的版本为2014年5月发布的1.4.6版。\[6\]
  - [JSNLog](http://jsnlog.com/)——JavaScript下的另一移植。在2014年7月，最新的版本为2.7.1，并且定期更新。\[7\]
  - [Apache Log4net](http://logging.apache.org/log4net/)——微软[.NET
    Framework下的移植](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")。最新的版本为2013年发布的1.2.13。\[8\]
  - [log4perl](http://mschilli.github.com/log4perl)——log4j日志软件包在一个[Perl下的移植](../Page/Perl.md "wikilink")。最新的版本为2014年5月发布的1.44。\[9\]
  - [log4r](https://archive.is/20121225133348/http://log4r.rubyforge.org/)——一个[Ruby下的](../Page/Ruby.md "wikilink")“移植”。\[10\]
  - [PL-SQL-Logging-Utility](https://github.com/tmuth/Logger---A-PL-SQL-Logging-Utility)——log4j在[PL/SQL下的一种实现](https://zh.wikipedia.org/wiki/PL/SQL "wikilink")。
  - [Log4db2](http://angoca.github.io/log4db2/)——一个为使用SQL命令和SQL PL代码的DB2
    LUW的日志记录工具

## Apache Log4j 2

Apache Log4j 2是Log4j
1的继任者，2014年7月其GA版本（正式发布版）发布。该框架被从头重写，并从现有的日志解决方案中获得灵感（包括Log4j
1和JUL）。该版本与Log4j 1的主要差异是：\[11\]

  - 改进的配置语法
  - 支持XML和JSON配置
  - 改进的过滤器
  - 属性（Property）支持
  - 标记
  - 提高速度
  - 模块化：Log4j 2支持插件系统
  - 提高了可靠性
  - 配置自动重装

Log4j 2的最被认可的特点之一是“异步记录器”的性能。Log4j 2利用了[LMAX
Disruptor](http://lmax-exchange.github.io/disruptor/)。例如，在相同的环境下，Log4j
2可以写每秒超过18,000,000条信息，而其他框架（像Logback和Log4j 1）每秒只能写\< 2,000,000条消息。

Log4j 2提供对SLF4J、Commons Logging、Apache Flume和Log4j 1的支持。

## 参见

  -
## 参考文献

## 延展阅读

  -
  -
## 外部链接

  - [log4j官方主页](http://logging.apache.org/log4j/)

[Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink")
[Category:用Java編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Java編程的自由軟體 "wikilink")
[Category:日志文件格式](https://zh.wikipedia.org/wiki/Category:日志文件格式 "wikilink")

1.
2.
3.  MDC内部使用了类似map的机制来存储相关信息，信息是以它的key值存储在“map”中。
4.
5.  [Log4js主页](http://log4js.berlios.de)
6.
7.
8.
9.  [Github Log4perl homepage](http://mschilli.github.com/log4perl)
10. [Rubyforge Log4jr homepage](http://log4r.rubyforge.org)
11.