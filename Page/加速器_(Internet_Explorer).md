<div style="font-family:'microsoft yahei';">

</div>

**加速器**（）是由[微软](../Page/微软.md "wikilink")于[Internet Explorer 8中引入的一种](../Page/Internet_Explorer_8.md "wikilink")（）的方式，它可使用户仅通过鼠标就能调用任意第三方页面的在线服务\[1\]。当用户选中文本或其它对象时，加速器图标将会出现，之后用户就可为所选对象调用可用的加速器服务（例如使用选中文字写blog或者查看选中地理位置的地图）。[微软](../Page/微软.md "wikilink")称，加速器使用户不必再在网页之间进行复制粘贴。\[2\]IE8指定了一种[XML](../Page/XML.md "wikilink")编码方式，使[网络应用或](https://zh.wikipedia.org/wiki/网络应用 "wikilink")[网络服务可以加速器的形式被调用](https://zh.wikipedia.org/wiki/网络服务 "wikilink")，而服务将被如何调用及调用后展示什么类型的内容，则会由XML文件指定。\[3\]已有人指出了加速器和曾在[IE6 Beta版中测试却因争议批评后而取消](../Page/Internet_Explorer_6.md "wikilink")（虽然后来包括了在[Microsoft Office中](../Page/Microsoft_Office.md "wikilink")）的[智能标记间的相似特性](https://zh.wikipedia.org/wiki/智能标记 "wikilink")。\[4\]

## 历史

微软在IE8 Beta1中以“”为名引进加速器，后来其改名“”。

## IE8

加速器默认以加载项的类型被包括。

### 示例加速器

这是一个使用OpenService格式的地图加速器示例：

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<openServiceDescription ns="http://www.microsoft.com/schemas/openservicedescription/1.0">
  <homepageUrl>http://www.example.com</homepageUrl>
  <display>
    <name>Map with Example.com</name>
    <icon>http://www.example.com/favicon.ico</icon>
  </display>
  <activity category="map">
    <activityAction context="selection">
      <preview action="http://www.example.com/geotager.html">
        <parameter name="b" value="{selection}"/>
        <parameter name="clean" value="true"/>
        <parameter name="w" value="320"/>
        <parameter name="h" value="240"/>
      </preview>
      <execute action="http://www.example.com/default.html">
        <parameter name="where1" value="{selection}" type="text"/>
      </execute>
    </activityAction>
  </activity>
</openServiceDescription>
```

## 参见

  - [智能标记](https://zh.wikipedia.org/wiki/智能标记 "wikilink")
  - [Ubiquity](../Page/Ubiquity.md "wikilink")

## 参考资料

## 外部链接

  - [Accelerators Video](http://www.microsoft.com/windows/internet-explorer/videos.aspx?mname=accelerators), [微软](../Page/微软.md "wikilink")的 [Internet Explorer 8视频](../Page/Internet_Explorer_8.md "wikilink")
  - [Add-ons Gallery: Accelerators](https://web.archive.org/web/20100601091430/http://www.ieaddons.com/en/accelerators/), [微软](../Page/微软.md "wikilink")[Internet Explorer 8](../Page/Internet_Explorer_8.md "wikilink")

### 开发

  - \[<http://msdn.microsoft.com/en-us/library/cc289775(VS.85>).aspx OpenService Accelerators Developer Guide\]
  - [Accelerators](http://www.microsoft.com/windows/internet-explorer/readiness/developers-new.aspx#accelerators), Internet Explorer 8 Readiness Toolkit

### 维基媒体基金会加速器

  - [Wikipedia Visual Search](https://web.archive.org/web/20110412190025/http://www.ieaddons.com/en/details/searchhelpers/Wikipedia_Visual_Search/), IE8 Addons Gallery
  - [Define with Wikipedia](https://web.archive.org/web/20100113034640/http://ieaddons.com/en/details/dictionaries/Define_with_Wikipedia/), IE8 Addons Gallery
  - [Define with Wiktionary](https://web.archive.org/web/20100113140752/http://ieaddons.com/en/details/dictionaries/Define_with_Wiktionary/), IE8 Addons Gallery
  - [Veoh Video Compass](https://web.archive.org/web/20110106025104/http://www.ieaddons.com/en/details/photosvideos/Veoh_Video_Compass/), IE8 Addons Gallery

[Category:Internet_Explorer](https://zh.wikipedia.org/wiki/Category:Internet_Explorer "wikilink")

1.
2.
3.
4.