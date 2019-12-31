> 本文内容由[SWT](https://zh.wikipedia.org/wiki/SWT)转换而来。


{{ infobox software | logo = | screenshot = [EclipseScreenshot.png](https://zh.wikipedia.org/wiki/File:EclipseScreenshot.png "fig:EclipseScreenshot.png") | caption = Eclipse的IDE環境是以SWT為基礎之應用 | collapsible = yes | developer = Eclipse基金會 | status = 進行中 | latest release version = 3.7.2 | latest release date =  | latest preview version = | latest preview date = | operating system = [跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink") | language = 多語言 | genre = [Java平臺](../Page/Java平臺.md "wikilink")[部件工具箱](../Page/部件工具箱.md "wikilink") | license = Eclipse公共授權 | website =  }}

（），最初由[IBM](../Page/IBM.md "wikilink")开发的一套用于[Java](../Page/Java.md "wikilink")的[图形用户界面](../Page/图形用户界面.md "wikilink")系统，用来与[Swing竞争](../Page/Swing_\(Java\).md "wikilink")。

开源整合開發環境[Eclipse](../Page/Eclipse.md "wikilink")就是用Java和SWT开发的。

## 設計

### 編程

[Screenshot-swt-helloworld.png](https://zh.wikipedia.org/wiki/File:Screenshot-swt-helloworld.png "fig:Screenshot-swt-helloworld.png")環境下使用SWT的簡單GUI應用程式\]\]

下列為基本使用SWT的[Hello World程式](../Page/Hello_World.md "wikilink")。顯示出一個視窗(*[Shell](../Page/殼層.md "wikilink")*)及一個標籤。

``` java
import org.eclipse.swt.*;
import org.eclipse.swt.widgets.*;

public class HelloWorld
{
   public static void main (String[] args)
  {
      Display display = new Display();
      Shell shell = new Shell(display);
      Label label = new Label(shell, SWT.NONE);
      label.setText("Hello World");
      label.pack();
      shell.pack();
      shell.open();
      while (!shell.isDisposed())
      {
         if (!display.readAndDispatch()) display.sleep();
      }
      display.dispose();
   }
}
```

## 參見

  -
  -
## 参考资料

  -
  -
  -
  -
  -
  -
## 外部連結

  - [SWT main page](http://www.eclipse.org/swt/)
  - [SWT newsgroup](news://news.eclipse.org/eclipse.platform.swt)（這個新聞群組被密碼所保護；密碼申請由[這](https://web.archive.org/web/20060831190951/http://dev.eclipse.org/newsManager/newsRequestForm.html)）
  - [Eclipse applications](https://web.archive.org/web/20080516051507/http://www.oneclipse.com/Members/admin/news/swt-sightings)
  - [Eclipse applications, part 2](https://web.archive.org/web/20080516051738/http://www.oneclipse.com/Members/admin/news/swt-sightings-vol-2)
  - [Further information on SWT](https://web.archive.org/web/20080505084239/http://wiki.eclipse.org/index.php/FAQ_Where_can_I_find_more_information_on_SWT)
  - [Information on Eclipse](https://web.archive.org/web/20060421021028/http://www.eclipse.org/documentation/main.html)，including SWT information within a "platform plug-in developer guide"
  - [SWT Javadoc API](http://help.eclipse.org/help31/nftopic/org.eclipse.platform.doc.isv/reference/api/org/eclipse/swt/package-summary.html) documented at eclipse.org

[Category:Java平台](https://zh.wikipedia.org/wiki/Category:Java平台 "wikilink") [Category:Java函式庫](https://zh.wikipedia.org/wiki/Category:Java函式庫 "wikilink") [Category:部件工具箱](https://zh.wikipedia.org/wiki/Category:部件工具箱 "wikilink") [Category:自由發展元件與函式庫](https://zh.wikipedia.org/wiki/Category:自由發展元件與函式庫 "wikilink")