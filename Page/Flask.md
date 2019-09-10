**Flask**是一個使用[Python](../Page/Python.md "wikilink")編寫的輕量級[Web應用框架](https://zh.wikipedia.org/wiki/Web應用框架 "wikilink")。基於Werkzeug [WSGI工具箱和Jinja](https://zh.wikipedia.org/wiki/WSGI "wikilink")2 [模板引擎](https://zh.wikipedia.org/wiki/模板引擎 "wikilink")。**Flask**使用BSD授權。

Flask被稱為“microframework”，因為它使用簡單的核心，用extension增加其他功能。Flask沒有預設使用的資料庫、表單驗證工具。然而，Flask保留了擴增的彈性，可以用[Flask-extension](http://flask.pocoo.org/extensions/)加入這些功能：[ORM](https://zh.wikipedia.org/wiki/對象關係映射 "wikilink")、表單驗證工具、檔案上傳、各種開放式身份驗證技術。

## 歷史

2004年，一群來自世界各地的Python熱衷者組成了Pocoo。\[1\]

Flask的作者是來自Pocoo的Armin Ronacher。本來只是作者的一個愚人節玩笑，不過後來大受歡迎，進而成為一個正式的專案。\[2\]\[3\] Flask受Ruby的影響。

## 特色

  - 內建開發用伺服器和调试器
  - 整合單元測試（unit testing）
  - RESTful 请求分发
  - 使用[Jinja2模板引擎](https://zh.wikipedia.org/wiki/Jinja2 "wikilink")
  - 支援安全 cookies（客户端会话）
  - 100% WSGI 1.0相容
  - 基于 [Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")
  - 詳細的文件、教學
  - [Google App Engine相容](../Page/Google_App_Engine.md "wikilink")
  - 可用Extensions增加其他功能

## 範例

以下的程式為印出Hello World的網頁程式：

``` python3
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World!"

if __name__ == "__main__":
    app.run()
```

## 使用Flask的程式網站

  - [Disqus](../Page/Disqus.md "wikilink") \[4\]

## 參見

  - [比較各網頁框架系統](https://zh.wikipedia.org/wiki/比較各網頁框架系統 "wikilink")
  - [Django](../Page/Django.md "wikilink")
  - [Pylons](../Page/Pylons.md "wikilink")
  - [Bottle](https://web.archive.org/web/20100926130542/http://bottle.paws.de/)

## 外部連結

  - [Flask website](http://flask.pocoo.org/)
  - [Flask documentation](http://flask.pocoo.org/docs/)
  - [Project source code on Github](http://github.com/mitsuhiko/flask)
  - [Flask on PyPI](http://pypi.python.org/pypi/Flask)

## 參考

[Category:自由軟件](https://zh.wikipedia.org/wiki/Category:自由軟件 "wikilink") [Category:Web應用框架](https://zh.wikipedia.org/wiki/Category:Web應用框架 "wikilink") [Category:Python軟體](https://zh.wikipedia.org/wiki/Category:Python軟體 "wikilink") [Category:Python库](https://zh.wikipedia.org/wiki/Category:Python库 "wikilink")

1.
2.
3.
4.