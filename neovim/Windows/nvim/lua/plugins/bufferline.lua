return{
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    -- optional = true,
    config = function()
        require("bufferline").setup{
            options = {
                mode = "tabs",
                separator_style = "slope",
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "Neo-tree",
                        text_align = "left",
                        separator = "true"
                    }
                },
            },
        }
    end,
    opts = function(_, opts)
        if (vim.g.colors_name or ""):find("catppuccin") then
          opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
        end
    end,
}
