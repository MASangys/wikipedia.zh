**Conda**是一个[开源](https://zh.wikipedia.org/wiki/开源 "wikilink")\[1\][跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink")\[2\]\[3\]的[包管理与环境管理系统](https://zh.wikipedia.org/wiki/包管理器 "wikilink")。\[4\]\[5\]由“连续统分析”（Continuum
Analytics）基于[BSD许可证发布](../Page/BSD许可证.md "wikilink")。\[6\]\[7\]\[8\]\[9\]\[10\]\[11\]

Conda允许用户方便地安装不同版本的[二进制软件包与该](https://zh.wikipedia.org/wiki/二进制文件 "wikilink")[计算平台需要的所有库](https://zh.wikipedia.org/wiki/计算平台 "wikilink")。还允许用户在不同版本的包之间切换、从一个下载包并安装。

Conda是用Python语言开发，但能管理其他编程语言的项目（如[R语言](../Page/R语言.md "wikilink")\[12\]），包括多语言项目。\[13\]
Conda可安装Python语言的包，\[14\]类似于其他基于Python的跨平台包管理器（如[wheel](http://wheel.rtfd.org/)或[pip](https://zh.wikipedia.org/wiki/pip_\(package_manager\) "wikilink")）。

一些基于Conda的工具软件：

  - Bioconda，用于计算生物学。\[15\]\[16\]
  - [Anaconda](../Page/Anaconda_\(Python发行版\).md "wikilink")
  - Miniconda\[17\]
  - Anaconda Repository.\[18\]

## Conda的命令

首先打开命令行(最好用管理员模式打开) 。

输入 `conda --version` 显示conda版本号。

输入`conda upgrade --all` 把所有工具包进行升级

输入`conda activate 环境名` 切换到指定的环境。如果未指定环境名，则切换到默认的base环境。

输入`conda env list` 列出所有的环境

输入`conda create -n 环境名 python=3`
创建一个指定名称的虚拟环境并指定python版本为3，conda会自动找3中最新的版本下载。

输入`conda install 包名`，安装指定的包

输入`conda remove 包名` ，卸载指定的包

输入`conda remove -n 环境名 --all` // 删除指定环境及下所有包

输入`conda update 包名` 更新指定包

输入`conda list` 列出当前环境下所有已经安装的包

输入`conda env export > environment.yaml`或输入`conda env export --file
python36_20190106.yml` 导出当前环境的包信息

输入`conda env create -f environment.yaml` 用配置文件创建新的虚拟环境

## 参考文献

## 外部链接

  -
[Category:软件包管理系统](https://zh.wikipedia.org/wiki/Category:软件包管理系统 "wikilink")

1.

2.

3.

4.

5.

6.
7.

8.

9.

10.

11.

12.
13.
14.

15. [Bioconda official website](https://bioconda.github.io/)

16.

17.

18.