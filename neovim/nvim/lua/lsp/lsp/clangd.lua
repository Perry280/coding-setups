require("lspconfig").clangd.setup({
    settings = {
        clangd = {
            capabilities = require("cmp_nvim_lsp").default_capabilities()
        }
    }
})
