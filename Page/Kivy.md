**Kivy**是開源[Python函式庫](../Page/Python.md "wikilink")，用於開發[行動應用程式和其它採用](../Page/行動應用程式.md "wikilink")[自然用户界面的](../Page/自然用户界面.md "wikilink")[多點觸控](../Page/多點觸控.md "wikilink")[應用軟件](../Page/應用軟件.md "wikilink")。它可以在[Android](../Page/Android.md "wikilink")，[iOS](../Page/iOS.md "wikilink")，[Linux](../Page/Linux.md "wikilink")，[OS
X和](../Page/OS_X.md "wikilink")[Windows執行](../Page/Microsoft_Windows.md "wikilink")。採用[MIT授權條款](../Page/MIT許可證.md "wikilink")，Kivy是[自由並且](../Page/自由软件.md "wikilink")[開源的軟件](../Page/开源软件.md "wikilink")。

Kivy的主要架構由Kivy組織開發，\[1\] 並有Python用於Android，\[2\]Kivy
iOS，\[3\]和其它許多函式庫被使用在所有平台。在2012年，Kivy從[Python軟體基金會獲得](../Page/Python軟體基金會.md "wikilink")$5000美元補助，用於移植Kivy到Python
3.3。\[4\]Kivy也支援由[Bountysource贊助的](../Page/Bountysource.md "wikilink")[樹莓派](../Page/樹莓派.md "wikilink")。\[5\]

其架構包括所有建造應用程式的元素，例如：

  - 支援許多種輸入，例如滑鼠，鍵盤、觸控式使用者介面(TUIO)和特定作業系統的多重觸控事件，
  - 只採用[OpenGL ES
    2的圖形函式庫](../Page/OpenGL_ES.md "wikilink")，且根基於向量緩衝物件(Vertex
    Buffer Object)和[著色器](../Page/著色器.md "wikilink")，
  - 支援[多點觸控的龐大](../Page/多點觸控.md "wikilink")[控制項](../Page/控制項.md "wikilink")，
  - 一個中間語言(Kv)\[6\]用來簡化客製控制項的設計。

Kivy改良了PyMT專案，並且推薦給新的專案採用。\[7\]

## 程式範例

以下是一個按鈕的[Hello World程式範例](../Page/Hello_World.md "wikilink")：

``` python
from kivy.app import App
from kivy.uix.button import Button

class TestApp(App):
    def build(self):
        return Button(text='Hello World')

TestApp().run()
```

## Kv 語言

Kivy語言(Kv)是致力於描述使用者介面和與使用者互動的一種語言。就像[QML](../Page/QML.md "wikilink")，它能夠簡單的建造整個使用者介面並加上互動。例如，建造一個包括檔案瀏覽器，和取消/載入按鈕的對話框，它能夠採用Python快速的造出基本的控制項，之後用Kv造出使用者介面。

在main.py：

``` python
class LoadDialog(FloatLayout):
    def load(self, filename): pass
    def cancel(self): pass
```

並且在相關的Kv：

``` python
#:kivy 1.4.0
<LoadDialog>:
    BoxLayout:
        size: root.size
        pos: root.pos
        orientation: "vertical"
        FileChooserListView:
            id: filechooser

        BoxLayout:
            size_hint_y: None
            height: 30
            Button:
                text: "Cancel"
                on_release: root.cancel()

            Button:
                text: "Load"
                on_release: root.load(filechooser.path, filechooser.selection)
```

## 外部鍵結

  -
  - [PyMT project](https://code.google.com/p/pymt/)

## 參考文獻

[Category:Python库](https://zh.wikipedia.org/wiki/Category:Python库 "wikilink")

1.
2.
3.
4.
5.
6.
7.