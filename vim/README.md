# Description

简单方式武装你的`VIM`, 提高编码效率.

`vimrc`中每一行设置都做了详细注释, 让你理解`.vimrc`中每一行设置的意义,
定制你自己的`.vimrc`, 更加自如的使用`VIM`特性.


# Notice

* `VIM`版本需要在`8.0`以上, 通过`vim --version`查看.
* 为了支持Python3和复制粘贴的便利, 需要VIM支持python3和clipboard, 可通过
  `vim --version|grep -Eo '\+python3|\+clipboard'`查看是否有相关输出,
  如果没有需要重新编译安装.
* `vimrc`默认集成了Go开发插件`vim-go`, 需要系统已经有Go环境(需配置GOPATH),
  并配置Go代理解决墙的问题. 如果没有此需求, 也可以提前注释掉Go相关的配置.
  配置Go代理方法: `echo 'export GOPROXY=https://goproxy.cn' >> ~/.zshrc`
* `Valloric/YouCompleteMe`插件依赖的项目非常多, 安装过程很慢,
  如果确定不需要此插件, 可以提前注释掉以节省安装时间.
* MacOS和Linux类系统可正常使用, Windows系统未测试兼容性.

# Install

## Auto install
`curl |bash`

> 注意:
一键安装会完整方式安装, 检查你的系统环境, 如果没有注意事项中的提到的环境问题,
可尝试使用此方式快速安装, 否则建议通过下面的手动安装步骤进行安装.

## Manual install

1. 备份原有的`~/.vimrc`和`~/.vim/`等相关文件和目录
```bash
cp ~/.vimrc ~/.vimrc.$(date +%F_%T)
mv ~/.vim ~/.vim.$(date +%F_%T)
```

2. 替换你的当前`~/.vimrc`文件

`cp vimrc ~/.vimrc` 或 `cat vimrc > ~/.vimrc`

3. 安装用于管理`VIM`插件的插件`vim-plug`
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

4. 安装配置的`VIM`插件
```bash
vim +PlugInstall +qa
```

5. 配置代码自动补全提示插件`YCM`
```bash
cd .vim/plugged/YouCompleteMe/
python3 install.py --go-completer
```

6. `crontab -e`报错问题解决(如果没有该错误, 忽略该步骤即可)
```bash
echo 'export EDITOR=vim' >> ~/.zshrc
source ~/.zshrc
```
