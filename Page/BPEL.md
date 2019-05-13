**BPEL**（發音為'bipple'或'bee-pell'）是的縮寫，意为**业务过程执行语言**，是一种基于[XML的](../Page/XML.md "wikilink")，用来描写业务过程的编程语言，被描写的业务过程的每个单一步骤则由[Web服务来实现](../Page/Web服务.md "wikilink")。

2002年[IBM](../Page/IBM.md "wikilink")、[BEA和](../Page/BEA.md "wikilink")[微软一起开发和引入了](../Page/微软.md "wikilink")作为描写协调Web服务的语言。这个描写的本身也由Web服务提供，并可以当作[Web服务来使用](../Page/Web服务.md "wikilink")。

通过BPEL可以描写一个参加一个Web服务过程的Web服务的[接口](../Page/接口.md "wikilink")，比如信息需要按照怎样的顺序被输入，但是BPEL无法用来描写一个业务过程的调谐。

## 综述

WS-BPEL原名[BPEL4WS](../Page/BPEL4WS.md "wikilink")，是基于[WSDL建立的](../Page/WSDL.md "wikilink")，除WSDL外它还使用[XML模式定义](../Page/XML模式定义.md "wikilink")、[XPath和](../Page/XPath.md "wikilink")[WS-Addressing等标准](../Page/WS-Addressing.md "wikilink")。

BPEL将微软的[Xlang与IBM的](../Page/Xlang.md "wikilink")[WSFL连接到一起](../Page/WSFL.md "wikilink")。

BPEL的目的在于[大规模编程](../Page/大规模编程.md "wikilink")，值得注意的是BPEL不直接支持人机对话，BPEL所描写的过程仅与Web服务通信，而这些Web服务却可以提供与用户的信息交换，但它们不是用户本身。

BPEL本身提供一个基础，在这个基础上可以发展支撑新的应用的“支柱”。比如在BPEL本身的设置中就已经包括了“抽象业务过程”和“可执行业务过程”。其它的支柱包括[BPELJ](../Page/BPELJ.md "wikilink")（[1](http://www-128.ibm.com/developerworks/library/specification/ws-bpelj/)）和[BPEL4People](../Page/BPEL4People.md "wikilink")（[2](http://www-128.ibm.com/developerworks/webservices/library/specification/ws-bpel4people/)）。

BPELJ的目标在于将[Java语言结合到BPEL中来加速其操作过程](../Page/Java.md "wikilink")，缺点是它与Java息息相关，不能没有Java运行。IBM和[SAP公司一起发表了一份名为BPEL](../Page/SAP公司.md "wikilink")4people的白皮书，其目的是将BPEL扩展为能够直接与人交换信息。

BPEL使用块状结构，在定义局部环境时可以定义适用于这个环境范围内的[变数(變數)](../Page/变数\(變數\).md "wikilink")。此外故障处理、补偿处理和事故处理也可以与局部环境相连。

BPEL本身没有定义描写过程模型的图像表达，但是[BPMN标准可以用来描写BPEL的模型](../Page/BPMN.md "wikilink")。

## 抽象的和可执行的过程

可执行的过程是一个可以在一个计算机上执行的过程。抽象过程是用来描述一个过程的反应的。它被用在一个可执行过程的表面来将这个过程的内部行为掩饰起来不让业务对象看到。

## 下级过程

BPEL本身没有对下级过程的定义，因此假如一个主过程结束了的话，要结束其下级过程不总是可行。通过专门使用一个起这个作用的Web服务可以达到这个目的，但这个解决方法在BPEL的标准中并没有提到。

IBM和SAP公司发表了一个名为《WS-BPEL
2.0，下级过程延展》的白皮书（[3](http://www-128.ibm.com/developerworks/library/specification/ws-bpelsubproc/)）来讨论将BPEL延展为可以控制下级过程的问题。

## 发展状况

目前的版本是2.0，这个版本是OASIS于2007年4月11日推出的。

## 语言组成部分

基本活动，这些是最基础的，也就是说不基于其它活动的活动：

  - ——赋值

  - ——同步或非同步地呼叫一个Web服务

  - ——提供一个同步或者非同步呼叫一个Web服务的接口

  - ——提示一个错误，一个故障处理可以处理这样的错误。假如一个错误不被处理的话它最终到达最高层后导致过程的终止

  - ——等候一个时机或者一段时间

  - ——无所事事，比如在一个错误发生后可以不做反应来消除这个错误

结构性活动，这些活动包括其它活动，可以以此建立复杂的过程：

  - ——按照一个序列处理一系列活动

  - ——在一个条件满足的情况下处理一个活动

  - ——按照不同条件处理不同活动

  - ——平行或者按照随意顺序处理活动

  - ——按照外部事件从过程的角度不定值地选择

——使用这个结构可以将一组活动组织在一起作为一个处理单位。通过这个组织方法多个活动可以使用同一个故障处理、事故处理和补偿处理。通过补偿处理BPEL可以处理长时间的处理。

## BPEL引擎

使用BPEL引擎可以执行BPEL程序。

  - **[Oracle BPEL Process
    Manager](https://web.archive.org/web/20060616101148/http://www.oracle.com/technology/products/ias/bpel/index.html)**——甲骨文公司的BPEL标准的执行，带有[JDeveloper和](../Page/JDeveloper.md "wikilink")[Eclipse的图像式模型和调配工具](../Page/Eclipse.md "wikilink")
  - **[Twister](https://web.archive.org/web/20060501171242/http://www.smartcomps.org/twister/)**——一个开放源代码的BPEL标准的执行，支持[面向服务架构和人机界面](../Page/面向服务架构.md "wikilink")，现名
  - **[ActiveBPEL](https://web.archive.org/web/20040715010826/http://www.activebpel.org/)**——一个开放源代码的BPEL4WS
    1.1的执行
  - **[BPWS4J](http://www.alphaworks.ibm.com/tech/bpws4j)**——IBM的BPEL执行
  - **[Apache ODE](http://ode.apache.org/index.html)**——Apache
    ODE引擎（还支持versioning）
  - **[RiftSaw](http://riftsaw.jboss.org/)**——基于ODE，并针对JBOSS
    Server优化的BPEL引擎

## 参见

  - [BPEL4People](../Page/BPEL4People.md "wikilink")

[分类:Web服务规范](../Page/分类:Web服务规范.md "wikilink")

[Category:基于XML的标准](https://zh.wikipedia.org/wiki/Category:基于XML的标准 "wikilink")
[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")
[Category:电子商务](https://zh.wikipedia.org/wiki/Category:电子商务 "wikilink")