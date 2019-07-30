**資源回收筒**是[微軟](https://zh.wikipedia.org/wiki/微軟 "wikilink")[Windows作業系統裡的其中一個系統資料夾](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，用以把刪除的檔案暫時保留，留待將來進行回復或永久刪除。

## 簡介

[微軟於](https://zh.wikipedia.org/wiki/微軟 "wikilink")[Windows 95開始引入資源回收筒](../Page/Windows_95.md "wikilink")，它主要負責暫存被有意地或是意外地[刪除的檔案](https://zh.wikipedia.org/wiki/刪除 "wikilink")。通常只有透過[檔案總管](../Page/檔案總管.md "wikilink")刪掉的檔案才會被移到資源回收筒；至於在[命令提示字元](../Page/命令提示字元.md "wikilink")刪除的檔案則屬於永久刪除。從[Windows 2000開始](../Page/Windows_2000.md "wikilink")，微軟提供[API讓其他](https://zh.wikipedia.org/wiki/API "wikilink")[應用程式可以把檔案移到資源回收筒](https://zh.wikipedia.org/wiki/應用程式 "wikilink")\[1\]。另外，它不只用來存放被刪除的檔案，其被刪除的時間甚至檔案的原始路徑也會被記錄下來。

資源回收筒只會保留由硬碟被刪除的檔案。至於其他儲存裝置如[卸除式磁碟或](https://zh.wikipedia.org/wiki/卸除式磁碟 "wikilink")[網絡磁碟機](https://zh.wikipedia.org/wiki/網絡磁碟機 "wikilink")，被刪除的檔案通常都是被直接永久刪除。

資源回收筒會根據其狀態而改變其[圖示](../Page/圖示.md "wikilink")的樣子。如果裡面沒有存放任何檔案，那麼其圖示就會呈現一個空筒子的形狀；否則，圖示呈現出來的將會是一個裝滿了廢紙的筒子形狀。

資源回收筒本身有一個設定，供以設定其所能儲存的被刪掉檔案總量\[2\]。[Windows Vista以前](../Page/Windows_Vista.md "wikilink")，預設其容量一般是總硬碟容量的10%，而使用者亦可將其設置成總硬碟容量的0%至100%，但一般不允許總量超過3.99GB。如果資源回收筒內含的檔案容量已達至其設定的數值，那麼最舊的被刪除檔案將會被自動刪除以容納新進的檔案。如果一個檔案的容量已經超過設定的容量，那麼檔案不會被移進去，而會被直接刪除。值得注意的是，總量不能超過3.99GB這個限制不適用於Windows Vista以後的系統。

## 實際位置及運作

資源回收筒的實際位置取決於所使用的[作業系統及](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[檔案系統](https://zh.wikipedia.org/wiki/檔案系統 "wikilink")。在FAT檔案系統及[Windows 98以前的系統](../Page/Windows_98.md "wikilink")，它的路徑通常在　*磁碟機編號:\\RECYCLED*。在NTFS檔案系統及[Windows NT至](../Page/Windows_NT.md "wikilink")[Windows XP](../Page/Windows_XP.md "wikilink")，它的路徑則是在　*磁碟機編號:\\RECYCLER*。至於Windows Vista以上的系統，它則位於　*磁碟機編號:\\$Recycle.Bin*\[3\]。

使用者可以經桌面或檔案總管進入資源回收筒，而這亦是唯一一個Windows XP預設會顯示在[桌面的圖示](https://zh.wikipedia.org/wiki/桌面 "wikilink")。Windows XP以後的作業系統裡，不同的使用者無法察看其他使用者所刪除的檔案。而[Windows 2000以前的系統](../Page/Windows_2000.md "wikilink")，所有使用者也能察看到其他使用者刪除的檔案。

在Windows Vista以前，當一個檔案被移到資源回收筒，它的檔名就會被改變成如下格式： *D<原始位置的磁碟機編號><檔案編號>.<原始擴充檔名>*。另外，裡面有一個叫*info2*的隱藏檔案，裡面以二進制編碼儲存了原始檔案的路徑和檔名。Windows Vista以後，檔案的額外資訊則以 *%$I<檔案編號>.<原始擴充檔名>*命名，原始檔案則以 *$R<檔案編號>.<原始擴充檔名>*命名。

當使用者透過資源回收筒檢視檔案或把檔案回復時，檔名會回復成原始的檔名\[4\]。當資源回收筒被清空，原始文件才会从[文件系统](../Page/文件系统.md "wikilink")中删除，這時仍能透過一些[反刪除的軟件將](https://zh.wikipedia.org/wiki/反刪除 "wikilink")[磁區上的資料回復成檔案](https://zh.wikipedia.org/wiki/磁區上 "wikilink")；但當那部份的磁區被新近寫入的檔案覆蓋後，則再也無法把檔案回復過來。

## 使用方法

在檔案總管，使用者能透過以下方法把檔案移到資源回收筒：

  - 在檔案上右鍵，並在選單選擇刪除；
  - 選擇要刪除的檔案，並按下[鍵盤的](https://zh.wikipedia.org/wiki/鍵盤 "wikilink")[刪除鍵](https://zh.wikipedia.org/wiki/刪除鍵 "wikilink")；
  - 選擇要刪除的檔案，並在Windows XP檔案總管左面的「檔案及資料夾工作」選擇刪除；
  - 選擇要刪除的檔案，並在Windows XP檔案總管上方功能表列的檔案選單中選擇刪除；
  - 在某些提供把檔案移到資源回收筒的應用程式中刪除檔案；
  - 將要刪除的檔案拖曳至資源回收筒。

另外，使用者還能在使用以上方法刪除檔案時緊按Shift鍵，這樣檔案將不會被移進資源回收筒，而是被直接刪除。要注意的是，如果在將檔案拖曳至資源回收檔時緊按[Shift鍵](https://zh.wikipedia.org/wiki/Shift鍵 "wikilink")，這樣檔案被刪除時將不會出現任何提示訊息，而檔案將會直接被永久刪除。

## 參考

[en:Recycle Bin (Windows)](https://zh.wikipedia.org/wiki/en:Recycle_Bin_\(Windows\) "wikilink") [ru:Корзина (файловая система)](https://zh.wikipedia.org/wiki/ru:Корзина_\(файловая_система\) "wikilink")

[Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink")

1.  <http://stackoverflow.com/questions/17612/how-do-you-place-a-file-in-recycle-bin-instead-of-delete>
2.
3.  <http://blogs.msdn.com/oldnewthing/archive/2006/01/31/520225.aspx>
4.