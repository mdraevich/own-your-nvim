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

-- Previous buffer
vim.api.nvim_set_keymap('n', '<leader>bp', ':b#<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bc', ':bprevious | bdelete #<CR>', { noremap = true, silent = true })

-- telescope commands
vim.api.nvim_set_keymap("n", "<leader>fb", ":Telescope buffers<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fs", ":Telescope git_status<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>nr", ":Neotree reveal<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>nf', function()
  local filename = vim.fn.expand('%:t')
  vim.fn.setreg('*', filename)  -- or '+' depending on system
end, { desc = 'Copy filename to system clipboard' })

-- diff commands
vim.api.nvim_set_keymap("n", "<leader>dg", ":DiffviewOpen<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>dt", ":diffthis<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>do", ":diffoff!<CR>", { noremap = true, silent = true })

-- tabs
vim.api.nvim_set_keymap("n", "<leader>tn", ":tabNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tp", ":tabnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tc", ":tabclose<CR>", { noremap = true, silent = true })

-- linter
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})

-- formatter
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
