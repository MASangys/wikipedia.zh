**PDO**（PHP Data Objects）是一種在[PHP](../Page/PHP.md "wikilink")裡連接資料庫的使用介面\[1\]。PDO與mysqli\[2\]曾經被建議用來取代原本PHP在用的mysql\[3\]相關函數，基於資料庫使用的安全性，因為後者欠缺對於[SQL資料隱碼的防護](https://zh.wikipedia.org/wiki/SQL資料隱碼攻擊 "wikilink")\[4\]。

## 範例

以下是一個簡單的 PDO 更新交易資料庫的程式碼，其中採用了預處理的方式將執行語句與參數隔離：

``` php
<?php
    $query = "UPDATE `payment` SET `status` = '2', `id` = ?, `method` = ? WHERE `payment_id` = ? and `status` = '1'";
    $stmt = $this -> pdo -> prepare($query);
    $stmt -> bindParam(1, $id);
    $stmt -> bindParam(2, $type);
    $stmt -> bindParam(3, $payment_id);
    $result = $stmt -> execute();
?>
```

## 資料庫支援

  - firebird
  - informix
  - mysql
  - mssql
  - odbc
  - pgsql
  - sqlite

## 参考文献

## 外部連結

  - [测试PDO函数在线](http://micmap.org/php-by-example/zh/function/pdo)

[Category:PHP](https://zh.wikipedia.org/wiki/Category:PHP "wikilink")

1.
2.
3.
4.