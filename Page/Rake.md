**Rake**是一款软件任务管理及[組建自動化](../Page/組建自動化.md "wikilink")工具。用户可指定任务、描述依赖关系及分组命名空间中的任务。

此软件与[SCons](../Page/SCons.md "wikilink")和[Make](../Page/Make.md "wikilink")类似，但有着诸多差异。Rake使用[Ruby](../Page/Ruby.md "wikilink")编写，使用以Ruby语法编写的Rakefile（与Make中的Makefile等同）。此软件由编写。

Rake使用Ruby的[匿名函数](../Page/匿名函数.md "wikilink")块来定义多个任务并允许用户使用Ruby语法。它拥有共同任务库，例如：控制文件任务的函数及移除已编译文件（即“clean”任务）的库。与Make相似的是，Rake同样可以根据模式来合成任务，例如：根据文件名自动构建文件编译任务。Rake现已成为Ruby 1.9后标准库的一部分。

## 示例

下方是一个简单的用于构建[C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink") “Hellow, world\!”程序的Rake脚本。

``` ruby
  file 'hello.o' => 'hello.c' do
    sh 'cc -c -o hello.o hello.c'
  end
  file 'hello' => 'hello.o' do
    sh 'cc -o hello hello.o'
  end
```

要查看更多示例，请参见[Rakefile 文件格式](http://www.ruby-doc.org/core-1.9.3/doc/rake/rakefile_rdoc.html)文档。

### 规则

当文件被列为先决条件但不含有为其定义的文件任务时，Rake将尝试通过查看Rakefile所支持的规则列表来合成任务。例如，假设我们尝试调用任务"我的代码.o"却不为其定义任务，且Rakefile规则如下所示：

``` ruby
rule '.o' => '.c' do |t|
  sh "cc #{t.source} -c -o #{t.name}"
end
```

此规则将自动合成任意以“.o”为后缀名的任务。前提条件是必须存在拓展名为“.c”的源文件。若Rake可以找到名为“我的代码.c”的源文件，其将自动新建任务将“我的代码.c”构建为“我的代码.o”。若文件“我的代码.c”不存在，Rake将尝试为其递归合成规则。

当任务从规则中合成后，任务的原属性被设置为匹配源文件。这点使得用户可撰写含引用源文件操作的规则。

### 高级规则

任意正则表达式均可作为规则模式。除此之外，进程也可用于计算源文件名称以允许复杂的模式及源。

下方规则与上方示例等同：

``` ruby
rule(/\.o$/ =>
  ->(t_name){ t_name.sub /\.o$/, '.c' }) do |t|
  sh "cc #{t.source} -c -o #{t.name}"
end
```

请注意：根据Ruby语法习惯，当首个参数为正则表达式时需要在规则旁插入括号。

下列规则可用于Java文件：

``` ruby
rule '.class' => ->(t_name){ t_name
    .sub(/\.class$/, '.java')
    .sub(/^classes\//, 'src/') } do |t|
  java_compile(t.source, t.name)
end
```

下方是个简单的Rake合成配方示例：

``` ruby
namespace :cake do
  desc '做煎饼馃子'
  task :pancake => [:egg,:mianhu,:conghua,:baking_powder] do
     puts "凉油"
  end
  task :mianhu do
    puts "放上凉面糊推成圆饼型"
  end
  task :egg => :mianhu do
    puts "打上1{{frac|1|2}}个鸡蛋"
  end
  task :conghua do
    puts "放上1{{frac|1|4}}勺葱花"
  end
  task :egg do
   puts "打上1个鸡蛋"
  end
  task :qiguo do
   puts "铲起大饼打包"
  end
end
```

## 另请参阅

  - [Make](../Page/Make.md "wikilink")
  - [Apache Maven](../Page/Apache_Maven.md "wikilink")
  - [Apache Ant](../Page/Apache_Ant.md "wikilink")

## 外部链接

  - [Rake文档](http://docs.seattlerb.org/rake/)

  -
  - 由[马丁·福勒](../Page/马丁·福勒.md "wikilink")撰写的[使用Rake构建语言](http://martinfowler.com/articles/rake.html)

  - railsenvy.com上的[Ruby on Rails Rake教程](https://web.archive.org/web/20071024171055/http://www.railsenvy.com/2007/6/11/ruby-on-rails-rake-tutorial)

  - railscasts.com上的[自定义Rake任务](http://railscasts.com/episodes/66)

  - lukaszwrobel.pl上的[Rake教程](http://lukaszwrobel.pl/blog/rake-tutorial)

[Category:程序设计工具](https://zh.wikipedia.org/wiki/Category:程序设计工具 "wikilink") [Category:自动化构建](https://zh.wikipedia.org/wiki/Category:自动化构建 "wikilink") [Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink") [Category:Ruby](https://zh.wikipedia.org/wiki/Category:Ruby "wikilink")