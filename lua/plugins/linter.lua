return {
	"mfussenegger/nvim-lint",
	dependencies = {},
	config = function()
		require("lint").linters_by_ft = {
			-- markdown = { "markdownlint", "vale", "proselint" },
			yaml = { "yamllint" }, -- add 'kubeval' for k8s manifests
			terraform = { "tflint" },
			-- go = { "golangcilint" },
			python = { "flake8" },
			sh = { "shellcheck" }, -- bash/sh/zsh
			bash = { "shellcheck" }, -- alternative for explicit bash filetypes
		}
	end,
    enabled = false
}
