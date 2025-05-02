require("lspconfig").bashls.setup({
    settings = {
        bash_ls = {
            capabilities = require("cmp_nvim_lsp").default_capabilities()
        }
    }
})
