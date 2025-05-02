require("lspconfig").pyright.setup({
    settings = {
        pyright = {
            capabilities = require("cmp_nvim_lsp").default_capabilities()
        }
    }
})
