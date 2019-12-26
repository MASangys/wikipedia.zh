**Ruby** 是一种[面向对象](https://zh.wikipedia.org/wiki/面向对象的程序设计 "wikilink")、[命令式](https://zh.wikipedia.org/wiki/命令式编程 "wikilink")、[函数式](https://zh.wikipedia.org/wiki/函数编程语言 "wikilink")、[动态的](../Page/动态语言.md "wikilink")[通用编程语言](../Page/通用编程语言.md "wikilink")。在20世纪90年代中期由[日本](../Page/日本.md "wikilink")[電腦科學家](../Page/電腦科學家.md "wikilink")[松本行弘](../Page/松本行弘.md "wikilink")（Matz）设计并开发。

遵守[BSD许可证](../Page/BSD许可证.md "wikilink")和Ruby License\[1\]。它的灵感与特性来自于[Perl](../Page/Perl.md "wikilink")、[Smalltalk](../Page/Smalltalk.md "wikilink")、[Eiffel](../Page/Eiffel.md "wikilink")、[Ada](../Page/Ada.md "wikilink")以及[Lisp语言](https://zh.wikipedia.org/wiki/Lisp "wikilink")。由Ruby语言本身还发展出了[JRuby](../Page/JRuby.md "wikilink")（[Java](../Page/Java.md "wikilink")平台）、[IronRuby](../Page/IronRuby.md "wikilink")（[.NET平台](https://zh.wikipedia.org/wiki/.NET "wikilink")）等其他平台的Ruby语言替代品。

## 歷史

[Yukihiro_Matsumoto.JPG](https://zh.wikipedia.org/wiki/File:Yukihiro_Matsumoto.JPG "fig:Yukihiro_Matsumoto.JPG")\]\]

Ruby的作者－－松本行弘於1993年2月24日開始編寫Ruby，直至1995年12月才正式公開發佈於fj（[新聞群組](https://zh.wikipedia.org/wiki/新聞群組 "wikilink")）。之所以稱為Ruby是取法自[Perl](../Page/Perl.md "wikilink")，因為Perl的發音與6月的[誕生石](../Page/誕生石.md "wikilink")pearl（珍珠）相同，Ruby選擇以7月的[誕生石](../Page/誕生石.md "wikilink")ruby（紅寶石）命名。

Ruby相較之下比其他類似的程式語言（如[Perl](../Page/Perl.md "wikilink")或[Python](../Page/Python.md "wikilink")）年輕，又因為Ruby是日本人發明的，所以早期的非[日文資料和程式都比較貧乏](https://zh.wikipedia.org/wiki/日文 "wikilink")，在網上仍然可以找到早期對Ruby的資料太少之類的批評。約於2000年，Ruby開始進入[美國](https://zh.wikipedia.org/wiki/美國 "wikilink")，英文的資料開始發展。

2004年，[Rails框架誕生](../Page/Ruby_on_Rails.md "wikilink")，Ruby更加廣為人知，Ruby並於2006年為TIOBE獲選為年度程式語言。

## Ruby的理念

减少编程时候的不必要的琐碎时间，令编写程序的人高兴，是设计Ruby语言的Matz的一个首要的考虑；其次是良好的界面设计。他强调系统设计必须强调人性化，而不是一味从机器的角度设想\[2\]。

遵循上述的理念，Ruby语言通常非常直观，按照编程人认为它应该的方式运行。

Ruby的作者認為**Ruby \> (Smalltalk + Perl) / 2**，表示Ruby是一個语法像Smalltalk一样完全[面向对象](https://zh.wikipedia.org/wiki/面向对象 "wikilink")、脚本執行、又有Perl強大的文字處理功能的程式語言。

## Ruby的版本体系

Ruby版本号的构成形式是（MAJOR）.（MINOR）.（TEENY），均为只有1位的整数；如“1.8.6”、“1.9.3”。

1.9版系统的TEENY不小于1时为稳定版，TEENY为0的版本是开发版。在1.9之前的版本中偶数MINOR代表稳定版，奇数MINOR代表开发版。\[3\]

## Ruby的Hello World程序

下面是一个在标准输出设备上输出[Hello World的简单程序](https://zh.wikipedia.org/wiki/Hello_World程序 "wikilink")：

``` Ruby
#!/usr/bin/env ruby
puts "Hello, world!"
```

或者是在irb互動式命令列的模式下：

``` Ruby
>>puts "Hello, world!"
Hello, world!
=> nil
```

## Ruby的特点

### 變數與函數的命名規則

乍看之下與Perl的命名規則有些類似，不過Perl的命名用來區分純量、陣列與映射；而Ruby的命名規則用來表示變數與類別的關係。Ruby的變數有以下幾種：

  - 一般小寫字母、底線開頭：-{zh-tw:變數;zh:變量;zh-cn:变量}-（Variable）。
  - `$`開頭：-{zh-tw:全域變數;zh:全局變量;zh-cn:全局变量}-（Global variable）。
  - `@`開頭：-{zh-tw:實例變數;zh:實例變量;zh-cn:实例变量}-（Instance variable）。
  - `@@`開頭：-{zh-tw:類別變數;zh:類別變量;zh-cn:类变量}-（Class variable）類別变量被共享在整个继承链中
  - 大寫字母開頭：常數（Constant）。

有些函數則會加一個後綴，用來表示函數的用法，跟變數命名規則不同，函數的命名規則只是習慣，不具強制性，即使你不照規則命名也不影響程式運作

  - `=`結尾：赋值方法，相當於其他程式語言的`set`開頭的方法，算是一種[語法糖](https://zh.wikipedia.org/wiki/語法糖 "wikilink")。
  - `!`結尾：破壞性方法，呼叫這個方法會修改本來的物件，這種方法通常有個非破壞性的版本，呼叫非破壞性的版本會回傳一個物件的副本。
  - `?`結尾：表示這個函數的回傳值是個布林值。

### 多種字串表示法

Ruby提供了多種字串的表示方法，方便撰寫有大量文字資料的程式。除了来自C语言的引号表示法之外，还有来自于Perl的百分号字面量记法，以及方便书写大量内容的Heredoc记法。Ruby可以方便地以`#{variable_name}`的方式向字符串中插入变量。

``` ruby
a = '\n这是一个单引号的字符串，反斜线和变量插值不会被转义'

b = %q{这是一个不可转义的字符串}

c = "\n这是一个双引号的字符串，反斜线和变量插值会被转义\n#{a}"

d = %Q{\n這是一個常量字串，特殊内容同样会被转义\n}

e = <<BLOCK
这是一个以Heredoc方式书写的常量字符串，可转义，结尾标志不可缩进
BLOCK

f = <<-BLOCK
      这是一个可以缩进的Heredoc字符串
    BLOCK

g = <<~BLOCK
      这是一个可以缩进的Heredoc字符串
      缩进会被自动去掉，在2.3版本中引入
    BLOCK

h = %/\t这是一个可转义的的字符串\n/
```

### 動態修改物件、類別

Ruby是动态语言，你可以在程序中修改先前定义过的類別。 也可以在某个类別的实例中定义该实例特有的方法，这叫做原型方法（prototype）。

``` Ruby
class MyClass
  def the_method
    "general method"
  end
end

mc = MyClass.new
def mc.the_method
  "special for this instance."
end

mc.the_method
```

### 強大的反射機制與元編程

Ruby的反射功能相當驚人，甚至可以自行追蹤程式運作，或是取出private變數、攔截方法的呼叫。 常常與『可以動態的修改物件』這項特色結合，做為『元編程』的功能：程式在運行時， 可以由程式設計師提供的資訊，自行生成、修改類別或物件，這項功能大大的提高了撰寫程式碼的效率。 在[Rails之中](../Page/Ruby_on_Rails.md "wikilink")，就大量使用了這種特性。

以下為用Rails使用元編程的範例：

``` Ruby
class Project < ActiveRecord::Base
  belongs_to :portfolio
  has_one    :project_manager
  has_many   :milestones
end
```

在這個例子中，`Project`類別繼承`Base`類別，`Base`類別內建的`belongs_to`、`has_one`、`has_many`方法，便會根據參數來修改Project類別的內容，並自行建立其他相關的方法。程式設計師可以更專心處理程式的運作，而不必為每個類別重複得撰寫程式碼。

### 其他特色

  - 完全物件導向：任何東西都是物件，沒有基礎型別
  - 變數沒有類型（動態型別）
  - 任何東西都有值：不管是四則運算、邏輯表達式還是一個語句，都有回傳值。
  - [运算符重载](../Page/运算符重载.md "wikilink")
  - [垃圾回收](../Page/垃圾回收_\(計算機科學\).md "wikilink")
  - 强类型\[4\]
  - \-{zh:变量无需声明;zh-tw:不必事先宣告變數;zh-cn:变量无需声明}-
  - 在[Windows上](https://zh.wikipedia.org/wiki/Windows "wikilink")，載入[DLL](https://zh.wikipedia.org/wiki/DLL "wikilink")

## 比較與批評

### 讓人意外之處

  - 在Ruby中，只有`false`和`nil`表示false，其它的所有值都表示true（包括`0`、`0.0`、`""`、`[]`）\[5\]。這點和C語言的『用`0`代表`false`』不同。
  - Ruby的字串是可改變的，這與Java固定不變的字串不同。在Ruby中，常用`Symbol`对象来表示不可变的字符串。Ruby 2.3提供了默认冻结字符串的选项，在源码开头添加魔术注释`# frozen_string_literal: true`可以打开这个选项，当用户试图更改`String`对象时会抛出运行时异常。同时，松本行弘表示，在Ruby 3中，字符串将是默认不可变的。\[6\]
  - Ruby的繼承功能相當脆弱，儘管Ruby是一個物件導向語言，Ruby內的許多規則，卻使得子類別有可能不小心就覆寫了父類別的功能，在《The Ruby Programming Language》一書中，建議除非程式設計師對一個類別相當了解，否則盡可能不要使用繼承。

### 和Perl 6比較

  - [CPAN上排名第一名](https://zh.wikipedia.org/wiki/CPAN "wikilink")，同時也是[Perl 6的開發者的](../Page/Perl_6.md "wikilink")[唐鳳](../Page/唐鳳.md "wikilink")（Autrijus / Audrey）說：「Ruby就是『沒有到處打廣告的Perl 6』」。\[7\]
  - 松本行弘在接受[歐萊禮](../Page/歐萊禮.md "wikilink")（O'Reilly）訪問時，提到「Ruby借用了很多Perl的東西……，Python遠比Perl要少……」、「我認為Ruby這個名字作為Perl之後的一門語言的名字真是再恰當不過了。」\[8\]
  - Perl之父[拉里·沃爾](https://zh.wikipedia.org/wiki/拉里·沃爾 "wikilink")（Larry Wall）說：「很多方面上我還是很喜歡Ruby的，這是因為那些部分是從Perl借過去的。：-）」、「我還喜歡Ruby的C\<\*\>一元星號操作符，所以我把它加到Perl 6裡面。」\[9\]

## 程式範例

下面的代码可以在Ruby [shell中运行](https://zh.wikipedia.org/wiki/shell "wikilink")，比如irb互動式命令列，或者保存为文件并运行命令` ruby  `<filename>。

  - 一些基本的Ruby代码：

<!-- end list -->

``` ruby
# Everything, including a literal, is an object, so this works:
-199.abs                                                # 199
"ruby is cool".length                                   # 12
"Rick Astley".index("c")                                # 2
"Nice Day Isn't It?".downcase.split(//).sort.uniq.join  # " '?acdeinsty"
```

  - 一些转换：

<!-- end list -->

``` ruby
puts "What's your favorite number?"
number = gets.chomp
outputnumber = number.to_i + 1
puts outputnumber.to_s + ' is a bigger and better favorite number.'
```

### 集合

  - 构造和使用[数组](../Page/数组.md "wikilink")：

<!-- end list -->

``` ruby
a = [1,'hi', 3.14, 1, 2, [4, 5]]

p a[2]           # 3.14
p a.[]（2）# 3.14
p a.reverse      # [[4, 5], 2, 1, 3.14, 'hi', 1]
p a.flatten.uniq # [1, 'hi', 3.14, 2, 4, 5]
```

  - 构造和使用关联数组：

<!-- end list -->

``` ruby
hash = { :water => 'wet', :fire => 'hot' }
puts hash[:fire] # Prints:  hot

hash.each_pair do |key, value| # Or:  hash.each do |key, value|
puts "#{key} is #{value}"
end

# Prints:  water is wet
#          fire is hot

hash.delete :water # Deletes :water => 'wet'
hash.delete_if {|k,value| value=='hot'} # Deletes :fire => 'hot'
```

### \-{zh-hans:块; zh-hant:區塊}-和迭代器

  - 有两个语法用于创建-{zh-hans:块; zh-hant:區塊}-：

<!-- end list -->

``` ruby
{ puts "Hello, World!" } # Note the { braces }
#or
do puts "Hello, World!" end
```

  - 传参数的-{zh-hans:块; zh-hant:區塊}-使用闭包[Closure](../Page/闭包_\(计算机科学\).md "wikilink")：

<!-- end list -->

``` ruby
# In an object instance variable (denoted with '@'), remember a block.
def remember(&a_block)
  @block = a_block
end

# Invoke the above method, giving it a block which takes a name.
remember {|name| puts "Hello, #{name}!"}

# When the time is right (for the object) -- call the closure!
@block.call("Jon")
# => "Hello, Jon!"
```

  - 从方法中返回闭包：

<!-- end list -->

``` ruby
def create_set_and_get(initial_value=0) # Note the default value of 0
  closure_value = initial_value
  return Proc.new {|x| closure_value = x}, Proc.new { puts closure_value }
end

setter, getter = create_set_and_get  # ie. returns two values
setter.call(21)
getter.call # => 21
```

  - 迭代调用调用时提供的-{zh-hans:块; zh-hant:區塊}-：

<!-- end list -->

``` ruby
def use_hello
  yield "hello"
end

# Invoke the above method, passing it a block.
use_hello {|string| puts string} # => 'hello'
```

  - 使用-{zh-hans:块; zh-hant:區塊}-迭代数组：

<!-- end list -->

``` ruby
array = [1, 'hi', 3.14]
array.each { |item| puts item }
# => 1
# => 'hi'
# => 3.14

array.each_index { |index| puts "#{index}: #{array[index]}" }
# => 0: 1
# => 1: 'hi'
# => 2: 3.14

(3..6).each { |num| puts num }
# => 3
# => 4
# => 5
# => 6
```

像inject()方法可以接收一个参数和一个-{zh-hans:块; zh-hant:區塊}-。迭代的注入列表的每一个成员，执行函数时保存总和。这同[函数编程语言中的foldl函数相类似](https://zh.wikipedia.org/wiki/函数编程语言 "wikilink")，比如：

``` ruby
[1,3,5].inject(10) {|sum, element| sum + element} # => 19
```

首先-{zh-hans:块; zh-hant:區塊}-接收到了10（inject的参数）当作变量sum，并且1（数组的第一个元素）当作变量element；这会返回11。11又被当作下一步的sum变量，它加上3得到了14。14又被加上了5，最终返回结果19。

  - \-{zh-hans:块; zh-hant:區塊}-运行在内置的方法中：

<!-- end list -->

``` ruby
File.open('file.txt', 'w') do |file| # 'w' denotes "write mode".
  file.puts 'Wrote some text.'
end                                  # File is automatically closed here

File.readlines('file.txt').each do |line|
puts line
end
# => Wrote some text.
```

  - 使用枚举器和块求1到10的平方：

<!-- end list -->

``` ruby
(1..10).collect {|x| x*x} # => [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
```

### \-{zh-hans:类; zh-hant:類別}-

下面的代码定义一个命名为Person的-{zh-hans:类; zh-hant:類別}-。含有一个「initialize」方法，用于构选创建一个新对象，它还有两个方法，一个重载了\<=\>比较运算符（这样`Array#sort`可以使用age排序）另一个重载了`to_s`方法（这样`Kernel#puts`可以格式化输出），`attr_reader`是Ruby中元数据编程的例子：`attr_accessor`为实例变量定义了getter和setter方法，`attr_reader`只是一个getter方法。另外，方法中最后的声明是它的返回值，也允许显式的使用「return」语句。

``` ruby
class Person
  attr_reader :name, :age
  def initialize(name, age)
    @name, @age = name, age
  end
  def <=>(person) # Comparison operator for sorting
    @age <=> person.age
  end
  def to_s
    "#@name (#@age)"
  end
end

group = [
  Person.new("Bob", 33),
  Person.new("Chris", 16),
  Person.new("Ash", 23)
]

puts group.sort.reverse
```

  - 下面按age倒序输出了三个名字：

<!-- end list -->

``` text
Bob(33)
Ash(23)
Chris(16)
```

## 各種版本

[JRuby](../Page/JRuby.md "wikilink")，類似[Python](../Page/Python.md "wikilink")的[Jython](../Page/Jython.md "wikilink")，一個可於[Java](../Page/Java.md "wikilink")上執行Ruby的語言，支援Java的介面和類別。最新發布版爲9.1.6.0（2016-11-09），與Ruby 2.3兼容。它的官方網站為[jruby.org](https://web.archive.org/web/20110208071026/http://jruby.org/)。

## 參見

  - [Python](../Page/Python.md "wikilink")（經常和Ruby比較\[10\]）
  - [Perl](../Page/Perl.md "wikilink")
      - [Perl 6](../Page/Perl_6.md "wikilink")（vs. Ruby）
  - [QtRuby](../Page/QtRuby.md "wikilink")：[Qt](../Page/Qt.md "wikilink")的Ruby綁定
  - [Smalltalk](../Page/Smalltalk.md "wikilink")
  - [Ruby on Rails](../Page/Ruby_on_Rails.md "wikilink")：一个MVC的快速網站开发应用框架。
  - [RGSS](../Page/RGSS.md "wikilink")：使用Ruby為基礎的遊戲腳本系統。

## 注释

## 参考文献

## 外部連結

  - [Ruby的官方网站](http://www.ruby-lang.org/)
  - [《Programming Ruby》網路版](https://web.archive.org/web/20040926003428/http://www.rubycentral.com/book/)
  - [Ruby Application Archive](http://raa.ruby-lang.org/)
  - [RubyForge](https://web.archive.org/web/20060812164344/http://rubyforge.org/)提供一個類似[SourceForge](../Page/SourceForge.md "wikilink")和Freshmeat的環境給用Ruby或給Ruby寫的工具，現已停止運營。
  - [Ruby Documentation project](http://ruby-doc.org/)
  - [Full Ruby on Rails Tutorial](https://web.archive.org/web/20070517233550/http://www.meshplex.org/wiki/Ruby/Ruby_on_Rails_programming_tutorials)
  - [TryRuby](http://tryruby.org/)
  - [Ruby Taiwan社群](http://ruby.tw/)
  - [Ruby中国社区](http://ruby-china.org/)目前中国Ruby开发者公认的Ruby中文社区。
  - [微服务架构在Ruby中](https://www.toptal.com/ruby/how-to-set-up-a-microservices-architecture)

{{-}}

[Category:Ruby](https://zh.wikipedia.org/wiki/Category:Ruby "wikilink") [Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink") [Category:腳本語言](https://zh.wikipedia.org/wiki/Category:腳本語言 "wikilink") [Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink") [Category:ISO标准化编程语言](https://zh.wikipedia.org/wiki/Category:ISO标准化编程语言 "wikilink")

1.  [Ruby License](http://www.ruby-lang.org/en/LICENSE.txt)
2.  [The Philosophy of Ruby, A Conversation with Yukihiro Matsumoto, Part I by Bill Venners on 2003-09-29 (Artima Developer，英文)](http://www.artima.com/intv/ruby4.html)
3.  \[Ruby语言入门东南大学出版社2010年4月第一版P19\]
4.  [To Ruby From Python](http://www.ruby-lang.org/en/documentation/ruby-from-other-languages/to-ruby-from-python/)
5.  [To Ruby From Python](http://www.ruby-lang.org/en/documentation/ruby-from-other-languages/to-ruby-from-python/)，When tested for truth, only false and nil evaluate to a false value. Everything else is true (including 0, 0.0, "", and \[\]).
6.  [Immutable String literal in Ruby 3.](https://bugs.ruby-lang.org/issues/11473)
7.  \[<http://www.openfoundry.org/index.php?option=com_content&Itemid=1&id=188&task=view〈日本的Perl社群名人>——宮川達彥專訪。〉\]
8.  [O'Reilly訪問Matz。](http://blog.csdn.net/eiffelqiu/archive/2004/02/04/19869.aspx)
9.  [Larry Wall On Perl, Religion, and……](http://www.perlchina.org/archive/archive.php?action=archive&page=39)
10. [Guido談Python 3000及與Ruby的競爭。](http://www.infoq.com/cn/news/2007/05/guido-python)