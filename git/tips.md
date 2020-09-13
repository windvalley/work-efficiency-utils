# git tips

```
工作区(working dir)  ->  版本库(.git/)
                            V
        暂存区(stage), 分支(master), 指向分支的指针(HEAD)
```

## 1. 撤销`commit`的几种常见操作

```
# 不删除工作区的代码改动, 不清除暂存区的内容
git reset --soft HEAD^

# 不删除工作区的代码改动, 清除暂存区的内容
git reset HEAD^

# 删除工作区的代码改动, 清除暂存区的内容
git reset --hard HEAD^
```

## 2. 撤销暂存区的内容(一般在`git add`之后, `git commit`之前的场景)

```
# 工作区的代码变动保持不变, 清空暂存区的所有内容
git reset HEAD

# 工作区的代码变动保持不变, 删除暂存区的指定文件
git reset HEAD file1 file2

# 删除掉工作区的代码变动, 清空暂存区的所有内容
git reset --hard HEAD
```

## 3. 撤销工作区的代码变动

```
# 如果暂存区中有相关文件, 则恢复为暂存区中的状态, 如果没有则恢复成和HEAD一样
git checkout -- file1 file2
git checkout -- *
```

## 4. `git push`超过100M的文件

```
brew install git-lfs
git lfs track "*.zip"
git add .gitattributes
git add file.zip
git commit -m "Add big file"
git push
```
