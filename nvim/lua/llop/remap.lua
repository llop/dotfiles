vim.g.mapleader = ' '

-- NvimTree keybindings
vim.keymap.set('n', '<leader>i', ':NvimTreeFocus<CR>')
vim.keymap.set('n', '<leader>o', ':NvimTreeToggle<CR>')

-- BarBar keybindings
vim.keymap.set('n', '<A-,>', ':BufferPrevious<CR>')
vim.keymap.set('n', '<A-.>', ':BufferNext<CR>')
vim.keymap.set('n', '<A-c>', ':BufferClose!<CR>')

