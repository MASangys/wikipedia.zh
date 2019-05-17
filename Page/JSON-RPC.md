JSON-RPC，是一个无状态且轻量级的远程过程调用（RPC）传送协议，其傳遞內容透過
[JSON](../Page/JSON.md "wikilink") 為主。相較於一般的
[REST](https://zh.wikipedia.org/wiki/REST "wikilink") 透過網址（如 `GET
/user`）呼叫遠端伺服器，JSON-RPC 直接在內容中定義了欲呼叫的函式名稱（如 `{"method":
"getUser"}`），這也令開發者不會陷於該使用 PUT 或者 PATCH 的問題之中。
本规范主要定义了一些数据结构及其相关的处理规则。它允许运行在基于
[Socket](../Page/網路插座.md "wikilink")、[HTTP](../Page/超文本传输协议.md "wikilink")
等诸多不同消息传输环境的同一进程中。其使用 [JSON](../Page/JSON.md "wikilink")（RFC
4627）作为数据格式。

## 约定

由于 JSON-RPC 使用
[JSON](../Page/JSON.md "wikilink")，它具有与其相同的类型系统。[JSON](../Page/JSON.md "wikilink")
可以表示四个基本类型（String、Numbers、Boolean 和 Null）和两个结构化类型（Objects 和
Array）。任何时候文档涉及 [JSON](../Page/JSON.md "wikilink")
数据类型，第一个字母都必须大写：Object、Array、String、Number、Boolean、Null。包括
True 和 False 也要大写。

在客户端与任何被匹配到的服务端之间交换的所有成员名字应是区分大小写的。
函数、方法、过程都可以认为是可以互换的。客户端被定义为请求对象的来源及响应对象的处理程序。服务端被定义为响应对象的起源和请求对象的处理程序。

该规范的一种实现为可以轻而易举的填补这两个角色，即使是在同一时间，同一客户端或其他不相同的客户端。 该规范不涉及复杂层。

## 兼容性

JSON-RPC 2.0 的请求对象和响应对象可能无法在較舊的 JSON-RPC 1.0
客户端或服务端正常執行，然而我们可以很容易在两个版本间区分出
2.0。因為 2.0 版本中必須夾帶一個命名为 jsonrpc 且值為 2.0 的欄位。而 1.0 版本是沒有此欄位的。大部分的 2.0
实现应该考虑尝试兼容或者處理 1.0 的对象，即使不是对等的也应给其相关提示。

## 请求对象

发送一个请求对象至服务端代表一个 [RPC](../Page/遠程過程調用.md "wikilink") 调用，一个请求对象包含下列成员：

  - jsonrpc
  - method
  - params
  - id

服务端必须回答相同的值如果包含在响应对象。这个成员用来两个对象之间的关联上下文。在请求对象中不建议使用 NULL 作为 id
值，因为该规范将使用空值认定为未知id的请求。另外，由于JSON-RPC 1.0
的通知使用了空值，这可能引起处理上的混淆。使用小数是不确定性的，因为许多十进制小数不能精准的表达为二进制小数。

### 通知

没有包含 id 成员的请求对象为通知，
作为通知的请求对象表明客户端对相应的响应对象并不感兴趣，本身也没有响应对象需要返回给客户端。服务端必须不回复一个通知，包含那些批量请求中的。

由于通知没有返回的响应对象，所以通知不确定是否被定义。同样，客户端不会意识到任何错误（例如参数缺省，内部错误）。

### 参数结构

[RPC](../Page/遠程過程調用.md "wikilink")
调用如果存在参数则必须为基本类型或结构化类型的参数值，要么为索引数组，要么为关联数组对象。

  - 索引：参数必须为数组，并包含与服务端预期顺序一致的参数值。
  - 关联名称：参数必须为对象，并包含与服务端相匹配的参数成员名称。没有在预期中的成员名称可能会引起错误。名称必须完全匹配，包括方法的预期参数名以及大小写。

## 响应对象

当发起一个 [RPC](../Page/遠程過程調用.md "wikilink") 调用时，除通知之外，服务端都必须回复响应。响应表示为一个
JSON 对象，使用以下欄位：

  - jsonrpc
  - result
  - error
  - id

响应对象必须包含 result 或 error 欄位，但两个欄位不能同时存在。

### 错误对象

当一个 [RPC](../Page/遠程過程調用.md "wikilink")
调用遇到错误时，返回的响应对象必须包含错误成员参数，并且为带有下列成员参数的对象：

  - code
  - message
  - data

\-32768 至 -32000 为保留的预定义错误代码。在该范围内的错误代码不能被開發者自己定義，保留下列以供将来使用。错误代码基本与
[XML-RPC](../Page/XML-RPC.md "wikilink")
[建议](http://xmlrpc-epi.sourceforge.net/specs/rfc.fault_codes.php)的一样

| 錯誤碼               | 訊息                       | 解釋                                   |
| ----------------- | ------------------------ | ------------------------------------ |
| \-32700           | Parse error - 语法解析错误     | 服务端接收到无效的 JSON。该错误发送于服务器尝试解析 JSON 文本 |
| \-32600           | Invalid Request - 无效请求   | 发送的 JSON 內容不是一个有效的请求对象。              |
| \-32601           | Method not found - 找不到方法 | 该方法不存在或无效。                           |
| \-32602           | Invalid params - 无效的参数   | 无效的方法参数。                             |
| \-32603           | Internal error - 内部错误    | JSON-RPC 内部错误。                       |
| \-32000 to -32099 | Server error - 服务端错误     | 预留用于自定义的服务器错误。                       |

除此之外剩余的错误类型代码可供应用程序作为自定义错误。

## 批量调用

当需要同时发送多个请求对象时，客户端可以发送一个包含所有请求对象的数组。

当批量调用的所有请求对象处理完成时，服务端则需要返回一个包含相对应的响应对象数组。每个响应对象都应对应每个请求对象，除非是通知的请求对象。服务端可以并发的，以任意顺序和任意宽度的并行性来处理这些批量调用。

这些相应的响应对象可以任意顺序的包含在返回的数组中，而客户端应该是基于各个响应对象中的 id 成员来匹配对应的请求对象。

若批量调用的 RPC 操作本身非一个有效 [JSON](../Page/JSON.md "wikilink")
或一个至少包含一个值的数组，则服务端返回的将单单是一个响应对象而非数组。若批量调用没有需要返回的响应对象，则服务端不需要返回任何结果且必须不能返回一个空数组给客户端。

## 示例

在以下的例子裡，`-->`表示資料傳送至伺服器，`<--`表示資料傳送至用戶端。

带索引数组参数的rpc调用：

``` javascript
 --> {"jsonrpc": "2.0", "method": "subtract", "params": [42, 23], "id": 1}
 <-- {"jsonrpc": "2.0", "result": 19, "id": 1}
```

``` javascript
 --> {"jsonrpc": "2.0", "method": "subtract", "params": [23, 42], "id": 2}
 <-- {"jsonrpc": "2.0", "result": -19, "id": 2}
```

带关联数组参数的 [RPC](../Page/遠程過程調用.md "wikilink") 调用：

``` javascript
 --> {"jsonrpc": "2.0", "method": "subtract", "params": {"subtrahend": 23, "minuend": 42}, "id": 3}
 <-- {"jsonrpc": "2.0", "result": 19, "id": 3}

 --> {"jsonrpc": "2.0", "method": "subtract", "params": {"minuend": 42, "subtrahend": 23}, "id": 4}
 <-- {"jsonrpc": "2.0", "result": 19, "id": 4}
```

通知：

``` javascript
 --> {"jsonrpc": "2.0", "method": "update", "params": [1,2,3,4,5]}
 --> {"jsonrpc": "2.0", "method": "foobar"}
```

不包含调用方法的 [RPC](../Page/遠程過程調用.md "wikilink") 调用：

``` javascript
 --> {"jsonrpc": "2.0", "method": "foobar", "id": "1"}
 <-- {"jsonrpc": "2.0", "error": {"code": -32601, "message": "Method not found"}, "id": "1"}
```

包含无效 [JSON](../Page/JSON.md "wikilink") 的
[RPC](../Page/遠程過程調用.md "wikilink") 调用：

``` javascript
 --> {"jsonrpc": "2.0", "method": "foobar", "params": "bar", "baz]
 <-- {"jsonrpc": "2.0", "error": {"code": -32700, "message": "Parse error"}, "id": null}
```

包含无效请求对象的 [RPC](../Page/遠程過程調用.md "wikilink") 调用：

``` javascript
 --> {"jsonrpc": "2.0", "method": 1, "params": "bar"}
 <-- {"jsonrpc": "2.0", "error": {"code": -32600, "message": "Invalid Request"}, "id": null}
```

包含无效 [JSON](../Page/JSON.md "wikilink") 的
[RPC](../Page/遠程過程調用.md "wikilink") 批量调用：

``` javascript
 --> [
         {"jsonrpc": "2.0", "method": "sum", "params": [1,2,4], "id": "1"},
         {"jsonrpc": "2.0", "method"
     ]
 <-- {"jsonrpc": "2.0", "error": {"code": -32700, "message": "Parse error"}, "id": null}
```

包含空数组的 RPC 调用：

``` javascript
 --> []
 <-- {"jsonrpc": "2.0", "error": {"code": -32600, "message": "Invalid Request"}, "id": null}
```

非空且无效的 [RPC](../Page/遠程過程調用.md "wikilink") 批量调用：

``` javascript
 --> [1]
 <-- [
     {"jsonrpc": "2.0", "error": {"code": -32600, "message": "Invalid Request"}, "id": null}
     ]
```

无效的 [RPC](../Page/遠程過程調用.md "wikilink") 批量调用：

``` javascript
 --> [1,2,3]
 <-- [
     {"jsonrpc": "2.0", "error": {"code": -32600, "message": "Invalid Request"}, "id": null},
     {"jsonrpc": "2.0", "error": {"code": -32600, "message": "Invalid Request"}, "id": null},
     {"jsonrpc": "2.0", "error": {"code": -32600, "message": "Invalid Request"}, "id": null}
     ]
```

[RPC](../Page/遠程過程調用.md "wikilink") 批量调用：

``` javascript
 --> [
     {"jsonrpc": "2.0", "method": "sum", "params": [1,2,4], "id": "1"},
     {"jsonrpc": "2.0", "method": "notify_hello", "params": [7]},
     {"jsonrpc": "2.0", "method": "subtract", "params": [42,23], "id": "2"},
     {"foo": "boo"},
     {"jsonrpc": "2.0", "method": "foo.get", "params": {"name": "myself"}, "id": "5"},
     {"jsonrpc": "2.0", "method": "get_data", "id": "9"}
     ]
 <-- [
     {"jsonrpc": "2.0", "result": 7, "id": "1"},
     {"jsonrpc": "2.0", "result": 19, "id": "2"},
     {"jsonrpc": "2.0", "error": {"code": -32600, "message": "Invalid Request"}, "id": null},
     {"jsonrpc": "2.0", "error": {"code": -32601, "message": "Method not found"}, "id": "5"},
     {"jsonrpc": "2.0", "result": ["hello", 5], "id": "9"}
     ]
```

所有都为通知的 [RPC](../Page/遠程過程調用.md "wikilink") 批量调用：

``` javascript
 --> [
     {"jsonrpc": "2.0", "method": "notify_sum", "params": [1,2,4]},
     {"jsonrpc": "2.0", "method": "notify_hello", "params": [7]}
 ]
```

## 扩展

以 [RPC](../Page/遠程過程調用.md "wikilink")
开头的方法名预留作为系统扩展，且必须不能用于其他地方。每个系统扩展都应该有相关规范文档，所有系统扩展都应是可选的。

## 外部链接

  - [JSON-RPC 2.0
    规范(中文版)](http://wiki.geekdream.com/Specification/json-rpc_2.0.html)
  - [jsonrpc.org/specification](http://www.jsonrpc.org/specification)

[Category:JSON](https://zh.wikipedia.org/wiki/Category:JSON "wikilink")
[Category:Web服务](https://zh.wikipedia.org/wiki/Category:Web服务 "wikilink")
[Category:遠端程序呼叫](https://zh.wikipedia.org/wiki/Category:遠端程序呼叫 "wikilink")