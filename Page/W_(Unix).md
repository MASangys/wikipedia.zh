命令**w**是许多[类Unix](../Page/类Unix系统.md "wikilink")[操作系统提供的快速列出当前已登录用户信息的计算机命令](../Page/操作系统.md "wikilink")。\[1\]该命令可以列出用户的当前动作，以及当前计算机的[负载情况](../Page/负载_\(计算机\).md "wikilink")。该命令实际是下列多个Unix命令的组合：[`who`](../Page/who_\(Unix\).md "wikilink")，[`uptime`](../Page/uptime.md "wikilink")和[`ps``
 ``-a`](../Page/ps_\(Unix\).md "wikilink")。

## 示例

输出示例 (内容因不同系统有很大差异)：

``` bash
$ w
 11:12am up 608 day(s), 19:56,  6 users,  load average: 0.36, 0.36, 0.37
User     tty       login@  idle  what
smithj   pts/5      8:52am       w
jonesm   pts/23    20Apr06    28 -bash
harry    pts/18     9:01am     9 pine
peterb   pts/19    21Apr06       emacs -nw html/index.html
janetmcq pts/8     10:12am 3days -csh
singh    pts/12    16Apr06  5:29 /usr/bin/perl -w perl/test/program.pl
```

## 参考

## 外部链接

  -
[Category:Unix用户管理和支持相关实用工具](https://zh.wikipedia.org/wiki/Category:Unix用户管理和支持相关实用工具 "wikilink")

1.