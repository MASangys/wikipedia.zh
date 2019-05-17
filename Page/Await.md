在[计算机编程中](../Page/程序设计.md "wikilink")，**await**是发现于[C\#5.0](../Page/C♯.md "wikilink")、Python3.5中、[Hack](https://zh.wikipedia.org/wiki/Hack_\(程式語言\) "wikilink")、Dart以及Kotlin
1.1的一个特性。

## 在C\#中的应用

在C\#中，await运算符在[异步](https://zh.wikipedia.org/wiki/异步 "wikilink")[方法任务中使用](https://zh.wikipedia.org/wiki/方法_\(计算机科学\) "wikilink")，用于在方法的执行过程中插入挂起点，直到所等待的任务完成。await仅可用于由[async关键字修饰的异步方法中](https://zh.wikipedia.org/wiki/async "wikilink")。\[1\]

以下异步方法用于从一个[URL上下载data数据](https://zh.wikipedia.org/wiki/URL "wikilink")。

``` CSharp
public async Task<int> SumPageSizesAsync(IList<Uri> uris)
{
    int total = 0;
    foreach (var uri in uris) {
        statusText.Text = string.Format("Found {0} bytes ...", total);
        var data = await new WebClient().DownloadDataTaskAsync(uri);
        total += data.Length;
    }
    statusText.Text = string.Format("Found {0} bytes total", total);
    return total;
}
```

## 在[JavaScript中的使用](../Page/JavaScript.md "wikilink")

JavaScript中的await只能在异步方法（async
function）中使用，用于等待一个[Promise对象](https://zh.wikipedia.org/wiki/Promise "wikilink")。当await接收到一个Promise对象时，await将等待Promise任务正常完成并返回其结果。若await接收到的不是Promise，await会把该其值转换为已正常处理的Promise，然后等待其工作完成。

``` javascript
function resolveAfter2Seconds(x) {
  return new Promise(resolve => {
    setTimeout(() => {
      resolve(x);
    }, 2000);
  });
}

async function f1() {
  var x = await resolveAfter2Seconds(10);
  console.log(x); // 输出10
}
f1();
```

## 参考文献

[Category:控制流程](https://zh.wikipedia.org/wiki/Category:控制流程 "wikilink")

1.  [await（C\#
    参考）](https://docs.microsoft.com/zh-cn/dotnet/csharp/language-reference/keywords/await#see-also)