**`chmod`**是一条在[Unix系统中用于控制用户对文件的权限的命令](https://zh.wikipedia.org/wiki/Unix "wikilink")（**ch**ange **mod**e单词前缀的组合）和函数。只有文件所有者和超级用户可以修改文件或目录的权限。可以使用绝对模式（八进制数字模式），符号模式指定文件的权限。

## 用法

`chmod`使用语法舉例：

`$ chmod [`*`options`*`] `*`mode`*`[,`*`mode`*`] `*`file1`*` [`*`file2`*` ...]`

使用ls命令的查看文件或目录的属性

`$ ls -l `*`file`*

### 八进制语法

`chmod`命令可以使用八进制数来指定权限。文件或目录的权限位是由9个权限位来控制，每三位为一组，它们分别是文件所有者（User）的读、写、执行，用户组（Group）的读、写、执行以及其它用户（Other）的读、写、执行。历史上，文件权限被放在一个比特掩码中，掩码中指定的比特位设为1，用来说明一个类具有相应的优先级。

`chmod`的八进制语法的数字说明：

r 4

w 2

x 1

\- 0

所有者的权限用数字表达：属主的那三个权限位的数字加起来的总和。如rwx ，也就是4+2+1 ，应该是7。

用户组的权限用数字表达：属组的那个权限位数字的相加的总和。如rw- ，也就是4+2+0 ，应该是6。

其它用户的权限数字表达：其它用户权限位的数字相加的总和。如r-x ，也就是4+0+1 ，应该是5。

例如修改文件myfile的权限

`$ chmod 664 myfile`
`$ ls -l myfile`
`-rw-rw-r--  1   57 Jul  3 10:13  myfile`

### 符号模式

使用符号模式可以设置多个项目：who（用户类型），operator（操作符）和permission（权限）,每个项目的设置可以用逗号隔开。 命令chmod将修改who指定的用户类型对文件的访问权限，用户类型由一个或者多个字母在who的位置来说明,如who的符号模式表所示:

| who | 用户类型   | 说明              |
| --- | ------ | --------------- |
| `u` | user   | 文件所有者           |
| `g` | group  | 文件所有者所在组        |
| `o` | others | 所有其他用户          |
| `a` | all    | 所用用户, 相当于 *ugo* |

operator的符号模式表:

| Operator | 说明                          |
| -------- | --------------------------- |
| `+`      | 为指定的用户类型增加权限                |
| `-`      | 去除指定用户类型的权限                 |
| `=`      | 设置指定用户权限的设置，即将用户类型的所有权限重新设置 |

permission的符号模式表:

| 模式  | 名字         | 说明                                          |
| --- | ---------- | ------------------------------------------- |
| `r` | 读          | 设置为可读权限                                     |
| `w` | 写          | 设置为可写权限                                     |
| `x` | 执行权限       | 设置为可执行权限                                    |
| `X` | 特殊执行权限     | 只有当文件为目录文件，或者其他类型的用户有可执行权限时，才将文件权限设置可执行     |
| `s` | setuid/gid | 当文件被执行时，根据who参数指定的用户类型设置文件的setuid或者setgid权限 |
| `t` | 粘贴位        | 设置粘贴位，只有超级用户可以设置该位，只有文件所有者u可以使用该位           |

例子：

chmod u+x filename 在这里，u的意思是user指用户本人；+的意思是增加权限；x是指可执行文件

### 符号模式实例

对目录的所有者**u**和关联组**g**增加读**r**和写**w**权限:

`$ `**`chmod``   ``ug+rw``   ``mydir`**
`$ ls -ld mydir`
`drw-rw----   2 unixguy  uguys  96 Dec 8 12:53 mydir`

对文件的所有用户**ugo**删除写**w**权限:

`$ `**`chmod``   ``a-w``   ``myfile`**
`$ ls -l myfile`
`-r-xr-xr-x   2 unixguy  uguys 96 Dec 8 12:53 myfile`

对`mydir`的所有者**u**和关联组**g**设置成读**r**和可执行**x**权限:

`$ `**`chmod``   ``ug=rx``   ``mydir`**
`$ ls -ld mydir`
`d`**`r-xr-x---`**`   2 unixguy  uguys 96 Dec 8 12:53 mydir`

### 特殊模式

  -
    *参看: [文件系统权限](https://zh.wikipedia.org/wiki/文件系统权限 "wikilink")*

### 命令使用实例

| `命令`                                       | 说明                                                                                  |
| ------------------------------------------ | ----------------------------------------------------------------------------------- |
| ` chmod a+r  `*`file`*                     | 给file的所有用户增加读权限                                                                     |
| ` chmod a-x  `*`file`*                     | 删除file的所有用户的执行权限                                                                    |
| ` chmod a+rw  `*`file`*                    | 给file的所有用户增加读写权限                                                                    |
| ` chmod +rwx  `*`file`*                    | 给file的所有用户增加读写执行权限                                                                  |
| ` chmod u=rw,go=  `*`file`*                | 对file的所有者设置读写权限，清空该用户组和其他用户对file的所有权限（空格代表无权限）                                      |
| ` chmod -R u+r,go-r  `*`docs`*             | 对目录docs和其子目录层次结构中的所有文件给用户增加读权限，而对用户组和其他用户删除读权限                                      |
| ` chmod 664  `*`file`*                     | 对file的所有者和用户组设置读写权限, 为其其他用户设置读权限                                                    |
| ` chmod 0755  `*`file`*                    | 相当于`u=rwx (4+2+1),go=rx (4+1 & 4+1)`。`0` 没有特殊模式。                                    |
| ` chmod 4755  `*`file`*                    | `4`设置了设置[用户ID](../Page/用户ID.md "wikilink")位，剩下的相当于 u=rwx (4+2+1),go=rx (4+1 & 4+1)。 |
| `find path/ -type d -exec chmod a-x {} \;` | 删除可执行权限对path/以及其所有的目录（不包括文件）的所有用户，使用‘-type f'匹配文件                                   |
| `find path/ -type d -exec chmod a+x {} \;` | 允许所有用户浏览或通过目录path/                                                                  |

## 函数说明

chmod函数C语言的定义:

`int chmod(const char *path, mode_t mode);`

函数使用`mode_t`类型的参数，使用其比特位组成各种模式:

| 模式                  | 八进制   | 含义                 |
| ------------------- | ----- | ------------------ |
| S_ISUID            | 04000 | 执行时设置用户ID,setuid权限 |
| S_ISGID            | 02000 | 执行时设置组ID，setgid权限  |
| S_ISVTX            | 01000 | 粘贴位                |
| S_IRUSR, S_IREAD  | 00400 | 所有者读               |
| S_IWUSR, S_IWRITE | 00200 | 所有者写               |
| S_IXUSR, S_IEXEC  | 00100 | 所有者执行              |
| S_IRGRP            | 00040 | 由组读                |
| S_IWGRP            | 00020 | 由组写                |
| S_IXGRP            | 00010 | 由组执行               |
| S_IROTH            | 00004 | 其他人读               |
| S_IWOTH            | 00002 | 其他人写               |
| S_IXOTH            | 00001 | 其他人执行              |

模式进行按位或运算对应期望的权限。

函数检验的错误以及相应的错误码在[man page有定义](https://zh.wikipedia.org/wiki/man_page "wikilink")。

## 参考文献

  - Linux命令，编辑器与Shell编程，清华大学出版社，ISBN 987-7-302-13944-7

## 外部链接

  - [Linux 文件和目录的属性](https://web.archive.org/web/20160711022056/http://www.linuxsir.org/main/?q=node%2F196#4)
  - [`chmod`](http://www.gnu.org/software/coreutils/manual/html_node/chmod-invocation.html) — manual page from [GNU](../Page/GNU.md "wikilink") [coreutils](https://zh.wikipedia.org/wiki/coreutils "wikilink").
  - [GNU "Setting Permissions" manual](http://www.gnu.org/software/coreutils/manual/html_node/Setting-Permissions.html)
  - [Solaris 9 chmod man page](https://web.archive.org/web/20100926051106/http://docs.sun.com/app/docs/doc/817-0689/6mgfkpckn?q=chmod&a=view)
  - [Mac OS X chmod man page](http://www.hmug.org/man/1/chmod.php), which also supports [access control lists](https://zh.wikipedia.org/wiki/access_control_list "wikilink").
  - [CHMOD-Win 3.0](http://neosmart.net/dl.php?id=4) — Freeware Windows' ACL ←→ CHMOD converter.
  - [What CHMOD? File Permissions Calculator](https://web.archive.org/web/20051201140107/http://www.classical-webdesigns.co.uk/resources/whatchmod.html), web-based CHMOD calculator.
  - [Beginners tutorial with on-line "live" example](http://catcode.com/teachmod/index.html)
  - [chmod examples](http://www.examplenow.com/chmod) Searchable examples

[Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink") [Category:Unix文件系统相关软件](https://zh.wikipedia.org/wiki/Category:Unix文件系统相关软件 "wikilink") [Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")