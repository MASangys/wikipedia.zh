**Apache Ant**，是一个将[软件](../Page/软件.md "wikilink")[编译](https://zh.wikipedia.org/wiki/编译 "wikilink")、[测试](../Page/单元测试.md "wikilink")、[部署等步骤联系在一起加以自动化的一个](https://zh.wikipedia.org/wiki/软件部署 "wikilink")[工具](https://zh.wikipedia.org/wiki/软件开发工具 "wikilink")，大多用于[Java](../Page/Java.md "wikilink")环境中的[软件开发](https://zh.wikipedia.org/wiki/软件开发 "wikilink")。由[Apache软件基金会](../Page/Apache软件基金会.md "wikilink")所提供。默認情況下，它的buildfile(XML文件)名為build.xml。每一個buildfile含有一個<project>和至少一個預設的<target>，這些targets包含許多task elements。每一個task element有一個用來被參考的id，此id必須是唯一的。

## build.xml 範例

``` xml
<?xml version="1.0" ?>
<project name="Hello World" default="execute">

    <target name="init">
        <mkdir dir="build/classes"/>
        <mkdir dir="dist"/>
    </target>
    <target name="compile" depends="init">
        <javac srcdir="src" destdir="build/classes"/>
    </target>

    <target name="compress" depends="compile">
            <jar destfile="dist/HelloWorld.jar" basedir="build/classes"  />
    </target>

    <target name="execute" depends="compile">
        <java classname="HelloWorld" classpath="build/classes"/>
    </target>

</project>
```

## 参见

  - [Jakarta项目](../Page/Jakarta项目.md "wikilink")
  - [Apache Maven](../Page/Apache_Maven.md "wikilink")
  - [Make](../Page/Make.md "wikilink")

## 外部链接

  - [Official website of Apache Ant](http://ant.apache.org/)
  - [Apache Ant wiki](https://web.archive.org/web/20151213155753/http://wiki.apache.org/ant/FrontPage)
  - [WinAnt - Windows installer for Apache Ant](http://code.google.com/p/winant/)
  - [Introduction to Ant](https://web.archive.org/web/20100131063201/http://www.exubero.com/ant/antintro-s5.html) (slide show)
  - [Linguine Maps visualization library will automatically produce easy to read diagrams from Ant build files.](https://web.archive.org/web/20070612182856/http://www.softwaresecretweapons.com/jspwiki/Wiki.jsp?page=LinguineMapsForApacheAnt)
  - [antro - a profiler for Ant scripts](http://sourceforge.net/projects/antro)
  - [Wiki Book on learning Apache Ant](https://zh.wikipedia.org/wiki/b:Programming:Apache_Ant "wikilink")
  - [Ant tutorial](http://ideoplex.com/focus/java#ant)
  - [Ant Automation](http://hbtechs.blogspot.com/2007/06/automation-using-innovative-tools.html), a good handy example of automation with Ant.
  - [A simple Windows GUI for running Ant.](https://web.archive.org/web/20100131050800/http://visualdrugs.net/antrunner/)

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink") [Category:程序设计工具](https://zh.wikipedia.org/wiki/Category:程序设计工具 "wikilink") [Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink") [Category:編譯工具](https://zh.wikipedia.org/wiki/Category:編譯工具 "wikilink")