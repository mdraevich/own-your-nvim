return {
    { 
        "rebelot/kanagawa.nvim",
        config = function()
            vim.cmd("colorscheme kanagawa-wave") 
        end,
        opts = {
            transparent = true
        }
    },
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        }
    }
}


