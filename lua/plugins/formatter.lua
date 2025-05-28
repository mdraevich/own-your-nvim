return {
	"stevearc/conform.nvim",
	dependencies = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				terraform = { "terraform_fmt" },
			},
		})
	end,
}
