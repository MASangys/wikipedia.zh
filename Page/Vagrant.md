> 本文内容由[Vagrant](https://zh.wikipedia.org/wiki/Vagrant)转换而来。


Vagrant是一款用于构建及配置虚拟开发环境的软件，基于Ruby,主要以命令行的方式运行。

主要使用Oracle的开源VirtualBox虚拟化系统，与Chef，Salt，Puppet等环境配置管理软件搭配使用， 可以实行快速虚拟开发环境的构建。

早期以VirtualBox为对象，1.1以后的版本中开始对应VMware等虚拟化软件，包括Amazon EC2之类服务器环境的对应。

## 历史

2010年1月，Vagrant 只是作为Mitchell Hashimoto的业余兴趣而启动的项目。同年3月，Vagrant的第一版本发布了。同年10月，[Engine Yard宣布它们将赞助该项目](https://zh.wikipedia.org/wiki/Engine_Yard "wikilink")。在原始版本的整整两年后——2012年3月， Vagrant 1.0（首个稳定版本）发布了。同年12月份，Mitchell成立了名为[HashiCorp并全职开发Vagrant](https://zh.wikipedia.org/wiki/HashiCorp "wikilink")，但Vagrant仍保留[自由软件](../Page/自由软件.md "wikilink")。HashiCorp现今为Vagrant提供商业插件，并提供专业支持和训练。

初始Vagrant与[VirtualBox](../Page/VirtualBox.md "wikilink")绑定，但在版本1.1时开始支持其他虚拟化软件，如：[VMware](../Page/VMware.md "wikilink")、[基于内核的虚拟机](../Page/基于内核的虚拟机.md "wikilink")（KVM）以及作为[虚拟专用服务器](https://zh.wikipedia.org/wiki/虚拟专用服务器 "wikilink")（如：Amazon EC2）。Vagrant是用Ruby开发的。自版本1.6之后，Vagrant开始支持Docker容器，在一些例子，docker容器可以代替完整的虚拟系统。

## 架构

Vagrant使用"Provisioners"和"Providers" 作为开发环境的构建模块。

    |--vagrant
    |--Providers        如：VirtualBox、Hyper-V、Docker、VMware、AWS
    |--Boxex            如：Centos7。与镜像类似
    |--Provisioners     如：'yum intall -y python' 等自定义自动化脚本

Vagrant作为最外层的虚拟软件，目的是帮助开发者更容易地与Providers交互。Vagrantfile记录Providers和Provisioners的相关信息。

Providers作为服务，帮助vagrant使用Boxes建立和创建虚拟环境。Vagrant提供的内嵌的Provider有 VirtualBox、Hyper-V、Docker、VMware，而AWS以插件形式提供支持\[1\]。

当使用VirtualBox等Provider，需要使用Boxes才能创建虚拟环境。当使用Docker作为Provider时，则不需要Boxes。\[2\]

虚拟环境被创建后，开发者可以使用Provisioners自动化地自定义该虚拟环境。在Vagrant ecosystem 中(Ansible在2014已经可用了)，Puppet和Chef是最常用的 Provisioners\[3\]。



<references />



[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink") [Category:用Ruby编程的自由软件](https://zh.wikipedia.org/wiki/Category:用Ruby编程的自由软件 "wikilink")

1.
2.
3.