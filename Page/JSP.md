**JSP**（全称**J**ava**S**erver **P**ages）是由[Sun
Microsystems公司主导建立的一种动态网页技术标准](../Page/Sun_Microsystems.md "wikilink")。JSP部署于网络服务器上，可以响应客户端发送的请求，并根据请求内容动态地生成[HTML](../Page/HTML.md "wikilink")、[XML或其他格式文档的](../Page/XML.md "wikilink")[Web网页](../Page/Web.md "wikilink")，然后返回给请求者。JSP技术以[Java语言作为](../Page/Java.md "wikilink")[脚本语言](../Page/脚本语言.md "wikilink")，为用户的[HTTP请求提供服务](../Page/HTTP.md "wikilink")，并能与服务器上的其它Java程序共同处理复杂的业务需求。

JSP将Java代码和特定变动内容嵌入到静态的页面中，实现以静态页面为模板，动态生成其中的部分内容。JSP引入了被称为“JSP动作”的XML标签，用来调用内建功能。另外，可以创建JSP标签库，然后像使用标准HTML或XML标签一样使用它们。标签库能增强功能和服务器性能，而且不受[跨平台问题的限制](../Page/跨平台.md "wikilink")。JSP文件在运行时会被其编译器转换成更原始的[Servlet代码](../Page/Servlet.md "wikilink")。JSP编译器可以把JSP文件编译成用Java代码写的Servlet，然后再由Java编译器来编译成能快速执行的二进制[机器码](../Page/机器码.md "wikilink")，也可以直接编译成二进制码。

## 综述

JSP从2.0版本开始，增加了[表达式语言](../Page/表达式语言.md "wikilink")（EL），以提供更快更简单的创建新标签的方法，并允许开发者创建[Velocity式模板](../Page/Apache_Velocity.md "wikilink")。如旧版本代码“`Hello,
<%=request.getParameter("visitor")%>`”可简化为“`Hello, ${param.visitor}”`。

## 特点

  - 能以模板化的方式简单、高效地添加动态网页内容。\[1\]
  - 可利用[JavaBean和标签库技术复用常用的功能代码](../Page/JavaBean.md "wikilink")（设计好的组件容易实现重复利用，减少重复劳动）。标签库不仅带有通用的内置标签（[JSTL](../Page/JSTL.md "wikilink"))，而且支持可扩展功能的自定义标签。\[2\]
  - 有良好的工具支持。\[3\]
  - 继承了Java语言的相对易用性。\[4\]
  - 继承了Java的[跨平台优势](../Page/跨平台.md "wikilink")，实现“一次编写，处处运行”。因为支持Java及其相关技术的开发平台多，网站开发人员可以选择在最适合自己的系统平台上进行JSP开发；不同环境下开发的JSP项目，在所有客户端上都能顺利访问。\[5\]
  - 页面中的动（控制变动内容的部分）／静（内容不需变动的部分）区域以分散但又有序的形式组合在一起，能使人更直观地看出页面代码的整体结构，也使得设计页面效果和程序逻辑这2部分工作容易分离（外观视图与逻辑分离）。从而方便分配人员并发挥各自长处，实现高效地分工合作。\[6\]
  - 可与其它企业级Java技术相互配合。JSP可以只专门负责页面中的数据呈现，实现。\[7\]

## 包含内容

### JSP指令

JSP指令控制JSP编译器如何去生成[servlet](../Page/servlet.md "wikilink")，以下是可用的指令：

  - 包含指令include
    –包含指令通知JSP编译器把另外一个文件完全包含入当前文件中。效果就好像被包含文件的内容直接被粘贴到当前文件中一样。这个功能和C[预处理器所提供的很类似](../Page/预处理器.md "wikilink")。被包含文件的扩展名一般都是"jspf"（即JSP
    **Fragment**，JSP片段）:

<!-- end list -->

``` jsp
<%@ include file="somefile.jsp" %>
```

  - 页面指令page –页面指令有以下几个选项：

|                  |                                                                      |
| ---------------- | -------------------------------------------------------------------- |
| **import**       | 使一个JAVA导入声明被插入到最终页面文件。                                               |
| **contentType**  | 规定了生成内容的类型。当生成非HTML内容或者当前[字符集并非默认字符集时使用](../Page/字符集.md "wikilink")。 |
| **errorPage**    | 处理HTTP请求时，如果出现异常则显示该错误提示信息页面。                                        |
| **isErrorPage**  | 如果设置为TRUE，则表示当前文件是一个错误提示页面。                                          |
| **isThreadSafe** | 表示最终生成的servlet是否具有[线程安全性](../Page/线程.md "wikilink")。                 |

``` jsp
<%@ page import="java.util.*" %> //example import導入樣例
<%@ page contentType="text/html" %> //example contentType頁面類型样例
<%@ page isErrorPage=false %> //example for non error page無錯頁面样例
<%@ page isThreadSafe=true %> //example for a thread safe JSP執行緒安全JSP样例
```

**注意：**在同一个JSP文件中只有“import”导入页面指令可以被多次使用。

  - 标签库指令taglib
    –标签库指令描述了要使用的JSP标签库。该指令需要指定一个前缀prefix（和C++的命名空间很类似）和标签库的描述URI:

<!-- end list -->

``` jsp
<%@ taglib prefix="myprefix" uri="taglib/mytag.tld" %>
```

### JSP脚本元素和变量

#### 标准脚本变量

以下是永远可用的脚本变量：

  - out：JSPWriter，用来写入响应流的数据
  - page：servlet自身
  - pageContext：一个PageContext实例包括和整个页面相联系的数据，一个给定的HTML页面可以在多个JSP之间传递。
  - request：HTTP request（请求）对象
  - response：HTTP response（响应）对象
  - session：HTTP session（服务端会话）对象

#### 脚本元素

有三个基本的脚本元素，作用是使JAVA代码可以直接插入servlet.

  - 一种是声明标签，在JAVA SERVLET的类体中放入一个变量的定义。静态的数据成员也可以如此定义。
      -

        ``` jsp
        <%! int serverInstanceVariable = 1; %>
        ```
  - 一种是脚本标签，在JAVA SERVLET的类的_jspService()方法中放入所包含的语句。
      -

        ``` jsp numberLines
        <% int localStackBasedVariable = 1;  out.println(localStackBasedVariable); %>
        ```
  - 一种是表达式标签，在JAVA SERVLET的类中放入待赋值的表达式，表达式注意不能以分号结尾。
      -

        ``` jsp
        <%= "expanded inline data " + 1 %>
        ```

### JSP动作

JSP动作是一系列可以调用内建于网络服务器中的功能的XML标签。JSP提供了以下动作：

|                     |                                                                                                                                                                                                                      |
| ------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **jsp:include**     | 和子过程类似，JAVA SERVLET暂时接管对其它指定的JSP页的请求和响应。当处理完该JSP页后就马上把控制权交还当前JSP页。这样JSP代码就可以在多个JSP页中共享而不用复制。                                                                                                                         |
| **jsp:param**       | 可以在jsp:include, jsp:forward或jsp:params块之间使用。指定一个将加入请求的当前参数组中的参数。                                                                                                                                                     |
| **jsp:forward**     | 用于处理对另一个JSP或SERVLET的请求和响应。控制权永远不会交还给当前JSP页。                                                                                                                                                                          |
| **jsp:plugin**      | [Netscape Navigator的老版本和](../Page/Netscape_Navigator.md "wikilink")[Internet Explorer使用不同的标签以嵌入一个](../Page/Internet_Explorer.md "wikilink")[applet](../Page/Java_applet.md "wikilink")。这个动作产生为嵌入一个APPLET所需要的指定浏览器标签。 |
| **jsp:fallback**    | 如果浏览器不支持APPLETS则会显示的内容。                                                                                                                                                                                              |
| **jsp:getProperty** | 从指定的[JavaBean中获取一个属性值](../Page/JavaBeans.md "wikilink")。                                                                                                                                                             |
| **jsp:setProperty** | 在指定的JavaBean中设置一个属性值。                                                                                                                                                                                                |
| **jsp:useBean**     | 创建或者复用一个JavaBean变量到JSP页。                                                                                                                                                                                             |

#### 标签样例

##### jsp:include

``` jsp
<html>
<head></head>
<body>
<jsp:include page="mycommon.jsp" >
    <jsp:param name="extraparam" value="myvalue" />
</jsp:include>
name:<%=request.getParameter("extraparam")%>
</body>
</html>
```

##### jsp:forward

``` jsp
<jsp:forward page="subpage.jsp" >
     <jsp:param name="forwardedFrom" value="this.jsp" />
</jsp:forward>
```

在本例中，请求被传递到"subpage.jsp"，而且请求的处理权不会再返回前者。

##### jsp:plugin

``` jsp
<jsp:plugin type=applet height="100%" width="100%"
            archive="myjarfile.jar,myotherjar.jar"
            codebase="/applets"
            code="com.foo.MyApplet" >
    <jsp:params>
        <jsp:param name="enableDebug" value="true" />
    </jsp:params>
    <jsp:fallback>
        Your browser does not support applets.
    </jsp:fallback>
</jsp:plugin>
```

上述[plugin例子说明了一种在网页中嵌入](../Page/plugin.md "wikilink")[applet的统一方法](../Page/applet.md "wikilink")。在\<*OBJECT*\>标签出现之前，并没有一种嵌入applets的通用方法。这个标签设计得并不好，但有希望在以后加入动态属性（height="${param.height}",
code="${chart}"等）和动态参数的新功能。目前jsp:plugin标签不允许动态调用applets。例如，你如果有一个图表applet需要数据点以参数形式被传入，除非数据点的数量是一个常量，否则你就不能使用ResultSet循环来创建jsp:param标签，你不得不手写每个jsp:param标签的代码。而每个上述jsp:param标签可以有一个动态命名和动态值。

##### jsp:useBean

``` jsp
<jsp:useBean id="myBean" class="com.foo.MyBean" scope="request" />
<jsp:getProperty name="myBean" property="lastChanged" />
<jsp:setProperty name="myBean" property="lastChanged" value="<%= new Date()%>" />
```

scope属性可以是request, page, session or application，它有以下用意：

  - request— 该属性在请求的生命周期内有效，一旦请求被所有的JSP页处理完后，那么该属性就不可引用。
  - page— 该属性只是当前页中有效。
  - session— 该属性在用户会话的生命周期内有效。
  - application— 该属性在各种情况下都有效，并且永远不会被变为不可引用，和全局变量[global
    variable相同](../Page/global_variable.md "wikilink")。

上述例子将会用一个创建一个类的实例，并且把该实例存储在属性中，该属性将在该请求的生命周期内有效。它可以在所有被包含或者从主页面（最先接收请求的页面）转向到的JSP页之间共享。

### JSP标签库

除了JSP预定义动作之外，开发者还可以使用JSP标签扩展API添加他们自定义的*动作*。开发者写一种实现一个标签的界面和一个标签库的XML描述文件的JAVA类，这就能指定标签和实现标签的JAVA类
请看如下JSP：

``` jsp
<%@ taglib uri="mytaglib.tld" prefix="myprefix" %>
...
<myprefix:myaction> <%-- the start tag %>
...
</myprefix:myaction> <%-- the end tag %>
...
```

JSP编译器将会载入mytaglib.tld这个XML文件，然后可以看到标签*myaction*由JAVA类*MyActionTag*实现。当该标签首次在文件中使用时，将会创建一个MyActionTag的实例。然后（而且当每次该标签被使用时），当出现开始标签时，将会调用doStartTag()方法，根据开始标签的结果，来决定如何处理标签的主体。主体是指开始标签和结束标签之间的文本。这个doStartTag()方法将会返回如下之一：

  - SKIP_BODY - 标签之间不做处理。
  - EVAL_BODY_INCLUDE - 对标签之内主体进行赋值。
  - EVAL_BODY_TAG - 对标签之内主体进行赋值并把结果输出到流（保存在标签的主体内容属性中）。

<!-- end list -->

  -
    **注意：**如果标签扩展了BodyTagSupport类，当主体被执行时会在调用doEndTag()之前调用doAfterBody()方法。该方法用于实现循环结构。

当结束标签出现时，它会调用doEndTag()方法，该方法会返回如下两做之一：

  - EVAL_PAGE - 表示JSP文件的剩余部份将会被执行。this indicates that the rest of the
    JSP file should be processed.
  - SKIP_PAGE - 表示将不会再有更多执行操作。当前JSP页交出控制权。就象在转发动作中的作用一样。

上述myaction标签tag会有一个类似下面例子的用于实现的类：

``` java
public class MyActionTag extends  TagSupport {
    //Releases all instance variables.
    public void release() {...}

    public MyActionTag() { ... }

    //called for the start tag
    public int doStartTag() { ... }

    //called at the end tag
}
```

## 本地化

JSP的[本地化是通过和JAVA应用程序相同的方式完成的](../Page/本地化.md "wikilink")，即使用[资源包](../Page/资源包.md "wikilink")。

## 模型-视图-控制器 模式

为了把表现层（presentation）从请求处理（request processing）和数据存储（data
storage）中分离开来（这样更利于开发、查错和功能扩展），[升阳公司推荐在JSP文件中使用一种称作](../Page/升阳公司.md "wikilink")[模型-视图-控制器](../Page/Model-view-controller.md "wikilink")（MVC）的架构模式。按照此设计，当用户访问网站上的特定网址时，用户的处理请求会先由网站[服务器获取到](../Page/服务器.md "wikilink")，然后先交由网站的控制器程序作初步处理。用户的访问请求可能多种多样，比如查询信息或进行数据计算都是常见的网站业务。控制器程序会初步判断用户请求的种类，然后把用户请求转发给与特定业务对应的[Servlet程序或者另一个独立的JSP文件进行业务处理](../Page/Servlet.md "wikilink")。当请求处理完后，再通过一个专门负责输出信息的JSP页以清晰、美观的方式向用户的浏览器输出结果。简而言之，先由控制器拦截用户请求并做初步判断，再由业务处理程序访问数据（从[数据库中访问](../Page/数据库.md "wikilink")）和处理业务，最后由视图组件生成结果页面并发送结果给用户。其中JSP一般用作展示输出结果，可以用于展示经Servlet查询或处理后的结果；也可以用一个JSP文件处理业务逻辑，再用另一个JSP文件展示结果。按功能做这样的文件拆分（而非由一个臃肿的JSP页面包揽所有功能）是为了便于团队分工。MVC本身是一种由来已久的设计思想，基于JSP的技术只是实现MVC架构的流行方案之一。[Struts和](../Page/Struts.md "wikilink")[Spring框架等好几种流行的网站建设框架都是基于MVC模式设计的](../Page/Spring框架.md "wikilink")。

## JSP和Servlets

从架构上说，JSP可以被看作是从Servlets高级提炼而作为[JAVA
Servlet](../Page/Servlet.md "wikilink") 2.1
API的扩展而应用。Servlets和JSP最早都是由[Sun
Microsystems](../Page/Sun_Microsystems.md "wikilink")（太阳公司）开发的。从JSP1.2版本以来，JSP处于[Java
Community
Process](../Page/JCP.md "wikilink")（有人译为：Java社区组织）开发模式下。[JSR](../Page/JSR.md "wikilink")-53规定了JSP
1.2和Servlet 2.4的规范，[JSR](../Page/JSR.md "wikilink")-152规定了JSP
2.0的规范。2006年5月，JSP 2.1的规范作为[Java
EE](../Page/Java_EE.md "wikilink")
5的一部份，在[JSR](../Page/JSR.md "wikilink")-245中发布。

静态数据在输入文件中的内容和输出给[HTTP响应的内容完全一致](../Page/HTTP.md "wikilink")。此时，该JSP输入文件会是一个没有内嵌JAVA或动作的HTML页面。而且，客户端每次请求都会得到相同的响应内容。

### 样例

不管JSP编译器是生成SERVLET的JAVA源码，或者是直接发布二进制码，了解一下JSP编译器是如何把文件转换成一个JAVA
SERVLET，都是很有帮助的。例如，看一下如下输入JSP和它最后生成的JAVA SERVLET：

**Input JSP**

``` html4strict
<%@ page errorPage="myerror.jsp" %>
<%@ page import="com.foo.bar" %>

<html>
<head>
<%! int serverInstanceVariable = 1;%>
...
<% int localStackBasedVariable = 1; %>
<table>
    <tr><td><%= "expanded inline data " + 1 %></td></tr>
    ...
```

**Resulting servlet**

``` java
package jsp_servlet;
import java.util.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

import com.foo.bar; //imported as a result of <%@ page import="com.foo.bar" %>
import ...

class _myserlvet implements javax.servlet.Servlet, javax.servlet.jsp.HttpJspPage {
    //inserted as a
    //result of <%! int serverInstanceVariable = 1;%>
    int serverInstanceVariable = 1;
    ...

    public void _jspService( javax.servlet.http.HttpServletRequest request,
                            javax.servlet.http.HttpServletResponse response )
        throws javax.servlet.ServletException,
               java.io.IOException
    {
        javax.servlet.ServletConfig config = ...;//get the servlet config
        Object page = this;
        PageContext pageContext = ...;//get the page context for this request
        javax.servlet.jsp.JspWriter out = pageContext.getOut();
        HttpSession session = request.getSession( true );
        try {
             out.print( "<html>\r\n" );
             out.print( "<head>\r\n" );
             ...
             //from <% int localStackBasedVariable = 1; %>
             int localStackBasedVariable = 1;
             ...
             out.print( "<table>\r\n" );
             out.print( "   <tr><td>" );
             //note, toStringOrBlank() converts the expression into a string or if
             // the expression is null, it uses the empty string.
             //from <%= "expanded inline data " + 1 %>
             out.print( toStringOrBlank( "expanded inline data " + 1 ) );
             out.print( "   </td></tr>\r\n" );
             ...
        } catch ( Exception _exception ) {
           //clean up and redirect to error page in <%@ page errorPage="myerror.jsp" %>
        }
    }
}
```

## 参见

  - [JSTL](../Page/JSTL.md "wikilink")
  - [Java企业版](../Page/Java_EE.md "wikilink")
  - [JavaServer Faces](../Page/JavaServer_Faces.md "wikilink")
  - [Java Servlet](../Page/Java_Servlet.md "wikilink")
  - [SSJS](../Page/SSJS.md "wikilink")
  - [WAR (file format)](../Page/WAR_\(file_format\).md "wikilink")
  - [EAR (file format)](../Page/EAR_\(file_format\).md "wikilink")
  - [JAR (file format)](../Page/JAR_\(file_format\).md "wikilink")
  - [Tomcat服务器](../Page/Apache_Tomcat.md "wikilink")

## 参考资料

### 文内引用

### 书目

  -
  -
## 外部链接

  - [Sun's JSP product description](http://java.sun.com/products/jsp/)
  - [JSR 245](http://www.jcp.org/en/jsr/detail?id=245) (JSP 2.1)
  - [JSR 152](http://www.jcp.org/en/jsr/detail?id=152) (JSP 2.0)
  - [JSR 53](http://www.jcp.org/en/jsr/detail?id=53) (JSP 1.2)

[Category:Java企业平台](https://zh.wikipedia.org/wiki/Category:Java企业平台 "wikilink")
[Category:Java规范请求](https://zh.wikipedia.org/wiki/Category:Java规范请求 "wikilink")

1.

2.
3.
4.
5.
6.
7.