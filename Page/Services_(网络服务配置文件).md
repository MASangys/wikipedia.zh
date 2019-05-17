**Service文件**是现代操作系统在`etc`目录下的一个配置文件，记录网络服务名对应的端口号与协议。

service文件的用途是：

  - 通过TCP/IP的API函数（声明在`netdb.h`中）直接查到网络服务名与端口号、使用协议的对应关系。如`getservbyname("serve","tcp")`获取端口号；\[1\]`getservbyport（htons（port），“tcp”）`获取端口和协议上的服务名。\[2\]
  - 如果用户在这个文件中维护所有使用的网络服务名字、端口、协议，那么可以一目了然的获悉哪些端口号用于哪个服务，哪些端口号是空闲的。

## 介绍

[IP协议的端口号](https://zh.wikipedia.org/wiki/IP协议 "wikilink")，可用于区分服务器提供的不同服务。值得范围是0至65535.
[IP地址](../Page/IP地址.md "wikilink")、端口号、[TCP](https://zh.wikipedia.org/wiki/TCP协议 "wikilink")/[UDP协议](https://zh.wikipedia.org/wiki/UDP协议 "wikilink")，这三者合起来称为[套接字](https://zh.wikipedia.org/wiki/套接字 "wikilink")（socket）。

前1000个被保留用于特定应用，被称为著名端口（well known ports）。细节见RFC
1340。并写在service文件中。\[3\]

## 历史

最初在[Internet的前身](https://zh.wikipedia.org/wiki/Internet "wikilink")[ARPANET中](../Page/ARPANET.md "wikilink")，其成员手动维护并分享了一个名为SERVICES.TXT的文件，其中就包括网络服务名对应的端口号与协议。\[4\]

端口号和标准服务之间的对应关系在RFC 1700 “Assigned Numbers”中有详细的定义。

## Linux操作系统

文件位置是`/etc/services`

只有“root”用户才有权限修改这个文件。文件中的每一行由4个字段组成,用TAB或空格分隔，分别表示“服务名称”、“使用端口”、“协议名称”以及“别名”。例如：

`http      80/tcp      www`

## Windows操作系统

文件位置是`C:\WINDOWS\system32\drivers\etc\services`

只有“administrator”用户才有权限修改这个文件。文件中的每一行由5个字段组成,用TAB或空格分隔，分别表示“服务名称”、“使用端口”、“协议名称”、“别名”、“注释”。\[5\]例如：

`qotd               17/tcp    quote                  #Quote of the day`
`qotd               17/udp    quote                  #Quote of the day`

[Winsock的API函数](../Page/Winsock.md "wikilink")`WSAConnectByName`的第三个参数`servicename`，其官方文档解释是：服务名是端口号的字符串别名。\[6\]

## 参见

  - [hosts文件](https://zh.wikipedia.org/wiki/hosts文件 "wikilink")
  - [TCP/IP协议](https://zh.wikipedia.org/wiki/TCP/IP协议 "wikilink")

## 参考文献及注释

[Category:配置文件](https://zh.wikipedia.org/wiki/Category:配置文件 "wikilink")

1.  \[<https://msdn.microsoft.com/en-us/library/windows/desktop/ms738538(v=vs.85>).aspx
    MSDN:getservbyname function\]
2.  \[<https://msdn.microsoft.com/en-us/library/windows/desktop/ms738541(v=vs.85>).aspx
    MSDN:getservbyport function\]
3.  [TCP and UDP port numbers (/etc/services) quick
    reference](http://www.penguintutor.com/linux/network-services-ports)
4.
5.  \[<https://technet.microsoft.com/en-us/library/cc720022(v=ws.10>).aspx
    MSDN:Add or Edit a Service\]
6.  \[<https://msdn.microsoft.com/en-us/library/windows/desktop/ms741557(v=vs.85>).aspx
    MSDN: WSAConnectByName function, "A service name is a string alias
    for a port number."\]