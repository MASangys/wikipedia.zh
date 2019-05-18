**sync**（意指Synchronize，即“同步”）为[UNIX](../Page/UNIX.md "wikilink")[操作系统的标准](../Page/操作系统.md "wikilink")[系统调用](https://zh.wikipedia.org/wiki/系统调用 "wikilink")，功能为将[内核](../Page/内核.md "wikilink")[文件系统](../Page/文件系统.md "wikilink")[缓冲区的所有数据](https://zh.wikipedia.org/wiki/缓冲区 "wikilink")（也即预定将通过低级[I/O系统调用](https://zh.wikipedia.org/wiki/I/O "wikilink")写入存储介质的数据）写入存储介质（如硬盘）。

作为[C语言的函数之一](https://zh.wikipedia.org/wiki/C语言 "wikilink")，`sync()`一般以`void
sync(void)`的形式在`unistd.h`内声明。该函数也可以从[命令行执行sync命令的方式调用](https://zh.wikipedia.org/wiki/命令行 "wikilink")，同时在其他程序语言（如[Perl](../Page/Perl.md "wikilink")）中也有名字与之相似的函数。

## 相关调用

UNIX中还有一些与`sync`相似的系统调用，如`fsync`与`fdatasync`。其中`fsync`负责写入所有与特定[文件描述符相关的缓冲区数据](../Page/文件描述符.md "wikilink")\[1\]；`fdatasync`功能与`fsync`相似，但只负责写入文件中被变更的数据，而不会修改文件的元数据（如文件属性）\[2\]。

## 在系统中的应用

UNIX内核常会运行一些诸如flush或update之类的[守护进程以将缓冲区数据写入目标](../Page/守护进程.md "wikilink")，而这些进程都要调用`sync`函数；在其他某些操作系统上这类任务由[cron完成](https://zh.wikipedia.org/wiki/cron "wikilink")，而在[Linux上负责者则为守护进程pdflush](../Page/Linux.md "wikilink")\[3\]。在或以[只读权限重载文件系统时](https://zh.wikipedia.org/wiki/文件系统权限 "wikilink")，系统也会将缓冲区内容写入存储介质。

## 数据库中的应用

在对数据进行修改操作（包括增、删、改）时，被修改的数据一般仅是暂存于基于内存的写入缓存，而当掉电时这些修改便会丢失；而为保证数据的，数据库必须使用某些形式的`sync`，以确保修改的内容切实写入[非易失性存储器](https://zh.wikipedia.org/wiki/非易失性存储器 "wikilink")，如[PostgreSQL就使用了多种](../Page/PostgreSQL.md "wikilink")`sync`类调用（包括`fsync`与`fdatasync`）来达到这一目的\[4\]。

但是，对于旋转寻道的硬盘来说，每次旋转只能完成一项“提交”操作以将客户端的修改写入，因此每秒最多只能完成几百次的“提交”操作\[5\]；而若关闭`fsync`的限定来放宽要求，则可大幅提升性能，但同时也会带来系统崩溃后的潜在危险。有鉴于此，数据库也使用囊括最近修改信息的（一般比主题数据文件小得多）来保障可靠性：根据日志文件，系统管理员可以在系统崩溃后准确地重做修改操作，以此即可减少对主要数据文件的`sync`操作。

## 相关争议

在默认情况下，硬盘一般使用自有的易失性写入缓存以缓存要写入的数据。这一做法可以大幅提升性能，但同时也会带来写入操作丢失的潜在风险\[6\]，不过开/关缓存的性能落差的确相当巨大，甚至连素来保守的[FreeBSD社群为此也否决了在FreeBSD](../Page/FreeBSD.md "wikilink")
4.3内默认关闭写入缓存（即是说，修改后直接调用`sync`写入硬盘）的提案\[7\]。

另外，在[Firefox引入](../Page/Firefox.md "wikilink")`fsync`调用的目的以保证其内嵌的[SQLite数据库的完整性后](../Page/SQLite.md "wikilink")，便有人指出`fsync`降低了Firefox
3.0的性能\[8\]；而[Linux基金会的](https://zh.wikipedia.org/wiki/Linux基金会 "wikilink")[技术总监](https://zh.wikipedia.org/wiki/首席技术官 "wikilink")[西奥多·周则在](https://zh.wikipedia.org/wiki/西奥多·周 "wikilink")“Don't
fear the fsync\!”一文中讨论了fsync的性能表现，并表示“没有必要害怕fsync”\[9\]。

## 注释

## 参考资料

[Category:数据同步](https://zh.wikipedia.org/wiki/Category:数据同步 "wikilink")
[Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink")

1.  [fsync
    specification](http://www.opengroup.org/onlinepubs/007908775/xsh/fsync.html)
2.  [fdatasync
    specification](http://www.opengroup.org/onlinepubs/007908775/xsh/fdatasync.html)
3.  [The Linux Page Cache and
    pdflush](http://www.westnet.com/~gsmith/content/linux-pdflush.htm)
4.  [PostgreSQL Reliability and the Write-Ahead
    Log](http://www.postgresql.org/docs/current/static/wal.html)
5.  [Tuning PostgreSQL WAL
    Synchronization](http://www.westnet.com/~gsmith/content/postgresql/TuningPGWAL.htm)

6.  [Write-Cache
    Enabled?](http://www.jasonbrome.com/blog/archives/2004/04/03/writecache_enabled.html)
7.  [FreeBSD Handbook — Tuning
    Disks](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/configtuning-disk.html#AEN16830)
8.
9.