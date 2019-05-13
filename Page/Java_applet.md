**Applet**或**Java小应用程序**是一种在[Web环境下](../Page/Web.md "wikilink")，运行于[客户端的](../Page/客户端.md "wikilink")[Java程序组件](../Page/Java.md "wikilink")。它也是1990年代中期，Java在诞生后得以一炮走红的功臣之一。通常，每个Applet的功能都比较单一（例如仅用于显示一个舞动的Logo），因此它被称作“小应用程序”<sup><small>[1](../Page/#注释.md "wikilink")</sup></small>。

Applet必须运行于某个特定的“容器”，这个容器可以是[浏览器本身](../Page/浏览器.md "wikilink")，也可以是通过各种[插件](../Page/插件.md "wikilink")，或者包括支持Applet的移动设备在内的其他各种程序来运行。与一般的Java[应用程序不同](../Page/应用程序.md "wikilink")，Applet不是通过main方法来运行的（参见[Java的Hello
World程序和](../Page/Hello_World程序#Java.md "wikilink")[Java Applet的Hello
World程序](../Page/Hello_World程序#Java_Applet.md "wikilink")）。在运行时Applet通常会与用户进行互动，显示动态的画面，并且还会遵循严格的安全检查，阻止潜在的不安全因素（例如根据[安全策略](../Page/安全策略.md "wikilink")，限制Applet对客户端文件系统的访问）。

## 應用範例

  - 以[AWT方式撰寫一個顯示](../Page/AWT.md "wikilink")「Hello, world\!」的Java
    applet。

<!-- end list -->

``` java
import java.applet.Applet;
import java.awt.*;

// Applet code for the "Hello, world!" example.
// This should be saved in a file named as "HelloWorld.java".
public class HelloWorld extends Applet {
  // This method is mandatory, but can be empty (i.e., have no actual code).
  public void init() { }

  // This method is mandatory, but can be empty.(i.e.,have no actual code).
  public void stop() { }

  // Print a message on the screen (x=20, y=10).
  public void paint(Graphics g) {
    g.drawString("Hello, world!", 20,10);

  // Draws a circle on the screen (x=40, y=30).
    g.drawArc(40,30,20,20,0,360);
  }
}
```

  - 上述Java的Code編譯成HelloWorld.class，再透過下述網頁使用。

<!-- end list -->

``` html4strict
<!DOCTYPE HTML PUBLIC
  "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<TITLE>HelloWorld_example.html</TITLE>
</HEAD>
<BODY>
<H1>A Java applet example</H1>
<P>Here it is: <APPLET code="HelloWorld.class" WIDTH="200" HEIGHT="40">
This is where HelloWorld.class runs.</APPLET></P>
</BODY>
</HTML>
```

## 注释

1.  <small>Applet是由[英语](../Page/英语.md "wikilink")“[应用程序](../Page/应用程序.md "wikilink")”*Application*的缩写**App**和代表“小”的[后缀](../Page/后缀.md "wikilink")**let**组成。[Servlet](../Page/Servlet.md "wikilink")（**Serv**er-let）、[MIDlet](../Page/MIDlet.md "wikilink")（**M**obile
    **I**nformation
    **D**evice-let）和[JSP中的Scriptlet的命名也是基于同样原理](../Page/JSP.md "wikilink")。</small>

## 参见

  - [ActiveX](../Page/ActiveX.md "wikilink")
  - [Curl](../Page/Curl_\(编程语言\).md "wikilink")
  - [Java](../Page/Java.md "wikilink")
  - [Java Servlet](../Page/Java_Servlet.md "wikilink")
  - [Java Web Start](../Page/Java_Web_Start.md "wikilink")
  - [JavaFX](../Page/JavaFX.md "wikilink")
  - [丰富互联网应用程序](../Page/丰富互联网应用程序.md "wikilink")
  - [WebGL](../Page/WebGL.md "wikilink")

[Category:Java平台](https://zh.wikipedia.org/wiki/Category:Java平台 "wikilink")