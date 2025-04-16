# 重置 VS Code 的 Prettier 扩展缓存
Write-Host "正在重置 VS Code 的 Prettier 扩展缓存..." -ForegroundColor Green

# 重新安装 Prettier 和相关插件
Write-Host "正在重新安装 Prettier 和相关插件..." -ForegroundColor Yellow
pnpm remove prettier prettier-plugin-svelte
pnpm install -D prettier prettier-plugin-svelte

# 运行 Prettier 格式化所有 Svelte 文件
Write-Host "正在格式化所有 Svelte 文件..." -ForegroundColor Yellow
pnpm prettier --write "**/*.svelte"

Write-Host "完成！请重启 VS Code 以应用更改。" -ForegroundColor Green
