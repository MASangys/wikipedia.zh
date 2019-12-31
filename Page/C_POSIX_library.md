> 本文内容由[C POSIX library](https://zh.wikipedia.org/wiki/C POSIX library)转换而来。


**C POSIX library**是C语言的[POSIX系统下的标准库](https://zh.wikipedia.org/wiki/POSIX "wikilink")。包含了一些在[C语言标准库之外的函数](https://zh.wikipedia.org/wiki/C标准库 "wikilink")。

## C POSIX library头文件

下表列出不在[C语言标准库之内的POSIX标准的头文件](https://zh.wikipedia.org/wiki/C标准库 "wikilink")：

<table>
<thead>
<tr class="header">
<th><p>头文件</p></th>
<th><p>描述</p></th>
<th><p>首次发布</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><em>' &lt;aio.h&gt;</em>'</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/异步I/O" title="wikilink">异步I/O</a></p></td>
<td><p>Issue 5</p></td>
</tr>
<tr class="even">
<td><p>''' &lt;arpa/inet.h&gt;</p></td>
<td><p>操纵数值<a href="../Page/IP地址.md" title="wikilink">IP地址</a>的函数胡 (部分<a href="../Page/Berkeley套接字.md" title="wikilink">Berkeley套接字</a>)</p></td>
<td><p>Issue 6</p></td>
</tr>
<tr class="odd">
<td><p><em>' &lt;cpio.h&gt;</em>'</p></td>
<td><p>用于<a href="https://zh.wikipedia.org/wiki/cpio" title="wikilink">cpio的</a><a href="https://zh.wikipedia.org/wiki/文件格式#Magic_number" title="wikilink">文件格式#Magic number</a></p></td>
<td><p>Issue 3</p></td>
</tr>
<tr class="even">
<td><p><em>' &lt;<a href="https://zh.wikipedia.org/wiki/dirent.h" title="wikilink">dirent.h</a>&gt;</em>'</p></td>
<td><p>打开与列出<a href="../Page/目录_(文件系统).md" title="wikilink">目录</a>.</p></td>
<td><p>Issue 2</p></td>
</tr>
<tr class="odd">
<td><p>''' &lt;dlfcn.h&gt; '''</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/动态链接" title="wikilink">动态链接</a></p></td>
<td><p>Issue 5</p></td>
</tr>
<tr class="even">
<td><p><em>' &lt;<a href="https://zh.wikipedia.org/wiki/fcntl.h" title="wikilink">fcntl.h</a>&gt;</em>'</p></td>
<td><p>文件打开、<a href="https://zh.wikipedia.org/wiki/文件加锁" title="wikilink">加锁等操作</a></p></td>
<td><p>Issue 1</p></td>
</tr>
<tr class="odd">
<td><p><em>' &lt;fmtmsg.h&gt;</em>'</p></td>
<td><p>Message显示结构</p></td>
<td><p>Issue 4</p></td>
</tr>
<tr class="even">
<td><p><em>' &lt;fnmatch.h&gt;</em>'</p></td>
<td><p>文件名匹配</p></td>
<td><p>Issue 4</p></td>
</tr>
<tr class="odd">
<td><p>''' &lt;ftw.h&gt; '''</p></td>
<td><p>文件树遍历</p></td>
<td><p>Issue 1</p></td>
</tr>
<tr class="even">
<td><p>''' &lt;glob.h&gt; '''</p></td>
<td><p>路径名模式匹配</p></td>
<td><p>Issue 4</p></td>
</tr>
<tr class="odd">
<td><p>''' &lt;grp.h&gt; '''</p></td>
<td><p>用户信息与控制。</p></td>
<td><p>Issue 1</p></td>
</tr>
<tr class="even">
<td><p>''' &lt;iconv.h&gt; '''</p></td>
<td><p><a href="../Page/字符编码.md" title="wikilink">字符编码</a>转换</p></td>
<td><p>Issue 4</p></td>
</tr>
<tr class="odd">
<td><p>''' &lt;langinfo.h&gt; '''</p></td>
<td><p>语言信息常量。建于<a href="../Page/Locale.h.md" title="wikilink">Locale.h</a>之上。</p></td>
<td><p>Issue 2</p></td>
</tr>
<tr class="even">
<td><p>''' &lt;libgen.h&gt; '''</p></td>
<td><p>路径名操作</p></td>
<td><p>Issue 4</p></td>
</tr>
<tr class="odd">
<td><p>''' &lt;monetary.h&gt; '''</p></td>
<td><p>货币单位的字符串格式化</p></td>
<td><p>Issue 4</p></td>
</tr>
<tr class="even">
<td><p>''' &lt;mqueue.h&gt; '''</p></td>
<td><p><a href="../Page/消息队列.md" title="wikilink">消息队列</a></p></td>
<td><p>Issue 5</p></td>
</tr>
<tr class="odd">
<td><p>''' &lt;ndbm.h&gt; '''</p></td>
<td><p>数据库操作</p></td>
<td><p>Issue 4</p></td>
</tr>
<tr class="even">
<td><p>''' &lt;net/if.h&gt; '''</p></td>
<td><p>本地<a href="https://zh.wikipedia.org/wiki/网络接口" title="wikilink">网络接口列表</a></p></td>
<td><p>Issue 6</p></td>
</tr>
<tr class="odd">
<td><p>''' &lt;netdb.h&gt; '''</p></td>
<td><p>把本地协议与主机名翻译为数值地址。是<a href="../Page/Berkeley套接字.md" title="wikilink">Berkeley套接字</a>的一部分</p></td>
<td><p>Issue 6</p></td>
</tr>
<tr class="even">
<td><p>''' &lt;netinet/in.h&gt; '''</p></td>
<td><p>定义互联网协议与地址族。是<a href="../Page/Berkeley套接字.md" title="wikilink">Berkeley套接字</a>的一部分</p></td>
<td><p>Issue 6</p></td>
</tr>
<tr class="odd">
<td><p>''' &lt;netinet/tcp.h&gt; '''</p></td>
<td><p>额外的<a href="https://zh.wikipedia.org/wiki/Transmission_Control_Protocol" title="wikilink">TCP的控制选项</a>。是<a href="../Page/Berkeley套接字.md" title="wikilink">Berkeley套接字</a>的一部分</p></td>
<td><p>Issue 6</p></td>
</tr>
<tr class="even">
<td><p>''' &lt;nl_types.h&gt; '''</p></td>
<td><p>本体化消息分类函数</p></td>
<td><p>Issue 2</p></td>
</tr>
<tr class="odd">
<td><p>''' &lt;poll.h&gt; '''</p></td>
<td></td>
<td><p>Issue 4</p></td>
</tr>
<tr class="even">
<td><p>''' &lt;pthread.h&gt; '''</p></td>
<td><p><a href="../Page/POSIX线程.md" title="wikilink">POSIX线程</a>.</p></td>
<td><p>Issue 5</p></td>
</tr>
<tr class="odd">
<td><p>''' &lt;<a href="https://zh.wikipedia.org/wiki/pwd.h" title="wikilink">pwd.h</a>&gt; '''</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/passwd" title="wikilink">passwd文件访问与控制</a></p></td>
<td><p>Issue 1</p></td>
</tr>
<tr class="even">
<td><p>''' &lt;regex.h&gt; '''</p></td>
<td><p><a href="../Page/正则表达式.md" title="wikilink">正则表达式</a></p></td>
<td><p>Issue 4</p></td>
</tr>
<tr class="odd">
<td><p>''' &lt;sched.h&gt; '''</p></td>
<td><p>执行调度</p></td>
<td><p>Issue 5</p></td>
</tr>
<tr class="even">
<td><p>''' &lt;search.h&gt; '''</p></td>
<td><p>搜索表</p></td>
<td><p>Issue 1</p></td>
</tr>
<tr class="odd">
<td><p>''' &lt;semaphore.h&gt;</p></td>
<td><p>POSIX <a href="../Page/信号量.md" title="wikilink">信号量</a></p></td>
<td><p>Issue 5</p></td>
</tr>
<tr class="even">
<td><p>''' &lt;spawn.h&gt;</p></td>
<td><p>子进程</p></td>
<td><p>Issue 6</p></td>
</tr>
<tr class="odd">
<td><p>''' &lt;strings.h&gt;</p></td>
<td><p>大小写不敏感字符串比较</p></td>
<td><p>Issue 4</p></td>
</tr>
<tr class="even">
<td><p>''' &lt;stropts.h&gt;</p></td>
<td><p>流操作，包括<a href="https://zh.wikipedia.org/wiki/ioctl" title="wikilink">ioctl</a></p></td>
<td><p>Issue 4</p></td>
</tr>
<tr class="odd">
<td><p><em>' &lt;<a href="https://zh.wikipedia.org/wiki/sys/ipc.h" title="wikilink">sys/ipc.h</a>&gt;</em>'</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/进程间通信" title="wikilink">进程间通信</a> (IPC).</p></td>
<td><p>Issue 2</p></td>
</tr>
<tr class="even">
<td><p><strong>&lt;sys/mman.h&gt;</strong></p></td>
<td><p>内存管理，包括POSIX <a href="https://zh.wikipedia.org/wiki/共享内存_(进程间通信)" title="wikilink">共享内存 (进程间通信)与</a><a href="../Page/内存映射文件.md" title="wikilink">内存映射文件</a></p></td>
<td><p>Issue 4</p></td>
</tr>
<tr class="odd">
<td><p><strong>&lt;sys/msg.h&gt;</strong></p></td>
<td><p>POSIX <a href="../Page/消息队列.md" title="wikilink">消息队列</a>。</p></td>
<td><p>Issue 2</p></td>
</tr>
<tr class="even">
<td><p><strong>&lt;sys/resource.h&gt;</strong></p></td>
<td><p>资源使用，优先级与限制。</p></td>
<td><p>Issue 4</p></td>
</tr>
<tr class="odd">
<td><p><strong>&lt;sys/select.h&gt;</strong></p></td>
<td><p><a href="../Page/Select_(Unix).md" title="wikilink">Select (Unix)</a></p></td>
<td><p>Issue 6</p></td>
</tr>
<tr class="even">
<td><p><strong>&lt;sys/sem.h&gt;</strong></p></td>
<td><p>XSI (<a href="https://zh.wikipedia.org/wiki/Unix_System_V" title="wikilink">SysV风格的</a>) <a href="../Page/信号量.md" title="wikilink">信号量</a></p></td>
<td><p>Issue 2</p></td>
</tr>
<tr class="odd">
<td><p>'''&lt;sys/shm.h&gt;</p></td>
<td><p>XSI (<a href="https://zh.wikipedia.org/wiki/Unix_System_V" title="wikilink">SysV风格的</a>)<a href="https://zh.wikipedia.org/wiki/共享内存_(进程间通信)" title="wikilink">共享内存 (进程间通信)</a></p></td>
<td><p>Issue 2</p></td>
</tr>
<tr class="even">
<td><p>'''&lt;sys/socket.h&gt; '''</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Berkley套接字" title="wikilink">Berkley套接字主要头文件</a></p></td>
<td><p>Issue 6</p></td>
</tr>
<tr class="odd">
<td><p><strong>&lt;sys/stat.h&gt;</strong></p></td>
<td><p>文件信息(<a href="https://zh.wikipedia.org/wiki/stat_(Unix)" title="wikilink">stat (Unix)等</a>)</p></td>
<td><p>Issue 1</p></td>
</tr>
<tr class="even">
<td><p>'''&lt;sys/statvfs.h&gt;</p></td>
<td><p>文件系统信息</p></td>
<td><p>Issue 4</p></td>
</tr>
<tr class="odd">
<td><p><em>' &lt;sys/time.h&gt;</em>'</p></td>
<td><p>时间与日期函数与结构</p></td>
<td><p>Issue 4</p></td>
</tr>
<tr class="even">
<td><p><strong>&lt;sys/times.h&gt;</strong></p></td>
<td><p>文件访问与修改时间</p></td>
<td><p>Issue 1</p></td>
</tr>
<tr class="odd">
<td><p><em>' &lt;<a href="https://zh.wikipedia.org/wiki/sys/types.h" title="wikilink">sys/types.h</a>&gt;</em>'</p></td>
<td><p>不同的数据类型</p></td>
<td><p>Issue 1</p></td>
</tr>
<tr class="even">
<td><p><strong>&lt;sys/uio.h&gt;</strong></p></td>
<td><p>操作</p></td>
<td><p>Issue 4</p></td>
</tr>
<tr class="odd">
<td><p><strong>&lt;sys/un.h&gt;</strong></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Unix域套接字" title="wikilink">Unix域套接字</a></p></td>
<td><p>Issue 6</p></td>
</tr>
<tr class="even">
<td><p><em>' &lt;<a href="https://zh.wikipedia.org/wiki/sys/utsname.h" title="wikilink">sys/utsname.h</a>&gt;</em>'</p></td>
<td><p>操作系统信息，包括<a href="https://zh.wikipedia.org/wiki/uname" title="wikilink">uname</a></p></td>
<td><p>Issue 1</p></td>
</tr>
<tr class="odd">
<td><p><em>' &lt;<a href="https://zh.wikipedia.org/wiki/sys/wait.h" title="wikilink">sys/wait.h</a>&gt;</em>'</p></td>
<td><p>终止子进程的状态(见<a href="https://zh.wikipedia.org/wiki/wait_(Unix)" title="wikilink">wait (Unix)</a>)</p></td>
<td><p>Issue 3</p></td>
</tr>
<tr class="even">
<td><p><strong>&lt;syslog.h&gt;</strong></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/syslog" title="wikilink">syslog系统日志</a></p></td>
<td><p>Issue 4</p></td>
</tr>
<tr class="odd">
<td><p><strong>&lt;tar.h&gt;</strong></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/tar" title="wikilink">tar文件格式的Magic</a> number</p></td>
<td><p>Issue 3</p></td>
</tr>
<tr class="even">
<td><p><em>' &lt;<a href="https://zh.wikipedia.org/wiki/termios.h" title="wikilink">termios.h</a>&gt;</em>'</p></td>
<td><p>允许<a href="https://zh.wikipedia.org/wiki/串口" title="wikilink">串口界面</a></p></td>
<td><p>Issue 3</p></td>
</tr>
<tr class="odd">
<td><p>''' &lt;trace.h&gt; '''</p></td>
<td><p>运行时行为追踪（过时）</p></td>
<td><p>Issue 6</p></td>
</tr>
<tr class="even">
<td><p>''' &lt;ulimit.h&gt; '''</p></td>
<td><p>资源限制（被&lt;sys/resource.h&gt;代替）</p></td>
<td><p>Issue 1</p></td>
</tr>
<tr class="odd">
<td><p><em>' &lt;<a href="https://zh.wikipedia.org/wiki/unistd.h" title="wikilink">unistd.h</a>&gt;</em>'</p></td>
<td><p>多种必要的POSIX函数与常量</p></td>
<td><p>Issue 1</p></td>
</tr>
<tr class="even">
<td><p><em>' &lt;<a href="https://zh.wikipedia.org/wiki/utime.h" title="wikilink">utime.h</a>&gt;</em>'</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/inode" title="wikilink">inode访问与修改时间</a></p></td>
<td><p>Issue 3</p></td>
</tr>
<tr class="odd">
<td><p><em>' &lt;utmpx.h&gt;</em>'</p></td>
<td><p>用户账号数据库函数</p></td>
<td><p>Issue 4</p></td>
</tr>
<tr class="even">
<td><p><strong>&lt;wordexp.h&gt;</strong></p></td>
<td><p>子扩展，类似于<a href="../Page/Unix_shell.md" title="wikilink">shell被执行</a></p></td>
<td><p>Issue 4</p></td>
</tr>
</tbody>
</table>

## 参考文献

  - [Official List of headers in the POSIX library on opengroup.org](http://www.opengroup.org/onlinepubs/9699919799/idx/head.html)

  -
  - [Description of the posix library from the Flux OSKit](http://www.cs.utah.edu/flux/oskit/html/oskit-wwwch20.html)

## 延伸阅读

  -
{{-}}

[Category:C_POSIX_library](https://zh.wikipedia.org/wiki/Category:C_POSIX_library "wikilink") [Category:POSIX](https://zh.wikipedia.org/wiki/Category:POSIX "wikilink")