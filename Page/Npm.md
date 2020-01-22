> 本文内容由[Npm](https://zh.wikipedia.org/wiki/Npm)转换而来。


**npm**（全称 Node Package Manager，即“node包管理器”）是[Node.js預設的](https://zh.wikipedia.org/wiki/Node.js "wikilink")、以[JavaScript](../Page/JavaScript.md "wikilink")編寫的[軟體套件管理系統](https://zh.wikipedia.org/wiki/軟體套件管理系統 "wikilink")。

## 历史

npm完全用[JavaScript](../Page/JavaScript.md "wikilink")写成，最初由艾萨克·施吕特（Isaac Z. Schlueter）开发。艾萨克表示自己意识到“模块管理很糟糕”的问题，并看到了[PHP](../Page/PHP.md "wikilink")的[PEAR](../Page/PEAR.md "wikilink")与[Perl](../Page/Perl.md "wikilink")的[CPAN等软件的缺点](https://zh.wikipedia.org/wiki/CPAN "wikilink")，于是编写了npm。\[1\]

## 说明

npm会随着Node.js自动安装\[2\]。npm模块仓库提供了一个名为“registry”的查询服务，用户可通过本地的npm命令下载并安装指定模块。此外用户也可以通过npm把自己设计的模块分发到registry上面\[3\]。

registry上面的模块通常采用[CommonJS](../Page/CommonJS.md "wikilink")格式，而且都包含一个[JSON](../Page/JSON.md "wikilink")格式的元文件\[4\]。截止到2016年7月，npm的registry上面已经注册了超过280,000个模块\[5\]。

npm的模块以“先到先得”的原则注册，各模块作者不会发生混乱。然而一旦有人撤回自己发布的模块，那么不仅会使依赖那个模块的项目出现问题，还会带来安全风险\[6\]。例如有一個模組叫做「left-pad」，其中只有一個字串對齊的功能。但是，當作者把它從registry裡面移除之後，許多模組便無法正確構建\[7\]。

npm的registry没有审核机制，因此会存在一些低质量、不安全甚至有害的模块\[8\]，不过npm服务器的管理员也可以删除有害模块并阻止不怀好意的用户\[9\]。

另外也有人为npm制作了统计功能，这样可以让开发者了解各模块的使用情况，帮助他们选择合适的模块。\[10\]

## 使用

npm可以管理本地项目的所需模块并自动维护依赖情况，也可以管理全局安装的JavaScript工具\[11\]。

如果一个项目中存在`package.json`文件，那么用户可以直接使用`npm install`命令自动安装和维护当前项目所需的所有模块\[12\]。在`package.json`文件中，开发者可以指定每个依赖项的[版本范围](../Page/軟件版本號.md "wikilink")，这样既可以保证模块自动更新，又不会因为所需模块功能大幅变化导致项目出现问题\[13\]。开发者也可以选择将模块固定在某个版本之上\[14\]。

## 参考文献

## 外部連結

  -
## 参见

  - [JavaScript](../Page/JavaScript.md "wikilink")
  - [V8 (JavaScript引擎)](https://zh.wikipedia.org/wiki/V8_\(JavaScript引擎\) "wikilink")
  - [Node.js](https://zh.wikipedia.org/wiki/Node.js "wikilink")

{{-}}

[Category:自由软件包管理系统](https://zh.wikipedia.org/wiki/Category:自由软件包管理系统 "wikilink") [Category:JavaScript](https://zh.wikipedia.org/wiki/Category:JavaScript "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.
14.