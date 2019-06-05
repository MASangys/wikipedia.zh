**Mixin**是[面向对象程序设计语言中的](https://zh.wikipedia.org/wiki/面向对象程序设计语言 "wikilink")[类](../Page/类_\(计算机科学\).md "wikilink")，提供了方法的实现。其他类可以访问mixin类的方法而不必成为其子类。\[1\]Mixin有时被称作"included"而不是"inherited"。mixin为使用它的class提供额外的功能，但自身却不单独使用（不能单独生成实例对象，属于抽象类）。因为有以上限制，Mixin类通常作为功能模块使用，在需要该功能时“混入”，而且不会使类的关系变得复杂。使用者与Mixin不是“is-a”的关系，而是「-able」关系

Mixin有利于[代码复用](../Page/代码复用.md "wikilink")\[2\]又避免了[多继承的复杂](https://zh.wikipedia.org/wiki/多继承 "wikilink")。\[3\]\[4\]使用Mixin享有单一继承的单纯性和多重继承的共有性。接口与mixin相同的地方是都可以多继承，不同的地方在于
mixin
是带实现的。Mixin也可以看作是带实现的。这种[设计模式实现了](https://zh.wikipedia.org/wiki/设计模式 "wikilink")[依赖反转原则](../Page/依赖反转原则.md "wikilink")。\[5\]

## 实现

In [Simula](../Page/Simula.md "wikilink"), classes are defined in a
block in which attributes, methods and class initialization are all
defined together; thus all the methods that can be invoked on a class
are defined together, and the definition of the class is complete.

In
[Flavors](https://zh.wikipedia.org/wiki/Flavors_\(programming_language\) "wikilink"),
a Mixin is a class from which another class can inherit slot definitions
and methods. The Mixin usually does not have direct instances. Since a
Flavor can inherit from more than one other Flavor, it can inherit from
one or more Mixins. Note that the original Flavors did not use generic
functions.

In New Flavors (a successor of Flavors) and
[CLOS](https://zh.wikipedia.org/wiki/CLOS "wikilink"), methods are
organized in "[generic
functions](https://zh.wikipedia.org/wiki/generic_function "wikilink")".
These generic functions are functions that are defined in multiple cases
(methods) by class dispatch and method combinations.

CLOS and Flavors allow mixin methods to add behavior to existing
methods: `:before` and `:after` daemons, whoppers and wrappers in
Flavors. CLOS added `:around` methods and the ability to call shadowed
methods via . So, for example, a stream-lock-mixin can add locking
around existing methods of a stream class. In Flavors one would write a
wrapper or a whopper and in CLOS one would use an `:around` method. Both
CLOS and Flavors allow the computed reuse via method combinations.
`:before`, `:after` and `:around` methods are a feature of the standard
method combination. Other method combinations are provided.

An example is the `+` method combination, where the resulting values of
each of the applicable methods of a generic function are arithmetically
added to compute the return value. This is used, for example, with the
border-mixin for graphical objects. A graphical object may have a
generic width function. The border-mixin would add a border around an
object and has a method computing its width. A new class
`bordered-button` (that is both a graphical object and uses the `border`
mixin) would compute its width by calling all applicable width
methods—via the `+` method combination. All return values are added
and create the combined width of the object.

In an OOPSLA 90 paper,\[6\] Gilad Bracha and William Cook reinterpret
different inheritance mechanisms found in Smalltalk, Beta and CLOS as
special forms of a mixin inheritance.

## 编程语言支持

除了Flavors与CLOS (作为[Common
Lisp的部分](../Page/Common_Lisp.md "wikilink"))，其他语言的支持:

  - [Ada语言](https://zh.wikipedia.org/wiki/Ada语言 "wikilink")
    (扩展已存在的tagged record)

  - [Cobra](https://zh.wikipedia.org/wiki/Cobra "wikilink")

  - [ColdFusion](https://zh.wikipedia.org/wiki/ColdFusion "wikilink")
    (基于类的includes，基于对象的赋值方法)

  - [Curl](../Page/Curl_\(编程语言\).md "wikilink") (Curl RTE)

  - [D语言](https://zh.wikipedia.org/wiki/D语言 "wikilink") (称作["template
    mixins"](http://www.digitalmars.com/d/template-mixin.html);
    D语言包含["mixin"](http://dlang.org/mixin.html)语句.)

  - [Dart](../Page/Dart.md "wikilink")

  - \[7\]

  - [Groovy](../Page/Groovy.md "wikilink")

  - [JavaScript](../Page/JavaScript.md "wikilink") Delegation -
    Functions 作为 Roles (Traits 与 Mixins)

  - [OCaml](../Page/OCaml.md "wikilink")

  - [Perl](../Page/Perl.md "wikilink") (通过 的roles)

  - [Perl 6](../Page/Perl_6.md "wikilink")

  - [PHP的](../Page/PHP.md "wikilink")"[Trait](../Page/Traits_\(计算机科学\).md "wikilink")"

  - [Python](../Page/Python.md "wikilink")

  - [Racket](../Page/Racket.md "wikilink")
    (\[<http://docs.racket-lang.org/guide/classes.html#(part._.Mixins>)
    mixins documentation\])

  - [Ruby](../Page/Ruby.md "wikilink")

  - [Scala](../Page/Scala.md "wikilink")\[8\]

  - /[TclOO](http://wiki.tcl.tk/18152) \[9\]

  - [Sass](../Page/Sass.md "wikilink")

  - [Vala](../Page/Vala.md "wikilink")

  - [Swift](../Page/Swift.md "wikilink")

  - [SystemVerilog](../Page/SystemVerilog.md "wikilink")

一些语言允许运行时从一个对象拷贝方法到另一个对象。这可以“借”mixin的方法。

[C\#与](https://zh.wikipedia.org/wiki/C# "wikilink")[Visual
Basic.NET支持接口的扩展方法](https://zh.wikipedia.org/wiki/Visual_Basic.NET "wikilink")（extension
method）。

## 例子

### Common Lisp

[Common Lisp](../Page/Common_Lisp.md "wikilink") provides mixins in CLOS
(Common Lisp Object System) similar to Flavors.

`object-width` is a generic function with one argument that uses the `+`
method combination. This combination determines that all applicable
methods for a generic function will be called and the results will be
added.

``` lisp
(defgeneric object-width (object)
  (:method-combination +))
```

`button` is a class with one slot for the button text.

``` lisp
(defclass button ()
  ((text :initform "click me")))
```

There is a method for objects of class button that computes the width
based on the length of the button text. `+` is the method qualifier for
the method combination of the same name.

``` lisp
(defmethod object-width + ((object button))
   (* 10 (length (slot-value object 'text))))
```

A `border-mixin` class. The naming is just a convention. There are no
superclasses, and no slots.

``` lisp
(defclass border-mixin () ())
```

There is a method computing the width of the border. Here it is just 4.

``` lisp
(defmethod object-width + ((object border-mixin))
  4)
```

`bordered-button` is a class inheriting from both `border-mixin` and
`button`.

``` lisp
(defclass bordered-button (border-mixin button) ())
```

We can now compute the width of a button. Calling `object-width`
computes 80. The result is the result of the single applicable method:
the method `object-width` for the class `button`.

``` lisp
? (object-width (make-instance 'button))
80
```

We can also compute the width of a `bordered-button`. Calling
`object-width` computes 84. The result is the sum of the results of the
two applicable methods: the method `object-width` for the class `button`
and the method `object-width` for the class `border-mixin`.

``` lisp
? (object-width (make-instance 'bordered-button))
84
```

### Python

[Python中](../Page/Python.md "wikilink")，除了使用protocol以外，也可以用多继承的形式来实现Mixin。为了区分普通的多继承，mixin类的类名一般都会带上后缀：“Mixin”，比如Python
2中的类`UserDict.DictMixin`。`DictMixin`类包括部分实现，使用者的类只要实现几个必须的函数接口，如：`__getitem__()`,
`__setitem__()`, `__delitem__()`, `keys()`\[10\]。

Python的`SocketServer`模块\[11\]提供了`UDPServer`类与`TCPServer`类，作为[UDP与](https://zh.wikipedia.org/wiki/User_Datagram_Protocol "wikilink")[TCP的](https://zh.wikipedia.org/wiki/Transmission_Control_Protocol "wikilink")[socket服务器](https://zh.wikipedia.org/wiki/socket "wikilink")。有两个mixin类：`ForkingMixIn`与
`ThreadingMixIn`。通过如以下代码的方式使用`ThreadingMixIn`扩展`TCPServer`：

``` python
class ThreadingTCPServer(ThreadingMixIn, TCPServer):
  pass
```

`ThreadingMixIn`类为TCP服务器添加了新功能，使每个新连接都会创建出新线程。而如果是`ForkingMixIn`，则会使每个新连接[fork出新的进程](../Page/Fork_\(系统调用\).md "wikilink")。

### Ruby

在ruby中，并不直接使用Mixin这个单词，而是使用在类的声明中include一个module的办法。  Most of the Ruby
world is based around mixins via `Modules`. The concept of mixins is
implemented in Ruby by the keyword `include` to which we pass the name
of the module as
[parameter](https://zh.wikipedia.org/wiki/Parameter_\(computer_programming\) "wikilink").

Example:

``` ruby

class Student
  include Comparable # The class Student inherits the Comparable module using the 'include' keyword
  attr_accessor :name, :score

  def initialize(name, score)
    @name = name
    @score = score
  end

  # Including the Comparable module requires the implementing class to define the <=> comparison operator
  # Here's the comparison operator. We compare 2 student instances based on their scores.

  def <=>(other)
    @score <=> other.score
  end

  # Here's the good bit - I get access to <, <=, >,>= and other methods of the Comparable Interface for free.
end

s1 = Student.new("Peter", 100)
s2 = Student.new("Jason", 90)

s1 > s2 #true
s1 <= s2 #false
```

### JavaScript

**The *Object-Literal and `extend` Approach***

It is technically possible to add behavior to an object by binding
functions to keys in the object. However, this lack of separation
between state and behavior has drawbacks:

1.  It intermingles properties of the model domain with that of
    implementation domain.
2.  No sharing of common behavior. Metaobjects solve this problem by
    separating the domain specific properties of objects from their
    behaviour specific properties.\[12\]

An extend function (in this case from the
[Underscore.js](https://zh.wikipedia.org/wiki/Underscore.js "wikilink")
library, which copies all of the functionality from a source object, to
a destination object, attributes, functions, etc.) is used to mix the
behavior in:\[13\]

``` javascript
// This example may be contrived.
// It's an attempt to clean up the previous, broken example.
var Halfling = function (fName, lName) {
    this.firstName = fName;
    this.lastName = lName;
}

var NameMixin = {
    fullName: function () {
        return this.firstName + ' ' + this.lastName;
    },
    rename: function(first, last) {
        this.firstName = first;
        this.lastName = last;
        return this;
    }
};

var sam = new Halfling('Sam', 'Lowry');
var frodo = new Halfling('Freeda', 'Baggs');

// Mixin the other methods
_.extend(Halfling.prototype, NameMixin);

// Now the Halfling objects have access to the NameMixin methods
sam.rename('Samwise', 'Gamgee');
frodo.rename('Frodo', 'Baggins');
```

**The pure function and delegation based *Flight-Mixin Approach***

Even though the firstly described approach is mostly widespread the next
one is closer to what JavaScript's language core fundamentally offers -
[Delegation](https://zh.wikipedia.org/wiki/JavaScript#Delegative "wikilink").

Two function object based patterns already do the trick without the need
of a third party's implementation of `extend`.

``` javascript
// Implementation
var EnumerableFirstLast = (function () { // function based module pattern.
    var first = function () {
        return this[0];
    },
    last = function () {
        return this[this.length - 1];
    };
    return function () {      // function based Flight-Mixin mechanics ...
        this.first  = first;  // ... referring to ...
        this.last   = last;   // ... shared code.
    };
}());

// Application - explicit delegation:
// applying [first] and [last] enumerable behavior onto [Array]'s [prototype].
EnumerableFirstLast.call(Array.prototype);

// Now you can do:
a = [1, 2, 3];
a.first(); // 1
a.last();  // 3
```

### 其他语言

In the
[Curl](https://zh.wikipedia.org/wiki/Curl_\(programming_language\) "wikilink")
web-content language, multiple inheritance is used as classes with no
instances may implement methods. Common mixins include all skinnable
`ControlUI`s inheriting from `SkinnableControlUI`, user interface
delegate objects that require dropdown menus inheriting from
StandardBaseDropdownUI and such explicitly named mixin classes as
`FontGraphicMixin`, `FontVisualMixin` and `NumericAxisMixin-of` class.
Version 7.0 added library access so that mixins do not need to be in the
same package or be public abstract. Curl constructors are factories that
facilitates using multiple-inheritance without explicit declaration of
either interfaces or mixins.

## 接口与trait

Java 8 introduces a new feature in the form of default methods for
interfaces.\[14\] Basically it allows a method to be defined in an
interface with application in the scenario when a new method is to be
added to an interface after the interface class programming setup is
done. To add a new function to the interface means to implement the
method at every class which uses the interface. Default methods help in
this case where they can be introduced to an interface any time and have
an implemented structure which is then used by the associated classes.
Hence default methods adds a possibility of applying the concept in a
mixin sort of a way.

Interfaces combined with [aspect-oriented
programming](https://zh.wikipedia.org/wiki/aspect-oriented_programming "wikilink")
can also produce full-fledged mixins in languages that support such
features, such as C\# or Java. Additionally, through the use of the
[marker interface
pattern](https://zh.wikipedia.org/wiki/marker_interface_pattern "wikilink"),
[generic
programming](https://zh.wikipedia.org/wiki/generic_programming "wikilink"),
and extension methods, C\# 3.0 has the ability to mimic mixins. With C\#
3.0 came the introduction of Extension Methods\[2\] and they can be
applied, not only to classes but, also, to interfaces. Extension Methods
provide additional functionality on an existing class without modifying
the class. It then becomes possible to create a static helper class for
specific functionality that defines the extension methods. Because the
classes implement the interface (even if the actual interface doesn’t
contain any methods or properties to implement) it will pick up all the
extension methods also.\[15\]\[16\]\[17\]

[ECMAScript](../Page/ECMAScript.md "wikilink") (in most cases
implemented as JavaScript) does not need to mimic object composition by
stepwise copying fields from one object to another. It natively\[18\]
supports
[Trait](https://zh.wikipedia.org/wiki/Trait_\(computer_programming\) "wikilink")
and Mixin\[19\]\[20\] based object composition via function objects that
implement additional behavior and then are delegated via `call` or
`apply` to objects that are in need of such new functionality.

### Scala

Scala has a rich type system and Traits are a part of Scala’s type
system which help implement mixin behaviour. As their name reveals,
Traits are usually used to represent a distinct feature or aspect that
is normally orthogonal to the responsibility of a concrete type or at
least of a certain instance.\[21\] For example, the ability to sing is
modeled as such an orthogonal feature: it could be applied to Birds,
Persons, etc.

``` scala
trait Singer{
  def sing { println(" singing … ") }
  //more methods
}

class Birds extends Singer
```

Here, Bird has mixed in all methods of the trait into its own definition
as if class Bird had defined method sing() on its own.

As `extends` is also used to inherit from a super class, in case of a
trait `extends` is used if no super class is inherited and only for
mixin in the first trait. All following traits are mixed in using
keyword `with`.

``` scala
class Person
class Actor extends Person with Singer
class Actor extends Singer with Performer
```

Scala allows mixing in a trait (creating an anonymous type) when
creating a new instance of a class. In the case of a Person class
instance, not all instances can sing. This feature comes use then:

``` scala
class Person{
  def tell {  println (" Human ") }
  //more methods
}

val singingPerson = new Person with Singer
singingPerson.sing
```

### Swift

Mixin can be achieved in Swift by using a language feature called
Default implementation in Protocol Extension.

``` swift numberLines
protocol ErrorDisplayable {
    func error(message:String)
}

extension ErrorDisplayable {
    func error(message:String) {
        // Do what it needs to show an error
        //...
        print(message)
    }
}

struct NetworkManager : ErrorDisplayable{
    func onError() {
        error("Please check your internet Connection.")
    }
}
```

## 参见

  -
  - [修饰模式](../Page/修饰模式.md "wikilink")

  - [基于原则设计](https://zh.wikipedia.org/wiki/基于原则设计 "wikilink")

  - [Trait](../Page/Traits_\(计算机科学\).md "wikilink")，一种类似结构但不要求线型复合

## 参考文献

## 外部链接

  - [MixIn](http://c2.com/cgi/wiki?MixIn) at Portland Pattern Repository
  - [Mixins](https://web.archive.org/web/20050308114937/http://www.macromedia.com/support/documentation/en/flex/1/mixin/index.html)
    in [ActionScript](../Page/ActionScript.md "wikilink")
  - [The Common Lisp Object System: An
    Overview](http://www.dreamsongs.com/NewFiles/ECOOP.pdf) by [Richard
    P.
    Gabriel](https://zh.wikipedia.org/wiki/Richard_P._Gabriel "wikilink")
    and Linda DeMichiel provides a good introduction to the motivation
    for defining classes by means of generic functions.

[Category:面向对象的程序设计](https://zh.wikipedia.org/wiki/Category:面向对象的程序设计 "wikilink")

1.  <http://c2.com/cgi/wiki?MixIn>
2.  <http://naildrivin5.com/blog/2012/12/19/re-use-in-oo-inheritance.html>
3.  <http://culttt.com/2015/07/08/working-with-mixins-in-ruby/>
4.
5.  <http://justinleitgeb.com/ruby/moving-beyond-mixins/>
6.  [OOPSLA '90, Mixin based inheritance
    (pdf)](http://www.bracha.org/oopsla90.pdf)
7.
8.
9.  [Mixin classes in
    XOTcl](http://media.wu-wien.ac.at/doc/tutorial.html#mixins)
10.
11. [Source code for SocketServer in
    CPython 3.5](https://hg.python.org/cpython/file/3.5/Lib/socketserver.py)
12. <http://raganwald.com/2014/04/10/mixins-forwarding-delegation.html>
13. <http://bob.yexley.net/dry-javascript-with-mixins/>
14. <https://docs.oracle.com/javase/tutorial/java/IandI/defaultmethods.html>
15. [Implementing Mix-ins with C\# Extension
    Methods](http://www.zorched.net/2008/01/03/implementing-mixins-with-c-extension-methods/)
16. [I know the answer (it's 42) : Mix-ins and
    C\#](http://blogs.msdn.com/abhinaba/archive/2006/01/06/510034.aspx)
17. [Mixins, generics and extension methods in
    C\#](http://erwyn.bloggingabout.net/2005/10/20/mixins-generics-and-extension-methods-in-c/)
18. [The many talents of JavaScript for generalizing Role Oriented
    Programming approaches like Traits and
    Mixins](http://peterseliger.blogspot.de/2014/04/the-many-talents-of-javascript.html#the-many-talents-of-javascript-for-generalizing-role-oriented-programming-approaches-like-traits-and-mixins),
    April 11, 2014.
19. Angus Croll, [A fresh look at JavaScript
    Mixins](http://javascriptweblog.wordpress.com/2011/05/31/a-fresh-look-at-javascript-mixins/),
    published May 31, 2011.
20. [JavaScript Code Reuse
    Patterns](https://github.com/petsel/javascript-code-reuse-patterns/tree/master/source/components/composition/),
    April 19, 2013.
21. <https://gleichmann.wordpress.com/2009/07/19/scala-in-practice-traits-as-mixins-motivation>