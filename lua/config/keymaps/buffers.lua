vim.api.nvim_set_keymap("n", "<leader>bp", ":b#<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bc", ":bprevious | bdelete #<CR>", { noremap = true, silent = true })
