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
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = {"*.tf", "*.tfvars"},
    callback = function()
        -- Save the current cursor position
        local cursor_pos = vim.api.nvim_win_get_cursor(0)
        
        -- Format using terraform
        vim.cmd("%!terraform fmt -")
        
        -- Restore the cursor position
        vim.api.nvim_win_set_cursor(0, cursor_pos)
    end,
})
