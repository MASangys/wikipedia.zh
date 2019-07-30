**NodeMCU**,是一个开源\[1\]的[物联网](../Page/物联网.md "wikilink")平台。 它使用[Lua](../Page/Lua.md "wikilink")脚本语言编程\[2\]。该平台基于[eLua](https://zh.wikipedia.org/wiki/eLua "wikilink") \[3\]开源项目,底层使用ESP8266 sdk 0.9.5版本。该平台使用了很多开源项目, 例如 lua-cjson\[4\], spiffs\[5\]. NodeMCU包含了可以运行在 [esp8266](https://zh.wikipedia.org/wiki/esp8266 "wikilink") [Wi-Fi](../Page/Wi-Fi.md "wikilink") [SoC芯片之上的固件](https://zh.wikipedia.org/wiki/SoC "wikilink"),以及基于ESP-12模组的硬件。

## 固件烧写

nodemcu_latest.bin: 0x00000
对于大多数 esp8266 模块, 直接拉低 GPIO0 引脚的电平，并且重新上电或重启。
可以使用 [nodemcu-flasher](https://github.com/nodemcu/nodemcu-flasher) 烧写固件\[6\]。

特别的，如果你想编译/构建自己的固件，需要注意以下烧写地址：
0x00000.bin: 0x00000
0x10000.bin: 0x10000
注意，''在烧写之后，最好执行 file.format() ''

## 硬件连接

如果使用 NodeMCU devkit, 只需要安装 CH340G 驱动程式\[7\], 并且将开发模组使用micro-usb 线缆连接到个人计算机。 然后将波特率设置到9600, 并打开串行端口。若使用普通的esp8266模组, 则 usb-ttl 转接器是必需品。

## 程式举例

### 连接Wi-Fi热点

``` lua
    ip = wifi.sta.getip()
    print(ip)
    --nil
    wifi.setmode(wifi.STATION)
    wifi.sta.config("SSID","password")
    ip = wifi.sta.getip()
    print(ip)
    --192.168.18.110
```

### 如同[arduino般操作硬体](https://zh.wikipedia.org/wiki/arduino "wikilink")

``` lua
    pin = 1
    gpio.mode(pin,gpio.OUTPUT)
    gpio.write(pin,gpio.HIGH)
    print(gpio.read(pin))
```

### 使用 nodejs 风格网络编程

``` lua
    -- A simple http client
    conn=net.createConnection(net.TCP, 0)
    conn:on("receive", function(conn, payload) print(payload) end )
    conn:connect(80,"115.239.210.27")
    conn:send("GET / HTTP/1.1\r\nHost: www.baidu.com\r\n"
        .."Connection: keep-alive\r\nAccept: */*\r\n\r\n")
```

### 简易的HTTP伺服器

``` lua
    -- A simple http server
    srv=net.createServer(net.TCP)
    srv:listen(80,function(conn)
      conn:on("receive",function(conn,payload)
        print(payload)
        conn:send("<h1> Hello, NodeMcu.</h1>")
      end)
      conn:on("sent",function(conn) conn:close() end)
    end)
```

### 连接 MQTT Broker

``` lua
-- init mqtt client with keepalive timer 120sec
m = mqtt.Client("clientid", 120, "user", "password")

-- setup Last Will and Testament (optional)
-- Broker will publish a message with qos = 0, retain = 0, data = "offline"
-- to topic "/lwt" if client don't send keepalive packet
m:lwt("/lwt", "offline", 0, 0)

m:on("connect", function(con) print ("connected") end)
m:on("offline", function(con) print ("offline") end)

-- on publish message receive event
m:on("message", function(conn, topic, data)
  print(topic .. ":" )
  if data ~= nil then
    print(data)
  end
end)

-- for secure: m:connect("192.168.11.118", 1880, 1)
m:connect("192.168.11.118", 1880, 0, function(conn) print("connected") end)

-- subscribe topic with qos = 0
m:subscribe("/topic",0, function(conn) print("subscribe success") end)
-- or subscribe multiple topic (topic/0, qos = 0; topic/1, qos = 1; topic2 , qos = 2)
-- m:subscribe({["topic/0"]=0,["topic/1"]=1,topic2=2}, function(conn) print("subscribe success") end)
-- publish a message with data = hello, QoS = 0, retain = 0
m:publish("/topic","hello",0,0, function(conn) print("sent") end)

m:close();
-- you can call m:connect again
```

### UDP 客户端与伺服器

``` lua
-- a udp server
s=net.createServer(net.UDP)
s:on("receive",function(s,c) print(c) end)
s:listen(5683)

-- a udp client
cu=net.createConnection(net.UDP)
cu:on("receive",function(cu,c) print(c) end)
cu:connect(5683,"192.168.18.101")
cu:send("hello")
```

## 引用文献

[Category:开源硬件](https://zh.wikipedia.org/wiki/Category:开源硬件 "wikilink") [Category:微控制器](https://zh.wikipedia.org/wiki/Category:微控制器 "wikilink") [Category:物联网](https://zh.wikipedia.org/wiki/Category:物联网 "wikilink")

1.  <https://github.com/nodemcu/>

2.
3.  <http://www.eluaproject.net/>

4.  <https://github.com/mpx/lua-cjson/>

5.  <https://github.com/pellepl/spiffs>

6.  <http://www.electrodragon.com/w/ESP8266_NodeMCU_Dev_Board>

7.