require("nvchad.configs.lspconfig").defaults()

local function on_attach(client, bufnr)
	if not client.server_capabilities.signatureHelpProvider then
		vim.lsp.handlers["textDocument/signatureHelp"] = nil
	end
end

local servers = { "html", "cssls", "clangd", "cmake", "basedpyright", "ts_ls", "tailwindcss" }
vim.lsp.enable(servers)
-- read :h vim.lsp.config for changing options of lsp servers

vim.lsp.config("*", {
	root_markers = { ".git", "CMakeLists.txt" },
	on_attach = on_attach,
})

vim.lsp.config.clangd = {
	cmd = {
		"clangd",
		"--clang-tidy",
		"--background-index",
		"--header-insertion=iwyu",
		"--completion-style=detailed",
		"--function-arg-placeholders=0",
	},
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
}

vim.lsp.config.cmake = {
	cmd = { "cmake-language-server" },
	filetypes = { "cmake" },
	init_options = {
		buildDirectory = "build",
	},
}
