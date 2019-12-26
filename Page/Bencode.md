**Bencode**（發音為Bee-Encode）是[BitTorrent用在傳輸資料結構的編碼方式](https://zh.wikipedia.org/wiki/BitTorrent_\(協定\) "wikilink")。這種編碼方式支援四種資料型態：

  - [字符串](../Page/字符串.md "wikilink")
  - [整數](https://zh.wikipedia.org/wiki/整數 "wikilink")
  - [串列](../Page/串列_\(抽象資料型別\).md "wikilink")
  - [字典表](../Page/关联数组.md "wikilink")

Bencode最常被用在[.torrent檔中](https://zh.wikipedia.org/wiki/.torrent "wikilink")，檔案裡的[元數據都是Bencode過的](https://zh.wikipedia.org/wiki/元數據 "wikilink")[字典表](../Page/关联数组.md "wikilink")。其也被用在tracker返回响应时使用。

虽然比用纯二进制编码效率低，但由于结构简单而且不受字节存储顺序影响（所有数字以十进制编码）——这对于跨平台性非常重要。而且具有较好的灵活性，即使存在故障的字典键，只要将其忽略并更换新的就能兼容补充。

## 编码方法

**Bencode**使用[ASCII](../Page/ASCII.md "wikilink")字符进行编码。

  - 一个整型数会以十进制数编码并括在i和e之间，不允许前导零（但0依然为整数0），负数如十进制表示一样使用前导负号，不允许负零。如整型数“42”编码为“`i42e`”，数字“0”编码为“`i0e`”，“-42”编码为“`i-42e`”。
  - 一个以字节为单位表示的字符串（字符串的字为一个字节，不一定是一个字符）会以`（长度）:（内容）`编码，长度的值和数字编码方法一样，只是不允许负数；内容就是字符串的内容，如字符串“spam”就会编码为“`4:spam`”，本规则不能处理ASCII以外的字符串，为了解决这个问题，一些BitTorrent程序会以非标准的方式将ASCII以外的字符以[UTF-8](../Page/UTF-8.md "wikilink")编码转化后再编码。
  - 线性表会以l和e括住来编码，其中的内容为Bencode四种编码格式所组成的编码字串，如包含和字符串“spam”数字“42”的线性表会被编码为“`l4:spami42ee`”，注意分隔符要对应配对。
  - 字典表会以d和e括住来编码，字典元素的键和值必须紧跟在一起，而且所有键为字符串类型并按字典顺序排好。如键为“bar”值为字串“spam”和鍵为“foo”值为整數“42”的字典表会被编码为“`d3:bar4:spam3:fooi42ee`”。

对于线性表和字典的取值范围并没有限制，他们通常会包含其他元素，这样就允许对很复杂的数据结构进行编码。

## 外部連結

  - [Another BitTorrent protocol specification](http://wiki.theory.org/BitTorrentSpecification)
  - [File_Bittorrent2](http://pear.php.net/package/File_Bittorrent2/) - Another PHP Bencode/decode implementation
  - [The original BitTorrent implementation in Python as standalone package](http://pypi.python.org/pypi/BitTorrent-bencode/5.0.8)
  - [BEncode Editor](https://web.archive.org/web/20111119025339/http://forum.utorrent.com/viewtopic.php?id=31306)
  - [bencode-tools](http://zakalwe.fi/~shd/foss/bencode-tools/) - a C library for manipulating bencoded data and a XML schema like validator for bencode messages in Python
  - [Bencode parsing in Java](https://web.archive.org/web/20131203085012/http://www.codecommit.com/blog/java/bencode-stream-parsing-in-java)
  - [Bencode parsing in C](https://web.archive.org/web/20110724074506/http://funzix.git.sourceforge.net/git/gitweb.cgi?p=funzix%2Ffunzix%3Ba%3Dblob%3Bf%3Dbencode%2Fbencode.c)

[Category:置標語言](https://zh.wikipedia.org/wiki/Category:置標語言 "wikilink") [Category:数据序列化格式](https://zh.wikipedia.org/wiki/Category:数据序列化格式 "wikilink") [Category:BitTorrent](https://zh.wikipedia.org/wiki/Category:BitTorrent "wikilink")