# Auto-Commit Repo
auto-commit.sh的内容如下

```shell
#!/bin/bash

# 进入你的 Git 仓库目录
cd /home/ubuntu/auto-commit

# 修改一个文件（例如：更新日志中的日期）
echo "[Auto Commit] $(date)" >> auto-commit.log

# Git 操作
git add .
git commit -m "Auto Commit: $(date)"
git push origin main  # 如果是 master 分支，替换为 master
```
然后使用crontab设置每天自动运行脚本
```shell
crontab -e
```

```shell
0 1 * * * /bin/bash /home/ubuntu/auto-commit/auto-commit.sh
0 2 * * * /bin/bash /home/ubuntu/auto-commit/auto-commit.sh
```
表示每天1点和2点会运行

