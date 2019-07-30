**安全断言标记语言 2.0** (**SAML 2.0**) 作为 [SAML](../Page/安全断言标记语言.md "wikilink") 的最新标准， 用来在安全域中交换[身份验证](https://zh.wikipedia.org/wiki/认证 "wikilink")（**Authentication**）数据和 [授权](../Page/授權_\(資安\).md "wikilink")（**Authorization**）数据。SAML 2.0基于[XML](../Page/XML.md "wikilink")协议，使用包含[断言](../Page/斷言_\(程式\).md "wikilink")（Assertions）的[安全令牌在SAML授权方](https://zh.wikipedia.org/wiki/安全令牌 "wikilink")（即身份提供者，[Identity Provider](https://zh.wikipedia.org/wiki/:en:Identity_provider "wikilink")，缩写为IdP）和SAML消费方（即服务提供者，[Service Provider](https://zh.wikipedia.org/wiki/:en:Service_provider "wikilink")，缩写为SP）之间传递委托人（通常是一个终端用户）的信息。SAML 2.0 可以实现基于网络跨域的[单点登录](https://zh.wikipedia.org/wiki/单点登录 "wikilink")(SSO)， 以便于减少向一个用户分发多个身份验证令牌的管理开销。

SAML 2.0在2005年三月正式代替[SAML 1.1成为](https://zh.wikipedia.org/wiki/:en:SAML_1.1 "wikilink")[OASIS标准](https://zh.wikipedia.org/wiki/结构化资讯标准促进组织 "wikilink")。SAML 2.0的关键特征在官方文档SAMLCore\[1\], SAMLBind\[2\],SAMLProf\[3\]和SAMLMeta\[4\]中有详细地记载。

来自超过24个公司及团体的大约30人参与了SAML 2.0的创建。尤其是，[自由联盟将身份联合框架规范](https://zh.wikipedia.org/wiki/:en:Liberty_Alliance "wikilink")（ID-FF）贡献给OASIS，后者成为了SAML 2.0规范的基础。 因此，SAML 2.0实际上是[SAML 1.1](https://zh.wikipedia.org/wiki/:en:SAML_1.1 "wikilink"), [Liberty ID-FF 1.2](https://en.wikipedia.org/wiki/Liberty_Alliance#Liberty_ID-FF_1.2_Archive)和[Shibboleth 1.3三种协议的融合](https://zh.wikipedia.org/wiki/:en:Shibboleth_\(Shibboleth_Consortium\) "wikilink")。

## SAML 2.0断言

断言是一个包含了由SAML授权方提供的0到多个声明（statement）的信息包。SAML断言通常围绕一个主题生成。该主题使用<Subject>声明。SAML 2.0规范定义了三种断言声明并且每一种都和一个主题相关。详细信息如下：

  - 身份验证（Authentication）断言：该断言的主题是在某个时间通过某种方式被认证。
  - 属性（Attribute）断言：该断言的主题和某种属性相关联。
  - 授权决策（Authorization Decision）断言：该断言的主题被允许或者被禁止访问某个资源。

一种非常重要的SAML断言类型叫做“Bearer Assertion”。它主要是用来实现Web浏览器的单点登录。下面是一个短期Bearer断言的例子。一个IdP（https://idp.example.org/SAML2）发布了一个短期Bearer断言到一个SP（https://sp.example.com/SAML2）。该断言包括一个身份验证断言<saml:AuthnStatement>和一个属性断言<saml:AttributeStatement>。SP将使用该属性断言实现访问控制。前缀`saml:`代表SAML 2.0断言的命名空间。

### SAML断言举例

``` xml
<saml:Assertion
   xmlns:saml="urn:oasis:names:tc:SAML:2.0:assertion"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   ID="b07b804c-7c29-ea16-7300-4f3d6f7928ac"
   Version="2.0"
   IssueInstant="2004-12-05T09:22:05Z">
   <saml:Issuer>https://idp.example.org/SAML2</saml:Issuer>
   <ds:Signature
     xmlns:ds="http://www.w3.org/2000/09/xmldsig#">...</ds:Signature>
   <saml:Subject>
     <saml:NameID
       Format="urn:oasis:names:tc:SAML:2.0:nameid-format:transient">
       3f7b3dcf-1674-4ecd-92c8-1544f346baf8
     </saml:NameID>
     <saml:SubjectConfirmation
       Method="urn:oasis:names:tc:SAML:2.0:cm:bearer">
       <saml:SubjectConfirmationData
         InResponseTo="aaf23196-1773-2113-474a-fe114412ab72"
         Recipient="https://sp.example.com/SAML2/SSO/POST"
         NotOnOrAfter="2004-12-05T09:27:05Z"/>
     </saml:SubjectConfirmation>
   </saml:Subject>
   <saml:Conditions
     NotBefore="2004-12-05T09:17:05Z"
     NotOnOrAfter="2004-12-05T09:27:05Z">
     <saml:AudienceRestriction>
       <saml:Audience>https://sp.example.com/SAML2</saml:Audience>
     </saml:AudienceRestriction>
   </saml:Conditions>
   <saml:AuthnStatement
     AuthnInstant="2004-12-05T09:22:00Z"
     SessionIndex="b07b804c-7c29-ea16-7300-4f3d6f7928ac">
     <saml:AuthnContext>
       <saml:AuthnContextClassRef>
         urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport
       </saml:AuthnContextClassRef>
     </saml:AuthnContext>
   </saml:AuthnStatement>
   <saml:AttributeStatement>
     <saml:Attribute
       xmlns:x500="urn:oasis:names:tc:SAML:2.0:profiles:attribute:X500"
       x500:Encoding="LDAP"
       NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:uri"
       Name="urn:oid:1.3.6.1.4.1.5923.1.1.1.1"
       FriendlyName="eduPersonAffiliation">
       <saml:AttributeValue
         xsi:type="xs:string">member</saml:AttributeValue>
       <saml:AttributeValue
         xsi:type="xs:string">staff</saml:AttributeValue>
     </saml:Attribute>
   </saml:AttributeStatement>
 </saml:Assertion>
```

## 参考文献

**一手来源:**

[Category:计算机访问控制](https://zh.wikipedia.org/wiki/Category:计算机访问控制 "wikilink") [Category:联邦身份](https://zh.wikipedia.org/wiki/Category:联邦身份 "wikilink") [Category:身份管理](https://zh.wikipedia.org/wiki/Category:身份管理 "wikilink") [Category:基于XML的标准](https://zh.wikipedia.org/wiki/Category:基于XML的标准 "wikilink") [Category:身份管理系统](https://zh.wikipedia.org/wiki/Category:身份管理系统 "wikilink") [Category:元数据标准](https://zh.wikipedia.org/wiki/Category:元数据标准 "wikilink")

1.
2.
3.
4.