**Microsoft Message
Queuing**或**MSMQ**[微软公司实现的一种](https://zh.wikipedia.org/wiki/微软公司 "wikilink")[消息队列](../Page/消息队列.md "wikilink")，始于[Windows
NT 4与](https://zh.wikipedia.org/wiki/Windows_NT_4 "wikilink")[Windows
95](../Page/Windows_95.md "wikilink")。[Windows Server
2016与](../Page/Windows_Server_2016.md "wikilink")[Windows
10仍然包含这种组件](../Page/Windows_10.md "wikilink")。1999年起，[Microsoft
Embedded平台以及](../Page/Windows_IoT.md "wikilink")[Windows
CE](https://zh.wikipedia.org/wiki/Windows_CE "wikilink")
3.0也开始支持这一组件。\[1\]

## 简介

MSMQ作为一种消息协议，允许多服务器/多进程通信，即使不总是保持互联。而[sockets与其他网络协议要求直连总是成立](https://zh.wikipedia.org/wiki/Internet_socket "wikilink")。

MSMQ从1997年开始可用\[2\]。

MSMQ是可靠分发消息。分发失败的消息保存在队列中直到目标可达时重发该消息。还支持安全与优先级的消息机制。可以创建用于调试。

MSMQ支持可持续性与不可持续性消息，使得性能与消息是否写到磁盘的一致性上可以权衡。不可持续性消息只能用于向非事务性队列发送快速消息。

MSMQ支持事务处理。允许多个动作发给多个队列中包装为单个事务。微软[分布式事务协调器](../Page/分布式事务协调器.md "wikilink")
(MSDTC) 支持对MSMQ或其他资源的事务访问。

MSMQ使用下述端口:

  - TCP: 1801
  - RPC: 135, 2101\*, 2103\*, 2105\*
  - UDP: 3527, 1801
  - 这些端口可能增加11，如果RPC端口的初始选择被使用。端口135用于查询2xxx端口。\[3\]

## 版本历史

  - Version 1.0 (1997年5月). 支持[Windows
    95](../Page/Windows_95.md "wikilink"), [Windows NT
    4.0](../Page/Windows_NT_4.0.md "wikilink") SP3, [Windows
    98](../Page/Windows_98.md "wikilink") 与 [Windows
    Me](../Page/Windows_Me.md "wikilink").
  - Version 2.0, 包含在[Windows 2000中](../Page/Windows_2000.md "wikilink").
      - 新特性包括:\[4\] Support for registering public message queues in
        [Active Directory](../Page/Active_Directory.md "wikilink"),
        128-bit encryption and digital certificate support, full
        [COM](https://zh.wikipedia.org/wiki/Component_Object_Model "wikilink")
        support for message properties (achieving functional parity with
        the [Win32 API](../Page/Windows_API.md "wikilink") function
        calls, full DNS path name support, improved performance in
        multi-threaded applications.
  - Version 3.0, 包含在[Windows XP](../Page/Windows_XP.md "wikilink") (专业版,
    非家庭版) 与 [Windows Server
    2003](../Page/Windows_Server_2003.md "wikilink").
      - 新特性包括:\[5\] Internet Messaging (referencing queues via HTTP,
        [SOAP](https://zh.wikipedia.org/wiki/SOAP "wikilink")-formatted
        messages, MSMQ support for [Internet Information
        Services](https://zh.wikipedia.org/wiki/Internet_Information_Services "wikilink")),
        queue aliases, multicasting of messages, and additional support
        for programmatic maintenance and administration of queues and
        MSMQ itself.
  - Version 4.0, 包含在[Windows
    Vista与](../Page/Windows_Vista.md "wikilink")[Windows Server
    2008](../Page/Windows_Server_2008.md "wikilink").
      - 新特性包括:\[6\] Subqueues,\[7\] improved support for "poison
        messages" (messages which continually fail to be processed
        correctly by the receiver), and support for transactional
        receives of messages from a remote queue.
  - Version 5.0, 包含在[Windows
    7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink") 与 [Windows
    Server 2008 R2](../Page/Windows_Server_2008_R2.md "wikilink").
      - 新特性包括:\[8\] support for Secure Hash Algorithm 2.0
        ([SHA2](https://zh.wikipedia.org/wiki/SHA2 "wikilink")) and all
        advanced hash algorithms that are supported in Windows 2008 R2;
        by default, weaker hash algorithms are disabled.
  - Version 6.0, 包含在[Windows
    8](https://zh.wikipedia.org/wiki/Windows_8 "wikilink") 与 [Windows
    Server 2012](../Page/Windows_Server_2012.md "wikilink").
  - Version 6.3, 包含在 [Windows 8.1](../Page/Windows_8.1.md "wikilink") 与
    [Windows Server 2012
    R2](https://zh.wikipedia.org/wiki/Windows_Server_2012_R2 "wikilink").

## 使用

C\#例子：

``` C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace Test
{
    public class QueueManger
    {
        /// <summary>
        /// 创建MSMQ队列
        /// </summary>
        /// <param name="queuePath">队列路径</param>
        /// <param name="transactional">是否事务队列</param>
        public static void Createqueue(string queuePath, bool transactional = false)
        {
            try
            {
                //判断队列是否存在
                if (!MessageQueue.Exists(queuePath))
                {
                    MessageQueue.Create(queuePath);
                    Console.WriteLine(queuePath + "已成功创建！");
                }
                else
                {
                    Console.WriteLine(queuePath + "已经存在！");
                }
            }
            catch (MessageQueueException e)
            {
                Console.WriteLine(e.Message);
            }
        }
        /// <summary>
        /// 删除队列
        /// </summary>
        /// <param name="queuePath"></param>
        public static void Deletequeue(string queuePath)
        {
            try
            {
                //判断队列是否存在
                if (MessageQueue.Exists(queuePath))
                {
                    MessageQueue.Delete(@".\private$\myQueue");
                    Console.WriteLine(queuePath + "已删除！");
                }
                else
                {
                    Console.WriteLine(queuePath + "不存在！");
                }
            }
            catch (MessageQueueException e)
            {
                Console.WriteLine(e.Message);
            }
        }
        /// <summary>
        /// 发送消息
        /// </summary>
        /// <typeparam name="T">用户数据类型</typeparam>
        /// <param name="target">用户数据</param>
        /// <param name="queuePath">队列名称</param>
        /// <param name="tran"></param>
        /// <returns></returns>
        public static bool SendMessage<T>(T target, string queuePath, MessageQueueTransaction tran = null)
        {
            try
            {
                //连接到本地的队列
                MessageQueue myQueue = new MessageQueue(queuePath);
                System.Messaging.Message myMessage = new System.Messaging.Message();
                myMessage.Body = target;
                myMessage.Formatter = new XmlMessageFormatter(new Type[] { typeof(T) });
                //发送消息到队列中
                if (tran == null)
                {
                    myQueue.Send(myMessage);
                }
                else
                {
                    myQueue.Send(myMessage, tran);
                }
                Console.WriteLine("消息已成功发送到"+queuePath + "队列！");
                return true;
            }
            catch (ArgumentException e)
            {
                Console.WriteLine(e.Message);
                return false;
            }
        }
        /// <summary>
        /// 接收消息
        /// </summary>
        /// <typeparam name="T">用户的数据类型</typeparam>
        /// <param name="queuePath">消息路径</param>
        /// <returns>用户填充在消息当中的数据</returns>
        public static T ReceiveMessage<T>(string queuePath,MessageQueueTransaction tran=null)
        {
            //连接到本地队列
            MessageQueue myQueue = new MessageQueue(queuePath);
            myQueue.Formatter = new XmlMessageFormatter(new Type[] { typeof(T) });
            try
            {
                //从队列中接收消息
                System.Messaging.Message myMessage = tran == null ? myQueue.Receive() : myQueue.Receive(tran);
                return (T)myMessage.Body; //获取消息的内容
            }
            catch (MessageQueueException e)
            {
                Console.WriteLine(e.Message);
            }
            catch (InvalidCastException e)
            {
                Console.WriteLine(e.Message);
            }
            return default(T);
        }
        /// <summary>
        /// 采用Peek方法接收消息
        /// </summary>
        /// <typeparam name="T">用户数据类型</typeparam>
        /// <param name="queuePath">队列路径</param>
        /// <returns>用户数据</returns>
        public static T ReceiveMessageByPeek<T>(string queuePath)
        {
            //连接到本地队列
            MessageQueue myQueue = new MessageQueue(queuePath);
            myQueue.Formatter = new XmlMessageFormatter(new Type[] { typeof(T) });
            try
            {
                //从队列中接收消息
                System.Messaging.Message myMessage = myQueue.Peek();
                return (T)myMessage.Body; //获取消息的内容
            }
            catch (MessageQueueException e)
            {
                Console.WriteLine(e.Message);
            }
            catch (InvalidCastException e)
            {
                Console.WriteLine(e.Message);
            }
            return default(T);
        }
        /// <summary>
        /// 获取队列中的所有消息
        /// </summary>
        /// <typeparam name="T">用户数据类型</typeparam>
        /// <param name="queuePath">队列路径</param>
        /// <returns>用户数据集合</returns>
        public static List<T> GetAllMessage<T>(string queuePath)
        {
            MessageQueue myQueue = new MessageQueue(queuePath);
            myQueue.Formatter = new XmlMessageFormatter(new Type[] { typeof(T) });
            try
            {
                Message[] msgArr=  myQueue.GetAllMessages();
                List<T> list=new List<T>();
                msgArr.ToList().ForEach((o) =>
                {
                    list.Add((T)o.Body);
                });
                return list;
            }
            catch(Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return null;
        }
    }
}

namespace Test
{
    public class Student
    {
        /// <summary>
        /// 年龄
        /// </summary>
        public int Age { get; set; }
        /// <summary>
        /// 姓名
        /// </summary>
        public string Name { get; set; }
    }
}

namespace Test
{
    class Program
    {
        static void Main(string[] args)
        {
            string queuepath = @".\private$\myQueue";
            //QueueManger.Createqueue(queuepath);
            //Student stu = new Student() { Name="shaoshun",Age=18};
            //QueueManger.SendMessage<Student>(stu, queuepath);
            //Student stu=  QueueManger.ReceiveMessageByPeek<Student>(queuepath);
            //Student stu = QueueManger.ReceiveMessage<Student>(queuepath);
            //Console.WriteLine(stu.Name);

            QueueManger.Deletequeue(queuepath);
            QueueManger.Createqueue(queuepath);
            MessageQueueTransaction tran = new MessageQueueTransaction();
            tran.Begin();
            try
            {
                Student stu;
                for (int i = 0; i < 4; i++)
                {
                    stu=new Student(){Name="shaoshun"+i,Age=i};
                    QueueManger.SendMessage<Student>(stu, queuepath, tran);
                    if (i == 3)
                    {
                        throw new Exception();
                    }
                }
                tran.Commit();
            }
            catch
            {
                tran.Abort();
            }
            Console.ReadKey();
        }
    }
}
```

C语言调用[Windows API例子](../Page/Windows_API.md "wikilink")：

``` C
#include "windows.h"
#include "mq.h"
#include "tchar.h"
#define BUFLEN = 256 ;

HRESULT CreateMSMQQueue(
                        LPWSTR wszPathName,
                        PSECURITY_DESCRIPTOR pSecurityDescriptor,
                        LPWSTR wszOutFormatName,
                        DWORD *pdwOutFormatNameLength
                        )
{

  // Define the maximum number of queue properties.
  const int NUMBEROFPROPERTIES = 2;

  // Define a queue property structure and the structures needed to initialize it.
  MQQUEUEPROPS   QueueProps;
  MQPROPVARIANT  aQueuePropVar[NUMBEROFPROPERTIES];
  QUEUEPROPID    aQueuePropId[NUMBEROFPROPERTIES];
  HRESULT        aQueueStatus[NUMBEROFPROPERTIES];
  HRESULT        hr = MQ_OK;

  // Validate the input parameters.
  if (wszPathName == NULL || wszOutFormatName == NULL || pdwOutFormatNameLength == NULL)
  {
    return MQ_ERROR_INVALID_PARAMETER;
  }

  // Set queue properties.
  DWORD cPropId = 0;
  aQueuePropId[cPropId] = PROPID_Q_PATHNAME;
  aQueuePropVar[cPropId].vt = VT_LPWSTR;
  aQueuePropVar[cPropId].pwszVal = wszPathName;
  cPropId++;

  WCHAR wszLabel[MQ_MAX_Q_LABEL_LEN] = L"Test Queue";
  aQueuePropId[cPropId] = PROPID_Q_LABEL;
  aQueuePropVar[cPropId].vt = VT_LPWSTR;
  aQueuePropVar[cPropId].pwszVal = wszLabel;
  cPropId++;

  // Initialize the MQQUEUEPROPS structure.
  QueueProps.cProp = cPropId;               // Number of properties
  QueueProps.aPropID = aQueuePropId;        // IDs of the queue properties
  QueueProps.aPropVar = aQueuePropVar;      // Values of the queue properties
  QueueProps.aStatus = aQueueStatus;        // Pointer to the return status

  // Call MQCreateQueue to create the queue.
  WCHAR wszFormatNameBuffer[BUFLEN];
  DWORD dwFormatNameBufferLength = BUFLEN;
  hr = MQCreateQueue(pSecurityDescriptor,         // Security descriptor
                     &QueueProps,                 // Address of queue property structure
                     wszFormatNameBuffer,         // Pointer to format name buffer
                     &dwFormatNameBufferLength);  // Pointer to receive the queue's format name length in Unicode characters not bytes.

  // Return the format name if the queue is created successfully.
  if (hr == MQ_OK || hr == MQ_INFORMATION_PROPERTY)
  {
    if (*pdwOutFormatNameLength >= dwFormatNameBufferLength)
    {
      wcsncpy_s(wszOutFormatName, *pdwOutFormatNameLength - 1, wszFormatNameBuffer, _TRUNCATE);
      // ************************************
      // You must copy wszFormatNameBuffer into the
      // wszOutFormatName buffer.
      // ************************************
      wszOutFormatName[*pdwOutFormatNameLength - 1] = L'\0';
      *pdwOutFormatNameLength = dwFormatNameBufferLength;
    }
    else
    {
      wprintf(L"The queue was created, but its format name cannot be returned.\n");
    }
  }
  return hr;
}
```

## 参见

## 参考文献

## 外部链接

  - [MSDN
    documentation](http://msdn.microsoft.com/en-us/library/ms711472.aspx)

[Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink")

1.
2.  [InformationWeek News Connects The Business Technology
    Community](http://www.informationweek.com/673/73iudn2.htm).
    Informationweek.com (2014-02-04). Retrieved on 2014-02-22.
3.  [TCP ports, UDP ports, and RPC ports that are used by Message
    Queuing](http://support.microsoft.com/kb/178517).
    Support.microsoft.com (2011-09-28). Retrieved on 2014-02-22.
4.
5.
6.
7.  [Sub-queues in
    MSMQ 4.0](http://blogs.msdn.com/jolson/archive/2008/01/29/ws08-feature-of-the-week-14-sub-queues-in-msmq-4-0.aspx)
8.