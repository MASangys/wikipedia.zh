> 本文内容由[Objective-C](https://zh.wikipedia.org/wiki/Objective-C)转换而来。


**Objective-C**是一种[通用](../Page/通用编程语言.md "wikilink")、[高级](https://zh.wikipedia.org/wiki/高级语言 "wikilink")、[面向对象的](../Page/面向对象程序设计.md "wikilink")[编程语言](../Page/编程语言.md "wikilink")。它扩展了标准的[ANSI C编程语言](../Page/ANSI_C.md "wikilink")，将[Smalltalk](../Page/Smalltalk.md "wikilink")式的[消息传递机制加入到ANSI](https://zh.wikipedia.org/wiki/消息传递机制 "wikilink") C中。目前主要支持的[编译器有](https://zh.wikipedia.org/wiki/编译器 "wikilink")[GCC](../Page/GCC.md "wikilink")和[Clang](../Page/Clang.md "wikilink")（採用[LLVM](../Page/LLVM.md "wikilink")作為後端）。

Objective-C的[商標權屬於](https://zh.wikipedia.org/wiki/商標 "wikilink")[蘋果公司](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")，蘋果公司也是這個程式語言的主要開發者。苹果在開發[NeXTSTEP](../Page/NeXTSTEP.md "wikilink")操作系统時使用了Objective-C，之后被[OS X和](https://zh.wikipedia.org/wiki/OS_X "wikilink")[iOS继承下來](https://zh.wikipedia.org/wiki/iOS "wikilink")。現在Objective-C与[Swift是OS](../Page/Swift_\(程式語言\).md "wikilink") X和iOS操作系统、及与其相关的[API](https://zh.wikipedia.org/wiki/API "wikilink")、[Cocoa](../Page/Cocoa.md "wikilink")和[Cocoa Touch的主要编程语言](../Page/Cocoa_Touch.md "wikilink")。

## 歷史

Objective-C 主要由 [Stepstone](https://zh.wikipedia.org/wiki/Stepstone "wikilink") 公司的[布萊德·考克斯](https://zh.wikipedia.org/wiki/布萊德·考克斯 "wikilink")（Brad Cox）和 [Tom Love](https://zh.wikipedia.org/wiki/Tom_Love "wikilink") 在 1980 年代发明。

1981年 Brad Cox 和 Tom Love 还在 [ITT 公司技术中心任职时](../Page/ITT公司.md "wikilink")，接触到了 [SmallTalk语言](../Page/Smalltalk.md "wikilink")。Cox 当时对软件设计和开发问题非常感兴趣，他很快地意識到 [SmallTalk語言](../Page/Smalltalk.md "wikilink") 在系统工程构建中具有无法估量的价值，但同時他和 Tom Love 也明白，目前 [ITT 公司的电子通信工程相关技术中](../Page/ITT公司.md "wikilink")，C 语言被放在很重要的位置。

於是 Cox 撰寫了一個 C 語言的预處理器，打算使 C 語言具備些許 Smalltalk 的本領。Cox 很快地實現了一個可用的 C 語言擴展，此即為 Objective-C語言的前身。到了 1983 年，Cox 與 Love 合夥成立了 Productivity Products International（PPI）公司，將 Objective-C 及其相關函式庫商品化販售，並在之後將公司改名為StepStone。1986年，Cox 出版了一本關於 Objective-C 的重要著作《Object-Oriented Programming, An Evolutionary Approach》，書內詳述了 Objective-C 的種種設計理念。

1988年，[斯蒂夫·乔布斯](https://zh.wikipedia.org/wiki/斯蒂夫·乔布斯 "wikilink")（Steve Jobs）離開蘋果公司後成立了 [NeXT Computer](https://zh.wikipedia.org/wiki/NeXT_Computer "wikilink") 公司，NeXT 公司買下 Objective-C 语言的授权，并擴展了著名的開源編譯器[GCC](../Page/GCC.md "wikilink") 使之支持 Objective-C 的編譯，基於 Objective-C 開發了 [AppKit](https://zh.wikipedia.org/wiki/AppKit "wikilink") 與 [Foundation Kit](https://zh.wikipedia.org/wiki/Foundation_Kit "wikilink") 等函式庫，作為 NeXTSTEP 的的用戶介面與开发环境的基礎。雖然 NeXT 工作站後來在市場上失敗了，但 NeXT 上的軟體工具卻在業界中被廣泛讚揚。這促使 NeXT 公司放棄硬體業務，轉型為銷售NeXTStep（以及OpenStep）平台為主的軟體公司。

1992年，自由软件基金会的 GNU 开发环境增加了对 Objective-C 的支持。1994年，[NeXT Computer公司和](https://zh.wikipedia.org/wiki/NeXT_Computer "wikilink")[Sun Microsystem联合发布了一个针对](https://zh.wikipedia.org/wiki/昇陽微系統 "wikilink") NEXTSTEP 系统的标准典范，名为 OPENSTEP。OPENSTEP 在[自由软件基金会](../Page/自由软件基金会.md "wikilink")的实现名称为 [GNUstep](../Page/GNUstep.md "wikilink")。1996年12月20日，[苹果公司宣布收购](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink") NeXT Software 公司，NEXTSTEP/OPENSTEP环境成为苹果操作系统下一个主要发行版本OS X的基础。这个开发环境的版本被苹果公司称为[Cocoa](../Page/Cocoa.md "wikilink")。

2005年，[蘋果電腦雇用了](https://zh.wikipedia.org/wiki/蘋果電腦 "wikilink")[克里斯·拉特納](../Page/克里斯·拉特納.md "wikilink")及LLVM開發團隊\[1\]，[clang及](https://zh.wikipedia.org/wiki/clang "wikilink")[LLVM](../Page/LLVM.md "wikilink")成為蘋果公司在GCC之外的新編譯器選擇，在 [Xcode](../Page/Xcode.md "wikilink") 4.0之後均採用 LLVM 作為默認的編譯器。最新的 Modern Objective-C 特性也都率先在 Clang 上實現。

## 語法

Objective-C是C語言的嚴格超集－－任何C語言程式不經修改就可以直接通過Objective-C編譯器，在Objective-C中使用C語言代碼也是完全合法的。Objective-C被描述为*蓋在C語言上的薄薄一層*，因為Objective-C的原意就是在C語言主體上加入[面向对象的特性](../Page/面向对象程序设计.md "wikilink")。Objective-C的[面向对象語法源於](../Page/面向对象程序设计.md "wikilink")[Smalltalk](../Page/Smalltalk.md "wikilink")訊息傳遞風格。所有其他非[面向对象的語法](../Page/面向对象程序设计.md "wikilink")，包括變數型別，預處理器（preprocessing），流程控制，函數声明與调用皆與C語言完全一致。但有些C语言语法合法代码在objective-c中表达的意思不一定相同，比如某些布尔表达式，在C语言中返回值为true，但在Objective-C若与yes直接相比较，函数将会出错，因为在Objective-C中yes的值只表示为1.

### Hello World

這里示範了一個基礎的[Hello World程序](../Page/Hello_World.md "wikilink")。基於Xcode 4.3.1:

``` objc
#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {

    @autoreleasepool {
        NSLog(@"Hello World!");
    }

   return 0;
}
```

### 訊息傳遞

Objective-C最大的特色是承自[Smalltalk](../Page/Smalltalk.md "wikilink")的訊息傳遞模型（message passing），此機制與今日[C++](../Page/C++.md "wikilink")式之主流風格差異甚大。Objective-C裡，與其說物件互相**呼叫[方法](../Page/方法_\(電腦科學\).md "wikilink")**，不如說物件之間**互相傳遞訊息**更為精確。此二種風格的主要差異在於*呼叫方法/訊息傳遞*這個動作。C++裡[類別與](../Page/类_\(计算机科学\).md "wikilink")[方法的關係嚴格清楚](../Page/方法_\(電腦科學\).md "wikilink")，一個方法必定屬於一個類別，而且在編譯時（compile time）就已經緊密綁定，不可能呼叫一個不存在類別裡的[方法](../Page/方法_\(電腦科學\).md "wikilink")。但在Objective-C，[類別與](../Page/类_\(计算机科学\).md "wikilink")[訊息的關係比較鬆散](https://zh.wikipedia.org/wiki/訊息 "wikilink")，呼叫方法視為對物件*發送訊息*，所有[方法都被視為](../Page/方法_\(電腦科學\).md "wikilink")*對訊息的回應*。所有訊息處理直到執行時（runtime）才會動態決定，並交由[類別自行決定如何處理收到的訊息](../Page/类_\(计算机科学\).md "wikilink")。也就是說，一個[類別不保證一定會回應收到的訊息](../Page/类_\(计算机科学\).md "wikilink")，如果類別收到了一個無法處理的訊息，程式只會拋出[异常](https://zh.wikipedia.org/wiki/异常 "wikilink")，不會出錯或崩潰。

C++裡，送一個訊息給物件（或者說呼叫一個方法）的語法如下：

``` cpp
obj.method(argument);
```

Objective-C則寫成：

``` objc
[obj method: argument];
```

此二者並不僅僅是語法上的差異，還有基本行為上的不同。

這裡以一個汽車類（car class）的簡單例子來解釋Objective-C的訊息傳遞特性：

``` objc
[car fly];
```

典型的C++意義解讀是「呼叫car類別的fly方法」。若car類別裡頭沒有定義fly方法，那編譯肯定不會通過。但是Objective-C裡，我們應當解讀為「發送出一個fly的訊息給car物件」，fly是*訊息*，而car是訊息的*接收者*。car收到訊息後會決定如何回應這個訊息，若car類別內定義有fly方法就執行方法內之代碼，若car內不存在fly方法，則程式依舊可以通過編譯，執行期則拋出異常。

此二種風格各有優劣。C++強制要求所有的方法都必須有對應的動作，且編譯期綁定使得函數呼叫非常快速。缺點是僅能藉由virtual關鍵字提供有限的動態綁定能力。Objective-C天生即具備[鸭子类型](../Page/鸭子类型.md "wikilink")之動態綁定能力，因為執行期才處理訊息，允許傳送未知訊息給物件。可以送訊息給整個物件集合而不需要一一檢查每個物件的型態，也具備消息轉送機制。同時空物件nil接受訊息後默認為不做事，所以送訊息給nil也不用擔心程序崩潰。

### 类的定义与实现

Objective-C中强制要求将[类的定義](../Page/类_\(计算机科学\).md "wikilink")（interface）与实现（implementation）分为两个部分。

[类的定义文件遵循C語言之慣例以](../Page/类_\(计算机科学\).md "wikilink").h为后缀，实现文件以.m为后缀。

#### Interface

定义部分，清楚定义了[类的名称](../Page/类_\(计算机科学\).md "wikilink")、成員變數和方法。 以关键字@interface作为开始，@end作为结束。

``` objc
@interface MyObject : NSObject {
    int memberVar1; // 实体变量
    id  memberVar2;
}

+(return_type) class_method; // 类方法

-(return_type) instance_method1; // 实例方法
-(return_type) instance_method2: (int) p1;
-(return_type) instance_method3: (int) p1 andPar: (int) p2;
@end
```

方法前面的 +/- 號代表函数的类型：加號（+）代表类方法（class method），不需要实例就可以调用，与C++ 的静态函数（static member function）相似。減號（-）即是一般的实例方法（instance method）。

這裡提供了一份意義相近的C++語法對照，如下：

``` cpp
class MyObject : public NSObject {
protected:
    int memberVar1;  // 实体变量
    void * memberVar2;

  public:
    static return_type class_method(); // 类方法

    return_type instance_method1();    // 实例方法
    return_type instance_method2( int p1 );
    return_type instance_method3( int p1, int p2 );
}
```

Objective-C定义一个新的方法时，名称內的冒号（:）代表参数传递，不同于C语言以数学函数的括号来传递参数。Objective-C方法使得参数可以夹杂于名称中间，不必全部附缀于方法名称的尾端，可以提高程式可读性。设定颜色RGB值的方法为例：

``` objc
- (void) setColorToRed: (float)red Green: (float)green Blue:(float)blue; /* 宣告方法*/

[myColor setColorToRed: 1.0 Green: 0.8 Blue: 0.2]; /* 呼叫方法*/
```

這個方法的簽名是setColorToRed:Green:Blue:。每个冒号后面都带着一个float类别的参数，分别代表红，绿，蓝三色。

#### Implementation

實現區段則包含了公開方法的實現，以及定義私有（private）變量及方法。 以關鍵字@implementation作為區段起頭，@end結尾。

``` objc
@implementation MyObject {
  int memberVar3; //私有實體變數
}

+(return_type) class_method {
    .... //method implementation
}
-(return_type) instance_method1 {
     ....
}
-(return_type) instance_method2: (int) p1 {
    ....
}
-(return_type) instance_method3: (int) p1 andPar: (int) p2 {
    ....
}
@end
```

值得一提的是不只Interface區段可定義實體變數，Implementation區段也可以定義實體變數，兩者的差別在於存取權限的不同，Interface區段內的實體變數默認權限為protected，宣告於implementation區段的實體變數則默認為private，故在Implementation區段定義私有成員更符合物件導向之封裝原則，因為如此類別之私有資訊就不需曝露於公開interface（.h文件）中。

#### 创建对象

Objective-C创建对象需通过alloc以及init兩個消息。alloc的作用是分配内存，init则是初始化对象。 init与alloc都是定义在NSObject里的方法，父对象收到这两个信息并做出正确回应后，新对象才创建完毕。以下为范例：

``` objc
MyObject * my = [[MyObject alloc] init];
```

在Objective-C 2.0裡，若创建对象不需要參數，则可直接使用new

``` objc
MyObject * my = [MyObject new];
```

仅仅是语法上的精简，效果完全相同。

若要自己定義初始化的過程，可以重写init方法，来添加额外的工作。（用途类似C++ 的构造函数constructor）

``` objc
- (id) init {
    if ( self=[super init] ) {   // 必须调用父类的init
        // do something here ...
    }
    return self;
}
```

### 协议（Protocol）

協議是一組沒有實現的方法列表，任何的類均可採納協議並具體實現這組方法。

Objective-C在[NeXT](../Page/NeXT.md "wikilink")时期曾经试图引入[多重继承](../Page/多重继承.md "wikilink")的概念，但由于[协议的出现而没有实现之](https://zh.wikipedia.org/wiki/协议 "wikilink")。

[协议类似於](https://zh.wikipedia.org/wiki/协议 "wikilink")[Java](../Page/Java.md "wikilink")与[C\#語言中的](../Page/C♯.md "wikilink")“[接口](https://zh.wikipedia.org/wiki/介面_\(程式设计\) "wikilink")”。在Objective-C中，有两种定义协议的方式：由编译器保证的“正式协议”，以及为特定目的设定的“非正式协议”。

**非正式协议**为一个可以选择性实现的一系列方法列表。非正式協議雖名為協議，但實際上是掛于NSObject上的未實現分類（Unimplemented Category）的一種稱謂，Objetive-C語言機制上並沒有非正式協議這種東西，OSX 10.6版本之後由於引入@optional關鍵字，使得正式協議已具備同樣的能力，所以非正式協議已經被廢棄不再使用。

**正式协议**类似于Java中的"接口"，它是一系列方法的列表，任何类都可以声明自身实现了某个协议。在Objective-C 2.0之前，一个类必须实现它声明符合的协议中的所有方法，否则编译器会报告错误，表明这个类没有实现它声明符合的协议中的全部方法。Objective-C 2.0版本允许标记协议中某些方法为可选的（Optional），這樣编译器就不会强制实现这些可选的方法。

協議經常應用於Cocoa中的[委托及事件觸發](https://zh.wikipedia.org/wiki/委托_\(计算机科学\) "wikilink")。例如文本框类通常会包括一个[委托](https://zh.wikipedia.org/wiki/委托_\(计算机科学\) "wikilink")（delegate）对象，该对象可以實現一个协议，该协议中可能包含一个实现文字輸入的自动完成方法。若这个委托对象实现了这个方法，那么文本框类就会在适当的时候觸發自動完成事件，並调用这个方法用于自动完成功能。

Objective-C中协议的概念与Java中接口的概念並不完全相同，即一个类可以在不声明它符合某个协议的情况下，实现这个协议所包含的方法，也即实质上符合这个协议，而这种差别对外部代码而言是不可见的。正式协议的声明不提供实现，它只是簡單地表明符合该协议的类实现了该协议的方法，保證呼叫端可以安全調用方法。

语法

協議以關鍵字@protocol作為區段起始，@end結束，中間為方法列表。

``` objc
@protocol Locking
- (void)lock;
- (void)unlock;
@end
```

這是一個協議的例子，多線程編程中經常要確保一份共享資源同時只有一個線程可以使用，會在使用前給該資源掛上鎖 ，以上即為一個表明有“锁”的概念的協議，協議中有兩個方法，只有名稱但尚未實現。

下面的SomeClass宣稱他採納了Locking協議：

``` objc
@interface SomeClass : SomeSuperClass <Locking>
@end
```

一旦SomeClass表明他採納了Locking協議，SomeClass就有義務實現Locking协议中的兩個方法。

``` objc
@implementation SomeClass
- (void)lock {
  // 實現lock方法...
}
- (void)unlock {
  // 實現unlock方法...
}
@end
```

由於SomeClass已經確實遵從了Locking協議，故調用端可以安全的發送lock或unlock訊息給SomeClass實體變數，不需擔心他沒有辦法回應訊息。

[插件](../Page/插件.md "wikilink")是另一个使用抽象定义的例子，可以在不关心插件的实现的情况下定义其希望的行为。

### 动态类型

类似于Smalltalk，Objective-C具備[动态类型](https://zh.wikipedia.org/wiki/动态类型 "wikilink")：即消息可以发送給任何物件實體，無論該物件實體的公開介面中有沒有對應的方法。對比於C++這種靜態類型的語言，編譯器會擋下對（void\*）指針調用方法的行為。但在Objective-C中，你可以對id發送任何訊息（id很像void\*，但是被嚴格限制只能使用在物件上），編譯器僅會發出「該物件可能無法回應訊息」的警告，程式可以通過編譯，而實際發生的事則取決於執行期該物件的真正形態，若該物件的確可以回應消息，則依舊執行對應的方法。

一個物件收到訊息之後，他有三種處理訊息的可能手段，第一是回應該消息並執行方法，若無法回應，則可以轉發消息給其他物件，若以上兩者均無，就要處理無法回應而拋出的例外。只要進行三者之其一，该消息就算完成任務而被丟棄。若对“nil”（空对象指针）发送消息，该消息通常会被忽略，取决于编译器选项可能會拋出例外。

雖然Objective-C具備動態類型的能力，但[编译期的静态类型檢查依舊可以应用到变量上](https://zh.wikipedia.org/wiki/编译期 "wikilink")。以下三种声明在[运行时效力是完全相同的](https://zh.wikipedia.org/wiki/执行期 "wikilink")，但是三种声明提供了一个比一个更明显的类型信息，附加的类型信息讓编译器在编译时可以检查变量类型，并對类型不符的變量提出警告。

下面三個方法，差異僅在於參數的形態：

``` objc
- setMyValue:(id) foo;
```

id形態表示參數“foo”可以是任何类的实例。

``` objc
- setMyValue:(id <aProtocol>) foo;
```

id<aProtocol>表示“foo”可以是任何类的实例，但必须採納“aProtocol”协议。

``` objc
- setMyValue:(NSNumber*) foo;
```

该声明表示“foo”必须是“NSNumber”的实例。

动态类型是一种强大的特性。在缺少[泛型](../Page/泛型.md "wikilink")的静态类型语言（如Java 5以前的版本）中实现[容器类时](https://zh.wikipedia.org/wiki/容器_\(计算机科学\) "wikilink")，程序员需要写一种针对通用类型对象的容器类，然后在通用类型和实际类型中不停的[强制类型转换](https://zh.wikipedia.org/wiki/强制类型转换 "wikilink")。无论如何，类型转换會破壞靜態類型，例如写入一个“[整数](../Page/整数.md "wikilink")”而将其读取为“[字符串](../Page/字符串.md "wikilink")”会产生运行时错误。这样的問題被泛型解决，但容器类需要其内容对象的类型一致，而对于动态类型语言则完全没有这方面的问题。

### 转发

Objective-C允许对一个对象发送消息，不管它是否能够响应之。除了响应或丢弃消息以外，对象也可以将消息转发到可以响应该消息的对象。转发可以用于简化特定的[设计模式](../Page/设计模式_\(计算机\).md "wikilink")，例如[观测器模式或](https://zh.wikipedia.org/wiki/观测器模式 "wikilink")[代理模式](../Page/代理模式.md "wikilink")。

Objective-C运行时在`Object`中定义了一对方法：

  - 转发方法：

<!-- end list -->

``` objc
- (retval_t) forward:(SEL) sel :(arglist_t) args; // with GCC
- (id) forward:(SEL) sel :(marg_list) args; // with NeXT/Apple systems
```

  - 响应方法：

<!-- end list -->

``` objc
- (retval_t) performv:(SEL) sel :(arglist_t) args;  // with GCC
- (id) performv:(SEL) sel :(marg_list) args; // with NeXT/Apple systems
```

希望实现转发的对象只需用新的方法覆盖以上方法来定义其转发行为。无需重写响应方法`performv::`，由于该方法只是单纯的对响应对象发送消息并传递参数。其中，`SEL`类型是Objective-C中消息的类型。

#### 例子

这里包括了一个演示转发的基本概念的程序示例。

  - *Forwarder.h*

<!-- end list -->

``` objc
#import <objc/Object.h>

@interface Forwarder : Object
{
    id recipient; //该对象是我们希望转发到的对象。
}

@property (assign, nonatomic) id recipient;

@end
```

  - *Forwarder.m*

<!-- end list -->

``` objc
#import "Forwarder.h"

@implementation Forwarder

@synthesize recipient;

- (retval_t) forward: (SEL) sel : (arglist_t) args
{
    /*
     *检查转发对象是否响应该消息。
     *若转发对象不响应该消息，则不会转发，而产生一个错误。
     */
    if([recipient respondsTo:sel])
       return [recipient performv: sel : args];
    else
       return [self error:"Recipient does not respond"];
}
```

  - *Recipient.h*

<!-- end list -->

``` objc
#import <objc/Object.h>

// A simple Recipient object.
@interface Recipient : Object
- (id) hello;
@end
```

  - *Recipient.m*

<!-- end list -->

``` objc
#import "Recipient.h"

@implementation Recipient

- (id) hello
{
    printf("Recipient says hello!\n");

    return self;
}

@end
```

  - *main.m*

<!-- end list -->

``` objc
#import "Forwarder.h"
#import "Recipient.h"

int main(void)
{
    Forwarder *forwarder = [Forwarder new];
    Recipient *recipient = [Recipient new];

    forwarder.recipient = recipient; //Set the recipient.
    /*
     *转发者不响应hello消息！该消息将被转发到转发对象。
     *（若转发对象响应该消息）
     */
    [forwarder hello];

    return 0;
}
```

#### 脚注

利用[GCC](../Page/GCC.md "wikilink")编译时，编译器报告：

`$ gcc -x objective-c -Wno-import Forwarder.m Recipient.m main.m -lobjc`
``main.m: In function `main':``
``main.m:12: warning: `Forwarder' does not respond to `hello'``
`$`

如前文所提到的，编译器报告`Forwarder`类不响应hello消息。在这种情况下，由于实现了转发，可以忽略这个警告。 运行该程序产生如下输出：

`$ ./a.out`
`Recipient says hello!`

### 类别 (Category)

在Objective-C的设计中，一个主要的考虑即为大型代码框架的维护。[结构化编程](../Page/结构化编程.md "wikilink")的经验显示，改进代码的一种主要方法即为将其分解为更小的片段。Objective-C借用并扩展了Smalltalk实现中的“分類”概念，用以帮助达到分解代码的目的。\[2\]

一个分類可以将方法的实现分解进一系列分离的文件。程序员可以将一组相关的方法放进一个分類，使程序更具可读性。举例来讲，可以在字符串类中增加一个名为“拼写检查”的分類，并将拼写检查的相关代码放进这个分類中。

进一步的，分類中的方法是在[运行时被加入类中的](https://zh.wikipedia.org/wiki/执行期 "wikilink")，这一特性允许程序员向现存的类中增加方法，而无需持有原有的代码，或是重新编译原有的类。例如若系统提供的字符串类的实现中不包含[拼写检查的功能](https://zh.wikipedia.org/wiki/拼写检查 "wikilink")，可以增加这样的功能而无需更改原有的字符串类的代码。

在运行时，分類中的方法与类原有的方法并无区别，其代码可以存取包括私有类成员变量在内的所有成员变量。

若分類声明了与类中原有方法同名的函数，则分類中的方法会被调用。因此分類不仅可以增加类的方法，也可以代替原有的方法。这个特性可以用于修正原有代码中的错误，更可以从根本上改变程序中原有类的行为。若两个分類中的方法同名，则被调用的方法是不可预测的。

其它语言也尝试了通过不同方法增加这一语言特性。[TOM在这方面走的更远](https://zh.wikipedia.org/wiki/TOM_\(程序设计语言\) "wikilink")，不仅允许增加方法，更允许增加成员变量。也有其它语言使用[面向声明的解决方案](https://zh.wikipedia.org/wiki/基于声明程序设计 "wikilink")，其中最值得注意的是[Self语言](https://zh.wikipedia.org/wiki/Self语言 "wikilink")。

C\#与Visual Basic.NET语言以[扩展函数的与不完全类的方式实现了类似的功能](https://zh.wikipedia.org/wiki/扩展函数 "wikilink")。[Ruby](../Page/Ruby.md "wikilink")与一些动态语言则以"[monkey patch](https://zh.wikipedia.org/wiki/monkey_patch "wikilink")"的名字称呼这种技术。

#### 使用分類的例子

这个例子建立了`Integer`类，其本身只定义了integer属性，然后增加了两个分類`Arithmetic`与`Display`以扩展类的功能。虽然分類可以访问类的私有成员，但通常利用属性的[存取方法来存取是一种更好的做法](https://zh.wikipedia.org/wiki/方法_\(电脑科学\) "wikilink")，可以使得分類与原有类更加独立。这是分類的一种典型应用—另外的应用是利用分類来替换原有类中的方法，虽然用分類而不是继承来替换方法不被认为是一种好的做法。

  - *Integer.h*

<!-- end list -->

``` objc
#import <objc/Object.h>

@interface Integer : Object
{
@private
    int integer;
}

@property (assign, nonatomic) integer;

@end
```

  - *Integer.m*

<!-- end list -->

``` objc
#import "Integer.h"

@implementation Integer

@synthesize integer;

@end
```

  - *Arithmetic.h*

<!-- end list -->

``` objc
#import "Integer.h"

@interface Integer(Arithmetic)
- (id) add: (Integer *) addend;
- (id) sub: (Integer *) subtrahend;
@end
```

  - *Arithmetic.m*

<!-- end list -->

``` objc
#import "Arithmetic.h"

@implementation Integer(Arithmetic)
- (id) add: (Integer *) addend
{
    self.integer = self.integer + addend.integer;
    return self;
}

- (id) sub: (Integer *) subtrahend
{
    self.integer = self.integer - subtrahend.integer;
    return self;
}
@end
```

  - *Display.h*

<!-- end list -->

``` objc
#import "Integer.h"

@interface Integer(Display)
- (id) showstars;
- (id) showint;
@end
```

  - *Display.m*

<!-- end list -->

``` objc
#import "Display.h"

@implementation Integer(Display)
- (id) showstars
{
    int i, x = self.integer;
    for(i=0; i < x; i++)
       printf("*");
    printf("\n");

    return self;
}

- (id) showint
{
    printf("%d\n", self.integer);

    return self;
}
@end
```

  - *main.m*

<!-- end list -->

``` objc
#import "Integer.h"
#import "Arithmetic.h"
#import "Display.h"

int
main(void)
{
    Integer *num1 = [Integer new], *num2 = [Integer new];
    int x;

    printf("Enter an integer: ");
    scanf("%d", &x);

    num1.integer = x;
    [num1 showstars];

    printf("Enter an integer: ");
    scanf("%d", &x);

    num2.integer = x;
    [num2 showstars];

    [num1 add:num2];
    [num1 showint];

    return 0;
}
```

#### 注释

可以利用以下命令来编译：

`gcc -x objective-c main.m Integer.m Arithmetic.m Display.m -lobjc`

在编译时间，可以利用省略`#import "Arithmetic.h"`与`[num1 add:num2]`命令，以及`Arithmetic.m`文件来实验。程序仍然可以运行，这表明了允许动态的、按需的加载分類；若不需要某一分類提供的功能，可以简单的不编译之。

### 扮演

Objective-C允许一个类在程序中完全取代另一个类，这种行为称为前者“扮演”(Posing)目标类。

注意：类的扮演在[Mac OS X v10.5中被废弃](https://zh.wikipedia.org/wiki/Mac_OS_X_v10.5 "wikilink")，在64位运行时中不可用。

### \#import

在C语言中，`#include`预处理指令总是使被包含的文件内容被插入指令点。在Objective-C中，类似的指令`#import`保证一个文件只会被包含一次，类似于一般头文件中的

``` c
#ifndef XXX
#define XXX ...
#endif
```

惯用法，或[MSVC中的](https://zh.wikipedia.org/wiki/Visual_C++ "wikilink")

``` cpp
#pragma once
```

## 语言变化

### Objective-C++

Objective-C++是[GCC](../Page/GCC.md "wikilink")的一个前端，它可以编译混合了C++与Objective-C语法的源文件。Objective-C++是C++的扩展，类似于Objective-C是C的扩展。由于在融合C++与Objective-C两种语言的特性方面没有做特别的工作，因此有以下限制：

  - C++类不能从Objective-C类继承，反之亦然。
  - Objective-C定义内部不能定义C++命名空间。
  - Objective-C类的成员变量不能包括不含默认构造函数和/或含有虚方法的C++类对象，但使用C++类指针并无如此限制（可以在 -init方法中对之进行初始化）。
  - C++“传递值”的特性不能用在Objective-C对象上，而只能传递其指针。
  - Objective-C声明不能存在在C++模板声明中，反之亦然。但Objective-C类型可以用在C++模板的参数中。
  - Objective-C和C++的错误处理语句不同，各自的语句只能处理各自的错误。
  - Objective-C错误使得C++对象被退出时，C++析构函数不会被调用。新的64位运行时解决了这个问题。\[3\]

### Objective-C 2.0

在2006年7月[苹果全球开发者会议中](https://zh.wikipedia.org/wiki/苹果全球开发者会议 "wikilink")，Apple宣布了“Objective-C 2.0”的发布，其增加了“现代的垃圾收集，语法改进\[4\]，运行时性能改进\[5\]，以及64位支持”。2007年10月发布的[Mac OS X v10.5中包含了Objective](https://zh.wikipedia.org/wiki/Mac_OS_X_v10.5 "wikilink")-C 2.0的编译器。

#### 垃圾收集

Objective-C 2.0提供了一个可选的[垃圾收集器](https://zh.wikipedia.org/wiki/垃圾收集器 "wikilink")。在[向后兼容模式中](https://zh.wikipedia.org/wiki/向后兼容 "wikilink")，Objective-C运行时会将[引用计数](../Page/引用计数.md "wikilink")操作，例如“retain”与“release”变为[无操作](../Page/NOP.md "wikilink")。当垃圾收集启用时，所有的对象都是收集器的工作对象。普通的C指针可以以“__strong”修饰，标记指针指向的对象仍在使用中。被标记为“__weak”的指针不被计入收集器的计数中，并在对象被回收时改写为“nil”。[iOS上的Objective](https://zh.wikipedia.org/wiki/iOS "wikilink")-C 2.0实现中不包含垃圾收集器。垃圾收集器运行在一个低优先级的后台线程中，并可以在用户动作时暂停，从而保持良好的用户体验。\[6\]

#### 属性

Objective-C 2.0引入了新的语法以声明变量为[属性](https://zh.wikipedia.org/wiki/属性_\(程序设计\) "wikilink")，并包含一可选定义以配置存取方法的生成。属性总是为公共的，其目的为提供外部类存取（也可能为只读）类的内部变量的方法。属性可以被声明为“readonly”，即只读的，也可以提供储存方法包括“assign”，“copy”或“retain”（简单的赋值、复制或增加1引用计数）。默认的属性是原子的，即在访问时会加锁以避免多线程同时访问同一对象，也可以将属性声明为“nonatomic”（非原子的），避免产生锁。

``` objc
@interface Person : NSObject {
    @public
        NSString *name;
    @private
        int age;
}

@property(copy) NSString *name;
@property(readonly) int age;

-(id)initWithAge:(int)age;
@end
```

属性的存取方法由@synthesize关键字来实现，它由属性的声明自动的产生一对存取方法。另外，也可以选择使用@dynamic关键字表明存取方法会由程序员手工提供。

``` objc
@implementation Person
@synthesize name;
@dynamic age;

-(id)initWithAge:(int)initAge
{
    age = initAge; // 注意：直接赋给成员变量，而非属性
    return self;
}

-(int)age
{
    return 29; // 注意：并非返回真正的年龄
}
@end
```

属性可以利用传统的消息表达式、点表达式或"valueForKey:"/"setValue:forKey:"方法对来存取。

``` objc
Person *aPerson = [[Person alloc] initWithAge: 53];
aPerson.name = @"Steve"; // 注意：点表达式，等于[aPerson setName: @"Steve"];
NSLog(@"Access by message (%@), dot notation(%@), property name(%@) and direct instance variable access (%@)",
      [aPerson name], aPerson.name, [aPerson valueForKey:@"name"], aPerson->name);
```

为了利用点表达式来存取实例的属性，需要使用“self”关键字：

``` objc
-(void) introduceMyselfWithProperties:(BOOL)useGetter
{
    NSLog(@"Hi, my name is %@.", (useGetter ? self.name : name)); // NOTE: getter vs. ivar access
}
```

类或协议的属性可以被动态的读取。

``` objc
int i;
int propertyCount = 0;
objc_property_t *propertyList = class_copyPropertyList([aPerson class], &propertyCount);

for ( i=0; i < propertyCount; i++ ) {
    objc_property_t *thisProperty = propertyList + i;
    const char* propertyName = property_getName(*thisProperty);
    NSLog(@"Person has a property: '%s'", propertyName);
}
```

#### 快速枚举

比起利用NSEnumerator对象或在集合中依次枚举，Objective-C 2.0提供了快速枚举的语法。在Objective-C 2.0中，以下循环的功能是相等的，但性能特性不同。

``` objc
// 使用NSEnumerator
NSEnumerator *enumerator = [thePeople objectEnumerator];
Person *p;

while ( (p = [enumerator nextObject]) != nil ) {
    NSLog(@"%@ is %i years old.", [p name], [p age]);
}
```

``` objc
// 使用依次枚举
for ( int i = 0; i < [thePeople count]; i++ ) {
    Person *p = [thePeople objectAtIndex:i];
    NSLog(@"%@ is %i years old.", [p name], [p age]);
}
```

``` objc
// 使用快速枚举
for (Person *p in thePeople) {
    NSLog(@"%@ is %i years old.", [p name], [p age]);
}
```

快速枚举可以比标准枚举产生更有效的代码，由于枚举所调用的方法被使用NSFastEnumeration协议提供的指针算术运算所代替了。\[7\]

### Modern Objective-C

苹果公司在 WWDC2012 大会上介绍了大量 Objective-C 的新特性，能够讓程序员更加高效地编写代码，这些新特性在 Xcode4.4 版本中已经可以使用。

  - Object Literals
  - 默认生成 @synthesize 代码
  - 遍历元素
  - Subscripting Methods

## 語言分析

Objective-C是非常「實際」的語言。它用一個很小的、用C寫成的[运行库](https://zh.wikipedia.org/wiki/运行库 "wikilink")，使得應用程式的大小增加很少，与此相比，大部分OO系统需要极大的运行时虚拟机来执行。ObjC寫成的程式通常不會比其原始碼和函式庫（通常无需包含在軟體發行版本中）大太多，不会像Smalltalk系統，即使只是打开一个窗口也需要大量的容量。由于Obj-C的动态类型特征，Obj-C不能对方法进行内联（inline）一类的优化，使得Obj-C的应用程序一般比类似的C或C++程序更大。

Obj-C可以在现存[C编译器基础上实现](https://zh.wikipedia.org/wiki/C编译器 "wikilink")（在GCC中，Obj-C最初作为[预处理器](../Page/预处理器.md "wikilink")引入，后来作为模块存在），而不需要编写一个全新的编译器。这个特性使得Obj-C能利用大量现存的C代码、库、工具和编程思想等资源。现存C库可以用Obj-C包装器来提供一个Obj-C使用的OO风格界面包装。

以上这些特性极大地降低了进入Obj-C的门槛，这是1980年代Smalltalk在推广中遇到的最大问题。

## 爭議

Objective-C的最初版本並不支持[垃圾回收](../Page/垃圾回收_\(計算機科學\).md "wikilink")（garbage collection）。在當時這是爭論的焦點之一，很多人考慮到Smalltalk回收時有漫長的「死亡時間」，令整個系統失去功用，Objective-C為避免此問題才不擁有這個功能。某些第三方版本加入了這個功能（尤是GNUstep），[苹果公司也在其Mac](https://zh.wikipedia.org/wiki/苹果公司 "wikilink") OS X 10.5中提供了实现。

另一個广受批评的問題是ObjC不包括[命名空間机制](https://zh.wikipedia.org/wiki/命名空間机制 "wikilink")（namespace mechanism）。取而代之的是程式設計師必須在其類別名稱加上前綴，由于前缀往往较短（相比命名空间），这時常引致衝突。在2007年，在Cocoa編程環境中，所有Mac OS X類別和函式均有「NS」作為前綴，例如NSObject或NSButton來清楚分辨它們屬於Mac OS X核心；使用「NS」是由於這些類別的名稱在NeXTSTEP開發時定下。

雖然Objective-C是C的严格-{zh:超集; zh-hans:超集; zh-hant:母集; zh-cn:超集; zh-tw:母集;}-，但它也不視[C](../Page/C.md "wikilink")的基本-{zh:型別; zh-hans:型別; zh-hant:型別; zh-cn:类型; zh-tw:型別;}-為第一級的-{zh:对象; zh-hans:物件; zh-hant:物件; zh-cn:对象; zh-tw:物件;}-。

和C++不同，Objective-C不支援[運算子多載](https://zh.wikipedia.org/wiki/運算子多載 "wikilink")（它不支持[ad-hoc多型](https://zh.wikipedia.org/wiki/ad-hoc多型 "wikilink")）。亦與C++不同，但和Java相同，Objective-C只容許物件繼承一個類別（不設[多重繼承](https://zh.wikipedia.org/wiki/多重繼承 "wikilink")）。Categories和protocols不但可以提供很多多重繼承的好處，而且沒有很多缺點，例如額外執行時間過重和二进制不兼容。

由于Obj-C使用动态运行时类型，而且所有的方法都是函数调用（有时甚至连[-{zh:系统调用;zh-hans:系统调用;zh-hant:系統呼叫;zh-cn:系统调用;zh-tw:系統呼叫;}-](https://zh.wikipedia.org/wiki/系统调用 "wikilink")（syscalls）也如此），很多常见的编译时性能优化方法都不能应用于Obj-C（例如：[内联函数](../Page/内联函数.md "wikilink")、[常数传播](https://zh.wikipedia.org/wiki/常数传播 "wikilink")、[交互式优化](https://zh.wikipedia.org/wiki/交互式优化 "wikilink")、[纯量取代与聚集等](https://zh.wikipedia.org/wiki/纯量取代与聚集 "wikilink")）。这使得Obj-C性能劣于类似的对象抽象语言（如C++）。不过Obj-C擁護者认为Obj-C本就不应应用于C++或Java常见的底层抽象，Obj-C的应用方向是对性能要求不大的应用

## 参考文献

## 外部链接

  - [苹果官方Objective-C开发说明文档](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html)

{{-}}

[Category:C语言家族](https://zh.wikipedia.org/wiki/Category:C语言家族 "wikilink") [Category:IOS开发](https://zh.wikipedia.org/wiki/Category:IOS开发 "wikilink") [Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink") [Category:GNUstep](https://zh.wikipedia.org/wiki/Category:GNUstep "wikilink")

1.  Adam Treat, ''[mkspecs and patches for LLVM compile of Qt4](http://lists.trolltech.com/qt4-preview-feedback/2005-02/msg00691.html)
2.  [Example of *categories* concept](http://video.google.com/videoplay?docid=-7466310348707586940&ei=0dr7SIe6L46qrgLk7dHsDg&q=Smalltalk-80)
3.  [Using C++ With Objective-C](http://developer.apple.com/mac/library/documentation/Cocoa/Conceptual/ObjectiveC/Articles/ocCPlusPlus.html#//apple_ref/doc/uid/TP30001163-CH10-SW1) in Mac OS X Reference Library, last retrieved in 2010-02-10.
4.
5.
6.
7.