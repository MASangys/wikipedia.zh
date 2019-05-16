`stdio.h`是[C语言为输入输出提供的](https://zh.wikipedia.org/wiki/C语言 "wikilink")[标准库](https://zh.wikipedia.org/wiki/C标准库 "wikilink")[头文件](../Page/头文件.md "wikilink")，其前身是[迈克·莱斯克](../Page/迈克·莱斯克.md "wikilink")20世纪70年代编写的“可移植输入输出程序库”\[1\]。

C语言中的所有输入和输出都由抽象的字节流来完成，对文件的访问也通过关联的输入或输出流进行。这一模式随UNIX操作系统而普及，在现代操作系统和编程语言中仍被广泛应用。

## 头文件内容

### 类型

| 标识符      | 说明            |
| -------- | ------------- |
| `size_t` | 用于表示大小的数据类型   |
| `FILE`   | 记录流的信息的数据结构   |
| `fpos_t` | 用于在文件中定位的数据类型 |

### 宏

| 标识符            | 说明                               |
| -------------- | -------------------------------- |
| `NULL`         | 空指针                              |
| `_IOFBF`       | 用于控制缓冲方式的参数                      |
| `_IOLBF`       |                                  |
| `_IONBF`       |                                  |
| `BUFSIZ`       | `setbuf`函数使用的缓冲区大小               |
| `EOF`          | 文件结尾标志                           |
| `FOPEN_MAX`    | 实现保证能够同时打开的文件数量                  |
| `FILENAME_MAX` | 实现保证支持的最长文件名的字符数                 |
| `L_tmpnam`     | 存放`tmpnam`函数生成的临时文件名的`char`数组的大小 |
| `SEEK_CUR`     | 用于控制文件定位方式的参数                    |
| `SEEK_END`     |                                  |
| `SEEK_SET`     |                                  |
| `TMP_MAX`      | 实现保证能生成的临时文件名个数                  |

### 标准流

| 标识符      | 说明    |
| -------- | ----- |
| `stderr` | 标准错误流 |
| `stdin`  | 标准输入流 |
| `stdout` | 标准输出流 |

### 函数

| 类型                                                                                                   | 函数原型                                                                                    |
| ---------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| 文件操作                                                                                                 | `int remove(const char *filename);`                                                     |
| `int rename(const char *old, const char *new);`                                                      |                                                                                         |
| `FILE *tmpfile(void);`                                                                               |                                                                                         |
| `char *tmpnam(char *s);`                                                                             |                                                                                         |
| `int fclose(FILE *stream);`                                                                          |                                                                                         |
| `int fflush(FILE *stream);`                                                                          |                                                                                         |
| `FILE *fopen(const char * restrict filename, const char * restrict mode);`                           |                                                                                         |
| `FILE *freopen(const char * restrict filename, const char * restrict mode, FILE * restrict stream);` |                                                                                         |
| `void setbuf(FILE * restrict stream, char * restrict buf);`                                          |                                                                                         |
| `int setvbuf(FILE * restrict stream, char * restrict buf, int mode, size_t size);`                   |                                                                                         |
| 格式化输入输出                                                                                              | `int fprintf(FILE * restrict stream, const char * restrict format, ...);`               |
| `int fscanf(FILE * restrict stream, const char * restrict format, ...);`                             |                                                                                         |
| `int printf(const char * restrict format, ...);`                                                     |                                                                                         |
| `int scanf(const char * restrict format, ...);`                                                      |                                                                                         |
| `int snprintf(char * restrict s, size_t n, const char * restrict format, ...);`                      |                                                                                         |
| `int sprintf(char * restrict s, const char * restrict format, ...);`                                 |                                                                                         |
| `int sscanf(const char * restrict s, const char * restrict format, ...);`                            |                                                                                         |
| `int vfprintf(FILE * restrict stream, const char * restrict format, va_list arg);`                   |                                                                                         |
| `int vfscanf(FILE * restrict stream, const char * restrict format, va_list arg);`                    |                                                                                         |
| `int vprintf(const char * restrict format, va_list arg);`                                            |                                                                                         |
| `int vscanf(const char * restrict format, va_list arg);`                                             |                                                                                         |
| `int vsnprintf(char * restrict s, size_t n, const char * restrict format, va_list arg);`             |                                                                                         |
| `int vsprintf(char * restrict s, const char * restrict format, va_list arg);`                        |                                                                                         |
| `int vsscanf(const char * restrict s, const char * restrict format, va_list arg);`                   |                                                                                         |
| 字符输入输出                                                                                               | `int fgetc(FILE *stream);`                                                              |
| `char *fgets(char * restrict s, int n, FILE * restrict stream);`                                     |                                                                                         |
| `int fputc(int c, FILE *stream);`                                                                    |                                                                                         |
| `int fputs(const char * restrict s, FILE * restrict stream);`                                        |                                                                                         |
| `int getc(FILE *stream);`                                                                            |                                                                                         |
| `int getchar(void);`                                                                                 |                                                                                         |
| `int putc(int c, FILE *stream);`                                                                     |                                                                                         |
| `int putchar(int c);`                                                                                |                                                                                         |
| `int puts(const char *s);`                                                                           |                                                                                         |
| `int ungetc(int c, FILE *stream);`                                                                   |                                                                                         |
| 直接输入输出                                                                                               | `size_t fread(void * restrict ptr, size_t size, size_t nmemb, FILE * restrict stream);` |
| `size_t fwrite(const void * restrict ptr, size_t size, size_t nmemb, FILE * restrict stream);`       |                                                                                         |
| 文件内定位                                                                                                | `int fgetpos(FILE * restrict stream, fpos_t * restrict pos);`                           |
| `int fseek(FILE *stream, long int offset, int whence);`                                              |                                                                                         |
| `int fsetpos(FILE *stream, const fpos_t *pos);`                                                      |                                                                                         |
| `long int ftell(FILE *stream);`                                                                      |                                                                                         |
| `void rewind(FILE *stream);`                                                                         |                                                                                         |
| 错误处理                                                                                                 | `void clearerr(FILE *stream);`                                                          |
| `int feof(FILE *stream);`                                                                            |                                                                                         |
| `int ferror(FILE *stream);`                                                                          |                                                                                         |
| `void perror(const char *s);`                                                                        |                                                                                         |

## 相关库

[C++引入了](../Page/C++.md "wikilink")[`iostream`](https://zh.wikipedia.org/wiki/iostream "wikilink")进行输入输出，但仍保留了`stdio.h`的功能。

[贝尔实验室开发了Sfio库](../Page/贝尔实验室.md "wikilink")，旨在弥补`stdio.h`在功能、速度和安全性上的不足。\[2\]

## 参见

  - [I/O](https://zh.wikipedia.org/wiki/I/O "wikilink")
  - [wchar.h](https://zh.wikipedia.org/wiki/wchar.h "wikilink")

## 参考文献

  -
## 外部链接

  - [C语言输入/输出参考手册](http://zh.cppreference.com/w/c/io)

[Category:C标准库头文件](https://zh.wikipedia.org/wiki/Category:C标准库头文件 "wikilink")
[Category:输入/输出](https://zh.wikipedia.org/wiki/Category:输入/输出 "wikilink")

1.
2.