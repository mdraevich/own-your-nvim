vim.api.nvim_set_keymap("n", "<leader>nt", ":Neotree toggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>nr", ":Neotree reveal<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>nf", function()
	local filename = vim.fn.expand("%:t")
	vim.fn.setreg("*", filename) -- or '+' depending on system
end, { desc = "Copy filename to system clipboard" })
