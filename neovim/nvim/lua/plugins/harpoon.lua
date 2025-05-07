return {
    'ThePrimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require("harpoon").setup({
            global_settings = {
                -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
                save_on_toggle = false,

                -- saves the harpoon file upon every change. disabling is unrecommended.
                save_on_change = true,

                -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
                enter_on_sendcmd = false,

                -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
                tmux_autoclose_windows = false,

                -- filetypes that you want to prevent from adding to the harpoon list menu.
                excluded_filetypes = { "harpoon" },

                -- set marks specific to each git branch inside git repository
                mark_branch = false,

                -- enable tabline with harpoon marks
                tabline = false,
                tabline_prefix = "   ",
                tabline_suffix = "   ",
            }
        })

        local harpoon_mark = require("harpoon.mark")
        local harpoon_ui   = require("harpoon.ui")

        -- Add files to Harpoon
        vim.keymap.set("n", "<leader>a", harpoon_mark.add_file)

        -- Toggle Harpoon menu
        vim.keymap.set("n", "<leader>o", harpoon_ui.toggle_quick_menu)

        -- Navigate between files with Ctrl-h/j/k/l
        vim.keymap.set("n", "<C-h>", function() harpoon_ui.nav_file(1) end)
        vim.keymap.set("n", "<C-j>", function() harpoon_ui.nav_file(2) end)
        vim.keymap.set("n", "<C-k>", function() harpoon_ui.nav_file(3) end)
        vim.keymap.set("n", "<C-l>", function() harpoon_ui.nav_file(4) end)

        vim.keymap.set("n", "<A-n>", function() harpoon_ui.nav_next() end)
        vim.keymap.set("n", "<A-p>", function() harpoon_ui.nav_prev() end)

        require("telescope").load_extension("harpoon")
    end,
}
