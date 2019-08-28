**TensorFlow**是一个[开源](../Page/开放源代码.md "wikilink")[软件库](https://zh.wikipedia.org/wiki/库_\(计算机\) "wikilink")，用于各种感知和语言理解任务的[机器学习](../Page/机器学习.md "wikilink")。\[1\]目前被50个团队\[2\]用于研究和生产许多[Google商业产品](../Page/Google产品列表.md "wikilink")\[3\]，如[语音辨識](https://zh.wikipedia.org/wiki/语音辨識 "wikilink")、[Gmail](../Page/Gmail.md "wikilink")、[Google 相册和搜索](https://zh.wikipedia.org/wiki/Google_相册 "wikilink")\[4\]，其中许多产品曾使用过其前任软件DistBelief。

TensorFlow最初由[谷歌大脑](../Page/谷歌大脑.md "wikilink")团队开发，用于[Google](../Page/Google.md "wikilink")的研究和生产，于2015年11月9日在[Apache 2.0开源许可证下发布](https://zh.wikipedia.org/wiki/Apache_2.0 "wikilink")。\[5\]\[6\]

## 历史

### DistBelief

从2010年开始，谷歌大脑建立DistBelief作为他们的第一代[专有的](https://zh.wikipedia.org/wiki/专有 "wikilink")[机器学习](../Page/机器学习.md "wikilink")系统。50多个团队在Google和其他[Alphabet](../Page/Alphabet.md "wikilink")公司在商业产品部署了DistBelief的[深度学习](../Page/深度学习.md "wikilink")[神经网络](../Page/人工神经网络.md "wikilink")，包括[Google搜索](../Page/Google搜索.md "wikilink")、[Google语音搜索](../Page/Google语音搜索.md "wikilink")、广告、[Google 相册](https://zh.wikipedia.org/wiki/Google_相册 "wikilink")、[Google地图](../Page/Google地图.md "wikilink")、[Google街景](https://zh.wikipedia.org/wiki/Google街景 "wikilink")、[Google翻译](../Page/Google翻译.md "wikilink")和[YouTube](../Page/YouTube.md "wikilink")。\[7\]\[8\]Google指派计算机科学家，如Geoffrey Hinton和Jeff Dean，简化和[重构DistBelief的代码库](../Page/代码重构.md "wikilink")，使其变成一个更快、更健壮的应用级别代码库，形成了TensorFlow。\[9\]2009年，Hinton领导的研究小组大大减少使用DistBelief的神经网络的错误数量，通过Hinton在广义反向传播的科学突破。最值得注意的是，Hinton的突破直接使Google语音识别软件中的错误减少至少25%。\[10\]

### TensorFlow

TensorFlow是谷歌大脑的第二代[机器学习](../Page/机器学习.md "wikilink")系统。

从0.8.0版本（发布于2016年4月）开始原生的支持分布式运行。

从0.9.0版本（发布于2016年6月）开始支持iOS。

从0.12.0版本（发布于2016年12月）开始支持Windows系统。该移植代码主要由微软贡献。

1.0.0版本发布于2017年2月11日。虽然参考实现运行在单台设备，TensorFlow可以运行在多个[CPU和](https://zh.wikipedia.org/wiki/CPU "wikilink")[GPU](../Page/圖形處理器.md "wikilink")（和可选的[CUDA](../Page/CUDA.md "wikilink")扩展和[图形处理器通用计算](../Page/图形处理器通用计算.md "wikilink")的[SYCL](../Page/SYCL.md "wikilink")扩展）。\[11\]TensorFlow可用于64位[Linux](../Page/Linux.md "wikilink")、[macOS和](https://zh.wikipedia.org/wiki/macOS "wikilink")[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")，以及移动计算平台，包括[Android](../Page/Android.md "wikilink")和[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")。

TensorFlow的计算使用有状态的数据流图表示。TensorFlow的名字来源于这类神经网络对多维数组执行的操作。这些多维数组被称为[张量](https://zh.wikipedia.org/wiki/张量 "wikilink")（Tensor）。2016年6月，Jeff Dean称在[GitHub](../Page/GitHub.md "wikilink")有1500个库提到了TensorFlow，其中只有5个来自Google。\[12\]

### 张量处理单元（TPU）

2016年5月，Google宣布了[张量处理单元](https://zh.wikipedia.org/wiki/张量处理单元 "wikilink")（TPU），一个专为[机器学习](../Page/机器学习.md "wikilink")和TensorFlow[全定制](../Page/全定制.md "wikilink")的[专用集成电路](https://zh.wikipedia.org/wiki/专用集成电路 "wikilink")。TPU是一个可编程的[人工智能加速器](../Page/人工智能加速器.md "wikilink")，提供高[吞吐量](../Page/吞吐量.md "wikilink")的低精度计算（如[8位](https://zh.wikipedia.org/wiki/8位 "wikilink")），面向使用或运行模型而不是训练模型。Google宣布他们已经在数据中心中运行TPU长达一年多，发现它们对机器学习提供一个[数量级](../Page/数量级.md "wikilink")更优的每瓦特性能。\[13\]

2017年5月Google宣布第二代[张量处理单元](https://zh.wikipedia.org/wiki/张量处理单元 "wikilink")，并在中可用。\[14\]第二代TPU提供最高180 teraflops性能，组装成64个TPU的集群时提供最高11.5 petaflops性能。

### TensorFlow Lite

[2017年5月](../Page/2017年5月.md "wikilink")Google宣布从[Android Oreo开始](../Page/Android_Oreo.md "wikilink")，提供一个专用于Android开发的软件栈TensorFlow Lite\[15\]。

### 应用

[Google](../Page/Google.md "wikilink")于2015年10月26日正式发布了[RankBrain](https://zh.wikipedia.org/wiki/RankBrain "wikilink")，由TensorFlow支持。

## 特性

TensorFlow提供了一个[Python API](https://www.tensorflow.org/versions/master/api_docs/python/index.html)，以及[C++](https://www.tensorflow.org/versions/master/api_docs/cc/index.html)、[Haskell](https://github.com/tensorflow/haskell)、[Java](https://www.tensorflow.org/api_docs/java/reference/org/tensorflow/package-summary)、[Go](https://godoc.org/github.com/tensorflow/tensorflow/tensorflow/go)和[Rust](https://github.com/tensorflow/rust) API。第三方包可用于 [C\#](https://github.com/migueldeicaza/TensorFlowSharp)、[.NET Core](https://github.com/SciSharp/TensorFlow.NET)、[Julia](https://github.com/malmaud/TensorFlow.jl)、[R](https://github.com/rstudio/tensorflow)和[Scala](https://github.com/eaplatanios/tensorflow_scala)。

TensorFlow的底层核心引擎由C++实现，通过 [gRPC](https://grpc.io/) 实现网络互访、分布式执行。虽然它的Python/C++/Java API共享了大部分执行代码，但是有关于反向传播梯度计算的部分需要在不同语言单独实现。目前只有Python API较为丰富的实现了[反向传播部分](../Page/反向传播算法.md "wikilink")。所以大多数人使用[Python](../Page/Python.md "wikilink")进行模型训练，但是可以选择使用其它语言进行线上推理。

TensorFlow在Windows和Linux上支持使用 Bazel 或 [CMake](../Page/CMake.md "wikilink") 构建，在某些平台上也支持直接使用 [GNU Make](https://zh.wikipedia.org/wiki/GNU_make "wikilink") 进行编译。

## 例子

例：Hello World。

``` python
import tensorflow as tf
hw = tf.constant("Hello World")
with tf.Session() as sess:
 print(sess.run(hw))
```

例：两个矩阵相乘。

``` python
import tensorflow as tf

# Build a dataflow graph.
c = tf.constant([[1.0,_2.0],_[3.0,_4.0|1.0, 2.0], [3.0, 4.0]])
d = tf.constant([[1.0,_1.0],_[0.0,_1.0|1.0, 1.0], [0.0, 1.0]])
e = tf.matmul(c, d)

# Construct a `Session` to execute the graph.
with tf.Session() as sess:
  # Execute the graph and store the value that `e` represents in `result`.
  result = sess.run(e)

print(result)
```

例：使用Feeding在执行时传入参数

``` python
import tensorflow as tf

# Build a dataflow graph.
c = tf.constant([[1.0,_2.0],_[3.0,_4.0|1.0, 2.0], [3.0, 4.0]])
d = tf.constant([[1.0,_1.0],_[0.0,_1.0|1.0, 1.0], [0.0, 1.0]])
e = tf.matmul(c, d)

# Construct a `Session` to execute the graph.
sess = tf.Session()

# Execute the graph and store the value that `e` represents in `result`.
result = sess.run(e,feed_dict={c:[[0.0,_0.0],_[3.0,_4.0|0.0, 0.0], [3.0, 4.0]]})
print(result)
sess.close()
```

TensorFlow的一大特色是其图中的节点可以是带状态的。

例：使用占位符

``` python
import tensorflow as tf
input_placeholder = tf.placeholder(tf.int32)
sess = tf.Session()
print sess.run(input_placeholder, feed_dict={input_placeholder: 2})
```

例：使用变量、给变量赋值

使用tf.get_variable()创建变量。tf.get_variable() 的前两个参数是必需的，其余参数是可选的。tf.get_variable(name，shape)。name 是一个唯一标识这个变量对象的字符串。它必须相对于全局图是唯一的，所以要明了你使用过的所有命名，确保没有重复。shape 是与张量形状对应的整数数组，按顺序每个维度只有一个整数。一个 3x8 矩阵形状是 \[3, 8\]。要创建一个标量，就需要使用形状为 \[\] 的空列表。有两种将值放入变量的方法：初始化器和 tf.assign()。初始化器应该把声明（tf.constant_initializer）与执行初始化（tf.global_variables_initializer）两种节点配合使用。

``` python
import tensorflow as tf
count_variable = tf.get_variable("count", [])
zero_node = tf.constant(0.)
assign_node = tf.assign(count_variable, zero_node)
sess = tf.Session()
sess.run(assign_node)
print sess.run(count_variable)

const_init_node = tf.constant_initializer(0.)
count_variable1 = tf.get_variable("count1", [], initializer=const_init_node)
init = tf.global_variables_initializer()
sess.run(init)
print sess.run(count_variable1)
```

例：带状态的图

``` python
import tensorflow as tf

# Build a dataflow graph.
count = tf.Variable([0],trainable=False);
init_op = tf.global_variables_initializer()
update_count = count.assign_add(tf.constant([2]))

# Construct a `Session` to execute the graph.
sess = tf.Session()
sess.run(init_op)

for step in range(10):
    result = sess.run(update_count)
    print("step %d: count = %g" % (step,result))

sess.close()
```

例：梯度计算

``` python
import tensorflow as tf

# Build a dataflow graph.
filename_queue = tf.train.string_input_producer(['1.txt'],num_epochs=1)
reader = tf.TextLineReader()
key,value = reader.read(filename_queue)
num = tf.decode_csv(value,record_defaults=[[0|0]])
x = tf.Variable([0])
loss = x * num
grads = tf.gradients([loss],x)
grad_x = grads[0]

def train_fn(sess):
  train_fn.counter += 1
  result = sess.run(grad_x)
  print("step %d: grad = %g" % (train_fn.counter,result))

train_fn.counter = 0

sv = tf.train.Supervisor()
tf.train.basic_train_loop(sv,train_fn)
```

假设1.txt的内容为：

    3
    2
    5
    8

那么上述程序的输出应该为：

    step 1: grad = 3
    step 2: grad = 2
    step 3: grad = 5
    step 4: grad = 8

## 应用

广泛的应用程序使用TensorFlow作为基础，其中它已成功实现自动化图像字幕软件，例如。\[16\]2015年10月26日，Google正式启用了由TensorFlow提供支持的RankBrain。RankBrain现在处理大量的搜索查询，替换和补充传统的静态算法搜索结果。\[17\]

## 参阅

  - [人工神经网络](../Page/人工神经网络.md "wikilink")

  -
  - [卷积神经网络](../Page/卷积神经网络.md "wikilink")

  - [深度学习](../Page/深度学习.md "wikilink")

  - [机器学习](../Page/机器学习.md "wikilink")

## 引用

## 外部链接

  -
  -
  -
[Category:数据挖掘和机器学习软件](https://zh.wikipedia.org/wiki/Category:数据挖掘和机器学习软件 "wikilink") [Category:机器学习](https://zh.wikipedia.org/wiki/Category:机器学习 "wikilink") [Category:Google軟體](https://zh.wikipedia.org/wiki/Category:Google軟體 "wikilink") [Category:用Python編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Python編程的自由軟體 "wikilink") [Category:自由統計軟件](https://zh.wikipedia.org/wiki/Category:自由統計軟件 "wikilink") [Category:Python科学库](https://zh.wikipedia.org/wiki/Category:Python科学库 "wikilink") [Category:使用Apache许可证的软件](https://zh.wikipedia.org/wiki/Category:使用Apache许可证的软件 "wikilink") [Category:用C++編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C++編程的自由軟體 "wikilink")

1.  ["TensorFlow: Open source machine learning"](https://www.youtube.com/watch?v=oZikw5k_2FM)  "It is machine learning software being used for various kinds of perceptual and language understanding tasks" — Jeffrey Dean, minute 0:47 / 2:17 from Youtube clip

2.  ["TensorFlow: Open source machine learning"](https://www.youtube.com/watch?v=oZikw5k_2FM)  "It is machine learning software being used for various kinds of perceptual and language understanding tasks" — Jeffrey Dean, minute 0:47 / 2:17 from Youtube clip

3.

4.
5.

6.

7.

8.

9.

10.

11.

12. [Machine Learning: Google I/O 2016 Minute 07:30/44:44](https://www.youtube.com/watch?v=Rnm83GqgqPE)  accessdate=2016-06-05

13.

14.

15.

16.

17.