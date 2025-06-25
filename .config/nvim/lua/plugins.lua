local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Colorscheme
    "bluz71/vim-moonfly-colors",

    -- Blink completion with super-tab preset
    {
        'saghen/blink.cmp',
        dependencies = { 'rafamadriz/friendly-snippets' },
        version = '1.*',
        opts = {
            keymap = {
                preset = 'super-tab',
            },
            appearance = { nerd_font_variant = 'mono' },
            completion = {
                documentation = { auto_show = false },
                list = {
                    selection = {
                        auto_insert = false,
                    },
                },
            },
            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' }
            },
            fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" }
    },

    -- Mason (LSP/DAP/formatters)
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    -- NvimTree (file explorer)
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("nvim-tree").setup {}
        end
    },

    -- Telescope (fuzzy finder)
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('telescope').setup {}
        end
    },

    -- Treesitter (syntax parsing)
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = { 'lua' },
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    },

    -- Auto close + rename tags
    {
        "windwp/nvim-ts-autotag",
        event = "InsertEnter",
        opts = {}
    }
})

