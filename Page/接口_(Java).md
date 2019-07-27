**介面**（），在[Java](../Page/Java.md "wikilink")程式語言中是一個（Abstract
Type），它被用來要求[類別](../Page/类_\(计算机科学\).md "wikilink")(Class)必須實作指定的方法，使不同類別的物件可以利用相同的界面進行溝通。介面通常以**`interface`**來宣告，它僅能包含[方法簽名](https://zh.wikipedia.org/wiki/方法簽名 "wikilink")（Method
Signature）以及[常數宣告](https://zh.wikipedia.org/wiki/常數 "wikilink")（變數宣告包含了
[`static`](https://zh.wikipedia.org/wiki/Static_variable#Static_Variables_as_Class_Variables "wikilink")
及
[`final`](https://zh.wikipedia.org/wiki/Final_\(Java\) "wikilink")），一個介面不會包含[方法的實作](../Page/方法_\(電腦科學\).md "wikilink")（僅有定義）。

介面無法被实例化，但是可以被實作。一個實作介面的類別，必須實作介面內所描述的所有方法，否則就必須宣告為（Abstract
Class）。另外，在Java中，介面型別可用來宣告一個變數，他們可以成為一個空指標，或是被綁定在一個以此介面實現的物件。

其中一個使用介面的優勢是，可以利用他們模擬[多重继承](../Page/多重继承.md "wikilink")，類別在JAVA中不允許多重继承，所有在JAVA中的類別必須而且僅能有一個父類別，而（JAVA型別系統中最頂層的型別）是唯一一個例外。

JAVA的類別可以被實作許多個介面，然而一個介面則無法實作其他的介面。

## 概觀

介面被用來統一類別的共通行為，當不同的類別需要進行資訊共享時，是不需要特別去建立類別間的關係。舉例來說，一個人（Human）及一隻鸚鵡（Parrot）都會吹口哨（whistle），然而`Human`及`Parrot`不應該為`Whistler`的子類別，最好的做法是令他們為`Animal`的子類別，而他們可以使用`Whistler`的介面進行溝通。
還有一種介面的使用方法，則是當一個[物件有實現特定介面時](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")，我們使用它是不需要知道它的類別，例如，一個事物因為口哨的噪音影響到其他人，對於其他人而言，就不需要知道噪音來源是來自人還是鸚鵡，因為他們可以確定，一個會吹口哨的事物正在吹口哨。舉一個更實際的例子，[排序算法](../Page/排序算法.md "wikilink")可能會期待物件的型別是可以被的，於是它只需要知道物件的型別可以被以某種方式進行排序即可，這與物件的型別無關。`whistler.whistle()`將會呼叫物件的實現方法`whistle`，而不需要知道物件是以哪個類別來實現`Whistler`。

例如：

``` Java
  interface Bounceable {
      void setBounce();  // 注意分號
                         // 介面的方法（method）是公開（public）、抽象（abstract）、永遠不會是最尾端的型別（final）
                         // 把它們想成只是個模型，所以沒有任何方法有被實現
  }
```

## 使用方法

### 介面的宣告

下列的語法為介面的宣告方式：

`[`*`存取修飾`*`] interface `***`介面名稱`***` [extends `*`其他的介面`*`] {`
`        `*`常數宣告`*
`        `*`抽象方法宣告`*
`}`

介面的主體包含著抽象[方法](../Page/方法_\(電腦科學\).md "wikilink")，但所有方法在介面內（定義上）都是抽象（Abstract）方法，所以`abstract`的關鍵字在介面內則不被需要。由於介面代表著一個對外行為的集合，所以任何方法在介面內都是`public`(公開的)。

所以，一個簡單的介面可以這麼寫

``` java
public interface Predator {
       boolean chasePrey(Prey p);
       void eatPrey(Prey p);
}
```

介面內的成員皆為靜態（static）、final及公開（public），反之，他們可以成為任何類別或介面的型別\[1\]'''

實現一個介面的語法，可以使用這個公式：

`... implements `*`介面名稱`*`[, `*`其他介面`*`, `*`其他的...`*`, ...] ...`

類別可以用來實現介面，舉例來說

``` java
public class Lion implements Predator {

        public boolean chasePrey(Prey p) {
               // programming to chase prey p (specifically for a lion)
        }

        public void eatPrey (Prey p) {
               // programming to eat prey p (specifically for a lion)
        }
}
```

如果一個類別實現了一個介面，而沒有實現介面的所有方法，則它必須被標注為`abstract`(抽象類別)。一個抽象類別的子類別必須實現它未完成的方法，假如該項子類別仍不會實現介面的所有方法，那麼該項子類別依然需要被標注為`abstract`。

類別可以同時實現多項介面

``` Java
 public class Frog implements Predator, Prey { ... }
```

介面通常被使用在Java程式語言，用來做[回调函数](../Page/回调函数.md "wikilink")使用\[2\]
。Java並不允许方法作為參數傳遞使用，因此，其中一個解決辦法則是可以定義一個介面，把這個介面當成方法的參數，以此來使用該項物件的方法簽名。

### 子介面

介面可以被延伸為數個不同的介面，可以使用上述所描述的方法，舉例來說：

``` java
 public interface VenomousPredator extends Predator, Venomous {
         //介面主體
 }
```

以上的程式片段是合法定義的子介面，與類別不同的是，介面允許多重繼承，而`Predator` 及 `Venomous`
可能定義或是繼承相同的方法，比如說`kill(Prey
prey)`，當一個類別實現`VenomousPredator`的時候，它將同時實現這兩種方法。

## 範例

有些泛用的[Java](../Page/Java.md "wikilink")介面可供參考：

  - 擁有一個方法，用以描述兩個物件是否相等，或是其中一個物件大於另外一個物件。[泛型](../Page/泛型.md "wikilink")允許已經實現的類別，其物件可以用來互相比較。

  - 是一個[marker
    interface](https://zh.wikipedia.org/wiki/marker_interface "wikilink")
    沒有任何介面或是欄位，僅有一個空的主體，它被用來表示一個類別可以被[序列化](../Page/序列化.md "wikilink")。它的[Javadoc](../Page/Javadoc.md "wikilink")描述了他是如何運作，而且不需要被強制編程。

## 另見

  - [Mixin](../Page/Mixin.md "wikilink")
  - [Traits](https://zh.wikipedia.org/wiki/Trait_\(computer_programming\) "wikilink")

## 參考文獻

## 外部連結

  - [Skeletal Implementations in Java
    Explained](http://10kloc.wordpress.com/2012/12/03/abstract-interfaces-the-mystery-revealed/)
  - [What Is an
    Interface?](http://java.sun.com/docs/books/tutorial/java/concepts/interface.html)
  - [Difference between a Java interface and a Java abstract
    class](http://javapapers.com/?p=17)

[de:Schnittstelle_(Objektorientierung)](https://zh.wikipedia.org/wiki/de:Schnittstelle_\(Objektorientierung\) "wikilink")
[pl:Interfejs
(Java)](https://zh.wikipedia.org/wiki/pl:Interfejs_\(Java\) "wikilink")
[ru:Интерфейс (объектно-ориентированное
программирование)](https://zh.wikipedia.org/wiki/ru:Интерфейс_\(объектно-ориентированное_программирование\) "wikilink")

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")

1.
2.