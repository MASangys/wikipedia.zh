**Common Lisp**，縮寫為**CL**（不是組合邏輯的縮寫）是Lisp編程語言的一種方言，由ANSI INCITS
226-1994(R2004)（前身為ANSI X3.226-1994(R1999)），所定義的語言規範標準。Common Lisp
HyperSpec是源自於ANSI Common Lisp標準的網頁超連結版本。

CL語言是為標準化和改良Maclisp而開發的後繼者。到20世紀80年代初，幾個工作群組已經在設計MacLisp各種後繼者，例如：Lisp
Machine Lisp（又名 ZetaLisp），Spice Lisp，NIL和S-1
Lisp。CL是為了標準化和擴展此前眾多的MacLisp分支而開發，它本身並非具體的實作，而是對語言設立標準的規範。有數個實作符合Common
Lisp規範，其中包括自由和開源軟件，以及商業化產品。CL支援了[結構化](../Page/结构化编程.md "wikilink")、[函數式和](../Page/函數程式語言.md "wikilink")[物件導向編程等範式](../Page/面向对象程序设计.md "wikilink")。相对于各种嵌入在特定产品中的语言，如[Emacs
Lisp和](../Page/Emacs_Lisp.md "wikilink")[AutoLISP](../Page/AutoLISP.md "wikilink")，Common
Lisp是一種用途廣泛的编程语言。不同於很多早期Lisp，Common
Lisp如同Scheme，其中的變量是預設為詞法[作用域的](../Page/作用域.md "wikilink")。

身為一種[動態編程語言](../Page/动态语言.md "wikilink")，它有助於進化和[增量的軟件開發](../Page/迭代式开发.md "wikilink")，並將其迭代[編譯成高效的執行程序](../Page/編譯器.md "wikilink")。這種增量開發通常是互動持續地改善，而不需中斷執行中的應用程序。它還支援在後期的分析和優化階段添加可選的型別註記與轉型，使編譯器產生更有效率的代碼。例如在硬體和實作的支援範圍內，`fixnum`能保存一個未封裝整數，允許比[大整數或](../Page/大数_\(数学\).md "wikilink")[任意精度類型更高效率的運算](../Page/高精度计算.md "wikilink")。同樣地，在每個模組或函數的基礎上可聲明優化，指示編譯器要編譯成哪一類型的安全級別。

CL包含了支援[多分派和方法組合的物件系統](../Page/多分派.md "wikilink")，縮寫為CLOS，它通常以元物件（Metaobject）協定來實現。

CL藉由標準功能進行擴展，例如Lisp宏（编译时期程序自身完成的代码重排（compile-time code rearrangement
accomplished by the program
itself））和阅读器宏（赋予用户自定义的語法以扩展具特殊意义的符号（extension
of syntax to give special meaning to characters reserved for users for
this purpose））。

CL為Maclisp和[约翰·麦卡锡的原創Lisp提供了一些向後兼容性](../Page/约翰·麦卡锡.md "wikilink")。這允許較舊的Lisp軟件移植到Common
Lisp之上。

## 语法

Common Lisp是[Lisp編程語族的一種方言](../Page/Lisp.md "wikilink");
它使用[S-表达式來表示源碼和資料結構](../Page/S-表达式.md "wikilink")。[函数呼叫](../Page/函数.md "wikilink")、[宏形式和基本形式都以列表來編寫](../Page/宏.md "wikilink")，列表的第一项是函数名稱，如以下範例：

``` lisp
 (+ 2 2)   ; 将 2 加上2 得 4。函數名稱為'+'，在Lisp語法中是唯一的(只能作用於數值)。
```

``` lisp
 (defvar *x*)      ; 先確保 *x* 變量存在，尚未賦值給它。星號也是變量名稱的一部份，
                   ; 依慣例約定表示一個特殊（全局）變量。符號 *x* 與生俱有的屬性是
                   ; 對於它後續的綁定是動態可變的，而非詞法靜止不變的。
 (setf *x* 42.1)   ; 對 *x* 變量賦予浮點數值 42.1。
```

``` lisp
 ;; 定义计算一个数的平方函数：
 (defun square (x)
               (* x x))
```

``` lisp
 ;; 执行这个函数：
 (square 3)        ; 返回平方值 9
```

``` lisp
 ;; 'let'構造為區域變量創建一個作用域。這裡變量'a' 被綁定到 6，變量'b'被綁定到 4。
 ;; 'let'的內部是一個函式體，對它求值後會返回最後一個計算值。這個'let'表達式將
 ;; a 和 b 相加的結果返回。變量 a 和 b 只存在於詞法作用域中，除非它們已先被標記
 ;; 成特殊變量（例如上述的 DEFVAR）。
 (let ((a 6)
       (b 4))
   (+ a b))        ; 返回數值 10
```

## 資料型別

Common Lisp 擁有豐富的資料型別。

### 純量型別

數值型別包括整數，分數，浮點數和複數。Common
Lisp使用[大數](../Page/高精度計算.md "wikilink")（bignums）來表示任意大小和精度的數值。
分數型別確切地代表分數，很多語言並不具備這種能力。Common
Lisp會自動將數值轉換成適當的型別。有許多方式取捨數值，函數`round`將參數四捨六入為最接近的整數，逢五則取偶整數。`truncate`，`floor`和`ceiling`分別朝向零，向下或向上取整數。所有這些函數將捨去的小數當作次要值返回。

例如，`（floor -2.5）`產生 -3, 0.5；`（ceiling -2.5）`產生 -2，-0.5；`（round 2.5）`得到
2,0.5；和`（round 3.5）`得到 4，-0.5。

Common Lisp字元型別不限於ASCII字符，因為在ASCII出現前Lisp就已經存在了。大多數現代實現允許Unicode字元。

符號（Symbol）型別是Lisp語言共有的，而在其它語言中較少見。一個符號是個命名唯一的資料物件，它擁有幾個部份：名稱，值，函數，屬性列表（property
list）和套件。其中，值單元和函數單元是最重要的。Lisp中的符號通常類似於其它語言中的標識符（identifier）用法：保存變量的值；然而還有很多種用途。一般來說，對一個符號求值時會得到以該符號為變量名稱的值，但也有例外：譬如在關鍵符套件中的符號，形如`:foo`的符號值就是它本身（自我評估的，self-evaluating），而符號`T`和`NIL`則用於表示布爾邏輯值真與假。Common
Lisp可設計容納符號的[命名空間](../Page/命名空間.md "wikilink")，稱為“套件”（package）。

### 資料結構

Common Lisp的序列型別包括列表、向量、位元向量和字串。有許多函式可對應不同型別的序列進行操作。

CL如同所有Lisp方言，列表由[點對](../Page/列表構造函數.md "wikilink")（conses）組成，有時稱為cons單元、序偶或構對。一個點對是帶有兩個儲存槽的資料結構，分別稱為car和cdr。列表就是一條點對的[串列](../Page/連結串列.md "wikilink")，或只是空列表。每一個點對的CAR會參照列表的成員（可能是另一個列表）。而除了最後一個的CDR參照到`nil`值之外，其餘的CDR都會參照下一個點對。Conses也能輕易地實現樹和其它複雜的資料結構；儘管一般建議以結構體或是類別的實例來代替。利用點對能夠創建循環形的資料結構。

CL支援多維陣列，且如需要能動態地調整陣列大小。多維陣列常用於數學中的矩陣運算。向量就是一維陣列。陣列可載入任何型別（甚至於混合的型別）的成員，或只專用於特定某一型別的成員，例如由整數構成的位元向量。許多Lisp實作會根據特定型別，對陣列的操作函數進行優化。兩種特定型別的專用陣列是內建的：字串和位元向量。字串是由許多字元構成的向量，而位元向量是由許多位元構成的向量。

[雜湊表儲存資料物件之間的關聯](../Page/哈希表.md "wikilink")，任何物件都可以作為雜湊表的鍵或值。和陣列一樣，雜湊表可依需求自動調整其大小。

套件是一組符號的集合，主要用於將程序的個別部份區分命名空間。套件能匯出一些符號，將它們作為共用介面的某一部份，也可以匯入其它套件引用並概括承受其中的符號。

CL的結構體（Structures）類似於C語言的structs和Pascal的records，是一種任由使用者發揮的複雜資料結構定義，表示具有任意數量和任何型別的欄位（也叫做槽）。結構允許單一繼承。

類別（Class）在後期被整合進Common Lisp中，有些概念與結構體重疊，但類別提供了更多的動態特性和多重繼承（見
CLOS）。由類別創建的物件稱為實例。有個特殊情況是[泛型](../Page/泛型.md "wikilink")（Generics）的雙重角色，泛型既是函數，也是類別的實例物件。

### 函数

Common
Lisp支援[第一類函數](../Page/第一類物件.md "wikilink")（亦即函數可當成資料類型來處理）。例如編寫以其它函數當作一個函數的參數，或函數的傳回值也是函數，利用函數的結合來描述常用的操作。CL函式庫高度依賴於這樣的[高階函數變換](../Page/高階函數.md "wikilink")。舉例而言，`sort`函數可將[關係運算子作為參數](../Page/關係運算子.md "wikilink")，並選用如何取鍵的函數作為參數。如此一來不但能對任何型別的資料[排序](../Page/排序.md "wikilink")，還能根據取用的鍵值對資料結構作排序。

``` lisp
 ;; 使用大小於函數作為比較關係，對列表進行排序。
 (sort (list 5 2 6 3 1 4) #'>)   ; 大於比較排序結果 (6 5 4 3 2 1)
 (sort (list 5 2 6 3 1 4) #'<)   ; 小於比較排序結果 (1 2 3 4 5 6)
```

``` lisp
 ;; 對每個子列表中，根據其第一個元素作為鍵值，以小於比較關係來排序。
 (sort (list '(9 A) '(3 B) '(4 C)) #'< :key #'first)   ; 結果為 ((3 B) (4 C) (9 A))
```

對函數求值的模型非常簡單。當求值器遇到一個形式如`（F a1 a2 ...）`時，那麼名稱為`F`的符號會被假定是以下三種狀況之一：

  - 是否為基本操作符？（在固定列表中檢查，ANSI LISP標準有25個特殊操作符號）
  - 是否為宏運算符？（必須先前已經存有定義）
  - 是否為函數名稱？（預設，可以是符號，也可能是以`lambda`符號開頭的子形式。）

如果`F`符號是三者其中之一，則求值器判定它是個函數，找到此函數的定義內容，然後以從左到右的次序來評估參數`a1，a2，...，an`的值，並且使用這些值進行運算，以函數定義中最後一個評估的結果作為傳回值。

#### 定义函数

宏`defun`用来定义函数。函数定义给出了函数名，参数名和函数体：

``` lisp
(defun square(x)
   (* x x))
```

函数定义中可以包括“声明”，它可以指示编译器优化设置或参数的数据类型等。还可以在函数定义中包括“文档字符串”（docstring），Lisp系统用它们形成互動式文档：

``` lisp
(defun square(x)
   (declare (number x) (optimize (speed 3) (debug 0) (safety 1)))
   "Calculates the square of the number x."
   (* x x))
```

匿名函数用`lambda`表达式定义。Lisp编程频繁使用高阶函数，以匿名函数作为其参数的作法十分有效。

还有一些有关于函数定义和函数操作的运算符。如，操作符`compile`可以用来重新编译函数。（一些Lisp系统默认下在解释器里运行函数，除非指示编译它；其他Lisp系统在函数输入时即被编译。）

#### 定義泛型函數及方法

`defgeneric`宏用來定義泛型函數，而`defmethod`宏則用來定義方法。泛型函數是一些方法的集合。方法可依照CLOS標準類別、系統類別、結構類別或物件，以特定方式處理它們所使用的參數。許多型別都有相對應的系統類別。當呼叫泛型函數時，[多樣派發](../Page/多分派.md "wikilink")（multiple-dispatch）將會依型別確定要應用的有效方法。如下列範例展示了對不同型別的參數如數值、向量或字串，設計對應的`add`方法將兩個物件相加的動作。

``` lisp
 (defgeneric add (a b))
```

``` lisp
 (defmethod add ((a number) (b number))
    (+ a b))
```

``` lisp
 (defmethod add ((a vector) (b number))
    (map 'vector (lambda (n) (+ n b)) a))
```

``` lisp
 (defmethod add ((a vector) (b vector))
    (map 'vector #'+ a b))
```

``` lisp
(defmethod add ((a string) (b string))
  (concatenate 'string a b) )
```

``` lisp
 (add 2 3)                   ; returns 5
 (add #(1 2 3 4) 7)          ; returns #(8 9 10 11)
 (add #(1 2 3 4) #(4 3 2 1)) ; returns #(5 5 5 5)
 (add "COMMON " "LISP")      ; returns "COMMON LISP"
```

泛型函數也是第一類資料型別。除了上面陳述之外，泛型函數和方法還有更多的特性。

#### 函数名字空间

函数的名字空间与数据变量的名字空间是分离的。这是Common
Lisp和[Scheme编程语言的一个重要不同之处](../Page/Scheme.md "wikilink")。在函数名字空间定义名字的操作符包括`defun`,`flet`，和`labels`。

要用函数名把函数作为参数传给另一个函数，必须使用`function`特殊操作符，通常简略为\#'。上文第一个`sort`的例子中，为了引用在函数名字空间名为`>`的函数，使用了代码`#'>`。

[Scheme编程语言的求值模型更简单些](../Page/Scheme.md "wikilink")：因为只有一个名字空间，式（form）中所有位置都被求值（以任意顺序）--
不仅是参数。所以以一种方言（dialect）写就的代码往往令熟悉其它方言程序员感到迷惑。例如，许多CL程序员喜欢使用描述性的变量名如"list"或"string"，在Scheme中这将导致问题，因为它们可能局部覆盖了函数名字。

为函数提供分离的名字空间是否有益是Lisp社区不断争论的主题之一，常被称为“Lisp-1与Lisp-2辩论”。这些名称出现于[Richard
P. Gabriel和](../Page/Richard_P._Gabriel.md "wikilink")[Kent
Pitman](../Page/Kent_Pitman.md "wikilink")
1998年的一篇论文，其中广泛的比较了这两种方法。[1](http://www.nhplace.com/kent/Papers/Technical-Issues.html)

#### 多值

Common
Lisp支援多值的概念，任何表達式經過評估之後必定會有一個主要值，但它也可能擁有任何數量的次要值，讓感興趣的呼叫者接收和檢查。這個概念與回傳列表值不同，因為次要值是備選用的，並通過專用的側面通道來傳遞。也就是說如果不需要次要值，則呼叫者完全不需要知道它們的存在，這是偶爾需使用額外而非必要的資訊，一個方便的機制。

  - 例如`TRUNCATE`函數對給定數值取最接近的整數。然而，它也會返回一個餘數作為次要值，使呼叫者確定有多少數值被捨棄了。它還支援可選用的除數參數，可顯明地表達[带余除法](../Page/带余除法.md "wikilink")：

<!-- end list -->

``` cl
(let ((x 1266778)
      (y 458))
  (multiple-value-bind (quotient remainder)
      (truncate x y)
    (format nil "~A divided by ~A is ~A remainder ~A" x y quotient remainder)))

;;;; => "1266778 divided by 458 is 2765 remainder 408"
```

  - `GETHASH`回傳雜湊表中依鍵作搜尋的值，否則返回預設值，還有一個指出是否找到該值的布爾輔助值。因此不論搜尋結果(找到鍵的對應值或預設值)是否成功，源碼都可以直接使用它，但如果要求能區別搜尋結果的情況時，它可以檢查輔助的布爾值並做出適當反應。相同的函數調用支援兩種使用情境，不會受到另一個的負擔或約束影響。

<!-- end list -->

``` cl
(defun get-answer (library)
  (gethash 'answer library 42))

(defun the-answer-1 (library)
  (format nil "The answer is ~A" (get-answer library)))
;;;; Returns "The answer is 42" if ANSWER not present in LIBRARY

(defun the-answer-2 (library)
  (multiple-value-bind (answer sure-p)
      (get-answer library)
    (if (not sure-p)
        "I don't know"
     (format nil "The answer is ~A" answer))))
;;;; Returns "I don't know" if ANSWER not present in LIBRARY
```

一些標準形式支援多值，最常見的是用來存取次要值的`MULTIPLE-VALUE-BIND`基本運算子和用於返回多值的`VALUES`：

``` cl
(defun magic-eight-ball ()
  "Return an outlook prediction, with the probability as a secondary value"
  (values "Outlook good" (random 1.0)))

;;;; => "Outlook good"
;;;; => 0.3187
```

### 其它型別

Common Lisp中的其他資料型別包括：

  - [-{zh-tw:雜湊; zh-cn:哈希表}-是Common](../Page/哈希表.md "wikilink")
    Lisp提供的用于存储“键值对”的資料型別。在-{zh-tw:雜湊;
    zh-cn:哈希表}-中任何-{zh-tw:物件;
    zh-cn:对象}-都可以作为键或者值。-{zh-tw:雜湊;
    zh-cn:哈希表}-在必要时候會自动调整大小。

<!-- end list -->

  - 路徑名稱（Pathnames）表示[檔案系統中的檔案和目錄](../Page/文件系统.md "wikilink")。Common
    Lisp的路徑名稱型別比大多數[作業系統的檔名慣例更為通用](../Page/操作系统.md "wikilink")，提高Lisp編程在不同系統存取檔案能力的可攜性。

<!-- end list -->

  - 輸入流和輸出流（Input/output streams）表示二進位或文本資料的源頭和出口，例如顯示終端或開啟的檔案內容。

<!-- end list -->

  - Common
    Lisp有內建的[偽亂數產生器](../Page/伪随机性.md "wikilink")（PRNG）。隨機狀態物件代表可重複使用的偽亂數起源，允許用戶設定PRNG種子或使其重置序列。

<!-- end list -->

  - 條件（Conditions）是用於表示程式回應的錯誤、異常和其它“有趣”事件的型別。

<!-- end list -->

  - 類別是第一類物件，它們自身是被稱為元類別（metaclass）的實例。

<!-- end list -->

  - 讀取字表（Readtables）是控制Common
    Lisp直譯器（`read`函）如何解析源碼文本的物件型別。開發人員可操控Lisp編程在讀取源碼時要使用哪一個讀取字表，改變或擴展Lisp的語法。

## 作用域

與許多其它編程語言中的程式一樣，Common
Lisp編程使用名稱來引用變量、函數和許多其它類型的實體。被命名的參照只在其[作用域中有用](../Page/作用域.md "wikilink")。名稱與引用實體之間的關聯稱為綁定。作用域是指確定名稱具有特殊綁定的情況。

### 作用域的決定

在Common Lisp中需要決定作用域的情況包括：

  - 參照在表達式中的位置，如果它位於複合表達式的最左側，它指的是一個基本運算子、一個宏或是函數的綁定，否則是一個變量綁定或其它的東西。
  - 依參照如何出現在表達式中，例如`(go x)`表示將控制跳轉到`x`標籤的位置，而`(print
    x)`表示`x`變量。這兩個`x`的作用域可以在程序的相同區域處於活動狀態，因為`tagbody`標籤的`x`與`x`變量名稱位於分開的命名空間中。基本運算子或宏形式可完全控制其語法中所有符號的含義。例如在`(defclass
    x (a b) ())`表達式中，類別定義`(a
    b)`是基本類別的列表，因此會在類別的命名空間中搜尋這些名稱；`x`並非參照到現有的綁定，而是源自於`a`和`b`的新類別名稱。這些事實純粹由`defclass`的語義表示得出。這表達式的唯一事實是`defclass`引用一個宏綁定；其中的一切都由`defclass`決定作用域。
  - 參照在程序中的位置。比如若對`x`變量的參照被含括在一個綁定結構中，例如以`let`綁定對`x`的定義，則該參照的效用發生在該綁定創建的作用域內。
  - 對於變量的參照，如果變量符號已被聲明為`special`，無論這聲明是在本地的或在全局中。這將使參照依據其位於詞法或動態的環境中來引用它。
  - 參照解決的環境的具體實例。一個環境是在執行期將符號與綁定對應起來的字典。每種參照會使用自己的環境。詞彙的變量會在詞彙的環境中被引用，可將同一個參照與多個環境相關聯起來。例如由遞歸或使用多執行緒，一個函數的多次觸發可以同時存在。這些觸發會共用相同的程序文本，但每個都有自己的詞彙環境實例。

要理解符號參照到什麼實體，Common
Lisp開發人員必須知道參照是屬於哪一種作用域，如果它是一個變量的參照，那它是處於什麼樣的（動態或詞法的）作用域中？以及在執行期的情況，參照在什麼環境中被引用，綁定是在哪裡被引入到環境等等。

### 環境

#### 全局

Lisp中的一些環境總是存在於全局作用域之中， 例如定義了一個新型別，那麼以後在任何地方都會知道它。
該類型別的參照會從全局作用域中的環境去尋找。

#### 動態

環境在Common
Lisp中有一種類型是動態環境。在這種環境中建立的綁定具有動態的作用域，這表示某些構造例如`let`，會在執行的起點就先建立綁定，而在該構造完成執行時消失：它的生命週期依附著這區塊動態地觸發和停用。然而動態綁定不僅在該區塊中可見；對於從該區塊中調用的所有函數也是可見的。這樣的可見性被稱為不定的作用域。具有動態（依附區塊的觸發和停用相關的生命週期）和不定作用域（從該區塊調用的所有函數可見）的綁定，被稱為具有動態作用域。

Common
Lisp支援動態作用域的變量，也稱為特殊變量。有些其它類型的綁定也必須是動態作用域的，例如重新啟動和捕獲標籤。函數綁定不能以`flet`（僅提供詞法範圍的函數綁定）進行動態作用域，但可以將函數物件（Common
Lisp中的第一類物件）分配給動態作用域的變量，在動態作用域內使用`let`綁定，然後再以`funcall`或`APPLY`調用。

動態作用域非常有用，因為它將參照的清晰度和規律添加到全局變量中。計算機科學中的全局變量被認為是潛在的錯誤來源，因為它們可能導致模組之間存有特殊隱蔽的溝通渠道，從而導致令人驚訝而不在預期中的交互作用。

在Common
Lisp中，只有頂層綁定的特殊變量就像其它編程語言中的全局變量一樣。它可以儲存一個新的值，該值僅替換頂層綁定中的值。造成使用全局變量的核心錯誤，是粗心的替代了全局變量值。但是，使用特殊變量的另一種方法是，在表達式中給它一個新的區域綁定。這有時被稱為“重新綁定”變量。動態作用域中對變量的綁定，會創建一個臨時的新記憶體位置給予該變量，並將該名稱與該位置相關聯。當該綁定有效，對該變量的所有參照都指向新的綁定；之前的綁定則是被隱藏起來的。當綁定表達式的執行結束時，臨時的記憶體位置消失，而舊綁定浮現出來，變量的原始值依舊完好無損。當然，同一變量的多個動態綁定可以嵌套。

在支援多緒的Common
Lisp實作中，動態作用域是針對每個執行緒的。因此，特殊變量是當成執行緒區域存儲的抽象化。如果一個執行緒重新綁定了特殊變量，則此重新綁定對其它執行緒中的該變量沒有作用。儲存在綁定中的值只能由創建該綁定的執行緒取得。如果每個執行緒綁定一些特殊變量`*x*`，則`*x*`的行為就像執行緒在本地中儲存一樣。在沒有重新綁定`*x*`的執行緒中，它的行為就像一個普通的全局變量：所有這些執行緒的參照都會指向`*x*`的頂層綁定。

動態變量可以用來擴展執行上下文，並附加上下文訊息，這些信息在函數之間隱含地傳遞，而不必顯示為額外的函數參數。當執行控制的轉移必須穿過不相關的代碼層時，不能藉由額外參數來擴展傳遞附加數據，所以這是非常有用的。這樣的情況通常需要一個全局變量，必須能夠被儲存和恢復，以便在遞歸時不會中斷：動態變量的重新綁定可以處理此情形。該變量必須是執行緒區域的（或必須使用大的互斥,
mutex），因此這個情況不會在執行緒下斷開：動態作用域的實作也可以處理此情形。

在Common
Lisp函式庫中有很多標準的特殊變量。例如，所有標準I/O流都儲存在頂層為眾所熟知的特殊變量的綁定中，即`*standard-output*`。

假設有個foo函數寫入標準輸出：

``` lisp
  (defun foo ()
    (format t "Hello, world"))
```

要擷取其輸出中的字串，`*standard-output*`可以被綁定到一個字串流，並調用它：

``` lisp
  (with-output-to-string (*standard-output*)
    (foo))
```

` -> "Hello, world" ; gathered output returned as a string`

#### 區域

Common
Lisp支援詞法環境。形式上，詞法環境中的綁定具有詞法作用域，並可能具有不定的範圍或動態的範圍，取決於命名空間的類型。詞法作用域實際上表示可見性被限制在綁定建立的區塊中。參照沒有以文本（即詞法地）嵌入在該區塊中，根本看不到該綁定。

`TAGBODY`中的標籤會具有詞法作用域。如果</code>(GO
X)</code>表達式實際上沒有嵌入到其中，則它會發生錯誤。`TAGBODY`包含標籤`X`。但是當`TAGBODY`執行終了時，標籤的綁定就會消失，因為它們具有動態作用域。如果以調用一個詞法閉包重新進入該代碼區塊，那麼這個閉包的內文無法藉由`GO`將控制轉移到標籤中：

``` lisp
  (defvar *stashed*) ;; will hold a function

  (tagbody
    (setf *stashed* (lambda () (go some-label)))
    (go end-label) ;; skip the (print "Hello")
   some-label
    (print "Hello")
   end-label)
  -> NIL
```

執行`TAGBODY`時，它首先評估以`setf`形式指向函數的特殊變量`*stashed*`，然後`(go
end-label)`將控件轉移到終了標籤，跳過代碼`(print
"Hello")`。由於終了標籤位於`TAGBODY`的末端，於是終止並返回`NIL`值。假設現在調用先前指向的函數：

``` lisp
  (funcall *stashed*) ;; Error!
```

這種狀況是錯誤的。一個實作的錯誤回應該包含錯誤條件訊息，例如“GO: tagbody for tag SOME-LABEL has
already been left”。該函數嘗試評估`(go
some-label)`，它是詞法地嵌入到`TAGBODY`中並解析為標籤。然而`TAGBODY`被跳過了而沒有執行（其作用域已經結束），故無法再轉移控制。

Lisp中的區域函數綁定具有詞法作用域，預設情況下變量綁定也同樣為詞法作用域。與`GO`標籤對比，它們的作用域是範圍不定的。當一個詞法的函數或變量綁定時，既然可以對其引用參照，該綁定就會持續存在，即使在建立該綁定的結構已經終止後。參照到詞法變量和函數，在其建立結構終止後，可以藉由詞法的閉包來實現。

Common
Lisp對於變量的預設模式是詞法綁定。對於個別符號可用區域聲明，或全局的聲明，來切換成動態作用域。而後者可能隱含地透過如`DEFVAR`或`DEFPARAMETER`，這樣的構造使符號成為全局可見的。Common
Lisp編程中慣例以開頭和結尾星號`*`，將特殊變量（即處於動態作用域的）包括起來，這稱為“耳罩慣例”。遵循此慣例的效果，即為特殊變量創建了一個單獨的命名空間，則應該處於詞法作用域的變量不會被意外地特殊化。

幾個原因使得詞法作用域有用。

首先，變量和函數的參照可以被編譯成高效的[機器碼](../Page/机器语言.md "wikilink")，因為執行期環境的結構相對簡單。在許多情況下它可以優化[堆疊存儲](../Page/堆栈.md "wikilink")，因此開啟和關閉的詞法作用域前置開銷最小。即使在必定要產生完整閉包的情況下，存取閉包的環境仍然是有效率的；每個變量通常會轉成一個綁定向量之中的偏移量，因此變量的參照就成為簡單的加載，或是以基底-加-偏移尋址模式表示的存儲指令。

其次詞法作用域（與不定範圍結合）可以創造出詞彙閉包，從而產生了中心以函數作為第一類物件的編程範式，這是函數式編程的根本。

第三，也許最重要的是，即使沒有用到詞法的閉包，詞法作用域的運用，會將程序模組與不需要的交互影響隔離開來。由於可見性受到限制，詞法變量是私有的。如果一個模組A綁定一個詞法變量X，並呼叫另一個模組B，則參照B其中的變量X，不會被意外地解析成在A中綁定的X。B根本無法存取X。對於需使用變量進行有規則的交互作用情況，Common
Lisp提供了特殊變量。特殊變量允許一個模組A設置變量X的綁定，使另一模組B能看見並從A調用其中的X。能夠做到這一點是個優勢，能夠防止它發生也是個優勢；因此Common
Lisp同時支援詞法和動態作用域兩者。

## 宏

Common Lisp中的宏是独一无二的，和C语言中的宏的机制相同，但是在宏扩展的过程中由于可以使用所有现有的Common
Lisp功能，因此宏的功能就不再仅限于C语言中简单的文本替换，而是更高级的代码生成功能。宏的使用形式和函数一致，但是宏的参数在传递时不进行求值，而是以*字面形式*传递给宏的参数。宏的参数一旦传递完毕，就进行*展开*。展开宏的过程将一直进行到这段代码中的所有宏都展开完毕为止。宏完全展开完毕后，就和当初直接手写在此处的代码没有区别，也就是嵌入了这段代码上下文中，然后Lisp系统就对完整的代码上下文进行求值。

Lisp宏表面上類似於函數的使用，但並不是會直接被求值的表達式，它代表程序源碼的字面轉換。宏將包含的代碼內容當作參數，將它們綁定到宏自身的參數，並轉換為新的源碼形式。這個新的源碼形式也能夠使用一個宏，然後重複擴展，直到新的源碼形式沒有再用到宏。最終形式即運行時所執行的源代碼。

Lisp宏的典型用途：

  - 新的控制結構（例如：循環結構，分支結構）
  - 作用域和綁定結構
  - 簡化複雜和重複源碼的語法
  - 以編譯時期副作用定義的頂層形式
  - 資料驅動的編程
  - 內嵌式的特定領域語言（例如：SQL，HTML，Prolog）
  - 隱式的結束形式

各種標準的Common Lisp功能也需要宏來實現，如以下所列：

  - 標準的`setf`抽象化，允許客製化編譯時賦值/存取運算子的擴展形式
  - `with-accessors, with-slots, with-open-file`，與其它相似的WITH宏
  - 依實作的，`cond`是建立在基本運算子`if`之上的宏；條件分支`when`和`unless`也是由宏所構成
  - 強大的`loop`迭代宏語法

宏是以`defmacro`來定義。基本運算子`macrolet`允許定義區域性的（詞法作用域）宏。也可以使用`define-symbol-macro`和`symbol-macrolet`，為符號定義宏。Paul
Graham的《On Lisp》書籍詳細介紹了Common Lisp中宏的用途。Doug Hoyte的《Let Over
Lambda》書籍擴展了關於宏的討論，聲稱「宏是lisp編程最獨特的優勢，和任何編程語言的最大優點」。Hoyte提供了迭代開發的幾個宏範例。

### 使用宏定義控制結構的範例

Lisp編程人員能夠利用宏來創造新的語法形式。典型的用途是創建新的控制結構。
此處提供一個`until`循環結構的宏範例，其語法如下：

``` text
(until test form*)
```

`until`宏的定義：

``` lisp
(defmacro until (test &body body)
  (let ((start-tag (gensym "START"))
        (end-tag   (gensym "END")))
    `(tagbody ,start-tag
              (when ,test (go ,end-tag))
              (progn ,@body)
              (go ,start-tag)
              ,end-tag)))
```

`tagbody`是一個基本的Common Lisp運算子，它提供了命名標籤的能力，並使用`go`形式跳轉到這些標籤。
反引號`` ` ``的用途類似單引號`'`（相當於quote函數，引用形式當成資料而不求值），它還是一個可作代碼[模板](../Page/模板_\(C++\).md "wikilink")
的符號，其中需要求值的形式參數以逗號`,`開頭填入模板；而以`,@`符號為開頭的形式參數，其中嵌套的內容會
再被拆解評估。`tagbody`形式測試結束條件。如果條件為真，則跳轉到結束標籤；否則執行主體的代碼，
然後跳轉到起始標記。

上述`until`宏的使用範例：

``` lisp
(until (= (random 10) 0)
  (write-line "Hello"))
```

利用`macroexpand-1`函數可以展開宏的代碼。上例經過展開後的代碼如下所示：

``` lisp
(TAGBODY
 #:START1136
 (WHEN (ZEROP (RANDOM 10))
   (GO #:END1137))
 (PROGN (WRITE-LINE "hello"))
 (GO #:START1136)
 #:END1137)
```

在宏展開期間，變量`test`的值為`(= (random (10) 0)`，變量`body`的值為`((write
"Hello"))`，是一個列表形式。

符號通常會自動轉成英文大寫。這個`TAGBODY`擴展中帶有兩個標籤符號，由`GENSYM`自動產生，並且不會被拘束到任何套件中（為待綁定的暫時自由變量）。兩個`go`形式會跳轉到這些標籤，因為`tagbody`是Common
Lisp中的基本運算子（並不是宏），因此它沒有其它內容會再展開。展開形式中用到的`when`宏也會再展開。將一個宏完全展開為源代碼的形式，被稱為代碼走開（code
walking）。在已被完全展開的形式中，`when`宏會被基本運算子`if`代換：

``` lisp
(TAGBODY
 #:START1136
 (IF (ZEROP (RANDOM 10))
     (PROGN (GO #:END1137))
   NIL)
 (PROGN (WRITE-LINE "hello"))
 (GO #:START1136))
 #:END1137)
```

源碼中所有包含的宏必須在展開之後，才能正常地評估或編譯。宏可以理解為接受和返回[抽象語法樹](../Page/抽象語法樹.md "wikilink")（Lisp
[S-表達式](../Page/S-表达式.md "wikilink")）的函數。
這些函數會在求值器或編譯器調用之前，將宏內容轉換為完整的源碼，Common
Lisp中所提供的任何運算子都可用於編寫宏。

### 变量捕捉和覆盖

因为Common
Lisp的宏在展开完毕后就完全嵌入了所处的代码上下文中，相当于以字面形式书写同样的代码，因此在宏展开代码中与上下文代码中相同的符号就会覆盖上面的引用，称为*变量捕捉*。如果Common
Lisp的宏展開代碼中的符號，與調用上下文中的符號相同時，通常稱為變量捕捉。對於宏，程序員可在其中創建具有特殊含義的各種符號。變量捕捉這個術語可能有點誤導，因為所有的命名空間都有非預期捕捉到相同符號的弱點，包括運算子和函數的命名空間、`tagbody`標籤的命名空間、`catch`標記，條件處理程序和重新啟動的命名空間。

變量捕捉情況會使軟件產生缺陷，發生原因可分為下列兩種方式：

  - 第一種方式是，宏擴展可能無意中產生一個符號參照，這個宏的作者設想符號是在全局命名空間中被解析，但是宏的展開代碼恰好提供了一個會遮蔽的區域定義，而取用區域定義的參照；此情況稱為類型一捕捉。
  - 第二種方式，類型二捕捉正好相反：宏的某些參數來自於宏調用者提供的代碼片段，這些代碼片段被寫入，而且參照周圍的綁定。然而，宏將這些代碼片段插入到一個展開中，而該展開有自己的綁定定義，這些綁定意外捕捉了這些參照其中的一部份。

Lisp語族的Scheme方言提供了一個宏寫入系統，它提供了參照透明度來消除這兩種類型的捕捉問題。這樣的宏寫入系統有時被稱為“保健的”，特別是其支持者（認為不能自動解決捕捉問題的宏系統是不正確的）。

在Common Lisp中宏的保健，則以兩種不同方式擔保。

一種方法是使用`gensym`：保證只產生唯一的符號在宏擴展中使用，而不受到捕捉問題的威脅。在宏定義中使用`gensym`是件零瑣的雜務，但利用宏可簡便`gensym`的實例化和使用。`gensym`很容易解決類型二的捕捉問題，但它們不能以相同方式來處理類型一的捕捉問題，因為宏展開不能重新命名，周圍代碼中參照所捕捉到的介入符號（被區域定義遮蔽的全局符號）。`Gensym`可以為宏擴展所需要的全局符號，提供穩定的別名。宏擴展使用這些秘密別名而非眾所熟知的名稱，因此重新定義熟知的名稱對宏並沒有不利影響。

另一種方法是使用套件，在自己套件中定義的宏，在套件中的擴展可以簡單地使用內部符號。使用套件能處理類型一和類型二捕捉問題。然而，套件不能解決參照到Common
Lisp標準函數和運算子的類型一捕捉，因為用套件來解決捕捉問題，只能解析其私有符號（套件中的符號不是導入的，或能被其它套件看見的）；而Common
Lisp函式庫的符號都是外部共用的，並經常導入到使用者定義套件中，或在使用者定義套件中是可見的。

以下範例是在宏展開時，運算子命名空間中發生的不預期捕捉：

``` lisp
 ;; expansion of UNTIL makes liberal use of DO
 (defmacro until (expression &body body)
   `(do () (,expression) ,@body))

 ;; macrolet establishes lexical operator binding for DO
 (macrolet ((do (...) ... something else ...))
   (until (= (random 10) 0) (write-line "Hello")))
```

`until`宏將展開為一個調用`do`功能的形式，該形式旨在引用Common
Lisp標準的`do`宏。但在這種情況下，`do`可能有完全不同的含義，所以`until`可能無法正常工作。

Common
Lisp禁止對標準運算子和函數的重新定義，避免它們的遮蔽來解決此類問題。因為前例重新定義了`do`標準運算子，實際上是一個不合格的代碼片段，Common
Lisp實作應當對前例進行診斷並拒絕其重新定義。

## 條件系統

條件系統負責Common
Lisp中的異常處理。它提供條件，處理程序和重新啟動。條件是描述異常情況（例如錯誤）的物件。如果一個條件訊號被發出了，Common
Lisp系統將搜索此條件類型的處理程序並調用它。處理程序現在可以搜索重新啟動（restart），並使用這些重新啟動之一來自動修復當前的問題，利用條件類型與條件物件的一部份所提供的任何相關資訊等，並調用相對的重新啟動函數。

如果沒有處理程序的代碼，這些重新啟動可以對使用者顯示選項（作為使用者介面的一部分，例如[除錯器](../Page/调试工具.md "wikilink")），讓使用者選擇和調用提供的重新啟動選項。由於條件處理程序在錯誤的上下文中被調用（堆疊仍未清空），在許多情況下對錯誤的完全回復處理是可行的，而不同於其它的異常處理系統可能已經終止了當前的執行程序。除錯器本身也可以使用`*debugger-hook*`這個動態變量來客製或替換。在`unwind-protect`中寫明的代碼，譬如作為終結，也會適當地被執行例外。

以下範例（使用 Symbolics
Genera）中，使用者從讀取求值打印循環（REPL，即頂層）呼叫一個test函數，嘗試開啟一個檔案，而當此檔案不存在時，Lisp系統則呈現四個重新啟動的選項。使用者選擇了`s-B:`這個重新啟動選項，並輸入不同的路徑名稱（以lispm-init.lisp取代了lispm-int.lisp）。使用者執行的源碼中並沒有包含任何錯誤處理。整個錯誤處理和重新啟動代碼是由Lisp系統本身所提供，它可以處理和修復錯誤，而不終止使用者執行中的程序碼。

``` text
Command: (test ">zippy>lispm-int.lisp")

Error: The file was not found.
       For lispm:>zippy>lispm-int.lisp.newest

LMFS:OPEN-LOCAL-LMFS-1
   Arg 0: #P"lispm:>zippy>lispm-int.lisp.newest"

s-A, <Resume>: Retry OPEN of lispm:>zippy>lispm-int.lisp.newest
s-B:           Retry OPEN using a different pathname
s-C, <Abort>:  Return to Lisp Top Level in a TELNET server
s-D:           Restart process TELNET terminal

-> Retry OPEN using a different pathname
Use what pathname instead [default lispm:>zippy>lispm-int.lisp.newest]:
   lispm:>zippy>lispm-init.lisp.newest

...the program continues
```

## Common Lisp 物件系統(CLOS)

Common Lisp包含了物件導向編程的工具包，Common Lisp物件系統或簡稱為CLOS，它是最強大的物件系統之一。Peter
Norvig
解釋了在具備CLOS的動態語言中，如何使用其功能（多重繼承，混合，多方法，元類，方法組合等），以達成設計模式更簡單的實現。曾經有幾個擴展被提出來作為Common
Lisp ANSI標準的物件導向編程應用，而最終採用了CLOS作為Common Lisp的標準物件系統。

CLOS是個具有多個分派和多重繼承的動態物件系統，並且與靜態語言（如C++
或Java）中的OOP設施截然不同。作為動態物件系統，CLOS允許在執行時期對泛型函數和類別進行更改。方法可以添加和刪除，類別可以添加和重新定義，物件可依照類別的變動更新，而物件所屬的類別也可以更改。CLOS已經整合到ANSI
Common Lisp中。泛型函數可以像普通函數一樣使用，並且是第一類資料類型。每個CLOS類別都已被整合到Common Lisp類別系統中。

Common Lisp中許多型別都有一個相對應的類別。規範中沒有說明CLOS實作的條件，CLOS進階用法的可能性並不是Common
Lisp的ANSI標準，CLOS的用處有更多的潛能。一般Common
Lisp實作將CLOS用於路徑名稱、流、輸入/輸出、條件，CLOS本身等等。

## 編譯器和直譯器

早期Lisp方言的幾個實現提供了直譯器和編譯器，不幸的是兩者之間語義是不同的。這些早期的Lisps在編譯器中實作了詞法作用域，在直譯器中實作了動態作用域。Common
Lisp要求直譯器和編譯器兩者皆預設使用詞法作用域。Common Lisp標準描述了直譯器和編譯器的語義。可以使用`compile`
函數呼叫編譯器，來編譯各個函數，並使用`compile-file`函數編譯源碼檔案。Common
Lisp允許類型別聲明，並提供產生編譯器代碼的選擇。後者有優化參數可選擇0（不重要）和3（最重要）之間的值：會影響到*執行速度*，*空間*，*安全性*，*除錯*和*編譯速度*。

還有一個函數用來評估Lisp源碼：`eval`。`eval`將源碼視為預先解析的S-表達式，而不像其它語言只當成字串處理。這樣可以用常見的Lisp函數來建構代碼，用來構造列表和符號，然後以`eval`函數來評估該代碼。幾個Common
Lisp實作（如Clozure CL和SBCL）以它們的編譯器來實現`eval`。這樣子即使用`eval`函數進行評估時，源碼也是會被編譯。

使用`compile-file`函數呼叫檔案編譯器，產生的編譯檔稱為fasl（快速加載，fast
load）檔案。這些fasl檔案和源碼檔案都能以`load`功能，加載到運行的Common
Lisp系統中。根據實作，檔案編譯器會產生位元組碼（例如[Java虛擬機](../Page/Java虚拟机.md "wikilink")），[C語言代碼](../Page/C语言.md "wikilink")（然後以C編譯器編譯）或直接使用[原生機器碼](../Page/机器语言.md "wikilink")。

即使源碼已經完全被編譯，Common Lisp實作可以和使用者互動。因此，Common
Lisp的互動介面並非類比於[直譯腳本的設想](../Page/直譯語言.md "wikilink")。

這個語言區隔了讀取時期、編譯時期、加載時期和執行時期，並讓使用者編程在需求的步驟中，也依照這些區別來執行所需的處理種類。

有些特殊的運算子特別適合互動式開發；譬如，若`defvar`還沒有任何綁定時，則只對提供給它的變量進行賦值；而`defparameter`總是會執行賦值。在[實時映像中互動地評估](../Page/執行檔.md "wikilink")，編譯和載入代碼時，這種區別是有用的。還有一些功能也幫助撰寫編譯器和直譯器。符號由第一類物件所組成，可由使用者的代碼直接操縱。`progv`基本運算子允許以編程方式創造詞法綁定，也可以運用套件。Lisp編譯器本身在運行時可用來編譯檔案或單一函數，這使得Lisp成為其它編程語言的中途編譯器或直譯器變得容易。

## 編程源碼範例

### 生日悖論

以下程序計算一個房間內最小數量的人，其完全獨特生日的概率小於 50％（生日悖論，1 人的概率明顯為 100％，2 為 364/365
等）。答案是 23。

``` lisp
;;  By convention, constants in Common Lisp are enclosed with + characters.
(defconstant +year-size+ 365)

(defun birthday-paradox (probability number-of-people)
  (let ((new-probability (* (/ (- +year-size+ number-of-people)
                               +year-size+)
                            probability)))
    (if (< new-probability 0.5)
        (1+ number-of-people)
        (birthday-paradox new-probability (1+ number-of-people)))))
```

使用REPL呼叫函數用例：

``` text
CL-USER > (birthday-paradox 1.0 1)
23
```

### 排序列表

我們定義一個人員類別和一個顯示姓名和年齡的方法。接下來，我們將一組人定義為人物物件列表。然後我們遍歷排序列表。

``` lisp
(defclass person ()
  ((name :initarg :name :accessor person-name)
   (age  :initarg :age  :accessor person-age))
  (:documentation "The class PERSON with slots NAME and AGE."))

(defmethod display ((object person) stream)
  "Displaying a PERSON object to an output stream."
  (with-slots (name age) object
    (format stream "~a (~a)" name age)))

(defparameter *group*
  (list (make-instance 'person :name "Bob"   :age 33)
        (make-instance 'person :name "Chris" :age 16)
        (make-instance 'person :name "Ash"   :age 23))
  "A list of PERSON objects.")

(dolist (person (sort (copy-list *group*)
                      #'>
                      :key #'person-age))
  (display person *standard-output*)
  (terpri))
```

它以降序打印三個名字。

``` text
Bob (33)
Ash (23)
Chris (16)
```

### 平方指數

使用LOOP宏：

``` lisp
(defun power (x n)
  (loop with result = 1
        while (plusp n)
        when (oddp n) do (setf result (* result x))
        do (setf x (* x x)
                 n (truncate n 2))
        finally (return result)))
```

使用示例：

``` text
CL-USER > (power 2 200)
1606938044258990275541962092341162602522202993782792835301376
```

與內建的求冪函數比較：

``` text
CL-USER > (= (expt 2 200) (power 2 200))
T
```

### 查找可用 shell 的列表

## Common Lisp與Scheme的比较

Common
Lisp經常和Scheme互相比較，因為它們是最受歡迎的兩種Lisp方言。Scheme早於CL，不僅來自同一個Lisp傳統，而且來自同一位工程師[Guy
L. Steele](../Page/蓋伊·史提爾二世.md "wikilink")，與[Gerald Jay
Sussman設計的](../Page/傑拉德·傑伊·薩斯曼.md "wikilink")，Guy L.
Steele也擔任過Common Lisp標準委員會的主席。

Common Lisp是一種普遍用途的的編程語言；相反的如Emacs
Lisp和AutoLISP這兩種Lisp的變體，則是嵌入特定產品作為擴展用的語言。與許多早期的Lisps不同，Common
Lisp（Scheme同樣）對源碼直譯和編譯時，預設為詞法變量作用域。

大部份Lisp系統（如ZetaLisp和Franz Lisp）的設計，促成了Common
Lisp在直譯器中使用動態作用域的變量，並在編譯器中使用了詞法作用域的變量。由於ALGOL
68的啟發，Scheme引入了Lisp對詞法作用域變量的單一使用；這被廣泛認同是好主意。CL也支援動態作用域的變量，但必須將其顯式聲明為“特殊”。ANSI
CL直譯器和編譯器之間的作用域界定是沒有差別的。

Common
Lisp有時被稱為Lisp-2，而Scheme被稱為Lisp-1。它指的是CL對函數和變量使用個別的命名空間（實際上CL有許多命名空間，例如`go`標籤，`block`名稱和`loop`關鍵字）。在涉及多個命名空間的權衡之間，CL與Scheme倡導者之間存在著長期的爭議。在Scheme中（廣義地）必須避免與函數名稱互相衝突的變量名稱；Scheme函數通常擁有名稱為`lis`，`lst`或`lyst`的參數，以免與系統內建的`list`函數衝突。然而在CL中，在傳遞函數作為參數時一定要顯式地引用函數的名稱空間，這也是一個常見的事件，如前面小節中的排序編程範例。

在處理布爾邏輯值時，CL也與Scheme不同。Scheme使用特殊值\#t和\#f來表示邏輯真與假值。而CL遵循使用符號T和NIL的傳統Lisp慣例，NIL同時也是空列表。在CL中任何非NIL值被條件處理為真，例如`if`；而在Scheme當中，所有非\#f值被視為真。這些慣例約定允許這兩種語言的一些運算子同時作為謂詞（回應邏輯上的是非問題），並返回一個作用值進行進一步的計算，但在Scheme的布爾表達式中，等同於Common
Lisp空列表的NIL值或'()，會被評估為真。

最後，Scheme的標準文件要求尾部呼叫優化，而CL標準沒有。不過大多數CL實作會提供尾部呼叫優化，雖然通常只在程序員使用優化指令時。儘管如此，常見的CL編程風格並不偏好於Scheme中普遍使用的遞歸樣式-
一個Scheme程序員會使用尾部遞歸表達式，CL使用者則通常會用`do`，`dolist`，`loop`等迭代表達式，或使用`iterate`套件來表達。

## 实现

Common
Lisp是由一份技术规范定义而不是被某一种具体实现定义（前者的例子有[Ada语言和](../Page/Ada.md "wikilink")[C语言](../Page/C.md "wikilink")，后者有[Perl语言](../Page/Perl.md "wikilink")）。存在很多种实现，语言标准详细阐明了可能导致合理歧义的内容。

另外，各种实现试图引入套件或函式库来提供标准没有提及的功能，可能的擴充功能如下所列：

  - 互動式頂層（REPL）
  - 垃圾收集
  - 除錯器，步進器和檢查器
  - 弱資料結構（雜湊表）
  - 可擴展的序列
  - 可擴展的LOOP
  - 環境存取
  - CLOS元物件協定（meta-object protocol）
  - 基於CLOS的可擴展流
  - 基於CLOS的條件系統
  - 網絡流
  - 固定性CLOS（persistent）
  - Unicode支援
  - 外語編程介面（經常到C）
  - 作業系統介面
  - Java介面
  - 多緒和多重處理
  - 應用交付（應用程序，動態函式庫）
  - 儲存映像檔

可移植的[自由软件库提供了各种特性](../Page/自由软件.md "wikilink")，著名的有[Common-Lisp.net](http://common-lisp.net/)和[Common
Lisp Open Code Collection](http://clocc.sourceforge.net/)项目。

Common
Lisp设计为由增量编译器实现。优化编译的标准声明（例如内联函数）已进入语言规范的计划。大多数Lisp实现将函数编译成原生的[机器语言](../Page/机器语言.md "wikilink")。其他的编译器编译为[中间码](../Page/中间码.md "wikilink")，有损速度但是容易实现二进制代码的可移植。由于Lisp提供了交互式的提示符以及函数增量式的依次编译，很多人误会为Lisp是纯解释语言。

一些基于[Unix的实现](../Page/Unix.md "wikilink")，例如CLISP，可以作为脚本解释器使用；因此，系统可以像调用[Perl或者](../Page/Perl.md "wikilink")[Unix
shell解释器一样透明地调用它](../Page/Unix_shell.md "wikilink")。

### 实现的列表

免费的可重发布实现包括：

  - [CMUCL](../Page/CMUCL.md "wikilink")，最初来自[卡内基梅隆大学](../Page/卡内基梅隆大学.md "wikilink")，现在作为[自由软件由一个志愿者团队维护](../Page/自由软件.md "wikilink")。CMUCL使用一个快速的原生代码编译器。它运行于x86上的[Linux和](../Page/Linux.md "wikilink")[BSD](../Page/BSD.md "wikilink")；Alpha上的Linux；以及[Solaris](../Page/Solaris.md "wikilink")、[IRIX和](../Page/IRIX.md "wikilink")[HP-UX](../Page/HP-UX.md "wikilink")。参见[2](http://www.cons.org/cmucl)
  - [GNU
    CLISP](http://clisp.cons.org/)，是一个bytecode编译的实现。它可移植并运行在很多Unix和Unix风格的系统上（包括[Mac
    OS X](../Page/Mac_OS_X.md "wikilink")），以及Microsoft Windows和一些其他系统。
  - [Steel Bank Common
    Lisp](http://sbcl.sourceforge.net/)（SBCL），是CMUCL的一个分支。"宽泛的说，SBCL是CMUCL的可维护性加强版本。"
    [3](https://web.archive.org/web/20040606131832/http://sbcl.sourceforge.net/cmucl-relationship.php)
    SBCL运行的平台和CMUCL一样，除了HP/UX，它运行于[Windows](../Page/Windows.md "wikilink")，PowerPC上的[Linux](../Page/Linux.md "wikilink")，[SPARC](../Page/SPARC.md "wikilink")，[MIPS](../Page/MIPS.md "wikilink")，和[Mac
    OS X之上](../Page/Mac_OS_X.md "wikilink")。SBCL不使用解释器；所有的语句编译为原生机器码。
  - [GNU Common
    Lisp](http://www.gnu.org/software/gcl/gcl.html)（GCL），[GNU项目的Lisp编译器](../Page/GNU.md "wikilink")。GCL还不是完全兼容ANSI，但它仍然是一些大型项目所选择的实现，包括数学工具[Maxima](../Page/Maxima.md "wikilink")，AXIOM和ACL2。GCL运行在十一种架构的GNU/Linux下，以及Windows，Solaris，和
    [FreeBSD](../Page/FreeBSD.md "wikilink")。
  - [Embeddable Common
    Lisp](../Page/Embeddable_Common_Lisp.md "wikilink")（ECL），设计为可嵌入[C语言应用中](../Page/C.md "wikilink")；
  - [Movitz实现了](../Page/Movitz.md "wikilink")[x86上的Lisp环境而不依赖任何OS](../Page/x86.md "wikilink")。
  - [Armed Bear Common
    Lisp](http://armedbear.org/abcl.html)是一个运行在[Java虚拟机上的Common](../Page/JVM.md "wikilink")
    Lisp实现。它包括了一个编译器可以编译[Java](../Page/Java.md "wikilink")[bytecode](../Page/bytecode.md "wikilink")，并允许Common
    Lisp调用Java库。Armed Bear Common Lisp是[Armed Bear J
    Editor](http://armedbear.org/j.html)的一个组件，但它也能独立使用。
  - [Jatha](http://jatha.sourceforge.net/)是一个Java库，实现了Common Lisp的大部分子集。
  - [Clozure CL](http://www.clozure.com/)（CCL），可以运行在[Mac
    OS](../Page/Mac_OS.md "wikilink"),[Linux](../Page/Linux.md "wikilink"),[FreeBSD](../Page/FreeBSD.md "wikilink"),[Solaris](../Page/Solaris.md "wikilink"),以及[Windows
    XP等操作系统上](../Page/Windows_XP.md "wikilink")，并且支持[x86](../Page/x86.md "wikilink"),[PowerPC](../Page/PowerPC.md "wikilink"),[ARM等硬件平台](../Page/ARM.md "wikilink")。其原名为OpenMCL。

商业实现在这里[Franz, Inc.](http://www.franz.com)，[Xanalys
Corp.](http://www.lispworks.com/)，[Digitool,
Inc.](https://web.archive.org/web/20081216072124/http://www.digitool.com/)，[Corman
Technologies](http://www.cormanlisp.com/) 和 [Scieneer Pty
Ltd.](https://web.archive.org/web/20050308100932/http://www.scieneer.com/index.html)。

## 应用

Common Lisp被用于很多成功的商业应用中，最著名的（毫无疑问要归功于[Paul
Graham的推广](../Page/Paul_Graham.md "wikilink")）要数[Yahoo\!商店的站点](../Page/Yahoo!.md "wikilink")。其他值得一提的例子有：

  - [Orbitz](http://www.orbitz.com)，以飞机票预订为主的站点
  - [Mirai](http://www.izware.com/mirai/index.htm)，[Izware
    LLC](http://www.izware.com/)'s fully integrated 2d/3d computer
    graphics content creation suite that features what is almost
    universally regarded as the best polygonal modeler in the industry,
    an advanced IK/FK and non-linear animation system (later popularized
    by such products as Sega's Animanium and Softimage XSI,
    respectively), and advanced 2d and 3d painting. It is used in major
    motion pictures（most famously in New Line Cinema's [Lord of the
    Rings](../Page/Lord_of_the_Rings.md "wikilink")）, video games and
    military simulations.
  - [Piano](http://www.piano.aero/)，一个用Lisp写的商业的航空期前期设计包以及与它的竞争对手的比较
  - [Xanalys Corp.](http://www.xanalys.com/)的调查软件，被全球的警察，安全部门和防止诈骗服务部门采用
  - [Genworks
    International](http://www.genworks.com/)的多用途说明语言（GDL），是一个基于CL的开发工具，用来创建基于web的工程，设计和商业应用

也有很多成功的开源应用用Common Lisp写成，例如：

  - [Applicative Common
    Lisp](http://www.cs.utexas.edu/users/moore/acl2/)，a full-featured
    [theorem prover](../Page/theorem_prover.md "wikilink") for a subset
    of Common Lisp.
  - [Maxima](../Page/Maxima.md "wikilink")，一个精致的[计算机代数系统](../Page/计算机代数系统.md "wikilink")。
  - [Compo](http://compo.sourceforge.net)，a language allowing complex
    musical structures to be described in a natural way.
  - [Lisa](http://lisa.sourceforge.net)，a production-rule system to
    build "intelligent" software agents.

同样，Common Lisp也被许多政府和非盈利组织采用。[NASA中的例子有](../Page/NASA.md "wikilink")：

  - [SPIKE](http://www.stsci.edu/resources/software_hardware/spike/)，the
    [Hubble Space
    Telescope](../Page/Hubble_Space_Telescope.md "wikilink") planning
    and scheduling system.
  - [Remote Agent](http://ic.arc.nasa.gov/projects/remote-agent/)，winner
    of the 1999 NASA Software of the Year Award.

## 外部链接

  - [ANSI Common Lisp中文翻譯版](http://acl.readthedocs.org/en/latest/)，Paul
    Graham寫的Lisp入門教科書
  - The [Common Lisp
    HyperSpec](https://web.archive.org/web/20020805060924/http://www.lisp.org/HyperSpec/FrontMatter/index.html)，Common
    Lisp标准的电子版本
  - The
    [CLiki](https://web.archive.org/web/20040418184443/http://ww.telent.net/cliki/index)，关于Unix风格系统下的Common
    Lisp的Wiki
  - [Lisp用户协会](http://webarchive.loc.gov/all/20020915112333/http%3A//www.lisp.org/)
  - [豆瓣Lisp用户组](http://www.douban.com/group/Lisp)
  - [Common
    Lisp快速入门](https://web.archive.org/web/20041207081743/http://www.unmutual.info/startingwithcl.html)
  - [Common Lisp the Language, 2nd
    Edition](https://web.archive.org/web/20000229131431/http://www.cs.cmu.edu/Web/Groups/AI/html/cltl/cltl2.html)，也被称为"CLtL2".
    Guy Steele's book on Common Lisp，介绍了ANSI Common Lisp标准的基础知识
  - [The Common Lisp
    Cookbook](https://lispcookbook.github.io/cl-cookbook/)，有用的编程方法收集。
  - [Paul
    Graham的页面](http://www.paulgraham.com/lisp.html)关于Lisp。如果你跟随链接，你会找到他的电子书*On
    Lisp*，这本书专注于Common Lisp中的宏设计。
  - [Common
    Lisp：符号计算的渐进入门](http://www-2.cs.cmu.edu/afs/cs.cmu.edu/user/dst/www/LispBook/index.html)by
    [David S.
    Touretzky](../Page/David_S._Touretzky.md "wikilink")，有电子版本并为新手而写。
  - [Peter Norvig's page](http://www.norvig.com/)包含了很多有趣的Common Lisp资源。
  - [Practical Common
    Lisp](http://www.gigamonkeys.com/book/)同名的电子书。已进入了2006
    Jolt大奖的Finalist。
  - [Casting Spells in Lisp](http://www.lisperati.com/casting.html)
    Common Lisp的卡通化介绍。
  - [Igor Engraver](http://www.noteheads.com/)：一流的音乐标记法和用Common
    Lisp写成的程序。

[Category:LISP程式語言家族](https://zh.wikipedia.org/wiki/Category:LISP程式語言家族 "wikilink")
[Category:LISP程式語言](https://zh.wikipedia.org/wiki/Category:LISP程式語言 "wikilink")
[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")