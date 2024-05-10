#!/usr/bin/env sh

set -x  # 这里是为了看错误日志

# 打包项目
npm run build

# 进入打包后的文件夹
cd dist

# 初始化一个 Git 仓库，如果在 dist 目录中还没有 Git 仓库的话。
git init
# 添加所有更改过的文件到暂存区。
git add -A
# 提交暂存区的所有更改，并附上一个提交信息。
git commit -m '🚀自动部署'

# 将当前分支强制推送到 GitHub 上的指定分支。
# -f 选项表示强制推送，它会覆盖远程分支上的任何更改。
# 这里的 master:sh-pages 表示将本地的 master 分支推送到远程的 sh-pages 分支。
git push -f https://github.com/Ele-Cat/test-sh-pages.git master:sh-pages