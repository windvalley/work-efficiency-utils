## 说明

宿主机和所有虚拟机之间共享数据的目录.

## init_centos.sh

系统初始化脚本，安装一些必要的包，并且初始化环境.

对于新建的虚拟机, vagrant用户下执行:

```bash
cd /public/init
setdid ./init_centos.sh  # 放到后台进行系统初始化.
```

## 注意事项

如果因为网络原因无法正常挂载到虚拟机，可以先在虚拟机执行init_centos.sh对环境做一些初始化，
再执行vagrant reload重启, 可能就可以了.
