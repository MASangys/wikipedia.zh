**LwIP**是[瑞典计算机科学院的一个开源的TCP](../Page/瑞典.md "wikilink")/IP协议栈实现.

LwIP协议栈主要关注的是怎么样减少内存的使用和代码的大小，这样就可以让lwIP适用于资源有限的小型平台例如嵌入式系统。为了简化处理过程和内存要求，lwIP对API进行了裁减，可以不需要复制一些数据。

## 特性

其主要特性如下：

(1)支持多网络接口下的IP转发；

(2)支持ICMP协议；

(3)包括实验性扩展的UDP(用户数据报协议)；

(4)包括阻塞控制、RTT 估算、快速恢复和快速转发的TCP(传输控制协议)；

(5)提供专门的内部回调接口(Raw API)，用于提高应用程序性能；

(6)可选择的Berkeley接口API (在多线程情况下使用) 。

(7)在最新的版本中支持ppp

(8) 新版本中增加了的IP fragment的支持.

(9) 支持DHCP协议,动态分配ip地址.

## 外部链接

  - [Adam Dunkels' initial Lwip
    paper](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.109.1795&rep=rep1&type=pdf)
  - [lwIP development](http://savannah.nongnu.org/projects/lwip/)
  - [lwIP documentation wiki](http://lwip.wikia.com/wiki/LwIP_Wiki)
  - [lwIP functions documentation](http://www.nongnu.org/lwip/)
  - [lwIP former homepage
    (obsolete)](https://web.archive.org/web/20010604054508/http://www.sics.se/~adam/lwip/)

[Category:信息技术](https://zh.wikipedia.org/wiki/Category:信息技术 "wikilink")