**Nemerle**，是微軟公司提出的.NET平台上的新語言，由Wrocław大學的Kamil Skalski、Michał Moskal、Prof. Leszek Pacholski、Paweł Olszt等人發明。

## 範例

### Hello, World\!

一個傳統的["Hello World\!"可以被寫成C](https://zh.wikipedia.org/wiki/Hello_world_program "wikilink")\#-like的風格：

`class Hello {`
`  static Main () : void {`
`    System.Console.WriteLine("Hello, world!");`
`  }`
`}`

或更簡捷：

`System.Console.WriteLine("Hello, world!");`

### 巨集的例子

巨集可以讓你擁有自己的模板（boilerplate），具有靜態檢查功能。

#### 資料庫存取

例如，使用Nemerle macros可以將SQL可成：

`ExecuteReaderLoop ("SELECT firstname, lastname FROM employee WHERE firstname = $myparm", dbcon,`
`{`
`  System.Console.WriteLine ("Name: {0} {1}", firstname, lastname) `
`});`

取代

`string sql = "SELECT firstname, lastname FROM employee WHERE firstname = :a";`
`NpgsqlCommand dbcmd = new NpgsqlCommand(sql, dbcon, dbtran);`
`dbcmd.Parameters.Add("a", myparm);`

`NpgsqlReader reader = dbcmd.ExecuteReader();`

`while(reader.Read()) {`
`  string firstname = reader.GetString (0);`
`  string lastname = reader.GetString (1);`
`  System.Console.WriteLine ("Name: {0} {1}", firstname, lastname) `
`}`
`reader.Close();`
`dbcmd.Dispose();`

上述的程式碼不僅只是隱藏部份的動作，更可增加編譯器在查詢字串上的效率。這裡使用的變數，由資料庫回傳行資料（columns）。ExecuteReaderLoop巨集會產生一些你想要的粗略的程式碼。而且，連結資料庫並檢查SQL語法是否合法。

#### 新語言建構

使用Nemerle巨集（macros）可以產生更新式的語法（syntax）：

`macro ReverseFor(i, begin, body) `
`syntax("ford", "(", i, ";", begin, ")", body)`
`{`
`  <[ for($i = $begin; $i >= 0; $i--)$body ]>`
`}`

定義一個巨集ford(EXPR ; EXPR)EXPR syntax可被寫成

`ford(i ; n)print (i);`

### Nemerle結合ASP.NET

Nemerle可以被直接嵌入ASP.NET:

`<%@ Page Language="Nemerle" %>`
` <script runat="server">`
` `
`     Page_Load(_ : object, _ : EventArgs): void {`
`         Message.Text = $"You last accessed this page at: $(DateTime.Now)";`
`     }`
` `
`     EnterBtn_Click(_ : object, _ : EventArgs): void {`
`         Message.Text = $"Hi $(Name.Text), welcome to ASP.NET!";`
`     }`
` `
` </script>`
` `
` <html>`
`     <body>`
`         <form runat="server">`
`             Please enter your name: <asp:TextBox ID="Name" runat="server" />`
`             <asp:Button OnClick="EnterBtn_Click" Text="Enter" runat="server" />`
` `
`             <p><asp:Label ID="Message" runat="server" /></p>`
`         </form>`
`     </body>`
` </html>`

...或者儲成單一檔案格式，一行完成：

`<%@ Page Language="Nemerle" Src="test.n" Inherits="Test" %>`

### PInvoke

Nemerle有更多**原生平台函式庫**（native platform libraries）。風格非常類似C\#'s和其它[.NET平台上的語言](https://zh.wikipedia.org/wiki/Microsoft_.NET "wikilink")。下面是最簡單的例子：

`using System;`
`using System.Runtime.InteropServices;`

`class PlatformInvokeTest`
`{`
`    [DllImport("msvcrt.dll")]`
`    public extern static puts(c : string): int;`
` `
`    [DllImport("msvcrt.dll")]`
`    internal extern static _flushall() : int;`
`    `
`    public static Main() : void`
`    {`
`        _ = puts("Test");`
`        _ = _flushall();`
`    }`
`}`

## 外部連結

  - [Language Homepage](http://nemerle.org/)
  - [The official documentation](https://web.archive.org/web/20071009155042/http://nemerle.org/Documentation#Learning_Nemerle#Language_documentation)

<!-- end list -->

  - [Nemerle at 99 Bottles of Beer](http://www.99-bottles-of-beer.net/language-nemerle-869.html)
  - [Interesting entries about Nemerle from akiramei's diary (in Japanese)](http://d.hatena.ne.jp/akiramei/searchdiary?word=%2a%5bNemerle%5d)

[Category:.NET程式語言](https://zh.wikipedia.org/wiki/Category:.NET程式語言 "wikilink")