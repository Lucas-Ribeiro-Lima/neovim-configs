require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "clangd", "cmake" }
vim.lsp.enable(servers)
-- read :h vim.lsp.config for changing options of lsp servers 

vim.lsp.config("*", {
  root_markers = { ".git", "CMakeLists.txt" }
})

vim.lsp.config.clangd = {
  cmd = {
    "clangd",
    "--clang-tidy",
    "--background-index",
    "--header-insertion=iwyu",
    "--completion-style=detailed",
  },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
}

vim.lsp.config.cmake = {
  cmd = { "cmake-language-server" },
  filetypes = { "cmake" },
  init_options = {
    buildDirectory = "build"
  }
}
