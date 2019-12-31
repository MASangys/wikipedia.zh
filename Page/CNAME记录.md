> 本文内容由[CNAME记录](https://zh.wikipedia.org/wiki/CNAME记录)转换而来。


**真实名称记录**（），即**CNAME记录**，是域名系统（[DNS](https://zh.wikipedia.org/wiki/DNS "wikilink")）的一种记录。CNAME记录用于将一个[域名](../Page/域名.md "wikilink")（同名）映射到另一个域名（真实名称），[域名解析服务器遇到CNAME记录会以映射到的目标重新开始查询](https://zh.wikipedia.org/wiki/域名解析服务器 "wikilink")。\[1\]

这对于需要在同一个IP地址上运行多个服务的情况来说非常方便。若要同时运行[文件传输服务和](../Page/文件传输协议.md "wikilink")[Web服务](../Page/Web服务.md "wikilink")，则可以把*ftp.example.com*和*www.example.com*都指向DNS记录*example.com*，而后者则有一个指向IP地址的A记录。如此一来，若服务器IP地址改变，则只需修改*example.com*的A记录即可。

CNAME记录必须指向另一个域名，而不能是IP地址。

## 细节

《RFC 1034》详细定义了CNAME记录的标准，并在《RFC 2181》的第十节中做了进一步规范。

CNAME记录在域名系统中的使用有诸多限制。当一个DNS解析服务器在查询各类记录时遇到一则CNAME记录时，它会立即重启查询，查询所映射到域名的对应记录。（除非是要查询CNAME记录本身，在那种情况下会返回所映射到的域名。）CNAME记录所映射的域名可以是域名服务中的任何域名。在同一服务器上，在远程服务器上，甚至在属于不同DNS zone（解析空间）的服务器上，都可以。

假设有下述DNS zone：

`NAME                    TYPE   VALUE`
`--------------------------------------------------`
`bar.example.com.        CNAME  foo.example.com.`
`foo.example.com.        A      192.0.2.23`

当要查询*bar.example.com*的A记录时，域名解析器会查到对应的CNAME记录，即*foo.example.com*，随即开始查询该域名的A记录，查到192.0.2.23则返回结果。

### 误会

可以使用CNAME记录将「*bar.example.com*」指向「*foo.example.com*」。因此，可能会有人随意的将*bar.example.com*称作是*foo.example.com*的「CNAME」。然而事实并非如此，*bar.example.com*的「CNAME」是*foo.example.com*，因为CNAME的意思是真实名称，而右侧才是真实名称，才是CNAME。

这则误会在《RFC 2181》「DNS规范的解释」一章中有提到。应当说左侧标签是右侧真实名称的一个同名。即下述CNAME记录：

`bar.example.com.        CNAME  foo.example.com.`

应当读作：

*bar.example.com*的真实名称是*foo.example.com*。请求访问*bar.example.com*的客户端会得到*foo.example.com*返回的结果。

### 限制

  - CNAME记录总是指向另一则域名，而非IP地址。
  - 有CNAME记录的域名不能有其他任何记录（MX记录、A记录等，《RFC 1034》第3.6.2节、《RFC 1912》第 2.4节) 唯一的例外是在使用DNSSEC的情况下，这时可以设置相关的DNSSEC相关记录，比如RRSIG，NSEC等（《RFC 2181》第10.1节）
  - 为了保证效率，应当避免将CNAME记录指向其他的CNAME记录，但并非不可以。因此，可以通过CNAME记录创造无法被解析的循环，比如：

`foo.example.com.  CNAME  bar.example.com.`
`bar.example.com.  CNAME  foo.example.com.`

  - MX记录和NS记录永远都不应指向由CNAME记录标记的域名（《RFC 2181》第10.3节）。因此，解析空间不应有下述结构：

`example.com.      MX     0   foo.example.com.`
`foo.example.com.  CNAME  host.example.com.`
`host.example.com. A      192.0.2.1`

  - 用于邮箱服务的域名不应有CNAME记录。在实践中，这或许不会出错，但由于邮件服务的不同，可能会有意料之外的效果。\[2\]

## DNAME记录

**DNAME记录**，即**代理名称记录**，由《RFC 6672》定义（原《RFC 2672》已经废弃）。一条DNAME记录会将某个域名的整个解析子树映射到另一域名，而CNAME只映射设定的域名，不映射子域名。如同CNAME一样，在DNS查询过程中，会查找所映射到的新域名的地址。域名解析服务器会为每一个被查询的子域名生成一则CNAME记录。为某个域名设置DNAME记录和为该域名的所有子域名设置CNAME记录的效果是一样的。

例如下述记录：

`foo.example.com.        DNAME  bar.example.com.`
`bar.example.com.        A      192.0.2.23`
`xyzzy.bar.example.com.  A      192.0.2.24`
`*.bar.example.com.      A      192.0.2.25`

查询*foo.example.com*的A记录不会返回任何结果。不同于CNAME记录，DNAME不会直接影响所设置域名的解析。

如果我们需要查询*xyzzy.**foo**.example.com*，则由于DNAME记录的映射会返回*xyzzy.**bar**.example.com*的A记录，即192.0.2.24。而如果将DNAME记录换成是CNAME记录的话，这样的请求则会报错提示无法找到。

由此，查询*foobar.foo.example.com*会由于DNAME记录映射返回192.0.2.25。

## ANAME记录

部分DNS平台支持尚未被标准化的ALIAS\[3\]或ANAME记录类型。此类伪记录由DNS服务器维护，类似于CNAME记录，但在（某些）客户端解析时等同于A记录。ANAME记录通常会被设置指向另一域名。但在被客户端请求时候，则会直接返回对应的IP地址。ANAME记录的标准化过程正在进行中\[4\]，但已经有许多不同的实现，所以由于平台的不同，效果也多种多样。有些存在于域名解析区的顶端，有些则为了提供邮件服务而存在。ANAME记录相对CNAME记录的一大优势是速度。服务端解析A记录的速度通常比客户端快，同时可以缓存对应的IP地址以备查询。IETF正在讨论和考虑ANAME记录的标准化。\[5\]

## 参见

  - [DNS记录类型列表](../Page/DNS记录类型列表.md "wikilink")
  - [IANA](https://zh.wikipedia.org/wiki/IANA "wikilink")
  - [ICANN](https://zh.wikipedia.org/wiki/ICANN "wikilink")

## 参考资料

## 外部链接

  - [RFC 1912 is wrong](http://mengwong.com/misc/rfc1912-is-wrong.html) [Meng Weng Wong](https://zh.wikipedia.org/wiki/Meng_Weng_Wong "wikilink")'s analysis of CNAME restrictions (from [web.archive.org](https://web.archive.org/web/20120531234306/http://mengwong.com/misc/rfc1912-is-wrong.html)).
  - RFC 2219 – Use of DNS Aliases for Network Services （为网络服务使用DNS别名）

[Category:DNS记录类型](https://zh.wikipedia.org/wiki/Category:DNS记录类型 "wikilink") [Category:域名](https://zh.wikipedia.org/wiki/Category:域名 "wikilink")

1.
2.
3.
4.
5.