return function(servers)
    local full_path = vim.fn.stdpath("config") .. "/lua/lsp/lsp"

    for _, server in ipairs(servers) do
        require("lsp.lsp." .. server)
    end
end
