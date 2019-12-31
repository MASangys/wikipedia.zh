> 本文内容由[W3C地理位置应用程序接口](https://zh.wikipedia.org/wiki/W3C地理位置应用程序接口)转换而来。


**W3C地理位置应用程序接口**（W3C Geolocation API）是一项由[万维网联盟](../Page/万维网联盟.md "wikilink")提出的标准，旨在标准化接收客户端侧设备的的接口。\[1\]此标准定义了一系列兼容[ECMAScript](../Page/ECMAScript.md "wikilink")标准的对象，这些对象执行于客户端应用程序中并通过查询对[应用程序接口](../Page/应用程序接口.md "wikilink")（API）透明的获得设备位置。最常见的位置信息来源为[IP地址](../Page/IP地址.md "wikilink")、[Wi-Fi](../Page/Wi-Fi.md "wikilink")、[藍牙](../Page/藍牙.md "wikilink")、[MAC地址](../Page/MAC地址.md "wikilink")、[射频识别](../Page/射频识别.md "wikilink")（RFID）、Wi-Fi接入位置、设备[全球定位系统](../Page/全球定位系统.md "wikilink")（GPS）及[GSM](../Page/GSM.md "wikilink")/[CDMA小区识别码](../Page/CDMA2000.md "wikilink")。随后服务器根据可用的最佳位置信息返回特定精度的地理位置。

## 部署于网页浏览器

网页可在浏览器实现的情况下使用地理位置API。历史上，某些浏览器可通过[Google Gears](../Page/Gears.md "wikilink")[插件](../Page/插件.md "wikilink")实现此功能，但这一项目于2010年废止且其依赖的服务端侧API于2012年停止响应。\[2\]\[3\]

地理位置API适合应用于与移动设备（如[个人数码助理](../Page/个人数码助理.md "wikilink")与[智能手机](../Page/智能手机.md "wikilink")）适配的网页程序。在桌面计算机上，W3C地理位置API自[Firefox](../Page/Firefox.md "wikilink") 3.5、[Google Chrome](../Page/Google_Chrome.md "wikilink")、\[4\][Opera](https://zh.wikipedia.org/wiki/Opera電腦瀏覽器 "wikilink") 10.6、\[5\][Internet Explorer](../Page/Internet_Explorer.md "wikilink") 9.0、\[6\]和Safari 5即被支持。掌上设备上，它适用于[Android](../Page/Android.md "wikilink")（固件版本2.0+）、[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")、[Windows Phone与](../Page/Windows_Phone.md "wikilink")[Maemo](../Page/Maemo.md "wikilink")。W3C地理位置应用程序接口同样被发布于2010年11月24日的Opera Mobile 10.1实现，支持对Android和[Symbian](https://zh.wikipedia.org/wiki/Symbian "wikilink")（S60第3及第5代）系统。\[7\]

[Google Gears为老旧和不兼容的浏览器提供了地理位置支持](../Page/Gears.md "wikilink")，包括Internet Explorer 7.0+，且Google Chrome原生实现Gears的功能。它同样也能在移动设备上支持地理位置，通过提供[Android](../Page/Android.md "wikilink")浏览器（2.0版本之前）及[Windows Mobile版](../Page/Windows_Mobile.md "wikilink")[Opera Mobile插件的方式实现](../Page/Opera行動瀏覽器.md "wikilink")。但是，Google Gear API与W3C地理位置API且已不受支持。

## 特性

W3C地理位置API的结果通常会返回4项位置属性：经度、纬度（坐标）、海拔（高度）和\[位置精度\]。这些数据均基于位置来源。在某些查询中，海拔可能不返回任何值。

## 位置来源

地理位置API不提供位置信息。位置信息由设备所获取（例如智能手机、PC或调制解调器），随后才能在浏览器中被API所服务。通常地理位置将通过使用这些方法的其中一种来尝试确定设备位置。

  - GPS（全球定位系统）: 通常适用于有着[GPS的设备](../Page/全球定位系统.md "wikilink")。一部有着GPS且设置到高精度模式的智能手机可能从此来源获取位置数据。GPS从卫星信号中计算位置信息。此方法有着最高的准确度；在大多数Android智能手机中，定位准确度可达到10米内。
    移动网络位置: 可在无需内置GPS芯片的情况下定位手机或无线调制解调器。
    WiFi定位系统: 若在室内使用WiFi，设备最有可能使用。部分wifi接入点有着定位服务能力。
    IP位置定位: 基于最近具有公网IP设备（可为计算机、所连接的路由器或是路由器所使用的ISP）的检测位置。此位置信息基于可用的IP信息，但诸多情况下用户的IP都隐藏在互联网服务提供商NAT的背后，精度只能确保为城市级、地区级甚至是国内级。

## 实现

虽然W3C地理位置API未规定实现方法，但是它基于现有的技术构建而成且被Google Gears地理位置API所严重影响。例如：Firefox的地理位置实现\[8\]使用Google的网络定位提供商。\[9\]

Google Gears地理位置通过发送可提示用户物理位置的一系列参数至网络定位提供商服务器工作，定位服务器默认为Google所提供的（code.l.google.com）。\[10\]部分参数为检测到的移动基站及Wi-Fi网络列表与其信号强度。这些参数随后被打包进JavaScript对象表示法（[JSON](../Page/JSON.md "wikilink")）信息中并通过HTTP POST发送至网络定位提供商。基于这些参数，网络定位提供商可计算位置。人们通常使用位置信息来强制访问控制、本地化与自定义内容；分析流量、[個人化網路廣告并防止可能的身份窃取](https://zh.wikipedia.org/wiki/個人化網路廣告 "wikilink")。\[11\]

### 示例代码

下列是一段用于检测浏览器是否包含地理位置API并利用其来获取当前设备位置的简单[JavaScript](../Page/JavaScript.md "wikilink")代码。这段代码使用<code>

<body onload="geoFindMe()">

</code>创建了可于HTML中调用的函数：

``` javascript
const geoFindMe = () => {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(success, error, geoOptions);
    } else {
        console.log("阁下的网页浏览器不支持地理位置服务。");
    }
}

const success = (position) => {
    const latitude = position.coords.latitude;
    const longitude = position.coords.longitude;
    const altitude = position.coords.altitude;
    const accuracy = position.coords.accuracy;
    console.log(`纬度：${latitude} 经度：${longitude}`);
}

const error = (error) => {
    console.log(`由于 ${error.code}: ${error.message} 无法获取阁下的位置`);
}

const geoOptions = {
    enableHighAccuracy: true,
    maximumAge: 30000,
    timeout: 27000
};
```

## 另请参阅

  - [基于位置的服务](https://zh.wikipedia.org/wiki/基于位置的服务 "wikilink")

  -
## 参考文献

1.  [如何在JavaScript中实现W3C地理位置API](http://whereamirightnow.com/blog/implement-w3c-geolocation-api-javascript/)
2.  [**我在哪 -** 一项显示于Google地图上的W3C地理位置](http://whereamirightnow.com)

## 外部链接

  - [W3C地理位置API详细说明](http://www.w3.org/TR/geolocation-API/)

[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink") [Category:地理位置](https://zh.wikipedia.org/wiki/Category:地理位置 "wikilink") [Category:HTML5](https://zh.wikipedia.org/wiki/Category:HTML5 "wikilink") [Category:网页标准](https://zh.wikipedia.org/wiki/Category:网页标准 "wikilink") [Category:基于位置的软件](https://zh.wikipedia.org/wiki/Category:基于位置的软件 "wikilink")

1.
2.
3.  [GeolocationAPI - gears - Provides the geolocation of a device running a Gears-enabled web browser. - Improving Your Web Browser - Google Project Hosting](https://code.google.com/p/gears/wiki/GeolocationAPI). Code.google.com. Retrieved on 2014-06-01.
4.
5.
6.
7.
8.
9.
10.
11.