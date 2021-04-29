# Linux commandline(zsh)

```text
光标移动:
    ctrl f/b/p/n: emacs键位, 右左上下, forward/backward/previous/next
    ctrl a/e: 行首/行尾
    esc b/f: 以单词为单位向左/向右移动
    ctrl xx: 光标在当前位置和行首来回切换.

编辑命令行:
    ctrl h/d: 向左/右删除字符.
    ctrl u: 删除到开头.
    ctrl k: 删除到结尾.
    ctrl w: 向左删除一个单词.
    esc w: 向右删除一个单词.

    ctrl y: 粘贴上一次删除的字符
    ctrl t: 交换光标位置的2个字符.

    ctrl -: 撤销(undo)之前的动作.

    ctrl xe: 复杂命令行的杀手锏, 使用默认编辑器(一般为vim), 编辑当前命令行,
             编辑完成后 :x 保存退出即可, 当前命令行上的文本就变成了 vim 中编辑的样子.

命令补全:
    tab/shift tab: 进行命令补全或命令补全时正向/反向选择补全的内容.
    ctrl f/b/p/n: 命令补全时, 右左上下的灵活的去选择补全的内容.
    enter: 补全的过程中按enter键确认选择的内容.
    ctrl g: 取消当前命令行另起一行, 或在命令补全时取消选择.

目录切换:
    cd -<tab>: cd -然后按tab键, 在出现的可选择列表中(这个列表是曾经去过的历史目录,
               如果是心打开的终端标签页, 按 tab 键也不会出现列表),
               输入要切换到的目录数字或者tab/shift tab/ctrl p/ctrl n进行选择.
    z -l: 列出之前切换过哪些目录
    z -l foo: 列出之前去过的包含foo关键字的路径名称
    z foo: 如果之前去过目录名称含有foo关键字的目录,
           则z foo就可以直接切换到最常去的包含该关键字的目录(按权重).

其他
    ctrl l: 清屏
    ctrl r: 方向搜索历史命令
    ctrl s: 正向搜索历史命令
```
