工具型软件**cron**是一款[类Unix的](https://zh.wikipedia.org/wiki/类Unix "wikilink")[操作系统](../Page/操作系统.md "wikilink")下的基于时间的任务管理系统。用户们可以通过**cron**在固定时间、日期、间隔下，运行定期任务（可以是命令和脚本）。**cron**常用于运维和管理，但也可用于其他地方，如：定期下载文件和邮件。**cron**该词来源于[希腊语chronos](https://zh.wikipedia.org/wiki/希腊语 "wikilink")（χρόνος），原意是时间。

通常，**任务时间表**（crontab）文件储存的指令被crond[守护进程](../Page/守护进程.md "wikilink")激活，守护进程在后台运行，并每一分钟检查是否有定期的作业需要执行。这类作业一般称为**cron jobs**。

## crond守护进程

crond是一个用于执行周期命令的[守护进程](../Page/守护进程.md "wikilink")。\[1\]通过[守护进程](../Page/守护进程.md "wikilink")（**`/lib/systemd/system/crond.service`** ）形式运行的cron程序称为crond。\[2\] cron会通过以下路径查找crontabs：\[3\]

  - **`/etc/crontab`**：为系统**任务时间表**（crontab）**。**以前用于跑以日为单位、以周为单位、以月为单位的任务，现在用于跑[anacron](https://zh.wikipedia.org/wiki/anacron "wikilink")。
  - **`/etc/cron.d/`**：该目录包含系统层次的**任务时间表**（crontabs）\[4\]，不同用户共同使用。
  - **`/var/spool/cron/`**：该路径包含用户通过**`crontab`** 命令创建的**任务时间表**（crontables）。

## crontab命令

**`crontab`** 命令用于维护每个用户的**任务时间表**（crontab）文件。\[5\]

**`crontab`** 命令用于安装**任务时间表**（crontab）文件，删除和列举 crond守护进程已经在使用的**任务时间表**（crontab）。每个用户都会拥有自己独自的**任务时间表**（crontab），这些文件会存放在**`/var/spool/`**目录下，不建议用户直接修改这些文件。MLS模式下的[SELinux](../Page/安全增强式Linux.md "wikilink")，你可以为这些**任务时间表**（crontab）分等级。\[6\]

## crontab文件

crontab文件包含crond[守护进程](../Page/守护进程.md "wikilink")所需的一系列作业和指令。\[7\]

crontab文件的每一行均遵守特定的格式，由空格或tab分隔为数个领域，每个领域可以放置单一或多个数值。

### 文件格式

**`/var/spool/cron/`**下的**任务时间表**（crontab）文件是用户层次的，格式如下：

    # 文件格式說明
    # ┌──分鐘（0 - 59）
    # │ ┌──小時（0 - 23）
    # │ │ ┌──日（1 - 31）
    # │ │ │ ┌─月（1 - 12）
    # │ │ │ │┌─星期（0 - 6，表示从周日到周六）
    # │ │ │ ││
    # *  *  *  * * 被執行的命令

注：

1.  在某些系统里，星期日也可以为7
2.  不很直觀的用法：如果日期和星期同時被設定，那麼其中的一個條件被滿足時，指令便會被執行。請参考下例。
3.  前5個域稱之**分時日月周**，可方便個人記憶。

從第六個域起，指明要執行的命令。

**`/etc/crontab`**和**`/etc/cron.d/`**目录下的**任务时间表**（crontabs）文件是系统层次的，格式如下：

    # 文件格式說明
    # ┌──分鐘（0 - 59）
    # │ ┌──小時（0 - 23）
    # │ │ ┌──日（1 - 31）
    # │ │ │ ┌─月（1 - 12）
    # │ │ │ │┌─星期（0 - 6，表示从周日到周六）
    # │ │ │ ││
    # *  *  *  * *  用户名 被執行的命令

系统层次的**任务时间表**（crontabs）的任务经常会指定一个或以上的用户进行执行，因此**任务时间表**（crontabs）文件需要增加“用户名”字段。\[8\]

### 表达式

在一个区域里填写多个数值的方法：

  - 逗号（**`,`**）表示列举，例如： **`1,3,4,7 * * * * echo hello world`** 表示，在每小时的1、3、4、7分时，打印"hello world"。
  - 连词符（**`-`**）表示范围，例如：**`1-6 * * * * echo hello world`** ，表示，每小时的1到6分钟内，每分钟都会打印"hello world"。
  - 星号（**`*`**）代表任何可能的值。例如：在“小时域”里的星号等于是“每一个小时”。
  - 百分号(**`%`**) 表示“每"。例如：**`*%10 * * * * echo hello world`** 表示，每10分钟打印一回"hello world"。

#### 非标准字符

某些cron程序的扩展版本（如：Quartz Java scheduler）也支持斜线（'/'）操作符，用于表示跳过某些给定的数。例如，“\*/3”在小时域中等于“0,3,6,9,12,15,18,21”等被3整除的数；
\=== 例子 ===

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

1.
2.
3.
4.
5.
6.
7.
8.