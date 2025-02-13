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

vim.opt.ignorecase = true
vim.opt.termguicolors = true

vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<leader>q', ':bp<bar>sp<bar>bn<bar>bd<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>]', ':bn<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>[', ':bp<CR>', { noremap = true, silent = true })

vim.api.nvim_create_autocmd("FileType", {
	pattern = "yaml",
	command = "setlocal shiftwidth=2 tabstop=2"
})

-- go formatting
local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    require('go.format').gofmt()
  end,
  group = format_sync_grp,
})

-- python formatting
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.softtabstop = 4
    vim.bo.expandtab = true
  end,
})

