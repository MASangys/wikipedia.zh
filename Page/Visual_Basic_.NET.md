**Visual Basic .NET**（**VB.NET**）是[.NET Framework框架下的一种](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")[多重编程范式](https://zh.wikipedia.org/wiki/多重编程范式 "wikilink")[高级语言](https://zh.wikipedia.org/wiki/高级语言 "wikilink")。

VB.NET，是[微软公司于](https://zh.wikipedia.org/wiki/微软公司 "wikilink")2002年作为原有的[Visual Basic的继承者而推出](../Page/Visual_Basic.md "wikilink")。虽然自2005年起，语言名称中的“.NET”就已经被去掉了。但为了与VB 6.0及以前版本的Visual Basic进行区分，“Visual Basic .NET”的名字仍然被社会公众用来指代VB 7.0及以后的Visual Basic。VB.NET与[C\#同为](../Page/Microsoft_Visual_C♯.md "wikilink").Net Framework框架下两种主要的程序设计语言，都是为了调用.Net Framework的类库资源，因此两种语言具有很高的对应性，数据类型、控制结构与语言特性都存在一一对应，容易把源代码从一种语言对译为另一种语言。

微软公司的集成开发环境[Visual Studio是最为广泛使用的VB](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink").NET开发工具。然而Visual Studio的大部分版本都是价格不菲的[商业软件](https://zh.wikipedia.org/wiki/商业软件 "wikilink")，除了[Express版本和](https://zh.wikipedia.org/wiki/Visual_Studio_Express "wikilink")[Visual Studio Community](https://zh.wikipedia.org/wiki/Visual_Studio_Community "wikilink")（以上两者皆为[免费软件](https://zh.wikipedia.org/wiki/免费软件 "wikilink")）。除了Visual Studio，[SharpDevelop](../Page/SharpDevelop.md "wikilink")和[Mono](../Page/Mono.md "wikilink")也是可用的VB.NET开发环境。

## 数据类型与字面常量表示

VB.Net的数据类型，实际上是.Net Framework定义的数据类型。

| 类型名      | 字节长度             | 取值范围                                               | 表示法                          |
| -------- | ---------------- | -------------------------------------------------- | ---------------------------- |
| Short    | 2字节              | \-32768\~32767                                     | number S                     |
| Integer  | 4字节              | \-2 147 48 3 648\~2 147 483 647                    | number I                     |
| Long     | 8字节              | \-9223372036854775808 \~ 9223372036854775807       | number& numberL              |
| Single   | 4字节              | 7位有效数字                                             | num\! numberF                |
| Double   | 8字节              | 15/16位有效数字                                         | id\# numberR                 |
| Decimal  | 16字节             | 29位有效数字                                            | id@ numberD                  |
| Currency | 8字节              | 小数点右4位，左15位                                        | number@                      |
| Byte     | 1字节              | 0-255                                              |                              |
| Char     | 2字节              | UTF-16字符                                           | "d"C                         |
| DateTime | 8字节              | 0001-01-01T00:00:00.000 \~ 9999-12-31T23.59.59.999 | \#4/102008 06:01:23.456 PM\# |
| Boolean  | 2字节              | True(-1) False(0)                                  |                              |
| String   | UBSTR, 字符数量\*2+2 | UTF-16字符串                                          | "Hello"$                     |
| Object   | 4字节              |                                                    |                              |
| Variant  |                  |                                                    |                              |

此外，还有SByte、UShort、UInteger、ULong等无符号数据类型。

\&O123表示八进制；\&H123表示十六进制。

## 语法特性

VB使用的名字是大小写不敏感的。但是，[CLR是大小写敏感的](https://zh.wikipedia.org/wiki/CLR "wikilink")。所以建议保持一致的大小写。

### 空值

VB自版本5以后的数据类型来源于[COM](https://zh.wikipedia.org/wiki/COM "wikilink")，而其根源是[OLE数据类型](https://zh.wikipedia.org/wiki/OLE "wikilink")。

  - Nothing（C\#的null）表示Object类型的变量（即COM中的IDispatch指针，VB中的所有类和控件均由IDispatch派生）为空。对于引用型变量，表示未绑定到一个物理实体对象。
  - Empty表示VARIANT类型变量未初始化（即COM中的VARIANT结构体中的VT成员值为VT_EMPTY）。
  - Null表示VARIANT类型变量已初始化，其值为Null，这时COM中的VARIANT结构体中的VT成员值为VT_NULL。通常是所要表示的值不存在或者有问题不合规。实际上，一个引用型变量如果被赋值为Null，则它绑定的地址为0x0000
  - 零长度字符串（空字符串）需要分配内存，只不过内存（即COM中的BSTR字符串）头4个字节记录的长度为0。VB.Net定义了一个Public Shared Readonly Empty As String = ""。对于仅声明但未实例化的String对象，实际上都绑定到String.Empty对象上。
  - vbNullString没有分配数据内存，实际上定义为Dim \*vbNullString As String = Nothing。但又规定了字符串比较时vbNullString = ""为真。

在与空值做比较时，需要区分各种不同用法：

  - 对象（引用型变量）是否为Nothing，可用IsNothing（对象名），对象名Is Nothing，对象名IsNot Nothing等
  - 在比较数据库的一个字段的值是否为空，在.Net中应该用IsDBNull函数或Convert.IsDBNull方法。例如IsDBNull(recordSet("Column1").Value))或者recordSet("Column1").Value=DBNull.Value。因为DBNull是派生自Object的一个类，DBNull.Value是它的唯一的值。而数据库中的字段值，在DataRow中总是表示为Object，永远不可能为nothing。
  - 比较字符串对象是否为空串，实际上规定了下述三种是等效的：
      - 对象名 = ""
      - 对象名 = String.Empty
      - 对象名 = vbNullString

对于可空类型，实际上是Nullable(Of T)泛型结构。例如，下述三行等价：

`Dim ridesBusToWork1? As Boolean`
`Dim ridesBusToWork2 As Boolean?`
`Dim ridesBusToWork3 As Nullable(Of Boolean)`

比较表达式someVar = Nothing的结果永远是Nothing，应该用someVar.HasValue()方法去判断是否为空，或者用Is或IsNot关键字。

### 数组

``` vbnet
Dim arr([upperLimit]) As dataType = new dataType([upperLimit]) {[initialValues]} '声明数组
arr(index) = value   '使用数组
```

数组的下标开始自0，这遵从了.NET的标准。如果不指定数组的下标上界，则为动态数组，其长度可以动态调整。

### 结构控制语句

#### 分支语句

  - If语句

<!-- end list -->

``` vbnet
If 条件 Then
    语句
ElseIf 条件 Then
    语句
Else
    语句
End If
```

  - Switch语句

<!-- end list -->

``` vbnet
Select Case Variable
     Case Value1
         Statements
     Case Value2
         Statements
     Case Value3
         Statements
     ...
     Case Else
         Statements
End Select
```

#### 循环语句

包括下述几种：

  - For...Next循环

<!-- end list -->

``` vbnet
For varName = 初值 To 终值 [Step 步长]
    循环体语句
Next varName
```

  - Do循环

<!-- end list -->

``` vbnet
Do [{While|Until} condition]
   statements
   [Exit Do]
Loop
```

或

``` vbnet
Do
  statements
  [Exit Do]
  statements
Loop [{While|Until} condition]
```

  - While循环

<!-- end list -->

``` vbnet
While condition
   statements
   [Exit While]
   statemenst
End While
```

  - For Each...Next循环

<!-- end list -->

``` vbnet
For Each element in group
    statements
Next [element]
```

### Yield语句

实现迭代器遍历一个序列，每次获取一个返回值。迭代器可以作为一个方法或属性的get访问器，其中的Yield 语句返回迭代器的返回值，并记住当前执行的位置。下次再调用迭代器，从该执行位置恢复执行，直至迭代器代码执行完或者遇到Exit Function或Return语句。编译器把迭代器作为一个[状态机的类](https://zh.wikipedia.org/wiki/状态机 "wikilink")。

``` vbnet
Sub Main()
    Dim days As New DaysOfTheWeek()
    For Each day As String In days
        Console.Write(day & " ")
    Next
    ' Output: Sun Mon Tue Wed Thu Fri Sat
    Console.ReadKey()
End Sub

Private Class DaysOfTheWeek
    Implements IEnumerable

    Public days =
        New String() {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"}

    Public Iterator Function GetEnumerator() As IEnumerator _
        Implements IEnumerable.GetEnumerator

        ' Yield each day of the week.
        For i As Integer = 0 To days.Length - 1
            Yield days(i)
        Next
    End Function
End Class
```

### 物件導向

物件導向時，類的聲明範例：

``` vbnet
Public Class className [Inherits bassClassName]
    Public varName As Integer '資料成員
    Public [ReadOnly/WriteOnly] Property propertyName() As Integer '屬性
        Public Get
            Return m_var
        End Get
        Public Set(ByVal value As Integer)
            m_var=value
        End  Set
    End Property
    Public Sub subName(ByVal param1 As Integer) '方法
    End Sub
    Public Function funcName(ByVal param2 As Integer ) As Integer '函數
         Return 101
    End Function
    [atrributive_list][accessibiliby][Shadows]Event eventName([Parameter]) [Implements interfaces.event] '事件
    Public Sub new([Parameter]) '類的構造子(constructor)，可以有多個（即可以重載）
    End Sub
End Class
```

上述示例中的Public關鍵字表示可存取性(accessibility)，表示可以被任意代碼存取；它可以替換為其他的可存取性：Private（僅限該Class自身存取）、Friend（僅限同一項目中的代碼存取）、Protected（僅限自身或衍生類別存取）、Protected Friend等。如果使用ReadOnly，則表示資料成員或屬性是唯讀；WriteOnly表示只寫。Shadows關鍵字表示覆蓋父類中同名（但不一定參數相同）的Event。使用關鍵字MyBase引用基礎類別。

類可用繼承修飾詞：NotInheritable關鍵字，表示該類不能做基礎類別；MustInherit關鍵字，表示這是一個抽象類。

類的屬性與方法能否被覆蓋：Overridable關鍵字表示可被覆蓋；Overrides關鍵字表示覆蓋了基礎類別中同名的方法或屬性；NotOverridable關鍵字表示不可覆蓋；MustOverride表示方法或屬性僅聲明沒有實現，這時該類必須有MustInherit修飾詞，是一個抽象類或者介面，僅能包含屬性、方法、函數的聲明。

如同其他.Net語，Visual Basic不允許多重繼承，但可以同時實現多個interface。

#### 介面（interface）

介面是一類特殊的抽象類，不能包括可執行代碼與類的資料成員的聲明：

``` vbnet
    Interface interfaceName
       Event eventName([param])
       Property [ReadOnly/WriteOnly] propertyName As typeName
       Function funcName([param]) As returnTypeName
    End Interface
```

介面中這些成員都強制是Public可存取性。

實現一個介面，使用Implements關鍵字：

``` vbnet
Public Function GetEnumerator() As IEnumerator _
        Implements IEnumerable.GetEnumerator
```

#### 多型（Polymetric）

基於繼承的[多型](https://zh.wikipedia.org/wiki/多型_\(物件導向程式設計\) "wikilink")，是指用基礎類別類型的變數繫結不同的子類別物件，這樣呼叫基礎類別變數的方法，在[執行時動態確定實際執行了哪個衍生類別的同名的方法](https://zh.wikipedia.org/wiki/執行時 "wikilink")。多型的優點是可以針對基礎類別（或介面）的方法來寫一個通用的過程或者資料容器，適用於各種不同的衍生類別的具體實現。

#### 委托（Delegate）

委託本質上是一種Class，衍生自System.Delegate，包含了三部分資料：一個類物件的地址、該物件所屬類的一個方法的地址，以及另一個委託的引用（reference）。前两部分可以實現對一個類物件的方法的呼叫；第三部分把委託形成一個連結串列，使其依次被呼叫執行。如下聲明了一個委託：

` Delegate Sub PlayHandler(ByVal sender As Object, ByVal e As System.EventArgs)`

委託常用於事件處理（Event Handler）。[.Net Framework的事件是類的屬性](https://zh.wikipedia.org/wiki/.Net_Framework "wikilink")（實際上是一個巢狀類），用於封裝參數格式固定的委託；該委託的參數總是為(ByVal sender As Object, ByVal e as System.EventArgs)，返回值為void（即Sub類型）。例如：

` Public Class clsName`
`    Public Event monitor As PlayHandler`
` End Class`

對一個具體的實例，可以給它的事件在運行時動態追加上一個或多個事件處理函數：

` AddHandlerins.monitor, AddressOf playHandle_1`

AddHandle指向引發事件的對象；AddressOf把一個函數或過程名轉化為一個隱式創建的委託實例，用於確定該事件物件所要呼叫的事件處理程序。在AddressOf關鍵字可隱式創建一個引用特定過程的委託的實例。

程序可以抛出一個事件：

` Dim WithEvents e As New System.EventArgs`
` Dim ins As New clsName`
` RaiseEvent ins.monitor(ins,e)`

#### using語句

using语句，定义一个范围，在范围结束时自动释放对象所占用的资源。

`-{}-`
`Using conn As New SqlConnection'當在某個代碼段中使用了類別的實例，而希望無論因為什麼原因，只要離開了這個代碼段就自動呼叫這個類別實例的Dispose。`
`   '执行代码`
`End Using`

#### 自动属性

例如：

`Public Property pa As String=""`

#### 對象初始化器

集合（Collection）对象的初始化与普通类对象的属性初始化，分别使用From与With关键字。例如：

``` vbnet
    Public Class Person
        Public Property age As Integer
        Public Property Name As String
    End Class

    Dim personList As New List(Of Person) From {
        New Person With {.Name = "Qiang", .age = 24},
        New Person With {.Name = "Wei", .age = 42}
        }
```

### 匿名类型

例如：

`Dim people = New With {.name="kyo", .age=22}`

### 匿名函数或lambda表达式

即无名的函数或过程，作为表达式的值。可以写为一行或多行。例如：

`Dim func1=Function(i As integer) i+10`
`Dim action = sub()`
`  End Sub`
`Dim func2 = Function()`
`  End Function`

可以在声明匿名函数的同时调用它。单行的lambda表达式不能使用Return关键字，其返回类型是自动推导得出；其参数要么都是用As关键字指明类型，要么全部是自动推导出类型。

lambda表达式在定义时可以使用所在上下文（context，即C++语言的闭包closure）的局部变量、参数、属性、Me等等的值，即使lambda表达式离开了定义时所在的context，这些被使用的局部变量等的值仍然有效。这是因为lambda表达式在定义时把所用到的context的值保存到它自己的定义类中。lambda表达式可以嵌套定义。

### 扩展方法

例如：

`Imports System.Runtime.CompilerServices`
`<Extension()> Public Function funcName(ByVal ins As className) As String`
`    'Do something`
`End Function`

### 异常处理

``` vbnet
Try
   ' write the condition here
Catch ex As Exception When condition
   ' Handle Exception when a specific condition is true
Catch ex As Exception
   ' Handle Exception
Finally
   ' Cleanup, close connections etc
   ' NB this code is always executed regardless of if an Exception was raised or not!
End Try
```

### LINQ

`From element [ As type ] In collection [, element2 [ As type2 ] In collection2 [, ... ] ] [Where 表达式]`

### 例子（Hello World）

这里给出了一个Hello World的例子。通过它们您可以更好地理解Visual Basic的特性。（此源代码运行于命令行下）

``` vbnet
Module Mdl_Main
    Sub Main()
        Console.WriteLine("Hello World")
    End Sub
End Module
```

这个程序能输出*Hello World*。

``` vbnet
Module Mdl_Main
```

第一行是模块定义，命名空间的定义一般可以省略。VB.NET中，所有函数，过程与变量的声明都必须在模块或者类的内部，而不能直接存在于命名空间内部。

``` vbnet
Sub Main()
```

第二行定义了名为Main的过程。一般来说，“Sub Main()”是程序的入口点。

``` vbnet
Console.WriteLine("Hello World")
```

第三行输出“Hello World”。

``` vbnet
End Sub
```

第四行结束了过程Main的定义。

``` vbnet
End Module
```

第五行结束了模块Mdl_Main的定义。

### 与旧版VB比较

与旧版[VB](https://zh.wikipedia.org/wiki/VB "wikilink")（VB 6.0及以前）相比较，VB.NET明显受到了.Net Framework中其他语言思想的影响。与旧版VB相比，VB.NET更加严格而不失灵活。

  - `Long`类型与`Integer`类型的长度分别倍增，达到了64位和32位。
  - [事件的处理过程不再依赖于名称](https://zh.wikipedia.org/wiki/事件驱动 "wikilink")，而是通过`Handle`子句进行静态绑定或者在运行时进行动态绑定。例如处理按钮控件`Button1`的`Click`事件：

Visual Basic 6：（注意此过程的名称不可改变）

``` vb
Private Sub Button1_Click()
    'Work to do
End Sub
```

VB.NET：（注意此过程的名称无关紧要）

``` vbnet
Private Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
    'Work to do
End Sub
```

  - 很多原有的实现特殊功能的语句被相应定义好的函数替代。这减少了关键字的使用（如`Open()`函数取代`Open`语句，窗体的`Print()`方法取代`Print`语句）。同时，被封装好的、功能更强大的、通用于.Net Framework框架的类被推荐用来取代原有的语句。
  - 对一些更强大的语法特性的支持，如：[LINQ](../Page/语言集成查询.md "wikilink")，[Lambda表达式](https://zh.wikipedia.org/wiki/Lambda表达式 "wikilink")（Visual Basic 2010起支持多行Lambda）。
  - 同样使用`:`作为一行中分行的符号，`_`作为续行符。但是VB.NET自Visual Basic 2012起允许在函数的定义与调用中不加`_`地用换行分隔各个参数。

### 与C\#等C家族语言比较

与C家族语言相比，VB.NET则较多保留了VB的特征，比如：

  - 与C家族语言统一使用`{`、`}`定义语句块不同，VB.NET每种语句块都有对应的开头与结尾。如`If ... Else ... End If`，`Class ... End Class`。
  - VB.NET定义变量使用`Dim`关键字，同时使用`Public`、`Private`或`Protected`表明作用域时可以省略`Dim`。
  - VB.NET表示变量类型的方式是在变量名后附加`As Type`（Type为变量类型），而C家族语言是在变量名之前书写类型名，无论在定义变量时还是在函数与形参的声明时都是这样。
  - VB.NET中有没有返回值的特殊子过程`Sub`。VB.NET中没有`void`类型，C\#中返回值为`void`的函数对应了VB.NET中的`Sub`。
  - VB.NET中有一种特殊的类型`Module`，相当于C\#中的`static class`。

下面这两份功能一致的代码展现出了VB.NET与C\#的很多不同之处：

  - VB.NET：

<!-- end list -->

``` vbnet
Namespace N
    'Comment
    Module M
        Public Function GetSum(arr() As Integer) As Integer
            Dim Sum = 0 'Auto Type Infer
            Dim i As Integer

            For Each i In arr
                Sum += i
            Next

            Return Sum
        End Function
    End Module

    Class C
        Private v As Integer

        Public Function F() As Integer
            Return v * v
        End Function

        Public Sub S(value As Integer)
            Me.v = value
        End Sub

        Public Sub New() 'Constructor
            Me.v = 0
        End Sub
    End Class

End Namespace
```

  - C\#：

<!-- end list -->

``` csharp
namespace N
{
    //Comment
    static class M
    {
        int GetSum(int[] arr)
        {
            var Sum = 0;
            int i;

            foreach(i in arr)
            {
                Sum += i;
            }

            return Sum;
        }
    };

    class C
    {
    private:
        int v;
    public:
        int F()
        {
            return v * v;
        }

        void S(int value)
        {
            this.v = value;
        }

        C() //Constructor
        {
            this.v = 0;
        }
    };
}
```

VB.NET与C\#同为.Net Framework的两大主力程序设计语言，尽管有着各种各样的不同，两者最终都编译为[MSIL并由](https://zh.wikipedia.org/wiki/MSIL "wikilink")[CLR运行](https://zh.wikipedia.org/wiki/CLR "wikilink")。两者功能基本一致，并可以在.Net Framework框架下方便地互相调用与协同开发。关于两者的优劣一直见仁见智。

### 调用C语言函数的规范

C语言编写的DLL文件，VB在调用时，需要注意：对于C语言的数组指针，在VB中调用时应将数组的首元素传递给DLL。不能直接传递数组名,因为如果传递数组名,VB实际会传一个复杂的结构类型给DLL。C函数无法确定数组大小，通常用另一个参数指出数组的大小。

``` vb
<DllImport("D:\GenericMESDLL.dll", CharSet:=CharSet.Unicode, CallingConvention:=CallingConvention.Cdecl)>
Public Sub test(ByVal param As Integer, ByRef OK As Integer)
End Sub

'下述方法只能使用_stdcall调用约定：
Public Declare Function test1 Lib "D:\PackingDLL.dll" Alias "_test@4" (ByVal param As Integer) As Integer
```

## 历史

### 2002年Visual Basic .NET（VB 7.0）

Visual Basic .NET（VB 7.0）是随Visual C\#和ASP.NET一起在2002年发布的最初始的VB.NET版本。C\#被大力宣传为微软对付JAVA的王牌，受到媒体极力关注。然而VB.NET（有时被称为VB 7.0）影响面不广，这导致VB社区之外很少人关注它。那些试用过此版VB.NET的人在层层幕布下发现一个强大却艰深的语言，而且还有不少缺点，例如它的运行阶段组件（Run-Time）比VB6大了十倍，存储器使用量也大大增加。

VB 7.0引起了广泛的争议，主要原因在于对旧版VB的改动过大。许多资深的VB程序员抱怨VB.NET，因为VB.NET 2002丢掉了许多不再发行的VB6中使用的大量语言结构和用户界面功能，并且对保留下来的东西也改变了语意。例如，在VB.NET参数默认是以值方式传递的，而不是以引用方式。VB.NET 2002被半嘲讽半认真地称为Visual Fred或VB DOTNOT。作为对2005年3月8日微软拒绝为VB6再提供维护与支持的回应，当月月底出现了反对者的请愿\[1\]。

VB.NET的支持者们认为新语言在很多方面比旧版本更为强大，比如它以相比早期版本更为自然、紧密和完全的方式地加入了现代面向对象的编程范式。反对者们有不同意见，虽然VB6对对象模型支持有缺点，但是二次开发升级到VB.NET的成本比升级后的收益要高得多。而开发软件发布因特网版本的独立程序员也对VB.NET的RunTime尺寸过大不满。

针对开发者的不满，微软主要做了如下努力：使新的开发更容易启动，而把已經开发的VB6代码升级到VB.NET\[2\]。例子主要包括：完成VB6中的常见任务如打印预览；整合VB6和VB.NET解决方案（dubbed VB Fusion），从VB6代码转换到VB.NET。

微软在后续版本中撤销了一些过激的更改，并且吸取了经验。在以后版本中，语法的更改变得更加谨慎。

### 2003年Visual Basic .NET 2003（VB 7.0）

Visual Basic .NET 2003（VB 7.0）和.NET Framework 1.1一起发布。新功能包括对.NET Compact Framework的支持和更好的VB升迁向导。并改进了运行状况，IDE稳定性（尤其是后台编译器），以及运行时RunTime稳定性。另外，VB.NET 2003还有一个学院版Visual Studio .NET 2003 Academic Edition（VS03AE），它是分发给各国某些学者免费使用的版本。

### 2005年Visual Basic 2005（VB 8.0）

Visual Basic 2005（VB 8.0）是VB.Net的重大转变，微软决意在其软件名称中去掉了.NET部份。在VB2005中，微软增加了许多新功能，以引用VB对于初学者来说的一些优点：

主要的变动：

  - 不再支持“Edit and Continue” - 早期Visual Basic可以在调试时修改代码并且不经重新编译地执行。Visual Basic 2005去掉了这个功能；
  - 设计时表达式求值；
  - 提供My伪命名空间，包含了不需大量编码而访问特定.NET Framework功能的简单方式；提供了改进的VB到VB.NET转换向导；Using语法，简化了需要部署pattern to free resources的对象的使用；My编码，可隐藏由VB.NET IDE写的模板代码；数据源绑定，简化了数据库C/S开发。上述功能（尤其是My）增强了VB.Net成为快速开发应用平台的可能，并与C\#进一步区别开来。Visual Basic 2005通过增加新功能而减小了和其它所谓更强大的.NET语言的差距。
  - 增加了.NET 2.0语言功能包括：[泛型](../Page/泛型.md "wikilink")（generics）和Partial类（在一个文件里定义一个类的某部份然后在另外的文件里添加更多的定义，这个方法在整合用户书写的代码和系统自动生成的代码时尤其有用）；
  - XML注释，可以被NDoc等工具处理而自动生成文档；
  - 操作符重载；
  - 支持在其它语言中已经广泛使用的[unsigned integer数据类型](https://zh.wikipedia.org/wiki/unsigned_integer "wikilink")；
  - 支持在许多C衍生编程语言已提供的复合操作符如："+=", "-="；
  - IsNot专利：If Not X Is Y表达式被转换成If X IsNot Y。当微软为IsNot申请专利时招致了恶名（尤其来自Real公司）；
  - Visual Basic 2005 Express：作为VS产品线上的一部份，VB2005 Express是专为业余爱好者和新手定制的免费的VS Express系列的一员。Express版本目的定位在帮助人们学习一种语言，所以他们有和标准版一致的用户界面，只是少了一些高级功能。另外，VS Express版包括了VB6.0转换器，提供了从VB老版本升级的可行方法。

### 2008年Visual Basic 2008（VB 9.0）

Visual Basic 2008（VB 9.0）于2007年11月9日与Microsoft .NET Framework 3.5一起发布。

在VB2008中，微软增加了许多功能，包括：

  - IIF函数
  - 匿名类型
  - 支持LINQ
  - Lambda表达式
  - XML数据结构
  - 类接口

### 2010年Visual Basic 2010（VB 10.0）

Visual Basic 2010于2010年4月发布。

### 2012年Visual Basic 2012（VB 11.0）

### 2013年Visual Basic 2013（VB 12.0）

### 2015年Visual Basic 2015（VB 14.0）

Visual Basic 2015（VB 14.0）於2015年7月20日發佈。

### 2017年Visual Basic 2017（VB 15.0）

## 参考資料

## 参见

  - [C\#](../Page/Microsoft_Visual_C♯.md "wikilink")
  - [Visual Basic](../Page/Visual_Basic.md "wikilink")
  - [Visual Studio](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink")

## 外部链接

### 官方網站

  - [Microsoft's VB.NET](http://msdn.microsoft.com/vbasic/)

  - [Visual Basic 2005 Express Edition](http://lab.msdn.microsoft.com/express/vbasic/)

  - [VBRun网站](http://msdn.microsoft.com/VBRun/)

  - [Visual Studio Express](http://www.microsoft.com/taiwan/vstudio/express/)

  - [Visual Studio Express Visual BASIC下載](http://www.microsoft.com/taiwan/vstudio/express/vb/)

### 教程

  - [使用My开发](http://www.microsoft.com/china/MSDN/library/netFramework/netframework/MyNamespace.mspx?mfr=true)
  - [通过My命名空间访问.NET Framework和项目](http://msdn2.microsoft.com/zh-CN/library/5btzf5yk.aspx)

### 其他

  - [SharpDevelop](http://www.icsharpcode.net/OpenSource/SD/Default.aspx) - VB.NET的一个免费IDE
  - [VB.NET的MONO应用](https://web.archive.org/web/20051023172239/http://www.go-mono.org/mbas.html)
  - [VB.NET Knowledge Base](http://www.programmer-club.com.tw/kb/aspdotnet.html) - VB.NET知識庫 / 程式設計俱樂部

[Category:.NET编程语言](https://zh.wikipedia.org/wiki/Category:.NET编程语言 "wikilink") [Category:微軟開發工具](https://zh.wikipedia.org/wiki/Category:微軟開發工具 "wikilink") [Category:Visual_Basic](https://zh.wikipedia.org/wiki/Category:Visual_Basic "wikilink")

1.   petition
2.  <http://msdn.microsoft.com/VBRun/> VBRun website