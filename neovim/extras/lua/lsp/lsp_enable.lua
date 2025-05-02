return function(servers)
    for _, server in ipairs(servers) do
        require("lsp.lsp." .. server)
    end
end
