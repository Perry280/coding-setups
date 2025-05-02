return {
    cmd = { "lua-language-server" },
    filetypes = { "lua", },
    root_markers = {
        ".luarc.json",
        ".luarc.jsonc",
        ".luacheckrc",
        ".stylua.toml",
        "stylua.toml",
        "selene.toml",
        "selene.yml",
        ".git"
    },
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
    settings = {
        Lua = {},
    },
    on_init = function(client)
        if client.workspace_folders then
            local path = client.workspace_folders[1].name
            if path ~= vim.fn.stdpath('config') and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc')) then
                return
            end
        end

        client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
            runtime = {
                version = 'LuaJIT',
                path = {
                    "lua/?.lua",
                    "lua/?/init.lua"
                }
            },
            diagnostics = { globals = { 'vim' }, },
            workspace = {
                checkThirdParty = false,
                library = {
                    vim.env.VIMRUNTIME,
                    -- vim.fn.stdpath("config"),
                    "${3rd}/luv/library",
                    -- "${3rd}/busted/library",
                }
                -- library = vim.tbl_extend(
                --     "force",
                --     vim.api.nvim_get_runtime_file("", true),
                --     { "${3rd}/luv/library" }
                -- ),
                -- library = vim.api.nvim_get_runtime_file("", true),
            },
        })
    end,
}
