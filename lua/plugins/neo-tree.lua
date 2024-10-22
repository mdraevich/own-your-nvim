return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
        enable_git_status = true,
        window = {
            mappings = {
                ["<space>"] = { "toggle_node", nowait = true },
            },
        },
    },
    config = function(_, opts)
        require('neo-tree').setup(opts)
    end,
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
}

