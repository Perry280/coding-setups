return{
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
                path = { "lua/?.lua", "lua/?/init.lua" }
            },
            workspace = {
                library = vim.tbl_extend(
                    "keep",
                    { vim.env.VIMRUNTIME, "${3rd}/luv/library" },
                    vim.api.nvim_get_runtime_file("", true)
                ),
                checkThirdParty = false,
            },
            diagnostics = { globals = { "vim" } },
            telemetry = { enable = false },
        },
    },
    root_markers = { ".luarc.json", ".luarc.jsonc" },
}
