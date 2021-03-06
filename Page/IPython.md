> 本文内容由[IPython](https://zh.wikipedia.org/wiki/IPython)转换而来。


**IPython**是一种基于Python的交互式解释器。相较于原生的Python Shell，IPython提供了更为强大的编辑和交互功能。

## 魔法命令

  - %bg function把function放到后台执行，例如: %bg myfunc(x, y,z=1)，之后可以用jobs将其结果取回。myvar = jobs.result(5) 或 myvar =jobs\[5\].result。另外，jobs.status() 可以查看现有任务的状态。
  - %ed或%edit编辑一个文件并执行，如果只编辑不执行，用 ed -x filename 即可。
  - %env显示环境变量。
  - %hist或%history显示历史记录。
  - %macro name n1-n2 n3-n4 ... n5 .. n6 ...创建一个名称为name的宏，执行name就是执行n1-n2 n3-n4 ... n5 .. n6 ...这些代码。
  - %pwd显示当前目录
  - %pycat filename用语法高亮显示一个python文件（不用加.py后缀名）。
  - %save filename n1-n2 n3-n4 ... n5 .. n6 ...将执行过多代码保存为文件\* %run命令运行脚本。
  - %timeit命令快速测量代码运行时间。
  - %debug命令在异常点启动调试器。
  - %pdb命令来激活IPython调试器，这样，每当异常抛出时，调试器就会自动运行。
  - %pylab命令可以使Numpy和matplotlib中的科学计算功能生效。
  - 用 \! 表示执行shell命令，用$将python的变量转化成shell变量。

## 并行计算

IPython拥有一套复杂的并行和分配计算结构。IPython使得各种并行应用能够交互式的被开发、执行、调试和监控。因此IPython中的“I”代表“交互”。

  - [单指令流多数据流](https://zh.wikipedia.org/wiki/单指令流多数据流 "wikilink")
  - [多指令流多数据流](https://zh.wikipedia.org/wiki/多指令流多数据流 "wikilink")
  - [消息传递接口](https://zh.wikipedia.org/wiki/消息传递接口 "wikilink")
  - [任务并行](../Page/任务并行.md "wikilink")
  - [数据并行](https://zh.wikipedia.org/wiki/数据并行 "wikilink")

## 參考資料

## 另見

  - [Jupyter项目](../Page/Jupyter项目.md "wikilink")

[Category:命令壳层](https://zh.wikipedia.org/wiki/Category:命令壳层 "wikilink") [Category:用Python編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Python編程的自由軟體 "wikilink")