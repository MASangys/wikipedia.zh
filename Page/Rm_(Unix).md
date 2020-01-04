> 本文内容由[Rm \(Unix\)](https://zh.wikipedia.org/wiki/Rm_\(Unix\))转换而来。


**rm**，是一个基本的[UNIX命令](../Page/Unix实用程序列表.md "wikilink")，其名称源自[英文](https://zh.wikipedia.org/wiki/英文 "wikilink")[单词remove的](https://zh.wikipedia.org/wiki/单词 "wikilink")[缩写](https://zh.wikipedia.org/wiki/缩写 "wikilink")，用于删除文件系统中的文件、目录、[设备文件](https://zh.wikipedia.org/wiki/设备文件 "wikilink")、[符号链接](../Page/符号链接.md "wikilink")等对象。准确地说，rm移除的指向特定对象的引用。在文件系统中，这些特定的对象可能有多个引用（例如，两个不同的文件名可能指向相同的文件）, 只有在一个对象不再有任何引用，并且没有任何程序还拥有这个文件的有效句柄的时候，这个文件才会被删除。

这一机制允许下列出现：某个程序可以创建一个文件，并立即将此文件从文件系统中移除，并将这个文件占用的空间作为临时空间使用。（因为我们知道在该程序退出甚至是崩溃的时候，这一文件占用的空间会被回收。）

rm命令一般来说并不摧毁文件数据，因为其目的仅仅在于解除引用。即便文件已经解除所有的引用，在文件系统中，被释放的空间里可能还会有被删除文件的残留数据。在一些情况下这会带来安全问题，因此有时加强版的命令会在文件的最后一个链接断开之后抹除被删除文件的数据。此外，一些程序（例如 [shred](../Page/Shred_\(Unix\).md "wikilink")）可以提供数据抹除能力。

## 示例

下列命令将名为"foo"的文件自目录中移除：

``` bash
   % rm foo
```

一般而言，rm不产生输出信息，其只在错误发生的时候才报告错误信息。 如果加上参数 **-v**，则可以获得详细的文件移除的动作信息。

有时用户担心意外删除文件，特别是在使用通配符删除文件的时候。 这些情况下可以使用 **-i**参数，使rm在执行每个删除动作之前都提示用户确认。

``` bash
   % rm -i foo
     remove foo? y
```

## 背景

rm 一般在[UNIX](../Page/UNIX.md "wikilink")及其衍生操作系统中出现，而这些系统不提供已被删除文件的恢复机制（例如[回收站](../Page/資源回收筒_\(Windows\).md "wikilink")）\[1\]，因此用户常对rm命令进行一些封装以避免意外删除文件。

也有被称为[undelete的实用工具](https://zh.wikipedia.org/wiki/undelete "wikilink")。如果被删除文件原先占用的部分未被再度利用，这一工具将尝试恢复文件的索引以将这一被删除文件恢复。

## 命令参数

*rm*命令接受的常见参数有：

  - **-r** ： 递归("recursive")，删除目录，在删除这一目录前会事先删除目录中的内容（避免删除了目录而使目录中的文件无处存放的问题）
  - **-i** ： 交互("interactive")，为每一个删除操作询问一次删除确认。
  - **-f** ： 强制("force")，忽视不存在的文件，无视任何的确认提示。但是若目录写保护，这一命令无法移除该目录中的文件。

利用[C shell命令](https://zh.wikipedia.org/wiki/C_shell "wikilink")[alias或是](https://zh.wikipedia.org/wiki/alias "wikilink")[Bourne shell的功能](../Page/Bourne_shell.md "wikilink")，rm命令常常被“rm -i”命令覆盖，这样可以防止意外的文件删除操作。 如果用户还是想不通过确认而删除大量的文件，他们可以手动为命令追加“-f”参数，取消"-i"参数的效果（这是因为加上“-f”参数后，命令变为了“rm -i -f”，而后指定的参数有更高的优先级）。不过这个方法也可能使用户养成使用通配符等危险的习惯，而这一习惯还是会导致意外的文件删除。

**rm -rf**（其他的形式包括： `rm -rf /`， `rm -rf *`等）常常在描述UNIX灾难的笑话和轶事中出现\[2\]</ref>。 若在根目录由[超级用户](../Page/超级用户.md "wikilink")执行 `rm -rf` 命令，将会导致系统中所有已挂载可写入文件系统中所有内容的清除，直到系统自身因为丢失重要文件或目录而崩溃或其他致命系统事件，这一命令才会终止。

rm命令常常与[xargs命令一起使用](https://zh.wikipedia.org/wiki/xargs "wikilink")，这样就可以支持给定列表的文件批量删除：

``` bash
 xargs rm < filelist
```

或者，也可以删除在当前目录下（包含子目录）的所有PNG图像文件：

``` bash
 find . -name '*.png' -print0 | xargs -0 rm
```

## 权限

一般而言，在大部分文件系统中，删除文件需要文件所在目录的写权限（首先为了进入该目录，还需要该目录的执行权限）。（注意：这里需要的是目录的执行权限，至于文件自身是否有写权限与删除操作成功与否无关。然而，除非使用-f参数，如果想要删除写保护文件，GNU rm将询问用户确认。）

使用`rm -r`删除目录时，必须先递归删除这一目录中所有的内容。这就要求用户必须获得对于目录（及其子目录）的读、写、执行权限（若目录非空）。需要读目录的权限是因为删除目录中的文件，需要先列出目录中的内容。这一限制有时导致了奇怪的情况： 因为没有对一非空目录的读权限，这一目录无法删除，也无法删除目录中的内容。但如果这个目录是空的，那么目录就能被删除。

若在将要删除的目录中的某个文件设置了[sticky bit](https://zh.wikipedia.org/wiki/sticky_bit "wikilink")，那么这个文件只能由其所有者删除。

## 文件系统根目录保护

[太阳微系统在](https://zh.wikipedia.org/wiki/太阳微系统 "wikilink")2005首次发布的[Solaris](https://zh.wikipedia.org/wiki/Solaris_\(操作系统\) "wikilink") 10中，引入了"`rm -rf /`"保护。若尝试执行这一命令，系统将汇报不允许移除根目录。\[3\] 不久之后，相同的功能引入了[FreeBSD](../Page/FreeBSD.md "wikilink")版本的`rm`实用工具。如果没有指定`--no-preserve-root`参数，[GNU](../Page/GNU.md "wikilink") `rm` 将拒绝执行`rm -rf /`。这一参数自2006年发布的[GNU核心工具组](../Page/GNU核心工具组.md "wikilink")（版本 6.4）以来成为了默认设置。

## 用户确认

系统管理员、设计人员、用户常通过创建别名或是使用函数的方法覆盖rm命令，试图避免意外删除文件：

``` bash
alias rm="rm -i"
rm () { /bin/rm -i "$@" ; }
```

这样处理使`rm`对每个要删除的文件进行逐个操作确认，用户通过输入"Y"或"N"键来确认或否认。但是，这导致用户粗心地在`rm`命令中使用通配符，也导致用户会交替地按压`y`和回车来不断确认删除，而这样做容易导致用户确认删除本想保留的文件。一些用户甚至使用"` yes | rm  `*`files`*"命令快速确认文件删除。

一种折衷的方法允许用户只进行一次确认，鼓励适当使用通配符，更容易验证将要删除的文件列表，实现的参考代码如下：

``` bash
if [ -n "$PS1" ] ; then
  rm ()
  {
      ls -FCsd "$@"
      echo 'remove[ny]? ' | tr -d '\012' ; read
      if [ "_$REPLY" = "_y" ]; then
          /bin/rm -rf "$@"
      else
          echo '(cancelled)'
      fi
  }
fi
```

需要注意的是这一函数不该制成shell脚本，这样可能导致其在搜索路径中先于原始的`rm`命令。 其也不该在非交互的shell中使用，因为这一脚本可能会中断批处理任务。将这一定义封装在`if [ -n "$PS1" ] ; then .... ; fi`中将避免这一错误做法。

也有一些第三方封装可以预防重要文件被意外删除，例如"safe-rm"。\[4\]

## 相关条目

  - [srm (Unix)](https://zh.wikipedia.org/wiki/srm_\(Unix\) "wikilink"): Unix安全删除工具
  - [unlink()](https://zh.wikipedia.org/wiki/unlink_\(Unix\) "wikilink"): 这一[用户空间程序实现其删除功能所使用的底层](https://zh.wikipedia.org/wiki/用户空间 "wikilink")[系统调用](https://zh.wikipedia.org/wiki/系统调用 "wikilink")
  - [del (command)](https://zh.wikipedia.org/wiki/del_\(command\) "wikilink")
  - [deltree](https://zh.wikipedia.org/wiki/deltree "wikilink")

## 参考资料

[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink") [Category:File_deletion](https://zh.wikipedia.org/wiki/Category:File_deletion "wikilink") [Category:Unix](https://zh.wikipedia.org/wiki/Category:Unix "wikilink")

1.  <http://www.faqs.org/faqs/unix-faq/faq/part3/section-6.html>
2.
3.  [Meddling in the Affairs of Wizards](http://blogs.sun.com/jbeck/date/20041001#rm_rf_protection)
4.  <http://www.safe-rm.org.nz>