local key = vim.keymap
vim.g.mapleader = ','

-- Do not yank with x

key.set('n', '<leader>w', ":w" )

key.set('n', 'x', '"_x')
-- Increment/decrement
key.set('n', '+', '<C-a>')
key.set('n', '-', '<C-x>')

-- Delete a word backwards
key.set('n', 'dw', 'viw')

-- Select all
key.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
key.set('n', 'te', ':tabedit', { silent = true } )
-- Split window
key.set('n', '<leader>ss', ':split<Return><C-w>w', { silent = true })
key.set('n', '<leader>sv', ':vsplit<Return><C-w>w', { silent = true })
-- Move window
-- keymap.set('n', '<Space>', '<C-w>w')
key.set('', 's<left>', '<C-w>h')
key.set('', 's<up>', '<C-w>j')
key.set('', 's<down<', '<C-w>k')
key.set('', 's<right>', '<C-w>l')
key.set('', 'sh', '<C-w>h')
key.set('', 'sk', '<C-w>k')
key.set('', 'sj', '<C-w>j')
key.set('', 'sl', '<C-w>l')

-- Resize window
key.set('n', '<C-w><left>', '<C-w><')
key.set('n', '<C-w><right>', '<C-w>>')
key.set('n', '<C-w><up>', '<C-w>+')
key.set('n', '<C-w><down>', '<C-w>-')

-- the primeagen
-- move lines in Visual mode with J or K
key.set('v', 'J', ":m '>+1<CR>gv=gv")
key.set('v', 'K', ":m '<-2<CR>gv=gv")
-- center when jump
key.set('n', '<C-d>' , '<C-d>zz')
key.set('n', '<C-u>' , '<C-u>zz')

