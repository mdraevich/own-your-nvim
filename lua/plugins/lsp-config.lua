return {
	"mason-org/mason-lspconfig.nvim",
	opts = {},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
        {
            "neovim/nvim-lspconfig", 
            config = function()
                require("lspconfig").lua_ls.setup({})
                require("lspconfig").jdtls.setup({})
            end,
        },
	},
}
