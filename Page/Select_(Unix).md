**select**是用于I/O多路转接的一个[系统调用函数](https://zh.wikipedia.org/wiki/系统调用 "wikilink")。

在[C程序中](../Page/C.md "wikilink")，该系统调用在 sys/select.h 或
[unistd.h](https://zh.wikipedia.org/wiki/unistd.h "wikilink") 中声明，语法如下：

``` c
int select(int nfds, fd_set* readfds, fd_set* writefds, fd_set* errorfds, struct timeval* timeout);
```

| 参数         | 描述                                                  |
| ---------- | --------------------------------------------------- |
| *nfds*     | sets的文件描述符的最大值                                      |
| *readfds*  | `fd_set` 类型，包含了需要检查是否可读的描述符，输出时表示哪些描述符可读。可为 `NULL`。 |
| *writefds* | `fd_set` 类型，包含了需要检查是否可写的描述符，输出时表示哪些描述符可写。可为 `NULL`。 |
| *errorfds* | `fd_set` 类型，包含了需要检查是否出错的描述符，输出时表示哪些描述符出错。可为 `NULL`。 |
| *timeout*  | `struct timeval` 类型的结构体，表示等待检查完成的最长时间。              |

为了维护fd_set类型的参数，会使用下面四个[宏](https://zh.wikipedia.org/wiki/宏 "wikilink")：FD_SET(),
FD_CLR(), FD_ZERO() 和 FD_ISSET()。

**返回值**：

`      这个`[`函数将返回描述符集的个数`](../Page/函数.md "wikilink")`， 如果`[`超时返回为`](https://zh.wikipedia.org/wiki/超时 "wikilink")`0，错误则返回-1。`

**参看**：

  - select(2)
  - poll(2)

## select与epoll的区别

<table>
<thead>
<tr class="header">
<th></th>
<th><p>epoll</p></th>
<th><p>select</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>概述</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/epoll" title="wikilink">epoll是个</a><a href="https://zh.wikipedia.org/wiki/模块" title="wikilink">模块</a>，由三个<a href="https://zh.wikipedia.org/wiki/系统调用" title="wikilink">系统调用组成</a>，内核中由用<a href="../Page/文件系统.md" title="wikilink">文件系统实现</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/select" title="wikilink">select是个</a><a href="https://zh.wikipedia.org/wiki/系统调用" title="wikilink">系统调用</a></p></td>
</tr>
<tr class="even">
<td><p>结构体定义</p></td>
<td><p>typedef union epoll_data {</p>
<p><code>   void *ptr;</code><br />
<code>    int fd;</code><br />
<code>    __uint32_t u32;</code><br />
<code>    __uint64_t u64;</code><br />
<code>} epoll_data_t;</code><br />
<br />
<code>struct epoll_event {</code><br />
<code>   __uint32_t events;      /* Epoll events */</code><br />
<code>    epoll_data_t data;      /* User data variable */</code><br />
<code>};</code><br />
</p></td>
<td><p>struct timeval{<br />
long tv_sec;//second<br />
long tv_usec;//minisecond<br />
}<br />
<br />
typedef struct fd_set<br />
{<br />
u_int fd_count;<br />
int fd_array[FD_SETSIZE];<br />
}<br />
//fd_array可SIZE*8个socket</p></td>
</tr>
<tr class="odd">
<td><p>可用的事件</p></td>
<td><p>EPOLLIN ：表示对应的文件描述符可以读；<br />
EPOLLOUT：表示对应的文件描述符可以写；<br />
EPOLLPRI： 表示对应的文件描述符有紧急的数据可读；<br />
EPOLLERR： 表示对应的文件描述符发生错误；<br />
EPOLLHUP：表示对应的文件描述符被挂断；<br />
EPOLLET： ET的epoll工作模式；<br />
</p></td>
<td><p>fd_set有三种类型： readfds, writefds, exceptionfds</p></td>
</tr>
<tr class="even">
<td><p>操作函数</p></td>
<td><p>三个系统调用：epoll_create epoll_ctl epoll_wait</p></td>
<td><p>一个系统调用：select<br />
四个宏: FD_ZERO FD_SET FD_CLR FD_ISSET</p></td>
</tr>
<tr class="odd">
<td><p>运行模式</p></td>
<td><p>Edge Triggered (ET)、Lev Triggered (LT)</p></td>
<td><p>LT</p></td>
</tr>
<tr class="even">
<td><p>运行过程</p></td>
<td><p>int fd = epoll_create(xxA); //xxA可监听的socket<br />
struct epoll_event events[xxxB];//可返回的事件数<br />
while(1){<br />
int nfds = epoll_wait( ); //wait event occur<br />
for(int i=0; i&lt;nfds; i++){<br />
…. }//end for<br />
}//end while<br />
</p></td>
<td><p>struct timeval tv;<br />
fd_set rfds;<br />
tv={5,0}; //set time out<br />
while(1){<br />
FD_ZERO(&amp;rfds);<br />
if (!select()) continue;<br />
for(int i=0;i&lt;maxfds; i++){<br />
...} //end for<br />
} //end while</p></td>
</tr>
<tr class="odd">
<td><p>优点</p></td>
<td><p>1）epoll_wait返回的都是有效数据，可直接从struct epoll_event[]中获取事件，效率高。</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>缺点</p></td>
<td></td>
<td><p>每次select有数据要遍历全部socket</p></td>
</tr>
<tr class="odd">
<td><p>注意事项</p></td>
<td><p>每次取事件后，要重新注册此socket的事件epoll。(epoll_ctl)</p></td>
<td><p>每次select之前要重置rfds的值。(FD_ZERO)</p></td>
</tr>
</tbody>
</table>

**说明**：以上无论epoll_create,
fd_set都受限于系统中单个进程能够打开的[文件句柄数](https://zh.wikipedia.org/wiki/文件句柄 "wikilink")。

## 示例

``` c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>

#include <sys/select.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>

#define PORT "9421"

/* function prototypes */
void die(const char*);

int main(int argc, char **argv)
{
    int sockfd, new, maxfd, on = 1, nready, i;

    struct addrinfo *res0, *res, hints;

    char buffer[BUFSIZ];

    fd_set master, readfds;

    ssize_t nbytes;

    (void)memset(&hints, '\0', sizeof(struct addrinfo));

    hints.ai_family = AF_INET;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;
    hints.ai_flags = AI_PASSIVE;

    if(-1 == (getaddrinfo(NULL, PORT, &hints, &res0)))
        die("getaddrinfo()");

    for(res = res0; res; res = res->ai_next)
    {
        if(-1 == (sockfd = socket(res->ai_family, res->ai_socktype, res->ai_protocol)))
        {
            perror("socket()");
            continue;
        }

        if(-1 == (setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, (char*)&on, sizeof(int))))
        {
            perror("setsockopt()");
            continue;
        }

        if(-1 == (bind(sockfd, res->ai_addr, res->ai_addrlen)))
        {
            perror("bind");
            continue;
        }

        break;

    }

    if(-1 == sockfd)
        exit(EXIT_FAILURE);

    freeaddrinfo(res0);

    if(-1 == (listen(sockfd, 32)))
        die("listen()");

    if(-1 == (fcntl(sockfd, F_SETFD, O_NONBLOCK)))
        die("fcntl()");

    FD_ZERO(&master);
    FD_ZERO(&readfds);

    FD_SET(sockfd, &master);

    maxfd = sockfd;

    while(1)
    {
        memcpy(&readfds, &master, sizeof(master));

        (void)printf("running select()\n");

        if(-1 == (nready = select(maxfd+1, &readfds, NULL, NULL, NULL)))
            die("select()");

        (void)printf("Number of ready descriptor: %d\n", nready);

        for(i=0; i<=maxfd && nready>0; i++)
        {
            if(FD_ISSET(i, &readfds))
            {
                nready--;

                if(i == sockfd)
                {
                    (void)printf("Trying to accept() new connection(s)\n");

                    if(-1 == (new = accept(sockfd, NULL, NULL)))
                    {
                        if(EWOULDBLOCK != errno)
                            die("accept()");

                        break;
                    }

                    else
                    {

                        if(-1 == (fcntl(new, F_SETFD, O_NONBLOCK)))
                            die("fcntl()");

                        FD_SET(new, &master);

                        if(maxfd < new)
                            maxfd = new;
                    }
                }

                else
                {
                    (void)printf("recv() data from one of descriptors(s)\n");

                    nbytes = recv(i, buffer, sizeof(buffer), 0);
                    if(nbytes <= 0)
                    {
                        if(EWOULDBLOCK != errno)
                            die("recv()");

                        break;
                    }

                    buffer[nbytes] = '\0';
                    printf("%s", buffer);

                    (void)printf("%zi bytes received.\n", nbytes);

                    close(i);
                    FD_CLR(i, &master);

                }
            }

        }

    }

    return 0;
}

void die(const char *msg)
{
    perror(msg);
    exit(EXIT_FAILURE);
}
```

## 参见

  - [Berkeley套接字](../Page/Berkeley套接字.md "wikilink")
  - [轮询](https://zh.wikipedia.org/wiki/轮询 "wikilink")
  - [epoll](https://zh.wikipedia.org/wiki/epoll "wikilink")
  - [kqueue](https://zh.wikipedia.org/wiki/kqueue "wikilink")
  - [IOCP](../Page/IOCP.md "wikilink")

## 外部链接

  -
  -
[Category:C_POSIX库](https://zh.wikipedia.org/wiki/Category:C_POSIX库 "wikilink")
[Category:事件_(计算机)](https://zh.wikipedia.org/wiki/Category:事件_\(计算机\) "wikilink")
[Category:系统调用](https://zh.wikipedia.org/wiki/Category:系统调用 "wikilink")