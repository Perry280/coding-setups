vim.diagnostic.config({
    virtual_text = { current_line = true },
    float = true,
    update_in_insert = true,
})

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)

        if client ~= nil and client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, args.buf, {autotrigger = true})
        end
    end,
})

vim.lsp.enable({
    "luals",
    "clangd"
})
