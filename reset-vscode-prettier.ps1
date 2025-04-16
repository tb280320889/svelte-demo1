# 重置 VS Code 的 Prettier 扩展
Write-Host "正在重置 VS Code 的 Prettier 扩展..." -ForegroundColor Green

# 1. 卸载 Prettier 扩展
Write-Host "正在卸载 Prettier 扩展..." -ForegroundColor Yellow
code --uninstall-extension esbenp.prettier-vscode

# 2. 重新安装 Prettier 扩展
Write-Host "正在重新安装 Prettier 扩展..." -ForegroundColor Yellow
code --install-extension esbenp.prettier-vscode

# 3. 重新安装 Prettier 和相关插件
Write-Host "正在重新安装 Prettier 和相关插件..." -ForegroundColor Yellow
pnpm remove prettier prettier-plugin-svelte
pnpm install -D prettier prettier-plugin-svelte

Write-Host "完成！请完全关闭 VS Code 并重新打开以应用更改。" -ForegroundColor Green
