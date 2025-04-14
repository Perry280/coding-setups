return {
    "neovim/nvim-lspconfig",
    dependecies = {
        {
            "folke/lazydev.nvim",
            ft = "lua",
            opts = { library = { { path = "${3rd}/luv/library", words = { "vim%.uv" } }, }, },
        },
    },
    config = function()
        require("lsp.lspinit")

        require("lsp.lsp_enable")({
            "lua_ls",
            -- "clangd",
            "pyright"
        })
    end
}
