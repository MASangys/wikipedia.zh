**Java认证和授权服务**（**Java Authentication and Authorization
Service**，简称**JAAS**）是一个[Java](../Page/Java.md "wikilink")以用户为中心的安全框架，作为Java以代码为中心的安全的补充。自[Java运行环境（JRE）](../Page/Java虚拟机.md "wikilink")
1.4起，JAAS就被集成到JRE，而之前是作为一个扩展库由Sun公司提供的。

JAAS的主要目標是分開使用者認證的議題，這樣就可以個別地管理他們。

## 管理

對系統管理者而言，JAAS有兩種設定檔：

  - **\*.login.conf**：詳述如何插入廠商提供的用戶認證模塊（Login Module）到特定應用程式裡。
  - **\*.policy**：詳述哪個身份（使用者或程式）獲得哪種許可

例如，一個有這種**login.conf**的檔案指出不同的認證機制要如何執行以認證使用者。

`   PetShopApplication {`
`      com.sun.security.auth.module.LdapLoginModule sufficient;`
`      com.foo.SmartcardLoginModule                 requisite;`
`      com.sun.security.auth.module.UnixLoginModule required debug=true;`
`   };`

## 应用程序接口

對應用程式開發者而言，JAAS是一個標準的程式庫，並提供了：

  - 身份（*Principal*）和一系列证书（*Subject*）表示。
  - 认证服务，将调用你的应用程序的回调接口请求用户的信息，如用户名和口令。认证服务将返回一个新的*Subject*对象。
  - 授权服务，验证一个Subject是否由管理员授予了某个权限。

## 安全系统集成

對安全系統整合者而言，JAAS提供的介面可以：

  - 提供你的身分名字空間給應用程式。
  - 将证书附加在线程上(*Subject*)。
  - 有关登录模块的开发。你的模块调用回调函数查询用户，检查他们的应答并生成*Subject*。

## 参见

  - [可插入的认证模块](https://zh.wikipedia.org/wiki/可插入的认证模块 "wikilink")（）
  - [Apache Shiro](../Page/Apache_Shiro.md "wikilink")
  - [EJB\#安全](https://zh.wikipedia.org/wiki/EJB#安全 "wikilink")

## 外部链接

  - [JAAS主页](http://java.sun.com/products/jaas/)

  - [JAAS教程1](http://java.sun.com/j2se/1.5.0/docs/guide/security/jaas/tutorials/index.html)

  - [JAAS教程2](http://www.javaranch.com/journal/2008/04/Journal200804.jsp#a6)

  - [jGuard : open source project which can secure standalone or web
    applications based on
    JAAS](https://archive.is/20060206022946/http://www.jguard.net/)

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")
[Category:認證方法](https://zh.wikipedia.org/wiki/Category:認證方法 "wikilink")