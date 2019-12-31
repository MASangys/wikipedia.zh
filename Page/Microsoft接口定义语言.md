> 本文内容由[Microsoft接口定义语言](https://zh.wikipedia.org/wiki/Microsoft接口定义语言)转换而来。


**Microsoft接口定义语言**（；缩写：）是[微软](../Page/微软.md "wikilink")的基于文本的[接口描述语言](../Page/接口描述语言.md "wikilink")。扩展自[DCE/RPC](https://zh.wikipedia.org/wiki/DCE/RPC "wikilink") IDL用于微软的[组件对象模型](../Page/组件对象模型.md "wikilink")（Component Object Model）。 \[1\] 它的编译器是MIDL.exe（随[Windows SDK发行](https://zh.wikipedia.org/wiki/Windows_SDK "wikilink")）。MIDL用于[远程过程调用](https://zh.wikipedia.org/wiki/远程过程调用 "wikilink")(RPC)的接口、[DCOM接口](https://zh.wikipedia.org/wiki/DCOM "wikilink")、[OLE自动化的类型库等的描述](https://zh.wikipedia.org/wiki/Ole "wikilink").

## 简介

每个IDL文件包含一个或多个interface定义。每个interface定义由interface头部与interface体组成。interface头部给出了接口的整体信息；如果含关键字object，表示这是一个[COM接口](../Page/组件对象模型.md "wikilink")，否则表示这是一个[DCE RPC接口](https://zh.wikipedia.org/wiki/远程过程调用 "wikilink")。interface体给出了所有需要暴露的信息。

IDL文件中一个接口的结构信息：

``` idl4
[ //header

  //Interface attributes go here.

]
interface INTERFACENAME //body

{
//The interface body goes here.

}
library TyeLibraryFileName
{
  //Type library Information

}
```

IDL文件接口示例：

``` idl4
[
    object,
    uuid(C0E20128-DB19-4DB3-BCA1-24595E5E24A8),
    dual,
    nonextensible,
    helpstring("IConfig Interface"),
    pointer_default(unique)
]
interface ILogManager : IDispatch
{
    [id(1), helpstring("Initializes ILogManager")] HRESULT Initialize([in] IConfig* Config);

    [id(2), helpstring("Logs MemberClaims")] HRESULT LogMemberClaims([in] IMember* Member);

    [id(3), helpstring("Logs ILogData to specified destination")]
            HRESULT Log([in] ILogData* LogData);

};
library MyTypeLibraryFileLib
{
 [
  uuid(B3F6C9C4-26AE-451B-9788-75F6C648DBF4),
  helpstring("LogManager Class")
 ]
 coclass LogManager
 {
  [default] interface ILogManager;
 };
}
```

类型库用于向编译器提供关于类、接口、枚举等的COM对象或COM接口的信息。类型库是二进制文件。MIDL编译器处理IDL文件并创建类型库文件、头文件、proxy文件。例如：

`midl myfilectl.idl /tlb myfilectl.tlb /h`

其中/h产生C++头文件。

MIDL编译器编译name.idl默认产生的文件，对于RPC接口为:

`Client stub (name_c.c)`
`Server stub (name_s.c)`
`Header file (name.h)`

对于COM接口默认产生的文件:

`Interface proxy/stub file (name_p.c) 给客户/服务器的surrogate entry points`
`Interface header file (name.h) 包含IDL文件中定义的接口的类型定义与函数声明，以及stub调用的子例程的前向声明。`
`Interface UUID file (name_i.c) 接口ID文件，定义IDL文件中的每个接口的GUID`
`类型库文件(name.tlb)`
`Dlldata.c 创建proxy/stub DLL所需要的数据`

如果接口属性列表中有local属性，编译进产生接口的头文件, Name.h.

## 历史

MIDL 3.0版支持按照类似于[C\#语言的格式写idl文件](https://zh.wikipedia.org/wiki/C#语言 "wikilink")。这要求使用[Windows SDK](https://zh.wikipedia.org/wiki/Windows_SDK "wikilink") 10.0.17134.0版或以上，其所包含的midl.exe 为8.01.0622版或以上，编译时使用/winrt选项。\[2\] 接口中的非local的成员函数返回类型只能是HRESULT 或 SCODE，早于3.0的版本还允许返回类型为void，但这种3.0版本中将编译报错。

## 语言内容

接口可以[前向声明](../Page/前向声明.md "wikilink")，以便被引用。

类型定义(typedef)、construct声明、import指令（类似于C语言预处理器include指令），可以出现在interface体的外部。IDL文件的这些定义都会出现在产生的头文件中；所有接口的所有过程都会被创建stub例程。

### MIDL数据类型

数组定义遵从C语言的标准，数组下界必须为0。 一对方括号内如果只有一个数，表示数组下界为0上界为N-1；如果方括号内为\*号，表示下界为0上界在运行时确定；\[lower...upper\]明确给出上下限。多维数组只有最左维可以不在编译时指定。

封装的联合类型（encapsulated union）是指类型的通过switch定义的判别数据成员（discriminant）也被封装在类型中。如下例：

``` idl4
typedef union _S1_TYPE switch (long l1) U1_TYPE
{
    case 1024:
        float f1;
    case 2048:
        double d2;
} S1_TYPE;
```

``` cpp
/* 在产生的头文件中： */
typedef struct _S1_TYPE
{
    long l1;
    union
    {
        float f1;
        double d2;
    } U1_TYPE;
} S1_TYPE;
```

### 类型库

类型库是二进制文件(.tlb)包含了一个ActiveX应用程序暴露的类型与对象的信息。可包括：

  - 数据类型信息，如：aliases, enumerations, structures, unions.
  - 对象描述，每一个这样的描述称作typeinfo。如：module, interface, IDispatch interface (dispinterface), component object class (coclass). 可以理解接口是抽象类，coclass是接口的物理实现类。
  - 引用别的类型库的类型描述。

类型库可以是midl编译产生的单独的二进制文件(.tlb，表示type library)。也可以用[资源编译器](https://zh.wikipedia.org/wiki/资源编译器 "wikilink")(rc.exe)把.tlb文件增加到DLL或exe文件中。带有1个或多个类型库资源的DLL典型具有文件扩展名.olb (object library). tlb文件在资源文件(.rc)中必须写成如下形式，带有整数辨识符、类型为TypeLib：

`1 typelib mylib1.tlb`
`2 typelib mylib2.tlb`

把tlb登记在Windows注册表，可以用.NET FRAMEWOK带有的regtlibv12.exe，通常在这样的目录下：

`C:\WINDOWS\Microsoft.NET\Framework\v4.0.30319\regtlibv12.exe`

各种类型库工具（如编译器、object browser等）通过 ITypeLib 这样的接口访问二进制类型库信息。

类型库描述语言是ODL，最顶层语法结构是library语句。

MIDL的数据类型中, boolean基础类型等价于VT_UI1；BOOL数据类型被定义为long；如果希望使用VT_BOOL，那应该用VARIANT_BOOL数据类型。

下述代码装入并在[Windows注册表中注册一个类型库](https://zh.wikipedia.org/wiki/Windows注册表 "wikilink")：

``` cpp
ITypeLib *pTypeLib;
HRESULT hr;
hr = LoadTypeLibEx("example.tlb", REGKIND_REGISTER, &pTypeLib);
if(SUCCEEDED(hr))
{
    pTypeLib->Release();
} else {
    exit(0); // Handle errors here.
}
```

## 参见

  -
## 参考文献

<references/>

## 外部链接

## 参考文献

<references/>

[Category:微軟開發工具](https://zh.wikipedia.org/wiki/Category:微軟開發工具 "wikilink") [Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink") [Category:基于组件的软件工程](https://zh.wikipedia.org/wiki/Category:基于组件的软件工程 "wikilink")

1.  [MSDN Reference](http://msdn2.microsoft.com/en-us/library/aa367091.aspx)
2.  [MSDN:"Introduction to Microsoft Interface Definition Language 3.0"](https://docs.microsoft.com/en-us/uwp/midl-3/intro)