**CocoaPods**
是一[应用级别的依赖管理器](../Page/软件包管理系统.md "wikilink")，针对[Objective-C](../Page/Objective-C.md "wikilink")、[Swift和其他任一在Objective](../Page/Swift.md "wikilink")-C运行时上运行的语言，如[RubyMotion](https://zh.wikipedia.org/wiki/RubyMotion "wikilink")，\[1\]
，它为额外的[库的管理提供了标准的格式](https://zh.wikipedia.org/wiki/库 "wikilink")。CocoaPods由Eloy
Durán与Fabio
Pelosin开发，他们在其他许多研发人员的贡献与帮助下，继续管理着该项目，\[2\]他们在2011年8月时着手开发，\[3\]，并在2011年9月1日时编译了第一个公开版本。\[4\]
CocoaPods受到[Ruby项目](../Page/Ruby.md "wikilink")[RubyGems与](../Page/RubyGems.md "wikilink")[Bundler的强烈启发](https://zh.wikipedia.org/wiki/Bundler_\(software\) "wikilink")。

CocoaPods专注于第三方代码的基于源代码的分发和与Xcode项目的自动整合。

CocoaPods可以通过[命令行运行](https://zh.wikipedia.org/wiki/命令行 "wikilink")，也被整合进了[JetBrains旗下](../Page/JetBrains.md "wikilink")[AppCode](https://zh.wikipedia.org/wiki/AppCode "wikilink")
[集成开发环境](../Page/集成开发环境.md "wikilink").\[5\]通过以来的明确说明，而不是手动地拷贝源文件的方式，它为应用安装依赖（如[库](https://zh.wikipedia.org/wiki/库 "wikilink")。\[6\]除了从许多其他不同的来源安装之外，“master”规格的仓库—包含许多[开源的库](../Page/开源软件.md "wikilink")—以寄存在GitHub中的[Git仓库的方式来维系](../Page/Git.md "wikilink")。\[7\]
CocoaPods依赖管理系统由[Molinillo](https://github.com/CocoaPods/Molinillo)驱动，Molinillo也被其他大型项目如[Bundler](http://bundler.io/)，[RubyGems](https://rubygems.org/)、[Berkshelf](https://docs.chef.io/berkshelf.html)所使用。

## 例子

下面的Podfile例子安装了[AFNetworking以及](https://zh.wikipedia.org/wiki/AFNetworking "wikilink")[CocoaLumberjack库](https://zh.wikipedia.org/wiki/CocoaLumberjack "wikilink")：

``` ruby
 platform :ios
 pod 'AFNetworking',    '~> 2.0.0'
 pod 'CocoaLumberjack', '< 1.7'

 target 'MyApp'
```

## 参见

  - [List of build automation
    software](https://zh.wikipedia.org/wiki/List_of_build_automation_software "wikilink")
  - [List of software package management
    systems](https://zh.wikipedia.org/wiki/List_of_software_package_management_systems "wikilink")

## 参考资料

## 外部链接

  - [Official website](http://cocoapods.org)
  - [Official source code repositories](https://github.com/CocoaPods)

[Category:自由软件包管理系统](https://zh.wikipedia.org/wiki/Category:自由软件包管理系统 "wikilink")

1.  [Use CocoaPods Dependencies in RubyMotion
    Apps](http://www.rubymotion.com/developer-center/articles/cocoapods/)

2.  [CocoaPods
    contributors](https://github.com/CocoaPods/CocoaPods/graphs/contributors)
3.  [Initial
    work](https://github.com/CocoaPods/CocoaPods/commit/fd2bc0a7cc4c49ddc37edb2a16398f8cfb06132e)
4.  [Initial
    release](https://github.com/CocoaPods/CocoaPods/releases/tag/0.0.1)
5.  [What's New in AppCode 2.5](http://www.jetbrains.com/objc/whatsnew/)
6.  [Streamlining Cocoa Development With
    CocoaPods](http://mobile.tutsplus.com/tutorials/iphone/streamlining-cocoa-development-with-cocoapods)
7.  [The “master” spec repository](https://github.com/CocoaPods/Specs)