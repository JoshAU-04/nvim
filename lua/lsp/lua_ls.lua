local M = {}

M.setup = function(handlers)
    local lspconfig = require('lspconfig')

    lspconfig.lua_ls.setup {
        handlers = handlers,
        on_init = function(client)
            local path = client.workspace_folders[1].name
            if vim.loop.fs_stat(path .. '/.luarc.json')
                or vim.loop.fs_stat(path .. '/.luarc.jsonc')
                or vim.loop.fs_stat(path .. '/.lazy-lock.json') then
                return
            end

            client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                runtime = { version = 'LuaJIT' },
                workspace = { checkThirdParty = false, library = { vim.env.VIMRUNTIME } },
                telemetry = { enable = false },
            })

            client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
        end,
        settings = {
            Lua = {
                diagnostics = { globals = { 'vim' } }, -- Recognize `vim` as a global variable
            },
        },
    }
end

return M

