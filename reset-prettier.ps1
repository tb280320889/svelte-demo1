# 重置 VS Code 的 Prettier 扩展设置
Write-Host "正在重置 VS Code 的 Prettier 扩展设置..."

# 确保 Prettier 和 Svelte 插件已正确安装
pnpm install -D prettier prettier-plugin-svelte

# 运行 Prettier 格式化所有 Svelte 文件
Write-Host "正在格式化所有 Svelte 文件..."
pnpm prettier --write "**/*.svelte"

Write-Host "完成！请重启 VS Code 以应用更改。"
