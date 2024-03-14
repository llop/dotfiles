vim.g.mapleader = ' '

-- NvimTree keybindings
vim.keymap.set('n', '<leader>x', ':NvimTreeFocus<CR>')

-- BarBar keybindings
vim.keymap.set('n', '<A-,>', ':BufferPrevious<CR>')
vim.keymap.set('n', '<A-.>', ':BufferNext<CR>')
vim.keymap.set('n', '<A-c>', ':BufferClose!<CR>')

-- Terminal keybindings
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

