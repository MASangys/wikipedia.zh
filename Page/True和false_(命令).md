在[类Unix](https://zh.wikipedia.org/wiki/类Unix "wikilink")[操作系统](../Page/操作系统.md "wikilink")中，**`true`**和**`false`**的唯一功能就是始终返回设定的[退出状态](https://zh.wikipedia.org/wiki/退出状态 "wikilink")。程序员和脚本通常使用退出状态评估命令执行的成功（0状态）与否（不为零）。*true*和*false*命令可以代表命令成功的[逻辑值](https://zh.wikipedia.org/wiki/逻辑值 "wikilink")，因为*true*返回0，*false*返回1。

## 用法

命令通常在[shell脚本中的](https://zh.wikipedia.org/wiki/shell脚本 "wikilink")[条件语句和](https://zh.wikipedia.org/wiki/条件语句 "wikilink")[循环语句使用](https://zh.wikipedia.org/wiki/程序循环 "wikilink")。例如，下面的shell脚本重复*echo hello*循环，直至被中断：

``` bash
while true
do
  echo hello
done
```

命令可用来忽略其他命令序列的成败状态，如在本例中：

``` bash
make … && false
```

在[/etc/passwd中将用户的](https://zh.wikipedia.org/wiki/Passwd_\(文件\) "wikilink")[登录shell设置为](../Page/Unix_shell.md "wikilink")**`false`**，事实上阻止了他们访问交互式shell，但他们帐户的其他服务可能仍然有效，如[FTP](https://zh.wikipedia.org/wiki/FTP "wikilink")。（尽管如此，如果可用的话，`/sbin/nologin`可能更适合这个目的，因为它在终止会话之前会显示一个通知。）

程序并没有“实际的”参数；在大多数Linux版本中，标准参数`--help`可以显示用法摘要，`--version`则显示程序版本。

## 空命令

*true*命令有时可以用非常相似的[空命令代替](https://zh.wikipedia.org/wiki/空命令 "wikilink")，\[1\]写法为一个单冒号（`:`）。空命令是[壳层内建指令](https://zh.wikipedia.org/wiki/壳层内建指令 "wikilink")，因此，当*true*是外部程序时，它可能会更有效（*true*通常是壳层内建指令）。我们可以用`:`代替`true`重写上面的例子：

``` bash
while :
do
  echo hello
done
```

空命令可以有参数，但会被忽略。也可以用它作一个[无操作的伪命令](../Page/NOP.md "wikilink")，一种参数的扩展形式`${parameter:=word}`使用了它的副作用，来为参数分配默认值。\[2\]如一个来自*bashbug*，[Bash](../Page/Bash.md "wikilink") bug报告脚本的例子：

``` bash
 : ${TMPDIR:=/tmp}
 : ${EDITOR=$DEFEDITOR}
 : ${USER=${LOGNAME-`whoami`}}
```

## 参见

  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [二值原理](https://zh.wikipedia.org/wiki/二值原理 "wikilink")
  - [IEFBR14](../Page/IEFBR14.md "wikilink")

## 参考

## 外部链接

  -
  -
### 手册页

  - [true(1)](http://www.gnu.org/software/coreutils/manual/html_node/true-invocation.html): Do nothing, successfully – [GNU](../Page/GNU.md "wikilink") [Coreutils参考](../Page/GNU核心工具组.md "wikilink")
  - [false(1)](http://www.gnu.org/software/coreutils/manual/html_node/false-invocation.html): Do nothing, unsuccessfully – [GNU](../Page/GNU.md "wikilink") [Coreutils参考](../Page/GNU核心工具组.md "wikilink")
  - [true(1)](http://man.freebsd.org/true): Return true value – [FreeBSD](../Page/FreeBSD.md "wikilink")手册页
  - [false(1)](http://man.freebsd.org/false): Return false value – [FreeBSD](../Page/FreeBSD.md "wikilink")手册页

[Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink") [Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")

1.
2.