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
    },
    {
        'xiyaowong/transparent.nvim',
        opts = {
            groups = {
                'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
                'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
                'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
                'SignColumn', 'StatusLine', 'StatusLineNC',
                'EndOfBuffer',
            }
        }
    },
}



