return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        indent = { enabled = true },
        quickfile = { enabled = true },
        scope = { enabled = true },
        -- ---@class snacks.terminal.Config
        -- ---@field win? snacks.win.Config|{}
        -- ---@field shell? string|string[] The shell to use. Defaults to `vim.o.shell`
        -- ---@field override? fun(cmd?: string|string[], opts?: snacks.terminal.Opts) Use this to use a different terminal implementation
        -- terminal = {
        --     enabled = true,
        --     win = { style = "terminal" },
        -- },
    },
    -- keys = {
    --     { "<leader>t", function() Snacks.terminal() end, desc = "Toggle Terminal" },
    -- }
}
