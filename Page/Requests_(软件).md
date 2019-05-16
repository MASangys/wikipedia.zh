**Requests**是一个[Python](../Page/Python.md "wikilink") HTTP库，在[Apache
2许可证下发布](../Page/Apache许可证.md "wikilink")。该项目的目标是使HTTP请求更简单，更人性化。当前版本是2.19.1\[1\]

## 示例代码

``` python
    >>> import requests
    >>> r = requests.get('https://api.github.com/user', auth=('user', 'pass'))
    >>> r.status_code
    200
    >>> r.headers['content-type']
    'application/json; charset=utf8'
    >>> r.encoding
    'utf-8'
    >>> r.text # doctest: +ELLIPSIS
    u'{"type":"User"...'
    >>> r.json() # doctest: +ELLIPSIS
    {u'private_gists': 419, u'total_private_repos': 77, ...}
```

## 外部链接

  - [项目主页](http://docs.python-requests.org/en/latest/)
  - [GitHub仓库](https://github.com/kennethreitz/requests)
  - [文档](http://docs.python-requests.org/en/latest/user/intro/)
  - [IRC频道](https://zh.wikipedia.org/wiki/irc:python-requests "wikilink")

## 参考文献

[Category:使用Apache许可证的软件](https://zh.wikipedia.org/wiki/Category:使用Apache许可证的软件 "wikilink")
[Category:用Python編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Python編程的自由軟體 "wikilink")
[Category:自由網路軟體](https://zh.wikipedia.org/wiki/Category:自由網路軟體 "wikilink")
[Category:Python库](https://zh.wikipedia.org/wiki/Category:Python库 "wikilink")

1.