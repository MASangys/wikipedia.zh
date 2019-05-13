**gridMathematica** 是 [Wolfram
Research](https://zh.wikipedia.org/wiki/Wolfram_Research "wikilink")
公司推出的一款软件产品，它的主要特点是比该公司的主打产品
[Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink")
具有更全面更强大的并行计算功能。\[1\]

## 功能

在 [Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink")
的基础导航，gridMathematica 增加了每次能够处理的并行进程数目。每个并行进程分配了额外的 CPU 来帮助处理每个任务。
每个标准的 Mathematica 许可证允许一次至多运行四个并行任务。通过增加正在处理的任务的数目，某些类型的问题可以用较短的时间解决。
\[2\]

标准 [Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink")
包含一个前端，前端提供了用户界面和控制进程（控制内核），在控制内核中，每个计算任务由至多四个进程处理。Mathematica
调用执行计算 "计算内核" 的进程. gridMathematica 允许使用额外的进程(进程内核)。

gridMathematica 有两种许可证选项可以选择。在 "gridMathematica Local" 许可证下，用户可以在单机上使用至多
8 个计算内核。 "gridMathematica Server" 选项为用户提供了在多台机器上使用至多 16 个计算内核的功能。

[Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink")
管理进程之间的通讯，比如排队、虚拟共享内存和故障恢复。\[3\]

一旦用户购买了许可证，gridMathematica
可用于更大的网格系统。计算进程可以位于单个多进程机器，或者在远程网络上分配处理。\[4\]\[5\]
可以使用 64 位平台。\[6\] 内核和前端使用
[Mathlink](https://web.archive.org/web/20071008145340/http://www.wolfram.com/solutions/mathlink/mathlink.html)
界面进行通讯，这是一种专门用于其他外部程序与 Mathematica 之间进行通讯的界面。 通讯过程通过
[TCP/IP](https://zh.wikipedia.org/wiki/TCP/IP "wikilink") \[7\] 并且使用
[SSH](../Page/Secure_Shell.md "wikilink") 或者 RSH 进行认证。

## 历史

在 Mathematica 7 发布之前，gridMathematica 和目前已经不发布的 Mathematica Personal Grid
Edition 是 Mathematica 唯一提供并行计算的功能。它们作为独立产品推出，包含前端（Front
End）、控制内核（Control Kernels）以及由 Roman Maeder 开发的 Parallel
Computing Toolkit，Roman Maeder 是 Mathematica 的最初开发者之一。 在 Mathematica 7
发布后，并行程序工具重新进行设计，并且包括在 Mathematica 中，\[8\]，而 gridMathematica
经过重新设计，可以直接通过 Mathematica 使用。\[9\]

## 参见

  - [Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink")
  - [超级计算机](../Page/超级计算机.md "wikilink")

## 参考资料

## 外部链接

  - [An interview with Schoeller Porter, Senior Software Engineer at
    Wolfram
    Research](http://www.winhpc.org/stories.php?story=06/10/30/0934868)
    by Ken Farmer, WinHPC.org, Monday October 30, 2006.
  - [Exploration of the capabilities of gridMathematica on the Altix
    ia64 HPC
    machines](https://web.archive.org/web/20070903081944/http://www.vislab.uq.edu.au/research/hpc_altix/gridmathematica/),
    [University of
    Queensland](https://zh.wikipedia.org/wiki/University_of_Queensland "wikilink")
    VisLab.
  - [Special Projects: An Evaluation of Modified Newtonian Dynamics by
    Simulation in a Parallel Computing
    Environment](http://physunserver.furman.edu/projects/index.html),
    Furman University Physics Department.
  - [Getting on the
    Grid](https://web.archive.org/web/20120207011247/http://www.memagazine.org/contents/current/features/ongrid/ongrid.html),
    by Jean Thilmany, Mechanical Engineering, 2003.
  - [a real-time monitor of gridMathematica's usage on the TSUBAME
    supercomputer in
    Japan](https://web.archive.org/web/20080320081117/http://ganglia.cc.titech.ac.jp/batch/?gw=fwd&gs=TGC%20--%20TSUBAME%20Grid%20Cluster%40http%3A%2F%2Fganglia.cc.titech.ac.jp%2F)
  - [online recorded
    seminar](https://web.archive.org/web/20120111232743/http://www.wolfram.com/services/education/seminars/s17.html)
  - [King's College London Centre for Financial Grid
    Computing](https://web.archive.org/web/20081210100054/http://www.mth.kcl.ac.uk/~shaww/web_page/grid/)

[Category:沃尔夫勒姆研究公司](https://zh.wikipedia.org/wiki/Category:沃尔夫勒姆研究公司 "wikilink")
[Category:并发计算](https://zh.wikipedia.org/wiki/Category:并发计算 "wikilink")
[Category:苹果设计奖获奖作品](https://zh.wikipedia.org/wiki/Category:苹果设计奖获奖作品 "wikilink")

1.  [Wolfram Research introduces
    gridMathematica 7](http://www.mactech.com/news/?p=1011816) MacTech
2.  [Felix Grant tests out some of Wolfram's spin-off products, which
    aim to push the company into new
    markets](http://www.scientific-computing.com/scwmayjun03review_wolfram.html),
    科学计算世界, 2003年6月.
3.  [gridMathematica offers parallel computing
    solution](http://www.macworld.com/news/2002/11/20/mathematica/index.php),
    Dennis Sellers, MacWorld, November 20, 2002
4.  [Proceedings of the 2006 ACM/IEEE
    超级计算会议](http://portal.acm.org/citation.cfm?id=1188720)
    Roman Maeder
5.  [Wolfram Research Announces the release
    ofgridMathematica](http://www.gridtoday.com/02/1202/100816.html)
    GRIDToday 2002年12月
6.  [gridMathematica 2.2](http://www.scientific-computing.com/products/product_details.php?product_id=191)
    科学计算时间 2007年9月
7.  [GridMathematika / Benchmark
    Tests](http://gks06.fzk.de/slides/GridMathematica_Additive.pdf)  by
    M.Karbalai, H.Sch?nau, 2006年9月14日.
8.  [Mathematica 7: A
    Review](http://www.ddj.com/hpc-high-performance-computing/212201141)
    Mike Riley, Dr Dobb's
9.  [gridMathematica 7
    增强了并行计算功能](http://www.macnn.com/articles/09/03/18/gridmathematica.7.ships/)
    MacNN