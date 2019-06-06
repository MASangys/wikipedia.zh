
**Docker**
是一个[计算机程序](../Page/计算机程序.md "wikilink")，执行[操作系统级别的虚拟化](../Page/作業系統層虛擬化.md "wikilink")。\[1\]
由Docker公司开发并于2013年首次发布。\[2\]

Docker用于在“容器(containers)”中运行软件。容器彼此隔离，并捆绑自己的应用、工具、库、配置文件\[3\]，容器间可通过预先定义的通道进行通信。
所有的容器运行在同一个操作系统[内核上](../Page/内核.md "wikilink")，因此它们比[虚拟机要轻巧](../Page/虛擬機器.md "wikilink")。容器由“镜像(images)”创建和定义内容。可在镜像源(repository)中下载标准镜像，镜像可以通过组合或修改标准镜像的方式来创建。

## 历史

该软件于2013年在圣克拉拉举办的[PyCon大会上首次公开发布](../Page/PyCon.md "wikilink")。\[4\]

Docker于2013年3月以开源形式发布。2014年3月13日，随着0.9版本的发布，Docker放弃将[LXC作为默认运行环境](../Page/LXC.md "wikilink")，转用[Go语言自行开发的](../Page/Go.md "wikilink")`libcontainer`库。

### 大事记

  - 2013年9月19日，[红帽公司和Docker宣布围绕](../Page/紅帽公司.md "wikilink")[Fedora](../Page/Fedora.md "wikilink")、[Red
    Hat Enterprise
    Linux和OpenShift进行合作](../Page/Red_Hat_Enterprise_Linux.md "wikilink")。\[5\]
  - 2014年11月，宣布Docker容器服务用于[亚马逊弹性云计算](../Page/Amazon_EC2.md "wikilink")
    (EC2).\[6\]
  - 2014年11月10日，Docker宣布与 Stratoscale建立合作伙伴关系。\[7\]
  - 2014年12月4日， [IBM](../Page/IBM.md "wikilink")
    宣布与Docker达成战略伙伴关系，使Docker能够与IBM
    Cloud更紧密地集成。\[8\]
  - 2015年6月22日，Docker等多家公司共同宣布，他们正在开发一种新的独立于供应商和操作系统的软件容器标准。\[9\]\[10\]
  - 截至2015年10月24日，该项目拥有超过25,600个GitHub星标（使其成为第20个最受欢迎的GitHub项目），超过6,800个分支，以及近1,100个贡献者。\[11\]
  - 2016年4月，独立软件开发商Windocks发布了支持Windows的Docker开源项目，支持Windows Server 2012
    R2、Server 2016，以及SQL Server 2008的所有版本和后续版本。\[12\]
  - 2016年5月的一项分析显示，以下组织是Docker的主要贡献者：Docker团队，[思科](../Page/思科系统.md "wikilink")、[谷歌](https://zh.wikipedia.org/wiki/谷歌 "wikilink")、[华为](../Page/华为.md "wikilink")、[IBM](../Page/IBM.md "wikilink")、[微软和](../Page/微软.md "wikilink")[红帽](../Page/紅帽公司.md "wikilink")。\[13\]
  - 2016年10月4日，Solomon
    Hykes宣布Docker容器环境将采用InfraKit作为新的自我修复容器基础设施。\[14\]\[15\]
  - 2017年1月对[领英个人资料的一项分析显示](../Page/領英.md "wikilink")，Docker的使用率在2016年增长了160%。\[16\]

## 技术

[缩略图](https://zh.wikipedia.org/wiki/File:Docker-linux-interfaces.svg "fig:缩略图")
Docker主要是为[Linux开发的](../Page/Linux.md "wikilink")，它使用[Linux内核的资源隔离功能](../Page/Linux内核.md "wikilink")，如[cgroups和内核](https://zh.wikipedia.org/wiki/cgroups "wikilink")[命名空间](https://zh.wikipedia.org/wiki/Linux_namespaces "wikilink")
，以及[OverlayFS等支持联合安装的文件系统](../Page/OverlayFS.md "wikilink")\[17\]
，来保证各“容器”得以在单个Linux实例上运行，免去了启动和维护[虚拟机](../Page/虛擬機器.md "wikilink")(VM)的开销。
\[18\]
Linux的内核命名空间主要用于\[19\]隔离应用程序对操作环境的可见性，包括进程树、网络、用户ID和挂载的文件系统，而Linux内核的cgroup则为内存和CPU提供资源限制。
\[20\]
从版本0.9开始，除了通过[libvirt](https://zh.wikipedia.org/wiki/libvirt "wikilink")、[LXC和systemd](../Page/LXC.md "wikilink")-nspawn使用抽象虚拟化接口之外，Docker还将`libcontainer`库作为直接使用Linux内核提供的虚拟化工具的方式。
\[21\] \[22\] \[23\]
**<span class="monospaced" data-ve-ignore="true">libcontainer</span>**

### 组件

Docker软件是由三个组件组成的服务：

  - **软件：**Docker的
    [守护程序是](../Page/守护进程.md "wikilink")[`dockerd`](../Page/守护进程.md "wikilink")，它管理Docker容器并处理容器对象。
    守护程序侦听通过Docker Engine API发送的请求。 \[24\] \[25\] Docker客户端程序名为`docker`
    ，它提供了一个[命令行界面](../Page/命令行界面.md "wikilink") ，允许用户与Docker守护进程进行交互。
    \[26\] \[27\]
  - **对象：** Docker对象是用于在Docker中组装应用程序的各种实体。 Docker对象的主要类是容器、镜像和服务。
    \[28\]
      - **Docker容器**是运行应用程序的标准化封装环境。 \[29\] 使用Docker API或CLI管理容器。 \[30\]
      - **Docker镜像**是用于构建容器的只读模板。镜像用于存储和承载应用程序。 \[31\]
      - **Docker服务**允许跨多个Docker守护进程来扩展容器。 结果称为*swarm* ，一组通过Docker
        API进行通信的协作守护进程。 \[32\]
  - **镜像源(Registries)：**
    Docker镜像源是Docker镜像的仓库。Docker客户端连接到镜像源后，可下载（“拉”）镜像，或上传（“推”）已构建的镜像。镜像源可以注册为公共或个人的。
    两个主要的公共镜像源是Docker Hub和Docker Cloud。其中，Docker Hub是Docker查找镜像的默认镜像源。
    \[33\] \[34\] Docker镜像源还允许创建基于事件的通知。 \[35\]

### 工具

  - **Docker Compose**是一个用于定义和运行多容器Docker应用程序的工具。 \[36\]
    它使用[YAML文件配置应用程序的服务](../Page/YAML.md "wikilink")，并使用单个命令执行所有容器的创建和启动过程。
    `docker-compose` CLI实用程序允许用户一次在多个容器上运行命令，例如，构建镜像，
    [扩展容器](https://zh.wikipedia.org/wiki/可扩展性 "wikilink")，运行已停止的容器等等。
    \[37\] 与镜像处理相关的命令或用户交互选项与Docker Compose无关，因为它们可以处理一个容器。 \[38\]
    docker-compose.yml文件用于定义应用程序的服务，并包含各种配置选项。 例如，
    `build`选项定义Dockerfile路径等配置选项，
    `command`选项允许覆盖默认的Docker命令等等。 \[39\]
    Docker Compose的第一个公开版本（版本0.0.1）于2013年12月21日发布。 \[40\]
    第一个生产就绪版本（1.0）于2014年10月16日发布。 \[41\]
  - **Docker
    Swarm**为Docker容器提供本机[集群功能](../Page/计算机集群.md "wikilink")，将一组Docker引擎转换为单个虚拟Docker引擎。
    \[42\] 在Docker 1.12及更高版本中，Swarm模式与Docker Engine集成在一起。 \[43\] `swarm`
    CLI实用程序允许用户运行Swarm容器，创建发现令牌，列出集群中的节点等。 \[44\] `docker node`
    CLI实用程序允许用户运行各种命令来管理Swarm中的节点，例如，列出Swarm中的节点、更新节点以及从swarm中删除节点。
    \[45\] Docker使用[Raft Consensus
    Algorithm管理Swarm](../Page/Raft.md "wikilink")。
    根据Raft的说法，要进行更新，大多数Swarm节点需要就更新达成一致。
    \[46\] \[47\]

## 操作

Docker实现了一个高级[API，以提供单独运行进程的轻量级容器](../Page/应用程序接口.md "wikilink")。 \[48\]

由于Docker容器是轻量级的，因此单个服务器或虚拟机可以同时运行多个容器。
2016年的一项分析发现，典型的Docker用例涉及每个主机运行5个容器，但许多组织运行10个或更多。
\[49\]

使用容器可以通过允许多个应用程序，工作任务和其他进程在单个物理主机上或跨多个虚拟机自主运行来简化高度[分布式系统的创建](../Page/分布式计算.md "wikilink")。
这允许在资源变得可用或需要更多节点时执行节点部署，从而允许[平台即服务](https://zh.wikipedia.org/wiki/平台即服务 "wikilink")
（PaaS）风格的部署和扩展，用于[Apache Cassandra](../Page/Cassandra.md "wikilink") ，
[MongoDB和Riak等系统](../Page/MongoDB.md "wikilink") 。 \[50\] \[51\]

### 集成

Docker可以集成到各种基础架构工具中，包括[Amazon Web
Services](../Page/亚马逊云计算服务.md "wikilink") ， \[52\]
Ansible ， \[53\] CFEngine ， \[54\] [Chef](../Page/Chef.md "wikilink") ，
\[55\] [Google Cloud Platform](../Page/Google雲端平台.md "wikilink") ，
\[56\] IBM Bluemix ， \[57\] HPE Helion Stackato， Jelastic ， \[58\]
[Jenkins](../Page/Jenkins_\(软件\).md "wikilink") ， \[59\]
[Kubernetes](../Page/Kubernetes.md "wikilink") ， \[60\] [Microsoft
Azure](../Page/Microsoft_Azure.md "wikilink") ， \[61\]
[OpenStack](../Page/OpenStack.md "wikilink") Nova， \[62\] OpenSVC ，
\[63\] Oracle容器云服务 ， \[64\] Puppet ， \[65\] ProGet ， \[66\] Salt ，
\[67\] [Vagrant](../Page/Vagrant.md "wikilink") ， \[68\]和VMware
vSphere集成容器 。 \[69\] \[70\]

Cloud Foundry Diego项目将Docker集成到Cloud Foundry
[PaaS中](https://zh.wikipedia.org/wiki/平台即服务 "wikilink") 。 \[71\]

Nanobox使用Docker（本机和[VirtualBox](../Page/VirtualBox.md "wikilink")
）容器作为其软件开发平台的核心部分。 \[72\]

自2015年6月起，红帽公司的[OpenShift](../Page/OpenShift.md "wikilink")
PaaS将Docker与相关项目（Kubernetes，Geard，Project Atomic等）集成在一起。 \[73\]

Apprenda PaaS在其产品的6.0版本中集成了Docker容器。 \[74\]

Jelastic PaaS提供托管的多租户Docker容器，与原生态系统完全兼容。 \[75\]

Tsuru PaaS在2013年将Docker容器集成到其产品中，这是第一个在生产环境中使用Docker的PaaS。 \[76\]

### 对于Windows

2014年10月15日， [微软宣布将Docker引擎集成到下一个](../Page/微软.md "wikilink")[Windows
Server版本中](../Page/Windows_Server.md "wikilink")，并在Windows中支持Docker客户端角色。
\[77\] \[78\] 2016年6月8日，微软宣布Docker现在可以在带有Hyper-V容器的Windows
10上本地使用，使用Windows Server 2016 Technical Preview 5 Nano
Server容器操作系统映像构建，运送和运行容器。 \[79\]

自此， [Windows 10和](../Page/Windows_10.md "wikilink")[Windows Server
2016可以使用称为Windows容器的功能](../Page/Windows_Server_2016.md "wikilink")。
有两种类型的Windows容器：Windows Server Containers和Hyper-V Isolation。
前者通过进程和命名空间隔离技术提供应用程序隔离。 Windows Server
Container与容器主机和主机上运行的所有容器共享内核。 后者通过在高度优化的虚拟机中运行每个容器来扩展Windows
Server Containers提供的隔离。 在此配置中，容器主机的内核不与同一主机上的其他容器共享。 客户操作系统映像是Windows
Nano Server映像，其大小为652 MB，具有与Nano Server相同的限制，
\[80\]以及单独的[最终用户许可协议](https://zh.wikipedia.org/wiki/最终用户许可协议 "wikilink")
。 \[81\]

## 参见

  - [DevOps](../Page/DevOps.md "wikilink")
  - [操作系统级虚拟化](../Page/作業系統層虛擬化.md "wikilink")
  - [服务组件架构](../Page/服务组件架构.md "wikilink")

## 注释

## 参考文献

## 外部链接

  -
  - [什么是Docker容器 -
    简介](https://acadgild.com/blog/what-is-docker-container-an-introduction/)

[Category:2013年软件](https://zh.wikipedia.org/wiki/Category:2013年软件 "wikilink")
[Category:Linux虚拟化相关软件](https://zh.wikipedia.org/wiki/Category:Linux虚拟化相关软件 "wikilink")
[Category:虛擬化軟體](https://zh.wikipedia.org/wiki/Category:虛擬化軟體 "wikilink")
[Category:使用Apache许可证的软件](https://zh.wikipedia.org/wiki/Category:使用Apache许可证的软件 "wikilink")
[Category:操作系统技术](https://zh.wikipedia.org/wiki/Category:操作系统技术 "wikilink")
[Category:操作系统安全](https://zh.wikipedia.org/wiki/Category:操作系统安全 "wikilink")
[Category:用Go编程的自由软件](https://zh.wikipedia.org/wiki/Category:用Go编程的自由软件 "wikilink")
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")
[Category:Linux容器化](https://zh.wikipedia.org/wiki/Category:Linux容器化 "wikilink")

1.  <cite class="citation web">O'Gara, Maureen (July 26, 2013). ["Ben
    Golub, Who Sold Gluster to Red Hat, Now Running
    dotCloud"](http://maureenogara.sys-con.com/node/2747331). SYS-CON
    Media<span class="reference-accessdate">. Retrieved
    <span class="nowrap">August 9,</span>
    2013</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

2.  <cite class="citation web">Vivek Ratan (February 8, 2017). ["Docker:
    A Favourite in the DevOps
    World"](http://opensourceforu.com/2017/02/docker-favourite-devops-world/).
    *Open Source For U*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">June 14,</span>
    2017</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

3.

4.  <cite class="citation web">["Docker
    announcement"](https://www.youtube.com/watch?v=wW9CAH9nSLs)<span class="reference-accessdate">.
    Retrieved <span class="nowrap">July 13,</span>
    2018</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

5.  <cite class="citation web">["DotCloud Pivots And Wins Big With
    Docker, The Cloud Service Now Part Of Red Hat
    OpenShift"](https://techcrunch.com/2013/09/19/dotcloud-pivots-and-wins-big-with-docker-the-cloud-service-now-part-of-red-hat-openshift/).
    [TechCrunch](../Page/TechCrunch.md "wikilink"). September 19,
    2013<span class="reference-accessdate">. Retrieved
    <span class="nowrap">January 20,</span>
    2014</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

6.  <cite class="citation web">Jeff Barr (November 13, 2014). ["Amazon
    EC2 Container Service (ECS) – Container Management for the AWS
    Cloud"](https://aws.amazon.com/blogs/aws/cloud-container-management/).
    *Amazon Web Services Blog*<span class="reference-accessdate">.
    Retrieved <span class="nowrap">April 29,</span>
    2017</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

7.  <cite class="citation web">John Rath (November 10, 2014).
    ["Stratoscale Raises $32M to Build Docker-Supporting OpenStack
    Clouds on Commodity
    Servers"](http://www.datacenterknowledge.com/archives/2014/11/10/stratoscale-raises-32m-supports-docker-containers-openstack/)<span class="reference-accessdate">.
    Retrieved <span class="nowrap">January 3,</span>
    2016</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

8.  <cite class="citation web">["IBM and Docker Announce Strategic
    Partnership to Deliver Enterprise Applications in the Cloud and On
    Prem"](https://www-03.ibm.com/press/us/en/pressrelease/45597.wss).
    [IBM](../Page/IBM.md "wikilink"). December 4,
    2014<span class="reference-accessdate">. Retrieved
    <span class="nowrap">April 20,</span>
    2015</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

9.  <cite class="citation web">Frederic Lardinois (June 22, 2015).
    ["Docker, CoreOS, Google, Microsoft, Amazon And Others Come Together
    To Develop Common Container
    Standard"](https://techcrunch.com/2015/06/22/docker-coreos-google-microsoft-amazon-and-others-agree-to-develop-common-container-standard/#.pvelx1:NDMH).
    [TechCrunch](../Page/TechCrunch.md "wikilink")<span class="reference-accessdate">.
    Retrieved <span class="nowrap">August 8,</span>
    2015</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

10. <cite class="citation web">Shirley Siluk (June 22, 2015). ["Docker,
    Tech Giants Team on Open Container
    Project"](http://www.cio-today.com/article/index.php?story_id=112003LU9CSG).
    *cio-today.com*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">August 8,</span>
    2015</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

11. <cite class="citation web">["dotcloud/docker"](https://github.com/dotcloud/docker).
    *github.com*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">April 13,</span>
    2015</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

12. <cite class="citation web">Serdar Yegulalp (April 4, 2016).
    ["Windocks does what Docker and Microsoft can't
    do"](https://www.infoworld.com/article/3051588/application-virtualization/windocks-does-what-docker-and-microsoft-cant-do.html)<span class="reference-accessdate">.
    Retrieved <span class="nowrap">October 27,</span>
    2018</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

13. <cite class="citation web">["Docker – Updated project
    statistics"](https://gist.github.com/icecrime/18d72202f4569a0cab1ee60f7583425f).
    *Gist*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">August 22,</span>
    2016</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

14. <cite class="citation web">Clarke, Gavin (October 5, 2016). ["Docker
    emits InfraKit to wrangle containers on competing
    clouds"](https://www.theregister.co.uk/2016/10/05/solomon_hykes_on_docker_kits_and_linux/)<span class="reference-accessdate">.
    Retrieved <span class="nowrap">October 7,</span>
    2016</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

15. <cite class="citation web">["Docker Debuts Infrakit Open Source
    Toolkit for Self-Healing
    Infrastructure"](http://www.serverwatch.com/server-news/docker-debuts-infrakit-open-source-toolkit-for-self-healing-infrastructure.html).
    *www.serverwatch.com*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">October 7,</span>
    2016</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

16. <cite class="citation web">Michael Mullany. ["Docker Momentum
    Analysis 2016"](https://www.linkedin.com/pulse/docker-momentum-2016-analysis-michael-mullany)<span class="reference-accessdate">.
    Retrieved <span class="nowrap">January 5,</span>
    2017</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

17. <cite class="citation web">["Select a storage driver
    documentation"](https://docs.docker.com/engine/userguide/storagedriver/selectadriver/).
    *Docker documentation*.
    [Archived](https://archive.is/20161206132431/https://docs.docker.com/engine/userguide/storagedriver/selectadriver/)
    from the original on December 6,
    2016<span class="reference-accessdate">. Retrieved
    <span class="nowrap">December 7,</span>
    2016</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

18. <cite class="citation web">["Docker Documentation: Kernel
    Requirements"](https://web.archive.org/web/20140821065734/http://docker.readthedocs.org/en/v0.7.3/installation/kernel/).
    *docker.readthedocs.org*. January 4, 2014. Archived from [the
    original](http://docker.readthedocs.org/en/v0.7.3/installation/kernel/)
    on August 21, 2014<span class="reference-accessdate">. Retrieved
    <span class="nowrap">August 20,</span>
    2014</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

19. <cite class="citation web">Dan Walsh (September 15, 2014). ["Yet
    Another Reason Containers Don't Contain: Kernel
    Keyrings"](http://www.projectatomic.io/blog/2014/09/yet-another-reason-containers-don-t-contain-kernel-keyrings/).
    *projectatomic.io*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">April 13,</span>
    2015</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

20. <cite class="citation web">["Limit a container's
    resources"](https://docs.docker.com/config/containers/resource_constraints/).
    *Docker Documentation*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">March 7,</span>
    2018</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

21. <cite class="citation web">Steven J. Vaughan-Nichols (June 11,
    2014). ["Docker libcontainer unifies Linux container
    powers"](http://www.zdnet.com/docker-libcontainer-unifies-linux-container-powers-7000030397/).
    [ZDNet](https://zh.wikipedia.org/wiki/ZDNet "wikilink")<span class="reference-accessdate">.
    Retrieved <span class="nowrap">July 30,</span>
    2014</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

22. <cite class="citation web">["libcontainer – reference implementation
    for
    containers"](https://github.com/docker/libcontainer/blob/master/README.md).
    *github.com*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">July 30,</span>
    2014</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

23. <cite class="citation web">["Docker 0.9: Introducing execution
    drivers and
    libcontainer"](http://blog.docker.com/2014/03/docker-0-9-introducing-execution-drivers-and-libcontainer/).
    *docker.com*. March 10, 2014<span class="reference-accessdate">.
    Retrieved <span class="nowrap">January 20,</span>
    2015</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

24. <cite class="citation web">["Docker
    overview"](https://docs.docker.com/engine/docker-overview/). *Docker
    Documentation*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">February 26,</span>
    2018</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

25. <cite class="citation web">["dockerd"](https://docs.docker.com/engine/reference/commandline/dockerd).
    *Docker Documentation*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">February 26,</span>
    2018</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

26. <cite class="citation web">["Use the Docker command
    line"](https://docs.docker.com/engine/reference/commandline/cli/).
    *Docker Documentation*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">February 26,</span>
    2018</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

27.
28.
29. <cite class="citation web">["The Docker Ecosystem: An Introduction
    to Common
    Components"](https://www.digitalocean.com/community/tutorials/the-docker-ecosystem-an-introduction-to-common-components).
    *www.digitalocean.com*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">February 26,</span>
    2018</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

30.
31.
32.
33. <cite class="citation web">["About
    Registry"](https://docs.docker.com/registry/introduction/). *Docker
    Documentation*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">February 26,</span>
    2018</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

34.
35.

36. <cite class="citation web">["Overview of Docker
    Compose"](https://docs.docker.com/compose/overview/)<span class="reference-accessdate">.
    Retrieved <span class="nowrap">July 6,</span>
    2017</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

37. <cite class="citation web">["Compose command-line
    reference"](https://docs.docker.com/compose/reference/). *Docker
    Documentation*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">February 28,</span>
    2018</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

38. <cite class="citation news">["Orchestrate Containers for Development
    with Docker
    Compose"](https://blog.codeship.com/orchestrate-containers-for-development-with-docker-compose/).
    *via @codeship*. May 27, 2015<span class="reference-accessdate">.
    Retrieved <span class="nowrap">February 28,</span>
    2018</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

39. <cite class="citation web">["Compose file version 3
    reference"](https://docs.docker.com/compose/compose-file/). *Docker
    Documentation*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">February 28,</span>
    2018</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

40. <cite class="citation web">Firshman, Ben (December 21, 2013).
    ["Release 0.0.1"](https://github.com/docker/compose/releases/tag/0.0.1).
    *docker/compose*. [Docker,
    Inc.](https://zh.wikipedia.org/wiki/Docker,_Inc. "wikilink") – via
    [GitHub](../Page/GitHub.md "wikilink").</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

41. <cite class="citation web">Prasad, Aanand (October 16, 2014).
    ["Release 1.0.0"](https://github.com/docker/compose/releases/tag/1.0.0).
    *docker/compose*. [Docker,
    Inc.](https://zh.wikipedia.org/wiki/Docker,_Inc. "wikilink") – via
    [GitHub](../Page/GitHub.md "wikilink").</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

42. <cite class="citation web">["8 Container Orchestration Tools to
    Know"](https://www.linux.com/news/8-open-source-CONTAINER-ORCHESTRATION-TOOLS-KNOW).
    April 12, 2017<span class="reference-accessdate">. Retrieved
    <span class="nowrap">July 6,</span>
    2017</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

43. <cite class="citation web">["Docker
    Swarm"](https://docs.docker.com/swarm/)<span class="reference-accessdate">.
    Retrieved <span class="nowrap">July 6,</span>
    2017</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

44. <cite class="citation web">["Swarm command-line
    reference"](https://docs.docker.com/swarm/reference/). *Docker
    Documentation*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">February 28,</span>
    2018</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

45. <cite class="citation web">["docker
    node"](https://docs.docker.com/engine/reference/commandline/node/).
    *Docker Documentation*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">February 28,</span>
    2018</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

46. <cite class="citation web">["Docker
    Swarm 101"](https://www.aquasec.com/wiki/display/containers/Docker+Swarm+101).
    *aquasec.com*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">February 28,</span>
    2018</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

47. <cite class="citation web">["Raft Consensus
    Algorithm"](https://raft.github.io/).
    *raft.github.io*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">February 28,</span>
    2018</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

48. <cite class="citation web">Avram, Abel (March 27, 2013). ["Docker:
    Automated and Consistent Software
    Deployments"](http://www.infoq.com/news/2013/03/Docker).
    InfoQ<span class="reference-accessdate">. Retrieved
    <span class="nowrap">August 9,</span>
    2013</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

49. <cite class="citation web">["8 surprising facts about real Docker
    adoption"](https://www.datadoghq.com/docker-adoption/). Datadog.
    June 2016<span class="reference-accessdate">. Retrieved
    <span class="nowrap">November 14,</span>
    2016</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

50. <cite class="citation web">Hall, Adron (July 31, 2013). ["OSCON :
    Conversations, Deployments, Architecture, Docker and the
    Future?"](http://www.cloudave.com/30655/oscon-conversations-deployments-architecture-docker-and-the-future/).
    CloudAve<span class="reference-accessdate">. Retrieved
    <span class="nowrap">August 9,</span>
    2013</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

51. <cite class="citation web">Reeder, Travis (April 22, 2014). ["How
    Docker Helped Us Achieve the (Near)
    Impossible"](https://blog.iron.io/how-docker-helped-us-achieve-near/).
    Iron.io<span class="reference-accessdate">. Retrieved
    <span class="nowrap">July 25,</span>
    2014</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

52. <cite class="citation web">["Amazon EC2 – Docker
    Documentation"](https://archive.is/20141018090321/https://docs.docker.com/installation/amazon/).
    *docs.docker.com*. Archived from [the
    original](https://docs.docker.com/installation/amazon/) on October
    18, 2014<span class="reference-accessdate">. Retrieved
    <span class="nowrap">October 18,</span>
    2014</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

53. <cite class="citation web">["ansible/library/cloud/docker"](https://archive.is/20131227071413/https://github.com/ansible/ansible/blob/devel/library/cloud/docker).
    [GitHub](../Page/GitHub.md "wikilink"). Archived from [the
    original](https://github.com/ansible/ansible/blob/devel/library/cloud/docker)
    on December 27, 2013<span class="reference-accessdate">. Retrieved
    <span class="nowrap">January 20,</span>
    2014</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

54. <cite class="citation web">["CFEngine"](https://web.archive.org/web/20140613180312/http://docs.docker.com/examples/cfengine_process_management/).
    CFEngine. Archived from [the
    original](http://docs.docker.com/examples/cfengine_process_management/)
    on June 13, 2014<span class="reference-accessdate">. Retrieved
    <span class="nowrap">June 6,</span>
    2014</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

55. <cite class="citation web">["thoward/docker-cookbook"](https://github.com/thoward/docker-cookbook).
    GitHub<span class="reference-accessdate">. Retrieved
    <span class="nowrap">January 20,</span>
    2014</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

56. <cite class="citation web">["Containers on Google Cloud
    Platform"](https://cloud.google.com/compute/docs/containers). Google
    Inc.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

57. <cite class="citation web">["Bluemix Launches IBM Containers Beta
    Based on
    Docker"](https://developer.ibm.com/bluemix/2014/12/04/ibm-containers-beta-docker/).
    IBM. December 4, 2014<span class="reference-accessdate">. Retrieved
    <span class="nowrap">April 20,</span>
    2015</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

58. <cite class="citation web">["Jelastic Announces Docker Integration
    to Provide the Most Advanced Orchestrated Application
    Delivery"](http://www.prweb.com/releases/2014/12/prweb12361294.htm/).
    PRWeb<span class="reference-accessdate">. Retrieved
    <span class="nowrap">December 3,</span>
    2014</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

59. <cite class="citation web">["georgebashi/jenkins-docker-plugin"](https://github.com/georgebashi/jenkins-docker-plugin).
    GitHub<span class="reference-accessdate">. Retrieved
    <span class="nowrap">January 9,</span>
    2017</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

60. <cite class="citation news">Surana, Ramit (September 16, 2015).
    ["Containerizing Docker on
    Kubernetes"](https://www.linkedin.com/pulse/containerizing-docker-kubernetes-ramit-surana).
    *[LinkedIn](https://zh.wikipedia.org/wiki/LinkedIn "wikilink")*<span class="reference-accessdate">.
    Retrieved <span class="nowrap">November 2,</span>
    2015</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

61. <cite class="citation web">["The Docker Virtual Machine Extension
    for Linux on
    Azure"](https://azure.microsoft.com/en-us/documentation/articles/virtual-machines-docker-vm-extension/).
    Microsoft. June 29, 2015<span class="reference-accessdate">.
    Retrieved <span class="nowrap">August 11,</span>
    2015</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

62. <cite class="citation web">Stefano Maffulli (June 7, 2013).
    ["OpenStack Community Weekly Newsletter (May 31 –
    June 7)"](http://www.openstack.org/blog/2013/06/openstack-community-weekly-newsletter-may-31-june-7/).
    *The OpenStack Blog*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">January 20,</span>
    2014</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

63. <cite class="citation web">["OpenSVC
    Docker"](http://docs.opensvc.com/agent.service.container.docker.html).
    OpenSVC<span class="reference-accessdate">. Retrieved
    <span class="nowrap">May 29,</span>
    2014</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

64. <cite class="citation web">Native, Cloud. ["Oracle Container Cloud
    Service Explained By
    Oracle.com"](https://cloud.oracle.com/container).</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

65. <cite class="citation web">Gareth Rushgrove.
    ["garethr/docker"](http://forge.puppetlabs.com/garethr/docker).
    Puppet Forge<span class="reference-accessdate">. Retrieved
    <span class="nowrap">January 20,</span>
    2014</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

66. <cite class="citation web">["private Docker
    Registry"](https://inedo.com/support/documentation/proget/docker/private-registries)<span class="reference-accessdate">.
    Retrieved <span class="nowrap">March 20,</span>
    2018</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

67. <cite class="citation web">["saltstack/dockerio"](http://docs.saltstack.com/ref/modules/all/salt.modules.dockerio.html#module-salt.modules.dockerio)<span class="reference-accessdate">.
    Retrieved <span class="nowrap">January 20,</span>
    2014</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

68. <cite class="citation web">["philspitler/vagrant-docker"](https://archive.is/20130809164628/https://github.com/philspitler/vagrant-docker).
    GitHub. Archived from [the
    original](https://github.com/philspitler/vagrant-docker) on August
    9, 2013<span class="reference-accessdate">. Retrieved
    <span class="nowrap">January 20,</span>
    2014</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

69. <cite class="citation web">["What is VMware vSphere Integrated
    Containers (VIC)? - Definition from
    WhatIs.com"](http://searchservervirtualization.techtarget.com/definition/VMware-vSphere-Integrated-Containers-VIC).</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

70. <cite class="citation news">Fulton III, Scott M. (September 4,
    2015). ["VMware's Photon Platform and How it Treats
    Containers"](http://thenewstack.io/vmwares-photon-platform-and-how-it-treats-containers/).
    *The New Stack*<span class="reference-accessdate">. Retrieved
    <span class="nowrap">June 8,</span>
    2017</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

71. <cite class="citation web">Whelan, Phil (September 3, 2014). ["Cloud
    Foundry: Diego Explained By Onsi
    Fakhouri"](https://community.spiceworks.com/topic/576560-cloud-foundry-diego-explained-by-onsi-fakhouri).
    ActiveState<span class="reference-accessdate">. Retrieved
    <span class="nowrap">April 20,</span> 2015</span>. <q>Functionality
    is being added to enable end-users to push Docker images directly
    into a Cloud Foundry cluster running
    Diego.</q></cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

72. <cite class="citation web">Robbins, Richard (June 17, 2017).
    ["Docker Containers and the Nanobox Development
    Platform"](https://content.nanobox.io/docker-containers-nanobox-development-platform/).
    Nanobox<span class="reference-accessdate">. Retrieved
    <span class="nowrap">June 17,</span> 2017</span>. <q>Nanobox uses
    Docker under the hood for container
    implementation</q></cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

73. <cite class="citation news">Jackson, Joab (April 16, 2014). ["Red
    Hat to update Docker container tech for enterprises: Open source
    vendor plans to incorporate advanced Linux tools such as systemd and
    SELinux into
    Docker"](http://www.computerworld.com/s/article/9247706/Red_Hat_to_update_Docker_container_tech_for_enterprises).
    *Computerworld*. Computerworld,
    Inc<span class="reference-accessdate">. Retrieved
    <span class="nowrap">May 29,</span> 2014</span>. <q>Red Hat has also
    started a second community project, called GearD, to integrate
    Docker into its PaaS (platform-as-a-service) hosting software,
    OpenShift
    Origin.</q></cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

74. <cite class="citation news">Verge, Jason (April 28, 2015). ["PaaS
    and Docker Containers Work Together in Latest Apprenda
    Release"](http://www.datacenterknowledge.com/archives/2015/04/28/paas-and-docker-containers-work-together-in-latest-apprenda-release/).
    Data Center Knowledge<span class="reference-accessdate">. Retrieved
    <span class="nowrap">December 6,</span> 2015</span>. <q>The 6.0
    release integrates Docker's flexibility and portability with the
    compliance, governance and security capabilities that enterprises
    need from
    PaaS.</q></cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

75. <cite class="citation news">Fydorenchyk, Tetiana (March 28, 2017).
    ["Jelastic Fifth Element Released: Support of Native and Managed
    Docker
    Containers"](http://www.prweb.com/releases/2017/03/prweb14189486.htm).
    PRWeb<span class="reference-accessdate">. Retrieved
    <span class="nowrap">March 28,</span> 2017</span>. <q>The tight
    integration with Docker native solutions reduce the deployment
    barriers for developers and opens up new business opportunities for
    hosting providers by redefining economic at scale in hybrid and
    multi-cloud
    environments</q></cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

76. <cite class="citation news">Medina, Andrews (November 15, 2013).
    ["Docker and Tsuru"](https://www.youtube.com/watch?v=oPjnIn8MguA).
    Docker<span class="reference-accessdate">. Retrieved
    <span class="nowrap">December 6,</span>
    2015</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

77. <cite class="citation web">Mary Jo Foley (October 15, 2014).
    ["Docker container support coming to Microsoft's next Windows Server
    release"](http://www.zdnet.com/docker-container-support-coming-to-microsofts-next-windows-server-release-7000034708/).
    [ZDNet](https://zh.wikipedia.org/wiki/ZDNet "wikilink")<span class="reference-accessdate">.
    Retrieved <span class="nowrap">October 16,</span>
    2014</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

78. <cite class="citation web">Scott Guthrie (October 15, 2014).
    ["Docker and Microsoft: Integrating Docker with Windows Server and
    Microsoft
    Azure"](http://weblogs.asp.net/scottgu/docker-and-microsoft-integrating-docker-with-windows-server-and-microsoft-azure).
    Microsoft<span class="reference-accessdate">. Retrieved
    <span class="nowrap">January 12,</span>
    2015</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

79. <cite class="citation web">["Announcing Windows 10 Insider Preview
    Build 14361"](https://blogs.windows.com/windowsexperience/2016/06/08/announcing-windows-10-insider-preview-build-14361/).
    [Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink").
    June 8, 2016<span class="reference-accessdate">. Retrieved
    <span class="nowrap">June 19,</span>
    2016</span>.</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

80. <cite class="citation web">Brown, Taylor (September 29, 2016).
    ["Windows Container on
    Windows 10"](https://docs.microsoft.com/virtualization/windowscontainers/quick-start/quick-start-windows-10).
    *Microsoft Docs*.
    [Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink").</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>

81. <cite class="citation web">Cooley, Sarah; Brown, Taylor (January 5,
    2018). ["Container OS Image
    EULA"](https://docs.microsoft.com/virtualization/windowscontainers/images-eula).
    *Microsoft Docs*.
    [Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink").</cite><templatestyles src="Module:Citation/CS1/styles.css"></templatestyles>