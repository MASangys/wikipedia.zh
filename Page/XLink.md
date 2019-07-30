**XML鏈接語言**，或**XLink**，是一種通過[W3C推薦標準認證的XML標記語言](https://zh.wikipedia.org/wiki/W3C推薦標準 "wikilink")，用于在 XML 文档中创建超链接，以及提供與這些鏈接相關聯的元數據。

## 規格

XLink 1.1的規格，是繼承通過[W3C推薦標準](https://zh.wikipedia.org/wiki/W3C推薦標準 "wikilink")\[1\]認證的XLink 1.0\[2\]的規格。

## XLink的連結方式

XLink的定義一組屬性的元素可以加入其它XML命名空間。XLink的提供兩種超鏈接中使用的XML文檔。**簡單鏈接**只連接兩種資源，類似於[HTML](../Page/HTML.md "wikilink")鏈接。 **擴展鏈接**，可以連接任意數量的資源。

### 簡單連結

一個簡單的鏈接創建了一個單向的超鏈接從一個單元到另一個通過一個URI。例如：

``` xml
<?xml version="1.0"?>
<document ns="http://example.org/xmlns/2002/document" xmlns:xlink="http://www.w3.org/1999/xlink">
  <heading id="someHeading">Some Document</heading>
  <para>Here is <anchor xlink:type="simple" xlink:href="#someHeading">a link</anchor> to the header.</para>
  <para>It is an anchor that points to the element with the id "someHeading" on the current page.</para>
</document>
```

### 擴展鏈接

**擴展鏈接**允許多個資源，遠程或本地的，要連接由多個**弧**。弧是信息的來源，目的地和行為的一兩個資源之間的聯繫。出發地和目的地資源的定義標籤。通過使用一個或多個弧，延長鏈路可以達成的集多種資源之間的連接。

例如，如果所有的資源在一個擴展的環節被賦予的標籤<var>A</var>，然後一個弧形內鏈接聲明`from="`<var>`A`</var>`", to="`<var>`A`</var>`"`，將形成之間的連接的所有資源。

擴展鏈接不需要包含在同一文件中的元素為他們鏈接到。這使得關聯的元數據或其他補充資料和資源，而不編輯這些資源。

XLink的還支持更豐富的信息和鏈接類型的角色在每個資源的弧線。

## 參考資料

<div class='references-small'>

<references/>

</div>

[Category:W3C标准](https://zh.wikipedia.org/wiki/Category:W3C标准 "wikilink") [Category:超文字](https://zh.wikipedia.org/wiki/Category:超文字 "wikilink")

1.
2.