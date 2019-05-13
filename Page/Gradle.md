**Gradle**是一个基于[Apache Ant和](../Page/Apache_Ant.md "wikilink")[Apache
Maven概念的项目](../Page/Apache_Maven.md "wikilink")[自动化建构工具](https://zh.wikipedia.org/wiki/自动化建构 "wikilink")。它使用一种基于[Groovy的](../Page/Groovy.md "wikilink")[特定领域语言来声明项目设置](https://zh.wikipedia.org/wiki/特定领域语言 "wikilink")，而不是传统的[XML](../Page/XML.md "wikilink")。\[1\]

当前其支持的语言限于[Java](../Page/Java.md "wikilink")、[Groovy和](../Page/Groovy.md "wikilink")[Scala](../Page/Scala.md "wikilink")\[2\]，计划未来将支持更多的语言。

## 使用 Gradle 的優勢

  - 自動處理套件相依關係 - 取自 Maven Repos 的概念
  - 自動處理佈署問題 - 取自 Ant 的概念
  - 條件判斷寫法直覺 - 使用 Groovy 語言

過去 Java 開發者常用 Maven 和 Ant
等工具進行封裝佈署的自動化，或是兩者兼用，不過這兩個套件彼此有優缺點，如果頻繁改變相依套件版本，使用
Ant 相當麻煩，如果瑣碎工作很多，Maven 功能不足，而且兩者都使用 XML 描述，相當不利於設計 if、switch
等判斷式，即使寫了可讀性也不佳，而 Gradle 改良了過去 Maven、Ant
帶給開發者的問題，至今也成為 Android Studio 內建的封裝佈署工具。

## Ant迁移示例

Gradle与Ant有很紧密集成，甚至在构建时可以把Ant构建脚本直接导入。下面的例子展示了一个简单的Ant
target被引入为一个Gradle task。

**build.xml**

``` xml
<project>
  <target name="ant.target">
    <echo message="Running ant.target!"/>
  </target>
</project>
```

**build.gradle**

``` groovy
ant.importBuild 'build.xml'
```

运行 **gradle ant.target** 将显示如下结果

``` text
> gradle ant.target
:ant.target
[ant:echo] Running ant.target!

BUILD SUCCESSFUL
```

## 参考文献

## 参见

  - [Apache Ant](../Page/Apache_Ant.md "wikilink")
  - [Apache Maven](../Page/Apache_Maven.md "wikilink")
  - [Make](../Page/Make.md "wikilink")
  - [SCons](../Page/SCons.md "wikilink")

[Category:自动化构建](https://zh.wikipedia.org/wiki/Category:自动化构建 "wikilink")

1.
2.  <http://www.gradle.org/docs/current/userguide/standard_plugins.html#N1185F>