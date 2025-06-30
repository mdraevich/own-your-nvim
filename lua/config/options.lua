vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 999

vim.opt.virtualedit = "block"
vim.opt.inccommand = "split"

vim.opt.fileignorecase = false
vim.opt.ignorecase = true
vim.opt.termguicolors = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- diff commands
vim.api.nvim_set_keymap("n", "<leader>dg", ":DiffviewOpen<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>dt", ":diffthis<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>do", ":diffoff!<CR>", { noremap = true, silent = true })

-- linter
-- vim.api.nvim_set_keymap("n", "<leader>ld", ":lua vim.diagnostic.hide()<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<leader>le", function()
-- 	require("lint").try_lint()
-- end, { desc = "Lint current buffer" })

-- formatter
-- vim.api.nvim_create_autocmd("BufWritePre", {
-- 	pattern = "*",
-- 	callback = function(args)
-- 		require("conform").format({ bufnr = args.buf })
-- 	end,
-- })
