-- local root_files = {
--     ".luarc.json",
--     ".luarc.jsonc",
--     -- "init.lua",
--     ".luacheckrc",
--     ".stylua.toml",
--     "stylua.toml",
--     "selene.toml",
--     "selene.yml",
-- }

return {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".luarc.json", ".luarc.jsonc", "init.lua", ".git" },
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
                path = {
                    "lua/?.lua",
                    "lua/?/init.lua"
                }
            },
            diagnostics = { globals = { "vim" } },
            workspace = {
                library = {
                    vim.env.VIMRUNTIME,
                    -- vim.fn.stdpath("config"),
                    -- "${3rd}/luv/library",
                    -- "${3rd}/busted/library"
                },
                -- library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
        },
    },
}
