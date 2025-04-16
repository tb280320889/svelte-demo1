// 自定义的 commitlint 配置，允许使用 emoji
export default {
	extends: ["@commitlint/config-conventional"],
	rules: {
		// 允许在提交信息中使用 emoji
		"subject-case": [0, "always"],
		"subject-empty": [0, "never"],
		"type-empty": [0, "never"],
		"subject-full-stop": [0, "never"],
		"header-max-length": [0, "always", 100],
		// 定义允许的提交类型
		"type-enum": [
			2,
			"always",
			[
				"feat", // 新功能
				"fix", // 修复bug
				"docs", // 文档变更
				"style", // 代码格式
				"refactor", // 重构
				"perf", // 性能优化
				"test", // 测试
				"chore", // 构建过程或辅助工具的变动
				"revert", // 回退
				"build", // 打包
				"ci" // CI相关变更
			]
		],
		// 自定义正则表达式，允许在提交信息中使用 emoji
		"body-leading-blank": [1, "always"],
		"footer-leading-blank": [1, "always"]
	}
}
