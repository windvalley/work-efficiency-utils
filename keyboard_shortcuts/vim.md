# VIM

此页不再更新, 新的内容会更新到[vimrc](../vim/vimrc) 文件尾部.

```text
/usr/share/vim/vim81/tutor/tutor.zh_cn.utf-8
vim -u NONE: 无插件方式运行VIM
vim -g/mvim/gvim: macOS下运行vim的图形界面模式, 需先安装macvim
vim -V9myVIM.log: 将vim运行的详细日志保存到myVIM.log文件中
vim --startuptime vim.log: 记录带时间的启动日志
vimtutor: vim自带的教程
vim -c 'normal 5G36|': 来执行跳转到第5行第36列
vimdiff file1 file2 file3...
```

## NORMAL 模式下

```text
编辑光标之后的行内容:
    Y: 复制
    D: 删除
    C: 替换, 删除从光标到句尾的内容并进入到插入模式
S/cc: 替换整行, 也就是删除整行并进入插入模式
s/cl: 删除一个字符并进入插入模式
x: 删除一个字符, 但还是保持在正常模式
r: 替换当前光标所在字符
R: 进入替换模式, 每次按键替换一个字符, 直到esc键退出替换模式

u: 撤销最近的一次修改动作
U: 撤销当前所在行的所有修改
ctrl r: 恢复撤销的内容

文本对象编辑:
   dw/diw/daw/d3w/dW: diw和daw的区别是daw会删除挨着单词的空格
    di"/(/{/[/': 删除""或()或{}等之间的所有字符, 不包括它们本身
    da"/(/{/': 删除""或()或{}等之间的所有字符, 也包括它们本身
    cw/ciw/c3w/cW: 替换, 也就是删除文本对象并进入到插入模式
    c2i(: 删除两层()内的内容, 只留下一对(), 并进入插入模式
    yw/yiw/y3w/yW/yi{/ya{/y3i{: 复制文本对象
    vw/viw/v3iw/vW/vi{/va{/v3i{: 选择文本对象
   yb/yB
    db/dB
    cb/cB
> 以上w和W的区别是, W是以空格为分隔作为文本对象的;
> w和b的区别是, 一个向前一个向后;
> 以上ycd后均可加数字, 表示对多个或多层文本对象进行操作.

 宏:
    qa
    对具体某一行的操作样例
    q
    v/ctrl v/shift v 选择文本
    :normal @a

surround插件:
    ysiw "/'/{...
     ysiW "/'/{...: 以空格为分界来认定单词
    yss (/{/[...
    ds "/'/(...
    cs "'
    cst ": 将类似<div>hello world</div>变为"hello world"
重复执行:
    .: 重复执行最近一次的修改动作
    ;/,: 正向/反向重复执行最近f/t的操作
    n/N: 正向/反向重复执行最近的/或?的查找操作

光标移动:
    hjkl: 左下上右, 可前置数字
    0/^: 光标跳转到行首
    $: 光标移动到行尾
    w/b: 向右和向左以单词为单位移动光标, 可前置数字
    W/B: 同上, 不过是以空格作为单词的分隔符
    f{char}/F{char}配合;: 向右或向做移动到某个字符处, ;用来重复此动作
    (/): 移动到上一句/下一句
    {/}: 移动到上一段落/下一段落
    ctrl f/b: 向下/向上翻整页
    ctrl d/u: 向下/向上翻半页
    ,,w: 光标快速调转到目标位置
    /或?: 向下或向上搜索关键字, 配合n
    Ngg/NG: 至第N行
    N%: 至百分之N行处
    N|: 至第N列
    M: 光标移动到当前屏幕的中间行
    *: 向后查找光标下的字符
    #: 向前查找光标下的字符
     ctrl o: 将光标跳转到之前的位置
     ctrl i: 将光标跳转到之后的位置

屏幕移动:
     ctrl e/y: 只上下移动屏幕, 而不移动光标
    zt/zz/zb: 把光标所在行放置到屏幕的顶部、中间、底部

其他:
    ctrl g: 显示光标所在行的所在文件的全路径, 当前文件一共多少行,
            当前行是当前文件的百分之多少位置.
    iIaAoO: 进入插入模式
```

## INSERT 模式下

```text
光标移动:
    ctrl p/n/b/f: 上/下/左/右
     ctrl a/e: 行首/行尾
文本编辑:
    ctrl h/w/u: 向左删除一个字符/一个单词/整行
     ctrl o: 临时进入normal模式下, 执行完一条normal命令后就自动返回insert模式
     ctrl i: 同tab
```

## VISUAL 模式下

```text
v: visual模式
ctrl v: visual block 模式
shift v: visual line 模式
o: 光标跳转到选择范围的开头和结尾
```

## 命令行模式下

```text
help: 打开一个帮助文档窗口
x: 保存并退出, 和wq一个意思.
!: 执行系统命令
多窗口:
    split/sp: 水平分割窗口
    vert sp/vs: 竖直分割窗口
    q: 关闭分割的窗口
    ctrl w w/h/l/j/k: 光标在多个窗口之间移动
```

## 插件提供的功能

```text
NERDTree:
    ,w: 打开/关闭左侧目录树窗口
     q: 关闭目录树窗口
        ?: 打开/关闭该插件的帮助文档
        o/O: 展开目录/递归的展开目录, 原地再按一次则对应关闭目录
        x/X: 闭合目录/闭合递归展开的目录, 进行此操作时, 光标应该在要闭合的目录中
        t/T: 以标签页形式打开/静默打开文件,
             如果光标在空目录上则新创建一个空文件并打开,
             然后使用:w newfilename 来保存文件,
             最后R来更新左侧目录树的显示.
        gt/gT: 向右/向左切换标签页
        3gt: 切换到第3个标签, 切换到其他标签的方法类似.
        shift l/h: 向右/向左切换标签页, 是在.vimrc中配置的上一条快捷键的映射
        3 shift l: 切换到第3个标签
        R: 变更目录名称后, 更新目录树中的目录显示
        CD: 如果当前目录树的根目录包含了很多项目, 如果要将某个项目设置为目录树的根, 则选择这个项目目录, 按`CD`
        go: 选择一个文件, 按`go`, 只是在当前窗口展示这个文件的内容, 光标还停留在目录树窗口
        I: 显示/隐藏以 . 开头的文件
        m: 光标移动到某个文件或目录, 按`m`, 展示可操作的menu列表, 选择你要的操作, 比如删除/添加/移动文件或目录等, 使用esc中途退出操作

tagbar:
    ,e: 打开/关闭右侧大纲窗口

ctrlp.vim:
    ctrl p: 搜索关键字打开或跳转到文件, 如果该文件已经是打开的状态则直接跳转到该标签页
    ctrl k/j: 光标向上/向下移动选择要打开的文件
    ctrl t: 在新标签页中打开选中的文件
    enter: 覆盖当前标签页的方式打开选中的文件

ctrl ww: 光标在多个窗口间移动
```

## 编程语言相关

```text
通用:
    K: 查看光标所在模块或函数的帮助文档
    gd: 跳转到光标所在函数的定义位置, `ctrl o`跳转回来, `ctrl i`再跳转过去, YCM提供的功能.
    gr: 跳转到引用光标所在函数的位置, 同样`ctrl o/i`来回跳转.
    ,D: 使光标所在的对象显示对应的文档
    ctrl l: 语义补全, 输入字符后, 按`ctrl l`将提示可用的补全, 然后tab选择即可,
            是YCM提供的能力, 默认是`ctrl space`, 这里在 .vimrc 中更改了快捷键.
            注意.vimrc中也同时配置了输入1个字符就自动弹出语义补全提示.

    gf: 直接跳转到光标所在的文件名所对应的文件中
    ctrl w f: 水平分屏展示光标所在的文件名所对应的文件
    ctrl k/j: 向上或向下跳转到下一个错误提示的位置

Go:
    gd: 默认以覆盖当前页面的方式跳转到函数定义处, vim-go 插件默认行为, 无需配置.
    ds: 上下分屏跳转到函数定义处
    dv: 左右分屏跳转到函数定义处
    dt: 新开一个标签页的方式跳转到函数定义处
    ,i: 查看光标所在函数等的简要信息, 在底部状态栏显示
    ,d/K: 上下分屏查看光标所在函数等的文档, K 比`,d`速度更快
    ,dv: 左右分屏查看光标所在函数等的文档
    ,b: 检查当前文件是否可以成功build, 注意并不会真的生成二进制文件
    ,r: 运行当前Go脚本
    ,t: go test 测试当前的Go文件
    ,c: 当前文件代码测试覆盖率查看
    ,s: 查看光标所在的类型实现了哪些接口, 注意光标只能在类型或类型的方法上
    ,f: 查看哪些地方调用了光标所在的函数

Python:
    ,r: 运行当前Python脚本
    ,b: 添加或删除断点, 添加完成后需要在命令行来执行该Python脚本进行断点测试, 不能使用`,r`来运行
```
