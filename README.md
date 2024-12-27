# Neovim Config

This is a neovim config that I made.


## Features

 * Plugins are managed by lazy.nvim
 * The terminal is assumed to be transparent so most non-default colorschemes have complete transparency support.
 * Comes with an installer script.
 * Probably not broken but you never really know.

## Plugin Manager

The plugin manager I've elected to use is lazy.nvim because:

 a) It's modular, and
 b) I'm lazy

### Plugins

 * Lspconfig
 * Headlines
 * Lualine
 * Markdown.nvim
 * Peek (requires deno)
 * Telescope
 * Treesitter (having treesitter-cli helps as well)

## Filetree

Here's a quick overview of the entire thing:

```
.
├── after
│   └── ftplugin
│       ├── lua.lua
│       └── markdown.lua
├── init.lua
├── INSTALL
├── lazy-lock.json
├── lua
│   ├── local
│   │   ├── health
│   │   │   ├── init.lua
│   │   │   └── providers.lua
│   │   ├── lazy
│   │   │   ├── bootstrap.lua
│   │   │   └── setup.lua
│   │   └── opts
│   │       ├── defaults.lua
│   │       ├── init.lua
│   │       └── keys.lua
│   ├── lsp
│   │   ├── arduino_language_server.lua
│   │   ├── init.lua
│   │   ├── keymaps.lua
│   │   ├── lua_ls.lua
│   │   ├── ocamllsp.lua
│   │   └── rust_analyzer.lua
│   └── plugins
│       ├── colorscheme
│       │   ├── firewatch.lua
│       │   ├── github.lua
│       │   └── gruvbox.lua
│       ├── init.lua
│       └── spec
│           ├── headlines.lua
│           ├── lspconfig.lua
│           ├── lualine.lua
│           ├── markdown.lua
│           ├── peek.lua
│           ├── telescope.lua
│           └── treesitter.lua
└── README.md

12 directories, 30 files
```
