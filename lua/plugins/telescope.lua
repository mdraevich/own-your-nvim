return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		{
			"nvim-telescope/telescope-live-grep-args.nvim",
			-- This will not install any breaking changes.
			-- For major updates, this must be adjusted manually.
			version = "^1.0.0",
		},
		"nvim-lua/plenary.nvim",
		"ThePrimeagen/git-worktree.nvim",
        "rcarriga/nvim-notify",
	},
	config = function()
		local telescope = require("telescope")

		-- first setup telescope
		telescope.setup({
			-- your config
		})

		-- then load the extension
		telescope.load_extension("live_grep_args")
		telescope.load_extension("git_worktree")
		telescope.load_extension("notify")
	end,
}
