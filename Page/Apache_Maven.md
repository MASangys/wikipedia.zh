[Maven_repository_artifact_growth.png](https://zh.wikipedia.org/wiki/File:Maven_repository_artifact_growth.png "fig:Maven_repository_artifact_growth.png")

**Apache
Maven**，是一个[软件](../Page/软件.md "wikilink")（特别是[Java软件](https://zh.wikipedia.org/wiki/Java_\(编程语言\) "wikilink")）[项目管理及](../Page/项目管理.md "wikilink")[自动构建工具](https://zh.wikipedia.org/wiki/自动构建 "wikilink")，由[Apache软件基金会所提供](../Page/Apache软件基金会.md "wikilink")。基于项目对象模型（缩写：POM）概念，Maven利用一个中央信息片断能管理一个项目的构建、报告和文档等步骤。

Maven也可被用于构建和管理各种项目，例如[C\#](../Page/C♯.md "wikilink")，[Ruby](../Page/Ruby.md "wikilink")，[Scala和其他语言编写的项目](../Page/Scala.md "wikilink")。Maven曾是[Jakarta项目的子项目](../Page/Jakarta项目.md "wikilink")，现为由[Apache软件基金会主持的独立Apache项目](../Page/Apache软件基金会.md "wikilink")。

## 示例

Maven项目使用[项目对象模型](https://zh.wikipedia.org/wiki/项目对象模型 "wikilink")（Project
Object Model，POM）来配置。

项目对象模型存储在名为 pom.xml 的文件中。

以下是一个简单的示例：

``` xml
<project>
  <!-- model version is always 4.0.0 for Maven 2.x POMs -->
  <modelVersion>4.0.0</modelVersion>

  <!-- project coordinates, i.e. a group of values which
       uniquely identify this project -->

  <groupId>com.mycompany.app</groupId>
  <artifactId>my-app</artifactId>
  <version>1.0</version>

  <!-- library dependencies -->

  <dependencies>
    <dependency>

      <!-- coordinates of the required library -->

      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>3.8.1</version>

      <!-- this dependency is only used for running and compiling tests -->

      <scope>test</scope>

    </dependency>
  </dependencies>
</project>
```

## 参见

  - ，一种与Maven紧密结合的持续集成服务器

  - 一种将XML转为可执行代码的工具

  - [Ivy](https://zh.wikipedia.org/wiki/Ivy "wikilink")，可作为替代的Java依赖管理工具

  - [Gradle](../Page/Gradle.md "wikilink"), a build tool based on
    convention over configuration

  - [Hudson](https://zh.wikipedia.org/wiki/Hudson_\(软件\) "wikilink")

  -
## 补充阅读

  -
<!-- end list -->

  -
    有免费的PDF供下载和在线阅读：http://www.sonatype.com/documentation/books

## 參考資料

## 外部链接

  - [Maven项目官方网站](http://maven.apache.org/)
  - [Maven 2新手教程：Maven 2用户练习指南](http://docs.codehaus.org/display/MAVENUSER/The+Maven+2+tutorial)
    -
    教程在[Codehaus.org](https://web.archive.org/web/20161016223611/http://www.codehaus.org/)
  - [完整参考](http://www.sonatype.com/books/mvnref-book/reference/)，一本已出版的并可免费在线阅读的书
  - [用Maven 2构建Web应用程序](https://web.archive.org/web/20110723234212/http://today.java.net/pub/a/today/2007/03/01/building-web-applications-with-maven-2.html)
  - [Maven 2
    POM揭秘](http://www.javaworld.com/javaworld/jw-05-2006/jw-0529-maven.html)
    - 文章在[JavaWorld](https://zh.wikipedia.org/wiki/JavaWorld "wikilink")
  - [在你的POM中验证依赖](https://web.archive.org/web/20111004231853/http://www.mavenbrowser.com/pom-report.html)
  - [Maven的历史](http://maven.apache.org/background/history-of-maven.html)
  - [用于PHP的Maven](http://www.php-maven.org/)

[Category:編譯工具](https://zh.wikipedia.org/wiki/Category:編譯工具 "wikilink")
[Category:自动化构建](https://zh.wikipedia.org/wiki/Category:自动化构建 "wikilink")
[Category:Java開發工具](https://zh.wikipedia.org/wiki/Category:Java開發工具 "wikilink")
[Category:程序设计工具](https://zh.wikipedia.org/wiki/Category:程序设计工具 "wikilink")
[Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink")