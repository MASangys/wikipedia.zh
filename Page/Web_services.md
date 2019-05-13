Web Services 可以将应用程序转换为网络应用程序，以便于您的应用程序可以向全世界发布信息，或提供某项功能 基本的 Web
Services 平台是 XML+HTTP。

## Web Services 简介

Web Services 可使您的应用程序成为 Web 应用程序。

Web Services 通过 Web 进行发布、查找和使用。

### 您应当具备的基础知识

在继续学习之前，您需要对下面的知识有基本的了解：

  - HTML
  - XML

### 什么是Web Services

  - Web Services 是应用程序组件
  - Web Services 使用开放协议进行通信
  - Web Services 是独立的（self-contained）并可自我描述
  - Web Services 可通过使用UDDI来发现
  - Web Services 可被其他应用程序使用
  - XML 是 Web Services 的基础

### 它如何工作

基础的 Web Services 平台是 XML + HTTP。XML 提供了一种可用于不同的平台和编程语言之间的语言。HTTP
协议是最常用的因特网协议。Web services 平台的元素：

  - SOAP (简易对象访问协议)
  - UDDI (通用描述、发现及整合)
  - WSDL (Web services 描述语言)

## Web Services 为什么使用它

早期，Web services 的发展速度还没有让人们对它产生兴趣。

### 互操作性具有最高优先级

由于所有主要的平台均可通过 Web 浏览器来访问 Web，不同的平台可以借此进行交互。为了让这些平台协同工作，Web 应用程序被开发了出来。
Web 应用程序是运行在 Web 上的简易应用程序。它们围绕 Web 浏览器标准被进行构建，几乎可被任何平台之上的任何浏览器来使用。
\=== Web services 把 Web 应用程序提升到了另外一个层面 === 通过使用 Web
services，您的应用程序可向全世界发布功能或消息。
Web services 使用 XML 来编解码数据，并使用 SOAP 借由开放的协议来传输数据。
通过 Web services，您的会计部门的 Win 2k 服务器可与 IT 供应商的 UNIX 服务器进行连接。
\=== Web services 有两种类型的应用 === **重复使用的应用程序组件**
有一些功能是不同的应用程序常常会用到的。 那么为什么要周而复始地开发它们呢？
Web services 可以把应用程序组件作为服务来提供，比如汇率转换、天气预报或者甚至是语言翻译等等。
比较理想的情况是，每种应用程序组件只有一个最优秀的版本，这样任何人都可以在其应用程序中使用它。
**连接现有的软件**
通过为不同的应用程序提供一种链接其数据的途径，Web services有助于解决协同工作的问题。
通过使用 Web services，您可以在不同的应用程序与平台之间来交换数据。

## Web Services 平台元素

Web Services 拥有三种基本的元素:SOAP、WSDL 以及 UDDI。

### 什么是 SOAP

SOAP是一个基于XML的协议，让应用程序通过HTTP交换信息。
或更简单：SOAP是一种用于访问Web服务的协议。

  - SOAP 指简易对象访问协议
  - SOAP 是一种通信协议
  - SOAP 用于应用程序之间的通信
  - SOAP 是一种用于发送消息的格式
  - SOAP 被设计用来通过因特网进行通信
  - SOAP 独立于平台
  - SOAP 独立于语言
  - SOAP 基于 XML
  - SOAP 很简单并可扩展
  - SOAP 允许您绕过防火墙
  - SOAP 将作为 W3C 标准来发展

### 什么是 WSDL

WSDL 是基于 XML 的用于描述 Web Services 以及如何访问 Web Services 的语言。
\*WSDL 指网络服务描述语言

  - WSDL 使用 XML 编写
  - WSDL 是一种 XML 文档
  - WSDL 用于描述网络服务
  - WSDL 也可用于定位网络服务
  - WSDL 还不是 W3C 标准

### 什么是UDDI

UDDI 是一种目录服务，通过它，企业可注册并搜索 Web services。
\*UDDI 指通用的描述、发现以及整合（Universal Description, Discovery and Integration）。

  - UDDI 是一种用于存储有关 web services 的信息的目录。
  - UDDI 是一种由 WSDL 描述的网络服务接口目录。
  - UDDI 经由 SOAP 进行通迅。
  - UDDI 被构建于 Microsoft .NET 平台之中。

## Web Services 实例

任何应用程序都可拥有 Web Service 组件。
Web Services 的创建与编程语言的种类无关。
\=== 一个 Web Service 实例 === 在这个例子中，我们会使用 ASP.NET 来创建一个简单的 Web Service。

``` VB
<%@ WebService Language="VB" Class="TempConvert" %><br />

Imports System<br />
Imports System.Web.Services<br />

Public Class TempConvert :Inherits WebService<br />

<WebMethod()> Public Function FahrenheitToCelsius<br />
(ByVal Fahrenheit As String) As String
  dim fahr
  fahr=trim(replace(Fahrenheit,",","."))
  if fahr="" or IsNumeric(fahr)=false then return "Error"
  return ((((fahr) - 32) / 9) * 5)
end function

<WebMethod()> Public Function CelsiusToFahrenheit
(ByVal Celsius As String) As String
  dim cel
  cel=trim(replace(Celsius,",","."))
  if cel="" or IsNumeric(cel)=false then return "Error"
  return ((((cel) * 9) / 5) + 32)
end function

end class
```

### ASP.NET 的自动化处理

通过 ASP.NET，你不必亲自编写 WSDL 和 SOAP 文档。 如果您仔细研究我们的这个例子，您会发现 ASP.NET 会自动创建
WSDL 和 SOAP 请求。

## 参考资料

www.44lan.cn/lan_web/webservice/