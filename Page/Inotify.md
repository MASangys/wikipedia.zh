**inotify**是[Linux核心子系統之一](https://zh.wikipedia.org/wiki/Linux核心 "wikilink")，做為[檔案系統的附加功能](https://zh.wikipedia.org/wiki/檔案系統 "wikilink")，它可監控檔案系統並將異動通知應用程式。本系統的出現取代了舊有Linux核心裡，擁有類似功能之[dnotify模組](https://zh.wikipedia.org/wiki/dnotify "wikilink")。

inotify的原始開發者為[John McCutchan](https://zh.wikipedia.org/wiki/John_McCutchan "wikilink")、[羅伯特·拉姆](../Page/羅伯特·拉姆.md "wikilink")與[Amy Griffis](https://zh.wikipedia.org/wiki/Amy_Griffis "wikilink")。於Linux核心2.6.13發行時(2005年六月十八日)，被正式納入Linux核心\[1\]。儘管如此，它仍可透過[修補程式的方式與](https://zh.wikipedia.org/wiki/修補程式 "wikilink")2.6.12甚至更早期的Linux核心整合。

inotify的主要應用於[桌面搜索軟體](https://zh.wikipedia.org/wiki/桌面搜索 "wikilink")，像：[Beagle](../Page/Beagle.md "wikilink")，得以針對有變動的檔案重新[索引](https://zh.wikipedia.org/wiki/索引 "wikilink")，而不必沒有效率地每隔幾分鐘就要掃描整個檔案系統。相較於主動輪詢檔案系統，透過作業系統主動告知檔案異動的方式，讓Beagle等軟體甚至可以在檔案更動後一秒內更新索引。

此外，諸如：更新目錄檢視、重新載入設定檔、追蹤變更、備份、同步甚至上傳等許多自動化作業流程，都可因而受惠。

## 優點

相較於被inotify取代較舊的 [dnotify模組](https://zh.wikipedia.org/wiki/dnotify "wikilink")，inotify有諸多益處。\[2\]\[3\]在舊的模組中，程式必須為每一個被監控的目錄建立[file descriptor](../Page/文件描述符.md "wikilink")，這種作法很容易讓行程擁有的file descriptor逼近系統允許的上限，進而形成瓶頸。dnotify產生的file decriptor也會導致系統資源忙碌，使可移除裝置無法被[移除](https://zh.wikipedia.org/wiki/umount "wikilink")，徒增使用上的困擾。

由於dnotify只能讓程式設計師監控目錄層級的變化，「精細度」亦是“dnotify”的劣勢之一。為此，程式設計師必須付出額外的心力，自行撰寫程式碼以期追蹤更細微的檔案系統事件。

inotify相較之下使用較少的file descriptor，亦允許select()與poll()介面，優於[dnotify使用的](https://zh.wikipedia.org/wiki/dnotify "wikilink")[信號系統](https://zh.wikipedia.org/wiki/signal_notification_system "wikilink")。這也使得inotify與既有以select()或poll()為基礎之函式庫(如：[Glib](https://zh.wikipedia.org/wiki/Glib "wikilink"))整合更加便利。

## 運作方式

inotify擁有專為其設計的系統函式。十分容易上手。

``` c
 #include <sys/inotify.h>
```

要使用inotify必須先引用上面的標頭檔。

``` c
 int inotify_init(void)
```

建立一個inotify的實體並回傳一個file descriptor，此檔案描述子可供讀取檔案事件。隨後，可透過read()接收事件，為了避免不斷輪詢檔案，read()預設將採用同步I/O的模式，直到事件發生後才會返回。

``` c
 int inotify_add_watch(int fd, const char* pathname, int mask)
```

透過路徑名稱(pathname)並選定遮罩(mask)以監控[inode](https://zh.wikipedia.org/wiki/inode "wikilink")。inotify_add_watch()會回傳一個監控器（watch descriptor），它代表pathname指向的inode(不同的pathname有可能指向相同的inode)。

``` c
 int inotify_rm_watch(int fd, int wd)
```

取消對某個路徑之監控。

如同之前所描述的，當檔案系統異動時，核心將會依據程式設定的條件，觸發相應的事件。事件的結構如下：

| 欄位名稱     | 內容描述                                |
| -------- | ----------------------------------- |
| `wd`     | 監控子                                 |
| `mask`   | 事件遮罩                                |
| `cookie` | 用來辨別`IN_MOVED_FROM`與`IN_MOVED_TO`事件 |
| `len`    | name欄位長度                            |
| `name`   | 觸發該事件的檔案名稱(以上層目錄為基準)                |

可供應用程式追蹤的事件有:

  - `IN_ACCESS` - 讀取檔案
  - `IN_MODIFY` - 檔案被修改
  - `IN_ATTRIB` - 檔案屬性變更
  - `IN_OPEN` - 檔案被開啟
  - `IN_CLOSE_WRITE` - 被開啟為「可寫入」狀態的檔案遭關閉
  - `IN_CLOSE_NOWRITE` - 被開啟為「非寫入」狀態的檔案遭關閉
  - `IN_MOVED_FROM` and `IN_MOVED_TO` - 檔案被搬動或更名
  - `IN_DELETE` - 檔案或目錄被刪除
  - `IN_CREATE` - 監控中的目錄下有新檔案產生
  - `IN_DELETE_SELF` - 監控中的檔案遭刪除

## 缺點

inotify無法監控软链接型的子目錄。

## 歷史沿革

  - August 2005 - 整合至Linux 2.6.13
  - July 2004 - [首次發表](http://groups.google.com/group/fa.linux.kernel/browse_thread/thread/6366aaa10cb23bcc/a54e97d545ad66fe)

## 相關條目

  - [File alteration monitor](https://zh.wikipedia.org/wiki/File_alteration_monitor "wikilink")
  - [Gamin](https://zh.wikipedia.org/wiki/Gamin "wikilink")
  - [DMAPI](https://zh.wikipedia.org/wiki/DMAPI "wikilink")
  - [kqueue](https://zh.wikipedia.org/wiki/kqueue "wikilink")
  - [FSEvents](https://zh.wikipedia.org/wiki/FSEvents "wikilink")

## 參考資料

## 外部連結

  - [Kernel Korner](http://www.linuxjournal.com/article/8478) - Intro to inotify by Robert Love (2005)
  - [LWN Article on Inotify](http://lwn.net/Articles/104343/) Watching filesystem events with inotify (partly out of date)
  - [IBM Article](http://www.ibm.com/developerworks/linux/library/l-ubuntu-inotify/index.html?ca=drs-) Monitor Linux file system events with inotify.

[Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink") [Category:操作系统技术](https://zh.wikipedia.org/wiki/Category:操作系统技术 "wikilink")

1.  [Linux 2.6.13, kernelnewbies.org](http://kernelnewbies.org/Linux_2_6_13)
2.  [Why inotify?](http://www.developertutorials.com/tutorials/linux/monitor-linux-inotify-050531/page2.html)
3.  [*inotify* README file](http://www.kernel.org/pub/linux/kernel/people/rml/inotify/README)