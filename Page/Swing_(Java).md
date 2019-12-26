[Gui-widgets.png](https://zh.wikipedia.org/wiki/File:Gui-widgets.png "fig:Gui-widgets.png")的使用\]\]

**Swing**是一个为[Java](../Page/Java.md "wikilink")设计的[GUI工具包](https://zh.wikipedia.org/wiki/GUI "wikilink")。Swing是[Java基础类的一部分](https://zh.wikipedia.org/wiki/JFC "wikilink")。Swing包括了[图形用户界面](../Page/图形用户界面.md "wikilink")（GUI）组件如：文本框，文本域，按钮，分隔窗格和表。

Swing提供许多比[AWT](../Page/AWT.md "wikilink")更好的屏幕显示元素。它们用纯Java写成，所以同Java本身一样可以跨平台运行，这一点不像AWT。它们是JFC的一部分。它们支持可更换的面板和主题（各种操作系统默认的特有主题），然而不是真的使用原生平台提供的设备，而是仅仅在表面上模仿它们。这意味着你可以在任意平台上使用Java支持的任意面板。轻量级元件的缺点则是执行速度较慢，优点就是可以在所有平台上采用统一的行为。

## Hello World程序

*Swing程序*

'' HelloWorldSwing.java ''

``` Java
import javax.swing.*;
public class HelloWorldSwing {
    /**
     * 创建并显示GUI。出于线程安全的考虑，
     * 这个方法在事件调用线程中调用。
     */
    private static void createAndShowGUI() {
        //Make sure we have nice window decorations.
        JFrame.setDefaultLookAndFeelDecorated(true);

        //Create and set up the window.
        JFrame frame = new JFrame("HelloWorldSwing");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        //Add the ubiquitous "Hello World" label.
        JLabel label = new JLabel("Hello World");
        frame.getContentPane().add(label);

        //Display the window.
        frame.pack();
        frame.setVisible(true);
    }

    public static void main(String[] args) {
        //Schedule a job for the event-dispatching thread:
        //creating and showing this application's GUI.
        javax.swing.SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                createAndShowGUI();
            }
        });
    }
}
```

## 历史

互联网基础类（IFC）是[网景公司最初为](https://zh.wikipedia.org/wiki/Netscape "wikilink")[Java](../Page/Java.md "wikilink")开发的[图形库](https://zh.wikipedia.org/wiki/图形库 "wikilink")，第一次发布于1996年12月16日。

在1997年4月2日，[太陽公司和网景公司宣称他们要将IFC和其他技术合并形成](https://zh.wikipedia.org/wiki/昇陽 "wikilink")[Java基础类](https://zh.wikipedia.org/wiki/JFC "wikilink")。作为IFC最初提供组件的附加品，Swing引进了一个機制：在不改变大量的程序代码前提下允许程序中每个组件[面板的变化](https://zh.wikipedia.org/wiki/面板 "wikilink")。支持可更换面板技术的引入允许Swing组件在模拟原生组件外观的同时又保持了平台独立的优点。

## 架构

Swing是一个基于Java的跨平台MVC框架。使用单线程模式。此框架还在代码结构层和图形渲染层之间插入了一个抽象层。

### 可扩展性

Swing使用了高度模块化的架构，可以通过接口的方式使用各种定制框架来扩展Swing。用户可以通过Java的继承机制重写原始的组件来实现自己的代码。\[1\]

Swing是一个基于组件的框架，所有的组件都是从`javax.swing.JComponent`类继承来的。Swing对象通过异步方式发送事件，具有边界属性，并且会响应该组件的一系列方法。Swing组件是[Java Beans组件](https://zh.wikipedia.org/wiki/Java_Beans "wikilink")，和Java Beans组件架构完全保持一致。

### 可定制性

Swing提供了可编程渲染模型，使用户可以对渲染细节进行控制。一般来看，Swing组件的视觉效果是一些通用元素的组合，比如外框、边距、窗口装饰等等。典型的情况是，用户通过编写代码，指定边框、颜色、背景、透明度等属性来定制一种通用Swing组件（如JTable）。核心组件则会用这些定制的属性来进行绘制。此外，也完全可以制作出非常特殊的GUI控件或是高度自定义的视觉效果。

<File:Swing> custom painted screenshot 1.png|Swing个性化绘制1 <File:Swing> custom painted screenshot 2.png|Swing个性化绘制2 <File:Swing> custom painted screenshot 3.png|Swing个性化绘制3

### 可配置性

Swing高度基于运行时的机制以及其间接的组合模式使得它可以在运行时响应对其底层设置的改变。例如，一个Swing的应用程序能在运行时动态地改变界面。此外，用户还能随时应用他们自己的Look And Feel。Look And Feel能够统一地改变当前程序的组件外观，而不用修改任何代码。

## 和AWT的关系

Java的早期版本以来，[抽象視窗工具包为用户界面组件提供了平台独立的API](../Page/AWT.md "wikilink")。在[AWT](../Page/AWT.md "wikilink")中，每个组件都由一个原生的等同组件生成和控制，这个原生组件是由当前的图形視窗系统决定的。

与此相对，Swing组件经常被描述为轻量级的，因为它们不需要操作系统本身所带視窗工具包的原生资源来生成。

Swing API的大部分是[AWT](../Page/AWT.md "wikilink")的补充扩展而不是直接的代替。Swing用来绘制轻量级组件的核心渲染功能是由[Java2D提供的](https://zh.wikipedia.org/wiki/Java2D "wikilink")，这是[AWT](../Page/AWT.md "wikilink")的一部分。然而，轻量级和重量级组件在同一个应用中使用会导致[Z-order不兼容](https://zh.wikipedia.org/wiki/Z-order "wikilink")。

## 同SWT的关系

[标准器件工具包 (SWT)是一个最初由](../Page/SWT.md "wikilink")[IBM](../Page/IBM.md "wikilink")开发的工具包，现在由[Eclipse基金会](../Page/Eclipse基金会.md "wikilink")维护。[SWT](../Page/SWT.md "wikilink")的实现同重量级的组件[AWT](../Page/AWT.md "wikilink")有更多的共同之处。这样的好处是运行开销同所在平台的原生視窗工具包更为接近。

[SWT](../Page/SWT.md "wikilink")的到来使得[Java桌面的开发者们分离为](https://zh.wikipedia.org/wiki/Java桌面 "wikilink")[SWT](../Page/SWT.md "wikilink")的支持者和Swing的支持者。在6.0版Java中，Swing的新修补专注于同原生視窗平台的逼真度，这可能会直接解决这个问题。

## 参考文献

### 引用

### 书籍

  - [Matthew Robinson](https://zh.wikipedia.org/wiki/Matthew_Robinson "wikilink")：*Swing*, Manning, ISBN 1-930110-88-X
  - [David M. Geary](https://zh.wikipedia.org/wiki/David_M._Geary "wikilink")：*Graphic Java 2, Volume 2: Swing*, Prentice Hall, ISBN 0-13-079667-0
  - [James Elliott](https://zh.wikipedia.org/wiki/James_Elliott "wikilink")，[Robert Eckstein](https://zh.wikipedia.org/wiki/Robert_Eckstein "wikilink")，[Marc Loy](https://zh.wikipedia.org/wiki/Marc_Loy "wikilink")，[David Wood](https://zh.wikipedia.org/wiki/David_Wood "wikilink")，[Brian Cole](https://zh.wikipedia.org/wiki/Brian_Cole "wikilink")：*Java Swing*, O'Reilly, ISBN 0-596-00408-7
  - [Kathy Walrath](https://zh.wikipedia.org/wiki/Kathy_Walrath "wikilink")，[Mary Campione](https://zh.wikipedia.org/wiki/Mary_Campione "wikilink")，[Alison Huml](https://zh.wikipedia.org/wiki/Alison_Huml "wikilink")，[Sharon Zakhour](https://zh.wikipedia.org/wiki/Sharon_Zakhour "wikilink")：*The JFC Swing Tutorial: A Guide to Constructing GUIs*, Addison-Wesley Professional, ISBN 0-201-91467-0

## 外部链接

  - [Swing教程](http://java.sun.com/docs/books/tutorial/uiswing/index.html)
  - [The Swing Connection](http://java.sun.com/products/jfc/tsc/index.html)
  - [JavaDesktop](https://web.archive.org/web/20050729002040/http://community.java.net/javadesktop/)
  - [Java观感](http://www.javootoo.com/)
  - [ClientJava.com](https://web.archive.org/web/20040401143633/http://clientjava.com/)
  - Presentation "[Swing专家编程：创建优雅的程序，第一部分](http://javalobby.org/eps/galbraith-swing-1/)" by [Ben Galbraith](https://zh.wikipedia.org/wiki/Ben_Galbraith "wikilink")
  - Presentation "[Swing专家编程：创建优雅的程序，第二部分](http://www.javalobby.org/eps/galbraith-swing-2/)" by [Ben Galbraith](https://zh.wikipedia.org/wiki/Ben_Galbraith "wikilink")
  - Article "[什么叫“Swing很慢？”](http://javalobby.org/articles/swing_slow/index.jsp)" by [Sermet Yucel](https://zh.wikipedia.org/wiki/Sermet_Yucel "wikilink")
  - Article "[Java桌面开发](http://www.onjava.com/pub/a/onjava/2004/02/18/desktop.html)" by [Andrei Cioroianu](https://zh.wikipedia.org/wiki/Andrei_Cioroianu "wikilink")
  - Article "[BlackMamba：一个Swing的实例学习](http://www.onjava.com/pub/a/onjava/2004/03/10/blackmamba.html)" by [Ashwin Jayaprakash](https://zh.wikipedia.org/wiki/Ashwin_Jayaprakash "wikilink")
  - [有关AWT/Swing的文章](http://www.javaworld.com/channel_content/jw-awt-index.shtml)
  - [Citations from CiteSeer](http://citeseer.ist.psu.edu/cis?q=Java+Swing)
  - [Swing wiki](https://web.archive.org/web/20110526164920/http://www.swingwiki.org/)包含了最棒的练习、技巧、诀窍以及如何入门

[ar:جافا (لغة برمجة)\#تطبيق Swing](https://zh.wikipedia.org/wiki/ar:جافا_\(لغة_برمجة\)#تطبيق_Swing "wikilink")

[Category:部件工具箱](https://zh.wikipedia.org/wiki/Category:部件工具箱 "wikilink") [Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink") [Category:MVC](https://zh.wikipedia.org/wiki/Category:MVC "wikilink")

1.  "LookAndFeel (Java Platform SE 7 )", Oracle Documentation, <http://docs.oracle.com/javase/7/docs/api/javax/swing/LookAndFeel.html>, 5/26/2012