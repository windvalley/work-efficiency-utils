# Iterm2

## 优化设置

### ssh 远程连接服务器时, 网络问题出现并修复后可以继续保持 ssh 连接

在 `/etc/ssh/ssh_config` 文件末尾加上 `ServerAliveInterval 60`

## 快捷键

```text
command enter: 全屏/取消全屏

command up/down: 光标在屏幕向上/向下移动
> 以上快捷键即使在 VIM 编辑状态下也能用

command d: 垂直分屏
command shift d: 水平分屏
command w: 关闭分屏

command option 配合触控板: 进行矩形选中

command /: 快速定位光标
command u: 透明/取消透明
command +/-/0: 文字放大/缩小/恢复正常

command f: 查找关键字

command shift i: 打开或关闭多标签页同时执行命令功能
```
