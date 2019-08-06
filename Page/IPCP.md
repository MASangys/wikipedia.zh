在[计算机网络](../Page/计算机网络.md "wikilink")中，**网际协议控制协议**（**IPCP**）是一个[网络控制协议](https://zh.wikipedia.org/wiki/网络控制协议 "wikilink")，用来在[点对点协议](../Page/点对点协议.md "wikilink")连接上建立和配置[网际协议](../Page/网际协议.md "wikilink")。IPCP负责在点对点连接的两端配置、使能和去使能IP协议模块。IPCP使用与[链路控制协议相同的报文交换机制](https://zh.wikipedia.org/wiki/链路控制协议 "wikilink")。IPCP报文在PPP达到网络层协议阶段之前不会进行交互，任何在此阶段前收到的IPCP报文都应静默丢弃。

## IP帧

一旦配置完成，链路就可以将IP数据当做PPP帧的载荷进行传输。

<table border="1">

<tr>

<td class="highlight">

PPP首部

</td>

<td class="pkthdr">

IPCP首部

</td>

<td class="pktvarlen">

数据 :::

</td>

</tr>

</table>

**IPCP首部:**

<table border="1">

<tr>

<th>

00

</th>

<th>

01

</th>

<th>

02

</th>

<th>

03

</th>

<th>

04

</th>

<th>

05

</th>

<th>

06

</th>

<th>

07

</th>

<th>

08

</th>

<th>

09

</th>

<th>

10

</th>

<th>

11

</th>

<th>

12

</th>

<th>

13

</th>

<th>

14

</th>

<th>

15

</th>

<th>

16

</th>

<th>

17

</th>

<th>

18

</th>

<th>

19

</th>

<th>

20

</th>

<th>

21

</th>

<th>

22

</th>

<th>

23

</th>

<th>

24

</th>

<th>

25

</th>

<th>

26

</th>

<th>

27

</th>

<th>

28

</th>

<th>

29

</th>

<th>

30

</th>

<th>

31

</th>

</tr>

<tr>

<td class="pkthdr" colspan="8">

代码

</td>

<td class="pkthdr" colspan="8">

标识符

</td>

<td class="pkthdr" colspan="16">

长度

</td>

</tr>

<tr>

<td class="pktvarlen" colspan="32">

数据 :::

</td>

</tr>

</table>

**代码**

8位。
表示LCP包的种类。

<table class="datatbl" border="1" cellspacing="0">

<tr>

<th>

代码

</th>

<th>

描述

</th>

<th>

参考

</th>

</tr>

<tr>

<th>

0

</th>

<td>

Vendor Specific.

</td>

<td>

RFC 2153

</td>

</tr>

<tr>

<th>

1

</th>

<td>

Configure-Request.

</td>

<td>

 

</td>

</tr>

<tr>

<th>

2

</th>

<td>

Configure-Ack.

</td>

<td>

 

</td>

</tr>

<tr>

<th>

3

</th>

<td>

Configure-Nak.

</td>

<td>

 

</td>

</tr>

<tr>

<th>

4

</th>

<td>

Configure-Reject.

</td>

<td>

 

</td>

</tr>

<tr>

<th>

5

</th>

<td>

Terminate-Request.

</td>

<td>

 

</td>

</tr>

<tr>

<th>

6

</th>

<td>

Terminate-Ack.

</td>

<td>

 

</td>

</tr>

<tr>

<th>

7

</th>

<td>

Code-Reject.

</td>

<td>

 

</td>

</tr>

</table>

**标识符** 8位。

用来匹配请求和回应。

**长度** 16位。
报文包含首部的长度。

**数据** 变长。
由长度所指明的零到多个字节数据。 这个字段可能会包含一个或多个*选项*。

-----

## 配置选项

IPCP配置选项允许协商期望的IP参数。IPCP使用与LCP相同的配置选项格式，以及一些独立的选项。

**IPCP配置选项:**

<table border="1">

<tr>

<th>

00

</th>

<th>

01

</th>

<th>

02

</th>

<th>

03

</th>

<th>

04

</th>

<th>

05

</th>

<th>

06

</th>

<th>

07

</th>

<th>

08

</th>

<th>

09

</th>

<th>

10

</th>

<th>

11

</th>

<th>

12

</th>

<th>

13

</th>

<th>

14

</th>

<th>

15

</th>

</tr>

<tr>

<td class="pkthdr" colspan="8">

选项

</td>

<td class="pkthdr" colspan="8">

长度

</td>

</tr>

<tr>

<td class="pktvarlen" colspan="16">

数据 :::

</td>

</tr>

</table>

**选项** 8位。

<table class="datatbl" border="1" cellspacing="0">

<tr>

<th>

选项

</th>

<th>

长度

</th>

<th>

描述

</th>

<th>

参考

</th>

</tr>

<tr>

<th>

1

</th>

<td>

 

</td>

<td>

IP-地址（IP-Addresses）（已废除）

</td>

<td>

RFC 1332

</td>

</tr>

<tr>

<th>

2

</th>

<td align="center">

\>= 14

</td>

<td>

IP-压缩协议

</td>

<td>

RFC 1332, RFC 3241, RFC 3544

</td>

</tr>

<tr>

<th>

3

</th>

<td align="center">

6

</td>

<td>

IP-地址（IP-Address）

</td>

<td>

RFC 1332

</td>

</tr>

<tr>

<th>

4

</th>

<td align="center">

6

</td>

<td>

移动-IPv4

</td>

<td>

RFC 2290

</td>

</tr>

<tr>

<th>

129

</th>

<td align="center">

6

</td>

<td>

主DNS服务器地址

</td>

<td>

RFC 1877

</td>

</tr>

<tr>

<th>

130

</th>

<td align="center">

6

</td>

<td>

主NBNS服务器地址

</td>

<td>

RFC 1877

</td>

</tr>

<tr>

<th>

131

</th>

<td align="center">

6

</td>

<td>

次DNS服务器地址

</td>

<td>

RFC 1877

</td>

</tr>

<tr>

<th>

132

</th>

<td align="center">

6

</td>

<td>

次NBNS服务器地址

</td>

<td>

RFC 1877

</td>

</tr>

</table>

**长度** 8位。

**数据** 变长。

### IP-压缩协议

| 类型   | 长度   | IP-压缩协议 | 数据 |
| ---- | ---- | ------- | -- |
| 1 字节 | 1 字节 | 2 字节    | 变长 |

### IP-Address

| 类型   | 长度   | IP-地址 |
| ---- | ---- | ----- |
| 1 字节 | 1 字节 | 4 字节  |

## 参考资料

  - RFC 1332: 网际协议控制协议（IPCP）
  - RFC 1570: PPP[链路控制协议](https://zh.wikipedia.org/wiki/链路控制协议 "wikilink")（LCP）扩展
  - RFC 1661: [点对点协议](../Page/点对点协议.md "wikilink")（PPP）

[Category:网际协议](https://zh.wikipedia.org/wiki/Category:网际协议 "wikilink")