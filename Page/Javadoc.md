**Javadoc**（最初是**JavaDoc**）\[1\]是由[Sun
Microsystems为](https://zh.wikipedia.org/wiki/Sun_Microsystems "wikilink")[Java语言](../Page/Java.md "wikilink")（现在由[甲骨文公司拥有](../Page/甲骨文公司.md "wikilink")）创建的文档生成器，用于从Java源代码生成[HTML格式的](../Page/HTML.md "wikilink")[API文档](../Page/应用程序接口.md "wikilink")，HTML格式用于增加将相关文档[链接在一起的便利性](https://zh.wikipedia.org/wiki/超連結 "wikilink")。<ref>

<div>

<https://web.archive.org/web/20170613233020/http://agile.csc.ncsu.edu/SEMaterials/tutorials/javadoc/%3C/div>\></ref>

Javadoc使用的“doc comments”格式\[2\]
是记录Java类的事实上的行业标准。一些[IDE](../Page/集成开发环境.md "wikilink")，\[3\]如[IntelliJ
IDEA](../Page/IntelliJ_IDEA.md "wikilink")、[NetBeans和](../Page/NetBeans.md "wikilink")[Eclipse](../Page/Eclipse.md "wikilink")，可以自动生成Javadoc
HTML。许多文件编辑器帮助用户生成Javadoc源代码并使用Javadoc信息作为程序员的内部引用。

Javadoc还提供了用于创建doclet和taglet的API，允许用户分析Java应用程序的结构，这就是JDiff如何生成两个API版本之间发生变化的报告。

Javadoc不影响Java中的性能，因为在编译时会删除所有注释。编写注释和Javadoc是为了更好地理解代码，从而更好地维护代码。

## 历史

Javadoc是早期的Java语言文档生成器。\[4\]在使用文档生成器之前，习惯上由专业的技术编写者编辑文档，他们通常只编写软件的独立文档，\[5\]但要使这些文档与软件本身保持同步要困难得多。

自第一个版本以来，Java一直使用Javadoc，并且通常在[Java开发工具包的每个新版本上都会更新](../Page/JDK.md "wikilink")。

## 技术架构

### Javadoc注释结构

通过标准多行注释标记`/*` and `*/从代码中引发Javadoc注释。`起始标记（称为开始 -
注释分隔符）具有额外的星号，如`/**`中所示。

1.  第一段是对所记录方法的描述。
2.  在描述之后是不同数量的描述性标签，表示：
    1.  方法的参数（`@param`）
    2.  方法返回的内容（`@return`）
    3.  方法可能抛出的任何异常（`@引发`）
    4.  其他不太常见的标签，如 `@see` （“另见”标签）

### Javadoc概览

编写文档注释的基本结构是将它们嵌入到`/**.`中。Javadoc写在项目旁边，没有任何分隔换行符。请注意，任何import语句必须在类声明之前。类声明通常包括：

``` java
// import statements

/**
 * @author     姓名  <address @ example.com>
 * @version    1.6   （程序的当前版本号）
 * @since       1.2    （加入该类时程序的版本号）
 */
public class Test {
    // class body
}
```

对于方法，有如（1）所示的简洁的一行描述来解释项目的作用；接下来是（2）所示的更长的描述，该描述可以跨越多个段落并且是可有可无的；最后，第（3）部分列出接受的输入参数和方法的返回值。所有的Javadoc都被视为HTML，因此多个段落部分由"<code>

</code>"段落符号分隔。

``` java
/**
 * 简短的单行描述。                                                  （1）
 * <p>
 * 更长一些的描述可以写在这里。                              （2）
 * </p>
 * 在HTML段落分隔的连续段落中还可以有更多注释。
 *
 * @param  variable 描述文本。                               （3）
 * @return  描述文本。
 */
public int methodName (...) {
    // method body with a return statement
}
```

与方法类似的注释也可以用于变量的注释，但省略了第（3）部分，这里只包含了对变量的简短描述：

``` java
/**
 * 对变量的描述。
 */
private int debug = 0;
```

请注意，不建议\[6\]在单个文档注释中定义多个变量。这是因为Javadoc读取每个变量并将它们分别放置到生成的HTML页面，其中包含为所有字段复制的相同文档注释。

``` java
/**
 * 点对 (x,y) 的水平和垂直距离
 */
public int x, y;      // 避免这样的做法
```

相反，建议分别声明和注释每个变量：

``` java
/**
 * 点的水平距离。
 */
public int x;

/**
 * 点的垂直距离。
 */
public int y;
```

### Javadoc标签表

一部分可用的Javadoc标签<ref>

<div>

[Javadoc tags in
JavaSE 6](https://docs.oracle.com/javase/8/docs/technotes/tools/unix/javadoc.html#CHDBEFIF)

</div>

</ref>列在下表中：

<table>
<thead>
<tr class="header">
<th><p>标签&amp;参数</p></th>
<th><p>用途</p></th>
<th><p>适用于</p></th>
<th><p>引入版本</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>@author</strong> <em>John Smith</em></p></td>
<td><p>描述作者。</p></td>
<td><p>类、接口、枚举</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>{<strong>@docRoot</strong>}</p></td>
<td><p>表示从任何生成的页面生成的文档的根目录的相对路径。</p></td>
<td><p>类、接口、枚举、成员、方法</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>@version</strong> <em>版本</em></p></td>
<td><p>提供软件版本，每个类或接口最多一个。</p></td>
<td><p>类、接口、枚举</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>@since</strong> <em>起始</em></p></td>
<td><p>描述此功能首次存在的时间。</p></td>
<td><p>类、接口、枚举、成员、方法</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>@see</strong> 参考</p></td>
<td><p>提供指向其他文档元素的链接。</p></td>
<td><p>类、接口、枚举、成员、方法</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>@param</strong> <em>名称 描述</em></p></td>
<td><p>描述方法的一个参数。</p></td>
<td><p>方法</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>@return</strong> <em>描述</em></p></td>
<td><p>描述返回值。</p></td>
<td><p>方法</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>@exception</strong> <em>类 描述</em><br />
<strong>@throws</strong> <em>类 描述</em></p></td>
<td><p>描述可能从此方法抛出的异常。</p></td>
<td><p>方法</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>@deprecated</strong> 描述</p></td>
<td><p>描述一个过时的方法。</p></td>
<td><p>类、接口、枚举、成员、方法</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>{<strong>@inheritDoc</strong>}</p></td>
<td><p>从被覆盖的方法复制描述。</p></td>
<td><p>覆盖方法</p></td>
<td><p>1.4.0</p></td>
</tr>
<tr class="odd">
<td><p>{<strong>@link</strong> <em><var>参考</var></em>}</p></td>
<td><p>链接到其他符号。</p></td>
<td><p>类、接口、枚举、成员、方法</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>{<strong>@linkplain</strong> <em><var>参考</var></em>}</p></td>
<td><p>与{@link}相同，但链接的标签以纯文本显示，而不是代码字体。</p></td>
<td><p>类、接口、枚举、成员、方法</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>{<strong>@value</strong> <em>#STATIC_FIELD</em>}</p></td>
<td><p>返回静态成员的值。</p></td>
<td><p>静态成员</p></td>
<td><p>1.4.0</p></td>
</tr>
<tr class="even">
<td><p>{<strong>@code</strong> <em>文本</em>}</p></td>
<td><p>在代码字体中格式化文字文本，等同于&lt;code&gt; {@literal} &lt;/code&gt;。</p></td>
<td><p>类、接口、枚举、成员、方法</p></td>
<td><p>1.5.0</p></td>
</tr>
<tr class="odd">
<td><p>{<strong>@literal</strong> <em>文本</em>}</p></td>
<td><p>表示文本，随附的文本被解释为不包含HTML标记或嵌套的javadoc标记。</p></td>
<td><p>类、接口、枚举、成员、方法</p></td>
<td><p>1.5.0</p></td>
</tr>
<tr class="even">
<td><p>{<strong>@serial</strong> <em>文本</em>}</p></td>
<td><p>在Javadoc注释中用于默认的可序列化字段。</p></td>
<td><p>成员</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>{<strong>@serialData</strong> <em>文本</em>}</p></td>
<td><p>记录writeObject()或writeExternal()方法写入的数据。</p></td>
<td><p>成员、方法</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>{<strong>@serialField</strong> <em>文本</em>}</p></td>
<td><p>记录ObjectStreamField组件。</p></td>
<td><p>成员</p></td>
<td></td>
</tr>
</tbody>
</table>

### 示例

下面是注释一个方法的Javadoc示例。

``` java
/**
 * 验证一步象棋的移动是否可行。
 *
 * <p>使用 {@link #doMove(int theFromFile, int theFromRank, int theToFile, int theToRank)} 方法来移动棋子。
 *
 * @param theFromFile 被移动棋子的来源行
 * @param theFromRank 被移动棋子的来源列
 * @param theToFile  被移动棋子的目标行
 * @param theToRank  被移动棋子的目标列
 * @return            如果移动是可行的则返回true，否则返回false
 * @since             1.0
 */
boolean isValidMove(int theFromFile, int theFromRank, int theToFile, int theToRank) {
    // ...body
}

/**
 * 移动一个棋子。
 *
 * @see java.math.RoundingMode
 */
void doMove(int theFromFile, int theFromRank, int theToFile, int theToRank)  {
    // ...body
}
```

## 参见

  -
  -
## 参考文献

<references group="" responsive="">

</references>

  -
[Category:Java开发工具](https://zh.wikipedia.org/wiki/Category:Java开发工具 "wikilink")
[Category:自由文档生成器](https://zh.wikipedia.org/wiki/Category:自由文档生成器 "wikilink")
[Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.  现在写作‘Javadoc’，参见[1](http://www.oracle.com/technetwork/java/javase/documentation/index-jsp-135444.html)。最早写作‘JavaDoc’，参见[2](http://www.artima.com/intv/jackpot3.html)
2.
3.  [IntelliJ IDEA](https://www.jetbrains.com/idea/),
    [NetBeans](http://www.netbeans-blog.org/netbeans-ide/generating-javadoc-for-a-project-in-netbeans-ide.html)
    and [Eclipse](http://www.eclipse.org/)
4.  .
5.
6.