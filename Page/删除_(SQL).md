在[SQL](../Page/SQL.md "wikilink")裡，**DELETE**语句用于从表中删除一个或多个数据。使用它需要定义一个子集作为条件，否则表中的所有数据都会被删除。

## 用法

`DELETE` 语句的一半语法为:

  -
    **`DELETE`** `FROM` *表名* \[**`WHERE`** 条件\]

该语句能够使表中所有满足[`WHERE`子句条件的](https://zh.wikipedia.org/wiki/Where_\(SQL\) "wikilink")[元组都会被删除](https://zh.wikipedia.org/wiki/元组 "wikilink")。如果缺少 `WHERE` 子句，则表中所有的元组都会被删除。

执行一条 `DELETE` 语法能够触发[触发器而在其他表中执行删除操作](https://zh.wikipedia.org/wiki/数据库触发器 "wikilink")。例如，有[外码相联系的两个表](https://zh.wikipedia.org/wiki/外码 "wikilink")，如果作为被参照关系的表中的元组被删除，则作为参照关系的表也会被删除，以保证关系的[参照完整性](https://zh.wikipedia.org/wiki/参照完整性 "wikilink")。

## 示例

  - 从表 *pies*中删除*flavour*为*Lemon Meringue*的元组:

<!-- end list -->

``` sql
DELETE FROM pies WHERE flavour='Lemon Meringue';
```

  - 从表*trees*中删除*height*低于80的元组.

<!-- end list -->

``` sql
DELETE FROM trees WHERE height < 80;
```

  - 删除表*mytable*中所有的元组:

<!-- end list -->

``` sql
DELETE FROM mytable;
```

  - 删除表 *mytable*中符合子查询结果的元组:

<!-- end list -->

``` sql
DELETE FROM mytable WHERE id IN (SELECT id FROM mytable2)
```

## 参考

  -
  -
[Category:SQL关键字](https://zh.wikipedia.org/wiki/Category:SQL关键字 "wikilink")