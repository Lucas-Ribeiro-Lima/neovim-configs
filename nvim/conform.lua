local options = {
	formatters_by_ft = {
		cpp = { "clang-format" },
		c = { "clang-format" },
		lua = { "stylua" },
		css = { "prettier" },
		html = { "prettier" },
		python = { "ruff_fix", "ruff_format" },
	},

	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_fallback = false,
	},
}

return options
