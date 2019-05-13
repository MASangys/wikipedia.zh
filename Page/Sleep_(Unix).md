**sleep**是一个[Unix的](../Page/Unix.md "wikilink")[命令行程序](https://zh.wikipedia.org/wiki/命令行 "wikilink")，可以[挂起执行程序一段指定时间](https://zh.wikipedia.org/wiki/睡眠_\(系统调用\) "wikilink")。**sleep**指令可以将调用它的[进程挂起至少指定秒](https://zh.wikipedia.org/wiki/进程 "wikilink")（默认）、分、时或天。

## 用法

``` bash
 sleep 数字
```

其中，**数字**为指明的时间段的整数。一些实现支持[浮点数](https://zh.wikipedia.org/wiki/浮点 "wikilink").

### 选项

无。

## 范例

``` bash
 sleep 5
```

导致当前终端会话等待5秒。

``` bash
 sleep 17500
```

导致当前终端会话等待5小时

## GNU sleep特定范例

``` bash
 sleep 3h ; mplayer foo.mp3
```

等待3个小时，然后播放foo.mp3

注意，**`sleep 5h30m`**和**`sleep 5h 30m`**是非法的，因为sleep只接受一个参数作为值及单位。然而，**`sleep 5.5h`**是可以的。也可以连续执行sleep达到目的。

``` bash
 sleep 5h; sleep 30m
```

睡眠5个小时，然后再睡眠30分钟。

[GNU计划的sleep实现](https://zh.wikipedia.org/wiki/GNU计划 "wikilink")（[coreutils的一部分](../Page/GNU核心工具组.md "wikilink")）允许用户传递多个参数，因此**`sleep 5h 30m`**（时和分之间的空格是必须的）可以工作在任何使用GNU
sleep的系统上，包括[GNU](../Page/GNU.md "wikilink")/[Linux](../Page/Linux内核.md "wikilink")。

`sleep`的可能用途包括调度任务和延迟执行，或允许一个进程启动，或等待几个用户[wget完一个大文件后释放共享网络连接](../Page/wget.md "wikilink")。

## 参见

  - [睡眠 (系统调用)](https://zh.wikipedia.org/wiki/睡眠_\(系统调用\) "wikilink")

## 外部链接

  -
[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")
[Category:Unix进程和任务管理相关软件](https://zh.wikipedia.org/wiki/Category:Unix进程和任务管理相关软件 "wikilink")