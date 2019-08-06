**V-by-One HS**是由日本[赛恩电子公司](https://zh.wikipedia.org/wiki/赛恩电子公司 "wikilink")（THine Electornics）开发的适用于[平板显示器的信号传输](https://zh.wikipedia.org/wiki/平板显示器 "wikilink")[接口标准](https://zh.wikipedia.org/wiki/接口 "wikilink")。目前，广泛应用在[多功能打印机等](https://zh.wikipedia.org/wiki/多功能打印机 "wikilink")[办公设备](https://zh.wikipedia.org/wiki/办公设备 "wikilink")、车载娱乐设备、[机器人](../Page/机器人.md "wikilink")、安防系统等领域。

以往的电视内部配线，传输图像信号都是采用[LVDS标准](https://zh.wikipedia.org/wiki/LVDS "wikilink")。然而，随着电视画面向着高[分辨率](../Page/分辨率.md "wikilink")和高[色彩深度](../Page/色彩深度.md "wikilink")的发展，传输速度的高速化以及传输线之间信号的时滞问题愈发显著。V-by-One HS除了包含SerDes技术以外，还采用了时钟信号恢复等技术，使得每对线的最大传输速度达到了3.75Gbp，并解决了时滞问题，同时还降低了[EMI](../Page/EMI.md "wikilink")干扰及功耗。此外，由于传输信号对数的减少，使得配线及连接器的用量相应减少进而可以实现整体成本的降低。

## 概述

  - V-by-One HS的开发目的，是为了替代大尺寸[液晶显示器](../Page/液晶显示器.md "wikilink")图像输入信号[VESA标准规格的LVDS技术](https://zh.wikipedia.org/wiki/VESA "wikilink")。
  - 由于导入了均衡器功能，使得信号传输品质优于以往的LVDS技术。
  - 由于采用了时钟信号恢复技术，解决了在LVDS方案下日趋显著化的配线时滞问题。
  - 取消了在以往的LVDS标准中必不可少的时钟信号传输配线（固定频率的传送），降低了EMI干扰。
  - 信号传输速度最大可达到3.75Gbps，减少了配线和连接器使用量，可实现总成本的降低和节约空间。
  - 由于传输速度可调节，因此与固定频率的信号传输方式相比，降低了设备耗电量。
  - 串行信号传输速度：600Mbps ～ 3.75Gbps。
  - 在原先的LVDS方案上不必进行很大的设计改动，便可无缝过渡到V-by-One HS。
  - 日本赛恩电子公司（THine）已经公开了V-by-One HS规格，其已成为一个开放标准。

## 开发背景

[液晶](../Page/液晶.md "wikilink")显示与[显像管显示不同](https://zh.wikipedia.org/wiki/显像管 "wikilink")，其每个用于表示[像素](../Page/像素.md "wikilink")的信号都必须是数字信号。液晶显示开始应用于笔记本电脑时，当初的图像信号是以并行方式传输的。即使只是为了传输18位色阶的图像信号也需要RGB三色各6路，外加控制信号3路及时钟信号，共计22根信号线。这样就产生了配线空间以及时滞调整困难等诸多问题。

为了解决这些问题，作为专门面向液晶显示[接口技术](https://zh.wikipedia.org/wiki/接口 "wikilink")，LVDS应运而生。LVDS是以TIA/EIA-644标准所规定的差分传输方式，由于可以高速传输，液晶显示的图像信号即可以串行信号进行传输。由于在导入这一技术时是以18位色阶显示为主流，RGB三色各6位以及控制信号3位共21位信号，因此提出了将此21位信号分配至3个通道，每条通道分7位信号，再加上1条通道传输时钟信号，总共使用4对配线进行串行数据传输的方案。也就是说，在[并行通信中所必须的](https://zh.wikipedia.org/wiki/并行通信 "wikilink")22根配线，如果使用[串行通信](../Page/串行通信.md "wikilink")的话只需要8根就够了。这种方式被视频相关设备行业的标准制定组织VESA当做标准规格所采用，从而LVDS技术作为面向液晶显示的接口解决方案得到了广泛的普及。

之后，随着液晶显示向着高分辨率高色阶方向发展，以及倍速驱动技术（为了解决液晶显示器响应缓慢问题）的导入，使得需要输入液晶显示器的图像信号量越来越庞大。

其结果是，以全高清分辨率（1920\*1080）下10位色阶的倍速显示屏为例，即使采用LVDS技术也需要24对共48根配线。此外由于传输时钟的高速化，还必须要调整数百皮秒级别的时滞。此外，由于以往的LVDS的方案中必须用固定的时钟频率进行传输，频谱集中，因此为了抑制其对无线网络等产生的EMI干扰也很困难。

再加上以LVDS标准，从GND只能传送1.2V电压的电气信号。而随着LSI向着细微化方向发展，这样的电压标准会给[LSI设计带来很大的限制](https://zh.wikipedia.org/wiki/LSI "wikilink")。在这样的情况下，包括[DVI](../Page/DVI.md "wikilink")、[HDMI](../Page/HDMI.md "wikilink")、[DisplayPort](../Page/DisplayPort.md "wikilink")等多种多样的接口方案被提出并且实用化。

DVI和HDMI都带有时滞调整功能，而且HDMI中还采用了[HDCP](../Page/HDCP.md "wikilink")技术用于内容保护功能，因此作为设备间的图像信号传输方案得以广泛普及。然而DVI和HDMI在安装时需要支付专利费用，而且将其用作设备内部图像信号传输，则会提高功耗大，因而没有得到应用。

Display Port是VESA为了替代LVDS而推出的规格，其今后的普及备受期待。它在传输方式上采用类似于[PCI Express的偏压原理](../Page/PCI_Express.md "wikilink")，降低了在LSI设计上的障碍。然而，与HDMI同样，由于考虑到设备间的信号传输的问题而采用了HDCP技术，使其在作为设备内部信号传输方案时有可能存在功耗问题。此外，Display Port的传输速度是固定的，对于存在着各种各样时钟频率的图像信号来说，低频率会产生很大的浪费，而且在接收端必须对时钟信号进行再生。由于以上这些理由，从LVDS向Display Port的过渡还有很多课题需要解决。

基于上述背景，日本赛恩电子公司（THine）进行了V-by-One HS的开发。也就是说，通过导入了均衡器功能，从而实现比以往的LVDS技术数据传输质量更高，传输速度更快（最大达到一对线3.75Gbps）。而且由于采用了时钟信号恢复技术，解决了以往在LVDS方案下日趋明显化的配线时滞问题。此外，取消了在LVDS标准中必不可少的时钟信号传输配线（固定频率的传送），从而降低了EMI干扰。

传输速度的高速化，可以带来配线和连接器用量的减少，总体成本下降，节省空间等一系列好处。比如对于UD面板（3840\*2160），使用LVDS方案至少需要96对配线，而使用V-by-One HS只需要16对配线便可完成数据传输。而且由于传输速度可变，原先采用LVDS技术的设计不需要经过很大的改动便可无缝地过渡到V-by-One HS上来。此外，日本赛恩电子公司（THine）已经将技术规格公开，V-by-One HS已成为了一个开放标准。

## 相关内容

  - [低电压差分信号](https://zh.wikipedia.org/wiki/低电压差分信号 "wikilink")
  - [HDMI](../Page/HDMI.md "wikilink")
  - [DisplayPort](../Page/DisplayPort.md "wikilink")

## 参考链接

[V-by-One®HS Standard](https://archive.is/20130702173803/http://www2.thine.co.jp/scn/products/V-by-One_HS/)

[Category:數碼顯示接口](https://zh.wikipedia.org/wiki/Category:數碼顯示接口 "wikilink")