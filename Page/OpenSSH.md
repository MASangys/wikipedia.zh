**OpenSSH**（****）是使用[SSH透過](https://zh.wikipedia.org/wiki/SSH "wikilink")[計算機網路加密通訊的實現](https://zh.wikipedia.org/wiki/計算機網路 "wikilink")。它是取代由SSH
Communications
Security所提供的商用版本的[開放原始碼方案](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")。目前OpenSSH是OpenBSD的子計畫。

OpenSSH常常被誤認以為與[OpenSSL有關聯](../Page/OpenSSL.md "wikilink")，但實際上這兩個計畫有不同的目的，不同的發展團隊，名稱相近只是因為兩者有同樣的軟體發展目標──提供開放原始碼的[加密通訊軟體](https://zh.wikipedia.org/wiki/加密通訊 "wikilink")。

## 歷史

OpenSSH是在1999年10月第一次在[OpenBSD](../Page/OpenBSD.md "wikilink")
2.6裡出現，當初的計畫是取代由SSH Communications
Security所提供的[SSH軟體](https://zh.wikipedia.org/wiki/SSH "wikilink")。

发布历史：

  - OpenSSH 7.5 2017年3月20日
  - OpenSSH 7.4 2016年12月19日
  - OpenSSH 7.3 2016年8月1日
  - OpenSSH 7.2 2016年2月29日
  - OpenSSH 7.1 2015年8月21日
  - OpenSSH 7.0 2015年8月11日
  - OpenSSH 6.9 2015年6月30日
  - OpenSSH 6.8 2015年3月18日
  - OpenSSH 6.7 2014年10月6日
  - OpenSSH 6.6 2014年3月16日
  - OpenSSH 6.5 2014年1月30日
  - OpenSSH 6.4 2013年11月8日
  - OpenSSH 6.3 2013年9月13日
  - OpenSSH 6.2 2013年3月22日
  - OpenSSH 6.1 2012年8月29日
  - OpenSSH 6.0 2012年4月22日
  - OpenSSH 5.9 2011年9月6日
  - OpenSSH 5.8: 2011年2月4日
  - OpenSSH 5.7: 2011年1月24日
  - OpenSSH 5.6: 2010年8月23日
  - OpenSSH 5.5: 2010年4月16日
  - OpenSSH 5.4: 2010年3月8日
  - OpenSSH 5.3: 2009年10月1日
  - OpenSSH 5.2: 2009年2月23日
  - OpenSSH 5.1: 2008年7月21日
  - OpenSSH 5.0: 2008年4月3日
  - OpenSSH 4.9: 2008年3月30日
      - 为[sshd加入](https://zh.wikipedia.org/wiki/sshd "wikilink")[chroot](https://zh.wikipedia.org/wiki/chroot "wikilink")
        支持
  - OpenSSH 4.7: 2007年9月4日
  - OpenSSH 4.6: 2007年3月9日
  - OpenSSH 4.5: 2006年11月7日
  - OpenSSH 4.4: 2006年9月27日
  - OpenSSH 4.3: 2006年2月1日
  - OpenSSH 4.2: 2005年9月1日
  - OpenSSH 4.1: 2005年5月26日
  - OpenSSH 4.0: 2005年3月9日
  - OpenSSH 3.9: 2004年8月17日
  - OpenSSH 3.8: 2004年2月24日
  - OpenSSH 3.7.1: 2003年9月16日
  - OpenSSH 3.7: 2003年9月16日
  - OpenSSH 3.6.1: 2003年 4月1日
  - OpenSSH 3.6: 2003年3月31日
  - OpenSSH 3.5: 2002年10月14日
  - OpenSSH 3.4: 2002年6月26日

## 商標問題

## 發展及程式架構

程式主要包括了幾個部份：

  - **ssh**

<!-- end list -->

  -
    [rlogin與](https://zh.wikipedia.org/wiki/rlogin "wikilink")[Telnet的替代方案](../Page/Telnet.md "wikilink")。

<!-- end list -->

  - **scp**、**sftp**

<!-- end list -->

  -
    rcp的替代方案，將檔案複製到其他電腦上。

<!-- end list -->

  - **sshd**

<!-- end list -->

  -
    [SSH伺服器](https://zh.wikipedia.org/wiki/SSH "wikilink")。

<!-- end list -->

  - **ssh-keygen**

<!-- end list -->

  -
    產生[RSA或](https://zh.wikipedia.org/wiki/RSA "wikilink")[DSA](https://zh.wikipedia.org/wiki/DSA "wikilink")[金鑰](https://zh.wikipedia.org/wiki/金鑰 "wikilink")，用來認證用。

<!-- end list -->

  - **ssh-agent**、**ssh-add**

<!-- end list -->

  -
    幫助使用者不需要每次都要輸入金鑰密碼的工具。

<!-- end list -->

  - **ssh-keyscan**

<!-- end list -->

  -
    掃描一群[機器](https://zh.wikipedia.org/wiki/機器 "wikilink")，並记錄其[公鑰](https://zh.wikipedia.org/wiki/公鑰 "wikilink")。

## 另请参阅

  - [lsh](https://zh.wikipedia.org/wiki/lsh "wikilink")

## 参考文献

## 外部連結

  - [OpenSSH](http://www.openssh.com/)
  - [Portable OpenSSH](http://www.openssh.com/portable.html)

[Category:加密软件](https://zh.wikipedia.org/wiki/Category:加密软件 "wikilink")
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:自由網路軟體](https://zh.wikipedia.org/wiki/Category:自由網路軟體 "wikilink")
[Category:OpenBSD](https://zh.wikipedia.org/wiki/Category:OpenBSD "wikilink")
[Category:Secure_Shell](https://zh.wikipedia.org/wiki/Category:Secure_Shell "wikilink")