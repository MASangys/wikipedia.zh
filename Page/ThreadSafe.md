ThreadSafe是一个源代码分析工具，用于识别与Java代码库中的并发相关联的应用风险和安全漏洞。\[1\]\[2\]\[3\]\[4\]
ThreadSafe被各大投资银行和其他企业所使用，以识别和避免运行在复杂的环境中的并发应用软件的故障。\[5\]\[6\]\[7\]
这些是最隐蔽的软件缺陷，因为他们不能可靠地通过试验进行检测。\[8\]

## 特点

ThreadSafe检测严重的Java并发缺陷，有助于提高代码并消除风险：\[9\]\[10\]\[11\]

  - [竞态条件](https://zh.wikipedia.org/wiki/竞态条件 "wikilink") -
    从而导致不正确或不可预知的行为，很难在调试器中重现。
  - [死锁](../Page/死锁.md "wikilink")\[12\] - 由等待共享资源的线程之间的循环等待引起。
  - 不可预知的结果 - 由于不正确处理并发集合，不当的错误处理，或混合对象同步。
  - 性能瓶颈 - 由于不正确的API使用，多余的同步，以及使用不必要的共享可变状态引起。

ThreadSafe紧密集成[Eclipse](../Page/Eclipse.md "wikilink")软件开发环境，和[SonarQube](../Page/SonarQube.md "wikilink")软件质量管理平台。在开发环境中提供上下文信息，以帮助开发人员直接在代码中调查和解决并发问题。\[13\]\[14\]\[15\]
有一个命令行版本提供给非Eclipse的集成开发环境用户和构建过程集成。

## 检查标准的遵守情况

ThreadSafe检测到违反[甲骨文CERT安全编码标准的Java](http://www.informit.com/store/product.aspx?isbn=9780321803955)。\[16\]
中许多并发相关规则的情况。

## 共同销售的产品

ThreadSafe作为一个完全集成的插件包含于GrammaTech的CodeSonar程序分析工具套件。\[17\]

## 参考文献

## 外部链接

  - [ThreadSafe的页面](http://www.contemplateltd.com/threadsafe)

## 参见

  -
[Category:静态代码分析工具](https://zh.wikipedia.org/wiki/Category:静态代码分析工具 "wikilink")

1.

2.

3.

4.

5.
6.
7.

8.

9.
10.
11.
12.

13.
14.
15.
16.

17.