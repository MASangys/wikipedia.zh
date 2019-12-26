[Wpfapp.PNG](https://zh.wikipedia.org/wiki/File:Wpfapp.PNG "fig:Wpfapp.PNG")  **XAML**（E**x**tensible **A**pplication **M**arkup **L**anguage )是[Windows Presentation Foundation](../Page/Windows_Presentation_Foundation.md "wikilink")（WPF）的一部分，是[微软](../Page/微软.md "wikilink")开发的一種基于[XML](../Page/XML.md "wikilink")、基于声明，用于初始化结构化值和对象的[使用者介面](https://zh.wikipedia.org/wiki/使用者介面 "wikilink")[描述語言](https://zh.wikipedia.org/wiki/描述語言 "wikilink")，它有著[HTML](../Page/HTML.md "wikilink")的外觀，又揉合了XML語法的本質，例如：可以使用**<Button>**標籤設定按鈕（Button）。它類似[Linux](../Page/Linux.md "wikilink")平台下的glade。至於WinFX [XAML Browser Application](../Page/XAML_Browser_Application.md "wikilink")（XBAP）是用XAML作界面描述，在瀏覽器中執行的程式，可取代過去的[ActiveX](../Page/ActiveX.md "wikilink")、[Java Applet](https://zh.wikipedia.org/wiki/Java_Applet "wikilink")、[Flash](../Page/Adobe_Flash_Player.md "wikilink")。

XAML本質上屬於一種[.NET编程语言](https://zh.wikipedia.org/wiki/.NET "wikilink")，屬於[通用語言運行庫](../Page/通用語言運行庫.md "wikilink")（Common Language Runtime），同[C\#](../Page/C♯.md "wikilink")、[VB.NET等同](https://zh.wikipedia.org/wiki/VB.NET "wikilink")。與HTML類似，特点是用來描述使用者介面。XAML的语法格式为：\<Application... /\>，Application是必備的基本元素。XAML可以定義2D和3D物件、旋轉（rotations）、動畫（animations），以及各式各樣的效果。

## Hello world

  - **C\#**

<!-- end list -->

``` XML numberLines
<Window x:Class="WpfAppExample.MainWindow"
        ns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:WpfAppExample"
        mc:Ignorable="d"
        Title="MainWindow" Height="350" Width="525">
    <Grid>
        <Button Margin="10,0,10,0" Height="100" Click="Hello_Click" Content="Click Me!"/>
    </Grid>
</Window>
```



``` csharp numberLines
using System.Windows;

namespace WpfAppExample
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Hello_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Hello World!");
        }
    }
}
```

  - **Visual Basic dotNet**

<!-- end list -->

``` XML numberLines
<Window x:Class="WpfAppExample.MainWindow"
        ns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:WpfAppExample"
        mc:Ignorable="d"
        Title="MainWindow" Height="350" Width="525">
    <Grid>
        <Button Margin="10,0,10,0" Height="100" Click="Hello_Click" Content="Click Me!"/>
    </Grid>
</Window>
```



``` VB numberLines
Imports System.Windows

Class MainWindow
    Sub New()
        InitializeComponent()
    End Sub

    Private Sub Hello_Click(sender As Object, e As RoutedEventArgs)
        MessageBox.Show("Hello World!")
    End Sub
End Class
```

## 参考资料

## 外部連結

  - [Microsoft XAML overview](https://web.archive.org/web/20060717193028/http://windowssdk.msdn.microsoft.com/en-us/library/ms752059.aspx)
  - [XAMLdev.com](http://www.XAMLdev.com/) A selection of categorized resources on XAML
  - [XAML Controls from Microsoft Longhorn Developer Introduction](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/dnintlong/html/longhornch03.asp?frame=true)
  - [XAML used in Microsoft .NET platform](http://www.Xaml.Net/)
  - [XAMJ, open source Java based project](http://html.xamjwg.org/)
  - [United XAML Initiative](http://xaml.sourceforge.net) - Open Source XAML Alternatives
  - [Shaxam](https://web.archive.org/web/20061029033418/http://www.shaxam.com/) - LightWave to XAML converter
  - [XAML and Technical Authors](http://techwritetips.wordpress.com/2006/10/06/what-is-xaml-authorings-best-kept-secret/) A discussion of the affect of the open nature of XAML.
  - [XAML page on NetFXGuide.com](https://web.archive.org/web/20061126063128/http://www.netfxguide.com/guide/xaml.aspx) A selection of categorized resources on XAML.
  - [LearnWPF Website to learn WPX.](http://www.learnwpf.com/)
  - [XAML Discussion Board](https://web.archive.org/web/20061126164132/http://www.community-credit.com/cs/forums/49/ShowForum.aspx) - A great discussion board for questions on XAML and the WPF

[Category:置标语言](https://zh.wikipedia.org/wiki/Category:置标语言 "wikilink") [Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink") [Category:基于XML的标准](https://zh.wikipedia.org/wiki/Category:基于XML的标准 "wikilink")