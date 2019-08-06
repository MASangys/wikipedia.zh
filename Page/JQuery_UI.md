**jQuery UI**是一套[JavaScript](../Page/JavaScript.md "wikilink") [函式庫](../Page/函式庫.md "wikilink")，提供抽象化、可自訂主題的[GUI控制項與動畫效果](https://zh.wikipedia.org/wiki/控制項 "wikilink")。基於[jQuery](https://zh.wikipedia.org/wiki/jQuery "wikilink") JavaScript函式庫，可用來建構互動式的網際網路應用程式。在2007年9月[約翰·雷西格](../Page/約翰·雷西格.md "wikilink")於jquery.com部落格裡的一篇文章裡正式公諸於世\[1\]。最新的版本需要[jQuery](https://zh.wikipedia.org/wiki/jQuery "wikilink") 2.1.1或更新的版本。\[2\]

## 功能

以1.9.0版本為例\[3\]。

### 互動

  - **拖曳（Draggable）**–讓元素可以用滑鼠拖曳。
  - **拖放（Droppable）**–讓控制項可以接受其他拖曳進來的元素。
  - **調整大小（Resizable）**–讓元素可以調整大小\[4\]。
  - **選取（Selectable）**–提供進階的大量元素選擇功能。
  - **排序（Sortable）**–讓列表可以更容易排序。

### 控制項

jQuery UI的所有控制項都能自訂主題樣式\[5\]。

  - **手風琴式選單（Accordion）**–如手風琴般可伸縮的控制項。
  - **自動完成（Autocomplete）**–根據使用者的輸入來自動完成文字欄。
  - **按鈕（Button）**–增強按鈕外觀，將單選與複選控制項轉變成按鈕型式。
  - **日期選擇器（Datepicker）**–進階的日期選擇工具。
  - **對話框（Dialog）** –在頁面最上層顯示對話框。
  - **選單（Menu）** - 顯示多階層式的選單。
  - **進度條（Progressbar）** –動態與靜態的進度指示條。
  - **滑動條（Slider）**–完全可以自訂的滑動條與各種功能\[6\]。
  - **微調選擇器（Spinner）** - 上下控制的數字微調輸入欄。
  - **頁籤（Tabs）**–頁籤切換控制項，可以內嵌或動態載入內容。
  - **工具提示（Tooltip）** - 彈出式提示框。

### 效果

  - **顏色動畫（Color Animation）**–產生顏色轉變的動畫效果。
  - **切換Class**、**新增Class**、**移除Class**、**開關Class** –讓頁面上元素樣式轉變時有動畫效果。
  - **效果（Effects）**–各種效果（顯示、下拉、爆炸、淡入等等）。
  - **切換（Toggle）**–切換效果開關。
  - **隱藏**、**顯示** - 使用上述的效果。

### 工具

  - **位置（Position）** –根據另一個元素來設定目標元素的位置（對齊）。

## 範例

``` javascript
<script type="text/javascript">
 // 讓#draggable可以拖曳

 $(function(){
 $("#draggable").draggable();
 });
</script>
```

``` html4strict
<div id="draggable" style = "width: 150px; height: 150px; padding: 0.5em;" class="ui-widget-content">
 <p>Drag me around</p>
</div>
```

這段程式碼會讓使用者的滑鼠游標可以拖曳ID為「draggable」的DIV元素。

## 参考文献

## 外部連結

  - [官方網站](http://jqueryui.com/)

[Category:網站開發](https://zh.wikipedia.org/wiki/Category:網站開發 "wikilink") [Category:JavaScript](https://zh.wikipedia.org/wiki/Category:JavaScript "wikilink") [Category:JavaScript函式庫](https://zh.wikipedia.org/wiki/Category:JavaScript函式庫 "wikilink") [Category:CSS框架](https://zh.wikipedia.org/wiki/Category:CSS框架 "wikilink")

1.
2.  [Build Your Download](http://jqueryui.com/download)
3.
4.
5.
6.