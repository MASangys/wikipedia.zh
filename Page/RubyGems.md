**RubyGems**是[Ruby](../Page/Ruby.md "wikilink")的一个[包管理器](https://zh.wikipedia.org/wiki/包管理器 "wikilink")，提供了分发Ruby程序和[函式庫](../Page/函式庫.md "wikilink")的标准格式“gem”，旨在方便地管理gem安装的工具，以及用于分发gem的服务器。这类似于[Python](../Page/Python.md "wikilink")的[pip](../Page/Pip_\(軟件包管理系統\).md "wikilink")。RubyGems大约创建于2003年11月，从Ruby 1.9版起成为Ruby标准库的一部分。

## Gem

Gem是类似于的包。其包含包信息，以及用于安装的文件。

Gem通常是依照“.gemspec”文件构建的，其为包含了有关Gem信息的[YAML](../Page/YAML.md "wikilink")文件。然而，Ruby代码也可以直接建立Gem，这种情况下通常利用[Rake](../Page/Rake.md "wikilink")来进行。

### `gem`命令

`gem`命令用于构建、上传、下载以及安装Gem包。

#### `gem`用法

RubyGems在功能上与[apt-get](https://zh.wikipedia.org/wiki/apt-get "wikilink")、[portage](https://zh.wikipedia.org/wiki/portage "wikilink")、[yum和](../Page/Yellowdog_Updater,_Modified.md "wikilink")[npm非常相似](https://zh.wikipedia.org/wiki/npm "wikilink")。

安装：

` gem install mygem`

卸载：

` gem uninstall mygem`

列出已安装的gem：

` gem list --local`

列出可用的gem，例如：

` gem list --remote`

为所有的gems创建RDoc文档：

` gem rdoc --all`

下载一个gem，但不安装：

` gem fetch mygem`

从可用的gem中搜索，例如：

` gem search `*`STRING`*` --remote`

#### `gem`包的构建

gem命令也被用来构建和维护`.gemspec和`.gem文件。

利用`.gemspec`文件构建`.gem`：

` gem build mygem.gemspec`

## 在中国大陆

在中国大陆，由于[防火长城](../Page/防火长城.md "wikilink")对[Amazon S3的封锁](../Page/Amazon_S3.md "wikilink")，在使用官方源进行安装时可能会长时间无响应，并返回“Connection reset by peer”等错误。因此在中国大陆可能需要更换软件源才能正常使用Gem进行安装。

## 外部链接

  - [Official Rubygems项目页，包含下载](http://rubygems.org)
  - [Rubygems的官方文档](http://guides.rubygems.org/)
  - [Linux Journal上的文章](http://www.linuxjournal.com/article/8967)

[Category:用Ruby编程的自由软件](https://zh.wikipedia.org/wiki/Category:用Ruby编程的自由软件 "wikilink") [Category:自由软件包管理系统](https://zh.wikipedia.org/wiki/Category:自由软件包管理系统 "wikilink") [Category:Ruby](https://zh.wikipedia.org/wiki/Category:Ruby "wikilink")