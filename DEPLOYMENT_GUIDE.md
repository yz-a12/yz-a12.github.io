# 🚀 GitHub Pages 部署指南

## 步骤 1：在 GitHub 上创建新仓库

1. 访问 https://github.com/new
2. **仓库名称**建议使用：`USERNAME.github.io`（将 USERNAME 替换为你的 GitHub 用户名）
   - 例如：如果你的 GitHub 用户名是 `fangyz`，则仓库名为 `fangyz.github.io`
   - 使用这个格式，你的网站将自动部署到 `https://fangyz.github.io`
3. **可见性**：选择 **Public**（GitHub Pages 免费版需要公开仓库）
4. **不要**勾选 "Initialize this repository with a README"
5. 点击 **Create repository**

## 步骤 2：更新本地仓库的远程地址

在终端中运行以下命令（将 `USERNAME` 替换为你的 GitHub 用户名）：

```bash
cd /mnt/fangyz/Project/acad-homepage.github.io

# 删除旧的 remote
git remote remove origin

# 添加你的新 remote（替换 USERNAME）
git remote add origin https://github.com/USERNAME/USERNAME.github.io.git

# 验证 remote 是否正确
git remote -v
```

## 步骤 3：推送代码到 GitHub

```bash
# 推送代码到 GitHub
git push -u origin main
```

如果提示需要身份验证：
- 用户名：你的 GitHub 用户名
- 密码：使用 **Personal Access Token**（不是密码）
  - 创建 Token：https://github.com/settings/tokens
  - 选择 `repo` 权限
  - 复制生成的 token 并粘贴

## 步骤 4：启用 GitHub Pages

1. 进入你的 GitHub 仓库页面
2. 点击 **Settings**
3. 在左侧菜单找到 **Pages**
4. 在 **Source** 下：
   - Branch: 选择 `main`
   - Folder: 选择 `/ (root)`
5. 点击 **Save**

## 步骤 5：等待部署完成

- GitHub 会自动构建你的网站（可能需要 1-3 分钟）
- 刷新页面，你会看到一个绿色的提示：
  ```
  Your site is live at https://USERNAME.github.io/
  ```
- 点击链接就能看到你的个人主页了！

## 步骤 6：配置 Google Scholar（可选）

如果你有 Google Scholar 个人页面：

1. 找到你的 Google Scholar ID：
   - 访问你的 Google Scholar 个人页面
   - URL 格式：`https://scholar.google.com/citations?user=SCHOLAR_ID`
   - 复制 `SCHOLAR_ID` 部分

2. 在 GitHub 仓库中设置：
   - Settings → Secrets and variables → Actions
   - 点击 **New repository secret**
   - Name: `GOOGLE_SCHOLAR_ID`
   - Value: 你的 Scholar ID
   - 点击 **Add secret**

3. 在 `_config.yml` 中更新：
   ```yaml
   googlescholar: "https://scholar.google.com/citations?user=YOUR_SCHOLAR_ID"
   ```

## 🎨 后续更新网站

每次修改后：

```bash
cd /mnt/fangyz/Project/acad-homepage.github.io

# 添加更改
git add .

# 提交更改
git commit -m "描述你的更改"

# 推送到 GitHub
git push origin main
```

GitHub Pages 会自动重新部署你的网站（1-3 分钟）。

## 📝 更新 _config.yml 中的 repository

别忘了在 `_config.yml` 文件中更新 repository 字段：

```yaml
repository: "USERNAME/USERNAME.github.io"
```

这样 Google Scholar 统计功能才能正常工作。

## 🆘 常见问题

### 网站显示 404
- 确保仓库是 Public
- 等待 3-5 分钟让 GitHub Pages 完成部署
- 检查 Settings → Pages 是否已启用

### 推送失败（403 错误）
- 使用 Personal Access Token 而不是密码
- 确保 Token 有 `repo` 权限

### 样式或图片不显示
- 检查 `_config.yml` 中的 `repository` 字段是否正确
- 使用相对路径而不是绝对路径

---

✨ 现在就去创建你的 GitHub 仓库，然后部署你的个人主页吧！
