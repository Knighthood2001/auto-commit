#!/bin/bash

# 进入你的 Git 仓库目录
cd /home/ubuntu/auto-commit

# 修改一个文件（例如：更新日志中的日期）
echo "[Auto Commit] $(date)" >> auto-commit.log

# Git 操作
git add .
git commit -m "Auto Commit: $(date)"
git push origin main  # 如果是 master 分支，替换为 master
