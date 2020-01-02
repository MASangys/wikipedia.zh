> 本文内容由[G-Eclipse](https://zh.wikipedia.org/wiki/G-Eclipse)转换而来。


**g-Eclipse** 是一个为[网格用户](../Page/网格计算.md "wikilink")，操作者及开发者提供的集成式[开放软件平台](../Page/开放源代码.md "wikilink")。它是在[Eclipse](../Page/Eclipse.md "wikilink")上实现的。

建基于Eclipse的[插件](../Page/插件.md "wikilink")系统结构，g-Eclipse扩展了Eclipse的底层功能及可视化接口，以便提供科学插件使用户能够存取现有的网格平台。g-Eclipse为网格作业部署，网格管理及网格应用程序开发提供了必要的支持。

g-Eclipse设有扩展点。Eclipse的开发者可以利用它们来扩展g-Eclipse的功能。

g-Eclipse是一个开源Eclipse基金项目，由多个单位合作开发，包括[卡尔斯卤厄研究中心](http://www.fzk.de/en)，[波兰超级计算及网格中心](http://www.man.poznan.pl/pcss/public/main/index.html?lang=en)，里因兹的[Johannes Kepler大学](http://en.wikipedia.org/wiki/Johannes_Kepler_University_Linz)，[塞普路斯大学](http://www.ucy.ac.cy/)，德国[Innoopract有限公司](http://www.innoopract.com)，[NEC 欧洲实验室](http://www.neclab.eu)，[Reading大学](http://en.wikipedia.org/wiki/University_of_Reading) 以及Southampton大学的[IT Innovation中心](http://www.it-innovation.soton.ac.uk/)。g-Eclipse开发小组由欧共体第六框架项目提供资助。

## 特点

g-Eclipse提供了三个不同的Eclipse平台视觉界面：

  - 用户界面 - 网格用户对网格技术知道得不多。用户界面目的在于让使用者能够在网格环境中执行应用程序，监视程序运行的进展以及管理他们的数据文件。
  - 操作者界面 - 网格平台的驱动者对网格的体系结构了解得很清楚。操作者界面应该为网格操作员提供一些设施使他们能够管理本地资源以及这些资源所属的[虚拟组织](https://zh.wikipedia.org/wiki/虚拟组织 "wikilink")。
  - 开发者界面 - 网格应用程序开发者在程序开发方面是专家，但很可能不是网格技术及网格体系结构方面的专家。他们熟知的是程序设计语言而不是网格体系结构技术。开发者界面目的在于为应用程序开发者提供适合的工具软件以支持程序开发，调试及部署。

## 被支持的中间件

g-Eclipse的设计使用一个与中间件无关的模型。对特殊网格中间件的支持是通过适应g-Eclipse模型来实现的。目前，g-Eclipse支持[gLite](http://glite.web.cern.ch/glite/)中间件，实现了用于虚拟组织管理，作业及文件管理，体系结构和应用程序监视，程序部署，数据可视化以及作业流设计的多个插件。一个支持第二个中间件[GRIA](https://www.webcitation.org/5nE6rPqMo?url=http://www.gria.org/)的初始实现也已经完成。此外，g-Eclipse 新开发了一个插件，支持对[Amazon's Simple Storage Service的访问](../Page/Amazon_S3.md "wikilink")。

## 参考

## 外部链接

  - [g-Eclipse在Eclipse基金会的官方网页](http://www.eclipse.org/geclipse)

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink") [Category:网格计算](https://zh.wikipedia.org/wiki/Category:网格计算 "wikilink")