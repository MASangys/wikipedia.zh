**tmux**
是一个优秀的[终端复用器类](../Page/终端复用器.md "wikilink")[自由软件](../Page/自由软件.md "wikilink")，功能类似
[GNU Screen](../Page/GNU_Screen.md "wikilink")，但使用 [BSD
许可发布](../Page/BSD许可证.md "wikilink")。用户可以通过 tmux
在一个[终端内管理多个分离的会话](../Page/终端.md "wikilink")，窗口及面板，对于同时使用多个[命令行](../Page/命令行.md "wikilink")，或多个任务时非常方便。

## 概念模型

tmux 采用 [client/server](../Page/client/server.md "wikilink")
模型，主要由以下模块组成：

| 模块      | 简介                          |
| ------- | --------------------------- |
| server  | 服务。tmux 运行的基础服务，以下模块均依赖此服务。 |
| session | 会话。一个服务可以包含多个会话。            |
| window  | 窗口。一个会话可以包含多个窗口。            |
| panel   | 面板。一个窗口可以包含多个面板。            |

执行 `tmux` 命令时就开启了一个服务并创建了一个会话，窗口和面板。

## 功能特性

  - 一个虚拟终端可以管理多个会话，窗口和面板
  - 支持分屏，同时处理多个操作
  - 窗口、面板可以在会话间自由移动，切换
  - 丰富灵活的状态行展示
  - 支持自定义[快捷键](../Page/快捷键.md "wikilink")，依照个人习惯配置令操作更高效
  - 不受断网影响，避免丢失重要工作进度
  - [结对编程](../Page/结对编程.md "wikilink")，方便演示与协作
  - 自带复制粘贴缓冲区管理
  - 脚本化配置，可配置多种操作环境

## 常用操作

### 基础

### 会话

### 窗口

### 面板

## 已知问题

  - 不能使用 [ZMODEM](../Page/ZMODEM.md "wikilink")（rz/sz）操作
  - 结对编程时界面受字号大小影响
  - 部分系统接口访问受限，如 Mac OS 中需要安装
    [reattach-to-user-namespace](https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard)
    才可以正常使用与 pbcopy/pbpaste

## 相似软件

  - [Byobu (software)](../Page/Byobu_\(software\).md "wikilink")
  - [GNU Screen](../Page/GNU_Screen.md "wikilink")

## 参考

  -
### 网络书籍

  - [9781934356968 tmux: Productive Mouse-Free Development
    ISBN 9781934356968](https://books.google.com/books?id=qINFMwEACAAJ&dq=ISBN)

  - [tmux: Productive Mouse-Free Development
    中文翻译](https://archive.is/20151104153159/https://www.gitbook.com/book/aquaregia/tmux-productive-mouse-free-development_zh/details)

### 网络资料

  - [TMUX Rocks\!](http://www.slideshare.net/chenkaie/tmux-rocks)
  - [终端环境之tmux](https://archive.is/20151104153204/http://foocoder.com/blog/zhong-duan-huan-jing-zhi-tmux.html/)

[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")