**`crontab`**命令常见于[Unix和](https://zh.wikipedia.org/wiki/Unix "wikilink")[类Unix的](https://zh.wikipedia.org/wiki/类Unix "wikilink")[操作系统](../Page/操作系统.md "wikilink")之中，用于设置周期性被执行的指令。该命令从标准输入设备读取指令，并将其存放于“crontab”文件中，以供之后读取和执行。该词来源于[希腊语chronos](https://zh.wikipedia.org/wiki/希腊语 "wikilink")（χρόνος），原意是时间。

通常，**`crontab`**储存的指令被[守护进程](../Page/守护进程.md "wikilink")激活，`crond`常常在后台运行，每一分钟检查是否有预定的作业需要执行。这类作业一般称为**cron jobs**。

## crontab文件

crontab文件包含送交cron[守护进程](../Page/守护进程.md "wikilink")的一系列作业和指令。每个用户可以拥有自己的crontab文件；同时，操作系统保存一个针对整个系统的crontab文件，该文件通常存放于/etc或者/etc之下的子目录中，而这个文件只能由系统管理员来修改。

crontab文件的每一行均遵守特定的格式，由空格或tab分隔为数个领域，每个领域可以放置单一或多个数值。

### 操作符号

在一个区域里填写多个数值的方法：

  - 逗号（','）分开的值，例如：“1,3,4,7,8”
  - 连词符（'-'）指定值的范围，例如：“1-6”，意思等同于“1,2,3,4,5,6”
  - 星号（'\*'）代表任何可能的值。例如，在“小时域”里的星号等于是“每一个小时”，等等

某些cron程序的扩展版本也支持斜线（'/'）操作符，用于表示跳过某些给定的数。例如，“\*/3”在小时域中等于“0,3,6,9,12,15,18,21”等被3整除的数；

### 時間設置

    # 文件格式說明
    # ┌──分鐘（0 - 59）
    # │ ┌──小時（0 - 23）
    # | │ ┌──日（1 - 31）
    # | | | ┌─月（1 - 12）
    # | | | | ┌─星期（0 - 7，星期日=0或7）
    # | | | | |
    # * * * * * 被執行的命令

注：

1.  在“星期域”（第五個域），0和7都被視為星期日。
2.  不很直觀的用法：如果日期和星期同時被設定，那麼其中的一個條件被滿足時，指令便會被執行。請参考下例。
3.  前5個域稱之**分時日月周**，可方便個人記憶。

從第六個域起，指明要執行的命令。

### 例子

#### AIX系统管理员的Crontab文件

```
 #=================================================================
 #      SYSTEM ACTIVITY REPORTS
 #  8am-5pm activity reports every 20 mins during weekdays.
 #  activity reports every hour on Saturday and Sunday.
 #  6pm-7am activity reports every hour during weekdays.
 #  summary prepared at 18:05 every weekday.
 #=================================================================
 0,20,40 8-17 * * 1-5 /usr/lib/sa/sa1 1200 3 &
 0 * * * 0,6 /usr/lib/sa/sa1 &
 0 18-7 * * 1-5 /usr/lib/sa/sa1 &
 5 18 * * 1-5 /usr/lib/sa/sa2 -s 8:00 -e 18:01 -i 3600 -ubcwyaqvm &
```

#### 常見錯誤

一個常見的錯誤是，命令行雙引號中使用%時，未加反斜線\\，例如：

`# 錯誤的例子：`
``1 2 3 4 5 touch ~/error_`date "+%Y%m%d"`.txt``

在[守護進程发出的電子郵件中會見到錯誤訊息](https://zh.wikipedia.org/wiki/守護進程 "wikilink")：

    /bin/sh: unexpected EOF while looking for `'''''''

`# 正確的例子：`
`1 2 3 4 5 touch ~/right_$(date +\%Y\%m\%d).txt`

` # 使用單引號也可以解决問題：`
`1 2 3 4 5 touch ~/error_$(date '+%Y%m%d').txt`

` # 使用單引號就不用加反斜線了。這個例子會產生這樣一個文件~/error_\2006\04\03.txt`
`1 2 3 4 5 touch ~/error_$(date '+\%Y\%m\%d').txt`

下例是另一個常見錯誤：

`# Prepare for the daylight savings time shift`
`59 1 1-7 4 0 /root/shift_my_times.sh`

初看似要在四月的第一個星期日早晨1時59分運行shift_my_times.sh，但是這樣設置不對。

特殊地，當星期域（第五個域）被指定為 \* 時，星期域與日域（第三個域）執行“與”操作；而當星期域（第五個域）被指定為 \* 以外的内容時，星期域與日域執行“或”操作。 所以這個程序會在4月1日至7日以及4月余下的每一個星期日執行。

另一個常見錯誤是對分鐘設置的誤用。下例欲一個程序兩個小時運行一次：

`# adds date to a log file`
`* 0,2,4,6,8,10,12,14,16,18,20,22 * * * date >> /var/log/date.log`

而上述設置會使該程序在偶數小時内的每一分鐘執行一次。正確的設置是：

`# runs the date command every even hour at the top of the hour`
`0 0,2,4,6,8,10,12,14,16,18,20,22 * * * date >> /var/log/date.log`

`# an even better way`
`0 */2 * * * date >> /var/log/date.log`

### 不发送电子邮件

如果输出结果来自crontab里的命令，那么cron[守护进程](../Page/守护进程.md "wikilink")会用电子邮件将它发给用户。

  - 若想关闭某个命令的输出结果，可以将输出结果重定向至`/dev/null`。

`>/dev/null 2>&1`

  - 在常用的[Vixie cron中](https://zh.wikipedia.org/wiki/Vixie_cron "wikilink")，也可以在文件的开始部分加入命令来关闭所有命令的邮件输出：

`MAILTO=""`

## 其他话题

  - [At](../Page/At_\(Unix\).md "wikilink")：在未来某个时间运行一个作业。

  - ：runs job on a periodic interval, anachronistically.

  - ：[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")／[Darwin](../Page/Darwin_\(操作系统\).md "wikilink") cron替代版本。

  - [Unix程序列表](../Page/Unix实用程序列表.md "wikilink")

## 外部链接

### 文档

  - [Crontab : Scheduling Tasks](http://www.math-linux.com/spip.php?article45)
  - [Computer Hope](http://www.computerhope.com/unix/ucrontab.htm) Linux / UNIX中crontab的用法
  - [Opengroup's crontab specification](http://www.opengroup.org/onlinepubs/009695399/utilities/crontab.html) - [UNIX 03正式文档](https://zh.wikipedia.org/wiki/UNIX_03 "wikilink")
  - [Crontab - Reference and Examples at mkaz.com](http://www.mkaz.com/ref/unix_cron.html)

### 软件

  - [Cron for Windows](https://web.archive.org/web/20061127012624/http://www.kalab.com/freeware/cron/cron.htm)
  - [CVSweb for FreeBSD's cron](http://www.freebsd.org/cgi/cvsweb.cgi/src/usr.sbin/cron) - [Paul Vixie的](https://zh.wikipedia.org/wiki/Paul_Vixie "wikilink")1993 [Vixie cron](https://zh.wikipedia.org/wiki/Vixie_cron "wikilink") 3.0版本修补了一些错误
  - [fcron](http://fcron.free.fr/) - vixiecron / anacron的增强版本（[GPL](https://zh.wikipedia.org/wiki/GNU_General_Public_License "wikilink")）

[Category:Unix进程和任务管理相关软件](https://zh.wikipedia.org/wiki/Category:Unix进程和任务管理相关软件 "wikilink")