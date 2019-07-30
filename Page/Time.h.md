**time.h**是[C标准函数库中获取时间与日期](https://zh.wikipedia.org/wiki/C标准函数库 "wikilink")、对时间与日期数据操作及格式化的[头文件](../Page/头文件.md "wikilink")。

## 表示时间的三种数据类型

  - 日历时间（Calendar Time），是从一个标准**时间点**（epoch）到现在的时间经过的秒数，不包括插入[闰秒](../Page/闰秒.md "wikilink")对时间的调整。开始计时的标准时间点，各种编译器一般使用[UTC](../Page/协调世界时.md "wikilink") 1970-01-01 00:00:00。日历时间用数据类型`time_t`表示。`time_t`类型实际上一般是32位整数类型，因此表示的时间不能晚于[UTC](../Page/协调世界时.md "wikilink") 2038-01-18 19:14:07。为此，某些编译器引入了64位甚至更长的整型来保存日历时间，如Visual C++支持`__time64_t`数据类型，通过`_time64()`函数获取日历时间，可支持到[UTC](../Page/协调世界时.md "wikilink") 3001-01-01 00:00:00的时间。
  - 处理器时间（Processor Time），也被称为[CPU时间](https://zh.wikipedia.org/wiki/CPU "wikilink")（CPU Time），用以度量[进程使用的CPU资源](https://zh.wikipedia.org/wiki/进程 "wikilink")。处理器时间以时钟滴答数（Clock Tick）计算，通常从进程启动开始计时，因此这是相对时间。时钟滴答数用[系统基本数据类型](https://zh.wikipedia.org/wiki/系统基本数据类型 "wikilink")`clock_t`来表示，每[秒钟包含](https://zh.wikipedia.org/wiki/秒钟 "wikilink")`CLOCKS_PER_SEC`（time.h中定义的常量，一般为1000）个时钟滴答，也可使用`sysconf`函数得到每秒的时钟滴答数。`clock_t`类型一般是32位整数类型。
  - 分解时间(broken-down time)，用结构数据类型`tm`表示，`tm`包含下列结构成员：

| 成员                                                      | 描述                                                                              |
| ------------------------------------------------------- | ------------------------------------------------------------------------------- |
| [`int`](../Page/整数_\(计算机科学\).md "wikilink")`  tm_hour ` | 小时 (0 – 23)                                                                     |
| `int tm_isdst`                                          | [夏令时启用](https://zh.wikipedia.org/wiki/夏令时 "wikilink") (\> 0)、禁用 (= 0)、未知 (\< 0) |
| `int tm_mday`                                           | 一月中的哪一天 (1 – 31)                                                                |
| `int tm_min`                                            | 分 (0 – 59)                                                                      |
| `int tm_mon`                                            | 月 (0 – 11, 0 = 一月)                                                              |
| `int tm_sec`                                            | 秒 (0 – 60, 60 = 闰秒)                                                             |
| `int tm_wday`                                           | 一周中的哪一天 (0 – 6, 0 = 周日)                                                         |
| `int tm_yday`                                           | 一年中的哪一天 (0 – 365)                                                               |
| `int tm_year`                                           | 1900 以来的年数                                                                      |

## 从计算机系统时钟获得时间的方法

  - ` time_t  `**`time`**` (time_t*  `*`timer`*`)`

<!-- end list -->

  -
    得到从标准计时点（一般是1970年1月1日午夜）到当前时间的秒数。

<!-- end list -->

  - ` clock_t  `**`clock`**`(void)`

<!-- end list -->

  -
    得到从进程启动到此次函数调用的累计的时钟滴答数。

Windows API提供了更为精确的GetLocalTime()获取毫秒级的日历时间；QueryPerformanceCounter和QueryPerformanceFrequency两个函数获取高于1毫秒的精度。

## 三种时间日期数据类型的转换函数

  - ` struct tm*  `**`gmtime`**` (const time_t*  `*`timer`*`)`

<!-- end list -->

  -
    从日历时间`time_t`到分解时间`tm`（[世界协调时UTC](https://zh.wikipedia.org/wiki/世界协调时 "wikilink")）的转换。函数返回的是一个静态分配的`tm`结构存储空间，该存储空间被`gmtime`, `localtime`与`ctime`函数所共用. 这些函数的每一次调用会覆盖这块`tm`结构存储空间的内容。

<!-- end list -->

  - ` struct tm*  `**`gmtime_r`**` (const time_t*  `*`timer`*` , struct tm*  `*`result`*`)`

<!-- end list -->

  -
    该函数是`gmtime`函数的线程安全版本.

<!-- end list -->

  - ` struct tm*  `**`localtime`**` (const time_t*  `*`timer`*`)`

<!-- end list -->

  -
    从日历时间`time_t`到分解时间`tm`的转换，即结果数据已经调整到本地时区与夏令时。

<!-- end list -->

  - ` time_t  `**`mktime`**` (struct tm*  `*`ptm`*`)`

<!-- end list -->

  -
    从基于本地时区(与夏令时)的分解时间`tm`到日历时间`time_t`的转换。忽略tm_wday与tm_yday的输入值。如果tm_isdst不确定则输入设为-1。其它各输入域的值可以任意设定，输出时被规范化到正确范围。例如，想要计算2012年的第200天的日期，设为1月200日，函数会输出正确的结果

<!-- end list -->

  - ` time_t  `**`timegm`**` (struct tm*  `*`brokentime`*`)`

<!-- end list -->

  -
    从分解时间`tm`（被视作UTC时间，不考虑本地时区设置）到日历时间`time_t`的转换。该函数较少被使用。

## 时间日期数据的格式化函数

  - `char *asctime(const struct tm* tmptr)`

<!-- end list -->

  -
    把分解时间`tm`输出到字符串，结果的格式为"Www Mmm dd hh:mm:ss yyyy"，即“周几 月份数 日数 小时数:分钟数:秒钟数 年份数”。函数返回的字符串为静态分配，长度不大于26，与`ctime`函数共用。函数的每次调用将覆盖该字符串内容。

<!-- end list -->

  - `char* ctime(const time_t* timer)`

<!-- end list -->

  -
    把日历时间`time_t timer`输出到字符串，输出格式与`asctime`函数一样.

<!-- end list -->

  - `size_t strftime(char* s, size_t n, const char* format, const struct tm* tptr)`

<!-- end list -->

  -
    把分解时间`tm`转换为自定义格式的字符串，类似于常见的字符串格式输出函数`sprintf`。

<!-- end list -->

  - `char * strptime(const char* buf, const char* format, struct tm* tptr)`

<!-- end list -->

  -
    `strftime`的逆操作，把字符串按照自定义的格式转换为分解时间`tm`。

## 对时间数据的操作

  - `double difftime(time_t timer2, time_t timer1)`

<!-- end list -->

  -
    比较两个日历时间之差。

## 源代码示例

打印当前时间到标准输出流：

``` c
# include <stdio.h>
# include <time.h>

int main(void)
{
    time_t  timer = time(NULL);
    printf("ctime is %s\n", ctime(&timer));
    return 0;
}
```

## 参考文献

## 參考來源

  -
  -
## 外部連結

  - [C++ reference for date/time functions inherited from C](http://en.cppreference.com/w/cpp/chrono/c)

[Category:时间](https://zh.wikipedia.org/wiki/Category:时间 "wikilink") [Category:C标准函数库](https://zh.wikipedia.org/wiki/Category:C标准函数库 "wikilink") [Category:C语言](https://zh.wikipedia.org/wiki/Category:C语言 "wikilink")