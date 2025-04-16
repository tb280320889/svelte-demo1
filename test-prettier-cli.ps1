# 测试 Prettier 的命令行格式化功能
Write-Host "正在测试 Prettier 的命令行格式化功能..." -ForegroundColor Green

# 使用简化版的配置文件格式化测试文件
Write-Host "使用简化版的配置文件格式化测试文件..." -ForegroundColor Yellow
pnpm prettier --config .prettierrc.svelte --write test-prettier-format.svelte

# 检查格式化结果
Write-Host "格式化后的文件内容:" -ForegroundColor Cyan
Get-Content test-prettier-format.svelte

Write-Host "测试完成！" -ForegroundColor Green
