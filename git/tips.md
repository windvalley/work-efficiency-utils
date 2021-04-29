# git tips

```text
工作区(working dir)  ->  版本库(.git/)
                            V
        暂存区(stage), 分支(master/dev...), 指向当前分支的指针(HEAD)
```

## 1. 撤销`commit`的几种常见操作

```bash
# 不删除工作区的代码改动, 不清除暂存区的内容
git reset --soft HEAD^

# 不删除工作区的代码改动, 清除暂存区的内容(也就是保持和HEAD一样)
git reset HEAD^

# 删除工作区的代码改动, 清除暂存区的内容
git reset --hard HEAD^
```

## 2. 撤销暂存区的内容(一般在`git add`之后, `git commit`之前的场景)

```bash
# 工作区的代码变动保持不变, 清空暂存区的所有内容
git reset HEAD

# 工作区的代码变动保持不变, 删除暂存区的指定文件
git reset HEAD file1 file2

# 删除掉工作区的代码变动, 清空暂存区的所有内容
git reset --hard HEAD
```

总结:

- `git reset`命令中包含`--soft`, 表示对工作区和暂存区的改动都保持不变, 只变动`HEAD`指向
- `git reset`命令中包含`--hard`, 表示对工作区和暂存区都恢复成`HEAD`指向的最新版本
- `git reset`命令中即没有`--soft`也没有`--hard`, 表示只恢复暂存区到成`HEAD`指向的最新版本

## 3. 撤销工作区的代码变动

```bash
# 如果暂存区中有相关文件, 则恢复为暂存区中的状态, 如果没有则恢复成和HEAD一样
git checkout -- file1 file2
git checkout -- *
```

## 4. `git push`超过 100M 的文件

```bash
brew install git-lfs

git lfs track "*.zip"
git add .gitattributes
git add file.zip

git commit -m "Add big file"
git push
```

## 5. 修改远程仓库`commit`的作者信息

```bash
# commit后, 发现commit使用的用户名和邮箱地址不是我们想要的, 先进行如下修改
git config --global --edit

# 然后修改远程仓库的最近一次commit的用户和邮箱地址信息
git commit --amend --reset-author
```

## 6. 修改远程仓库的最新`commit`信息

```bash
# git push推送到远程仓库后, 想修改commit信息
git commit --amend
git push -f
```

## 7. 本地分支开发完成后(可能包含多个`commits`)合并到本地`master`, 建议使用`rebase`而不是`merge`

```bash
git checkout -b fix-bug-xxx
git add .
git commit -m""

git checkout master
git rebase fix-bug-xxx
git push
```

## 8. git status -sb
