**MVC模式**（Model–view–controller）是[软件工程中的一种](../Page/软件工程.md "wikilink")[软件架构模式](../Page/软件架构.md "wikilink")，把软件系统分为三个基本部分：模型（Model）、视图（View）和控制器（Controller）。

MVC模式最早由[Trygve
Reenskaug在](../Page/Trygve_Reenskaug.md "wikilink")1978年提出\[1\]，是[施乐帕罗奥多研究中心](../Page/帕罗奥多研究中心.md "wikilink")（Xerox
PARC）在20世纪80年代为程序语言[Smalltalk发明的一种软件架构](../Page/Smalltalk.md "wikilink")。**MVC模式**的目的是实现一种动态的程式设计，使后续对程序的修改和扩展简化，并且使程序某一部分的重复利用成为可能。除此之外，此模式通过对复杂度的简化，使程序结构更加直观。软件系统通过对自身基本部分分离的同时也赋予了各个基本部分应有的功能。专业人员可以通过自身的专长分组：

  - 控制器（Controller）- 负责转发请求，对请求进行处理。
  - 视图（View） - 界面设计人员进行图形界面设计。
  - 模型（Model） - 程序员编写程序应有的功能（实现算法等等）、数据库专家进行数据管理和数据库设计(可以实现具体的功能)。

[ModelViewControllerDiagramZh.png](https://zh.wikipedia.org/wiki/File:ModelViewControllerDiagramZh.png "fig:ModelViewControllerDiagramZh.png")

## 组件的互动

[MVC-Process.svg](https://zh.wikipedia.org/wiki/File:MVC-Process.svg "fig:MVC-Process.svg")
将应用程序划分为三种组件，模型 - 视图 - 控制器（MVC）设计定义它们之间的相互作用。\[2\]

  - **模型（Model）** 用于封装与应用程序的业务逻辑相关的数据以及对数据的处理方法。“ Model
    ”有对数据直接访问的权力，例如对数据库的访问。“Model”不依赖“View”和“Controller”，也就是说，
    Model 不关心它会被如何显示或是如何被操作。但是 Model
    中数据的变化一般会通过一种刷新机制被公布。为了实现这种机制，那些用于监视此
    Model 的 View 必须事先在此 Model 上注册，从而，View 可以了解在数据 Model
    上发生的改变。（比如：[观察者模式](../Page/观察者模式.md "wikilink")（[软件设计模式](../Page/软件设计模式.md "wikilink")））
  - **视图（View）**能够实现数据有目的的显示（理论上，这不是必需的）。在 View 中一般没有程序上的逻辑。为了实现 View
    上的刷新功能，View 需要访问它监视的数据模型（Model），因此应该事先在被它监视的数据那里注册。
  - **控制器（Controller）**起到不同层面间的组织作用，用于控制应用程序的流程。它处理事件并作出响应。“事件”包括用户的行为和数据
    Model 上的改变。

## 优点

在最初的[JSP网页中](../Page/JSP.md "wikilink")，像[数据库查询语句](../Page/数据库.md "wikilink")(SQL
query)这样的数据层代码和像[HTML这样的表示层代码是混在一起](../Page/HTML.md "wikilink")。虽然有着经验比较丰富的开发者会将数据从表示层分离开来，但这样的良好设计通常并不是很容易做到的，实现它需要精心地计划和不断的尝试。MVC可以从根本上强制性地将它们分开。尽管构造MVC应用程序需要一些额外的工作，但是它带给我们的好处是毋庸置疑的。

首先，多个 View 能共享一个 Model
。如今，同一个Web应用程序会提供多种用户界面，例如用户希望既能够通过浏览器来收发[电子邮件](../Page/电子邮件.md "wikilink")，还希望通过手机来访问[电子邮箱](../Page/电子邮箱.md "wikilink")，这就要求Web网站同时能提供[Internet界面和](../Page/Internet.md "wikilink")[WAP界面](../Page/WAP.md "wikilink")。在MVC设计模式中，
Model 响应用户请求并返回响应数据，View 负责格式化数据并把它们呈现给用户，业务逻辑和表示层分离，同一个 Model 可以被不同的
View 重用，所以大大提高了代码的可重用性。

其次，Controller 是自包含（self-contained）指高獨立內聚的物件，与 Model 和 View
保持相对独立，所以可以方便的改变应用程序的数据层和业务规则。例如，把数据库从[MySQL移植到](../Page/MySQL.md "wikilink")[Oracle](../Page/Oracle.md "wikilink")，或者把[RDBMS数据源改变成](../Page/RDBMS.md "wikilink")[LDAP数据源](../Page/LDAP.md "wikilink")，只需改变
Model
即可。一旦正确地实现了控制器，不管数据来自数据库还是[LDAP服务器](../Page/LDAP.md "wikilink")，View
都会正确地显示它们。由于MVC模式的三个模块相互独立，改变其中一个不会影响其他两个，所以依据这种设计思想能构造良好的少互扰性的构件。

此外，Controller 提高了应用程序的灵活性和可配置性。Controller 可以用来连接不同的 Model 和 View
去完成用户的需求，也可以构造应用程序提供强有力的手段。给定一些可重用的 Model 、 View
和Controller 可以根据用户的需求选择适当的 Model 进行处理，然后选择适当的的 View 将处理结果显示给用户。

## 评价、誤解及适用范围

MVC模式在概念上强调 Model, View, Controller 的分离，各個模組也遵循著由 Controller 來處理訊息，Model
掌管資料來源，View 負責資料顯示的職責分離原則，因此在實作上，MVC 模式的 Framework 通常會將 MVC 三個部份分離實作：

  - Model 負責資料存取，較現代的 Framework 都會建議使用獨立的資料物件 (DTO, POCO, POJO 等)
    來替代弱型別的集合物件。資料存取的程式碼會使用 Data Access 的程式碼或是 ORM-based
    Framework，也可以進一步使用 Repository Pattern 與 Unit of Works Pattern
    來切割資料來源的相依性。
  - Controller 負責處理訊息，較高階的 Framework 會有一個預設的實作來作為 Controller 的基礎，例如
    Spring 的 DispatcherServlet 或是 ASP.NET MVC 的 Controller
    等，在職責分離原則的基礎上，每個 Controller
    負責的部份不同，因此會將各個 Controller 切割成不同的檔案以利維護。
  - View 負責顯示資料，這個部份多為前端應用，而 Controller 會有一個機制將處理的結果 (可能是 Model,
    集合或是狀態等) 交給 View，然後由 View 來決定怎麼顯示。例如 Spring Framework
    使用 JSP 或相應技術，ASP.NET MVC 則使用 Razor 處理資料的顯示。

也因為 MVC 模式強調職責分離，所以在發展 MVC 應用時會產生很多檔案，在 IDE (整合開發環境) 不夠成熟時它會是個問題，但在現代主流
IDE 都能使用類別物件的資訊來組織程式碼編輯的情況下，多檔案早已不是問題，而且 MVC 模式會要求開發者進一步思考應用程式的架構
(Application
Architecture)，而非用大雜燴的方式開發應用程式，對於應用程式的生命週期以及後續的可擴充與可維護性而言有相當正面的幫助。另外，MVC
職責分離也帶來了一個現代軟體工程要求的重要特性：可測試性 (Testability)，MVC-based
的應用程式在良好的職責分離的設計下，各個部份可獨立行使[單元測試](../Page/單元測試.md "wikilink")，有利於與企業內的自動化測試、[持續整合](../Page/持續整合.md "wikilink")
(Continuous Integration) 與[持續發行](../Page/持續發行.md "wikilink") (Continuous
Delivery) 流程整合，減少應用程式改版部署所需的時間。

MVC
模式的應用程式的目的就是希望打破以往應用程式使用的大雜燴程式撰寫方式，並間接誘使開發人員以更高的架構導向思維來思考應用程式的設計，因此對於一個剛入門的初學者來說，架構導向的思考會有一定的門檻，需要較多的實作與練習才能具備相應的能力，大多數的初學者還是較習慣於大雜燴式的程式撰寫，所以可能會對
MVC 模式抱持著排斥或厭惡的心態，然而 MVC (或是其他的[Design
Patterns](../Page/Design_Patterns.md "wikilink"))
都是有助於應用程式長遠的發展，雖然大雜燴式的程式也可以用來發展長生命週期的應用程式，但是相較於
MVC，大雜燴式的程式在可擴充性和可維護性 (尤其是可測試性) 上會遠比 MVC 複雜很多，相反的，MVC
模式的應用程式是在初始開發時期必須先思考並使用軟體架構，使得開發時期會需要花較多心力，但是一旦應用程式完成後，可擴充性、可維護性和可測試性反而會因為
MVC 的特性而變得容易。

因此，MVC 模式在已有眾多優秀 Framework 的現代，早就已經沒有不適合小型應用的問題，小型的應用還是可以由 MVC Framework
的應用來獲取 MVC 的優點，同時它也能作為未來小型應用擴充到大型應用時的基礎與入門磚。若一開始就想要做大型應用，那麼 MVC
模式的職責分離以及要求開發的架構思考會更適合大型應用的開發。

## 实际范例

这里有一个通过 [JavaScript](../Page/JavaScript.md "wikilink") 所实现的基于 MVC
模型，需要注意的是：MVC 不是一种技术，而是一种理念。

``` javascript
/** 模擬 Model, View, Controller */
var M = {}, V = {}, C = {};

/** Model 負責存放資料 */
M.data = "hello world";

/** View 負責將資料輸出到螢幕上 */
V.render = (M) => { alert(M.data); }

/** Controller 作為一個 M 和 V 的橋樑 */
C.handleOnload = () => { V.render(M); }

/** 在網頁讀取的時候呼叫 Controller */
window.onload = C.handleOnload;
```

在這個簡短的程式碼中就具有一個完整的 MVC 模式。

## 实现

### [MFC](../Page/MFC.md "wikilink")

[微软所推出的](../Page/微软.md "wikilink")[MFC](../Page/MFC.md "wikilink")
Document/View架构是早期对于MVC模式的实现，[MFC將程式分成CView以及CDocument兩大類別](../Page/MFC.md "wikilink")，其中的Document对应MVC中的
Model ，View 相当于MVC中的
View＋Controller，再加上CWinApp類別，合成三大項。但是基本上[MFC是一個失敗的MVC模式作品](../Page/MFC.md "wikilink")。

由於[MFC之下的Document](../Page/MFC.md "wikilink")/View
定義過於模糊，未將Controller（MessageMap）部份取出，因此 Controller
可以置入 View 或Document，但不管置入哪一方面，都會與View或Document綁死，沒有彈性。

### [Java](../Page/Java.md "wikilink")

#### [Java](../Page/Java.md "wikilink") 平台企业版 (J2EE)

和其他的各种框架不一样，J2EE为模型对象（Model Objects）定义了一个规范。

  - 视图(View)
    在J2EE应用程序中，视图（View）可能由Java Server Page(JSP)擔任。生成 View
    的代码则可能是一个[servlet的一部分](../Page/servlet.md "wikilink")，特别是在客户端服务端交互的时候。

<!-- end list -->

  - 控制器（Controller）
    [J2EE应用中](../Page/J2EE.md "wikilink")，Controller
    可能是一个[servlet](../Page/servlet.md "wikilink")。
    除了可直接以J2EE來撰寫外，亦可用其他框架來撰寫，常見的有[Struts2](../Page/Struts2.md "wikilink")、[Spring
    Framework](../Page/Spring_Framework.md "wikilink")……等等。

<!-- end list -->

  - 模型（Model）
    Model 则是由一个[实体Bean来实现](../Page/JavaBean.md "wikilink")。

#### Java [Swing](../Page/Swing_\(Java\).md "wikilink")

Swing是一个标准的MVC结构. ComponentUI代表 View, 负责描画组件. 组件尤其 Model 层,
比如JTextField的Document, JTable的TableModel, JTree的TreeModel等等.
而Control可能不是很明显, 我们或许可以简单的将其Event机制看作一个Swing团队开发给开发者的 Controller。

作为Java开发者, 如果想理解MVC的结构, 学习Swing的确是个不错的选择.

### [.NET](../Page/.NET_Framework.md "wikilink")

#### ASP.NET

在ASP.NET中，针对视图（View）和控制器（Controller）的模式没有被很好地定义。而模型（Model）则留给开发者去设计。

  - 视图（View）
    ASPX和ASCX文件被用来处理 View 的职责。在这个设计中 View 实际上是从 Controller
    继承而来。这个和Smalltalk的实施有所不同，在Smalltalk中不同的类都有指针互相指向对方.

<!-- end list -->

  - 控制器（Controllers）
    Controller
    的职责被分割成两部分。事件（Event）的产生和传输是框架的一部分，更明确的说是Page和Control两个类。而事件的处理则在分离的代码中实现。

<!-- end list -->

  - 模型（Model）
    ASP.NET 不严格需要一个 Model。开发者可以自行选择创建一个 Model 类，但是很多人选择放弃这一步，直接把事件处理放在
    Controller 里处理任何计算、数据保存等等。但用 Model 来包含商业逻辑和数据存取是可实现的。

#### ASP.NET MVC

  - [ASP.NET
    MVC](../Page/ASP.NET_MVC_Framework.md "wikilink")，在2013年10月17日穩定版本已到5.0版。\[3\]

此外，在ASP.NET MVC中，一般情況下Model通常搭配[LINQ to
SQL類別](../Page/語言集成查詢.md "wikilink")（使用O/R
Designer工具所製作而成的DBML檔）或ADO.NET實體資料模型（Entity Data
Model，使用[ADO.NET Entity
Framework製作出的EDMX檔](../Page/ADO.NET_Entity_Framework.md "wikilink")）來實作。

#### [Windows](../Page/Windows.md "wikilink") Forms

在WinForms中，这个针对视图（View）和控制器（Controller）的模式已经很好的定义。而模型（Model）则留给开发者去设计。

  - 视图（View）
    由Form或者Control类继承来的一个类处理 View 的职责。在WinForm这个例子中 View 和 Controller
    被编译在同一个类中，这个和ASP.NET不同。

<!-- end list -->

  - 控制器（Controller）
    Controller
    的职责被分割成三部分。事件（Event）的产生和传输是操作系统的一部分。在.Net框架中Form和Control类将不同的事件转发给相应的事件处理器。而事件的处理则在分离的代码中实现。

<!-- end list -->

  - 模型（Model）
    就像ASP.NET一样，WinForm不严格需要一个 Model。开发者可以自行选择创建一个 Model
    类，但是很多人选择放弃这一步，直接把事件处理放在 Controller
    里处理任何计算、数据保存等等。也就是说用Model来包含商业逻辑和数据存取。

### Perl

[Catalyst和](../Page/Catalyst.md "wikilink")[Jifty是透過](../Page/Jifty.md "wikilink")[Perl語言所開發出來的Web](../Page/Perl.md "wikilink")
Framework，都採用Model-View-Controller 架構。Catalyst 本身只是做了 Controller，View 和
Model 讓開發者自由選用 CPAN 上的模組開發，例如 Template 和 Template Declare 都可用來產生視圖。Jifty
將 MVC 完全實做完成，View 的部份在早期版本使用 Mason 實做，較新版本使用 Template Declare。

### Ruby on Rails

[Ruby on
Rails是透過](../Page/Ruby_on_Rails.md "wikilink")[Ruby語言所開發出來的](../Page/Ruby.md "wikilink")
Web Framework，也是採用 Model-View-Controller 架構。Model 部份使用 [Active
Record](../Page/Active_Record.md "wikilink") 概念實做，加上 Migration 機制，使得其
Model 結構非常容易控制。

### Python

[Python](../Page/Python.md "wikilink") 有許多的 MVC 架構。最常用的有
[Django](../Page/Django.md "wikilink") 和
[TurboGears](../Page/TurboGears.md "wikilink")。

### JavaScript

  - [Backbone.js](../Page/Backbone.js.md "wikilink")
  - [Angular.js](../Page/AngularJS.md "wikilink")
  - [Ember.js](http://emberjs.com)
  - [JavaScriptMVC](../Page/JavaScriptMVC.md "wikilink")
  - [Model-View-Controller (MVC) with
    JavaScript](https://web.archive.org/web/20070927183315/http://www.alexatnet.com/node/8)

### [PHP](../Page/PHP.md "wikilink")

  - [CakePHP](http://cakephp.org/)
  - [CodeIgniter](http://codeigniter.org.cn/)
  - [prado](https://web.archive.org/web/20130531051303/http://www.pradosoft.com/)
  - [symfony](http://www.symfony.com/)
  - [Yii Framework](http://www.yiiframework.com/)
  - [Zend Framework](http://framework.zend.com/)
  - [Phalcon](http://phalconphp.com/)
  - [Laravel](https://laravel.com/)
  - [ThinkPHP](http://www.thinkphp.cn/)

### ActionScript 3

  - [PureMVC Standard for
    ActionScript 3](https://web.archive.org/web/20081121204026/http://trac.puremvc.org/PureMVC_AS3#PureMVCStandardforAS3/)

## 參考

  -
## 参考文献

## 外部链接

  - [An overview of the MVC pattern in Java from the Sun
    website](http://java.sun.com/blueprints/patterns/MVC.html)

  - [Model View Presenter with
    ASP.NET](https://web.archive.org/web/20080829142328/http://www.codeproject.com/aspnet/ModelViewPresenter.asp)
    CodeProject article.

  - [History of the evolution of MVC and
    derivatives](http://www.martinfowler.com/eaaDev/uiArchs.html) by
    Martin Fowler.

  - [ASP.NET MVC
    Framework](http://weblogs.asp.net/scottgu/archive/2007/10/14/asp-net-mvc-framework.aspx)
    Microsoft's Scott Guthrie on .NET MVC

  - [Introduction to the ASP.NET Model View Controller (MVC)
    Framework](https://web.archive.org/web/20090705155110/http://download.microsoft.com/download/f/e/b/febedc0c-dd47-4062-ad53-40e34d556a5d/ScottHanselmanIntroToMVC.wmv)
    Scott Hanselman builds an application step-by-step using the first
    CTP of the ASP.NET MVC Framework in this Introductory Video

  -
  - Greer, Derek. "[Interactive Application Architecture
    Patterns](https://web.archive.org/web/20081231140700/http://ctrl-shift-b.blogspot.com/2007/08/interactive-application-architecture.html)",
    Ctrl-Shift-B, 2007.

  - [Building Graphical User Interfaces with the MVC Pattern in
    Java](http://pclc.pace.edu/~bergin/mvc/mvcgui.html)

[Category:软件设计模式](https://zh.wikipedia.org/wiki/Category:软件设计模式 "wikilink")
[Category:MVC](https://zh.wikipedia.org/wiki/Category:MVC "wikilink")

1.
2.  Buschmann, Frank (1996) *Pattern-Oriented Software Architecture*.
3.  [ASP.NET MVC
    概觀](http://msdn.microsoft.com/zh-tw/library/dd381412.aspx)