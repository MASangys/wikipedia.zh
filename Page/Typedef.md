在[C和](https://zh.wikipedia.org/wiki/C語言 "wikilink")[C++](../Page/C++.md "wikilink")[程式語言中](https://zh.wikipedia.org/wiki/程式語言 "wikilink")，**`typedef`**是一個關鍵字。它用來對一個[資料類型取一個別名](../Page/資料類型.md "wikilink")，目的是為了使[原始碼更易於閱讀和理解](https://zh.wikipedia.org/wiki/原始碼 "wikilink")。它通常用於簡化宣告複雜的類型組成的結構
，但它也常常在各種長度的整數資料型別中看到，例如`size_t`和`time_t`。

## 語法

`typedef`的語法是 : **`typedef`**`   `*`typedeclaration`*`;`\[1\]

創建 `Length` 作為 `int` 的別名 :

``` c++
typedef int Length;
```

創建 `PFI` 作為一個指向 "一個擁有兩個 `char *` 當作參數並回傳 `int` 的函式" 的指標的別名

``` c++
typedef int (*PFI)(char *, char *);
```

## 使用範例

### 創建一個具有特別意義的資料型別

`typedef`會被用來指定一種資料型別的意義。

例如 : 以下示範一個普通的宣告，速度及分數都被宣告為`int`

``` c++
int current_speed ;
int high_score ;

void congratulate(int your_score)
{
    if (your_score > high_score)
        ...
```

通過`typedef`來指定新的資料型別的意義:

``` c++
typedef int km_per_hour ;
typedef int points ;

km_per_hour current_speed ;  //"km_per_hour" is synonymous with "int" here,
points high_score ;          //and thus, the compiler treats our new variables as integers.


void congratulate(points your_score) {
    if (your_score > high_score)
        ...
```

前面兩段程式碼運作狀況一樣，但是使用`typedef`的第二段程式碼更清楚的表示了兩個變數(score和speed)，雖然資料型別都是`int`，卻是各自代表不同的意義，且他們的資料並不相容。

但請注意，其清楚的表示不同意義只是對於工程師而言，C/C++的編譯器認為兩個變數都是`int`時，並不會顯示警告或錯誤，如:
以下程式碼，使用宣告為速度的變數作為`congratulate`函式的參數 :

``` c++
void foo()
{
    km_per_hour km100 = 100;
    congratulate(km100);
```

但是，雖然在上面的程式碼中，編譯器認為"km_per_hour"等於`int`，但在使用前綴 `unsigned`, `long`,
`signed`時，兩者並不能互換使用。

``` c++
void foo() {
    unsigned int a;         // Okay
    unsigned km_per_hour b; // Compiler complains
    long int c;             // Okay
    long km_per_hour d;     // Compiler complains
```

另一个例子：

``` c
int coxes;
int jaffa;
...
coxes++;
...
if (jaffa == 10)
...
```

現在來看以下程式碼：

``` c
typedef int Apple;
typedef int Orange;
Apple coxes;
Orange jaffa;
...
coxes++;
...
if (jaffa == 10)
...
```

這兩段程式碼都做同樣的一件事。第二個例子使用了
`typedef`，使其更易於了解將要進行什麼。也就是一個變數包含關於蘋果的資訊，而另一個包含關於橘子的資訊。

### 簡化宣告語法

``` c
struct var {
    int data1;
    int data2;
    char data3;
};
```

此處使用者定義一個資料類型 *`var`*。

像這樣建立一個 *`var`* 類型的變數，程式碼必須寫為（注意，在 C++ 中宣告一個 `struct` 時，同時也隱含了
`typedef`，C 則沒有）：

``` c
struct var a;
```

在例子的最末處加入一行語句：

``` c
typedef struct var newtype;
```

現在要建立類型 *`var`* 的變數時，程式碼可以寫為：

``` c
newtype a;
```

這樣就更容易閱讀了，因為不用再為每一個 *var* 類型的變數加上關鍵字 *`struct`*。

也可以給陣列使用 `typedef` 宣告。

``` c++
typedef BaseType NewType [arrSize];
```

這樣就可以在宣告一個 *`BaseType`* 類型和 *`arrSize`* 大小的新陣列時，將程式碼寫為：

``` c++
NewType array;
```

### 與陣列一起使用

`typedef`可以簡單的跟陣列一起使用。例如 :

``` c++
typedef char arrType[6];    // type name: arrType
                            // new type: char[6]

arrType arr={1,2,3,4,5,6};  // same as: char arr[6]={1,2,3,4,5,6}

arrType *pArr;              // same as: char (*pArr)[6];
```

在這裡，`arrType`是`char[6]`的別稱。而`arrType
*pArr;`則表示`pArr`是一個指向儲存`char[6]`型別記憶體的指標。

### 與指標一起使用

可以使用typedef來定義一個新的指標型別 :

``` c++
typedef int *intptr;   // type name: intptr
                       // new type: int*

intptr ptr;            // same as: int *ptr
```

在上面那段程式碼中，`intptr`是一個 指標型態`int*`的 新的別名。`intptr
ptr;`宣告了一個變數(`ptr`)，其資料型別是`int*`。如此一來`ptr`就是一個
可以指向一段儲存`int`資料的記憶體 的指標了。

使用`typedef`來定義一個新的指標型別有時候會造成一些困惑 :

``` c++
typedef int *intptr;

intptr cliff, allen;        // both cliff and allen are int* type

intptr cliff2, *allen2;     // cliff2 is int* type, but allen2 is int** type
                            // same as: intptr cliff2;
                            //          intptr *allen2;
```

在上面的程式碼中,*`ntptr cliff, allen;`*表示宣告兩個變數，其資料型別是`int*`，而`intptr
*allan2`則使`allen2`的型別成為`int**`

### 與結構指標一起使用

`Typedef`可以跟[結構體](https://zh.wikipedia.org/wiki/結構體_\(C語言\) "wikilink")[指標一起使用](../Page/指標_\(電腦科學\).md "wikilink")。如下
:

``` c++
struct Node {
    int data;
    struct Node *nextptr;
};
```

使用`typedef`可以改寫成如下 :

``` c++
typedef struct Node Node;
struct Node {
    int data;
    Node *nextptr;
};
```

在[C語言中](https://zh.wikipedia.org/wiki/C語言 "wikilink")，可以在一行中宣告複數的變數，不管其是不是指標。不管如何，如果你要宣告指標，必須在每個變數前面加上星號。

在下面的程式碼中，工程師可能會以為`errptr`是一個指標，這個能會引起一些錯誤。

``` c++
struct Node *startptr, *endptr, *curptr, *prevptr, errptr, *refptr;
```

如果你用`typedef`定義一個`Node *`，這可以保證所有的變數都是一個指向一個`structure type`的指標。

``` c++
typedef struct Node* NodePtr;
...
NodePtr startptr, endptr, curptr, prevptr, errptr, refptr;
```

### 與函式指標一起使用

先看看以下這段尚未使用`typedef`的程式碼：

``` c++
int do_math(float arg1, int arg2) {
    return arg2;
}

int call_a_func(int (*call_this)(float, int)) {
    int output = call_this(5.5, 7);
    return output;
}

int final_result = call_a_func(&do_math);
```

這段程式碼可以被改寫成如下：

``` c++
typedef int (*MathFunc)(float, int);

int do_math(float arg1, int arg2) {
    return arg2;
}

int call_a_func(MathFunc call_this) {
    int output = call_this(5.5, 7);
    return output;
}

int final_result = call_a_func(&do_math);
```

在這裡，`MathFunc`是一個指標，指向一個回傳`int`並以一個`float`和一個`int`作為參數使用的函式。當一個函式被當作參數使用時，如果少了`typedef`它可能會變得難以了解。

以下是`signal(3)`(來自[FreeBSD](../Page/FreeBSD.md "wikilink"))的函數原型：

``` c++
void (*signal(int sig, void (*func)(int)))(int);
```

上面宣告的函式相當的神祕，因為它沒有清楚的顯示它以什麼函式當作參數，或回傳了什麼資料型別。一個初心者工程師甚至可能以為它接收一個`int`作為參數，並不回傳任何東西。但它其實接收了一個`int`和一個`function
pointer`作為參數，並回傳了一個`function pointer`。它可以被改寫成以下程式碼：

``` c++
typedef void (*sighandler_t)(int);
sighandler_t signal(int sig, sighandler_t func);
```

### 用來型別轉換

`typedef`同時可以用來[類型轉換](https://zh.wikipedia.org/wiki/類型轉換 "wikilink")。例如：

``` c++
typedef int (*funcptr)(double);         // pointer to function taking a double returning int
funcptr x = (funcptr) NULL;             // C or C++
funcptr y = funcptr(NULL);              // C++ only
funcptr z = static_cast<funcptr>(NULL); // C++ only
```

左側，`funcptr`用來宣告變數；右側，`funcptr`則用來轉換值的型態。

如果少了`typedef`，替換使用宣告語法和型別轉換語法是幾乎不能做到的。例如：

``` c++
void *p = NULL;
int (*x)(double)  = (int (*)(double)) p; // This is legal
int (*)(double) y = (int (*)(double)) p; // Left-hand side is not legal
int (*z)(double)  = (int (*p)(double));  // Right-hand side is not legal
```

## 外部連結

  - [Cprogramming.com](http://www.cprogramming.com/tutorial/typedef.html)
    - 詳細的討論

## 參照

  - [抽象資料型別](../Page/抽象資料型別.md "wikilink")
  - [C syntax](https://zh.wikipedia.org/wiki/C_syntax "wikilink")

[Category:C語言](https://zh.wikipedia.org/wiki/Category:C語言 "wikilink")
[Category:C++](https://zh.wikipedia.org/wiki/Category:C++ "wikilink")

1.