> 本文内容由[IEFBR14](https://zh.wikipedia.org/wiki/IEFBR14)转换而来。


**IEFBR14**是[IBM](../Page/IBM.md "wikilink")[大型计算机](../Page/大型计算机.md "wikilink")的[应用程序](../Page/应用程序.md "wikilink")。运行于的所有后继操作系统中，包括等。该程序是一个仅会返回[返回码](https://zh.wikipedia.org/wiki/退出状态 "wikilink")0的占位程序，类似于[类Unix系统](../Page/类Unix系统.md "wikilink")中的[true命令](../Page/True和false_\(命令\).md "wikilink")。\[1\]

## 作用

### 分配文件空间（也称为初始化）

在[OS/360及其派生的大型机操作系统中](https://zh.wikipedia.org/wiki/Os/360_and_successors "wikilink")，大多数程序并不会直接指定文件（通常称为数据集），而是在调用程序的（JCL）语句中间接地引用它们。这些数据定义（或“DD”）语句中可以包括一个“DISPOSITION”（DISP =…）参数，以表明该文件应该被怎样管理——是要创建一个新文件或重用一个旧的文件；以及文件在使用完毕后是应该删除还是保留等等。

尽管DD语句可以很方便地用来创建或者删除文件，但此操作的前提是必须要运行一个程序。因为作业管理系统的特性，它要求作业的发起人必须执行一个程序，哪怕这个程序只是执行一条[空指令](../Page/NOP.md "wikilink")。这个条件促生了IEFBR14的产生。在JCL中所运行的程序并不一定要通过使用这个文件，来达到创建或删除文件的目的，因为DD DISP=...声明完成了这一系列工作。因此，就需要一个简单的，什么都不做的程序，来填补被执行程序的这个角色。因此IEFBR14可以用于通过JCL来创建或删除一个数据集。

### 回收（也称为终止）

另一个需要IEFBR14的原因是，由于作业的JCL出现错误，或者作业以错误的状态结束，导致某些设备（例如磁带或磁盘设备）在上一个作业结束后，仍然保留了被挂载的状态。在这种情况下，系统操作员经常需要卸载这些设备。有一个名为DEALLOC的started task往往是为此目的而提供的。

只需要在系统控制台中输入命令：

`S DEALLOC`

就可以运行这个任务。然而，由于作业管理的设计，DEALLOC必须实际存在于系统的程序库SYS1.PROCLIB中，以免启动命令失败。

同时，所有这类started task必须是单个作业步。作业管理系统的“started task 控制器”（STC）模块仅接受只有一个作业步的作业，而当它遇到一个多步的作业时，它就会执行失败，并且不会抛出任何异常。

`// STEP01 EXEC PGM=IEFBR14`

### 解析和验证

至少在z/OS上，分支执行另一个程序会导致调用程序被评估为语法错误。

## 命名

“IEF”的名称来源于如下命名规则，即由IBM提供的程序，都会按照其功能或者创作者而分类，每组程序共享一个三个字符组成的前缀。在OS/360中，第一个字母是几乎总是“I”。同时，由作业管理模块（包括IEFBR14）所产生的程序，都使用“IEF”这个前缀。其他常见的前缀包括数据集实用程序的“IEB”，系统实用程序的“IEH”，和程序链接和加载的“IEW”。其他主要组件则使用“IEA”作为操作系统主管程序的前缀，以及“IEC”作为输入/输出主管程序的前缀。

如下解释，“BR 14”是程序的基本功能，就是简单地返回到操作系统。这部分程序的名字往往是能辅助记忆的——例如，IEBUPDTE数据集实用程序的程序名中，IEB的含义为数据集实用程序，用来更新(UPDTE)源代码文件，以及IEHINITT系统实用程序的名称中，IEH代表这是一个系统工具，用来初始化(INIT)磁带的标签(T)。

就如下面“使用”部分所解释的，名字中的“BR14”来自于IBM汇编语言的分支指令，含义为“分支到寄存器14（所存储的地址）”，按照惯例，该操作的含义为“从子程序中返回”。很多OS/360的早期用户都很熟悉IBM汇编语言，所以他们可以马上意识到这个含义。

## 使用

示例JCL：

``` jcl
//IEFBR14  JOB  ACCT,'DELETE DATASET',MSGCLASS=J,CLASS=A
//STEP0001 EXEC PGM=IEFBR14
//DELDD    DD DSN=xxxxx.yyyyy.zzzzz,
//            DISP=(MOD,DELETE,DELETE),UNIT=DASD
```

创建一个分区数据集：

``` jcl
//TZZZ84R  JOB NOTIFY=&SYSUID,MSGCLASS=X
//STEP01    EXEC PGM=IEFBR14
//DD1       DD DSN=TKOL084.DEMO,DISP=(NEW,CATLG,DELETE),
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=80,DSORG=PO),
//             SPACE=(TRK,(1,1,1),RLSE),
//             UNIT=SYSDA
```

## 实现

IEFBR14最初只是由一个“分支到寄存器14”指令组成。该指令在IBM汇编语言中使用的助记符是BR,因此得名：IEF BR 14。BR 14相当于BCR 15, 14。BR是指令BCR 15的伪指令。系统汇编程序接受很多这样子的伪指令，其逻辑上等同于原来的System/360指令。BR 14的典型实例是BCR 15, 14。

OS/360及其后续系统的连接规范规定，当程序被调用的时候，寄存器14保存程序结束后控制权应交回到的地址，寄存器15保存被调用程序在内存中的地址；在结束时，程序从寄存器15中读取返回值，然后分支到寄存器14所指向的地址。但是在编写初期，IEFBR14的这些特性并未被留意，因为其最初只是用作一个无用的控制段，以返回到调用者，而不是作为一个可执行的模块。

最初版本的IEFBR14并没有修改寄存器15的值，因为其原型程序只是在Sysgen（系统生成）时期生成的一个程序中的一个占位符，并不是一个可执行的程序。IEFBR14曾经只会被一个等同于BALR 14,15的功能调用，所以在寄存器15中的返回值总不为0。随后加入了一个用来清除返回码的指令，这样就可以使其返回一个指定好的返回码——0。早期的程序员并没有使用所有的JCL参数，所以在当时，返回一个不确定的返回码并非什么问题。然而，随着程序员们使用的参数越来越多，返回一个确定的返回码这一问题就变得重要了起来。这一改版的IEFBR14也并没有影响到其最初充当占位符的作用。

修改过的程序的机器码如下：

`        SR    R15,R15  put zero completion code into register 15`
`        BR    R14      branch to the address in register 14 (which is actually an SVC 3 instruction in the Communications Vector Table)`

简明起见，将BR指令排除，机器码如下：

`        SR    R15,R15  put zero completion code into register 15`
`        SVC   3        issue EXIT SVC to terminate the jobstep`

这么做很有道理，因为OS/360的Initiator在执行初期会使用ATTACH宏指令（SVC 42）来将作业步“连接”起来，而“解除连接”的指令（一个Type 2 SVC指令）必须是一个辅助性指令，即EXIT宏（它必定是一个Type 1 SVC指令 SVC 3）。

## 参阅

  - [/bin/true](../Page/True和false_\(命令\).md "wikilink")——UNIX系统中同等的“什么也不做”的程序

## 参考文献

### 腳註

<references />

### 其他

  - Trombetta, Michael & Finkelstein Sue Carolyn (1985). "OS JCL and utilities". Addison Wesley. page 152.  

[Category:IBM軟體](https://zh.wikipedia.org/wiki/Category:IBM軟體 "wikilink")

1.