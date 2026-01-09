require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

--Debugger mappings
map("n", "<F5>", "<cmd> DapContinue <CR>", { desc = "DAP Continue" })
map("n", "<F6>", "<cmd> DapStepOver <CR>", { desc = "DAP Step Over" })
map("n", "<F7>", "<cmd> DapStepInto <CR>", { desc = "DAP Step Into" })
map("n", "<F8>", "<cmd> DapStepOut <CR>", { desc = "DAP Step Out" })

map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Add breakpoint at line" })
map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Start or continue the debugger" })

--Cmake mapping
map("n", "<leader>cC", [[:Task start cmake configure<cr>]], { silent = true })
map("n", "<leader>cK", [[:Task start cmake clean<cr>]], { silent = true })
map("n", "<leader>ct", [[:Task start cmake ctest<cr>]], { silent = true })
map("n", "<leader>cr", [[:Task start cmake run<cr>]], { silent = true })
map("n", "<leader>cb", [[:Task start cmake build<cr>]], { silent = true })
map("n", "<leader>cB", [[:Task start cmake build_all<cr>]], { silent = true })
map("n", "<leader>cP", [[:Task start cmake reconfigure<cr>]], { silent = true })
map("n", "<leader>ct", [[:Task set_module_param cmake target<cr>]], { silent = true })
map("n", "<leader><leader>", "<CR>", {})

map("n", "<leader>df", vim.diagnostic.open_float, {
	desc = "Show diagnostic under cursor",
})
