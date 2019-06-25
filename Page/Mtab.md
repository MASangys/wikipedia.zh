**mtab**（***m**ounted file systems
**tab**le*，已挂载檔案系统表）檔案，是一種常见于[类UNIX系统上的系統資訊檔](https://zh.wikipedia.org/wiki/类UNIX "wikilink")。

## 用途

這種檔案记录着当前已[挂载的檔案系统以及它们的初始化选项](https://zh.wikipedia.org/wiki/mount "wikilink")。`mtab`的内容和[`fstab`](https://zh.wikipedia.org/wiki/fstab "wikilink")中的类似，主要的区别在于后者列出了所有可用的檔案系统，而前者则列出了当前已挂载的信息。因此，`mtab`的格式通常和`fstab`很相像。大多数情况下，可以在`fstab`中直接使用`mtab`的配置内容。\[1\]\[2\]

这个文件通常位于`/etc/mtab`。

### 内容示例

```
 /dev/sdb1 / ext3 rw,relatime,errors=remount-ro 0 0
 proc /proc proc rw,noexec,nosuid,nodev 0 0
 /sys /sys sysfs rw,noexec,nosuid,nodev 0 0
 varrun /var/run tmpfs rw,noexec,nosuid,nodev,mode=0755 0 0
 varlock /var/lock tmpfs rw,noexec,nosuid,nodev,mode=1777 0 0
 udev /dev tmpfs rw,mode=0755 0 0
 devshm /dev/shm tmpfs rw 0 0
 devpts /dev/pts devpts rw,gid=5,mode=620 0 0
 lrm /lib/modules/2.6.24-16-generic/volatile tmpfs rw 0 0
 securityfs /sys/kernel/security securityfs rw 0 0
 gvfs-fuse-daemon /home/alice/.gvfs fuse.gvfs-fuse-daemon rw,nosuid,nodev,user=alice 0 0
```

## 其他

  - [`df`](https://zh.wikipedia.org/wiki/Df_\(Unix\) "wikilink")
  -

## 参考

[Category:文件系统](https://zh.wikipedia.org/wiki/Category:文件系统 "wikilink")
[Category:Unix](https://zh.wikipedia.org/wiki/Category:Unix "wikilink")

1.  [挂载信息](http://www.gnu.org/s/libc/manual/html_node/Mount-Information.html)
2.  [mtab手册](http://man.cat-v.org/unix_8th/5/mtab)