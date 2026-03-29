#!/bin/bash

echo "========================================="
echo "GitHub Pages 部署脚本"
echo "========================================="
echo ""

cd /mnt/fangyz/Project/acad-homepage.github.io

# 删除旧的 remote
echo "1. 移除旧的 remote..."
git remote remove origin 2>/dev/null || true

# 添加新的 remote
echo "2. 添加新的 remote..."
git remote add origin https://github.com/yz-a12/yz-a12.github.io.git

# 验证 remote
echo "3. 验证 remote 配置..."
git remote -v

echo ""
echo "========================================="
echo "✓ Remote 配置完成！"
echo ""
echo "现在运行以下命令推送代码："
echo ""
echo "  git push -u origin main"
echo ""
echo "如果提示需要登录："
echo "  - 用户名: yz-a12"
echo "  - 密码: 使用 Personal Access Token（不是密码）"
echo "    创建 Token: https://github.com/settings/tokens"
echo "    权限选择: repo"
echo ""
echo "推送成功后，去 GitHub 仓库启用 Pages："
echo "  Settings → Pages → Source: main branch"
echo ""
echo "你的网站将发布到："
echo "  👉 https://yz-a12.github.io"
echo "========================================="
