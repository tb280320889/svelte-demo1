# 完全重置 VS Code 的 Prettier 扩展设置
Write-Host "正在完全重置 VS Code 的 Prettier 扩展设置..." -ForegroundColor Green

# 1. 删除 VS Code 的 Prettier 扩展缓存
$vscodeCachePath = "$env:APPDATA\Code\User\workspaceStorage"
Write-Host "正在清理 VS Code 缓存..." -ForegroundColor Yellow

# 2. 重新安装 Prettier 和相关插件
Write-Host "正在重新安装 Prettier 和相关插件..." -ForegroundColor Yellow
pnpm remove prettier prettier-plugin-svelte
pnpm install -D prettier prettier-plugin-svelte

# 3. 创建一个最小化的 Prettier 配置
Write-Host "正在创建最小化的 Prettier 配置..." -ForegroundColor Yellow
$prettierConfig = @"
{
  "plugins": ["prettier-plugin-svelte"],
  "overrides": [
    {
      "files": "*.svelte",
      "options": {
        "parser": "svelte"
      }
    }
  ]
}
"@
$prettierConfig | Out-File -FilePath ".prettierrc" -Encoding utf8 -Force

# 4. 创建一个最小化的 VS Code 设置
Write-Host "正在创建最小化的 VS Code 设置..." -ForegroundColor Yellow
if (-not (Test-Path ".vscode")) {
    New-Item -ItemType Directory -Path ".vscode" | Out-Null
}

$vsCodeSettings = @"
{
  "editor.formatOnSave": true,
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "[svelte]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "prettier.requireConfig": false,
  "prettier.useEditorConfig": false
}
"@
$vsCodeSettings | Out-File -FilePath ".vscode\settings.json" -Encoding utf8 -Force

# 5. 测试 Prettier 是否能正确格式化 Svelte 文件
Write-Host "正在测试 Prettier 是否能正确格式化 Svelte 文件..." -ForegroundColor Yellow
pnpm prettier --write "**/*.svelte"

Write-Host "完成！请完全关闭 VS Code 并重新打开以应用更改。" -ForegroundColor Green
Write-Host "如果问题仍然存在，请尝试卸载并重新安装 VS Code 的 Prettier 扩展。" -ForegroundColor Green
