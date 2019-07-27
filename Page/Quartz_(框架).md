**Quartz**是一个[Java](../Page/Java.md "wikilink")下作业控制的[开源](https://zh.wikipedia.org/wiki/开源 "wikilink")[框架](https://zh.wikipedia.org/wiki/軟體框架 "wikilink")。Quartz用来创建或简单或复杂的调度时间表，执行Java下任意数量的作业。版本1.0发布于2002年9月13日，当前版本2.2.1发布于2013年9月24日。

可以通过[`CronTrigger`](https://zh.wikipedia.org/wiki/cron#crontab文件 "wikilink")定义Quartz的调度时间表（例如`0 0 12
? *
WED`表示“每周三上午12：00”）。此外，时间表也可以通过`SimpleTrigger`，由`Date`定义触发的开始时间、毫秒的时间间隔和重复计数（例如“在下周三12：00，然后每隔10秒、执行5次”）。可以使用`Calender`定义例外的日程（例如“没有周末和节假日”）。

作业可以是实现了Job接口任意的Java类。作业监听器（JobListener）和触发器监听器（TriggerListener）通知作业的执行（和其他事件）。作业及其触发器可以被[持久化](https://zh.wikipedia.org/wiki/持久化 "wikilink")。

Quartz一般用于[企业级应用程序](https://zh.wikipedia.org/wiki/企业级软件 "wikilink")，以支持工作流、（维护）活动，并在应用程序中提供实时的服务。Quartz还支持集群。

Quartz是的[开源产品](https://zh.wikipedia.org/wiki/开源 "wikilink")。
[.NET平台下的对应产品叫Quartz](../Page/.NET框架.md "wikilink").NET。

## 参考文献

## 外部链接

  -
[Category:作业调度](https://zh.wikipedia.org/wiki/Category:作业调度 "wikilink")
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")