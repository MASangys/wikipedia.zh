**CAcert.org** 是一个社群推动的公共[认证机构](https://zh.wikipedia.org/wiki/认证机构 "wikilink")。它可以对个人发放免费[公钥证书](https://zh.wikipedia.org/wiki/公钥 "wikilink")\[1\] (其他证书颁发机构需要收费)。该机构目前已经有 200,000 名认证用户，以及接近800,000（截至2012年1月）\[2\]份证书。

该机构的证书支持[SSL](https://zh.wikipedia.org/wiki/SSL "wikilink")，以及[X.509](../Page/X.509.md "wikilink")协议

CAcert是一个非盈利性组织，2003年7月成立于澳洲，其成员分布在世界各地。目前，董事会成员有7人。

## 签发

CAcert使用程序来自动签发证书，你只需要告诉它域名和邮箱即可。因此，Cacert并不会验证请求者的身份，这造成其证书的可信度不高。如果你想获得高可靠性的证书，必须通过实际认证，与证书签发机构的人会面，通过多方面证明自己的身份。CAcert制定了一项规定，允许用户通过提供更多个人信息来提高“确认点”\[3\]。

CAcert的签名提供商是[CeBIT](../Page/CeBIT.md "wikilink")和[FOSDEM](https://zh.wikipedia.org/wiki/FOSDEM "wikilink").

## 根证书

2005年以来，CAcert提供Class 1 和 Class 3等级的根证书 \[4\]

## 部署情况

目前，CAcert签发的证书并未被主流浏览器承认，因为浏览器内部没有附带它的根证书，而且它的证书更像是自己给自己签名，所以其可靠性还有待改进\[5\]。mozilla曾经讨论承认CAcert的根证书，但是在2007年CAcert撤销了申请，因为它没有通过会计审核。\[6\]

以下的操作系统附带CAcert的根证书\[7\]：

  - [Arch Linux](../Page/Arch_Linux.md "wikilink")
  - Ark Linux
  - [CentOS](../Page/CentOS.md "wikilink")
  - [Debian](../Page/Debian.md "wikilink")
  - [FreeWRT](https://zh.wikipedia.org/wiki/FreeWRT "wikilink")
  - [Gentoo](../Page/Gentoo_Linux.md "wikilink")
  - [Maemo](../Page/Maemo.md "wikilink") (installed on [Nokia Internet Tablets](https://zh.wikipedia.org/wiki/Nokia_Internet_Tablet "wikilink")) (not on [Nokia N900](https://zh.wikipedia.org/wiki/Nokia_N900 "wikilink"))
  - [Knoppix](../Page/Knoppix.md "wikilink")
  - [Mandriva Linux](../Page/Mandriva_Linux.md "wikilink")
  - [MirOS BSD](https://zh.wikipedia.org/wiki/MirOS_BSD "wikilink")
  - [OpenBSD](../Page/OpenBSD.md "wikilink")
  - [openSUSE](https://zh.wikipedia.org/wiki/openSUSE "wikilink")
  - [Ubuntu](../Page/Ubuntu.md "wikilink"), [Xubuntu](../Page/Xubuntu.md "wikilink"), [Kubuntu](../Page/Kubuntu.md "wikilink"), [Lubuntu](../Page/Lubuntu.md "wikilink") (Not in CAcert inclusion list, but actually provided by package ca-certificates now.)

## 参见

其他免费证书签发机构

  - [StartCom](../Page/StartCom.md "wikilink")
  - [Comodo Group](https://zh.wikipedia.org/wiki/Comodo_Group "wikilink")
  - [Let's Encrypt](../Page/Let's_Encrypt.md "wikilink")

## 参考

## 外部链接

  - [CAcert International](http://www.cacert.org)

[Category:证书颁发机构](https://zh.wikipedia.org/wiki/Category:证书颁发机构 "wikilink")

1.  [About CAcert](https://www.cacert.org/index.php?id=12)
2.  [CAcert usage statistics](http://www.cacert.org/stats.php)
3.  [Assurance Policy](http://www.cacert.org/policy/AssurancePolicy.php), section 2.3.
4.  [FAQ/TechnicalQuestions - CAcert Wiki](http://wiki.cacert.org/FAQ/TechnicalQuestions#CAcert_Class_3_certificates)
5.  [CAcert audit comment on Mozilla](https://bugzilla.mozilla.org/show_bug.cgi?id=215243#c158)
6.  [Discussion by Mozilla on including CAcert root certificate](https://bugzilla.mozilla.org/show_bug.cgi?id=215243)
7.