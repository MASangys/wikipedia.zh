**Core Data**是[蘋果公司所開發的](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[macOS](https://zh.wikipedia.org/wiki/macOS "wikilink")[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")（舊稱：Mac OS X及OS X）中[Cocoa](../Page/Cocoa.md "wikilink") [API的一部分](https://zh.wikipedia.org/wiki/API "wikilink")，首次在[Mac OS X 10.4 *Tiger*与](https://zh.wikipedia.org/wiki/Mac_OS_X_v10.4 "wikilink")[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink") 3.0系统中出现\[1\]。它允许按照[实体-属性-值模型组织数据](https://zh.wikipedia.org/wiki/实体-属性-值模型 "wikilink")，并以[XML](../Page/XML.md "wikilink")，[二进制文件或](https://zh.wikipedia.org/wiki/二进制文件 "wikilink")[SQLite](../Page/SQLite.md "wikilink")数据文件的格式将其[序列化](../Page/序列化.md "wikilink")。Core Data允许用户使用代表实体和实体间关系的高层对象来操作数据。它也可以管理序列化的数据，提供[对象生存期管理与](https://zh.wikipedia.org/wiki/对象生存期 "wikilink")[object graph管理](https://zh.wikipedia.org/wiki/object_graph "wikilink")，包括存储。Core Data直接与[SQLite](../Page/SQLite.md "wikilink")交互，避免开发者使用原本的[SQL](../Page/SQL.md "wikilink")语句\[2\]。

就像[Cocoa绑定在](https://zh.wikipedia.org/wiki/Cocoa绑定 "wikilink")[模型-视图-控制器设计中做了很多控制器的工作一样](https://zh.wikipedia.org/wiki/模型-视图-控制器 "wikilink")，Core Data做了很多数据模型的工作。它的主要任务是负责数据更改的管理，序列化到磁盘，最小化内存占用，以及查询数据。

專長於Core Data及Cocoa軟體開發的資訊圖書作家Marcus Zarra曾說：

## 使用方法

Core Data使用包括实体和实体间关系，以及查找符合某些条件的实体的请求等内容的高层数据模型描述数据。开发者可以在纯对象层上查找与管理这些数据，而不必担心存储和查找的实现细节。[Interface Builder中的控制器对象可以直接获取与管理实体](../Page/Interface_Builder.md "wikilink")，若与Cocoa绑定结合，则可以在不写自定义代码的情况下让用户界面显示、修改与管理数据模型中的大部分内容。

例如：开发者希望开发一个管理[vCard的程序](https://zh.wikipedia.org/wiki/vCard "wikilink")。作者希望使用Core Data将一些vCard读入对象中，然后把它们存入一个大XML文件中。开发者需要在Xcode中建立数据模型，然后到Interface Builder中加入*Core Data Entity*项以创建其数据模型对应的GUI。然后，开发者可以加入标准的[Objective-C](../Page/Objective-C.md "wikilink")代码以读取vCard，并将数据写入由Core Data管理的实体中。在此，开发者的代码是管理Core Data对象，而非其对应的vCard。最后，将`Save`菜单项连接到控制器对象对应的方法上，使得控制器在接到*存储*消息后自动的检查数据堆栈，确认数据是否合法，最后利用当前更改重写对应的Core Data文档。在整个过程中，开发者只需要专注于将vCard文件转换为Core Data实体的过程，而不需关心例如数据的显示、合法性检查、存储等其它部分，提高了开发效率。

Core Data is organized into a large hierarchy of classes, though interaction is only prevalent with a small set of them. Core Data由相对庞大的类继承体系组成，但开发者需要关注的接口只是其中的一个相对小的子集。

<table>
<thead>
<tr class="header">
<th><p>类名</p></th>
<th><p>用途</p></th>
<th><p>关键方法</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>NSManagedObject</p></td>
<td><ul>
<li>数据对象</li>
<li>管理属性</li>
</ul></td>
<td><ul>
<li>-entity</li>
<li>-valueForKey:</li>
<li>-setValue: forKey:</li>
</ul></td>
</tr>
<tr class="even">
<td><p>NSManagedObjectContext</p></td>
<td><ul>
<li>数据库</li>
<li>获取与存储</li>
</ul></td>
<td><ul>
<li>-executeFetchRequest: error:</li>
<li>-save</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>NSManagedObjectModel</p></td>
<td><ul>
<li>数据模型</li>
</ul></td>
<td><ul>
<li>-entities</li>
<li>-fetchRequestTemplateForName:</li>
<li>-setFetchRequestTemplate: forName:</li>
</ul></td>
</tr>
<tr class="even">
<td><p>NSFetchRequest</p></td>
<td><ul>
<li>请求数据</li>
</ul></td>
<td><ul>
<li>-setEntity:</li>
<li>-setPredicate:</li>
<li>-setFetchBatchSize:</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>NSPersistentStoreCoordinator</p></td>
<td><ul>
<li>中介</li>
<li>存储数据</li>
</ul></td>
<td><ul>
<li>-addPersistentStoreWithType: configuration: URL: options: error:</li>
<li>-persistentStoreForURL:</li>
</ul></td>
</tr>
<tr class="even">
<td><p>NSPredicate</p></td>
<td><ul>
<li>确定查询条件</li>
</ul></td>
<td><ul>
<li>+predicateWithFormat:</li>
<li>-evaluateWithObject:</li>
</ul></td>
</tr>
</tbody>
</table>

\[3\]\[4\]\[5\]\[6\]

## 存储格式

Core Data可以将数据存储为XML，二进制文件或SQLite文件\[7\]。在[Mac OS X 10.5 *Leopard*及以后的版本中](https://zh.wikipedia.org/wiki/Mac_OS_X_v10.5 "wikilink")，开发者也可以通过继承NSPersistentStore类以创建自定义的存储格式。每种方法都有其优缺点，例如XML的可读性，SQLite的节约空间等。Core Data的这一方面类似于原始的[Enterprise Objects Framework](https://zh.wikipedia.org/wiki/Enterprise_Objects_Framework "wikilink")（EOF）系统，但EOF中开发者可以使用相对简洁的查询方式，而在Core Data中，只能使用一个语法类似SQL子集的查询语言，称为[Predicate](https://zh.wikipedia.org/wiki/Predicate "wikilink")\[8\]。

Core Data是标准化的，可以自由的读写Xcode数据模型文件（通常是.xcdatamodel文件）。与EOF不同，Core Data目前没有设计多用户或多线程访问模式。模型迁移通常也需要代码，若其它开发者依赖于某个数据模型，则该数据模型的设计者可能在模型发生改变时需要与新数据模型一起提供版本转换代码。

## 历史与发展

Core Data的很大一部分设计都归功于早期的[NeXT](../Page/NeXT.md "wikilink")产品，[Enterprise Objects Framework](https://zh.wikipedia.org/wiki/Enterprise_Objects_Framework "wikilink")（EOF）\[9\]。

## 脚注

## 参考文献

  - 苹果公司 (2009年9月17日). "Core Data Programming Guide". Retrieved from [<http://developer.apple.com/iphone/library/documentation/Cocoa/Conceptual/CoreData/cdProgrammingGuide.html>](http://developer.apple.com/mac/library/documentation/cocoa/conceptual/CoreData/cdProgrammingGuide.html)
  - 苹果公司 (2009年9月). "Core Data Tutorial for iPhone OS". Retrieved from <https://web.archive.org/web/20100323200755/http://developer.apple.com/iPhone/library/documentation/DataManagement/Conceptual/iPhoneCoreData01/Introduction/Introduction.html>
  - 苹果公司 (2010年6月14日). *Predicate Programming Guide*. 来自[1](http://developer.apple.com/library/ios/#documentation/Cocoa/Conceptual/Predicates/predicates.html%23//apple_ref/doc/uid/TP40001789)
  - 苹果公司 (2006年). "EOModeler User Guide". Retrieved from <http://developer.apple.com/legacy/mac/library/documentation/WebObjects/UsingEOModeler/Introduction/Introduction.html#//apple_ref/doc/uid/TP30001018-CH201-TP1>
  - Jurewitz, M. & Apple Inc. (2010). "iPhone Development Videos: Working With Core Data". Retrieved from <http://developer.apple.com/videos/iphone/#video-advanced-coredata>
  - Stevenson, S. (2005). "Core Data Class Overview". Retrieved from <http://cocoadevcentral.com/articles/000086.php>
  - Zarra, M. S. (2009). *Core Data Apple's API for Persisting Data on Mac OS X*. The Pragmatic Programmers.
  - LaMarche, J., & Mark, D. (2009). *More iPhone 3 Development: Tackling iPhone SDK 3*. Apress.

## 外部链接

  - Apple Inc. (2006). "Developing With Core Data". Retrieved from <http://developer.apple.com/macosx/coredata.html>
  - Apple Inc. (2009). "Web Objects Tutorial". Retrieved from <http://developer.apple.com/legacy/mac/library/documentation/DeveloperTools/Conceptual/WOTutorial/Introduction/Introduction.html>
  - CocoaDev. (n.d.). Retrieved from <http://www.cocoadev.com/>
  - Stevenson, S. (2005). "Build A Core Data Application". Retrieved from <http://cocoadevcentral.com/articles/000085.php>

[Category:NeXT](https://zh.wikipedia.org/wiki/Category:NeXT "wikilink") [Category:Mac_OS介面](https://zh.wikipedia.org/wiki/Category:Mac_OS介面 "wikilink") [Category:数据建模](https://zh.wikipedia.org/wiki/Category:数据建模 "wikilink") [Category:数据管理](https://zh.wikipedia.org/wiki/Category:数据管理 "wikilink") [Category:苹果手机](https://zh.wikipedia.org/wiki/Category:苹果手机 "wikilink")

1.  Apple, "Core Data Tutorial for iPhone OS".

2.  Apple, "Core Data Programming Guide".

3.
4.
5.  Stevenson, "Core Data类总览"

6.  Jurewitz, "使用Core Data"

7.
8.  Apple, *Predicate Programming Guide*

9.  Apple, "EOModeler User Guide"