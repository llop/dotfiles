-- Custom keybindings and settings
require('llop.remap')
require('llop.set')

-- Disable netrw, using NvimTree instead
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Lazy to load plugins
require('llop.lazy')

-- UI Theme
vim.cmd[[colorscheme tokyonight-night]]

-- BarBar setup
vim.g.barbar_auto_setup = false
require('barbar').setup({
    sidebar_filetypes = {
        -- Use the default values: {event = 'BufWinLeave', text = nil}
        NvimTree = true
    }
})

-- NvimTree setup using defaults
require('nvim-tree').setup()

-- Lualine
require('lualine').setup({
    options = { theme = 'OceanicNext' }
})

