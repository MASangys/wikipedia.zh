**SQLAlchemy**是[Python编程语言下的一款](../Page/Python.md "wikilink")[开源软件](../Page/开放源代码.md "wikilink")。提供了[SQL工具包及](../Page/SQL.md "wikilink")[对象关系映射](../Page/对象关系映射.md "wikilink")（ORM）工具，使用[MIT许可证发行](https://zh.wikipedia.org/wiki/MIT许可证 "wikilink")。

SQLAlchemy“采用简单的Python语言，为高效和高性能的数据库访问设计，实现了完整的企业级持久模型”。SQLAlchemy的理念是，SQL数据库的量级和性能重要于对象集合；而对象集合的抽象又重要于表和行。因此，SQLAlchmey采用了类似于[Java里](../Page/Java.md "wikilink")[Hibernate的](../Page/Hibernate.md "wikilink")[数据映射](http://www.martinfowler.com/eaaCatalog/dataMapper.html)模型，而不是其他ORM框架采用的[Active
Record模型](../Page/Active_Record.md "wikilink")。不过，[Elixir](http://elixir.ematia.de/)和[declarative](https://web.archive.org/web/20110612081816/http://www.sqlalchemy.org/docs/orm/extensions/declarative.html)等可选插件可以让用户使用声明语法。

SQLAlchemy首次发行于2006年2月，并迅速地在Python社区中最广泛使用的ORM工具之一，不亚于[Django的ORM框架](../Page/Django.md "wikilink")。

## 示例

下述示例描述了电影同导演的多对一关系。示例中说明了从用户定义的Python类创建数据表的方法，双方关系实例的创建方法，以及最终查询数据的方法：包括延迟加载和预先加载两种自动生成的SQL查询。

### 结构定义

创建两个Python类以及DBMS中对应的数据表：

``` Python
from sqlalchemy import *
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relation, sessionmaker

Base = declarative_base()

class Movie(Base):
    __tablename__ = 'movies'

    id = Column(Integer, primary_key=True)
    title = Column(String(255), nullable=False)
    year = Column(Integer)
    directed_by = Column(Integer, ForeignKey('directors.id'))

    director = relation("Director", backref='movies', lazy=False)

    def __init__(self, title=None, year=None):
        self.title = title
        self.year = year
    def __repr__(self):
        return "Movie(%r, %r, %r)" % (self.title, self.year, self.director)

class Director(Base):
    __tablename__ = 'directors'

    id = Column(Integer, primary_key=True)
    name = Column(String(50), nullable=False, unique=True)

    def __init__(self, name=None):
        self.name = name

    def __repr__(self):
        return "Director(%r)" % (self.name)

engine = create_engine('dbms://user:pwd@host/dbname')
Base.metadata.create_all(engine)
```

### 插入数据

插入的电影和导演对象可以互相引用：

``` Python
Session = sessionmaker(bind=engine)
session = Session()

m1 = Movie("Star Trek", 2009)
m1.director = Director("JJ Abrams")

d2 = Director("George Lucas")
d2.movies = [Movie("Star Wars", 1977), Movie("THX 1138", 1971)]

try:
    session.add(m1)
    session.add(d2)
    session.commit()
except:
    session.rollback()
```

### 查询

``` Python
alldata = session.query(Movie).all()
for somedata in alldata:
    print somedata
```

SQLAlchemy将向DBMS（忽略差异）发起如下查询：

``` SQL
SELECT movies.id, movies.title, movies.year, movies.directed_by, directors.id, directors.name
FROM movies LEFT OUTER JOIN directors ON directors.id = movies.directed_by
```

并输出：

``` python
Movie('Star Trek', 2009L, Director('JJ Abrams'))
Movie('Star Wars', 1977L, Director('George Lucas'))
Movie('THX 1138', 1971L, Director('George Lucas'))
```

假如设置`lazy=True`（默认值），SQLAlchemy将首先发起对电影列表的查询，并在必要时（延迟加载）逐一查询导演的名称：

``` SQL
SELECT movies.id, movies.title, movies.year, movies.directed_by
FROM movies

SELECT directors.id, directors.name
FROM directors
WHERE directors.id = %s
```

## 参考文献

  - 注释

<!-- end list -->

  -
  - Rick Copeland, [Essential
    SQLAlchemy](http://oreilly.com/catalog/9780596516147/),
    [O'Reilly](https://zh.wikipedia.org/wiki/O'Reilly_Media "wikilink"),
    2008, ISBN 0-596-51614-2

## 参见

  - [Pylons](../Page/Pylons.md "wikilink")
  - [TurboGears](../Page/TurboGears.md "wikilink")

## 外部链接

  - [SQLAlchemy主页](http://www.sqlalchemy.org/)

  -
[Category:Python库](https://zh.wikipedia.org/wiki/Category:Python库 "wikilink")
[Category:对象关系映射](https://zh.wikipedia.org/wiki/Category:对象关系映射 "wikilink")
[Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink")