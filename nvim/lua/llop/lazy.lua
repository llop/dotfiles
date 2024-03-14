local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    'nvim-lua/plenary.nvim',
    'folke/tokyonight.nvim',
    'nvim-tree/nvim-web-devicons',
    'nvim-tree/nvim-tree.lua',
    'romgrk/barbar.nvim',
    'nvim-lualine/lualine.nvim',
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function () 
            local configs = require('nvim-treesitter.configs')
            configs.setup({
                ensure_installed = {
                    'lua', 
                    'vim', 
                    'vimdoc', 
                    'query', 
                    'cpp', 
                    'javascript', 
                    'typescript', 
                    'html',
                    'css',
                    'java',
                    'python',
                    'json',
                    'csv',
                    'markdown',
                    'markdown_inline'
                },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },  
            })
        end
    }
})

