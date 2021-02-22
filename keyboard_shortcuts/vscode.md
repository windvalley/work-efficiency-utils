# VSCode

`https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf`

## 通用

```text
command shift p: dispaly lan -> enter -> zh-cn -> enter, 切换为中文环境
command k command t: 主题配置
command k command s: 快捷键配置
command k command m: keymap
command shift n: 新打开一个vscode窗口
 command shift w: 关闭某个vscode窗口
command q: 关闭整个vscode程序, 即同时关闭所有vscode窗口
 command b: 隐藏/显示侧边栏
command o: 弹出文件打开对话框, 然后方向键选择新项目目录打开

ctrl down: 显示所有打开的vscode窗口
ctrl r: 需要先command shift e进入到资源管理器, 然后再ctrl r打开历史的项目列表,
        通过方向键选择项目, enter打开, tab键定焦到删除图标, 然后enter从历史项目列表中删除.
 ctrl w: 需要先command shift e进入到资源管理器, 然后再ctrl w打开最近的项目列表,
        输入关键字切换vscode的其他窗口

f5 : 以调试模式运行
ctrl f5: 以非调试模式运行
```

## 活动栏

```text
command shift e
command shift f
 ctrl shift g
command shift d
command shift x
```

## 面板

```text
command j: 显示/隐藏面板
ctrl `: 显示终端面板
command shift y: 显示调试面板
command shift u: 显示输出面板
command shift m: 显示问题面板
```

## 资源管理器

```text
command shift e
j
k
l : 打开文件(文件名斜体), 这时如果不对该文件做编辑, 继续打开其他文件的话会覆盖掉当前这个文件;
    如果打开文件后, 开始对该文件进行编辑(文件名由斜体变为正体),
    则再打开其他文件则不会覆盖掉当前文件;
    快捷键command k enter同样可以固定新打开的这个文件.

 ctrl tab: 如果只按一次就是切换到上一个标签, 否则就是在列表中顺序选择.
ctrl shift tab: 相反顺序选择标签
 command 1/2/3...

command p: 输入关键字选择文件打开
command k d: 当前文件编辑后尚未保存, 比较和上一次保存时的文件内容的区别
command k c: 比较当前文件与剪贴板的区别
command w: 使用上2个命令查看完后, 使用此命令关闭比较
```

## 编辑器(vim插件)

- 任何模式下

```text
command /: 单行注释
 shift option a: 多行注释
command w: 关闭文件
 command shift t: 重新打开刚刚关闭的文件
command k enter: 把预览模式的文件(新打开的文件默认是该模式, 文件名是斜体),
                 保持为为打开状态(文件名变为正体, 不会被将来新打开的文件覆盖)
command n: 创建新文件
command s: 保存新创建的文件, 输入文件名保存
```

- NORMAL模式下

```text
 command d/gd: 跳转到光标所在函数的定义位置;
 command i: 快速查看函数定义, 而不是直接跳转到函数的所在文件;
 command u: 函数定义的预览悬停;
 command y/t: 转到下一个/上一个问题(错误、警告、信息)
> 注意: command d/i/u/y/t这几个快捷键是我在vscode上自定义的,
> 通过command k command s跳转到快捷键设置页,
> 搜索"定义"和"转到"即可找到相关设置项, 进行替代即可.
```
