## node1-N、centos8

每个node目录都是一个虚拟机操作目录, 举例：

```bash
cd node1
vagrant up  # 从关闭状态或休眠状态启动虚拟机
vagrant ssh  # ssh连到虚拟机
vagrant status  # 查看虚拟机状态
vagrant port  # 查看宿主机与虚拟机的端口映射情况, 虚拟机需要是运行的状态才能查看
vagrant halt  # 关闭虚拟机
vagrant suspend  # 使虚拟机休眠
vagrant reload  # 修改配置文件后执行此命令重启虚拟机
vagrant resume  # 从休眠状态恢复虚拟机
vagrant validate  # 验证配置文件是否正确
```

每个虚拟机操作目录在虚拟机启动后都会挂载到对应虚拟机的/private目录,
目录中的数据相当于实时双向(宿主机与虚拟机之间)读写同步,
对应Vagrantfile文件中的配置为：
`config.vm.synced_folder ".", "/private"`

虚拟机默认用户名密码为: vagrant/vagrant

## data/

该目录对应每一个Linux虚拟机的/public目录, 放置给所有虚拟机共享的数据文件.

对应Vagrantfile文件中的配置为：

`config.vm.synced_folder "../data", "/public"`

> 说明：
    宿主机磁盘会挂在到虚拟机的/public目录上，
    数据文件相当于是从宿主机到虚拟机双向读写实时同步的,
    更进一步说，所有虚拟机之间都能通过/public目录相互共享数据;
    如果centos镜像默认没有安装GuestAdditions将无法挂载,
    宿主机需要安装vagrant-vbguest插件,
    这样启动虚拟机时将会自动安装.

## box/

该目录存放box镜像文件.

使用举例：

```bash
vagrant box list  # 列出导入的镜像列表
vagrant box add box/CentOS-7-6.box --name centos-7.6  # 导入镜像
vagrant box remove centos-7.6  # 删除之前导入的镜像
vagrant init centos-7.6  # 新建虚拟机目录，在新建目录下执行此命令生成Vagrantfile配置文件.
```

## console/

中控, 批量执行脚本

## 插件安装

### vagrant-vbguest

`vagrant plugin install vagrant-vbguest --plugin-clean-sources --plugin-source https://gems.ruby-china.com`

作用：
如果虚拟机没有安装GuestAdditions客户端， 则在虚拟机启动时自动安装， 实现宿主机目录挂载到虚拟机.

## MacOS本地配置

```bash
cat /etc/hosts
# vms managed by vagrant
192.168.33.11 node1.sre.im
192.168.33.12 node2.sre.im
192.168.33.13 node3.sre.im
192.168.33.14 node4.sre.im
192.168.33.15 node5.sre.im
192.168.33.16 node6.sre.im
```

```bash
cat ~/.ssh/config
Port 22
IdentityFile ~/.ssh/id_rsa
StrictHostKeyChecking no
UserKnownHostsFile=/dev/null
ServerAliveInterval 30

### virtual machines managed by vagrant
Host node1
    User vagrant
    HostName 192.168.33.11

Host node2
    User vagrant
    HostName 192.168.33.12

Host node3
    User vagrant
    HostName 192.168.33.13

Host node4
    User vagrant
    HostName 192.168.33.14

Host node5
    User vagrant
    HostName 192.168.33.15

Host node6
    User vagrant
    HostName 192.168.33.16
### ----------------------------------
```
