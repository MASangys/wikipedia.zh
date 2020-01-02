> 本文内容由[Syslog](https://zh.wikipedia.org/wiki/Syslog)转换而来。


**Syslog**常被稱為系統日誌或系統記錄，是一種用來在[網際網路協定](https://zh.wikipedia.org/wiki/網際網路協定 "wikilink")（TCP/IP）的[網路中傳遞](https://zh.wikipedia.org/wiki/網路 "wikilink")[記錄檔訊息的標準](https://zh.wikipedia.org/wiki/記錄檔訊息 "wikilink")。這個詞彙常用來指涉實際的syslog 協定，或者那些送出syslog訊息的應用程式或資料庫。

syslog協定屬於一種主從式協定：syslog發送端會傳送出一個小的文字訊息（小於1024位元組）到syslog接收端。接收端通常名為「syslogd」、「syslog daemon」或[syslog伺服器](https://zh.wikipedia.org/wiki/syslog伺服器 "wikilink")。系統日誌訊息可以被以[UDP協定及](https://zh.wikipedia.org/wiki/UDP "wikilink")╱或[TCP協定來傳送](https://zh.wikipedia.org/wiki/TCP "wikilink")。這些資料是以[明碼型態被傳送](https://zh.wikipedia.org/wiki/明碼 "wikilink")。不過由於[SSL加密外套](https://zh.wikipedia.org/wiki/SSL "wikilink")（例如[Stunnel](https://zh.wikipedia.org/wiki/Stunnel "wikilink")、sslio或sslwrap等）並非syslog協定本身的一部分，因此可以被用來透過[SSL](https://zh.wikipedia.org/wiki/SSL "wikilink")／[TLS方式提供一層加密](https://zh.wikipedia.org/wiki/TLS "wikilink")。

syslog通常被用於資訊系統管理及資安稽核。雖然它有不少缺陷，但仍獲得相當多的裝置及各種平台的接收端支援。因此syslog能被用來將來自許多不同類型系統的日誌記錄整合到集中的儲存庫中。

## 參考資料

<references />

## 外部連結

  - [SANS Paper](http://www.sans.org/rr/whitepapers/logging/1168.php) The Ins and Outs of System Logging Using Syslog
  - [Windows to Syslog](https://web.archive.org/web/20080612110215/http://www.loganalysis.org/sections/syslog/windows-to-syslog/)
  - [Syslog Anomaly Detection](http://devialog.org/)
  - [Syslog Help and Information](http://www.syslog.org/)
  - [Free Centralizing The Logs Of Windows Servers With Zeroshell And Ntsyslog](http://www.newstechnology.eu/web/content/view/75/1/lang,en/)
  - [NIST SP 800-92 Guide to Computer Security Log Management (PDF)](http://csrc.nist.gov/publications/nistpubs/800-92/SP800-92.pdf)

### 實做

#### UNIX

  - [sysklogd](http://www.infodrom.org/projects/sysklogd/)
  - [rsyslog](http://www.rsyslog.com/)：Implements syslog over TCP, TLS/SSL and RFC 3195
  - [phpLogCon](https://web.archive.org/web/20100218111601/http://www.phplogcon.org/)：syslog analysis front end
  - [syslog-ng](http://www.balabit.com/network-security/syslog-ng/)：Implements syslog over TCP and SSL support.
  - [php-syslog-ng](https://archive.is/20130502065519/http://nms.gdd.net/index.php/PHP-Syslog-NG)：Analysis front end for syslog-ng
  - [metalog](http://metalog.sourceforge.net/)
  - [msyslog](http://sourceforge.net/projects/msyslog/)
  - [socklog](http://smarden.org/socklog/)
  - [Pure PHP syslog client class](http://developer.sysco.ch/php/)

#### Windows 2000, 2003 and XP

  - [TheOne SysLog Manager](https://web.archive.org/web/20080828220739/http://www.theonesoftware.com/syslog_manager.php)
  - [Kiwi Syslog Daemon](http://www.kiwisyslog.com/)
  - [op5 LogServer](https://web.archive.org/web/20080820133659/http://www.op5.com/op5/products/logserver)
  - [MonitorWare Products: MonitorWare Agent, WinSyslog](http://www.monitorware.com/en/Product/product_comparision.php)
  - [NetDecision LogVision](https://web.archive.org/web/20080513232947/http://www.netmechanica.com/products/?prod_id=1016)
  - [NTsyslog](http://ntsyslog.sourceforge.net/)
  - [Syslserve](http://www.syslserve.com/)
  - [syslog-ng Agent for Windows](http://www.balabit.com/network-security/syslog-ng/central-syslog-server/)
  - [BazSyslog](https://web.archive.org/web/20081017041709/http://au.geocities.com/bazsyslog1/)
  - [Syslog Watcher](http://www.snmpsoft.com/syslogwatcher/)
  - [Pure PHP syslog client class](http://developer.sysco.ch/php/radius_class_pure_php.zip)
  - [Syslog Collector](http://www.loriotpro.com/Products/SyslogCollector/SyslogDataSheet_ENv3.php)A Syslog server/agent for Windows
  - [Tftpd32](http://tftpd32.jounin.net/) Tftpd32 which include a syslog server

[Category:網際網路標準](https://zh.wikipedia.org/wiki/Category:網際網路標準 "wikilink")